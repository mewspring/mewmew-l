; ModuleID = 'coreutils-8.27/src/id.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [USER]\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print user and group information for the specified USER,\0Aor (when USER omitted) for the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [521 x i8] c"  -a             ignore, for compatibility with other versions\0A  -Z, --context  print only the security context of the process\0A  -g, --group    print only the effective group ID\0A  -G, --groups   print all group IDs\0A  -n, --name     print a name instead of a number, for -ugG\0A  -r, --real     print the real ID instead of the effective ID, with -ugG\0A  -u, --user     print only the effective user ID\0A  -z, --zero     delimit entries with NUL characters, not whitespace;\0A                   not permitted in default format\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"\0AWithout any OPTION, print some useful set of identified information.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"agnruzGZ\00", align 1
@longopts = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [55 x i8] c"--context (-Z) works only on an SELinux-enabled kernel\00", align 1
@use_name = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Arnold Robbins\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"cannot print \22only\22 of more than one choice\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"cannot print only names or real IDs in default format\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"option --zero not permitted in default format\00", align 1
@euid = internal global i32 0, align 4, !dbg !27
@.str.23 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"cannot get effective UID\00", align 1
@ruid = internal global i32 0, align 4, !dbg !20
@.str.25 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@egid = internal global i32 0, align 4, !dbg !33
@.str.26 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@rgid = internal global i32 0, align 4, !dbg !29
@.str.27 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"cannot find name for user ID %s\00", align 1
@uidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !75
@ok = internal unnamed_addr global i1 false, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"uid=%s\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c" gid=%s\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !87
@.str.56 = private unnamed_addr constant [9 x i8] c" euid=%s\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c" egid=%s\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c" groups=\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@gidtostr_ptr.buf.3 = internal global [21 x i8] zeroinitializer, align 16, !dbg !108
@.str.2.4 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.18 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !117
@.str.28 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !122
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !127
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !130
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !137
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !144
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !186
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !191
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !203
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !210
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !217
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !205
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !219
@.str.3.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.89 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.1.90 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.92 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.94 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.109 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.110 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.111 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.112 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !225
@.str.1.125 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.132 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !234
@.str.3.145 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.146 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.147 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.148 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.149 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.150 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  br label %42, !dbg !776

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !778
  %10 = load i8*, i8** @program_name, align 8, !dbg !778, !tbaa !770
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !780
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !782
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !782, !tbaa !770
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !783
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([521 x i8], [521 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !784
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !784, !tbaa !770
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !785
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !786
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786, !tbaa !770
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !787
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !788
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788, !tbaa !770
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !789
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !790
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !790, !tbaa !770
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !791
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !43, metadata !762) #10, !dbg !792
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !43, metadata !762) #10, !dbg !792
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !794
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !795
  %29 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !797
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !54, metadata !762) #10, !dbg !798
  %30 = icmp eq i8* %29, null, !dbg !799
  br i1 %30, label %37, label %31, !dbg !800

; <label>:31:                                     ; preds = %8
  %32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i64 3) #13, !dbg !801
  %33 = icmp eq i32 %32, 0, !dbg !801
  br i1 %33, label %37, label %34, !dbg !803

; <label>:34:                                     ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !805
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !807
  br label %37, !dbg !809

; <label>:37:                                     ; preds = %8, %31, %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !810
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !811
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !812
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !813
  br label %42

; <label>:42:                                     ; preds = %37, %3
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
  %3 = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !819, metadata !762), !dbg !849
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !820, metadata !762), !dbg !850
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !822, metadata !762), !dbg !851
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !823, metadata !762), !dbg !852
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !824, metadata !762), !dbg !853
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !825, metadata !762), !dbg !854
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !826, metadata !762), !dbg !855
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !827, metadata !762), !dbg !856
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !828, metadata !762), !dbg !857
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !829, metadata !762), !dbg !858
  %4 = load i8*, i8** %1, align 8, !dbg !859, !tbaa !770
  tail call void @set_program_name(i8* %4) #10, !dbg !860
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !861
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !862
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !863
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !864
  br label %10, !dbg !865

; <label>:9:                                      ; preds = %34
  br label %10, !dbg !853

; <label>:10:                                     ; preds = %9, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %9 ]
  %12 = phi i8 [ 0, %2 ], [ %18, %9 ]
  %13 = phi i8 [ 0, %2 ], [ %24, %9 ]
  %14 = phi i8 [ 0, %2 ], [ %29, %9 ]
  %15 = phi i8 [ 0, %2 ], [ %33, %9 ]
  br label %17, !dbg !853

; <label>:16:                                     ; preds = %34
  br label %17, !dbg !853

; <label>:17:                                     ; preds = %16, %10
  %18 = phi i8 [ %12, %10 ], [ 1, %16 ]
  %19 = phi i8 [ %13, %10 ], [ %24, %16 ]
  %20 = phi i8 [ %14, %10 ], [ %29, %16 ]
  %21 = phi i8 [ %15, %10 ], [ %33, %16 ]
  br label %23, !dbg !853

; <label>:22:                                     ; preds = %34
  br label %23, !dbg !853

; <label>:23:                                     ; preds = %22, %17
  %24 = phi i8 [ %19, %17 ], [ 1, %22 ]
  %25 = phi i8 [ %20, %17 ], [ %29, %22 ]
  %26 = phi i8 [ %21, %17 ], [ %33, %22 ]
  br label %28, !dbg !853

; <label>:27:                                     ; preds = %34
  br label %28, !dbg !853

; <label>:28:                                     ; preds = %27, %23
  %29 = phi i8 [ %25, %23 ], [ 1, %27 ]
  %30 = phi i8 [ %26, %23 ], [ %33, %27 ]
  br label %32, !dbg !853

; <label>:31:                                     ; preds = %34
  br label %32, !dbg !853

; <label>:32:                                     ; preds = %31, %28
  %33 = phi i8 [ %30, %28 ], [ 1, %31 ]
  br label %34, !dbg !853

; <label>:34:                                     ; preds = %39, %32
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !824, metadata !762), !dbg !853
  tail call void @llvm.dbg.value(metadata i8 %29, i64 0, metadata !826, metadata !762), !dbg !855
  tail call void @llvm.dbg.value(metadata i8 %24, i64 0, metadata !827, metadata !762), !dbg !856
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !829, metadata !762), !dbg !858
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !828, metadata !762), !dbg !857
  %35 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !866
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !821, metadata !762), !dbg !868
  switch i32 %35, label %44 [
    i32 -1, label %45
    i32 97, label %39
    i32 90, label %36
    i32 103, label %22
    i32 110, label %38
    i32 114, label %9
    i32 117, label %16
    i32 122, label %31
    i32 71, label %27
    i32 -130, label %40
    i32 -131, label %41
  ], !dbg !869

; <label>:36:                                     ; preds = %34
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !870
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %37) #10, !dbg !874
  unreachable, !dbg !870

; <label>:38:                                     ; preds = %34
  store i1 true, i1* @use_name, align 1
  br label %39, !dbg !876

; <label>:39:                                     ; preds = %38, %34
  br label %34, !dbg !853, !llvm.loop !877

; <label>:40:                                     ; preds = %34
  tail call void @usage(i32 0) #15, !dbg !879
  unreachable, !dbg !879

; <label>:41:                                     ; preds = %34
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !880, !tbaa !770
  %43 = load i8*, i8** @Version, align 8, !dbg !880, !tbaa !770
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #10, !dbg !880
  tail call void @exit(i32 0) #14, !dbg !881
  unreachable, !dbg !880

; <label>:44:                                     ; preds = %34
  tail call void @usage(i32 1) #15, !dbg !883
  unreachable, !dbg !883

; <label>:45:                                     ; preds = %34
  %46 = load i32, i32* @optind, align 4, !dbg !884, !tbaa !885
  %47 = sub nsw i32 %0, %46, !dbg !887
  %48 = icmp ugt i32 %47, 1, !dbg !888
  br i1 %48, label %49, label %57, !dbg !890

; <label>:49:                                     ; preds = %45
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !891
  %51 = load i32, i32* @optind, align 4, !dbg !893, !tbaa !885
  %52 = add nsw i32 %51, 1, !dbg !894
  %53 = sext i32 %52 to i64, !dbg !895
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !895
  %55 = load i8*, i8** %54, align 8, !dbg !895, !tbaa !770
  %56 = tail call i8* @quote(i8* %55) #10, !dbg !896
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50, i8* %56) #10, !dbg !898
  tail call void @usage(i32 1) #15, !dbg !900
  unreachable, !dbg !900

; <label>:57:                                     ; preds = %45
  %58 = icmp ne i8 %18, 0, !dbg !901
  %59 = icmp ne i8 %24, 0, !dbg !903
  %60 = add nuw nsw i8 %24, %18, !dbg !904
  %61 = icmp ne i8 %29, 0, !dbg !905
  %62 = add nuw nsw i8 %60, %29, !dbg !906
  %63 = icmp ugt i8 %62, 1, !dbg !907
  br i1 %63, label %64, label %66, !dbg !908

; <label>:64:                                     ; preds = %57
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !909
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %65) #10, !dbg !910
  unreachable, !dbg !909

; <label>:66:                                     ; preds = %57
  %67 = or i8 %24, %18, !dbg !912
  %68 = xor i1 %61, true, !dbg !913
  %69 = icmp eq i8 %67, 0, !dbg !912
  %70 = and i1 %69, %68, !dbg !912
  br i1 %70, label %71, label %81, !dbg !914

; <label>:71:                                     ; preds = %66
  %72 = icmp eq i8 %11, 0, !dbg !916
  br i1 %72, label %73, label %75, !dbg !918

; <label>:73:                                     ; preds = %71
  %74 = load i1, i1* @use_name, align 1
  br i1 %74, label %75, label %77, !dbg !919

; <label>:75:                                     ; preds = %71, %73
  %76 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !921
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %76) #10, !dbg !922
  unreachable, !dbg !921

; <label>:77:                                     ; preds = %73
  %78 = icmp eq i8 %33, 0, !dbg !923
  br i1 %78, label %81, label %79, !dbg !926

; <label>:79:                                     ; preds = %77
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !927
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %80) #10, !dbg !928
  unreachable, !dbg !927

; <label>:81:                                     ; preds = %66, %77
  %82 = icmp eq i32 %47, 1, !dbg !929
  br i1 %82, label %83, label %99, !dbg !930

; <label>:83:                                     ; preds = %81
  tail call void @llvm.dbg.value(metadata %struct.passwd* null, i64 0, metadata !832, metadata !762), !dbg !931
  %84 = sext i32 %46 to i64, !dbg !932
  %85 = getelementptr inbounds i8*, i8** %1, i64 %84, !dbg !932
  %86 = load i8*, i8** %85, align 8, !dbg !932, !tbaa !770
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !845, metadata !762), !dbg !933
  %87 = load i8, i8* %86, align 1, !dbg !934, !tbaa !936
  %88 = icmp eq i8 %87, 0, !dbg !934
  br i1 %88, label %96, label %89, !dbg !937

; <label>:89:                                     ; preds = %83
  %90 = tail call i8* @parse_user_spec(i8* %86, i32* nonnull @euid, i32* null, i8** null, i8** null) #10, !dbg !938
  %91 = icmp eq i8* %90, null, !dbg !941
  br i1 %91, label %92, label %96, !dbg !942

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* @euid, align 4, !dbg !943, !tbaa !885
  %94 = tail call %struct.passwd* @getpwuid(i32 %93) #10, !dbg !945
  tail call void @llvm.dbg.value(metadata %struct.passwd* %94, i64 0, metadata !832, metadata !762), !dbg !931
  tail call void @llvm.dbg.value(metadata %struct.passwd* %94, i64 0, metadata !832, metadata !762), !dbg !931
  %95 = icmp eq %struct.passwd* %94, null, !dbg !946
  br i1 %95, label %96, label %151, !dbg !948

; <label>:96:                                     ; preds = %83, %89, %92
  %97 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !949
  %98 = tail call i8* @quote(i8* %86) #10, !dbg !950
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %97, i8* %98) #10, !dbg !952
  unreachable, !dbg !949

; <label>:99:                                     ; preds = %81
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !846, metadata !762), !dbg !954
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !848, metadata !762), !dbg !955
  br i1 %58, label %100, label %102, !dbg !956

; <label>:100:                                    ; preds = %99
  %101 = icmp eq i8 %11, 0, !dbg !957
  br i1 %101, label %105, label %122, !dbg !960

; <label>:102:                                    ; preds = %99
  %103 = or i8 %29, %24, !dbg !961
  %104 = icmp eq i8 %103, 0, !dbg !961
  br i1 %104, label %105, label %119, !dbg !961

; <label>:105:                                    ; preds = %102, %100
  %106 = tail call i32* @__errno_location() #1, !dbg !962
  store i32 0, i32* %106, align 4, !dbg !964, !tbaa !885
  %107 = tail call i32 @geteuid() #10, !dbg !965
  store i32 %107, i32* @euid, align 4, !dbg !966, !tbaa !885
  %108 = icmp eq i32 %107, -1, !dbg !967
  br i1 %108, label %109, label %114, !dbg !969

; <label>:109:                                    ; preds = %105
  %110 = load i32, i32* %106, align 4, !dbg !970, !tbaa !885
  %111 = icmp eq i32 %110, 0, !dbg !970
  br i1 %111, label %114, label %112, !dbg !972

; <label>:112:                                    ; preds = %109
  %113 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !974
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %110, i8* %113) #10, !dbg !975
  unreachable, !dbg !977

; <label>:114:                                    ; preds = %109, %105
  br i1 %58, label %115, label %119, !dbg !978

; <label>:115:                                    ; preds = %114
  %116 = icmp eq i8 %11, 0, !dbg !979
  br i1 %116, label %117, label %122, !dbg !982

; <label>:117:                                    ; preds = %115
  %118 = load i32, i32* @ruid, align 4
  br label %159, !dbg !982

; <label>:119:                                    ; preds = %102, %114
  br i1 %59, label %120, label %122, !dbg !983

; <label>:120:                                    ; preds = %119
  %121 = tail call i32* @__errno_location() #1, !dbg !984
  br label %134, !dbg !983

; <label>:122:                                    ; preds = %100, %119, %115
  %123 = tail call i32* @__errno_location() #1, !dbg !987
  store i32 0, i32* %123, align 4, !dbg !989, !tbaa !885
  %124 = tail call i32 @getuid() #10, !dbg !990
  store i32 %124, i32* @ruid, align 4, !dbg !991, !tbaa !885
  %125 = icmp eq i32 %124, -1, !dbg !992
  br i1 %125, label %126, label %131, !dbg !994

; <label>:126:                                    ; preds = %122
  %127 = load i32, i32* %123, align 4, !dbg !995, !tbaa !885
  %128 = icmp eq i32 %127, 0, !dbg !995
  br i1 %128, label %131, label %129, !dbg !997

; <label>:129:                                    ; preds = %126
  %130 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !999
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %127, i8* %130) #10, !dbg !1000
  unreachable, !dbg !1002

; <label>:131:                                    ; preds = %126, %122
  br i1 %58, label %132, label %134, !dbg !1003

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* @euid, align 4
  br label %159, !dbg !1003

; <label>:134:                                    ; preds = %120, %131
  %135 = phi i32* [ %121, %120 ], [ %123, %131 ], !dbg !984
  store i32 0, i32* %135, align 4, !dbg !1004, !tbaa !885
  %136 = tail call i32 @getegid() #10, !dbg !1005
  store i32 %136, i32* @egid, align 4, !dbg !1006, !tbaa !885
  %137 = icmp eq i32 %136, -1, !dbg !1007
  br i1 %137, label %138, label %143, !dbg !1009

; <label>:138:                                    ; preds = %134
  %139 = load i32, i32* %135, align 4, !dbg !1010, !tbaa !885
  %140 = icmp eq i32 %139, 0, !dbg !1010
  br i1 %140, label %143, label %141, !dbg !1012

; <label>:141:                                    ; preds = %138
  %142 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !1014
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %139, i8* %142) #10, !dbg !1015
  unreachable, !dbg !1017

; <label>:143:                                    ; preds = %138, %134
  store i32 0, i32* %135, align 4, !dbg !1018, !tbaa !885
  %144 = tail call i32 @getgid() #10, !dbg !1019
  store i32 %144, i32* @rgid, align 4, !dbg !1020, !tbaa !885
  %145 = icmp eq i32 %144, -1, !dbg !1021
  br i1 %145, label %146, label %184, !dbg !1023

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* %135, align 4, !dbg !1024, !tbaa !885
  %148 = icmp eq i32 %147, 0, !dbg !1024
  br i1 %148, label %184, label %149, !dbg !1026

; <label>:149:                                    ; preds = %146
  %150 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !1027
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %147, i8* %150) #10, !dbg !1028
  unreachable, !dbg !1030

; <label>:151:                                    ; preds = %92
  %152 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i64 0, i32 0, !dbg !1031
  %153 = load i8*, i8** %152, align 8, !dbg !1031, !tbaa !1032
  %154 = tail call noalias i8* @xstrdup(i8* %153) #10, !dbg !1034
  tail call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !825, metadata !762), !dbg !854
  %155 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i64 0, i32 2, !dbg !1035
  %156 = load i32, i32* %155, align 8, !dbg !1035, !tbaa !1036
  store i32 %156, i32* @euid, align 4, !dbg !1037, !tbaa !885
  store i32 %156, i32* @ruid, align 4, !dbg !1038, !tbaa !885
  %157 = getelementptr inbounds %struct.passwd, %struct.passwd* %94, i64 0, i32 3, !dbg !1039
  %158 = load i32, i32* %157, align 4, !dbg !1039, !tbaa !1040
  store i32 %158, i32* @egid, align 4, !dbg !1041, !tbaa !885
  store i32 %158, i32* @rgid, align 4, !dbg !1042, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !825, metadata !762), !dbg !854
  br i1 %58, label %159, label %184, !dbg !1043

; <label>:159:                                    ; preds = %132, %117, %151
  %160 = phi i32 [ %107, %117 ], [ %133, %132 ], [ %156, %151 ]
  %161 = phi i32 [ %118, %117 ], [ %124, %132 ], [ %156, %151 ]
  %162 = icmp ne i8 %11, 0, !dbg !1044
  %163 = select i1 %162, i32 %161, i32 %160
  tail call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !1047, metadata !762) #10, !dbg !1054
  tail call void @llvm.dbg.value(metadata %struct.passwd* null, i64 0, metadata !1052, metadata !762) #10, !dbg !1057
  %164 = load i1, i1* @use_name, align 1
  br i1 %164, label %167, label %165, !dbg !1058

; <label>:165:                                    ; preds = %159
  %166 = zext i32 %163 to i64, !dbg !1059
  br label %177, !dbg !1058

; <label>:167:                                    ; preds = %159
  %168 = tail call %struct.passwd* @getpwuid(i32 %163) #10, !dbg !1062
  tail call void @llvm.dbg.value(metadata %struct.passwd* %168, i64 0, metadata !1052, metadata !762) #10, !dbg !1057
  %169 = icmp eq %struct.passwd* %168, null, !dbg !1065
  br i1 %169, label %170, label %174, !dbg !1067

; <label>:170:                                    ; preds = %167
  %171 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1068
  %172 = zext i32 %163 to i64, !dbg !1070
  %173 = tail call i8* @umaxtostr(i64 %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1072
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %171, i8* %173) #10, !dbg !1073
  store i1 true, i1* @ok, align 1
  br label %177, !dbg !1075

; <label>:174:                                    ; preds = %167
  tail call void @llvm.dbg.value(metadata %struct.passwd* %168, i64 0, metadata !1052, metadata !762) #10, !dbg !1057
  %175 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i64 0, i32 0, !dbg !1076
  %176 = load i8*, i8** %175, align 8, !dbg !1076, !tbaa !1032
  br label %180, !dbg !1078

; <label>:177:                                    ; preds = %170, %165
  %178 = phi i64 [ %166, %165 ], [ %172, %170 ], !dbg !1059
  %179 = tail call i8* @umaxtostr(i64 %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1079
  br label %180, !dbg !1080

; <label>:180:                                    ; preds = %174, %177
  %181 = phi i8* [ %176, %174 ], [ %179, %177 ], !dbg !1081
  tail call void @llvm.dbg.value(metadata i8* %181, i64 0, metadata !1053, metadata !762) #10, !dbg !1083
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1084, !tbaa !770
  %183 = tail call i32 @fputs_unlocked(i8* %181, %struct._IO_FILE* %182) #10, !dbg !1084
  br label %332, !dbg !1085

; <label>:184:                                    ; preds = %146, %143, %151
  %185 = phi i32 [ %158, %151 ], [ %144, %143 ], [ -1, %146 ], !dbg !1086
  %186 = phi i8* [ %154, %151 ], [ null, %143 ], [ null, %146 ]
  br i1 %59, label %187, label %194, !dbg !1091

; <label>:187:                                    ; preds = %184
  %188 = icmp ne i8 %11, 0, !dbg !1092
  %189 = load i32, i32* @egid, align 4
  %190 = select i1 %188, i32 %185, i32 %189
  %191 = load i1, i1* @use_name, align 1
  %192 = tail call zeroext i1 @print_group(i32 %190, i1 zeroext %191) #10, !dbg !1095
  br i1 %192, label %332, label %193, !dbg !1097

; <label>:193:                                    ; preds = %187
  store i1 true, i1* @ok, align 1
  br label %332, !dbg !1099

; <label>:194:                                    ; preds = %184
  br i1 %61, label %195, label %203, !dbg !1100

; <label>:195:                                    ; preds = %194
  %196 = load i32, i32* @ruid, align 4, !dbg !1101, !tbaa !885
  %197 = load i32, i32* @egid, align 4, !dbg !1102, !tbaa !885
  %198 = load i1, i1* @use_name, align 1
  %199 = icmp ne i8 %33, 0, !dbg !1103
  %200 = select i1 %199, i8 0, i8 32, !dbg !1103
  %201 = tail call zeroext i1 @print_group_list(i8* %186, i32 %196, i32 %185, i32 %197, i1 zeroext %198, i8 signext %200) #10, !dbg !1104
  br i1 %201, label %332, label %202, !dbg !1105

; <label>:202:                                    ; preds = %195
  store i1 true, i1* @ok, align 1
  br label %332, !dbg !1106

; <label>:203:                                    ; preds = %194
  tail call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1107, metadata !762) #10, !dbg !1124
  %204 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1128
  tail call void @llvm.dbg.value(metadata i32* @ruid, i64 0, metadata !83, metadata !762) #10, !dbg !1129
  %205 = load i32, i32* @ruid, align 4, !dbg !1132, !tbaa !885
  %206 = zext i32 %205 to i64, !dbg !1132
  %207 = tail call i8* @umaxtostr(i64 %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1133
  %208 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %204, i8* %207) #10, !dbg !1134
  %209 = load i32, i32* @ruid, align 4, !dbg !1136, !tbaa !885
  %210 = tail call %struct.passwd* @getpwuid(i32 %209) #10, !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct.passwd* %210, i64 0, metadata !1110, metadata !762) #10, !dbg !1138
  %211 = icmp eq %struct.passwd* %210, null, !dbg !1139
  br i1 %211, label %216, label %212, !dbg !1141

; <label>:212:                                    ; preds = %203
  %213 = getelementptr inbounds %struct.passwd, %struct.passwd* %210, i64 0, i32 0, !dbg !1142
  %214 = load i8*, i8** %213, align 8, !dbg !1142, !tbaa !1032
  %215 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %214) #10, !dbg !1142
  br label %216, !dbg !1142

; <label>:216:                                    ; preds = %212, %203
  %217 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i32 5) #10, !dbg !1143
  tail call void @llvm.dbg.value(metadata i32* @rgid, i64 0, metadata !95, metadata !762) #10, !dbg !1144
  %218 = load i32, i32* @rgid, align 4, !dbg !1146, !tbaa !885
  %219 = zext i32 %218 to i64, !dbg !1146
  %220 = tail call i8* @umaxtostr(i64 %219, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1147
  %221 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %217, i8* %220) #10, !dbg !1148
  %222 = load i32, i32* @rgid, align 4, !dbg !1149, !tbaa !885
  %223 = tail call %struct.group* @getgrgid(i32 %222) #10, !dbg !1150
  tail call void @llvm.dbg.value(metadata %struct.group* %223, i64 0, metadata !1111, metadata !762) #10, !dbg !1151
  %224 = icmp eq %struct.group* %223, null, !dbg !1152
  br i1 %224, label %229, label %225, !dbg !1154

; <label>:225:                                    ; preds = %216
  %226 = getelementptr inbounds %struct.group, %struct.group* %223, i64 0, i32 0, !dbg !1155
  %227 = load i8*, i8** %226, align 8, !dbg !1155, !tbaa !1156
  %228 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %227) #10, !dbg !1155
  br label %229, !dbg !1155

; <label>:229:                                    ; preds = %225, %216
  %230 = load i32, i32* @euid, align 4, !dbg !1158, !tbaa !885
  %231 = load i32, i32* @ruid, align 4, !dbg !1160, !tbaa !885
  %232 = icmp eq i32 %230, %231, !dbg !1161
  br i1 %232, label %246, label %233, !dbg !1162

; <label>:233:                                    ; preds = %229
  %234 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i32 5) #10, !dbg !1163
  tail call void @llvm.dbg.value(metadata i32* @euid, i64 0, metadata !83, metadata !762) #10, !dbg !1165
  %235 = load i32, i32* @euid, align 4, !dbg !1168, !tbaa !885
  %236 = zext i32 %235 to i64, !dbg !1168
  %237 = tail call i8* @umaxtostr(i64 %236, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @uidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1169
  %238 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %234, i8* %237) #10, !dbg !1170
  %239 = load i32, i32* @euid, align 4, !dbg !1172, !tbaa !885
  %240 = tail call %struct.passwd* @getpwuid(i32 %239) #10, !dbg !1173
  tail call void @llvm.dbg.value(metadata %struct.passwd* %240, i64 0, metadata !1110, metadata !762) #10, !dbg !1138
  %241 = icmp eq %struct.passwd* %240, null, !dbg !1174
  br i1 %241, label %246, label %242, !dbg !1176

; <label>:242:                                    ; preds = %233
  %243 = getelementptr inbounds %struct.passwd, %struct.passwd* %240, i64 0, i32 0, !dbg !1177
  %244 = load i8*, i8** %243, align 8, !dbg !1177, !tbaa !1032
  %245 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %244) #10, !dbg !1177
  br label %246, !dbg !1177

; <label>:246:                                    ; preds = %242, %233, %229
  %247 = phi %struct.passwd* [ %240, %242 ], [ null, %233 ], [ %210, %229 ]
  tail call void @llvm.dbg.value(metadata %struct.passwd* %247, i64 0, metadata !1110, metadata !762) #10, !dbg !1138
  %248 = load i32, i32* @egid, align 4, !dbg !1178, !tbaa !885
  %249 = load i32, i32* @rgid, align 4, !dbg !1180, !tbaa !885
  %250 = icmp eq i32 %248, %249, !dbg !1181
  br i1 %250, label %264, label %251, !dbg !1182

; <label>:251:                                    ; preds = %246
  %252 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1183
  tail call void @llvm.dbg.value(metadata i32* @egid, i64 0, metadata !95, metadata !762) #10, !dbg !1185
  %253 = load i32, i32* @egid, align 4, !dbg !1188, !tbaa !885
  %254 = zext i32 %253 to i64, !dbg !1188
  %255 = tail call i8* @umaxtostr(i64 %254, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1189
  %256 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %252, i8* %255) #10, !dbg !1190
  %257 = load i32, i32* @egid, align 4, !dbg !1192, !tbaa !885
  %258 = tail call %struct.group* @getgrgid(i32 %257) #10, !dbg !1193
  tail call void @llvm.dbg.value(metadata %struct.group* %258, i64 0, metadata !1111, metadata !762) #10, !dbg !1151
  %259 = icmp eq %struct.group* %258, null, !dbg !1194
  br i1 %259, label %264, label %260, !dbg !1196

; <label>:260:                                    ; preds = %251
  %261 = getelementptr inbounds %struct.group, %struct.group* %258, i64 0, i32 0, !dbg !1197
  %262 = load i8*, i8** %261, align 8, !dbg !1197, !tbaa !1156
  %263 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %262) #10, !dbg !1197
  br label %264, !dbg !1197

; <label>:264:                                    ; preds = %260, %251, %246
  %265 = bitcast i32** %3 to i8*, !dbg !1198
  call void @llvm.lifetime.start(i64 8, i8* nonnull %265) #10, !dbg !1198
  %266 = icmp ne i8* %186, null, !dbg !1199
  br i1 %266, label %267, label %271, !dbg !1201

; <label>:267:                                    ; preds = %264
  %268 = icmp eq %struct.passwd* %247, null, !dbg !1202
  br i1 %268, label %274, label %269, !dbg !1202

; <label>:269:                                    ; preds = %267
  %270 = getelementptr inbounds %struct.passwd, %struct.passwd* %247, i64 0, i32 3, !dbg !1203
  br label %271, !dbg !1205

; <label>:271:                                    ; preds = %269, %264
  %272 = phi i32* [ %270, %269 ], [ @egid, %264 ]
  %273 = load i32, i32* %272, align 4, !tbaa !885
  br label %274, !dbg !1206

; <label>:274:                                    ; preds = %271, %267
  %275 = phi i32 [ -1, %267 ], [ %273, %271 ]
  tail call void @llvm.dbg.value(metadata i32 %275, i64 0, metadata !1122, metadata !762) #10, !dbg !1206
  tail call void @llvm.dbg.value(metadata i32** %3, i64 0, metadata !1119, metadata !1207) #10, !dbg !1208
  %276 = call i32 @xgetgroups(i8* %186, i32 %275, i32** nonnull %3) #10, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %276, i64 0, metadata !1123, metadata !762) #10, !dbg !1210
  %277 = icmp slt i32 %276, 0, !dbg !1211
  br i1 %277, label %278, label %287, !dbg !1213

; <label>:278:                                    ; preds = %274
  %279 = tail call i32* @__errno_location() #1, !dbg !1214
  %280 = load i32, i32* %279, align 4, !tbaa !885
  br i1 %266, label %281, label %284, !dbg !1217

; <label>:281:                                    ; preds = %278
  %282 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !1218
  %283 = call i8* @quote(i8* nonnull %186) #10, !dbg !1220
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %280, i8* %282, i8* %283) #10, !dbg !1221
  br label %286, !dbg !1223

; <label>:284:                                    ; preds = %278
  %285 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i64 0, i64 0), i32 5) #10, !dbg !1224
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %280, i8* %285) #10, !dbg !1225
  br label %286

; <label>:286:                                    ; preds = %284, %281
  store i1 true, i1* @ok, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %265) #10, !dbg !1226
  br label %332

; <label>:287:                                    ; preds = %274
  %288 = icmp eq i32 %276, 0, !dbg !1227
  br i1 %288, label %329, label %289, !dbg !1229

; <label>:289:                                    ; preds = %287
  %290 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i32 5) #10, !dbg !1230
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230, !tbaa !770
  %292 = call i32 @fputs_unlocked(i8* %290, %struct._IO_FILE* %291) #10, !dbg !1231
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1121, metadata !762) #10, !dbg !1233
  %293 = zext i32 %276 to i64
  br label %294, !dbg !1234

; <label>:294:                                    ; preds = %325, %289
  %295 = phi i64 [ 0, %289 ], [ %326, %325 ]
  %296 = icmp sgt i64 %295, 0, !dbg !1234
  br i1 %296, label %297, label %308, !dbg !1239

; <label>:297:                                    ; preds = %294
  call void @llvm.dbg.value(metadata i32 44, i64 0, metadata !1240, metadata !762) #10, !dbg !1246
  %298 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1248, !tbaa !770
  %299 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %298, i64 0, i32 5, !dbg !1248
  %300 = load i8*, i8** %299, align 8, !dbg !1248, !tbaa !1249
  %301 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %298, i64 0, i32 6, !dbg !1248
  %302 = load i8*, i8** %301, align 8, !dbg !1248, !tbaa !1253
  %303 = icmp ult i8* %300, %302, !dbg !1248
  br i1 %303, label %306, label %304, !dbg !1248, !prof !1254

; <label>:304:                                    ; preds = %297
  %305 = call i32 @__overflow(%struct._IO_FILE* %298, i32 44) #10, !dbg !1255
  br label %308, !dbg !1255

; <label>:306:                                    ; preds = %297
  %307 = getelementptr inbounds i8, i8* %300, i64 1, !dbg !1257
  store i8* %307, i8** %299, align 8, !dbg !1257, !tbaa !1249
  store i8 44, i8* %300, align 1, !dbg !1257, !tbaa !936
  br label %308, !dbg !1257

; <label>:308:                                    ; preds = %306, %304, %294
  %309 = load i32*, i32** %3, align 8, !dbg !1259, !tbaa !770
  call void @llvm.dbg.value(metadata i32* %309, i64 0, metadata !1119, metadata !762) #10, !dbg !1208
  %310 = getelementptr inbounds i32, i32* %309, i64 %295, !dbg !1259
  call void @llvm.dbg.value(metadata i32* %310, i64 0, metadata !95, metadata !762) #10, !dbg !1260
  %311 = load i32, i32* %310, align 4, !dbg !1262, !tbaa !885
  %312 = zext i32 %311 to i64, !dbg !1262
  %313 = call i8* @umaxtostr(i64 %312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #10, !dbg !1263
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1259, !tbaa !770
  %315 = call i32 @fputs_unlocked(i8* %313, %struct._IO_FILE* %314) #10, !dbg !1264
  %316 = load i32*, i32** %3, align 8, !dbg !1266, !tbaa !770
  call void @llvm.dbg.value(metadata i32* %316, i64 0, metadata !1119, metadata !762) #10, !dbg !1208
  %317 = getelementptr inbounds i32, i32* %316, i64 %295, !dbg !1266
  %318 = load i32, i32* %317, align 4, !dbg !1266, !tbaa !885
  %319 = call %struct.group* @getgrgid(i32 %318) #10, !dbg !1267
  call void @llvm.dbg.value(metadata %struct.group* %319, i64 0, metadata !1111, metadata !762) #10, !dbg !1151
  %320 = icmp eq %struct.group* %319, null, !dbg !1268
  br i1 %320, label %325, label %321, !dbg !1270

; <label>:321:                                    ; preds = %308
  %322 = getelementptr inbounds %struct.group, %struct.group* %319, i64 0, i32 0, !dbg !1271
  %323 = load i8*, i8** %322, align 8, !dbg !1271, !tbaa !1156
  %324 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %323) #10, !dbg !1271
  br label %325, !dbg !1271

; <label>:325:                                    ; preds = %321, %308
  %326 = add nuw nsw i64 %295, 1, !dbg !1272
  %327 = icmp eq i64 %326, %293, !dbg !1274
  br i1 %327, label %328, label %294, !dbg !1276, !llvm.loop !1278

; <label>:328:                                    ; preds = %325
  br label %329, !dbg !1281

; <label>:329:                                    ; preds = %328, %287
  %330 = bitcast i32** %3 to i8**, !dbg !1281
  %331 = load i8*, i8** %330, align 8, !dbg !1281, !tbaa !770
  call void @free(i8* %331) #10, !dbg !1282
  call void @llvm.lifetime.end(i64 8, i8* nonnull %265) #10, !dbg !1226
  br label %332, !dbg !1283

; <label>:332:                                    ; preds = %329, %286, %193, %187, %195, %202, %180
  %333 = icmp ne i8 %33, 0, !dbg !1284
  %334 = select i1 %333, i32 0, i32 10, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %334, i64 0, metadata !1240, metadata !762) #10, !dbg !1285
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1287, !tbaa !770
  %336 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %335, i64 0, i32 5, !dbg !1287
  %337 = load i8*, i8** %336, align 8, !dbg !1287, !tbaa !1249
  %338 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %335, i64 0, i32 6, !dbg !1287
  %339 = load i8*, i8** %338, align 8, !dbg !1287, !tbaa !1253
  %340 = icmp ult i8* %337, %339, !dbg !1287
  br i1 %340, label %343, label %341, !dbg !1287, !prof !1254

; <label>:341:                                    ; preds = %332
  %342 = call i32 @__overflow(%struct._IO_FILE* %335, i32 %334) #10, !dbg !1288
  br label %346, !dbg !1288

; <label>:343:                                    ; preds = %332
  %344 = trunc i32 %334 to i8, !dbg !1289
  %345 = getelementptr inbounds i8, i8* %337, i64 1, !dbg !1289
  store i8* %345, i8** %336, align 8, !dbg !1289, !tbaa !1249
  store i8 %344, i8* %337, align 1, !dbg !1289, !tbaa !936
  br label %346, !dbg !1289

; <label>:346:                                    ; preds = %341, %343
  %347 = load i1, i1* @ok, align 1
  %348 = zext i1 %347 to i32, !dbg !1290
  ret i32 %348, !dbg !1291
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

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @print_group_list(i8*, i32, i32, i32, i1 zeroext, i8 signext) local_unnamed_addr #6 !dbg !1292 {
  %7 = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1296, metadata !762), !dbg !1318
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1297, metadata !762), !dbg !1319
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1298, metadata !762), !dbg !1320
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1299, metadata !762), !dbg !1321
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !1300, metadata !1322), !dbg !1323
  tail call void @llvm.dbg.value(metadata i8 %5, i64 0, metadata !1301, metadata !762), !dbg !1324
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1302, metadata !762), !dbg !1325
  tail call void @llvm.dbg.value(metadata %struct.passwd* null, i64 0, metadata !1303, metadata !762), !dbg !1326
  %8 = icmp ne i8* %0, null, !dbg !1327
  br i1 %8, label %9, label %13, !dbg !1329

; <label>:9:                                      ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #10, !dbg !1330
  tail call void @llvm.dbg.value(metadata %struct.passwd* %10, i64 0, metadata !1303, metadata !762), !dbg !1326
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  %11 = icmp ne %struct.passwd* %10, null, !dbg !1332
  %12 = zext i1 %11 to i8, !dbg !1332
  br label %13, !dbg !1332

; <label>:13:                                     ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ]
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata %struct.passwd* %15, i64 0, metadata !1303, metadata !762), !dbg !1326
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !1302, metadata !762), !dbg !1325
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1333, metadata !762) #10, !dbg !1349
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !1338, metadata !1322) #10, !dbg !1352
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1339, metadata !762) #10, !dbg !1353
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !762) #10, !dbg !1354
  br i1 %4, label %21, label %16, !dbg !1355

; <label>:16:                                     ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1356
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1359
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1348, metadata !762) #10, !dbg !1360
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1361, !tbaa !770
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !1361
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %35

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.group* @getgrgid(i32 %2) #10, !dbg !1362
  tail call void @llvm.dbg.value(metadata %struct.group* %22, i64 0, metadata !1339, metadata !762) #10, !dbg !1353
  %23 = icmp eq %struct.group* %22, null, !dbg !1365
  br i1 %23, label %24, label %30, !dbg !1367

; <label>:24:                                     ; preds = %21
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1368
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1333, metadata !762) #10, !dbg !1349
  %26 = zext i32 %2 to i64, !dbg !1370
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i64 %26) #10, !dbg !1371
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1347, metadata !762) #10, !dbg !1354
  %27 = tail call i8* @umaxtostr(i64 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1359
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1348, metadata !762) #10, !dbg !1360
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1361, !tbaa !770
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !1361
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %35, !dbg !1373

; <label>:30:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata %struct.group* %22, i64 0, metadata !1339, metadata !762) #10, !dbg !1353
  %31 = getelementptr inbounds %struct.group, %struct.group* %22, i64 0, i32 0, !dbg !1374
  %32 = load i8*, i8** %31, align 8, !dbg !1374, !tbaa !1156
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1348, metadata !762) #10, !dbg !1360
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1361, !tbaa !770
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #10, !dbg !1361
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %35, !dbg !1373

; <label>:35:                                     ; preds = %30, %16, %24
  %36 = phi i8 [ 0, %24 ], [ %14, %16 ], [ %14, %30 ]
  tail call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1302, metadata !762), !dbg !1325
  %37 = icmp eq i32 %3, %2, !dbg !1376
  br i1 %37, label %70, label %38, !dbg !1378

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1379, !tbaa !770
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1379
  %41 = load i8*, i8** %40, align 8, !dbg !1379, !tbaa !1249
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1379
  %43 = load i8*, i8** %42, align 8, !dbg !1379, !tbaa !1253
  %44 = icmp ult i8* %41, %43, !dbg !1379
  br i1 %44, label %48, label %45, !dbg !1379, !prof !1254

; <label>:45:                                     ; preds = %38
  %46 = zext i8 %5 to i32, !dbg !1385
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #10, !dbg !1386
  br label %50, !dbg !1386

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1388
  store i8* %49, i8** %40, align 8, !dbg !1388, !tbaa !1249
  store i8 %5, i8* %41, align 1, !dbg !1388, !tbaa !936
  br label %50, !dbg !1388

; <label>:50:                                     ; preds = %45, %48
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1333, metadata !762) #10, !dbg !1390
  tail call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !1338, metadata !1322) #10, !dbg !1393
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1339, metadata !762) #10, !dbg !1394
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !762) #10, !dbg !1395
  br i1 %4, label %56, label %51, !dbg !1396

; <label>:51:                                     ; preds = %50
  %52 = zext i32 %3 to i64, !dbg !1397
  %53 = tail call i8* @umaxtostr(i64 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1399
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1348, metadata !762) #10, !dbg !1400
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !770
  %55 = tail call i32 @fputs_unlocked(i8* %53, %struct._IO_FILE* %54) #10, !dbg !1401
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %70

; <label>:56:                                     ; preds = %50
  %57 = tail call %struct.group* @getgrgid(i32 %3) #10, !dbg !1402
  tail call void @llvm.dbg.value(metadata %struct.group* %57, i64 0, metadata !1339, metadata !762) #10, !dbg !1394
  %58 = icmp eq %struct.group* %57, null, !dbg !1403
  br i1 %58, label %59, label %65, !dbg !1404

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1405
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1333, metadata !762) #10, !dbg !1390
  %61 = zext i32 %3 to i64, !dbg !1406
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i64 %61) #10, !dbg !1407
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1347, metadata !762) #10, !dbg !1395
  %62 = tail call i8* @umaxtostr(i64 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1399
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1348, metadata !762) #10, !dbg !1400
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !770
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #10, !dbg !1401
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %70, !dbg !1408

; <label>:65:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata %struct.group* %57, i64 0, metadata !1339, metadata !762) #10, !dbg !1394
  %66 = getelementptr inbounds %struct.group, %struct.group* %57, i64 0, i32 0, !dbg !1409
  %67 = load i8*, i8** %66, align 8, !dbg !1409, !tbaa !1156
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1348, metadata !762) #10, !dbg !1400
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !770
  %69 = tail call i32 @fputs_unlocked(i8* %67, %struct._IO_FILE* %68) #10, !dbg !1401
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %70, !dbg !1408

; <label>:70:                                     ; preds = %65, %51, %59, %35
  %71 = phi i8 [ %36, %35 ], [ 0, %59 ], [ %36, %51 ], [ %36, %65 ]
  tail call void @llvm.dbg.value(metadata i8 %71, i64 0, metadata !1302, metadata !762), !dbg !1325
  %72 = bitcast i32** %7 to i8*, !dbg !1410
  call void @llvm.lifetime.start(i64 8, i8* nonnull %72) #10, !dbg !1410
  %73 = icmp eq %struct.passwd* %15, null, !dbg !1411
  br i1 %73, label %77, label %74, !dbg !1411

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !1412
  %76 = load i32, i32* %75, align 4, !dbg !1412, !tbaa !1040
  br label %77, !dbg !1414

; <label>:77:                                     ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ %3, %70 ], !dbg !1415
  tail call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !1314, metadata !1207), !dbg !1417
  %79 = call i32 @xgetgroups(i8* %0, i32 %78, i32** nonnull %7) #10, !dbg !1418
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !1317, metadata !762), !dbg !1419
  %80 = icmp slt i32 %79, 0, !dbg !1420
  br i1 %80, label %87, label %81, !dbg !1422

; <label>:81:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1316, metadata !762), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %71, i64 0, metadata !1302, metadata !762), !dbg !1325
  %82 = icmp eq i32 %79, 0, !dbg !1424
  %83 = load i32*, i32** %7, align 8, !tbaa !770
  call void @llvm.dbg.value(metadata i32* %83, i64 0, metadata !1314, metadata !762), !dbg !1417
  br i1 %82, label %145, label %84, !dbg !1428

; <label>:84:                                     ; preds = %81
  %85 = zext i8 %5 to i32
  %86 = sext i32 %79 to i64, !dbg !1428
  br label %95, !dbg !1428

; <label>:87:                                     ; preds = %77
  %88 = tail call i32* @__errno_location() #1, !dbg !1430
  %89 = load i32, i32* %88, align 4, !tbaa !885
  br i1 %8, label %90, label %93, !dbg !1434

; <label>:90:                                     ; preds = %87
  %91 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !1435
  %92 = call i8* @quote(i8* nonnull %0) #10, !dbg !1437
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %89, i8* %91, i8* %92) #10, !dbg !1438
  br label %143, !dbg !1440

; <label>:93:                                     ; preds = %87
  %94 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.18, i64 0, i64 0), i32 5) #10, !dbg !1441
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %89, i8* %94) #10, !dbg !1444
  br label %143

; <label>:95:                                     ; preds = %84, %138
  %96 = phi i64 [ 0, %84 ], [ %140, %138 ]
  %97 = phi i32* [ %83, %84 ], [ %142, %138 ]
  %98 = phi i8 [ %71, %84 ], [ %139, %138 ]
  %99 = getelementptr inbounds i32, i32* %97, i64 %96, !dbg !1446
  %100 = load i32, i32* %99, align 4, !dbg !1446, !tbaa !885
  %101 = icmp eq i32 %100, %2, !dbg !1448
  %102 = icmp eq i32 %100, %3, !dbg !1449
  %103 = or i1 %101, %102, !dbg !1451
  br i1 %103, label %138, label %104, !dbg !1451

; <label>:104:                                    ; preds = %95
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1452, !tbaa !770
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5, !dbg !1452
  %107 = load i8*, i8** %106, align 8, !dbg !1452, !tbaa !1249
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6, !dbg !1452
  %109 = load i8*, i8** %108, align 8, !dbg !1452, !tbaa !1253
  %110 = icmp ult i8* %107, %109, !dbg !1452
  br i1 %110, label %113, label %111, !dbg !1452, !prof !1254

; <label>:111:                                    ; preds = %104
  %112 = call i32 @__overflow(%struct._IO_FILE* %105, i32 %85) #10, !dbg !1455
  br label %115, !dbg !1455

; <label>:113:                                    ; preds = %104
  %114 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !1456
  store i8* %114, i8** %106, align 8, !dbg !1456, !tbaa !1249
  store i8 %5, i8* %107, align 1, !dbg !1456, !tbaa !936
  br label %115, !dbg !1456

; <label>:115:                                    ; preds = %111, %113
  %116 = load i32*, i32** %7, align 8, !dbg !1457, !tbaa !770
  call void @llvm.dbg.value(metadata i32* %116, i64 0, metadata !1314, metadata !762), !dbg !1417
  %117 = getelementptr inbounds i32, i32* %116, i64 %96, !dbg !1457
  %118 = load i32, i32* %117, align 4, !dbg !1457, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !1333, metadata !762) #10, !dbg !1459
  call void @llvm.dbg.value(metadata i1 %4, i64 0, metadata !1338, metadata !1322) #10, !dbg !1461
  call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1339, metadata !762) #10, !dbg !1462
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !762) #10, !dbg !1463
  br i1 %4, label %124, label %119, !dbg !1464

; <label>:119:                                    ; preds = %115
  %120 = zext i32 %118 to i64, !dbg !1465
  %121 = call i8* @umaxtostr(i64 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1467
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1348, metadata !762) #10, !dbg !1468
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1469, !tbaa !770
  %123 = call i32 @fputs_unlocked(i8* %121, %struct._IO_FILE* %122) #10, !dbg !1469
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %138

; <label>:124:                                    ; preds = %115
  %125 = call %struct.group* @getgrgid(i32 %118) #10, !dbg !1470
  call void @llvm.dbg.value(metadata %struct.group* %125, i64 0, metadata !1339, metadata !762) #10, !dbg !1462
  %126 = icmp eq %struct.group* %125, null, !dbg !1471
  br i1 %126, label %127, label %133, !dbg !1472

; <label>:127:                                    ; preds = %124
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1473
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !1333, metadata !762) #10, !dbg !1459
  %129 = zext i32 %118 to i64, !dbg !1474
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128, i64 %129) #10, !dbg !1475
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1347, metadata !762) #10, !dbg !1463
  %130 = call i8* @umaxtostr(i64 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1467
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1348, metadata !762) #10, !dbg !1468
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1469, !tbaa !770
  %132 = call i32 @fputs_unlocked(i8* %130, %struct._IO_FILE* %131) #10, !dbg !1469
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %138, !dbg !1476

; <label>:133:                                    ; preds = %124
  call void @llvm.dbg.value(metadata %struct.group* %125, i64 0, metadata !1339, metadata !762) #10, !dbg !1462
  %134 = getelementptr inbounds %struct.group, %struct.group* %125, i64 0, i32 0, !dbg !1477
  %135 = load i8*, i8** %134, align 8, !dbg !1477, !tbaa !1156
  call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1348, metadata !762) #10, !dbg !1468
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1469, !tbaa !770
  %137 = call i32 @fputs_unlocked(i8* %135, %struct._IO_FILE* %136) #10, !dbg !1469
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1302, metadata !762), !dbg !1325
  br label %138, !dbg !1476

; <label>:138:                                    ; preds = %133, %119, %127, %95
  %139 = phi i8 [ %98, %95 ], [ 0, %127 ], [ %98, %119 ], [ %98, %133 ]
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !1302, metadata !762), !dbg !1325
  %140 = add nuw nsw i64 %96, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i8 %139, i64 0, metadata !1302, metadata !762), !dbg !1325
  %141 = icmp slt i64 %140, %86, !dbg !1424
  %142 = load i32*, i32** %7, align 8, !tbaa !770
  call void @llvm.dbg.value(metadata i32* %142, i64 0, metadata !1314, metadata !762), !dbg !1417
  br i1 %141, label %95, label %144, !dbg !1428, !llvm.loop !1480

; <label>:143:                                    ; preds = %93, %90
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !1302, metadata !762), !dbg !1325
  call void @llvm.lifetime.end(i64 8, i8* nonnull %72) #10, !dbg !1483
  br label %151

; <label>:144:                                    ; preds = %138
  br label %145, !dbg !1484

; <label>:145:                                    ; preds = %144, %81
  %146 = phi i8 [ %71, %81 ], [ %139, %144 ]
  %147 = phi i32* [ %83, %81 ], [ %142, %144 ]
  %148 = bitcast i32* %147 to i8*, !dbg !1484
  call void @free(i8* %148) #10, !dbg !1485
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !1302, metadata !762), !dbg !1325
  call void @llvm.lifetime.end(i64 8, i8* nonnull %72) #10, !dbg !1483
  %149 = and i8 %146, 1, !dbg !1486
  %150 = icmp ne i8 %149, 0, !dbg !1486
  br label %151

; <label>:151:                                    ; preds = %143, %145
  %152 = phi i1 [ %150, %145 ], [ false, %143 ]
  ret i1 %152, !dbg !1487
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @print_group(i32, i1 zeroext) local_unnamed_addr #6 !dbg !1334 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1333, metadata !762), !dbg !1488
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1338, metadata !1322), !dbg !1489
  tail call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1339, metadata !762), !dbg !1490
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1347, metadata !762), !dbg !1491
  br i1 %1, label %5, label %3, !dbg !1492

; <label>:3:                                      ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1493
  br label %14, !dbg !1492

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #10, !dbg !1495
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !1339, metadata !762), !dbg !1490
  %7 = icmp eq %struct.group* %6, null, !dbg !1496
  br i1 %7, label %8, label %11, !dbg !1497

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.4, i64 0, i64 0), i32 5) #10, !dbg !1498
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1333, metadata !762), !dbg !1488
  %10 = zext i32 %0 to i64, !dbg !1499
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #10, !dbg !1500
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1347, metadata !762), !dbg !1491
  br label %14, !dbg !1501

; <label>:11:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !1339, metadata !762), !dbg !1490
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1502
  %13 = load i8*, i8** %12, align 8, !dbg !1502, !tbaa !1156
  br label %18, !dbg !1503

; <label>:14:                                     ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1493
  %16 = phi i1 [ true, %3 ], [ false, %8 ]
  tail call void @llvm.dbg.value(metadata %struct.group* %6, i64 0, metadata !1339, metadata !762), !dbg !1490
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf.3, i64 0, i64 0)) #10, !dbg !1504
  br label %18, !dbg !1505

; <label>:18:                                     ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1506
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1348, metadata !762), !dbg !1508
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1509, !tbaa !770
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #10, !dbg !1509
  ret i1 %19, !dbg !1510
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1511 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1513, metadata !762), !dbg !1514
  store i8* %0, i8** @file_name, align 8, !dbg !1515, !tbaa !770
  ret void, !dbg !1516
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1517 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1521, metadata !1322), !dbg !1522
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1523, !tbaa !1524
  ret void, !dbg !1526
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1527 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1534, !tbaa !770
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1535
  %3 = icmp eq i32 %2, 0, !dbg !1536
  br i1 %3, label %21, label %4, !dbg !1537

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1538, !tbaa !1524, !range !1540
  %6 = icmp eq i8 %5, 0, !dbg !1538
  %7 = tail call i32* @__errno_location() #1, !dbg !1541
  br i1 %6, label %11, label %8, !dbg !1543

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1544, !tbaa !885
  %10 = icmp eq i32 %9, 32, !dbg !1546
  br i1 %10, label %21, label %11, !dbg !1547

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !1549
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1531, metadata !762), !dbg !1550
  %13 = load i8*, i8** @file_name, align 8, !dbg !1551, !tbaa !770
  %14 = icmp eq i8* %13, null, !dbg !1551
  %15 = load i32, i32* %7, align 4, !tbaa !885
  br i1 %14, label %18, label %16, !dbg !1552

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1553
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1555
  br label %19, !dbg !1557

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #10, !dbg !1558
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1559, !tbaa !885
  tail call void @_exit(i32 %20) #14, !dbg !1560
  unreachable, !dbg !1560

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1561, !tbaa !770
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1563
  %24 = icmp eq i32 %23, 0, !dbg !1564
  br i1 %24, label %27, label %25, !dbg !1565

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1566, !tbaa !885
  tail call void @_exit(i32 %26) #14, !dbg !1567
  unreachable, !dbg !1567

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1568
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !1569 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !1574, metadata !762), !dbg !1577
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1575, metadata !762), !dbg !1578
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1579
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1576, metadata !762), !dbg !1580
  store i8 0, i8* %3, align 1, !dbg !1581, !tbaa !936
  br label %4, !dbg !1582

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1576, metadata !762), !dbg !1580
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1574, metadata !762), !dbg !1577
  %7 = urem i64 %5, 10, !dbg !1583
  %8 = trunc i64 %7 to i8, !dbg !1586
  %9 = or i8 %8, 48, !dbg !1586
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1587
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1576, metadata !762), !dbg !1580
  store i8 %9, i8* %10, align 1, !dbg !1588, !tbaa !936
  %11 = udiv i64 %5, 10, !dbg !1589
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1574, metadata !762), !dbg !1577
  %12 = icmp ugt i64 %5, 9, !dbg !1590
  br i1 %12, label %4, label %13, !dbg !1591, !llvm.loop !1593

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1576, metadata !762), !dbg !1580
  ret i8* %10, !dbg !1596
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1597 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1599, metadata !762), !dbg !1602
  %2 = icmp eq i8* %0, null, !dbg !1603
  br i1 %2, label %3, label %6, !dbg !1605

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1606, !tbaa !770
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1608
  tail call void @abort() #14, !dbg !1609
  unreachable, !dbg !1609

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1610
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1600, metadata !762), !dbg !1611
  %8 = icmp ne i8* %7, null, !dbg !1612
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1613
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1615
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1601, metadata !762), !dbg !1616
  %11 = ptrtoint i8* %10 to i64, !dbg !1617
  %12 = ptrtoint i8* %0 to i64, !dbg !1617
  %13 = sub i64 %11, %12, !dbg !1617
  %14 = icmp sgt i64 %13, 6, !dbg !1619
  br i1 %14, label %15, label %24, !dbg !1620

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1621
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #13, !dbg !1621
  %18 = icmp eq i32 %17, 0, !dbg !1623
  br i1 %18, label %19, label %24, !dbg !1624

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1599, metadata !762), !dbg !1602
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #13, !dbg !1625
  %21 = icmp eq i32 %20, 0, !dbg !1628
  br i1 %21, label %22, label %24, !dbg !1629

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1630
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1599, metadata !762), !dbg !1602
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1632, !tbaa !770
  br label %24, !dbg !1633

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1599, metadata !762), !dbg !1602
  store i8* %25, i8** @program_name, align 8, !dbg !1634, !tbaa !770
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1635, !tbaa !770
  ret void, !dbg !1636
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1637 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1642, metadata !762), !dbg !1645
  %2 = tail call i32* @__errno_location() #1, !dbg !1646
  %3 = load i32, i32* %2, align 4, !dbg !1646, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1643, metadata !762), !dbg !1647
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1648
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1649
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1649
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1651
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1644, metadata !762), !dbg !1652
  store i32 %3, i32* %2, align 4, !dbg !1653, !tbaa !885
  ret %struct.quoting_options* %8, !dbg !1654
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1655 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1661, metadata !762), !dbg !1662
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1663
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1663
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1664
  %5 = load i32, i32* %4, align 8, !dbg !1664, !tbaa !1666
  ret i32 %5, !dbg !1668
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1669 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1673, metadata !762), !dbg !1675
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1674, metadata !762), !dbg !1676
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1677
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1677
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1678
  store i32 %1, i32* %5, align 8, !dbg !1680, !tbaa !1666
  ret void, !dbg !1681
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1682 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1686, metadata !762), !dbg !1694
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1687, metadata !762), !dbg !1695
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1688, metadata !762), !dbg !1696
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1689, metadata !762), !dbg !1697
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1698
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1698
  %6 = lshr i8 %1, 5, !dbg !1699
  %7 = zext i8 %6 to i64, !dbg !1699
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1701
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1690, metadata !762), !dbg !1702
  %9 = and i8 %1, 31, !dbg !1703
  %10 = zext i8 %9 to i32, !dbg !1704
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1692, metadata !762), !dbg !1705
  %11 = load i32, i32* %8, align 4, !dbg !1706, !tbaa !885
  %12 = lshr i32 %11, %10, !dbg !1707
  %13 = and i32 %12, 1, !dbg !1708
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1693, metadata !762), !dbg !1709
  %14 = and i32 %2, 1, !dbg !1710
  %15 = xor i32 %13, %14, !dbg !1711
  %16 = shl i32 %15, %10, !dbg !1712
  %17 = xor i32 %16, %11, !dbg !1713
  store i32 %17, i32* %8, align 4, !dbg !1713, !tbaa !885
  ret i32 %13, !dbg !1714
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1715 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1719, metadata !762), !dbg !1722
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1720, metadata !762), !dbg !1723
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1719, metadata !762), !dbg !1722
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1726
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1719, metadata !762), !dbg !1722
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1727
  %6 = load i32, i32* %5, align 4, !dbg !1727, !tbaa !1728
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1721, metadata !762), !dbg !1729
  store i32 %1, i32* %5, align 4, !dbg !1730, !tbaa !1728
  ret i32 %6, !dbg !1731
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1732 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1736, metadata !762), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1737, metadata !762), !dbg !1740
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1738, metadata !762), !dbg !1741
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1736, metadata !762), !dbg !1739
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1744
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1736, metadata !762), !dbg !1739
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1745
  store i32 10, i32* %6, align 8, !dbg !1746, !tbaa !1666
  %7 = icmp ne i8* %1, null, !dbg !1747
  %8 = icmp ne i8* %2, null, !dbg !1749
  %9 = and i1 %7, %8, !dbg !1751
  br i1 %9, label %11, label %10, !dbg !1751

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1752
  unreachable, !dbg !1752

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1753
  store i8* %1, i8** %12, align 8, !dbg !1754, !tbaa !1755
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1756
  store i8* %2, i8** %13, align 8, !dbg !1757, !tbaa !1758
  ret void, !dbg !1759
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1760 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1764, metadata !762), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1765, metadata !762), !dbg !1773
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1766, metadata !762), !dbg !1774
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1767, metadata !762), !dbg !1775
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1768, metadata !762), !dbg !1776
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1777
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1777
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1769, metadata !762), !dbg !1778
  %8 = tail call i32* @__errno_location() #1, !dbg !1779
  %9 = load i32, i32* %8, align 4, !dbg !1779, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1770, metadata !762), !dbg !1780
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1781
  %11 = load i32, i32* %10, align 8, !dbg !1781, !tbaa !1666
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1782
  %13 = load i32, i32* %12, align 4, !dbg !1782, !tbaa !1728
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1783
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1784
  %16 = load i8*, i8** %15, align 8, !dbg !1784, !tbaa !1755
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1785
  %18 = load i8*, i8** %17, align 8, !dbg !1785, !tbaa !1758
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1786
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1771, metadata !762), !dbg !1787
  store i32 %9, i32* %8, align 4, !dbg !1788, !tbaa !885
  ret i64 %19, !dbg !1789
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1790 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1796, metadata !762), !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1797, metadata !762), !dbg !1860
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1798, metadata !762), !dbg !1861
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1799, metadata !762), !dbg !1862
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1800, metadata !762), !dbg !1863
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1801, metadata !762), !dbg !1864
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1802, metadata !762), !dbg !1865
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1803, metadata !762), !dbg !1866
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1804, metadata !762), !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1806, metadata !762), !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1807, metadata !762), !dbg !1869
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1808, metadata !762), !dbg !1870
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1809, metadata !762), !dbg !1871
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1810, metadata !762), !dbg !1872
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1873
  %14 = icmp eq i64 %13, 1, !dbg !1874
  %15 = lshr i32 %5, 1, !dbg !1875
  %16 = trunc i32 %15 to i8, !dbg !1875
  %17 = and i8 %16, 1, !dbg !1875
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1812, metadata !762), !dbg !1875
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !762), !dbg !1876
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1814, metadata !762), !dbg !1877
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1815, metadata !762), !dbg !1878
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1879

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1797, metadata !762), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1815, metadata !762), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1814, metadata !762), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1812, metadata !762), !dbg !1875
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1799, metadata !762), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1810, metadata !762), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1809, metadata !762), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1808, metadata !762), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1807, metadata !762), !dbg !1869
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1804, metadata !762), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1803, metadata !762), !dbg !1866
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1800, metadata !762), !dbg !1863
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
  ], !dbg !1880

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1800, metadata !762), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1812, metadata !762), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1812, metadata !762), !dbg !1875
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1800, metadata !762), !dbg !1863
  br label %95, !dbg !1881

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1812, metadata !762), !dbg !1875
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1800, metadata !762), !dbg !1863
  %43 = and i8 %36, 1, !dbg !1883
  %44 = icmp eq i8 %43, 0, !dbg !1883
  br i1 %44, label %45, label %95, !dbg !1881

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1885
  br i1 %46, label %95, label %47, !dbg !1889

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1891, !tbaa !936
  br label %95, !dbg !1891

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %28), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1803, metadata !762), !dbg !1866
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %28), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1804, metadata !762), !dbg !1867
  br label %51, !dbg !1898

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1804, metadata !762), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1803, metadata !762), !dbg !1866
  %54 = and i8 %36, 1, !dbg !1899
  %55 = icmp eq i8 %54, 0, !dbg !1899
  br i1 %55, label %56, label %73, !dbg !1901

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1808, metadata !762), !dbg !1870
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1806, metadata !762), !dbg !1868
  %57 = load i8, i8* %52, align 1, !dbg !1902, !tbaa !936
  %58 = icmp eq i8 %57, 0, !dbg !1906
  br i1 %58, label %73, label %59, !dbg !1906

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1908

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1908
  br i1 %64, label %65, label %67, !dbg !1912

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1914
  store i8 %61, i8* %66, align 1, !dbg !1914, !tbaa !936
  br label %67, !dbg !1914

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1806, metadata !762), !dbg !1868
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1918
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1808, metadata !762), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1808, metadata !762), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1806, metadata !762), !dbg !1868
  %70 = load i8, i8* %69, align 1, !dbg !1902, !tbaa !936
  %71 = icmp eq i8 %70, 0, !dbg !1906
  br i1 %71, label %72, label %60, !dbg !1906, !llvm.loop !1920

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1868

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1810, metadata !762), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1808, metadata !762), !dbg !1870
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1809, metadata !762), !dbg !1871
  br label %95, !dbg !1924

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1810, metadata !762), !dbg !1872
  br label %77, !dbg !1925

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1810, metadata !762), !dbg !1872
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1812, metadata !762), !dbg !1875
  br label %79, !dbg !1926

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1812, metadata !762), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1810, metadata !762), !dbg !1872
  %82 = and i8 %81, 1, !dbg !1927
  %83 = icmp eq i8 %82, 0, !dbg !1927
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1810, metadata !762), !dbg !1872
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1929
  br label %85, !dbg !1929

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1812, metadata !762), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1810, metadata !762), !dbg !1872
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1800, metadata !762), !dbg !1863
  %88 = and i8 %87, 1, !dbg !1930
  %89 = icmp eq i8 %88, 0, !dbg !1930
  br i1 %89, label %90, label %95, !dbg !1932

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1933
  br i1 %91, label %95, label %92, !dbg !1937

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1939, !tbaa !936
  br label %95, !dbg !1939

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1812, metadata !762), !dbg !1875
  br label %95, !dbg !1941

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1942
  unreachable, !dbg !1942

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1812, metadata !762), !dbg !1875
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1810, metadata !762), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1809, metadata !762), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1808, metadata !762), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1804, metadata !762), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1803, metadata !762), !dbg !1866
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1800, metadata !762), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1805, metadata !762), !dbg !1943
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
  br label %123, !dbg !1944

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1797, metadata !762), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1815, metadata !762), !dbg !1878
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1814, metadata !762), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1799, metadata !762), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1807, metadata !762), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1805, metadata !762), !dbg !1943
  %132 = icmp eq i64 %127, -1, !dbg !1945
  br i1 %132, label %135, label %133, !dbg !1947

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1948
  br i1 %134, label %597, label %139, !dbg !1950

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1952
  %137 = load i8, i8* %136, align 1, !dbg !1952, !tbaa !936
  %138 = icmp eq i8 %137, 0, !dbg !1954
  br i1 %138, label %597, label %139, !dbg !1950

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1821, metadata !762), !dbg !1955
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1822, metadata !762), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1823, metadata !762), !dbg !1957
  br i1 %109, label %140, label %155, !dbg !1958

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1960
  %142 = and i1 %110, %132, !dbg !1962
  br i1 %142, label %143, label %145, !dbg !1962

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1799, metadata !762), !dbg !1862
  br label %145, !dbg !1964

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1799, metadata !762), !dbg !1862
  %147 = icmp ugt i64 %141, %146, !dbg !1966
  br i1 %147, label %155, label %148, !dbg !1968

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1969
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1970
  %151 = icmp ne i32 %150, 0, !dbg !1971
  %152 = or i1 %151, %112, !dbg !1971
  %153 = xor i1 %151, true, !dbg !1971
  %154 = zext i1 %153 to i8, !dbg !1971
  br i1 %152, label %155, label %644, !dbg !1971

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1821, metadata !762), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1799, metadata !762), !dbg !1862
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1973
  %159 = load i8, i8* %158, align 1, !dbg !1973, !tbaa !936
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1816, metadata !762), !dbg !1974
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
  ], !dbg !1975

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1976

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1977

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1822, metadata !762), !dbg !1956
  %163 = and i8 %128, 1, !dbg !1982
  %164 = icmp eq i8 %163, 0, !dbg !1982
  %165 = and i1 %114, %164, !dbg !1985
  br i1 %165, label %166, label %182, !dbg !1985

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1987
  br i1 %167, label %168, label %170, !dbg !1992

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1994
  store i8 39, i8* %169, align 1, !dbg !1994, !tbaa !936
  br label %170, !dbg !1994

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1806, metadata !762), !dbg !1868
  %172 = icmp ult i64 %171, %131, !dbg !1998
  br i1 %172, label %173, label %175, !dbg !2002

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2004
  store i8 36, i8* %174, align 1, !dbg !2004, !tbaa !936
  br label %175, !dbg !2004

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1806, metadata !762), !dbg !1868
  %177 = icmp ult i64 %176, %131, !dbg !2008
  br i1 %177, label %178, label %180, !dbg !2012

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2014
  store i8 39, i8* %179, align 1, !dbg !2014, !tbaa !936
  br label %180, !dbg !2014

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1813, metadata !762), !dbg !1876
  br label %182, !dbg !2018

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1806, metadata !762), !dbg !1868
  %185 = icmp ult i64 %183, %131, !dbg !2020
  br i1 %185, label %186, label %188, !dbg !2024

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2026
  store i8 92, i8* %187, align 1, !dbg !2026, !tbaa !936
  br label %188, !dbg !2026

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1806, metadata !762), !dbg !1868
  br i1 %106, label %190, label %476, !dbg !2030

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2032
  %192 = icmp ult i64 %191, %156, !dbg !2034
  br i1 %192, label %193, label %476, !dbg !2035

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2036
  %195 = load i8, i8* %194, align 1, !dbg !2036, !tbaa !936
  %196 = add i8 %195, -48, !dbg !2038
  %197 = icmp ult i8 %196, 10, !dbg !2038
  br i1 %197, label %198, label %476, !dbg !2038

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2039
  br i1 %199, label %200, label %202, !dbg !2044

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2046
  store i8 48, i8* %201, align 1, !dbg !2046, !tbaa !936
  br label %202, !dbg !2046

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1806, metadata !762), !dbg !1868
  %204 = icmp ult i64 %203, %131, !dbg !2050
  br i1 %204, label %205, label %207, !dbg !2054

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2056
  store i8 48, i8* %206, align 1, !dbg !2056, !tbaa !936
  br label %207, !dbg !2056

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1806, metadata !762), !dbg !1868
  br label %476, !dbg !2060

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2061

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2062

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2063

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2065

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2067
  %215 = icmp ult i64 %214, %156, !dbg !2069
  br i1 %215, label %216, label %476, !dbg !2070

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2071
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2073
  %219 = load i8, i8* %218, align 1, !dbg !2073, !tbaa !936
  %220 = icmp eq i8 %219, 63, !dbg !2074
  br i1 %220, label %221, label %476, !dbg !2075

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2077
  %223 = load i8, i8* %222, align 1, !dbg !2077, !tbaa !936
  %224 = sext i8 %223 to i32, !dbg !2077
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
  ], !dbg !2078

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2079

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1816, metadata !762), !dbg !1974
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1805, metadata !762), !dbg !1943
  %227 = icmp ult i64 %125, %131, !dbg !2081
  br i1 %227, label %228, label %230, !dbg !2085

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2087
  store i8 63, i8* %229, align 1, !dbg !2087, !tbaa !936
  br label %230, !dbg !2087

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1806, metadata !762), !dbg !1868
  %232 = icmp ult i64 %231, %131, !dbg !2091
  br i1 %232, label %233, label %235, !dbg !2095

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2097
  store i8 34, i8* %234, align 1, !dbg !2097, !tbaa !936
  br label %235, !dbg !2097

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1806, metadata !762), !dbg !1868
  %237 = icmp ult i64 %236, %131, !dbg !2101
  br i1 %237, label %238, label %240, !dbg !2105

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2107
  store i8 34, i8* %239, align 1, !dbg !2107, !tbaa !936
  br label %240, !dbg !2107

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1806, metadata !762), !dbg !1868
  %242 = icmp ult i64 %241, %131, !dbg !2111
  br i1 %242, label %243, label %245, !dbg !2115

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2117
  store i8 63, i8* %244, align 1, !dbg !2117, !tbaa !936
  br label %245, !dbg !2117

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1806, metadata !762), !dbg !1868
  br label %476, !dbg !2121

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1820, metadata !762), !dbg !2122
  br label %257, !dbg !2123

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1820, metadata !762), !dbg !2122
  br label %257, !dbg !2124

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1820, metadata !762), !dbg !2122
  br label %255, !dbg !2125

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1820, metadata !762), !dbg !2122
  br label %255, !dbg !2126

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1820, metadata !762), !dbg !2122
  br label %257, !dbg !2127

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1820, metadata !762), !dbg !2122
  br i1 %114, label %253, label %254, !dbg !2128

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2129

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2132

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1820, metadata !762), !dbg !2122
  br i1 %118, label %257, label %644, !dbg !2134

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1820, metadata !762), !dbg !2122
  br i1 %105, label %503, label %476, !dbg !2136

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2137
  br i1 %260, label %261, label %266, !dbg !2139

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2140, !tbaa !936
  %263 = icmp ne i8 %262, 0, !dbg !2142
  %264 = icmp ne i64 %124, 0, !dbg !2143
  %265 = or i1 %264, %263, !dbg !2145
  br i1 %265, label %476, label %272, !dbg !2145

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2146
  %268 = icmp ne i64 %124, 0, !dbg !2143
  %269 = or i1 %268, %267, !dbg !2148
  br i1 %269, label %476, label %272, !dbg !2148

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2143
  br i1 %271, label %272, label %476, !dbg !2150

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1823, metadata !762), !dbg !1957
  br label %273, !dbg !2151

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1823, metadata !762), !dbg !1957
  br i1 %118, label %476, label %644, !dbg !2152

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1814, metadata !762), !dbg !1877
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1823, metadata !762), !dbg !1957
  br i1 %114, label %276, label %476, !dbg !2154

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2155

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2158
  %279 = icmp ne i64 %126, 0, !dbg !2160
  %280 = or i1 %279, %278, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1807, metadata !762), !dbg !1869
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1797, metadata !762), !dbg !1860
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2162
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1797, metadata !762), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1807, metadata !762), !dbg !1869
  %283 = icmp ult i64 %125, %282, !dbg !2163
  br i1 %283, label %284, label %286, !dbg !2167

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2169
  store i8 39, i8* %285, align 1, !dbg !2169, !tbaa !936
  br label %286, !dbg !2169

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1806, metadata !762), !dbg !1868
  %288 = icmp ult i64 %287, %282, !dbg !2173
  br i1 %288, label %289, label %291, !dbg !2177

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2179
  store i8 92, i8* %290, align 1, !dbg !2179, !tbaa !936
  br label %291, !dbg !2179

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1806, metadata !762), !dbg !1868
  %293 = icmp ult i64 %292, %282, !dbg !2183
  br i1 %293, label %294, label %296, !dbg !2187

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2189
  store i8 39, i8* %295, align 1, !dbg !2189, !tbaa !936
  br label %296, !dbg !2189

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !762), !dbg !1876
  br label %476, !dbg !2193

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2194

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1824, metadata !762), !dbg !2195
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2196
  %301 = load i16*, i16** %300, align 8, !dbg !2196, !tbaa !770
  %302 = zext i8 %159 to i64, !dbg !2196
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2196
  %304 = load i16, i16* %303, align 2, !dbg !2196, !tbaa !2198
  %305 = lshr i16 %304, 14, !dbg !2199
  %306 = trunc i16 %305 to i8, !dbg !2199
  %307 = and i8 %306, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1827, metadata !762), !dbg !2200
  br label %368, !dbg !2201

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2202
  store i64 0, i64* %10, align 8, !dbg !2203
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1824, metadata !762), !dbg !2195
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1827, metadata !762), !dbg !2200
  %309 = icmp eq i64 %156, -1, !dbg !2204
  br i1 %309, label %310, label %312, !dbg !2206, !llvm.loop !2207

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1799, metadata !762), !dbg !1862
  br label %312, !dbg !2211, !llvm.loop !2207

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2200

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1827, metadata !762), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1824, metadata !762), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1799, metadata !762), !dbg !1862
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2212
  %317 = add i64 %315, %124, !dbg !2213
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2214
  %319 = sub i64 %313, %317, !dbg !2215
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1828, metadata !1207), !dbg !2216
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1845, metadata !1207), !dbg !2217
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1848, metadata !762), !dbg !2219
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2220

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1824, metadata !762), !dbg !2195
  %322 = icmp ugt i64 %313, %317, !dbg !2221
  br i1 %322, label %323, label %351, !dbg !2224

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2225

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2225
  %328 = load i8, i8* %327, align 1, !dbg !2225, !tbaa !936
  %329 = icmp eq i8 %328, 0, !dbg !2227
  br i1 %329, label %348, label %330, !dbg !2228

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1824, metadata !762), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1824, metadata !762), !dbg !2195
  %332 = add i64 %331, %124, !dbg !2231
  %333 = icmp ult i64 %332, %313, !dbg !2221
  br i1 %333, label %324, label %348, !dbg !2224, !llvm.loop !2232

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2234
  %336 = and i1 %116, %335, !dbg !2238
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1849, metadata !762), !dbg !2239
  br i1 %336, label %337, label %355, !dbg !2238

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2240

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2240
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2241
  %342 = load i8, i8* %341, align 1, !dbg !2241, !tbaa !936
  %343 = sext i8 %342 to i32, !dbg !2241
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2242

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1849, metadata !762), !dbg !2239
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1849, metadata !762), !dbg !2239
  %346 = icmp ult i64 %345, %320, !dbg !2234
  br i1 %346, label %338, label %354, !dbg !2245, !llvm.loop !2247

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2200

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2200

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2200

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1827, metadata !762), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1824, metadata !762), !dbg !2195
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2250
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2251

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2251, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1845, metadata !762), !dbg !2217
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2253
  %358 = icmp eq i32 %357, 0, !dbg !2253
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1827, metadata !762), !dbg !2200
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2254
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1827, metadata !762), !dbg !2200
  %360 = add i64 %320, %315, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1824, metadata !762), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1827, metadata !762), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1824, metadata !762), !dbg !2195
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2250
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1828, metadata !1207), !dbg !2216
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2256
  %362 = icmp eq i32 %361, 0, !dbg !2257
  br i1 %362, label %314, label %363, !dbg !2258, !llvm.loop !2207

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2260

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2260
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1827, metadata !762), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1824, metadata !762), !dbg !2195
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2250
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2260
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1827, metadata !762), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1824, metadata !762), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1799, metadata !762), !dbg !1862
  %372 = and i8 %371, 1, !dbg !2261
  %373 = icmp ne i8 %372, 0, !dbg !2261
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1823, metadata !762), !dbg !1957
  %374 = icmp ult i64 %370, 2, !dbg !2262
  %375 = or i1 %373, %113, !dbg !2263
  %376 = and i1 %374, %375, !dbg !2265
  br i1 %376, label %476, label %377, !dbg !2265

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1856, metadata !762), !dbg !2267
  br label %379, !dbg !2268

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1822, metadata !762), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1821, metadata !762), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1816, metadata !762), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1805, metadata !762), !dbg !1943
  br i1 %375, label %432, label %386, !dbg !2269

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2274

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1822, metadata !762), !dbg !1956
  %388 = and i8 %382, 1, !dbg !2278
  %389 = icmp eq i8 %388, 0, !dbg !2278
  %390 = and i1 %114, %389, !dbg !2281
  br i1 %390, label %391, label %407, !dbg !2281

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2283
  br i1 %392, label %393, label %395, !dbg !2288

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2290
  store i8 39, i8* %394, align 1, !dbg !2290, !tbaa !936
  br label %395, !dbg !2290

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1806, metadata !762), !dbg !1868
  %397 = icmp ult i64 %396, %131, !dbg !2294
  br i1 %397, label %398, label %400, !dbg !2298

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2300
  store i8 36, i8* %399, align 1, !dbg !2300, !tbaa !936
  br label %400, !dbg !2300

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1806, metadata !762), !dbg !1868
  %402 = icmp ult i64 %401, %131, !dbg !2304
  br i1 %402, label %403, label %405, !dbg !2308

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2310
  store i8 39, i8* %404, align 1, !dbg !2310, !tbaa !936
  br label %405, !dbg !2310

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1813, metadata !762), !dbg !1876
  br label %407, !dbg !2314

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1806, metadata !762), !dbg !1868
  %410 = icmp ult i64 %408, %131, !dbg !2316
  br i1 %410, label %411, label %413, !dbg !2320

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2322
  store i8 92, i8* %412, align 1, !dbg !2322, !tbaa !936
  br label %413, !dbg !2322

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1806, metadata !762), !dbg !1868
  %415 = icmp ult i64 %414, %131, !dbg !2326
  br i1 %415, label %416, label %420, !dbg !2330

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2332
  %418 = or i8 %417, 48, !dbg !2332
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2332
  store i8 %418, i8* %419, align 1, !dbg !2332, !tbaa !936
  br label %420, !dbg !2332

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1806, metadata !762), !dbg !1868
  %422 = icmp ult i64 %421, %131, !dbg !2336
  br i1 %422, label %423, label %428, !dbg !2340

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2342
  %425 = and i8 %424, 7, !dbg !2342
  %426 = or i8 %425, 48, !dbg !2342
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2342
  store i8 %426, i8* %427, align 1, !dbg !2342, !tbaa !936
  br label %428, !dbg !2342

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1806, metadata !762), !dbg !1868
  %430 = and i8 %383, 7, !dbg !2346
  %431 = or i8 %430, 48, !dbg !2347
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1816, metadata !762), !dbg !1974
  br label %441, !dbg !2348

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2349
  %434 = icmp eq i8 %433, 0, !dbg !2349
  br i1 %434, label %441, label %435, !dbg !2351

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2352
  br i1 %436, label %437, label %439, !dbg !2357

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2359
  store i8 92, i8* %438, align 1, !dbg !2359, !tbaa !936
  br label %439, !dbg !2359

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1821, metadata !762), !dbg !1955
  br label %441, !dbg !2363

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1822, metadata !762), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1821, metadata !762), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1816, metadata !762), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1806, metadata !762), !dbg !1868
  %447 = add i64 %380, 1, !dbg !2364
  %448 = icmp ugt i64 %378, %447, !dbg !2366
  br i1 %448, label %449, label %541, !dbg !2367

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2368
  %451 = icmp ne i8 %450, 0, !dbg !2368
  %452 = and i8 %446, 1, !dbg !2372
  %453 = icmp eq i8 %452, 0, !dbg !2372
  %454 = and i1 %451, %453, !dbg !2368
  br i1 %454, label %455, label %466, !dbg !2368

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2374
  br i1 %456, label %457, label %459, !dbg !2379

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2381
  store i8 39, i8* %458, align 1, !dbg !2381, !tbaa !936
  br label %459, !dbg !2381

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1806, metadata !762), !dbg !1868
  %461 = icmp ult i64 %460, %131, !dbg !2385
  br i1 %461, label %462, label %464, !dbg !2389

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2391
  store i8 39, i8* %463, align 1, !dbg !2391, !tbaa !936
  br label %464, !dbg !2391

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !762), !dbg !1876
  br label %466, !dbg !2395

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1806, metadata !762), !dbg !1868
  %469 = icmp ult i64 %467, %131, !dbg !2397
  br i1 %469, label %470, label %472, !dbg !2401

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2403
  store i8 %444, i8* %471, align 1, !dbg !2403, !tbaa !936
  br label %472, !dbg !2403

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1805, metadata !762), !dbg !1943
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2407
  %475 = load i8, i8* %474, align 1, !dbg !2407, !tbaa !936
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1816, metadata !762), !dbg !1974
  br label %379, !dbg !2408, !llvm.loop !2410

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1797, metadata !762), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1823, metadata !762), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1822, metadata !762), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1821, metadata !762), !dbg !1955
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1816, metadata !762), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1814, metadata !762), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1799, metadata !762), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1807, metadata !762), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1805, metadata !762), !dbg !1943
  br i1 %107, label %488, label %487, !dbg !2413

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2415

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2416

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2417
  %491 = zext i8 %490 to i64, !dbg !2417
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2419
  %493 = load i32, i32* %492, align 4, !dbg !2419, !tbaa !885
  %494 = and i8 %483, 31, !dbg !2420
  %495 = zext i8 %494 to i32, !dbg !2421
  %496 = shl i32 1, %495, !dbg !2422
  %497 = and i32 %493, %496, !dbg !2422
  %498 = icmp eq i32 %497, 0, !dbg !2422
  %499 = icmp eq i8 %157, 0, !dbg !2423
  %500 = and i1 %499, %498, !dbg !2424
  br i1 %500, label %542, label %503, !dbg !2424

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2423
  br i1 %502, label %542, label %503, !dbg !2425

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1797, metadata !762), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1823, metadata !762), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1816, metadata !762), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1814, metadata !762), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1799, metadata !762), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1807, metadata !762), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1805, metadata !762), !dbg !1943
  br i1 %112, label %513, label %644, !dbg !2427

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1822, metadata !762), !dbg !1956
  %514 = and i8 %508, 1, !dbg !2430
  %515 = icmp eq i8 %514, 0, !dbg !2430
  %516 = and i1 %114, %515, !dbg !2433
  br i1 %516, label %517, label %533, !dbg !2433

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2435
  br i1 %518, label %519, label %521, !dbg !2440

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2442
  store i8 39, i8* %520, align 1, !dbg !2442, !tbaa !936
  br label %521, !dbg !2442

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1806, metadata !762), !dbg !1868
  %523 = icmp ult i64 %522, %512, !dbg !2446
  br i1 %523, label %524, label %526, !dbg !2450

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2452
  store i8 36, i8* %525, align 1, !dbg !2452, !tbaa !936
  br label %526, !dbg !2452

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1806, metadata !762), !dbg !1868
  %528 = icmp ult i64 %527, %512, !dbg !2456
  br i1 %528, label %529, label %531, !dbg !2460

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2462
  store i8 39, i8* %530, align 1, !dbg !2462, !tbaa !936
  br label %531, !dbg !2462

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1813, metadata !762), !dbg !1876
  br label %533, !dbg !2466

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1806, metadata !762), !dbg !1868
  %536 = icmp ult i64 %534, %512, !dbg !2468
  br i1 %536, label %537, label %539, !dbg !2472

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2474
  store i8 92, i8* %538, align 1, !dbg !2474, !tbaa !936
  br label %539, !dbg !2474

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1797, metadata !762), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1823, metadata !762), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1822, metadata !762), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1816, metadata !762), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1814, metadata !762), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1799, metadata !762), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1807, metadata !762), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1805, metadata !762), !dbg !1943
  br label %569, !dbg !2478

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1860

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1797, metadata !762), !dbg !1860
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1823, metadata !762), !dbg !1957
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1822, metadata !762), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1816, metadata !762), !dbg !1974
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1814, metadata !762), !dbg !1877
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1799, metadata !762), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1807, metadata !762), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1805, metadata !762), !dbg !1943
  %553 = and i8 %547, 1, !dbg !2478
  %554 = icmp ne i8 %553, 0, !dbg !2478
  %555 = and i8 %550, 1, !dbg !2482
  %556 = icmp eq i8 %555, 0, !dbg !2482
  %557 = and i1 %554, %556, !dbg !2478
  br i1 %557, label %558, label %569, !dbg !2478

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2484
  br i1 %559, label %560, label %562, !dbg !2489

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2491
  store i8 39, i8* %561, align 1, !dbg !2491, !tbaa !936
  br label %562, !dbg !2491

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1806, metadata !762), !dbg !1868
  %564 = icmp ult i64 %563, %552, !dbg !2495
  br i1 %564, label %565, label %567, !dbg !2499

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2501
  store i8 39, i8* %566, align 1, !dbg !2501, !tbaa !936
  br label %567, !dbg !2501

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1806, metadata !762), !dbg !1868
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1813, metadata !762), !dbg !1876
  br label %569, !dbg !2505

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1813, metadata !762), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1806, metadata !762), !dbg !1868
  %579 = icmp ult i64 %577, %570, !dbg !2507
  br i1 %579, label %580, label %582, !dbg !2511

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2513
  store i8 %572, i8* %581, align 1, !dbg !2513, !tbaa !936
  br label %582, !dbg !2513

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1806, metadata !762), !dbg !1868
  %584 = and i8 %571, 1, !dbg !2517
  %585 = icmp eq i8 %584, 0, !dbg !2517
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1815, metadata !762), !dbg !1878
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2519
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1815, metadata !762), !dbg !1878
  br label %587, !dbg !2520

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1805, metadata !762), !dbg !1943
  br label %123, !dbg !2523, !llvm.loop !2524

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2527
  %600 = and i1 %114, %599, !dbg !2529
  %601 = xor i1 %600, true, !dbg !2529
  %602 = or i1 %112, %601, !dbg !2529
  br i1 %602, label %603, label %648, !dbg !2529

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2530
  %605 = xor i1 %604, true, !dbg !2530
  %606 = and i8 %129, 1, !dbg !2532
  %607 = icmp eq i8 %606, 0, !dbg !2532
  %608 = or i1 %607, %605, !dbg !2530
  br i1 %608, label %618, label %609, !dbg !2530

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2534
  %611 = icmp eq i8 %610, 0, !dbg !2534
  br i1 %611, label %614, label %612, !dbg !2537

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2538
  br label %659, !dbg !2539

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2540
  %616 = icmp ne i64 %126, 0, !dbg !2542
  %617 = and i1 %616, %615, !dbg !2544
  br i1 %617, label %27, label %618, !dbg !2544

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2545
  %620 = and i1 %619, %112, !dbg !2547
  br i1 %620, label %621, label %638, !dbg !2547

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1808, metadata !762), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1806, metadata !762), !dbg !1868
  %622 = load i8, i8* %100, align 1, !dbg !2548, !tbaa !936
  %623 = icmp eq i8 %622, 0, !dbg !2552
  br i1 %623, label %638, label %624, !dbg !2552

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2554

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2554
  br i1 %629, label %630, label %632, !dbg !2558

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2560
  store i8 %626, i8* %631, align 1, !dbg !2560, !tbaa !936
  br label %632, !dbg !2560

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1806, metadata !762), !dbg !1868
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2564
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1808, metadata !762), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1808, metadata !762), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1806, metadata !762), !dbg !1868
  %635 = load i8, i8* %634, align 1, !dbg !2548, !tbaa !936
  %636 = icmp eq i8 %635, 0, !dbg !2552
  br i1 %636, label %637, label %625, !dbg !2552, !llvm.loop !2566

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1868

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1806, metadata !762), !dbg !1868
  %640 = icmp ult i64 %639, %131, !dbg !2569
  br i1 %640, label %641, label %659, !dbg !2571

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2572
  store i8 0, i8* %642, align 1, !dbg !2573, !tbaa !936
  br label %659, !dbg !2572

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1860

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1860

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1860

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1797, metadata !762), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1799, metadata !762), !dbg !1862
  %653 = icmp ne i32 %650, 2, !dbg !2574
  %654 = icmp eq i8 %104, 0, !dbg !2576
  %655 = or i1 %653, %654, !dbg !2578
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1800, metadata !762), !dbg !1863
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1800, metadata !762), !dbg !1863
  %657 = and i32 %5, -3, !dbg !2579
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2580
  br label %659, !dbg !2581

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2582
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2583 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2587, metadata !762), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2588, metadata !762), !dbg !2592
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2593
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2589, metadata !762), !dbg !2594
  %4 = icmp eq i8* %3, %0, !dbg !2595
  br i1 %4, label %5, label %75, !dbg !2597

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2598
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2590, metadata !762), !dbg !2599
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2600, metadata !762), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2614, metadata !762), !dbg !2619
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2615, metadata !762), !dbg !2620
  %7 = load i8, i8* %6, align 1, !tbaa !936
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2621
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2621

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2624, metadata !762), !dbg !2638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2636, metadata !762), !dbg !2642
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2637, metadata !762), !dbg !2643
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !936
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2644
  %15 = icmp eq i32 %14, 84, !dbg !2644
  br i1 %15, label %16, label %72, !dbg !2644

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2647, metadata !762), !dbg !2660
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2658, metadata !762), !dbg !2664
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2659, metadata !762), !dbg !2665
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !936
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2666
  %21 = icmp eq i32 %20, 70, !dbg !2666
  br i1 %21, label %22, label %72, !dbg !2666

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2669, metadata !762), !dbg !2681
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2679, metadata !762), !dbg !2685
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2680, metadata !762), !dbg !2686
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !936
  %25 = icmp eq i8 %24, 45, !dbg !2687
  br i1 %25, label %26, label %72, !dbg !2690

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2692, metadata !762), !dbg !2703
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2701, metadata !762), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2702, metadata !762), !dbg !2708
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !936
  %29 = icmp eq i8 %28, 56, !dbg !2709
  br i1 %29, label %30, label %72, !dbg !2712

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2714, metadata !762), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2722, metadata !762), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2723, metadata !762), !dbg !2729
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !936
  %33 = icmp eq i8 %32, 0, !dbg !2730
  br i1 %33, label %34, label %72, !dbg !2733

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2735, !tbaa !936
  %36 = icmp eq i8 %35, 96, !dbg !2736
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !2735
  br label %75, !dbg !2737

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2624, metadata !762), !dbg !2738
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2636, metadata !762), !dbg !2742
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2637, metadata !762), !dbg !2743
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !936
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2744
  %43 = icmp eq i32 %42, 66, !dbg !2744
  br i1 %43, label %44, label %72, !dbg !2744

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2647, metadata !762), !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2658, metadata !762), !dbg !2747
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2659, metadata !762), !dbg !2748
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !936
  %47 = icmp eq i8 %46, 49, !dbg !2749
  br i1 %47, label %48, label %72, !dbg !2751

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2669, metadata !762), !dbg !2753
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2679, metadata !762), !dbg !2755
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2680, metadata !762), !dbg !2756
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !936
  %51 = icmp eq i8 %50, 56, !dbg !2757
  br i1 %51, label %52, label %72, !dbg !2758

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2692, metadata !762), !dbg !2759
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2701, metadata !762), !dbg !2761
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2702, metadata !762), !dbg !2762
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !936
  %55 = icmp eq i8 %54, 48, !dbg !2763
  br i1 %55, label %56, label %72, !dbg !2764

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2714, metadata !762), !dbg !2765
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2722, metadata !762), !dbg !2767
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2723, metadata !762), !dbg !2768
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !936
  %59 = icmp eq i8 %58, 51, !dbg !2769
  br i1 %59, label %60, label %72, !dbg !2770

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2771, metadata !762), !dbg !2780
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2778, metadata !762), !dbg !2784
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2779, metadata !762), !dbg !2785
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !936
  %63 = icmp eq i8 %62, 48, !dbg !2786
  br i1 %63, label %64, label %72, !dbg !2789

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2791, metadata !762), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2797, metadata !762), !dbg !2803
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2798, metadata !762), !dbg !2804
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !936
  %67 = icmp eq i8 %66, 0, !dbg !2805
  br i1 %67, label %68, label %72, !dbg !2808

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2809, !tbaa !936
  %70 = icmp eq i8 %69, 96, !dbg !2810
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !2809
  br label %75, !dbg !2811

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2812
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !2813
  br label %75, !dbg !2814

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2815
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2816 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2820, metadata !762), !dbg !2823
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2821, metadata !762), !dbg !2824
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2822, metadata !762), !dbg !2825
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2826, metadata !762) #10, !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2831, metadata !762) #10, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2832, metadata !762) #10, !dbg !2842
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2833, metadata !762) #10, !dbg !2843
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2844
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2834, metadata !762) #10, !dbg !2845
  %6 = tail call i32* @__errno_location() #1, !dbg !2846
  %7 = load i32, i32* %6, align 4, !dbg !2846, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2835, metadata !762) #10, !dbg !2847
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2848
  %9 = load i32, i32* %8, align 4, !dbg !2848, !tbaa !1728
  %10 = or i32 %9, 1, !dbg !2849
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2836, metadata !762) #10, !dbg !2850
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2851
  %12 = load i32, i32* %11, align 8, !dbg !2851, !tbaa !1666
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2852
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2853
  %15 = load i8*, i8** %14, align 8, !dbg !2853, !tbaa !1755
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2854
  %17 = load i8*, i8** %16, align 8, !dbg !2854, !tbaa !1758
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2855
  %19 = add i64 %18, 1, !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2837, metadata !762) #10, !dbg !2857
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2858, metadata !762) #10, !dbg !2863
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2865
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2838, metadata !762) #10, !dbg !2866
  %21 = load i32, i32* %11, align 8, !dbg !2867, !tbaa !1666
  %22 = load i8*, i8** %14, align 8, !dbg !2868, !tbaa !1755
  %23 = load i8*, i8** %16, align 8, !dbg !2869, !tbaa !1758
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2870
  store i32 %7, i32* %6, align 4, !dbg !2871, !tbaa !885
  ret i8* %20, !dbg !2872
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2827 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2826, metadata !762), !dbg !2873
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2831, metadata !762), !dbg !2874
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2832, metadata !762), !dbg !2875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2833, metadata !762), !dbg !2876
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2877
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2877
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2834, metadata !762), !dbg !2878
  %7 = tail call i32* @__errno_location() #1, !dbg !2879
  %8 = load i32, i32* %7, align 4, !dbg !2879, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2835, metadata !762), !dbg !2880
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2881
  %10 = load i32, i32* %9, align 4, !dbg !2881, !tbaa !1728
  %11 = icmp ne i64* %2, null, !dbg !2882
  %12 = xor i1 %11, true, !dbg !2882
  %13 = zext i1 %12 to i32, !dbg !2882
  %14 = or i32 %10, %13, !dbg !2883
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2836, metadata !762), !dbg !2884
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2885
  %16 = load i32, i32* %15, align 8, !dbg !2885, !tbaa !1666
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2886
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2887
  %19 = load i8*, i8** %18, align 8, !dbg !2887, !tbaa !1755
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2888
  %21 = load i8*, i8** %20, align 8, !dbg !2888, !tbaa !1758
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2889
  %23 = add i64 %22, 1, !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2837, metadata !762), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2858, metadata !762) #10, !dbg !2892
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2838, metadata !762), !dbg !2895
  %25 = load i32, i32* %15, align 8, !dbg !2896, !tbaa !1666
  %26 = load i8*, i8** %18, align 8, !dbg !2897, !tbaa !1755
  %27 = load i8*, i8** %20, align 8, !dbg !2898, !tbaa !1758
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2899
  store i32 %8, i32* %7, align 4, !dbg !2900, !tbaa !885
  br i1 %11, label %29, label %30, !dbg !2901

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2902, !tbaa !2904
  br label %30, !dbg !2905

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2906
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2907 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2911, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2909, metadata !762), !dbg !2912
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2910, metadata !762), !dbg !2913
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2910, metadata !762), !dbg !2913
  %2 = load i32, i32* @nslots, align 4, !dbg !2914, !tbaa !885
  %3 = icmp sgt i32 %2, 1, !dbg !2918
  br i1 %3, label %4, label %14, !dbg !2919

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2921

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2921
  %8 = load i8*, i8** %7, align 8, !dbg !2921, !tbaa !2922
  tail call void @free(i8* %8) #10, !dbg !2924
  %9 = add nuw i64 %6, 1, !dbg !2925
  %10 = load i32, i32* @nslots, align 4, !dbg !2914, !tbaa !885
  %11 = sext i32 %10 to i64, !dbg !2918
  %12 = icmp slt i64 %9, %11, !dbg !2918
  br i1 %12, label %5, label %13, !dbg !2919, !llvm.loop !2927

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2930

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2930
  %16 = load i8*, i8** %15, align 8, !dbg !2930, !tbaa !2922
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2932
  br i1 %17, label %19, label %18, !dbg !2933

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2934
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2936, !tbaa !2937
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2938, !tbaa !2922
  br label %19, !dbg !2939

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2940
  br i1 %20, label %23, label %21, !dbg !2942

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2943
  tail call void @free(i8* %22) #10, !dbg !2945
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2946, !tbaa !770
  br label %23, !dbg !2947

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2948, !tbaa !885
  ret void, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2950 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2954, metadata !762), !dbg !2956
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2955, metadata !762), !dbg !2957
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2958
  ret i8* %3, !dbg !2959
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2960 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2964, metadata !762), !dbg !2978
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2965, metadata !762), !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2966, metadata !762), !dbg !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2967, metadata !762), !dbg !2981
  %5 = tail call i32* @__errno_location() #1, !dbg !2982
  %6 = load i32, i32* %5, align 4, !dbg !2982, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2968, metadata !762), !dbg !2983
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2984, !tbaa !770
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2969, metadata !762), !dbg !2985
  %8 = icmp slt i32 %0, 0, !dbg !2986
  br i1 %8, label %9, label %10, !dbg !2988

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2989
  unreachable, !dbg !2989

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2990, !tbaa !885
  %12 = icmp sgt i32 %11, %0, !dbg !2991
  br i1 %12, label %34, label %13, !dbg !2992

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2993
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2994
  br i1 %15, label %16, label %17, !dbg !2996

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2997
  unreachable, !dbg !2997

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2998
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2998
  %20 = add nsw i32 %0, 1, !dbg !3000
  %21 = sext i32 %20 to i64, !dbg !3001
  %22 = shl nsw i64 %21, 4, !dbg !3002
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3003
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3003
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2969, metadata !762), !dbg !2985
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3004, !tbaa !770
  br i1 %14, label %25, label %26, !dbg !3005

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3006, !tbaa.struct !3008
  br label %26, !dbg !3009

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3010, !tbaa !885
  %28 = sext i32 %27 to i64, !dbg !3011
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3011
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3012
  %31 = sub nsw i32 %20, %27, !dbg !3013
  %32 = sext i32 %31 to i64, !dbg !3014
  %33 = shl nsw i64 %32, 4, !dbg !3015
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3012
  store i32 %20, i32* @nslots, align 4, !dbg !3016, !tbaa !885
  br label %34, !dbg !3017

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2969, metadata !762), !dbg !2985
  %36 = sext i32 %0 to i64, !dbg !3018
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3019
  %38 = load i64, i64* %37, align 8, !dbg !3019, !tbaa !2937
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2973, metadata !762), !dbg !3020
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3021
  %40 = load i8*, i8** %39, align 8, !dbg !3021, !tbaa !2922
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2975, metadata !762), !dbg !3022
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3023
  %42 = load i32, i32* %41, align 4, !dbg !3023, !tbaa !1728
  %43 = or i32 %42, 1, !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2976, metadata !762), !dbg !3025
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3026
  %45 = load i32, i32* %44, align 8, !dbg !3026, !tbaa !1666
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3027
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3028
  %48 = load i8*, i8** %47, align 8, !dbg !3028, !tbaa !1755
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3029
  %50 = load i8*, i8** %49, align 8, !dbg !3029, !tbaa !1758
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2977, metadata !762), !dbg !3031
  %52 = icmp ugt i64 %38, %51, !dbg !3032
  br i1 %52, label %63, label %53, !dbg !3034

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2973, metadata !762), !dbg !3020
  store i64 %54, i64* %37, align 8, !dbg !3037, !tbaa !2937
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3038
  br i1 %55, label %57, label %56, !dbg !3040

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3041
  br label %57, !dbg !3041

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2858, metadata !762) #10, !dbg !3042
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3044
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2975, metadata !762), !dbg !3022
  store i8* %58, i8** %39, align 8, !dbg !3045, !tbaa !2922
  %59 = load i32, i32* %44, align 8, !dbg !3046, !tbaa !1666
  %60 = load i8*, i8** %47, align 8, !dbg !3047, !tbaa !1755
  %61 = load i8*, i8** %49, align 8, !dbg !3048, !tbaa !1758
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3049
  br label %63, !dbg !3050

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2975, metadata !762), !dbg !3022
  store i32 %6, i32* %5, align 4, !dbg !3051, !tbaa !885
  ret i8* %64, !dbg !3052
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3053 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3057, metadata !762), !dbg !3060
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3058, metadata !762), !dbg !3061
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3059, metadata !762), !dbg !3062
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3063
  ret i8* %4, !dbg !3064
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3065 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3069, metadata !762), !dbg !3070
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2954, metadata !762) #10, !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2955, metadata !762) #10, !dbg !3073
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3074
  ret i8* %2, !dbg !3075
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3076 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3080, metadata !762), !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3081, metadata !762), !dbg !3083
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3057, metadata !762) #10, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3058, metadata !762) #10, !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3059, metadata !762) #10, !dbg !3087
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3088
  ret i8* %3, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3090 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3098, metadata !3104), !dbg !3105
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3094, metadata !762), !dbg !3107
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3095, metadata !762), !dbg !3108
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3096, metadata !762), !dbg !3109
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3110
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3097, metadata !1207), !dbg !3111
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3103, metadata !762) #10, !dbg !3112
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3113
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3113
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3098, metadata !762) #10, !dbg !3105
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3098, metadata !3114) #10, !dbg !3105
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3105
  %8 = icmp eq i32 %1, 10, !dbg !3115
  br i1 %8, label %9, label %10, !dbg !3117

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3118, !noalias !3119
  unreachable, !dbg !3118

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3098, metadata !3114) #10, !dbg !3105
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3122
  store i32 %1, i32* %11, align 8, !dbg !3122, !alias.scope !3119
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3122
  %13 = bitcast i32* %12 to i8*, !dbg !3122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3122
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3097, metadata !1207), !dbg !3111
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3124
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3125
  ret i8* %14, !dbg !3126
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3127 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3098, metadata !3104), !dbg !3136
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3131, metadata !762), !dbg !3138
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3132, metadata !762), !dbg !3139
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3133, metadata !762), !dbg !3140
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3134, metadata !762), !dbg !3141
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3142
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3142
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3135, metadata !1207), !dbg !3143
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3103, metadata !762) #10, !dbg !3144
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3145
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3145
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3098, metadata !762) #10, !dbg !3136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3098, metadata !3114) #10, !dbg !3136
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3136
  %9 = icmp eq i32 %1, 10, !dbg !3146
  br i1 %9, label %10, label %11, !dbg !3147

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3148, !noalias !3149
  unreachable, !dbg !3148

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3098, metadata !3114) #10, !dbg !3136
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3152
  store i32 %1, i32* %12, align 8, !dbg !3152, !alias.scope !3149
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3152
  %14 = bitcast i32* %13 to i8*, !dbg !3152
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3152
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3153
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3135, metadata !1207), !dbg !3143
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3154
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3155
  ret i8* %15, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3157 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3098, metadata !3104), !dbg !3163
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3161, metadata !762), !dbg !3166
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3162, metadata !762), !dbg !3167
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3094, metadata !762) #10, !dbg !3168
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3095, metadata !762) #10, !dbg !3169
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3096, metadata !762) #10, !dbg !3170
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3171
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3171
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3097, metadata !1207) #10, !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3103, metadata !762) #10, !dbg !3173
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3174
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3174
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3098, metadata !762) #10, !dbg !3163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3098, metadata !3114) #10, !dbg !3163
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3163
  %7 = icmp eq i32 %0, 10, !dbg !3175
  br i1 %7, label %8, label %9, !dbg !3176

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3177, !noalias !3178
  unreachable, !dbg !3177

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3098, metadata !3114) #10, !dbg !3163
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3181
  store i32 %0, i32* %10, align 8, !dbg !3181, !alias.scope !3178
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3181
  %12 = bitcast i32* %11 to i8*, !dbg !3181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3181
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3182
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3097, metadata !1207) #10, !dbg !3172
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3183
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3184
  ret i8* %13, !dbg !3185
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3186 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3098, metadata !3104), !dbg !3193
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3190, metadata !762), !dbg !3196
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3191, metadata !762), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3192, metadata !762), !dbg !3198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3131, metadata !762) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3132, metadata !762) #10, !dbg !3200
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3133, metadata !762) #10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3134, metadata !762) #10, !dbg !3202
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3203
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3135, metadata !1207) #10, !dbg !3204
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3103, metadata !762) #10, !dbg !3205
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3206
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3206
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3098, metadata !762) #10, !dbg !3193
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3098, metadata !3114) #10, !dbg !3193
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3193
  %8 = icmp eq i32 %0, 10, !dbg !3207
  br i1 %8, label %9, label %10, !dbg !3208

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3209, !noalias !3210
  unreachable, !dbg !3209

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3098, metadata !3114) #10, !dbg !3193
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3213
  store i32 %0, i32* %11, align 8, !dbg !3213, !alias.scope !3210
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3213
  %13 = bitcast i32* %12 to i8*, !dbg !3213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3213
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3214
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3135, metadata !1207) #10, !dbg !3204
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3215
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3216
  ret i8* %14, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3218 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3222, metadata !762), !dbg !3226
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3223, metadata !762), !dbg !3227
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3224, metadata !762), !dbg !3228
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3229
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3229
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3230, !tbaa.struct !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3225, metadata !1207), !dbg !3232
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1686, metadata !762), !dbg !3233
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1687, metadata !762), !dbg !3235
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1688, metadata !762), !dbg !3236
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1689, metadata !762), !dbg !3237
  %6 = lshr i8 %2, 5, !dbg !3238
  %7 = zext i8 %6 to i64, !dbg !3238
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3239
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1690, metadata !762), !dbg !3240
  %9 = and i8 %2, 31, !dbg !3241
  %10 = zext i8 %9 to i32, !dbg !3242
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1692, metadata !762), !dbg !3243
  %11 = load i32, i32* %8, align 4, !dbg !3244, !tbaa !885
  %12 = lshr i32 %11, %10, !dbg !3245
  %13 = and i32 %12, 1, !dbg !3246
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1693, metadata !762), !dbg !3247
  %14 = xor i32 %13, 1, !dbg !3248
  %15 = shl i32 %14, %10, !dbg !3249
  %16 = xor i32 %15, %11, !dbg !3250
  store i32 %16, i32* %8, align 4, !dbg !3250, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3225, metadata !1207), !dbg !3232
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3251
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3252
  ret i8* %17, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3254 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3258, metadata !762), !dbg !3260
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3259, metadata !762), !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3222, metadata !762) #10, !dbg !3262
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3223, metadata !762) #10, !dbg !3264
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3224, metadata !762) #10, !dbg !3265
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3266
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3267, !tbaa.struct !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3225, metadata !1207) #10, !dbg !3268
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1686, metadata !762) #10, !dbg !3269
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1687, metadata !762) #10, !dbg !3271
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1688, metadata !762) #10, !dbg !3272
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1689, metadata !762) #10, !dbg !3273
  %5 = lshr i8 %1, 5, !dbg !3274
  %6 = zext i8 %5 to i64, !dbg !3274
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3275
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1690, metadata !762) #10, !dbg !3276
  %8 = and i8 %1, 31, !dbg !3277
  %9 = zext i8 %8 to i32, !dbg !3278
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1692, metadata !762) #10, !dbg !3279
  %10 = load i32, i32* %7, align 4, !dbg !3280, !tbaa !885
  %11 = lshr i32 %10, %9, !dbg !3281
  %12 = and i32 %11, 1, !dbg !3282
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1693, metadata !762) #10, !dbg !3283
  %13 = xor i32 %12, 1, !dbg !3284
  %14 = shl i32 %13, %9, !dbg !3285
  %15 = xor i32 %14, %10, !dbg !3286
  store i32 %15, i32* %7, align 4, !dbg !3286, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3225, metadata !1207) #10, !dbg !3268
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3287
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3288
  ret i8* %16, !dbg !3289
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3290 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3292, metadata !762), !dbg !3293
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3258, metadata !762) #10, !dbg !3294
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3259, metadata !762) #10, !dbg !3296
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3222, metadata !762) #10, !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3223, metadata !762) #10, !dbg !3299
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3224, metadata !762) #10, !dbg !3300
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3301
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3302, !tbaa.struct !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3225, metadata !1207) #10, !dbg !3303
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1686, metadata !762) #10, !dbg !3304
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1687, metadata !762) #10, !dbg !3306
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1688, metadata !762) #10, !dbg !3307
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1689, metadata !762) #10, !dbg !3308
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3309
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1690, metadata !762) #10, !dbg !3310
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1692, metadata !762) #10, !dbg !3311
  %5 = load i32, i32* %4, align 4, !dbg !3312, !tbaa !885
  %6 = or i32 %5, 67108864, !dbg !3313
  store i32 %6, i32* %4, align 4, !dbg !3313, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3225, metadata !1207) #10, !dbg !3303
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3314
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3315
  ret i8* %7, !dbg !3316
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3317 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3319, metadata !762), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3320, metadata !762), !dbg !3322
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3222, metadata !762) #10, !dbg !3323
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3223, metadata !762) #10, !dbg !3325
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3224, metadata !762) #10, !dbg !3326
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3327
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3328, !tbaa.struct !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3225, metadata !1207) #10, !dbg !3329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1686, metadata !762) #10, !dbg !3330
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1687, metadata !762) #10, !dbg !3332
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1688, metadata !762) #10, !dbg !3333
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1689, metadata !762) #10, !dbg !3334
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3335
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1690, metadata !762) #10, !dbg !3336
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1692, metadata !762) #10, !dbg !3337
  %6 = load i32, i32* %5, align 4, !dbg !3338, !tbaa !885
  %7 = or i32 %6, 67108864, !dbg !3339
  store i32 %7, i32* %5, align 4, !dbg !3339, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3225, metadata !1207) #10, !dbg !3329
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3340
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3341
  ret i8* %8, !dbg !3342
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3343 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3098, metadata !3104), !dbg !3349
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3345, metadata !762), !dbg !3351
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3346, metadata !762), !dbg !3352
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3347, metadata !762), !dbg !3353
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3354
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3354
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3103, metadata !762) #10, !dbg !3355
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3356
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3356
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3098, metadata !762) #10, !dbg !3349
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3098, metadata !3114) #10, !dbg !3349
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3349
  %9 = icmp eq i32 %1, 10, !dbg !3357
  br i1 %9, label %10, label %11, !dbg !3358

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3359, !noalias !3360
  unreachable, !dbg !3359

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3098, metadata !3114) #10, !dbg !3349
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3363
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3364
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3365
  store i32 %1, i32* %13, align 8, !dbg !3365
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3365
  %15 = bitcast i32* %14 to i8*, !dbg !3365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3348, metadata !1207), !dbg !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1686, metadata !762), !dbg !3367
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1687, metadata !762), !dbg !3369
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1688, metadata !762), !dbg !3370
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1689, metadata !762), !dbg !3371
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3372
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1690, metadata !762), !dbg !3373
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1692, metadata !762), !dbg !3374
  %17 = load i32, i32* %16, align 4, !dbg !3375, !tbaa !885
  %18 = or i32 %17, 67108864, !dbg !3376
  store i32 %18, i32* %16, align 4, !dbg !3376, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3348, metadata !1207), !dbg !3366
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3377
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3378
  ret i8* %19, !dbg !3379
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3380 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3384, metadata !762), !dbg !3388
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3385, metadata !762), !dbg !3389
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3386, metadata !762), !dbg !3390
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3387, metadata !762), !dbg !3391
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3392, metadata !762) #10, !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3397, metadata !762) #10, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3398, metadata !762) #10, !dbg !3405
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3399, metadata !762) #10, !dbg !3406
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3400, metadata !762) #10, !dbg !3407
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3408
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3409, !tbaa.struct !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3401, metadata !1207) #10, !dbg !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1736, metadata !762) #10, !dbg !3411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1737, metadata !762) #10, !dbg !3413
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1738, metadata !762) #10, !dbg !3414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1736, metadata !762) #10, !dbg !3411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1736, metadata !762) #10, !dbg !3411
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3415
  store i32 10, i32* %7, align 8, !dbg !3416, !tbaa !1666
  %8 = icmp ne i8* %1, null, !dbg !3417
  %9 = icmp ne i8* %2, null, !dbg !3418
  %10 = and i1 %8, %9, !dbg !3419
  br i1 %10, label %12, label %11, !dbg !3419

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3420
  unreachable, !dbg !3420

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3421
  store i8* %1, i8** %13, align 8, !dbg !3422, !tbaa !1755
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3423
  store i8* %2, i8** %14, align 8, !dbg !3424, !tbaa !1758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3401, metadata !1207) #10, !dbg !3410
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3425
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3426
  ret i8* %15, !dbg !3427
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3393 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3392, metadata !762), !dbg !3428
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3397, metadata !762), !dbg !3429
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3398, metadata !762), !dbg !3430
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3399, metadata !762), !dbg !3431
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3400, metadata !762), !dbg !3432
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3433
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3434, !tbaa.struct !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3401, metadata !1207), !dbg !3435
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1736, metadata !762) #10, !dbg !3436
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1737, metadata !762) #10, !dbg !3438
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1738, metadata !762) #10, !dbg !3439
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1736, metadata !762) #10, !dbg !3436
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1736, metadata !762) #10, !dbg !3436
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3440
  store i32 10, i32* %8, align 8, !dbg !3441, !tbaa !1666
  %9 = icmp ne i8* %1, null, !dbg !3442
  %10 = icmp ne i8* %2, null, !dbg !3443
  %11 = and i1 %9, %10, !dbg !3444
  br i1 %11, label %13, label %12, !dbg !3444

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3445
  unreachable, !dbg !3445

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3446
  store i8* %1, i8** %14, align 8, !dbg !3447, !tbaa !1755
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3448
  store i8* %2, i8** %15, align 8, !dbg !3449, !tbaa !1758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3401, metadata !1207), !dbg !3435
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3450
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3451
  ret i8* %16, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3453 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3457, metadata !762), !dbg !3460
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3458, metadata !762), !dbg !3461
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3459, metadata !762), !dbg !3462
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3384, metadata !762) #10, !dbg !3463
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3385, metadata !762) #10, !dbg !3465
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3386, metadata !762) #10, !dbg !3466
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3387, metadata !762) #10, !dbg !3467
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3392, metadata !762) #10, !dbg !3468
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !762) #10, !dbg !3470
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3398, metadata !762) #10, !dbg !3471
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !762) #10, !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3400, metadata !762) #10, !dbg !3473
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3474
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3475, !tbaa.struct !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3401, metadata !1207) #10, !dbg !3476
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1736, metadata !762) #10, !dbg !3477
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1737, metadata !762) #10, !dbg !3479
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1738, metadata !762) #10, !dbg !3480
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1736, metadata !762) #10, !dbg !3477
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1736, metadata !762) #10, !dbg !3477
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3481
  store i32 10, i32* %6, align 8, !dbg !3482, !tbaa !1666
  %7 = icmp ne i8* %0, null, !dbg !3483
  %8 = icmp ne i8* %1, null, !dbg !3484
  %9 = and i1 %7, %8, !dbg !3485
  br i1 %9, label %11, label %10, !dbg !3485

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3486
  unreachable, !dbg !3486

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3487
  store i8* %0, i8** %12, align 8, !dbg !3488, !tbaa !1755
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3489
  store i8* %1, i8** %13, align 8, !dbg !3490, !tbaa !1758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3401, metadata !1207) #10, !dbg !3476
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3491
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3492
  ret i8* %14, !dbg !3493
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3494 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3498, metadata !762), !dbg !3502
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3499, metadata !762), !dbg !3503
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3500, metadata !762), !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3501, metadata !762), !dbg !3505
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3392, metadata !762) #10, !dbg !3506
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3397, metadata !762) #10, !dbg !3508
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3398, metadata !762) #10, !dbg !3509
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3399, metadata !762) #10, !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3400, metadata !762) #10, !dbg !3511
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3512
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3513, !tbaa.struct !3231
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3401, metadata !1207) #10, !dbg !3514
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1736, metadata !762) #10, !dbg !3515
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1737, metadata !762) #10, !dbg !3517
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1738, metadata !762) #10, !dbg !3518
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1736, metadata !762) #10, !dbg !3515
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1736, metadata !762) #10, !dbg !3515
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3519
  store i32 10, i32* %7, align 8, !dbg !3520, !tbaa !1666
  %8 = icmp ne i8* %0, null, !dbg !3521
  %9 = icmp ne i8* %1, null, !dbg !3522
  %10 = and i1 %8, %9, !dbg !3523
  br i1 %10, label %12, label %11, !dbg !3523

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3524
  unreachable, !dbg !3524

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3525
  store i8* %0, i8** %13, align 8, !dbg !3526, !tbaa !1755
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3527
  store i8* %1, i8** %14, align 8, !dbg !3528, !tbaa !1758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3401, metadata !1207) #10, !dbg !3514
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3529
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3530
  ret i8* %15, !dbg !3531
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3532 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3536, metadata !762), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3537, metadata !762), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3538, metadata !762), !dbg !3541
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3542
  ret i8* %4, !dbg !3543
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3544 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3548, metadata !762), !dbg !3550
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3549, metadata !762), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3536, metadata !762) #10, !dbg !3552
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3537, metadata !762) #10, !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3538, metadata !762) #10, !dbg !3555
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3556
  ret i8* %3, !dbg !3557
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3558 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3562, metadata !762), !dbg !3564
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3563, metadata !762), !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3536, metadata !762) #10, !dbg !3566
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3537, metadata !762) #10, !dbg !3568
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3538, metadata !762) #10, !dbg !3569
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3570
  ret i8* %3, !dbg !3571
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3572 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !762), !dbg !3577
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3562, metadata !762) #10, !dbg !3578
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3563, metadata !762) #10, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3536, metadata !762) #10, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3537, metadata !762) #10, !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3538, metadata !762) #10, !dbg !3584
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3585
  ret i8* %2, !dbg !3586
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @parse_user_spec(i8*, i32* nocapture, i32*, i8**, i8**) local_unnamed_addr #6 !dbg !3587 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3591, metadata !762), !dbg !3601
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !3592, metadata !762), !dbg !3602
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !3593, metadata !762), !dbg !3603
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !3594, metadata !762), !dbg !3604
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3595, metadata !762), !dbg !3605
  %6 = icmp eq i32* %2, null, !dbg !3606
  br i1 %6, label %9, label %7, !dbg !3606

; <label>:7:                                      ; preds = %5
  %8 = tail call i8* @strchr(i8* %0, i32 58) #10, !dbg !3607
  br label %9, !dbg !3609

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3596, metadata !762), !dbg !3612
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3597, metadata !762), !dbg !3614
  %12 = icmp ne i32* %2, null, !dbg !3615
  %13 = icmp eq i8* %10, null, !dbg !3615
  %14 = and i1 %12, %13, !dbg !3615
  %15 = icmp ne i8* %11, null, !dbg !3616
  %16 = and i1 %14, %15, !dbg !3615
  br i1 %16, label %17, label %24, !dbg !3615

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @strchr(i8* %0, i32 46) #10, !dbg !3618
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !3598, metadata !762), !dbg !3619
  %19 = icmp eq i8* %18, null, !dbg !3620
  br i1 %19, label %24, label %20, !dbg !3622

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3623
  %22 = icmp eq i8* %21, null, !dbg !3623
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3597, metadata !762), !dbg !3614
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3625
  ret i8* %23, !dbg !3625

; <label>:24:                                     ; preds = %17, %9
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3597, metadata !762), !dbg !3614
  ret i8* %11, !dbg !3627
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8*, i8*, i32* nocapture, i32*, i8**, i8**) unnamed_addr #6 !dbg !603 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !611, metadata !762), !dbg !3628
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !612, metadata !762), !dbg !3629
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !613, metadata !762), !dbg !3630
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !614, metadata !762), !dbg !3631
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !615, metadata !762), !dbg !3632
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !616, metadata !762), !dbg !3633
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !641, metadata !762), !dbg !3634
  %10 = load i32, i32* %2, align 4, !dbg !3635, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !642, metadata !762), !dbg !3636
  %11 = icmp ne i32* %3, null, !dbg !3637
  br i1 %11, label %12, label %14, !dbg !3637

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3638, !tbaa !885
  br label %14, !dbg !3640

; <label>:14:                                     ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3641
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !643, metadata !762), !dbg !3643
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !617, metadata !762), !dbg !3644
  %16 = icmp ne i8** %4, null, !dbg !3645
  br i1 %16, label %17, label %18, !dbg !3647

; <label>:17:                                     ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3648, !tbaa !770
  br label %18, !dbg !3649

; <label>:18:                                     ; preds = %17, %14
  %19 = icmp ne i8** %5, null, !dbg !3650
  br i1 %19, label %20, label %21, !dbg !3652

; <label>:20:                                     ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3653, !tbaa !770
  br label %21, !dbg !3654

; <label>:21:                                     ; preds = %20, %18
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !639, metadata !762), !dbg !3655
  %22 = icmp eq i8* %1, null, !dbg !3656
  br i1 %22, label %23, label %28, !dbg !3657

; <label>:23:                                     ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3658, !tbaa !936
  %25 = icmp eq i8 %24, 0, !dbg !3658
  br i1 %25, label %138, label %26, !dbg !3661

; <label>:26:                                     ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #10, !dbg !3662
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !639, metadata !762), !dbg !3655
  br label %43, !dbg !3663

; <label>:28:                                     ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3664
  %30 = ptrtoint i8* %0 to i64, !dbg !3664
  %31 = sub i64 %29, %30, !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !644, metadata !762), !dbg !3665
  %32 = icmp eq i64 %31, 0, !dbg !3666
  br i1 %32, label %37, label %33, !dbg !3668

; <label>:33:                                     ; preds = %28
  %34 = add i64 %31, 1, !dbg !3669
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #10, !dbg !3671
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !639, metadata !762), !dbg !3655
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3672
  store i8 0, i8* %36, align 1, !dbg !3673, !tbaa !936
  br label %37, !dbg !3674

; <label>:37:                                     ; preds = %28, %33
  %38 = phi i8* [ %35, %33 ], [ null, %28 ]
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !639, metadata !762), !dbg !3655
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3675
  %40 = load i8, i8* %39, align 1, !dbg !3676, !tbaa !936
  %41 = icmp eq i8 %40, 0, !dbg !3677
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3678
  br label %43, !dbg !3678

; <label>:43:                                     ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3679
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !640, metadata !762), !dbg !3681
  %46 = icmp eq i8* %44, null, !dbg !3682
  br i1 %46, label %97, label %47, !dbg !3683

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3684, !tbaa !936
  %49 = icmp eq i8 %48, 43, !dbg !3685
  br i1 %49, label %53, label %50, !dbg !3684

; <label>:50:                                     ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3686
  tail call void @llvm.dbg.value(metadata %struct.passwd* %51, i64 0, metadata !618, metadata !762), !dbg !3688
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3689
  br i1 %52, label %53, label %71, !dbg !3690

; <label>:53:                                     ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3691
  %55 = icmp eq i8* %45, null, !dbg !3692
  %56 = and i1 %54, %55, !dbg !3694
  br i1 %56, label %92, label %57, !dbg !3695

; <label>:57:                                     ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3696
  call void @llvm.lifetime.start(i64 8, i8* nonnull %58) #10, !dbg !3696
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !652, metadata !1207), !dbg !3697
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.87, i64 0, i64 0)) #10, !dbg !3698
  %60 = icmp eq i32 %59, 0, !dbg !3700
  %61 = load i64, i64* %7, align 8, !dbg !3701
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !652, metadata !762), !dbg !3697
  %62 = icmp ult i64 %61, 4294967296, !dbg !3703
  %63 = and i1 %60, %62, !dbg !3704
  br i1 %63, label %64, label %67, !dbg !3704

; <label>:64:                                     ; preds = %57
  %65 = trunc i64 %61 to i32, !dbg !3705
  %66 = icmp eq i32 %65, -1, !dbg !3707
  br i1 %66, label %67, label %68, !dbg !3708

; <label>:67:                                     ; preds = %64, %57
  br label %68

; <label>:68:                                     ; preds = %64, %67
  %69 = phi i32 [ %10, %67 ], [ %65, %64 ]
  %70 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i64 0, i64 0), %67 ], [ null, %64 ]
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !617, metadata !762), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !642, metadata !762), !dbg !3636
  call void @llvm.lifetime.end(i64 8, i8* nonnull %58) #10, !dbg !3710
  br label %92

; <label>:71:                                     ; preds = %50
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3711
  %73 = load i32, i32* %72, align 8, !dbg !3711, !tbaa !1036
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !642, metadata !762), !dbg !3636
  %74 = icmp eq i8* %45, null, !dbg !3712
  %75 = icmp ne i8* %1, null, !dbg !3713
  %76 = and i1 %75, %74, !dbg !3715
  br i1 %76, label %77, label %92, !dbg !3715

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3716
  call void @llvm.lifetime.start(i64 21, i8* nonnull %78) #10, !dbg !3716
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !655, metadata !762), !dbg !3717
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3718
  %80 = load i32, i32* %79, align 4, !dbg !3718, !tbaa !1040
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !643, metadata !762), !dbg !3643
  %81 = tail call %struct.group* @getgrgid(i32 %80) #10, !dbg !3719
  tail call void @llvm.dbg.value(metadata %struct.group* %81, i64 0, metadata !630, metadata !762), !dbg !3720
  %82 = icmp eq %struct.group* %81, null, !dbg !3721
  br i1 %82, label %86, label %83, !dbg !3721

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.group, %struct.group* %81, i64 0, i32 0, !dbg !3722
  %85 = load i8*, i8** %84, align 8, !dbg !3722, !tbaa !1156
  br label %89, !dbg !3724

; <label>:86:                                     ; preds = %77
  %87 = zext i32 %80 to i64, !dbg !3725
  %88 = call i8* @umaxtostr(i64 %87, i8* nonnull %78) #10, !dbg !3727
  br label %89, !dbg !3728

; <label>:89:                                     ; preds = %86, %83
  %90 = phi i8* [ %85, %83 ], [ %88, %86 ], !dbg !3729
  %91 = call noalias i8* @xstrdup(i8* %90) #10, !dbg !3731
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !641, metadata !762), !dbg !3634
  call void @endgrent() #10, !dbg !3732
  call void @llvm.lifetime.end(i64 21, i8* nonnull %78) #10, !dbg !3733
  br label %92, !dbg !3734

; <label>:92:                                     ; preds = %68, %53, %71, %89
  %93 = phi i8* [ %91, %89 ], [ null, %71 ], [ null, %53 ], [ null, %68 ]
  %94 = phi i32 [ %73, %89 ], [ %73, %71 ], [ %10, %53 ], [ %69, %68 ]
  %95 = phi i32 [ %80, %89 ], [ %15, %71 ], [ %15, %53 ], [ %15, %68 ]
  %96 = phi i8* [ null, %89 ], [ null, %71 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.89, i64 0, i64 0), %53 ], [ %70, %68 ]
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !617, metadata !762), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !643, metadata !762), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !642, metadata !762), !dbg !3636
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !641, metadata !762), !dbg !3634
  call void @endpwent() #10, !dbg !3735
  br label %97, !dbg !3736

; <label>:97:                                     ; preds = %43, %92
  %98 = phi i8* [ %44, %92 ], [ null, %43 ]
  %99 = phi i8* [ %93, %92 ], [ null, %43 ]
  %100 = phi i32 [ %94, %92 ], [ %10, %43 ]
  %101 = phi i32 [ %95, %92 ], [ %15, %43 ]
  %102 = phi i8* [ %96, %92 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !617, metadata !762), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !643, metadata !762), !dbg !3643
  call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !642, metadata !762), !dbg !3636
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !641, metadata !762), !dbg !3634
  %103 = icmp ne i8* %45, null, !dbg !3737
  %104 = icmp eq i8* %102, null, !dbg !3738
  %105 = and i1 %103, %104, !dbg !3740
  br i1 %105, label %106, label %133, !dbg !3740

; <label>:106:                                    ; preds = %97
  %107 = load i8, i8* %45, align 1, !dbg !3741, !tbaa !936
  %108 = icmp eq i8 %107, 43, !dbg !3742
  br i1 %108, label %112, label %109, !dbg !3741

; <label>:109:                                    ; preds = %106
  %110 = call %struct.group* @getgrnam(i8* nonnull %45) #10, !dbg !3743
  call void @llvm.dbg.value(metadata %struct.group* %110, i64 0, metadata !630, metadata !762), !dbg !3720
  %111 = icmp eq %struct.group* %110, null, !dbg !3745
  br i1 %111, label %112, label %126, !dbg !3746

; <label>:112:                                    ; preds = %106, %109
  %113 = bitcast i64* %9 to i8*, !dbg !3747
  call void @llvm.lifetime.start(i64 8, i8* nonnull %113) #10, !dbg !3747
  call void @llvm.dbg.value(metadata i64* %9, i64 0, metadata !659, metadata !1207), !dbg !3748
  %114 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.87, i64 0, i64 0)) #10, !dbg !3749
  %115 = icmp eq i32 %114, 0, !dbg !3751
  %116 = load i64, i64* %9, align 8, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !659, metadata !762), !dbg !3748
  %117 = icmp ult i64 %116, 4294967296, !dbg !3754
  %118 = and i1 %115, %117, !dbg !3755
  br i1 %118, label %119, label %122, !dbg !3755

; <label>:119:                                    ; preds = %112
  %120 = trunc i64 %116 to i32, !dbg !3756
  %121 = icmp eq i32 %120, -1, !dbg !3758
  br i1 %121, label %122, label %123, !dbg !3759

; <label>:122:                                    ; preds = %119, %112
  br label %123

; <label>:123:                                    ; preds = %119, %122
  %124 = phi i32 [ %101, %122 ], [ %120, %119 ]
  %125 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.90, i64 0, i64 0), %122 ], [ null, %119 ]
  call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !617, metadata !762), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !643, metadata !762), !dbg !3643
  call void @llvm.lifetime.end(i64 8, i8* nonnull %113) #10, !dbg !3761
  br label %129, !dbg !3762

; <label>:126:                                    ; preds = %109
  %127 = getelementptr inbounds %struct.group, %struct.group* %110, i64 0, i32 2, !dbg !3763
  %128 = load i32, i32* %127, align 8, !dbg !3763, !tbaa !3764
  call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !643, metadata !762), !dbg !3643
  br label %129

; <label>:129:                                    ; preds = %126, %123
  %130 = phi i32 [ %124, %123 ], [ %128, %126 ]
  %131 = phi i8* [ %125, %123 ], [ null, %126 ]
  call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !617, metadata !762), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !643, metadata !762), !dbg !3643
  call void @endgrent() #10, !dbg !3765
  %132 = call noalias i8* @xstrdup(i8* %45) #10, !dbg !3766
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !641, metadata !762), !dbg !3634
  br label %133, !dbg !3767

; <label>:133:                                    ; preds = %129, %97
  %134 = phi i8* [ %132, %129 ], [ %99, %97 ]
  %135 = phi i32 [ %130, %129 ], [ %101, %97 ]
  %136 = phi i8* [ %131, %129 ], [ %102, %97 ]
  call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !617, metadata !762), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !643, metadata !762), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !641, metadata !762), !dbg !3634
  %137 = icmp eq i8* %136, null, !dbg !3768
  br i1 %137, label %138, label %149, !dbg !3770

; <label>:138:                                    ; preds = %23, %133
  %139 = phi i32 [ %135, %133 ], [ %15, %23 ]
  %140 = phi i8* [ %134, %133 ], [ null, %23 ]
  %141 = phi i8* [ %98, %133 ], [ null, %23 ]
  %142 = phi i32 [ %100, %133 ], [ %10, %23 ]
  store i32 %142, i32* %2, align 4, !dbg !3771, !tbaa !885
  br i1 %11, label %143, label %144, !dbg !3773

; <label>:143:                                    ; preds = %138
  store i32 %139, i32* %3, align 4, !dbg !3774, !tbaa !885
  br label %144, !dbg !3776

; <label>:144:                                    ; preds = %143, %138
  br i1 %16, label %145, label %146, !dbg !3777

; <label>:145:                                    ; preds = %144
  store i8* %141, i8** %4, align 8, !dbg !3778, !tbaa !770
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !639, metadata !762), !dbg !3655
  br label %146, !dbg !3781

; <label>:146:                                    ; preds = %145, %144
  %147 = phi i8* [ null, %145 ], [ %141, %144 ]
  call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !639, metadata !762), !dbg !3655
  br i1 %19, label %148, label %149, !dbg !3782

; <label>:148:                                    ; preds = %146
  store i8* %140, i8** %5, align 8, !dbg !3783, !tbaa !770
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !641, metadata !762), !dbg !3634
  br label %149, !dbg !3786

; <label>:149:                                    ; preds = %146, %148, %133
  %150 = phi i1 [ true, %148 ], [ true, %146 ], [ false, %133 ]
  %151 = phi i8* [ null, %148 ], [ null, %146 ], [ %136, %133 ]
  %152 = phi i8* [ %147, %148 ], [ %147, %146 ], [ %98, %133 ]
  %153 = phi i8* [ null, %148 ], [ %140, %146 ], [ %134, %133 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !641, metadata !762), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !639, metadata !762), !dbg !3655
  call void @free(i8* %152) #10, !dbg !3787
  call void @free(i8* %153) #10, !dbg !3788
  br i1 %150, label %156, label %154, !dbg !3789

; <label>:154:                                    ; preds = %149
  %155 = call i8* @dcgettext(i8* null, i8* nonnull %151, i32 5) #10, !dbg !3790
  br label %156, !dbg !3791

; <label>:156:                                    ; preds = %149, %154
  %157 = phi i8* [ %155, %154 ], [ null, %149 ], !dbg !3792
  ret i8* %157, !dbg !3793
}

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

declare void @endgrent() local_unnamed_addr #3

declare void @endpwent() local_unnamed_addr #3

declare %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3794 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3853, metadata !762), !dbg !3859
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3854, metadata !762), !dbg !3860
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3855, metadata !762), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3856, metadata !762), !dbg !3862
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3857, metadata !762), !dbg !3863
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3858, metadata !762), !dbg !3864
  %7 = icmp eq i8* %1, null, !dbg !3865
  br i1 %7, label %10, label %8, !dbg !3867

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3868
  br label %12, !dbg !3868

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3869
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.93, i64 0, i64 0), i32 5) #10, !dbg !3870
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3871
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.94, i64 0, i64 0), i32 5) #10, !dbg !3873
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3874
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
  ], !dbg !3875

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3876
  unreachable, !dbg !3876

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #10, !dbg !3878
  %20 = load i8*, i8** %4, align 8, !dbg !3878, !tbaa !770
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3879
  br label %146, !dbg !3881

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.96, i64 0, i64 0), i32 5) #10, !dbg !3882
  %24 = load i8*, i8** %4, align 8, !dbg !3882, !tbaa !770
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3882
  %26 = load i8*, i8** %25, align 8, !dbg !3882, !tbaa !770
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3883
  br label %146, !dbg !3884

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.97, i64 0, i64 0), i32 5) #10, !dbg !3885
  %30 = load i8*, i8** %4, align 8, !dbg !3885, !tbaa !770
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3885
  %32 = load i8*, i8** %31, align 8, !dbg !3885, !tbaa !770
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3885
  %34 = load i8*, i8** %33, align 8, !dbg !3885, !tbaa !770
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3886
  br label %146, !dbg !3887

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.98, i64 0, i64 0), i32 5) #10, !dbg !3888
  %38 = load i8*, i8** %4, align 8, !dbg !3888, !tbaa !770
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3888
  %40 = load i8*, i8** %39, align 8, !dbg !3888, !tbaa !770
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3888
  %42 = load i8*, i8** %41, align 8, !dbg !3888, !tbaa !770
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3888
  %44 = load i8*, i8** %43, align 8, !dbg !3888, !tbaa !770
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3889
  br label %146, !dbg !3890

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.99, i64 0, i64 0), i32 5) #10, !dbg !3891
  %48 = load i8*, i8** %4, align 8, !dbg !3891, !tbaa !770
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3891
  %50 = load i8*, i8** %49, align 8, !dbg !3891, !tbaa !770
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3891
  %52 = load i8*, i8** %51, align 8, !dbg !3891, !tbaa !770
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3891
  %54 = load i8*, i8** %53, align 8, !dbg !3891, !tbaa !770
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3891
  %56 = load i8*, i8** %55, align 8, !dbg !3891, !tbaa !770
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3892
  br label %146, !dbg !3893

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.100, i64 0, i64 0), i32 5) #10, !dbg !3894
  %60 = load i8*, i8** %4, align 8, !dbg !3894, !tbaa !770
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3894
  %62 = load i8*, i8** %61, align 8, !dbg !3894, !tbaa !770
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3894
  %64 = load i8*, i8** %63, align 8, !dbg !3894, !tbaa !770
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3894
  %66 = load i8*, i8** %65, align 8, !dbg !3894, !tbaa !770
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3894
  %68 = load i8*, i8** %67, align 8, !dbg !3894, !tbaa !770
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3894
  %70 = load i8*, i8** %69, align 8, !dbg !3894, !tbaa !770
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3895
  br label %146, !dbg !3896

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.101, i64 0, i64 0), i32 5) #10, !dbg !3897
  %74 = load i8*, i8** %4, align 8, !dbg !3897, !tbaa !770
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3897
  %76 = load i8*, i8** %75, align 8, !dbg !3897, !tbaa !770
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3897
  %78 = load i8*, i8** %77, align 8, !dbg !3897, !tbaa !770
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3897
  %80 = load i8*, i8** %79, align 8, !dbg !3897, !tbaa !770
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3897
  %82 = load i8*, i8** %81, align 8, !dbg !3897, !tbaa !770
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3897
  %84 = load i8*, i8** %83, align 8, !dbg !3897, !tbaa !770
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3897
  %86 = load i8*, i8** %85, align 8, !dbg !3897, !tbaa !770
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3898
  br label %146, !dbg !3899

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.102, i64 0, i64 0), i32 5) #10, !dbg !3900
  %90 = load i8*, i8** %4, align 8, !dbg !3900, !tbaa !770
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3900
  %92 = load i8*, i8** %91, align 8, !dbg !3900, !tbaa !770
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3900
  %94 = load i8*, i8** %93, align 8, !dbg !3900, !tbaa !770
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3900
  %96 = load i8*, i8** %95, align 8, !dbg !3900, !tbaa !770
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3900
  %98 = load i8*, i8** %97, align 8, !dbg !3900, !tbaa !770
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3900
  %100 = load i8*, i8** %99, align 8, !dbg !3900, !tbaa !770
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3900
  %102 = load i8*, i8** %101, align 8, !dbg !3900, !tbaa !770
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3900
  %104 = load i8*, i8** %103, align 8, !dbg !3900, !tbaa !770
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3901
  br label %146, !dbg !3902

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.103, i64 0, i64 0), i32 5) #10, !dbg !3903
  %108 = load i8*, i8** %4, align 8, !dbg !3903, !tbaa !770
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3903
  %110 = load i8*, i8** %109, align 8, !dbg !3903, !tbaa !770
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3903
  %112 = load i8*, i8** %111, align 8, !dbg !3903, !tbaa !770
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3903
  %114 = load i8*, i8** %113, align 8, !dbg !3903, !tbaa !770
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3903
  %116 = load i8*, i8** %115, align 8, !dbg !3903, !tbaa !770
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3903
  %118 = load i8*, i8** %117, align 8, !dbg !3903, !tbaa !770
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3903
  %120 = load i8*, i8** %119, align 8, !dbg !3903, !tbaa !770
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3903
  %122 = load i8*, i8** %121, align 8, !dbg !3903, !tbaa !770
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3903
  %124 = load i8*, i8** %123, align 8, !dbg !3903, !tbaa !770
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3904
  br label %146, !dbg !3905

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.104, i64 0, i64 0), i32 5) #10, !dbg !3906
  %128 = load i8*, i8** %4, align 8, !dbg !3906, !tbaa !770
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3906
  %130 = load i8*, i8** %129, align 8, !dbg !3906, !tbaa !770
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3906
  %132 = load i8*, i8** %131, align 8, !dbg !3906, !tbaa !770
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3906
  %134 = load i8*, i8** %133, align 8, !dbg !3906, !tbaa !770
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3906
  %136 = load i8*, i8** %135, align 8, !dbg !3906, !tbaa !770
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3906
  %138 = load i8*, i8** %137, align 8, !dbg !3906, !tbaa !770
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3906
  %140 = load i8*, i8** %139, align 8, !dbg !3906, !tbaa !770
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3906
  %142 = load i8*, i8** %141, align 8, !dbg !3906, !tbaa !770
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3906
  %144 = load i8*, i8** %143, align 8, !dbg !3906, !tbaa !770
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3907
  br label %146, !dbg !3908

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3909
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3910 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3914, metadata !762), !dbg !3920
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3915, metadata !762), !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3916, metadata !762), !dbg !3922
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3917, metadata !762), !dbg !3923
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3918, metadata !762), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3919, metadata !762), !dbg !3925
  br label %6, !dbg !3926

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3919, metadata !762), !dbg !3925
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3928
  %9 = load i8*, i8** %8, align 8, !dbg !3928, !tbaa !770
  %10 = icmp eq i8* %9, null, !dbg !3931
  %11 = add i64 %7, 1, !dbg !3933
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3919, metadata !762), !dbg !3925
  br i1 %10, label %12, label %6, !dbg !3931, !llvm.loop !3935

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3938
  ret void, !dbg !3939
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3940 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3951, metadata !762), !dbg !3959
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3952, metadata !762), !dbg !3960
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3953, metadata !762), !dbg !3961
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3954, metadata !762), !dbg !3962
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3955, metadata !762), !dbg !3963
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3964
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3964
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3957, metadata !762), !dbg !3965
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3956, metadata !762), !dbg !3966
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3967
  %12 = icmp ult i32 %11, 41, !dbg !3967
  br i1 %12, label %13, label %18, !dbg !3967

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3971
  %15 = sext i32 %11 to i64, !dbg !3971
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3971
  %17 = add i32 %11, 8, !dbg !3971
  store i32 %17, i32* %8, align 8, !dbg !3971
  br label %21, !dbg !3971

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3973
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3973
  store i8* %20, i8** %10, align 8, !dbg !3973
  br label %21, !dbg !3973

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3967
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3975
  %25 = load i8*, i8** %24, align 8, !dbg !3975
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3977
  store i8* %25, i8** %26, align 16, !dbg !3978, !tbaa !770
  %27 = icmp eq i8* %25, null, !dbg !3979
  br i1 %27, label %30, label %28, !dbg !3980

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %29 = icmp ult i32 %22, 41, !dbg !3967
  br i1 %29, label %35, label %32, !dbg !3967

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3982
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3983
  ret void, !dbg !3983

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3973
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3973
  store i8* %34, i8** %10, align 8, !dbg !3973
  br label %40, !dbg !3973

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3971
  %37 = sext i32 %22 to i64, !dbg !3971
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3971
  %39 = add i32 %22, 8, !dbg !3971
  store i32 %39, i32* %8, align 8, !dbg !3971
  br label %40, !dbg !3971

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3967
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3975
  %44 = load i8*, i8** %43, align 8, !dbg !3975
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3977
  store i8* %44, i8** %45, align 8, !dbg !3978, !tbaa !770
  %46 = icmp eq i8* %44, null, !dbg !3979
  br i1 %46, label %30, label %47, !dbg !3980

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %48 = icmp ult i32 %41, 41, !dbg !3967
  br i1 %48, label %52, label %49, !dbg !3967

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3973
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3973
  store i8* %51, i8** %10, align 8, !dbg !3973
  br label %57, !dbg !3973

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3971
  %54 = sext i32 %41 to i64, !dbg !3971
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3971
  %56 = add i32 %41, 8, !dbg !3971
  store i32 %56, i32* %8, align 8, !dbg !3971
  br label %57, !dbg !3971

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3967
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3975
  %61 = load i8*, i8** %60, align 8, !dbg !3975
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3977
  store i8* %61, i8** %62, align 16, !dbg !3978, !tbaa !770
  %63 = icmp eq i8* %61, null, !dbg !3979
  br i1 %63, label %30, label %64, !dbg !3980

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %65 = icmp ult i32 %58, 41, !dbg !3967
  br i1 %65, label %69, label %66, !dbg !3967

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3973
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3973
  store i8* %68, i8** %10, align 8, !dbg !3973
  br label %74, !dbg !3973

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3971
  %71 = sext i32 %58 to i64, !dbg !3971
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3971
  %73 = add i32 %58, 8, !dbg !3971
  store i32 %73, i32* %8, align 8, !dbg !3971
  br label %74, !dbg !3971

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3967
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3975
  %78 = load i8*, i8** %77, align 8, !dbg !3975
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3977
  store i8* %78, i8** %79, align 8, !dbg !3978, !tbaa !770
  %80 = icmp eq i8* %78, null, !dbg !3979
  br i1 %80, label %30, label %81, !dbg !3980

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %82 = icmp ult i32 %75, 41, !dbg !3967
  br i1 %82, label %86, label %83, !dbg !3967

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3973
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3973
  store i8* %85, i8** %10, align 8, !dbg !3973
  br label %91, !dbg !3973

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3971
  %88 = sext i32 %75 to i64, !dbg !3971
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3971
  %90 = add i32 %75, 8, !dbg !3971
  store i32 %90, i32* %8, align 8, !dbg !3971
  br label %91, !dbg !3971

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3967
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3975
  %95 = load i8*, i8** %94, align 8, !dbg !3975
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3977
  store i8* %95, i8** %96, align 16, !dbg !3978, !tbaa !770
  %97 = icmp eq i8* %95, null, !dbg !3979
  br i1 %97, label %30, label %98, !dbg !3980

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %99 = icmp ult i32 %92, 41, !dbg !3967
  br i1 %99, label %103, label %100, !dbg !3967

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3973
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3973
  store i8* %102, i8** %10, align 8, !dbg !3973
  br label %108, !dbg !3973

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3971
  %105 = sext i32 %92 to i64, !dbg !3971
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3971
  %107 = add i32 %92, 8, !dbg !3971
  store i32 %107, i32* %8, align 8, !dbg !3971
  br label %108, !dbg !3971

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3975
  %111 = load i8*, i8** %110, align 8, !dbg !3975
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3977
  store i8* %111, i8** %112, align 8, !dbg !3978, !tbaa !770
  %113 = icmp eq i8* %111, null, !dbg !3979
  br i1 %113, label %30, label %114, !dbg !3980

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %115 = load i8*, i8** %10, align 8, !dbg !3973
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3973
  store i8* %116, i8** %10, align 8, !dbg !3973
  %117 = bitcast i8* %115 to i8**, !dbg !3975
  %118 = load i8*, i8** %117, align 8, !dbg !3975
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3977
  store i8* %118, i8** %119, align 16, !dbg !3978, !tbaa !770
  %120 = icmp eq i8* %118, null, !dbg !3979
  br i1 %120, label %30, label %121, !dbg !3980

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %122 = load i8*, i8** %10, align 8, !dbg !3973
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3973
  store i8* %123, i8** %10, align 8, !dbg !3973
  %124 = bitcast i8* %122 to i8**, !dbg !3975
  %125 = load i8*, i8** %124, align 8, !dbg !3975
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3977
  store i8* %125, i8** %126, align 8, !dbg !3978, !tbaa !770
  %127 = icmp eq i8* %125, null, !dbg !3979
  br i1 %127, label %30, label %128, !dbg !3980

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %129 = load i8*, i8** %10, align 8, !dbg !3973
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3973
  store i8* %130, i8** %10, align 8, !dbg !3973
  %131 = bitcast i8* %129 to i8**, !dbg !3975
  %132 = load i8*, i8** %131, align 8, !dbg !3975
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3977
  store i8* %132, i8** %133, align 16, !dbg !3978, !tbaa !770
  %134 = icmp eq i8* %132, null, !dbg !3979
  br i1 %134, label %30, label %135, !dbg !3980

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %136 = load i8*, i8** %10, align 8, !dbg !3973
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3973
  store i8* %137, i8** %10, align 8, !dbg !3973
  %138 = bitcast i8* %136 to i8**, !dbg !3975
  %139 = load i8*, i8** %138, align 8, !dbg !3975
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3977
  store i8* %139, i8** %140, align 8, !dbg !3978, !tbaa !770
  %141 = icmp eq i8* %139, null, !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3956, metadata !762), !dbg !3966
  %142 = select i1 %141, i64 9, i64 10, !dbg !3980
  br label %30, !dbg !3980
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3984 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3988, metadata !762), !dbg !3998
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3989, metadata !762), !dbg !3999
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3990, metadata !762), !dbg !4000
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3991, metadata !762), !dbg !4001
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4002
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4002
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3992, metadata !762), !dbg !4003
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4004
  call void @llvm.va_start(i8* nonnull %6), !dbg !4004
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4005
  call void @llvm.va_end(i8* nonnull %6), !dbg !4006
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4007
  ret void, !dbg !4007
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4008 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #10, !dbg !4009
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.108, i64 0, i64 0)) #10, !dbg !4010
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.109, i64 0, i64 0), i32 5) #10, !dbg !4012
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.111, i64 0, i64 0)) #10, !dbg !4013
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.112, i64 0, i64 0), i32 5) #10, !dbg !4014
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4014, !tbaa !770
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4015
  ret void, !dbg !4016
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4017 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4021, metadata !762), !dbg !4023
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4022, metadata !762), !dbg !4024
  %3 = udiv i64 9223372036854775807, %1, !dbg !4025
  %4 = icmp ult i64 %3, %0, !dbg !4025
  br i1 %4, label %5, label %6, !dbg !4027

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4028
  unreachable, !dbg !4028

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4030, metadata !762) #10, !dbg !4037
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4039
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4036, metadata !762) #10, !dbg !4040
  %9 = icmp eq i8* %8, null, !dbg !4041
  %10 = icmp ne i64 %7, 0, !dbg !4043
  %11 = and i1 %10, %9, !dbg !4045
  br i1 %11, label %12, label %13, !dbg !4045

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4046
  unreachable, !dbg !4046

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4047
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4031 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4030, metadata !762), !dbg !4048
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4049
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4036, metadata !762), !dbg !4050
  %3 = icmp eq i8* %2, null, !dbg !4051
  %4 = icmp ne i64 %0, 0, !dbg !4052
  %5 = and i1 %4, %3, !dbg !4053
  br i1 %5, label %6, label %7, !dbg !4053

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4054
  unreachable, !dbg !4054

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4055
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4056 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4060, metadata !762), !dbg !4063
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4061, metadata !762), !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4062, metadata !762), !dbg !4065
  %4 = udiv i64 9223372036854775807, %2, !dbg !4066
  %5 = icmp ult i64 %4, %1, !dbg !4066
  br i1 %5, label %6, label %7, !dbg !4068

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4069
  unreachable, !dbg !4069

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4070
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4071, metadata !762) #10, !dbg !4077
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4076, metadata !762) #10, !dbg !4079
  %9 = icmp eq i64 %8, 0, !dbg !4080
  %10 = icmp ne i8* %0, null, !dbg !4082
  %11 = and i1 %10, %9, !dbg !4084
  br i1 %11, label %12, label %13, !dbg !4084

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4085
  br label %19, !dbg !4087

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4088
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4071, metadata !762) #10, !dbg !4077
  %15 = icmp eq i8* %14, null, !dbg !4089
  %16 = icmp ne i64 %8, 0, !dbg !4091
  %17 = and i1 %16, %15, !dbg !4093
  br i1 %17, label %18, label %19, !dbg !4093

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4094
  unreachable, !dbg !4094

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4095
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4072 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4071, metadata !762), !dbg !4096
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4076, metadata !762), !dbg !4097
  %3 = icmp eq i64 %1, 0, !dbg !4098
  %4 = icmp ne i8* %0, null, !dbg !4099
  %5 = and i1 %4, %3, !dbg !4100
  br i1 %5, label %6, label %7, !dbg !4100

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4101
  br label %13, !dbg !4102

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4103
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4071, metadata !762), !dbg !4096
  %9 = icmp eq i8* %8, null, !dbg !4104
  %10 = icmp ne i64 %1, 0, !dbg !4105
  %11 = and i1 %10, %9, !dbg !4106
  br i1 %11, label %12, label %13, !dbg !4106

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4107
  unreachable, !dbg !4107

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4108
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !681 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !686, metadata !762), !dbg !4109
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !687, metadata !762), !dbg !4110
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !688, metadata !762), !dbg !4111
  %4 = load i64, i64* %1, align 8, !dbg !4112, !tbaa !2904
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !689, metadata !762), !dbg !4113
  %5 = icmp eq i8* %0, null, !dbg !4114
  br i1 %5, label %6, label %13, !dbg !4116

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4117
  br i1 %7, label %8, label %17, !dbg !4120

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4121
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !689, metadata !762), !dbg !4113
  %10 = icmp ugt i64 %2, 128, !dbg !4123
  %11 = zext i1 %10 to i64, !dbg !4123
  %12 = add nuw nsw i64 %9, %11, !dbg !4124
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !689, metadata !762), !dbg !4113
  br label %17, !dbg !4125

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4126
  %15 = icmp ugt i64 %14, %4, !dbg !4129
  br i1 %15, label %20, label %16, !dbg !4130

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4131
  unreachable, !dbg !4131

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !689, metadata !762), !dbg !4113
  store i64 %18, i64* %1, align 8, !dbg !4132, !tbaa !2904
  %19 = mul i64 %18, %2, !dbg !4133
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4071, metadata !762) #10, !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4076, metadata !762) #10, !dbg !4136
  br label %27, !dbg !4137

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4138
  %22 = add i64 %4, 1, !dbg !4139
  %23 = add i64 %22, %21, !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !689, metadata !762), !dbg !4113
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !689, metadata !762), !dbg !4113
  store i64 %23, i64* %1, align 8, !dbg !4132, !tbaa !2904
  %24 = mul i64 %23, %2, !dbg !4133
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4071, metadata !762) #10, !dbg !4134
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4076, metadata !762) #10, !dbg !4136
  %25 = icmp eq i64 %24, 0, !dbg !4141
  br i1 %25, label %26, label %27, !dbg !4137

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4142
  br label %34, !dbg !4143

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4144
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4071, metadata !762) #10, !dbg !4134
  %30 = icmp eq i8* %29, null, !dbg !4145
  %31 = icmp ne i64 %28, 0, !dbg !4146
  %32 = and i1 %31, %30, !dbg !4147
  br i1 %32, label %33, label %34, !dbg !4147

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4148
  unreachable, !dbg !4148

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4149
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4150 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4152, metadata !762), !dbg !4153
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4030, metadata !762) #10, !dbg !4154
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4156
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4036, metadata !762) #10, !dbg !4157
  %3 = icmp eq i8* %2, null, !dbg !4158
  %4 = icmp ne i64 %0, 0, !dbg !4159
  %5 = and i1 %4, %3, !dbg !4160
  br i1 %5, label %6, label %7, !dbg !4160

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4161
  unreachable, !dbg !4161

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4162
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4163 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4167, metadata !762), !dbg !4169
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4168, metadata !762), !dbg !4170
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !686, metadata !762) #10, !dbg !4171
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !687, metadata !762) #10, !dbg !4173
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !688, metadata !762) #10, !dbg !4174
  %3 = load i64, i64* %1, align 8, !dbg !4175, !tbaa !2904
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !689, metadata !762) #10, !dbg !4176
  %4 = icmp eq i8* %0, null, !dbg !4177
  br i1 %4, label %5, label %8, !dbg !4178

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !689, metadata !762) #10, !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !689, metadata !762) #10, !dbg !4176
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !689, metadata !762) #10, !dbg !4176
  store i64 %7, i64* %1, align 8, !dbg !4181, !tbaa !2904
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4071, metadata !762) #10, !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4076, metadata !762) #10, !dbg !4184
  br label %17, !dbg !4185

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4186
  br i1 %9, label %11, label %10, !dbg !4187

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4188
  unreachable, !dbg !4188

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4189
  %13 = add i64 %3, 1, !dbg !4190
  %14 = add i64 %13, %12, !dbg !4191
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !689, metadata !762) #10, !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !689, metadata !762) #10, !dbg !4176
  store i64 %14, i64* %1, align 8, !dbg !4181, !tbaa !2904
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4071, metadata !762) #10, !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4076, metadata !762) #10, !dbg !4184
  %15 = icmp eq i64 %14, 0, !dbg !4192
  br i1 %15, label %16, label %17, !dbg !4185

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4193
  br label %24, !dbg !4194

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4195
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4071, metadata !762) #10, !dbg !4182
  %20 = icmp eq i8* %19, null, !dbg !4196
  %21 = icmp ne i64 %18, 0, !dbg !4197
  %22 = and i1 %21, %20, !dbg !4198
  br i1 %22, label %23, label %24, !dbg !4198

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4199
  unreachable, !dbg !4199

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4200
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4201 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4203, metadata !762), !dbg !4204
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4030, metadata !762) #10, !dbg !4205
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4207
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4036, metadata !762) #10, !dbg !4208
  %3 = icmp eq i8* %2, null, !dbg !4209
  %4 = icmp ne i64 %0, 0, !dbg !4210
  %5 = and i1 %4, %3, !dbg !4211
  br i1 %5, label %6, label %7, !dbg !4211

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4212
  unreachable, !dbg !4212

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4213
  ret i8* %2, !dbg !4214
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4215 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4217, metadata !762), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4218, metadata !762), !dbg !4221
  %3 = udiv i64 9223372036854775807, %1, !dbg !4222
  %4 = icmp ult i64 %3, %0, !dbg !4222
  br i1 %4, label %8, label %5, !dbg !4224

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4225
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4219, metadata !762), !dbg !4227
  %7 = icmp eq i8* %6, null, !dbg !4228
  br i1 %7, label %8, label %9, !dbg !4229

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4231
  unreachable, !dbg !4231

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4232
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4233 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4237, metadata !762), !dbg !4239
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4238, metadata !762), !dbg !4240
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4030, metadata !762) #10, !dbg !4241
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4243
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4036, metadata !762) #10, !dbg !4244
  %4 = icmp eq i8* %3, null, !dbg !4245
  %5 = icmp ne i64 %1, 0, !dbg !4246
  %6 = and i1 %5, %4, !dbg !4247
  br i1 %6, label %7, label %8, !dbg !4247

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4248
  unreachable, !dbg !4248

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4249
  ret i8* %3, !dbg !4250
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4251 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4253, metadata !762), !dbg !4254
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4255
  %3 = add i64 %2, 1, !dbg !4256
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4237, metadata !762) #10, !dbg !4257
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4238, metadata !762) #10, !dbg !4260
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4030, metadata !762) #10, !dbg !4261
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4263
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4036, metadata !762) #10, !dbg !4264
  %5 = icmp eq i8* %4, null, !dbg !4265
  %6 = icmp ne i64 %3, 0, !dbg !4266
  %7 = and i1 %6, %5, !dbg !4267
  br i1 %7, label %8, label %9, !dbg !4267

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4268
  unreachable, !dbg !4268

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4269
  ret i8* %4, !dbg !4270
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4271 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4273, !tbaa !885
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.125, i64 0, i64 0), i32 5) #10, !dbg !4274
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i8* %2) #10, !dbg !4275
  tail call void @abort() #14, !dbg !4277
  unreachable, !dbg !4277
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #6 !dbg !4278 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4281, metadata !762), !dbg !4285
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4282, metadata !762), !dbg !4286
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !4283, metadata !762), !dbg !4287
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #10, !dbg !4288
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4284, metadata !762), !dbg !4289
  %5 = icmp eq i32 %4, -1, !dbg !4290
  br i1 %5, label %6, label %11, !dbg !4292

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #1, !dbg !4293
  %8 = load i32, i32* %7, align 4, !dbg !4293, !tbaa !885
  %9 = icmp eq i32 %8, 12, !dbg !4295
  br i1 %9, label %10, label %11, !dbg !4296

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4298
  unreachable, !dbg !4298

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !4299
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4300 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4307, metadata !762), !dbg !4325
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4308, metadata !762), !dbg !4326
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4309, metadata !762), !dbg !4327
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4310, metadata !762), !dbg !4328
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4311, metadata !762), !dbg !4329
  %7 = bitcast i8** %6 to i8*, !dbg !4330
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !4330
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4315, metadata !762), !dbg !4331
  %8 = icmp ult i32 %2, 37, !dbg !4332
  br i1 %8, label %10, label %9, !dbg !4332

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.132, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #14, !dbg !4335
  unreachable, !dbg !4335

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4337
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4313, metadata !762), !dbg !4338
  %12 = tail call i32* @__errno_location() #1, !dbg !4339
  store i32 0, i32* %12, align 4, !dbg !4340, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4316, metadata !762), !dbg !4341
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !4342
  %14 = load i16*, i16** %13, align 8, !tbaa !770
  br label %15, !dbg !4344

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !936
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4319, metadata !762), !dbg !4345
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4316, metadata !762), !dbg !4341
  %18 = zext i8 %17 to i64, !dbg !4342
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4342
  %20 = load i16, i16* %19, align 2, !dbg !4342, !tbaa !2198
  %21 = and i16 %20, 8192, !dbg !4342
  %22 = icmp eq i16 %21, 0, !dbg !4346
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4347
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4316, metadata !762), !dbg !4341
  br i1 %22, label %24, label %15, !dbg !4346, !llvm.loop !4348

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !4337
  %26 = icmp eq i8 %17, 45, !dbg !4350
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #10, !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4314, metadata !762), !dbg !4353
  %29 = load i8*, i8** %25, align 8, !dbg !4354, !tbaa !770
  %30 = icmp eq i8* %29, %0, !dbg !4356
  br i1 %30, label %31, label %40, !dbg !4357

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4358
  br i1 %32, label %265, label %33, !dbg !4361

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4362, !tbaa !936
  %35 = icmp eq i8 %34, 0, !dbg !4362
  br i1 %35, label %265, label %36, !dbg !4364

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4362
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !4365
  %39 = icmp eq i8* %38, null, !dbg !4365
  br i1 %39, label %265, label %47, !dbg !4367

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4369, !tbaa !885
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4371

; <label>:42:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4315, metadata !762), !dbg !4331
  br label %43, !dbg !4372

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4315, metadata !762), !dbg !4331
  %45 = icmp eq i8* %4, null, !dbg !4374
  br i1 %45, label %46, label %47, !dbg !4376

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4314, metadata !762), !dbg !4353
  store i64 %28, i64* %3, align 8, !dbg !4377, !tbaa !2904
  br label %265, !dbg !4379

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4380, !tbaa !936
  %51 = icmp eq i8 %50, 0, !dbg !4381
  br i1 %51, label %262, label %52, !dbg !4382

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !4380
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4320, metadata !762), !dbg !4383
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4323, metadata !762), !dbg !4384
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !4385
  %55 = icmp eq i8* %54, null, !dbg !4385
  br i1 %55, label %56, label %58, !dbg !4388

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4314, metadata !762), !dbg !4353
  store i64 %49, i64* %3, align 8, !dbg !4390, !tbaa !2904
  %57 = or i32 %48, 2, !dbg !4392
  br label %265, !dbg !4393

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
  ], !dbg !4394

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !4395
  %61 = icmp eq i8* %60, null, !dbg !4395
  br i1 %61, label %72, label %62, !dbg !4399

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4401
  %64 = load i8, i8* %63, align 1, !dbg !4401, !tbaa !936
  %65 = sext i8 %64 to i32, !dbg !4401
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4402

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4403
  %68 = load i8, i8* %67, align 1, !dbg !4403, !tbaa !936
  %69 = icmp eq i8 %68, 66, !dbg !4406
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4323, metadata !762), !dbg !4384
  %70 = select i1 %69, i64 3, i64 1, !dbg !4407
  br label %72, !dbg !4407

; <label>:71:                                     ; preds = %62, %62
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4320, metadata !762), !dbg !4383
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4323, metadata !762), !dbg !4384
  br label %72, !dbg !4408

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
  ], !dbg !4409

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4410, metadata !762), !dbg !4416
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4419
  %77 = shl i64 %49, 9, !dbg !4421
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4422
  %79 = zext i1 %76 to i32, !dbg !4422
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4324, metadata !762), !dbg !4423
  br label %253, !dbg !4424

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4410, metadata !762), !dbg !4425
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4427
  %82 = shl i64 %49, 10, !dbg !4428
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4429
  %84 = zext i1 %81 to i32, !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4324, metadata !762), !dbg !4423
  br label %253, !dbg !4430

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4439
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4441
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4441
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4439
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4442
  %88 = mul i64 %49, %73, !dbg !4444
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4445
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  %90 = icmp ult i64 %86, %89, !dbg !4442
  %91 = mul i64 %89, %73, !dbg !4444
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4445
  %93 = or i1 %90, %87, !dbg !4446
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  %94 = icmp ult i64 %86, %92, !dbg !4442
  %95 = mul i64 %92, %73, !dbg !4444
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4445
  %97 = or i1 %94, %93, !dbg !4446
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  %98 = icmp ult i64 %86, %96, !dbg !4442
  %99 = mul i64 %96, %73, !dbg !4444
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4445
  %101 = or i1 %98, %97, !dbg !4446
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  %102 = icmp ult i64 %86, %100, !dbg !4442
  %103 = mul i64 %100, %73, !dbg !4444
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4445
  %105 = or i1 %102, %101, !dbg !4446
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  %106 = icmp ult i64 %86, %104, !dbg !4442
  %107 = mul i64 %104, %73, !dbg !4444
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4445
  %109 = or i1 %106, %105, !dbg !4446
  %110 = zext i1 %109 to i32, !dbg !4446
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4439
  br label %253, !dbg !4423

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4447
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4449
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4449
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4447
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4450
  %114 = mul i64 %49, %73, !dbg !4452
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4453
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4431, metadata !762), !dbg !4447
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4431, metadata !762), !dbg !4447
  %116 = icmp ult i64 %112, %115, !dbg !4450
  %117 = mul i64 %115, %73, !dbg !4452
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4453
  %119 = or i1 %116, %113, !dbg !4454
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4431, metadata !762), !dbg !4447
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4431, metadata !762), !dbg !4447
  %120 = icmp ult i64 %112, %118, !dbg !4450
  %121 = mul i64 %118, %73, !dbg !4452
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4453
  %123 = or i1 %120, %119, !dbg !4454
  %124 = zext i1 %123 to i32, !dbg !4454
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4431, metadata !762), !dbg !4447
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4431, metadata !762), !dbg !4447
  br label %253, !dbg !4423

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4431, metadata !762), !dbg !4455
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4431, metadata !762), !dbg !4455
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4458
  %128 = mul i64 %49, %73, !dbg !4460
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4461
  %130 = zext i1 %127 to i32, !dbg !4461
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4438, metadata !762), !dbg !4457
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4438, metadata !762), !dbg !4457
  br label %253, !dbg !4423

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4431, metadata !762), !dbg !4462
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4464
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4431, metadata !762), !dbg !4462
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4465
  %134 = mul i64 %49, %73, !dbg !4467
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4468
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4431, metadata !762), !dbg !4462
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4431, metadata !762), !dbg !4462
  %136 = icmp ult i64 %132, %135, !dbg !4465
  %137 = mul i64 %135, %73, !dbg !4467
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4468
  %139 = or i1 %136, %133, !dbg !4469
  %140 = zext i1 %139 to i32, !dbg !4469
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4431, metadata !762), !dbg !4462
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4431, metadata !762), !dbg !4462
  br label %253, !dbg !4423

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4470
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4472
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4431, metadata !762), !dbg !4470
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4473
  %144 = mul i64 %49, %73, !dbg !4475
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4476
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  %146 = icmp ult i64 %142, %145, !dbg !4473
  %147 = mul i64 %145, %73, !dbg !4475
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4476
  %149 = or i1 %146, %143, !dbg !4477
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  %150 = icmp ult i64 %142, %148, !dbg !4473
  %151 = mul i64 %148, %73, !dbg !4475
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4476
  %153 = or i1 %150, %149, !dbg !4477
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  %154 = icmp ult i64 %142, %152, !dbg !4473
  %155 = mul i64 %152, %73, !dbg !4475
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4476
  %157 = or i1 %154, %153, !dbg !4477
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  %158 = icmp ult i64 %142, %156, !dbg !4473
  %159 = mul i64 %156, %73, !dbg !4475
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4476
  %161 = or i1 %158, %157, !dbg !4477
  %162 = zext i1 %161 to i32, !dbg !4477
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4470
  br label %253, !dbg !4423

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4480
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4480
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4431, metadata !762), !dbg !4478
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4481
  %166 = mul i64 %49, %73, !dbg !4483
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4484
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4478
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4478
  %168 = icmp ult i64 %164, %167, !dbg !4481
  %169 = mul i64 %167, %73, !dbg !4483
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4484
  %171 = or i1 %168, %165, !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4478
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4478
  %172 = icmp ult i64 %164, %170, !dbg !4481
  %173 = mul i64 %170, %73, !dbg !4483
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4484
  %175 = or i1 %172, %171, !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4478
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4478
  %176 = icmp ult i64 %164, %174, !dbg !4481
  %177 = mul i64 %174, %73, !dbg !4483
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4484
  %179 = or i1 %176, %175, !dbg !4485
  %180 = zext i1 %179 to i32, !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4478
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4431, metadata !762), !dbg !4478
  br label %253, !dbg !4423

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4410, metadata !762), !dbg !4486
  %182 = icmp slt i64 %49, 0, !dbg !4488
  %183 = shl i64 %49, 1, !dbg !4489
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4490
  %185 = lshr i64 %49, 63, !dbg !4490
  %186 = trunc i64 %185 to i32, !dbg !4490
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4324, metadata !762), !dbg !4423
  br label %253, !dbg !4491

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4494
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4494
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4431, metadata !762), !dbg !4492
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4495
  %190 = mul i64 %49, %73, !dbg !4497
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4498
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  %192 = icmp ult i64 %188, %191, !dbg !4495
  %193 = mul i64 %191, %73, !dbg !4497
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4498
  %195 = or i1 %192, %189, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  %196 = icmp ult i64 %188, %194, !dbg !4495
  %197 = mul i64 %194, %73, !dbg !4497
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4498
  %199 = or i1 %196, %195, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  %200 = icmp ult i64 %188, %198, !dbg !4495
  %201 = mul i64 %198, %73, !dbg !4497
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4498
  %203 = or i1 %200, %199, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  %204 = icmp ult i64 %188, %202, !dbg !4495
  %205 = mul i64 %202, %73, !dbg !4497
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4498
  %207 = or i1 %204, %203, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  %208 = icmp ult i64 %188, %206, !dbg !4495
  %209 = mul i64 %206, %73, !dbg !4497
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4498
  %211 = or i1 %208, %207, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  %212 = icmp ult i64 %188, %210, !dbg !4495
  %213 = mul i64 %210, %73, !dbg !4497
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4498
  %215 = or i1 %212, %211, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  %216 = icmp ult i64 %188, %214, !dbg !4495
  %217 = mul i64 %214, %73, !dbg !4497
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4498
  %219 = or i1 %216, %215, !dbg !4499
  %220 = zext i1 %219 to i32, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4492
  br label %253, !dbg !4423

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4502
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !762), !dbg !4502
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4431, metadata !762), !dbg !4500
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4503
  %224 = mul i64 %49, %73, !dbg !4505
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4506
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  %226 = icmp ult i64 %222, %225, !dbg !4503
  %227 = mul i64 %225, %73, !dbg !4505
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4506
  %229 = or i1 %226, %223, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  %230 = icmp ult i64 %222, %228, !dbg !4503
  %231 = mul i64 %228, %73, !dbg !4505
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4506
  %233 = or i1 %230, %229, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  %234 = icmp ult i64 %222, %232, !dbg !4503
  %235 = mul i64 %232, %73, !dbg !4505
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4506
  %237 = or i1 %234, %233, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  %238 = icmp ult i64 %222, %236, !dbg !4503
  %239 = mul i64 %236, %73, !dbg !4505
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4506
  %241 = or i1 %238, %237, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  %242 = icmp ult i64 %222, %240, !dbg !4503
  %243 = mul i64 %240, %73, !dbg !4505
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4506
  %245 = or i1 %242, %241, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  %246 = icmp ult i64 %222, %244, !dbg !4503
  %247 = mul i64 %244, %73, !dbg !4505
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4506
  %249 = or i1 %246, %245, !dbg !4507
  %250 = zext i1 %249 to i32, !dbg !4507
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4431, metadata !762), !dbg !4500
  br label %253, !dbg !4423

; <label>:251:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4314, metadata !762), !dbg !4353
  store i64 %49, i64* %3, align 8, !dbg !4508, !tbaa !2904
  %252 = or i32 %48, 2, !dbg !4509
  br label %265, !dbg !4510

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  tail call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4324, metadata !762), !dbg !4423
  %256 = or i32 %255, %48, !dbg !4511
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4315, metadata !762), !dbg !4331
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4512
  store i8* %257, i8** %25, align 8, !dbg !4512, !tbaa !770
  %258 = load i8, i8* %257, align 1, !dbg !4513, !tbaa !936
  %259 = icmp eq i8 %258, 0, !dbg !4513
  %260 = or i32 %256, 2, !dbg !4515
  tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4315, metadata !762), !dbg !4331
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4516
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4315, metadata !762), !dbg !4331
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4315, metadata !762), !dbg !4331
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4315, metadata !762), !dbg !4331
  tail call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4314, metadata !762), !dbg !4353
  store i64 %263, i64* %3, align 8, !dbg !4517, !tbaa !2904
  br label %265, !dbg !4518

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !4519
  ret i32 %266, !dbg !4519
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4520 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4523, metadata !762), !dbg !4529
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4524, metadata !762), !dbg !4530
  %3 = icmp eq i64 %0, 0, !dbg !4531
  %4 = icmp eq i64 %1, 0, !dbg !4532
  %5 = or i1 %3, %4, !dbg !4534
  br i1 %5, label %12, label %6, !dbg !4534

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4535
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4526, metadata !762), !dbg !4536
  %8 = udiv i64 %7, %1, !dbg !4537
  %9 = icmp eq i64 %8, %0, !dbg !4539
  br i1 %9, label %12, label %10, !dbg !4540

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4541
  store i32 12, i32* %11, align 4, !dbg !4543, !tbaa !885
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4523, metadata !762), !dbg !4529
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4524, metadata !762), !dbg !4530
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4544
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4525, metadata !762), !dbg !4545
  br label %16, !dbg !4546

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4547
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4548 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4565, metadata !762), !dbg !4574
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4566, metadata !762), !dbg !4575
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4567, metadata !762), !dbg !4576
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4568, metadata !762), !dbg !4577
  %6 = bitcast i32* %5 to i8*, !dbg !4578
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4578
  %7 = icmp eq i32* %0, null, !dbg !4579
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4565, metadata !762), !dbg !4574
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4581
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4565, metadata !762), !dbg !4574
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4582
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4569, metadata !762), !dbg !4583
  %10 = icmp ugt i64 %9, -3, !dbg !4584
  %11 = icmp ne i64 %2, 0, !dbg !4585
  %12 = and i1 %11, %10, !dbg !4587
  br i1 %12, label %13, label %18, !dbg !4587

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4588
  br i1 %14, label %18, label %15, !dbg !4590

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4592, !tbaa !936
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4571, metadata !762), !dbg !4593
  %17 = zext i8 %16 to i32, !dbg !4594
  store i32 %17, i32* %8, align 4, !dbg !4595, !tbaa !885
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4596
  ret i64 %19, !dbg !4596
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4597 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4642, metadata !762), !dbg !4647
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4648
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4649, metadata !762), !dbg !4652
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4654
  %4 = load i32, i32* %3, align 8, !dbg !4654, !tbaa !4655
  %5 = and i32 %4, 32, !dbg !4654
  %6 = icmp eq i32 %5, 0, !dbg !4656
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4657
  %8 = icmp ne i32 %7, 0, !dbg !4658
  br i1 %6, label %9, label %19, !dbg !4659

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4661
  %11 = icmp ne i64 %2, 0, !dbg !4661
  %12 = or i1 %11, %10, !dbg !4661
  %13 = sext i1 %8 to i32, !dbg !4661
  br i1 %12, label %22, label %14, !dbg !4661

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4663
  %16 = load i32, i32* %15, align 4, !dbg !4663, !tbaa !885
  %17 = icmp ne i32 %16, 9, !dbg !4665
  %18 = sext i1 %17 to i32, !dbg !4665
  br label %22, !dbg !4665

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4667

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4669
  store i32 0, i32* %21, align 4, !dbg !4671, !tbaa !885
  br label %22, !dbg !4669

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4672
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4673 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4678, metadata !762), !dbg !4698
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4679, metadata !762), !dbg !4699
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4700
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4680, metadata !762), !dbg !4701
  %3 = icmp eq i8* %2, null, !dbg !4702
  br i1 %3, label %15, label %4, !dbg !4703

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4688, metadata !762), !dbg !4704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4689, metadata !762), !dbg !4705
  %5 = load i8, i8* %2, align 1, !dbg !4706, !tbaa !936
  %6 = icmp eq i8 %5, 67, !dbg !4708
  br i1 %6, label %7, label %11, !dbg !4711

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4713
  %9 = load i8, i8* %8, align 1, !dbg !4713, !tbaa !936
  %10 = icmp eq i8 %9, 0, !dbg !4716
  br i1 %10, label %14, label %11, !dbg !4718

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4694, metadata !762), !dbg !4720
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0)) #10, !dbg !4721
  %13 = icmp eq i32 %12, 0, !dbg !4723
  br i1 %13, label %14, label %15, !dbg !4725

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4679, metadata !762), !dbg !4699
  br label %15, !dbg !4727

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4728
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4729 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4741, metadata !762), !dbg !4815
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4808, metadata !762), !dbg !4817
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4818
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4733, metadata !762), !dbg !4819
  %4 = icmp eq i8* %3, null, !dbg !4820
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), i8* %3, !dbg !4822
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4733, metadata !762), !dbg !4819
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4823, !tbaa !770
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4755, metadata !762) #10, !dbg !4824
  %7 = icmp eq i8* %6, null, !dbg !4825
  br i1 %7, label %8, label %127, !dbg !4826

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.145, i64 0, i64 0)) #10, !dbg !4827
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4756, metadata !762) #10, !dbg !4828
  %10 = icmp eq i8* %9, null, !dbg !4829
  br i1 %10, label %14, label %11, !dbg !4831

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4832, !tbaa !936
  %13 = icmp eq i8 %12, 0, !dbg !4834
  br i1 %13, label %14, label %15, !dbg !4835

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4837

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.146, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4756, metadata !762) #10, !dbg !4828
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4838
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4759, metadata !762) #10, !dbg !4839
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4761, metadata !762) #10, !dbg !4840
  %18 = icmp eq i64 %17, 0, !dbg !4841
  br i1 %18, label %24, label %19, !dbg !4842

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4843
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4843
  %22 = load i8, i8* %21, align 1, !dbg !4843, !tbaa !936
  %23 = icmp ne i8 %22, 47, !dbg !4845
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4846
  %27 = add i64 %17, 14, !dbg !4847
  %28 = add i64 %27, %26, !dbg !4848
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4849
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4758, metadata !762) #10, !dbg !4850
  %30 = icmp eq i8* %29, null, !dbg !4851
  br i1 %30, label %125, label %31, !dbg !4851

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4852
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4855

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4856, !tbaa !936
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4858
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.147, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4859
  br label %37, !dbg !4860

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4858
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.147, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4859
  br label %37, !dbg !4860

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4861
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4763, metadata !762) #10, !dbg !4862
  %39 = icmp slt i32 %38, 0, !dbg !4863
  br i1 %39, label %123, label %40, !dbg !4864

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.148, i64 0, i64 0)) #10, !dbg !4865
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4764, metadata !762) #10, !dbg !4866
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4867
  br i1 %42, label %48, label %43, !dbg !4868

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4869

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4870
  br label %123, !dbg !4872

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4805, metadata !762) #10, !dbg !4869
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4806, metadata !762) #10, !dbg !4873
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4874
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4875
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4876, metadata !762) #10, !dbg !4881
  %53 = load i8*, i8** %46, align 8, !dbg !4883, !tbaa !4884
  %54 = load i8*, i8** %47, align 8, !dbg !4883, !tbaa !4885
  %55 = icmp ult i8* %53, %54, !dbg !4883
  br i1 %55, label %58, label %56, !dbg !4883, !prof !1254

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4886
  br label %62, !dbg !4886

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4888
  store i8* %59, i8** %46, align 8, !dbg !4888, !tbaa !4884
  %60 = load i8, i8* %53, align 1, !dbg !4888, !tbaa !936
  %61 = zext i8 %60 to i32, !dbg !4888
  br label %62, !dbg !4888

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4890
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4807, metadata !762) #10, !dbg !4892
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4893

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4894

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4876, metadata !762) #10, !dbg !4894
  %66 = load i8*, i8** %46, align 8, !dbg !4898, !tbaa !4884
  %67 = load i8*, i8** %47, align 8, !dbg !4898, !tbaa !4885
  %68 = icmp ult i8* %66, %67, !dbg !4898
  br i1 %68, label %71, label %69, !dbg !4898, !prof !1254

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4899
  br label %75, !dbg !4899

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4900
  store i8* %72, i8** %46, align 8, !dbg !4900, !tbaa !4884
  %73 = load i8, i8* %66, align 1, !dbg !4900, !tbaa !936
  %74 = zext i8 %73 to i32, !dbg !4900
  br label %75, !dbg !4900

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4901
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4807, metadata !762) #10, !dbg !4892
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4902, !llvm.loop !4904

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4907
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.149, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4908
  %80 = icmp slt i32 %79, 2, !dbg !4910
  br i1 %80, label %115, label %81, !dbg !4911

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4912
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4812, metadata !762) #10, !dbg !4913
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4914
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4813, metadata !762) #10, !dbg !4915
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4814, metadata !762) #10, !dbg !4916
  %84 = icmp eq i64 %51, 0, !dbg !4917
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4919

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4806, metadata !762) #10, !dbg !4873
  %89 = add i64 %86, 2, !dbg !4920
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4922
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4805, metadata !762) #10, !dbg !4869
  br label %95, !dbg !4923

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4924
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4806, metadata !762) #10, !dbg !4873
  %93 = add i64 %92, 1, !dbg !4926
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4927
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4805, metadata !762) #10, !dbg !4869
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4805, metadata !762) #10, !dbg !4869
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4806, metadata !762) #10, !dbg !4873
  %98 = icmp eq i8* %97, null, !dbg !4928
  br i1 %98, label %99, label %100, !dbg !4930

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4806, metadata !762) #10, !dbg !4873
  call void @free(i8* %52) #10, !dbg !4931
  br label %116, !dbg !4933

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4934
  %102 = xor i64 %83, -1, !dbg !4935
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4935
  %104 = xor i64 %82, -1, !dbg !4936
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4936
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4937, metadata !762) #10, !dbg !4946
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4945, metadata !762) #10, !dbg !4946
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4948
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4949
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4937, metadata !762) #10, !dbg !4950
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4945, metadata !762) #10, !dbg !4950
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4952
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4953
  br label %111, !dbg !4954

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4869

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4805, metadata !762) #10, !dbg !4869
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4806, metadata !762) #10, !dbg !4873
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4954
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4954
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4869

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4869

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4805, metadata !762) #10, !dbg !4869
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4806, metadata !762) #10, !dbg !4873
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4954
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4954
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4955
  %120 = icmp eq i64 %117, 0, !dbg !4956
  br i1 %120, label %123, label %121, !dbg !4958

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4959
  store i8 0, i8* %122, align 1, !dbg !4961, !tbaa !936
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4755, metadata !762) #10, !dbg !4824
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4755, metadata !762) #10, !dbg !4824
  call void @free(i8* %29) #10, !dbg !4962
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.144, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4755, metadata !762) #10, !dbg !4824
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4963, !tbaa !770
  br label %127, !dbg !4964

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4734, metadata !762), !dbg !4965
  %129 = load i8, i8* %128, align 1, !dbg !4966, !tbaa !936
  %130 = icmp eq i8 %129, 0, !dbg !4967
  br i1 %130, label %157, label %131, !dbg !4968

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4970

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4970
  %136 = icmp eq i32 %135, 0, !dbg !4971
  br i1 %136, label %143, label %137, !dbg !4972

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4973
  br i1 %138, label %139, label %147, !dbg !4975

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4976
  %141 = load i8, i8* %140, align 1, !dbg !4976, !tbaa !936
  %142 = icmp eq i8 %141, 0, !dbg !4978
  br i1 %142, label %143, label %147, !dbg !4979

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4981
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4983
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4984
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4733, metadata !762), !dbg !4819
  br label %157, !dbg !4985

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4986
  %149 = add i64 %148, 1, !dbg !4987
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4988
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4734, metadata !762), !dbg !4965
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4989
  %152 = add i64 %151, 1, !dbg !4990
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4991
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4734, metadata !762), !dbg !4965
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4734, metadata !762), !dbg !4965
  %154 = load i8, i8* %153, align 1, !dbg !4966, !tbaa !936
  %155 = icmp eq i8 %154, 0, !dbg !4967
  br i1 %155, label %156, label %132, !dbg !4968, !llvm.loop !4992

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4819

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4733, metadata !762), !dbg !4819
  %159 = load i8, i8* %158, align 1, !dbg !4995, !tbaa !936
  %160 = icmp eq i8 %159, 0, !dbg !4997
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.150, i64 0, i64 0), i8* %158, !dbg !4998
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4733, metadata !762), !dbg !4819
  ret i8* %161, !dbg !4999
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
define i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #6 !dbg !716 {
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !721, metadata !762), !dbg !5000
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !722, metadata !762), !dbg !5001
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !723, metadata !762), !dbg !5002
  %5 = bitcast i32* %4 to i8*, !dbg !5003
  call void @llvm.lifetime.start(i64 4, i8* nonnull %5) #10, !dbg !5003
  %6 = icmp eq i8* %0, null, !dbg !5004
  br i1 %6, label %44, label %7, !dbg !5005

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !724, metadata !762), !dbg !5006
  store i32 10, i32* %4, align 4, !dbg !5007, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !5008, metadata !762) #10, !dbg !5014
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !5013, metadata !762) #10, !dbg !5016
  %8 = tail call i8* @realloc(i8* null, i64 40) #10, !dbg !5017
  %9 = icmp eq i8* %8, null, !dbg !5018
  br i1 %9, label %122, label %10, !dbg !5020

; <label>:10:                                     ; preds = %7
  br label %11, !dbg !5017

; <label>:11:                                     ; preds = %10, %39
  %12 = phi i32 [ %40, %39 ], [ 10, %10 ], !dbg !5021
  %13 = phi i8* [ %30, %39 ], [ %8, %10 ]
  %14 = bitcast i8* %13 to i32*, !dbg !5017
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !726, metadata !762), !dbg !5022
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !724, metadata !762), !dbg !5006
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !731, metadata !762), !dbg !5023
  call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !724, metadata !1207), !dbg !5006
  %15 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %14, i32* nonnull %4) #10, !dbg !5024
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !725, metadata !762), !dbg !5025
  %16 = icmp slt i32 %15, 0, !dbg !5026
  %17 = load i32, i32* %4, align 4, !tbaa !885
  %18 = icmp eq i32 %12, %17, !dbg !5028
  %19 = and i1 %16, %18, !dbg !5030
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !724, metadata !762), !dbg !5006
  br i1 %19, label %20, label %22, !dbg !5030

; <label>:20:                                     ; preds = %11
  %21 = shl nsw i32 %12, 1, !dbg !5031
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !724, metadata !762), !dbg !5006
  store i32 %21, i32* %4, align 4, !dbg !5031, !tbaa !885
  br label %22, !dbg !5032

; <label>:22:                                     ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %17, %11 ], !dbg !5033
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !724, metadata !762), !dbg !5006
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !5008, metadata !762) #10, !dbg !5034
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5013, metadata !762) #10, !dbg !5036
  %24 = icmp slt i32 %23, 0, !dbg !5037
  br i1 %24, label %25, label %27, !dbg !5039

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #1, !dbg !5040
  store i32 12, i32* %26, align 4, !dbg !5042, !tbaa !885
  br label %34, !dbg !5043

; <label>:27:                                     ; preds = %22
  %28 = sext i32 %23 to i64, !dbg !5033
  %29 = shl nsw i64 %28, 2, !dbg !5044
  %30 = call i8* @realloc(i8* nonnull %13, i64 %29) #10, !dbg !5045
  %31 = icmp eq i8* %30, null, !dbg !5046
  br i1 %31, label %32, label %37, !dbg !5043

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #1, !dbg !5047
  br label %34, !dbg !5047

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i32* [ %33, %32 ], [ %26, %25 ], !dbg !5047
  %36 = load i32, i32* %35, align 4, !dbg !5047, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !732, metadata !762), !dbg !5048
  call void @free(i8* nonnull %13) #10, !dbg !5049
  store i32 %36, i32* %35, align 4, !dbg !5050, !tbaa !885
  br label %122

; <label>:37:                                     ; preds = %27
  %38 = icmp sgt i32 %15, -1, !dbg !5051
  br i1 %38, label %41, label %39, !dbg !5053

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %4, align 4, !tbaa !885
  br label %11, !dbg !5053

; <label>:41:                                     ; preds = %37
  %42 = bitcast i32** %2 to i8**, !dbg !5054
  store i8* %30, i8** %42, align 8, !dbg !5054, !tbaa !770
  %43 = load i32, i32* %4, align 4, !dbg !5056, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !724, metadata !762), !dbg !5006
  br label %122, !dbg !5057

; <label>:44:                                     ; preds = %3
  %45 = tail call i32 @getgroups(i32 0, i32* null) #10, !dbg !5058
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !724, metadata !762), !dbg !5006
  store i32 %45, i32* %4, align 4, !dbg !5059, !tbaa !885
  %46 = icmp slt i32 %45, 0, !dbg !5061
  br i1 %46, label %47, label %59, !dbg !5063

; <label>:47:                                     ; preds = %44
  %48 = tail call i32* @__errno_location() #1, !dbg !5064
  %49 = load i32, i32* %48, align 4, !dbg !5064, !tbaa !885
  %50 = icmp eq i32 %49, 38, !dbg !5067
  br i1 %50, label %51, label %122, !dbg !5068

; <label>:51:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !5008, metadata !762) #10, !dbg !5069
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5013, metadata !762) #10, !dbg !5072
  %52 = tail call i8* @realloc(i8* null, i64 4) #10, !dbg !5073
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !726, metadata !762), !dbg !5022
  %53 = icmp eq i8* %52, null, !dbg !5074
  br i1 %53, label %122, label %54, !dbg !5075

; <label>:54:                                     ; preds = %51
  %55 = bitcast i8* %52 to i32*, !dbg !5073
  %56 = bitcast i32** %2 to i8**, !dbg !5077
  store i8* %52, i8** %56, align 8, !dbg !5077, !tbaa !770
  store i32 %1, i32* %55, align 4, !dbg !5079, !tbaa !885
  %57 = icmp ne i32 %1, -1, !dbg !5080
  %58 = zext i1 %57 to i32, !dbg !5080
  br label %122, !dbg !5081

; <label>:59:                                     ; preds = %44
  %60 = icmp eq i32 %45, 0, !dbg !5082
  %61 = icmp ne i32 %1, -1, !dbg !5084
  %62 = or i1 %61, %60, !dbg !5086
  br i1 %62, label %63, label %68, !dbg !5086

; <label>:63:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !724, metadata !762), !dbg !5006
  %64 = add nsw i32 %45, 1, !dbg !5087
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !724, metadata !762), !dbg !5006
  store i32 %64, i32* %4, align 4, !dbg !5087, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !724, metadata !762), !dbg !5006
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !5008, metadata !762) #10, !dbg !5088
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5013, metadata !762) #10, !dbg !5090
  %65 = icmp slt i32 %45, -1, !dbg !5091
  br i1 %65, label %66, label %68, !dbg !5092

; <label>:66:                                     ; preds = %63
  %67 = tail call i32* @__errno_location() #1, !dbg !5093
  store i32 12, i32* %67, align 4, !dbg !5094, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !726, metadata !762), !dbg !5022
  br label %122, !dbg !5095

; <label>:68:                                     ; preds = %59, %63
  %69 = phi i32 [ %64, %63 ], [ %45, %59 ]
  %70 = sext i32 %69 to i64, !dbg !5096
  %71 = shl nsw i64 %70, 2, !dbg !5097
  %72 = tail call i8* @realloc(i8* null, i64 %71) #10, !dbg !5098
  %73 = bitcast i8* %72 to i32*, !dbg !5098
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !726, metadata !762), !dbg !5022
  %74 = icmp eq i8* %72, null, !dbg !5099
  br i1 %74, label %122, label %75, !dbg !5095

; <label>:75:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !724, metadata !762), !dbg !5006
  %76 = zext i1 %61 to i32, !dbg !5101
  %77 = sub nsw i32 %69, %76, !dbg !5102
  %78 = zext i1 %61 to i64, !dbg !5103
  %79 = getelementptr inbounds i32, i32* %73, i64 %78, !dbg !5103
  %80 = tail call i32 @getgroups(i32 %77, i32* %79) #10, !dbg !5104
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !725, metadata !762), !dbg !5025
  %81 = icmp slt i32 %80, 0, !dbg !5105
  br i1 %81, label %82, label %85, !dbg !5106

; <label>:82:                                     ; preds = %75
  %83 = tail call i32* @__errno_location() #1, !dbg !5107
  %84 = load i32, i32* %83, align 4, !dbg !5107, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !735, metadata !762), !dbg !5108
  tail call void @free(i8* nonnull %72) #10, !dbg !5109
  store i32 %84, i32* %83, align 4, !dbg !5110, !tbaa !885
  br label %122

; <label>:85:                                     ; preds = %75
  br i1 %61, label %86, label %88, !dbg !5111

; <label>:86:                                     ; preds = %85
  store i32 %1, i32* %73, align 4, !dbg !5113, !tbaa !885
  %87 = add nsw i32 %80, 1, !dbg !5115
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !725, metadata !762), !dbg !5025
  br label %88, !dbg !5116

; <label>:88:                                     ; preds = %85, %86
  %89 = phi i32 [ %87, %86 ], [ %80, %85 ]
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !725, metadata !762), !dbg !5025
  %90 = bitcast i32** %2 to i8**, !dbg !5117
  store i8* %72, i8** %90, align 8, !dbg !5117, !tbaa !770
  %91 = icmp sgt i32 %89, 1, !dbg !5118
  br i1 %91, label %92, label %122, !dbg !5119

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %73, align 4, !dbg !5120, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !738, metadata !762), !dbg !5121
  %94 = sext i32 %89 to i64, !dbg !5122
  %95 = getelementptr inbounds i32, i32* %73, i64 %94, !dbg !5122
  tail call void @llvm.dbg.value(metadata i32* %95, i64 0, metadata !742, metadata !762), !dbg !5123
  %96 = getelementptr inbounds i8, i8* %72, i64 4
  %97 = bitcast i8* %96 to i32*
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !741, metadata !762), !dbg !5124
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !725, metadata !762), !dbg !5025
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !726, metadata !762), !dbg !5022
  %98 = icmp ult i32* %97, %95, !dbg !5125
  br i1 %98, label %99, label %122, !dbg !5129

; <label>:99:                                     ; preds = %92
  br label %100, !dbg !5129

; <label>:100:                                    ; preds = %99, %116
  %101 = phi i32 [ %108, %116 ], [ %93, %99 ]
  %102 = phi i32* [ %118, %116 ], [ %97, %99 ]
  %103 = phi i32 [ %107, %116 ], [ %89, %99 ]
  %104 = phi i32* [ %117, %116 ], [ %73, %99 ]
  br label %105, !dbg !5129

; <label>:105:                                    ; preds = %100, %112
  %106 = phi i32* [ %102, %100 ], [ %114, %112 ]
  %107 = phi i32 [ %103, %100 ], [ %113, %112 ]
  %108 = load i32, i32* %106, align 4, !dbg !5131, !tbaa !885
  %109 = icmp eq i32 %108, %93, !dbg !5134
  %110 = icmp eq i32 %108, %101, !dbg !5135
  %111 = or i1 %109, %110, !dbg !5137
  br i1 %111, label %112, label %116, !dbg !5137

; <label>:112:                                    ; preds = %105
  %113 = add nsw i32 %107, -1, !dbg !5138
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !725, metadata !762), !dbg !5025
  %114 = getelementptr inbounds i32, i32* %106, i64 1
  tail call void @llvm.dbg.value(metadata i32* %114, i64 0, metadata !741, metadata !762), !dbg !5124
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !725, metadata !762), !dbg !5025
  tail call void @llvm.dbg.value(metadata i32* %104, i64 0, metadata !726, metadata !762), !dbg !5022
  %115 = icmp ult i32* %114, %95, !dbg !5125
  br i1 %115, label %105, label %120, !dbg !5129, !llvm.loop !5139

; <label>:116:                                    ; preds = %105
  %117 = getelementptr inbounds i32, i32* %104, i64 1, !dbg !5142
  tail call void @llvm.dbg.value(metadata i32* %117, i64 0, metadata !726, metadata !762), !dbg !5022
  store i32 %108, i32* %117, align 4, !dbg !5143, !tbaa !885
  %118 = getelementptr inbounds i32, i32* %106, i64 1
  tail call void @llvm.dbg.value(metadata i32* %118, i64 0, metadata !741, metadata !762), !dbg !5124
  tail call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !725, metadata !762), !dbg !5025
  tail call void @llvm.dbg.value(metadata i32* %117, i64 0, metadata !726, metadata !762), !dbg !5022
  %119 = icmp ult i32* %118, %95, !dbg !5125
  br i1 %119, label %100, label %121, !dbg !5129, !llvm.loop !5139

; <label>:120:                                    ; preds = %112
  br label %122, !dbg !5144

; <label>:121:                                    ; preds = %116
  br label %122, !dbg !5144

; <label>:122:                                    ; preds = %121, %120, %92, %41, %34, %66, %88, %68, %47, %51, %7, %82, %54
  %123 = phi i32 [ %58, %54 ], [ -1, %82 ], [ -1, %7 ], [ -1, %51 ], [ -1, %47 ], [ -1, %68 ], [ %89, %88 ], [ -1, %66 ], [ %43, %41 ], [ -1, %34 ], [ %89, %92 ], [ %113, %120 ], [ %107, %121 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %5) #10, !dbg !5144
  ret i32 %123, !dbg !5144
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5145 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5190, metadata !762), !dbg !5194
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5191, metadata !762), !dbg !5195
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5193, metadata !762), !dbg !5196
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5192, metadata !762), !dbg !5198
  %3 = icmp slt i32 %2, 0, !dbg !5199
  br i1 %3, label %4, label %6, !dbg !5201

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5202
  br label %24, !dbg !5203

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5204
  %8 = icmp eq i32 %7, 0, !dbg !5204
  br i1 %8, label %13, label %9, !dbg !5206

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5207
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5209
  %12 = icmp eq i64 %11, -1, !dbg !5211
  br i1 %12, label %16, label %13, !dbg !5212

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5213
  %15 = icmp eq i32 %14, 0, !dbg !5213
  br i1 %15, label %16, label %18, !dbg !5214

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5191, metadata !762), !dbg !5195
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5216
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5193, metadata !762), !dbg !5196
  br label %24, !dbg !5217

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5218
  %20 = load i32, i32* %19, align 4, !dbg !5218, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5191, metadata !762), !dbg !5195
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5191, metadata !762), !dbg !5195
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5216
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5193, metadata !762), !dbg !5196
  %22 = icmp eq i32 %20, 0, !dbg !5219
  br i1 %22, label %24, label %23, !dbg !5217

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5221, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5193, metadata !762), !dbg !5196
  br label %24, !dbg !5223

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5224
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5225 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5270, metadata !762), !dbg !5271
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5272
  br i1 %2, label %6, label %3, !dbg !5274

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5275
  %5 = icmp eq i32 %4, 0, !dbg !5275
  br i1 %5, label %6, label %8, !dbg !5277

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5279
  br label %17, !dbg !5280

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5281, metadata !762) #10, !dbg !5286
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5288
  %10 = load i32, i32* %9, align 8, !dbg !5288, !tbaa !4655
  %11 = and i32 %10, 256, !dbg !5290
  %12 = icmp eq i32 %11, 0, !dbg !5290
  br i1 %12, label %15, label %13, !dbg !5291

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5292
  br label %15, !dbg !5292

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5293
  br label %17, !dbg !5294

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5295
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5296 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5342, metadata !762), !dbg !5348
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5343, metadata !762), !dbg !5349
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5344, metadata !762), !dbg !5350
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5351
  %5 = load i8*, i8** %4, align 8, !dbg !5351, !tbaa !4885
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5352
  %7 = load i8*, i8** %6, align 8, !dbg !5352, !tbaa !4884
  %8 = icmp eq i8* %5, %7, !dbg !5353
  br i1 %8, label %9, label %28, !dbg !5354

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5355
  %11 = load i8*, i8** %10, align 8, !dbg !5355, !tbaa !1249
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5357
  %13 = load i8*, i8** %12, align 8, !dbg !5357, !tbaa !5358
  %14 = icmp eq i8* %11, %13, !dbg !5359
  br i1 %14, label %15, label %28, !dbg !5360

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5361
  %17 = load i8*, i8** %16, align 8, !dbg !5361, !tbaa !5362
  %18 = icmp eq i8* %17, null, !dbg !5363
  br i1 %18, label %19, label %28, !dbg !5364

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5366
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5367
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5345, metadata !762), !dbg !5369
  %22 = icmp eq i64 %21, -1, !dbg !5370
  br i1 %22, label %30, label %23, !dbg !5372

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5373
  %25 = load i32, i32* %24, align 8, !dbg !5374, !tbaa !4655
  %26 = and i32 %25, -17, !dbg !5374
  store i32 %26, i32* %24, align 8, !dbg !5374, !tbaa !4655
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5375
  store i64 %21, i64* %27, align 8, !dbg !5376, !tbaa !5377
  br label %30, !dbg !5378

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5379
  br label %30, !dbg !5380

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5381
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
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !112, !119, !124, !132, !582, !139, !146, !588, !668, !227, !676, !693, !695, !697, !701, !703, !706, !708, !236, !711, !746, !748, !750}
!llvm.ident = !{!752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752, !752}
!llvm.module.flags = !{!753, !754, !755, !756}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 64, type: !96, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19)
!3 = !DIFile(filename: "src/id.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9, !12, !14, !17, !16}
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
!19 = !{!20, !27, !29, !33, !35, !0, !66, !69, !71, !73, !75, !87}
!20 = !DIGlobalVariableExpression(var: !21)
!21 = distinct !DIGlobalVariable(name: "ruid", scope: !2, file: !3, line: 54, type: !22, isLocal: true, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !23, line: 80, baseType: !24)
!23 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !25, line: 134, baseType: !26)
!25 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIGlobalVariableExpression(var: !28)
!28 = distinct !DIGlobalVariable(name: "euid", scope: !2, file: !3, line: 54, type: !22, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30)
!30 = distinct !DIGlobalVariable(name: "rgid", scope: !2, file: !3, line: 55, type: !31, isLocal: true, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !23, line: 65, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !25, line: 135, baseType: !26)
!33 = !DIGlobalVariableExpression(var: !34)
!34 = distinct !DIGlobalVariable(name: "egid", scope: !2, file: !3, line: 55, type: !31, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36)
!36 = distinct !DIGlobalVariable(name: "infomap", scope: !37, file: !38, line: 632, type: !63, isLocal: true, isDefinition: true)
!37 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !38, file: !38, line: 630, type: !39, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !41)
!38 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!39 = !DISubroutineType(types: !40)
!40 = !{null, !17}
!41 = !{!42, !43, !44, !51, !53, !54, !55, !58, !59, !61}
!42 = !DILocalVariable(name: "program", arg: 1, scope: !37, file: !38, line: 630, type: !17)
!43 = !DILocalVariable(name: "node", scope: !37, file: !38, line: 642, type: !17)
!44 = !DILocalVariable(name: "map_prog", scope: !37, file: !38, line: 643, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !37, file: !38, line: 632, size: 128, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !47, file: !38, line: 632, baseType: !17, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !47, file: !38, line: 632, baseType: !17, size: 64, offset: 64)
!51 = !DILocalVariable(name: "__s1_len", scope: !52, file: !38, line: 645, type: !9)
!52 = distinct !DILexicalBlock(scope: !37, file: !38, line: 645, column: 33)
!53 = !DILocalVariable(name: "__s2_len", scope: !52, file: !38, line: 645, type: !9)
!54 = !DILocalVariable(name: "lc_messages", scope: !37, file: !38, line: 655, type: !17)
!55 = !DILocalVariable(name: "__s1_len", scope: !56, file: !38, line: 656, type: !9)
!56 = distinct !DILexicalBlock(scope: !57, file: !38, line: 656, column: 22)
!57 = distinct !DILexicalBlock(scope: !37, file: !38, line: 656, column: 7)
!58 = !DILocalVariable(name: "__s2_len", scope: !56, file: !38, line: 656, type: !9)
!59 = !DILocalVariable(name: "__s2", scope: !60, file: !38, line: 656, type: !14)
!60 = distinct !DILexicalBlock(scope: !56, file: !38, line: 656, column: 22)
!61 = !DILocalVariable(name: "__result", scope: !60, file: !38, line: 656, type: !62)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 896, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 7)
!66 = !DIGlobalVariableExpression(var: !67)
!67 = distinct !DIGlobalVariable(name: "just_context", scope: !2, file: !3, line: 45, type: !68, isLocal: true, isDefinition: true)
!68 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "use_name", scope: !2, file: !3, line: 51, type: !68, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72)
!72 = distinct !DIGlobalVariable(name: "context", scope: !2, file: !3, line: 62, type: !6, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "ok", scope: !2, file: !3, line: 58, type: !68, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76)
!76 = distinct !DIGlobalVariable(name: "buf", scope: !77, file: !3, line: 340, type: !84, isLocal: true, isDefinition: true)
!77 = distinct !DISubprogram(name: "uidtostr_ptr", scope: !3, file: !3, line: 338, type: !78, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!78 = !DISubroutineType(types: !79)
!79 = !{!6, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!82 = !{!83}
!83 = !DILocalVariable(name: "uid", arg: 1, scope: !77, file: !3, line: 338, type: !80)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 21)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "buf", scope: !89, file: !3, line: 329, type: !84, isLocal: true, isDefinition: true)
!89 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !3, file: !3, line: 327, type: !90, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !94)
!90 = !DISubroutineType(types: !91)
!91 = !{!6, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!94 = !{!95}
!95 = !DILocalVariable(name: "gid", arg: 1, scope: !89, file: !3, line: 327, type: !92)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2560, elements: !106)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !99, line: 104, size: 256, elements: !100)
!99 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!100 = !{!101, !102, !103, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 106, baseType: !17, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !98, file: !99, line: 109, baseType: !62, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !98, file: !99, line: 110, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !98, file: !99, line: 111, baseType: !62, size: 32, offset: 192)
!106 = !{!107}
!107 = !DISubrange(count: 10)
!108 = !DIGlobalVariableExpression(var: !109)
!109 = distinct !DIGlobalVariable(name: "buf", scope: !110, file: !111, line: 97, type: !84, isLocal: true, isDefinition: true)
!110 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !111, file: !111, line: 95, type: !90, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !115)
!111 = !DIFile(filename: "src/group-list.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !114)
!113 = !{!8, !11, !16}
!114 = !{!108}
!115 = !{!116}
!116 = !DILocalVariable(name: "gid", arg: 1, scope: !110, file: !111, line: 95, type: !92)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "Version", scope: !119, file: !120, line: 2, type: !17, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !121)
!120 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!117}
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "file_name", scope: !124, file: !129, line: 36, type: !17, isLocal: true, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !126)
!125 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!122, !127}
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !124, file: !129, line: 46, type: !68, isLocal: true, isDefinition: true)
!129 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !DIGlobalVariableExpression(var: !131)
!131 = distinct !DIGlobalVariable(name: "exit_failure", scope: !132, file: !135, line: 24, type: !136, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !134)
!133 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !{!130}
!135 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "program_name", scope: !139, file: !143, line: 33, type: !17, isLocal: false, isDefinition: true)
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !141, globals: !142)
!140 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !{!8, !6}
!142 = !{!137}
!143 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !146, file: !188, line: 77, type: !221, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !183, globals: !185)
!147 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!149, !163, !168}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !150, line: 32, size: 32, elements: !151)
!150 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!152 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!153 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!154 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!155 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!156 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!157 = !DIEnumerator(name: "c_quoting_style", value: 5)
!158 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!159 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!160 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!161 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!162 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !150, line: 242, size: 32, elements: !164)
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
!183 = !{!62, !184, !9, !6}
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !{!144, !186, !191, !203, !205, !210, !217, !219}
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !146, file: !188, line: 93, type: !189, isLocal: false, isDefinition: true)
!188 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 320, elements: !106)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !146, file: !188, line: 1043, type: !193, isLocal: false, isDefinition: true)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !188, line: 57, size: 448, elements: !194)
!194 = !{!195, !196, !197, !201, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !193, file: !188, line: 60, baseType: !149, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !188, line: 63, baseType: !62, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !193, file: !188, line: 67, baseType: !198, size: 256, offset: 64)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 8)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !193, file: !188, line: 70, baseType: !17, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !193, file: !188, line: 73, baseType: !17, size: 64, offset: 384)
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !146, file: !188, line: 108, type: !193, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206)
!206 = distinct !DIGlobalVariable(name: "slot0", scope: !146, file: !188, line: 834, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 256)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "slotvec", scope: !146, file: !188, line: 837, type: !212, isLocal: true, isDefinition: true)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !188, line: 826, size: 128, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !213, file: !188, line: 828, baseType: !9, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !213, file: !188, line: 829, baseType: !6, size: 64, offset: 64)
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "nslots", scope: !146, file: !188, line: 835, type: !62, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220)
!220 = distinct !DIGlobalVariable(name: "slotvec0", scope: !146, file: !188, line: 836, type: !213, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 704, elements: !223)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!223 = !{!224}
!224 = !DISubrange(count: 11)
!225 = !DIGlobalVariableExpression(var: !226)
!226 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !227, file: !230, line: 26, type: !231, isLocal: false, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !229)
!228 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!229 = !{!225}
!230 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 47)
!234 = !DIGlobalVariableExpression(var: !235)
!235 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !236, file: !580, line: 120, type: !581, isLocal: true, isDefinition: true)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !577, globals: !579)
!237 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!238 = !{!239}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !240, line: 41, size: 32, elements: !241)
!240 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!242 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!243 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!244 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!245 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!246 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!247 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!248 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!249 = !DIEnumerator(name: "DAY_1", value: 131079)
!250 = !DIEnumerator(name: "DAY_2", value: 131080)
!251 = !DIEnumerator(name: "DAY_3", value: 131081)
!252 = !DIEnumerator(name: "DAY_4", value: 131082)
!253 = !DIEnumerator(name: "DAY_5", value: 131083)
!254 = !DIEnumerator(name: "DAY_6", value: 131084)
!255 = !DIEnumerator(name: "DAY_7", value: 131085)
!256 = !DIEnumerator(name: "ABMON_1", value: 131086)
!257 = !DIEnumerator(name: "ABMON_2", value: 131087)
!258 = !DIEnumerator(name: "ABMON_3", value: 131088)
!259 = !DIEnumerator(name: "ABMON_4", value: 131089)
!260 = !DIEnumerator(name: "ABMON_5", value: 131090)
!261 = !DIEnumerator(name: "ABMON_6", value: 131091)
!262 = !DIEnumerator(name: "ABMON_7", value: 131092)
!263 = !DIEnumerator(name: "ABMON_8", value: 131093)
!264 = !DIEnumerator(name: "ABMON_9", value: 131094)
!265 = !DIEnumerator(name: "ABMON_10", value: 131095)
!266 = !DIEnumerator(name: "ABMON_11", value: 131096)
!267 = !DIEnumerator(name: "ABMON_12", value: 131097)
!268 = !DIEnumerator(name: "MON_1", value: 131098)
!269 = !DIEnumerator(name: "MON_2", value: 131099)
!270 = !DIEnumerator(name: "MON_3", value: 131100)
!271 = !DIEnumerator(name: "MON_4", value: 131101)
!272 = !DIEnumerator(name: "MON_5", value: 131102)
!273 = !DIEnumerator(name: "MON_6", value: 131103)
!274 = !DIEnumerator(name: "MON_7", value: 131104)
!275 = !DIEnumerator(name: "MON_8", value: 131105)
!276 = !DIEnumerator(name: "MON_9", value: 131106)
!277 = !DIEnumerator(name: "MON_10", value: 131107)
!278 = !DIEnumerator(name: "MON_11", value: 131108)
!279 = !DIEnumerator(name: "MON_12", value: 131109)
!280 = !DIEnumerator(name: "AM_STR", value: 131110)
!281 = !DIEnumerator(name: "PM_STR", value: 131111)
!282 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!283 = !DIEnumerator(name: "D_FMT", value: 131113)
!284 = !DIEnumerator(name: "T_FMT", value: 131114)
!285 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!286 = !DIEnumerator(name: "ERA", value: 131116)
!287 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!288 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!289 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!290 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!291 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!292 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!293 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!294 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!295 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!296 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!297 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!298 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!299 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!300 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!301 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!302 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!303 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!304 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!305 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!306 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!307 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!308 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!309 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!310 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!311 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!312 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!313 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!314 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!315 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!316 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!317 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!318 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!319 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!320 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!321 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!322 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!323 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!324 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!325 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!326 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!327 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!328 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!329 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!330 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!331 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!332 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!333 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!334 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!335 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!336 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!337 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!338 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!339 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!340 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!341 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!342 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!343 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!344 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!345 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!346 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!347 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!348 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!349 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!350 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!351 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!352 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!353 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!354 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!355 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!356 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!357 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!358 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!359 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!360 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!361 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!362 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!363 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!364 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!365 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!366 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!367 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!368 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!369 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!370 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!371 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!372 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!373 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!374 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!375 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!377 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!378 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!379 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!380 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!381 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!382 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!383 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!384 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!385 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!386 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!387 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!388 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!389 = !DIEnumerator(name: "CODESET", value: 14)
!390 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!392 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!393 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!441 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!445 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!446 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!461 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!462 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!463 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!464 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!465 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!466 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!467 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!468 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!469 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!470 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!471 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!472 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!473 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!474 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!475 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!476 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!477 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!478 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!479 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!480 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!481 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!482 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!483 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!500 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!501 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!504 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!505 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!506 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!507 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!508 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!509 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!510 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!511 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!512 = !DIEnumerator(name: "THOUSEP", value: 65537)
!513 = !DIEnumerator(name: "__GROUPING", value: 65538)
!514 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!515 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!516 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!517 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!518 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!519 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!520 = !DIEnumerator(name: "__YESSTR", value: 327682)
!521 = !DIEnumerator(name: "__NOSTR", value: 327683)
!522 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!523 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!524 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!525 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!526 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!527 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!528 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!529 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!530 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!531 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!532 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!533 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!534 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!535 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!536 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!539 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!540 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!541 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!542 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!544 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!545 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!546 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!547 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!548 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!549 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!550 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!551 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!552 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!553 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!554 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!555 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!556 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!557 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!558 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!575 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!576 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!577 = !{!8, !6, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!579 = !{!234}
!580 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !584)
!583 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !586, line: 136, baseType: !587)
!586 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !25, line: 62, baseType: !11)
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !590, retainedTypes: !599, globals: !600)
!589 = !DIFile(filename: "./lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = !{!591}
!591 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !592, line: 26, size: 32, elements: !593)
!592 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!593 = !{!594, !595, !596, !597, !598}
!594 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!595 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!596 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!597 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!598 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!599 = !{!8, !22, !31}
!600 = !{!601, !664, !666}
!601 = !DIGlobalVariableExpression(var: !602)
!602 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !603, file: !604, line: 106, type: !17, isLocal: true, isDefinition: true)
!603 = distinct !DISubprogram(name: "parse_with_separator", scope: !604, file: !604, line: 102, type: !605, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !610)
!604 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !DISubroutineType(types: !606)
!606 = !{!17, !17, !17, !607, !608, !609, !609}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !630, !639, !640, !641, !642, !643, !644, !647, !652, !655, !659}
!611 = !DILocalVariable(name: "spec", arg: 1, scope: !603, file: !604, line: 102, type: !17)
!612 = !DILocalVariable(name: "separator", arg: 2, scope: !603, file: !604, line: 102, type: !17)
!613 = !DILocalVariable(name: "uid", arg: 3, scope: !603, file: !604, line: 103, type: !607)
!614 = !DILocalVariable(name: "gid", arg: 4, scope: !603, file: !604, line: 103, type: !608)
!615 = !DILocalVariable(name: "username", arg: 5, scope: !603, file: !604, line: 104, type: !609)
!616 = !DILocalVariable(name: "groupname", arg: 6, scope: !603, file: !604, line: 104, type: !609)
!617 = !DILocalVariable(name: "error_msg", scope: !603, file: !604, line: 110, type: !17)
!618 = !DILocalVariable(name: "pwd", scope: !603, file: !604, line: 111, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !621, line: 49, size: 384, elements: !622)
!621 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = !{!623, !624, !625, !626, !627, !628, !629}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !620, file: !621, line: 51, baseType: !6, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !620, file: !621, line: 52, baseType: !6, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !620, file: !621, line: 53, baseType: !24, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !620, file: !621, line: 54, baseType: !32, size: 32, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !620, file: !621, line: 55, baseType: !6, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !620, file: !621, line: 56, baseType: !6, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !620, file: !621, line: 57, baseType: !6, size: 64, offset: 320)
!630 = !DILocalVariable(name: "grp", scope: !603, file: !604, line: 112, type: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !633, line: 42, size: 256, elements: !634)
!633 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!634 = !{!635, !636, !637, !638}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !632, file: !633, line: 44, baseType: !6, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !632, file: !633, line: 45, baseType: !6, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !632, file: !633, line: 46, baseType: !32, size: 32, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !632, file: !633, line: 47, baseType: !609, size: 64, offset: 192)
!639 = !DILocalVariable(name: "u", scope: !603, file: !604, line: 113, type: !6)
!640 = !DILocalVariable(name: "g", scope: !603, file: !604, line: 114, type: !17)
!641 = !DILocalVariable(name: "gname", scope: !603, file: !604, line: 115, type: !6)
!642 = !DILocalVariable(name: "unum", scope: !603, file: !604, line: 116, type: !22)
!643 = !DILocalVariable(name: "gnum", scope: !603, file: !604, line: 117, type: !31)
!644 = !DILocalVariable(name: "ulen", scope: !645, file: !604, line: 137, type: !9)
!645 = distinct !DILexicalBlock(scope: !646, file: !604, line: 136, column: 5)
!646 = distinct !DILexicalBlock(scope: !603, file: !604, line: 130, column: 7)
!647 = !DILocalVariable(name: "use_login_group", scope: !648, file: !604, line: 164, type: !68)
!648 = distinct !DILexicalBlock(scope: !649, file: !604, line: 163, column: 9)
!649 = distinct !DILexicalBlock(scope: !650, file: !604, line: 162, column: 11)
!650 = distinct !DILexicalBlock(scope: !651, file: !604, line: 159, column: 5)
!651 = distinct !DILexicalBlock(scope: !603, file: !604, line: 158, column: 7)
!652 = !DILocalVariable(name: "tmp", scope: !653, file: !604, line: 173, type: !11)
!653 = distinct !DILexicalBlock(scope: !654, file: !604, line: 172, column: 13)
!654 = distinct !DILexicalBlock(scope: !648, file: !604, line: 165, column: 15)
!655 = !DILocalVariable(name: "buf", scope: !656, file: !604, line: 188, type: !84)
!656 = distinct !DILexicalBlock(scope: !657, file: !604, line: 185, column: 13)
!657 = distinct !DILexicalBlock(scope: !658, file: !604, line: 184, column: 15)
!658 = distinct !DILexicalBlock(scope: !649, file: !604, line: 182, column: 9)
!659 = !DILocalVariable(name: "tmp", scope: !660, file: !604, line: 205, type: !11)
!660 = distinct !DILexicalBlock(scope: !661, file: !604, line: 204, column: 9)
!661 = distinct !DILexicalBlock(scope: !662, file: !604, line: 203, column: 11)
!662 = distinct !DILexicalBlock(scope: !663, file: !604, line: 199, column: 5)
!663 = distinct !DILexicalBlock(scope: !603, file: !604, line: 198, column: 7)
!664 = !DIGlobalVariableExpression(var: !665)
!665 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !603, file: !604, line: 107, type: !17, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667)
!667 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !603, file: !604, line: 108, type: !17, isLocal: true, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !670, retainedTypes: !675)
!669 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = !{!671}
!671 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !672, line: 41, size: 32, elements: !673)
!672 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = !{!674}
!674 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!675 = !{!8}
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !678, retainedTypes: !692)
!677 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = !{!679}
!679 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !681, file: !680, line: 192, size: 32, elements: !690)
!680 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!681 = distinct !DISubprogram(name: "x2nrealloc", scope: !680, file: !680, line: 180, type: !682, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !685)
!682 = !DISubroutineType(types: !683)
!683 = !{!8, !8, !684, !9}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!685 = !{!686, !687, !688, !689}
!686 = !DILocalVariable(name: "p", arg: 1, scope: !681, file: !680, line: 180, type: !8)
!687 = !DILocalVariable(name: "pn", arg: 2, scope: !681, file: !680, line: 180, type: !684)
!688 = !DILocalVariable(name: "s", arg: 3, scope: !681, file: !680, line: 180, type: !9)
!689 = !DILocalVariable(name: "n", scope: !681, file: !680, line: 182, type: !9)
!690 = !{!691}
!691 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!692 = !{!9, !6, !8}
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!694 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!696 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !699, retainedTypes: !700)
!698 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = !{!591, !168}
!700 = !{!62, !184, !6}
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !675)
!702 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !705)
!704 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!705 = !{!9}
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !707, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!707 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !709, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !710)
!709 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!710 = !{!9, !12, !14, !17}
!711 = distinct !DICompileUnit(language: DW_LANG_C99, file: !712, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !713, retainedTypes: !745)
!712 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!713 = !{!714}
!714 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !716, file: !715, line: 83, size: 32, elements: !743)
!715 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!716 = distinct !DISubprogram(name: "mgetgroups", scope: !715, file: !715, line: 66, type: !717, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !711, variables: !720)
!717 = !DISubroutineType(types: !718)
!718 = !{!62, !17, !31, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !731, !732, !735, !738, !741, !742}
!721 = !DILocalVariable(name: "username", arg: 1, scope: !716, file: !715, line: 66, type: !17)
!722 = !DILocalVariable(name: "gid", arg: 2, scope: !716, file: !715, line: 66, type: !31)
!723 = !DILocalVariable(name: "groups", arg: 3, scope: !716, file: !715, line: 66, type: !719)
!724 = !DILocalVariable(name: "max_n_groups", scope: !716, file: !715, line: 68, type: !62)
!725 = !DILocalVariable(name: "ng", scope: !716, file: !715, line: 69, type: !62)
!726 = !DILocalVariable(name: "g", scope: !716, file: !715, line: 70, type: !608)
!727 = !DILocalVariable(name: "h", scope: !728, file: !715, line: 92, type: !608)
!728 = distinct !DILexicalBlock(scope: !729, file: !715, line: 91, column: 9)
!729 = distinct !DILexicalBlock(scope: !730, file: !715, line: 82, column: 5)
!730 = distinct !DILexicalBlock(scope: !716, file: !715, line: 81, column: 7)
!731 = !DILocalVariable(name: "last_n_groups", scope: !728, file: !715, line: 93, type: !62)
!732 = !DILocalVariable(name: "saved_errno", scope: !733, file: !715, line: 105, type: !62)
!733 = distinct !DILexicalBlock(scope: !734, file: !715, line: 104, column: 13)
!734 = distinct !DILexicalBlock(scope: !728, file: !715, line: 103, column: 15)
!735 = !DILocalVariable(name: "saved_errno", scope: !736, file: !715, line: 156, type: !62)
!736 = distinct !DILexicalBlock(scope: !737, file: !715, line: 154, column: 5)
!737 = distinct !DILexicalBlock(scope: !716, file: !715, line: 153, column: 7)
!738 = !DILocalVariable(name: "first", scope: !739, file: !715, line: 187, type: !31)
!739 = distinct !DILexicalBlock(scope: !740, file: !715, line: 186, column: 5)
!740 = distinct !DILexicalBlock(scope: !716, file: !715, line: 185, column: 7)
!741 = !DILocalVariable(name: "next", scope: !739, file: !715, line: 188, type: !608)
!742 = !DILocalVariable(name: "groups_end", scope: !739, file: !715, line: 189, type: !608)
!743 = !{!744}
!744 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!745 = !{!8, !31, !9}
!746 = distinct !DICompileUnit(language: DW_LANG_C99, file: !747, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!747 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!748 = distinct !DICompileUnit(language: DW_LANG_C99, file: !749, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !675)
!749 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!750 = distinct !DICompileUnit(language: DW_LANG_C99, file: !751, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !675)
!751 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!752 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!753 = !{i32 2, !"Dwarf Version", i32 4}
!754 = !{i32 2, !"Debug Info Version", i32 3}
!755 = !{i32 1, !"PIC Level", i32 2}
!756 = !{i32 1, !"PIE Level", i32 2}
!757 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 79, type: !758, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !62}
!760 = !{!761}
!761 = !DILocalVariable(name: "status", arg: 1, scope: !757, file: !3, line: 79, type: !62)
!762 = !DIExpression()
!763 = !DILocation(line: 79, column: 12, scope: !757)
!764 = !DILocation(line: 81, column: 14, scope: !765)
!765 = distinct !DILexicalBlock(scope: !757, file: !3, line: 81, column: 7)
!766 = !DILocation(line: 81, column: 7, scope: !757)
!767 = !DILocation(line: 82, column: 5, scope: !768)
!768 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 1)
!769 = distinct !DILexicalBlock(scope: !765, file: !3, line: 82, column: 5)
!770 = !{!771, !771, i64 0}
!771 = !{!"any pointer", !772, i64 0}
!772 = !{!"omnipotent char", !773, i64 0}
!773 = !{!"Simple C/C++ TBAA"}
!774 = !DILocation(line: 82, column: 5, scope: !775)
!775 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 3)
!776 = !DILocation(line: 82, column: 5, scope: !777)
!777 = !DILexicalBlockFile(scope: !769, file: !3, discriminator: 2)
!778 = !DILocation(line: 85, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !765, file: !3, line: 84, column: 5)
!780 = !DILocation(line: 85, column: 7, scope: !781)
!781 = !DILexicalBlockFile(scope: !779, file: !3, discriminator: 1)
!782 = !DILocation(line: 86, column: 7, scope: !779)
!783 = !DILocation(line: 86, column: 7, scope: !781)
!784 = !DILocation(line: 91, column: 7, scope: !779)
!785 = !DILocation(line: 91, column: 7, scope: !781)
!786 = !DILocation(line: 102, column: 7, scope: !779)
!787 = !DILocation(line: 102, column: 7, scope: !781)
!788 = !DILocation(line: 103, column: 7, scope: !779)
!789 = !DILocation(line: 103, column: 7, scope: !781)
!790 = !DILocation(line: 104, column: 7, scope: !779)
!791 = !DILocation(line: 104, column: 7, scope: !781)
!792 = !DILocation(line: 642, column: 15, scope: !37, inlinedAt: !793)
!793 = distinct !DILocation(line: 108, column: 7, scope: !779)
!794 = !DILocation(line: 651, column: 3, scope: !37, inlinedAt: !793)
!795 = !DILocation(line: 651, column: 3, scope: !796, inlinedAt: !793)
!796 = !DILexicalBlockFile(scope: !37, file: !38, discriminator: 1)
!797 = !DILocation(line: 655, column: 29, scope: !37, inlinedAt: !793)
!798 = !DILocation(line: 655, column: 15, scope: !37, inlinedAt: !793)
!799 = !DILocation(line: 656, column: 7, scope: !57, inlinedAt: !793)
!800 = !DILocation(line: 656, column: 19, scope: !57, inlinedAt: !793)
!801 = !DILocation(line: 656, column: 22, scope: !802, inlinedAt: !793)
!802 = !DILexicalBlockFile(scope: !57, file: !38, discriminator: 16)
!803 = !DILocation(line: 656, column: 7, scope: !804, inlinedAt: !793)
!804 = !DILexicalBlockFile(scope: !37, file: !38, discriminator: 16)
!805 = !DILocation(line: 662, column: 7, scope: !806, inlinedAt: !793)
!806 = distinct !DILexicalBlock(scope: !57, file: !38, line: 657, column: 5)
!807 = !DILocation(line: 662, column: 7, scope: !808, inlinedAt: !793)
!808 = !DILexicalBlockFile(scope: !806, file: !38, discriminator: 1)
!809 = !DILocation(line: 664, column: 5, scope: !806, inlinedAt: !793)
!810 = !DILocation(line: 665, column: 3, scope: !37, inlinedAt: !793)
!811 = !DILocation(line: 665, column: 3, scope: !796, inlinedAt: !793)
!812 = !DILocation(line: 667, column: 3, scope: !37, inlinedAt: !793)
!813 = !DILocation(line: 667, column: 3, scope: !796, inlinedAt: !793)
!814 = !DILocation(line: 110, column: 3, scope: !757)
!815 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 114, type: !816, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{!62, !62, !609}
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !845, !846, !848}
!819 = !DILocalVariable(name: "argc", arg: 1, scope: !815, file: !3, line: 114, type: !62)
!820 = !DILocalVariable(name: "argv", arg: 2, scope: !815, file: !3, line: 114, type: !609)
!821 = !DILocalVariable(name: "optc", scope: !815, file: !3, line: 116, type: !62)
!822 = !DILocalVariable(name: "selinux_enabled", scope: !815, file: !3, line: 117, type: !62)
!823 = !DILocalVariable(name: "smack_enabled", scope: !815, file: !3, line: 118, type: !68)
!824 = !DILocalVariable(name: "opt_zero", scope: !815, file: !3, line: 119, type: !68)
!825 = !DILocalVariable(name: "pw_name", scope: !815, file: !3, line: 120, type: !6)
!826 = !DILocalVariable(name: "just_group_list", scope: !815, file: !3, line: 123, type: !68)
!827 = !DILocalVariable(name: "just_group", scope: !815, file: !3, line: 125, type: !68)
!828 = !DILocalVariable(name: "use_real", scope: !815, file: !3, line: 127, type: !68)
!829 = !DILocalVariable(name: "just_user", scope: !815, file: !3, line: 129, type: !68)
!830 = !DILocalVariable(name: "n_ids", scope: !815, file: !3, line: 187, type: !9)
!831 = !DILocalVariable(name: "default_format", scope: !815, file: !3, line: 201, type: !68)
!832 = !DILocalVariable(name: "pwd", scope: !833, file: !3, line: 233, type: !835)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 232, column: 5)
!834 = distinct !DILexicalBlock(scope: !815, file: !3, line: 231, column: 7)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !621, line: 49, size: 384, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843, !844}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !836, file: !621, line: 51, baseType: !6, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !836, file: !621, line: 52, baseType: !6, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !836, file: !621, line: 53, baseType: !24, size: 32, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !836, file: !621, line: 54, baseType: !32, size: 32, offset: 160)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !836, file: !621, line: 55, baseType: !6, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !836, file: !621, line: 56, baseType: !6, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !836, file: !621, line: 57, baseType: !6, size: 64, offset: 320)
!845 = !DILocalVariable(name: "spec", scope: !833, file: !3, line: 234, type: !17)
!846 = !DILocalVariable(name: "NO_UID", scope: !847, file: !3, line: 259, type: !22)
!847 = distinct !DILexicalBlock(scope: !834, file: !3, line: 255, column: 5)
!848 = !DILocalVariable(name: "NO_GID", scope: !847, file: !3, line: 260, type: !31)
!849 = !DILocation(line: 114, column: 11, scope: !815)
!850 = !DILocation(line: 114, column: 24, scope: !815)
!851 = !DILocation(line: 117, column: 7, scope: !815)
!852 = !DILocation(line: 118, column: 8, scope: !815)
!853 = !DILocation(line: 119, column: 8, scope: !815)
!854 = !DILocation(line: 120, column: 9, scope: !815)
!855 = !DILocation(line: 123, column: 8, scope: !815)
!856 = !DILocation(line: 125, column: 8, scope: !815)
!857 = !DILocation(line: 127, column: 8, scope: !815)
!858 = !DILocation(line: 129, column: 8, scope: !815)
!859 = !DILocation(line: 132, column: 21, scope: !815)
!860 = !DILocation(line: 132, column: 3, scope: !815)
!861 = !DILocation(line: 133, column: 3, scope: !815)
!862 = !DILocation(line: 134, column: 3, scope: !815)
!863 = !DILocation(line: 135, column: 3, scope: !815)
!864 = !DILocation(line: 137, column: 3, scope: !815)
!865 = !DILocation(line: 139, column: 3, scope: !815)
!866 = !DILocation(line: 139, column: 18, scope: !867)
!867 = !DILexicalBlockFile(scope: !815, file: !3, discriminator: 1)
!868 = !DILocation(line: 116, column: 7, scope: !815)
!869 = !DILocation(line: 139, column: 3, scope: !867)
!870 = !DILocation(line: 156, column: 13, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 155, column: 15)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 142, column: 9)
!873 = distinct !DILexicalBlock(scope: !815, file: !3, line: 140, column: 5)
!874 = !DILocation(line: 156, column: 13, scope: !875)
!875 = !DILexicalBlockFile(scope: !871, file: !3, discriminator: 1)
!876 = !DILocation(line: 167, column: 11, scope: !872)
!877 = distinct !{!877, !865, !878}
!878 = !DILocation(line: 185, column: 5, scope: !815)
!879 = !DILocation(line: 180, column: 9, scope: !872)
!880 = !DILocation(line: 181, column: 9, scope: !872)
!881 = !DILocation(line: 181, column: 9, scope: !882)
!882 = !DILexicalBlockFile(scope: !872, file: !3, discriminator: 1)
!883 = !DILocation(line: 183, column: 11, scope: !872)
!884 = !DILocation(line: 187, column: 25, scope: !815)
!885 = !{!886, !886, i64 0}
!886 = !{!"int", !772, i64 0}
!887 = !DILocation(line: 187, column: 23, scope: !815)
!888 = !DILocation(line: 188, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !815, file: !3, line: 188, column: 7)
!890 = !DILocation(line: 188, column: 7, scope: !815)
!891 = !DILocation(line: 190, column: 20, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !3, line: 189, column: 5)
!893 = !DILocation(line: 190, column: 55, scope: !892)
!894 = !DILocation(line: 190, column: 62, scope: !892)
!895 = !DILocation(line: 190, column: 50, scope: !892)
!896 = !DILocation(line: 190, column: 43, scope: !897)
!897 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 1)
!898 = !DILocation(line: 190, column: 7, scope: !899)
!899 = !DILexicalBlockFile(scope: !892, file: !3, discriminator: 2)
!900 = !DILocation(line: 191, column: 7, scope: !892)
!901 = !DILocation(line: 198, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !815, file: !3, line: 198, column: 7)
!903 = !DILocation(line: 198, column: 19, scope: !902)
!904 = !DILocation(line: 198, column: 17, scope: !902)
!905 = !DILocation(line: 198, column: 32, scope: !902)
!906 = !DILocation(line: 198, column: 30, scope: !902)
!907 = !DILocation(line: 198, column: 63, scope: !902)
!908 = !DILocation(line: 198, column: 7, scope: !815)
!909 = !DILocation(line: 199, column: 5, scope: !902)
!910 = !DILocation(line: 199, column: 5, scope: !911)
!911 = !DILexicalBlockFile(scope: !902, file: !3, discriminator: 1)
!912 = !DILocation(line: 202, column: 28, scope: !815)
!913 = !DILocation(line: 204, column: 28, scope: !815)
!914 = !DILocation(line: 206, column: 22, scope: !915)
!915 = distinct !DILexicalBlock(scope: !815, file: !3, line: 206, column: 7)
!916 = !DILocation(line: 206, column: 26, scope: !917)
!917 = !DILexicalBlockFile(scope: !915, file: !3, discriminator: 1)
!918 = !DILocation(line: 206, column: 35, scope: !917)
!919 = !DILocation(line: 206, column: 7, scope: !920)
!920 = !DILexicalBlockFile(scope: !815, file: !3, discriminator: 2)
!921 = !DILocation(line: 207, column: 5, scope: !915)
!922 = !DILocation(line: 207, column: 5, scope: !917)
!923 = !DILocation(line: 210, column: 25, scope: !924)
!924 = !DILexicalBlockFile(scope: !925, file: !3, discriminator: 1)
!925 = distinct !DILexicalBlock(scope: !815, file: !3, line: 210, column: 7)
!926 = !DILocation(line: 210, column: 22, scope: !925)
!927 = !DILocation(line: 211, column: 5, scope: !925)
!928 = !DILocation(line: 211, column: 5, scope: !924)
!929 = !DILocation(line: 231, column: 13, scope: !834)
!930 = !DILocation(line: 231, column: 7, scope: !815)
!931 = !DILocation(line: 233, column: 22, scope: !833)
!932 = !DILocation(line: 234, column: 26, scope: !833)
!933 = !DILocation(line: 234, column: 19, scope: !833)
!934 = !DILocation(line: 238, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !833, file: !3, line: 238, column: 11)
!936 = !{!772, !772, i64 0}
!937 = !DILocation(line: 238, column: 11, scope: !833)
!938 = !DILocation(line: 240, column: 15, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 240, column: 15)
!940 = distinct !DILexicalBlock(scope: !935, file: !3, line: 239, column: 9)
!941 = !DILocation(line: 240, column: 63, scope: !939)
!942 = !DILocation(line: 240, column: 15, scope: !940)
!943 = !DILocation(line: 245, column: 31, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !3, line: 241, column: 13)
!945 = !DILocation(line: 245, column: 21, scope: !944)
!946 = !DILocation(line: 248, column: 15, scope: !947)
!947 = distinct !DILexicalBlock(scope: !833, file: !3, line: 248, column: 11)
!948 = !DILocation(line: 248, column: 11, scope: !833)
!949 = !DILocation(line: 249, column: 9, scope: !947)
!950 = !DILocation(line: 249, column: 9, scope: !951)
!951 = !DILexicalBlockFile(scope: !947, file: !3, discriminator: 1)
!952 = !DILocation(line: 249, column: 9, scope: !953)
!953 = !DILexicalBlockFile(scope: !947, file: !3, discriminator: 2)
!954 = !DILocation(line: 259, column: 13, scope: !847)
!955 = !DILocation(line: 260, column: 13, scope: !847)
!956 = !DILocation(line: 262, column: 11, scope: !847)
!957 = !DILocation(line: 262, column: 24, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !3, discriminator: 1)
!959 = distinct !DILexicalBlock(scope: !847, file: !3, line: 262, column: 11)
!960 = !DILocation(line: 262, column: 11, scope: !958)
!961 = !DILocation(line: 263, column: 25, scope: !959)
!962 = !DILocation(line: 265, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !3, line: 264, column: 9)
!964 = !DILocation(line: 265, column: 17, scope: !963)
!965 = !DILocation(line: 266, column: 18, scope: !963)
!966 = !DILocation(line: 266, column: 16, scope: !963)
!967 = !DILocation(line: 267, column: 20, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !3, line: 267, column: 15)
!969 = !DILocation(line: 267, column: 30, scope: !968)
!970 = !DILocation(line: 267, column: 33, scope: !971)
!971 = !DILexicalBlockFile(scope: !968, file: !3, discriminator: 1)
!972 = !DILocation(line: 267, column: 15, scope: !973)
!973 = !DILexicalBlockFile(scope: !963, file: !3, discriminator: 1)
!974 = !DILocation(line: 268, column: 13, scope: !971)
!975 = !DILocation(line: 268, column: 13, scope: !976)
!976 = !DILexicalBlockFile(scope: !968, file: !3, discriminator: 2)
!977 = !DILocation(line: 268, column: 13, scope: !968)
!978 = !DILocation(line: 271, column: 11, scope: !847)
!979 = !DILocation(line: 271, column: 23, scope: !980)
!980 = !DILexicalBlockFile(scope: !981, file: !3, discriminator: 1)
!981 = distinct !DILexicalBlock(scope: !847, file: !3, line: 271, column: 11)
!982 = !DILocation(line: 271, column: 11, scope: !980)
!983 = !DILocation(line: 272, column: 25, scope: !981)
!984 = !DILocation(line: 282, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 281, column: 9)
!986 = distinct !DILexicalBlock(scope: !847, file: !3, line: 280, column: 11)
!987 = !DILocation(line: 274, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !3, line: 273, column: 9)
!989 = !DILocation(line: 274, column: 17, scope: !988)
!990 = !DILocation(line: 275, column: 18, scope: !988)
!991 = !DILocation(line: 275, column: 16, scope: !988)
!992 = !DILocation(line: 276, column: 20, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !3, line: 276, column: 15)
!994 = !DILocation(line: 276, column: 30, scope: !993)
!995 = !DILocation(line: 276, column: 33, scope: !996)
!996 = !DILexicalBlockFile(scope: !993, file: !3, discriminator: 1)
!997 = !DILocation(line: 276, column: 15, scope: !998)
!998 = !DILexicalBlockFile(scope: !988, file: !3, discriminator: 1)
!999 = !DILocation(line: 277, column: 13, scope: !996)
!1000 = !DILocation(line: 277, column: 13, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !993, file: !3, discriminator: 2)
!1002 = !DILocation(line: 277, column: 13, scope: !993)
!1003 = !DILocation(line: 280, column: 22, scope: !986)
!1004 = !DILocation(line: 282, column: 17, scope: !985)
!1005 = !DILocation(line: 283, column: 18, scope: !985)
!1006 = !DILocation(line: 283, column: 16, scope: !985)
!1007 = !DILocation(line: 284, column: 20, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !985, file: !3, line: 284, column: 15)
!1009 = !DILocation(line: 284, column: 30, scope: !1008)
!1010 = !DILocation(line: 284, column: 33, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1008, file: !3, discriminator: 1)
!1012 = !DILocation(line: 284, column: 15, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !985, file: !3, discriminator: 1)
!1014 = !DILocation(line: 285, column: 13, scope: !1011)
!1015 = !DILocation(line: 285, column: 13, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1008, file: !3, discriminator: 2)
!1017 = !DILocation(line: 285, column: 13, scope: !1008)
!1018 = !DILocation(line: 287, column: 17, scope: !985)
!1019 = !DILocation(line: 288, column: 18, scope: !985)
!1020 = !DILocation(line: 288, column: 16, scope: !985)
!1021 = !DILocation(line: 289, column: 20, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !985, file: !3, line: 289, column: 15)
!1023 = !DILocation(line: 289, column: 30, scope: !1022)
!1024 = !DILocation(line: 289, column: 33, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1022, file: !3, discriminator: 1)
!1026 = !DILocation(line: 289, column: 15, scope: !1013)
!1027 = !DILocation(line: 290, column: 13, scope: !1025)
!1028 = !DILocation(line: 290, column: 13, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1022, file: !3, discriminator: 2)
!1030 = !DILocation(line: 290, column: 13, scope: !1022)
!1031 = !DILocation(line: 250, column: 31, scope: !833)
!1032 = !{!1033, !771, i64 0}
!1033 = !{!"passwd", !771, i64 0, !771, i64 8, !886, i64 16, !886, i64 20, !771, i64 24, !771, i64 32, !771, i64 40}
!1034 = !DILocation(line: 250, column: 17, scope: !833)
!1035 = !DILocation(line: 251, column: 26, scope: !833)
!1036 = !{!1033, !886, i64 16}
!1037 = !DILocation(line: 251, column: 19, scope: !833)
!1038 = !DILocation(line: 251, column: 12, scope: !833)
!1039 = !DILocation(line: 252, column: 26, scope: !833)
!1040 = !{!1033, !886, i64 20}
!1041 = !DILocation(line: 252, column: 19, scope: !833)
!1042 = !DILocation(line: 252, column: 12, scope: !833)
!1043 = !DILocation(line: 294, column: 7, scope: !815)
!1044 = !DILocation(line: 296, column: 19, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 295, column: 5)
!1046 = distinct !DILexicalBlock(scope: !815, file: !3, line: 294, column: 7)
!1047 = !DILocalVariable(name: "uid", arg: 1, scope: !1048, file: !3, line: 348, type: !22)
!1048 = distinct !DISubprogram(name: "print_user", scope: !3, file: !3, line: 348, type: !1049, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !22}
!1051 = !{!1047, !1052, !1053}
!1052 = !DILocalVariable(name: "pwd", scope: !1048, file: !3, line: 350, type: !835)
!1053 = !DILocalVariable(name: "s", scope: !1048, file: !3, line: 363, type: !6)
!1054 = !DILocation(line: 348, column: 19, scope: !1048, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 296, column: 7, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1045, file: !3, discriminator: 3)
!1057 = !DILocation(line: 350, column: 18, scope: !1048, inlinedAt: !1055)
!1058 = !DILocation(line: 352, column: 7, scope: !1048, inlinedAt: !1055)
!1059 = !DILocation(line: 341, column: 21, scope: !77, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 363, column: 34, scope: !1061, inlinedAt: !1055)
!1061 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 2)
!1062 = !DILocation(line: 354, column: 13, scope: !1063, inlinedAt: !1055)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 353, column: 5)
!1064 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 352, column: 7)
!1065 = !DILocation(line: 355, column: 15, scope: !1066, inlinedAt: !1055)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 355, column: 11)
!1067 = !DILocation(line: 355, column: 11, scope: !1063, inlinedAt: !1055)
!1068 = !DILocation(line: 357, column: 24, scope: !1069, inlinedAt: !1055)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 356, column: 9)
!1070 = !DILocation(line: 341, column: 21, scope: !77, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 358, column: 18, scope: !1069, inlinedAt: !1055)
!1072 = !DILocation(line: 341, column: 10, scope: !77, inlinedAt: !1071)
!1073 = !DILocation(line: 357, column: 11, scope: !1074, inlinedAt: !1055)
!1074 = !DILexicalBlockFile(scope: !1069, file: !3, discriminator: 1)
!1075 = !DILocation(line: 360, column: 9, scope: !1069, inlinedAt: !1055)
!1076 = !DILocation(line: 363, column: 24, scope: !1077, inlinedAt: !1055)
!1077 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 1)
!1078 = !DILocation(line: 363, column: 13, scope: !1077, inlinedAt: !1055)
!1079 = !DILocation(line: 341, column: 10, scope: !77, inlinedAt: !1060)
!1080 = !DILocation(line: 363, column: 13, scope: !1061, inlinedAt: !1055)
!1081 = !DILocation(line: 363, column: 13, scope: !1082, inlinedAt: !1055)
!1082 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 3)
!1083 = !DILocation(line: 363, column: 9, scope: !1048, inlinedAt: !1055)
!1084 = !DILocation(line: 364, column: 3, scope: !1048, inlinedAt: !1055)
!1085 = !DILocation(line: 297, column: 5, scope: !1045)
!1086 = !DILocation(line: 305, column: 45, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 305, column: 11)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 304, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 303, column: 12)
!1090 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 298, column: 12)
!1091 = !DILocation(line: 298, column: 12, scope: !1046)
!1092 = !DILocation(line: 300, column: 25, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 300, column: 11)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 299, column: 5)
!1095 = !DILocation(line: 300, column: 12, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1093, file: !3, discriminator: 3)
!1097 = !DILocation(line: 300, column: 11, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1094, file: !3, discriminator: 3)
!1099 = !DILocation(line: 301, column: 9, scope: !1093)
!1100 = !DILocation(line: 303, column: 12, scope: !1090)
!1101 = !DILocation(line: 305, column: 39, scope: !1087)
!1102 = !DILocation(line: 305, column: 51, scope: !1087)
!1103 = !DILocation(line: 306, column: 30, scope: !1087)
!1104 = !DILocation(line: 305, column: 12, scope: !1087)
!1105 = !DILocation(line: 305, column: 11, scope: !1088)
!1106 = !DILocation(line: 307, column: 9, scope: !1087)
!1107 = !DILocalVariable(name: "username", arg: 1, scope: !1108, file: !3, line: 370, type: !17)
!1108 = distinct !DISubprogram(name: "print_full_info", scope: !3, file: !3, line: 370, type: !39, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1109)
!1109 = !{!1107, !1110, !1111, !1119, !1121, !1122, !1123}
!1110 = !DILocalVariable(name: "pwd", scope: !1108, file: !3, line: 372, type: !835)
!1111 = !DILocalVariable(name: "grp", scope: !1108, file: !3, line: 373, type: !1112)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !633, line: 42, size: 256, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1113, file: !633, line: 44, baseType: !6, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1113, file: !633, line: 45, baseType: !6, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1113, file: !633, line: 46, baseType: !32, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1113, file: !633, line: 47, baseType: !609, size: 64, offset: 192)
!1119 = !DILocalVariable(name: "groups", scope: !1120, file: !3, line: 402, type: !608)
!1120 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 401, column: 3)
!1121 = !DILocalVariable(name: "i", scope: !1120, file: !3, line: 403, type: !62)
!1122 = !DILocalVariable(name: "primary_group", scope: !1120, file: !3, line: 405, type: !31)
!1123 = !DILocalVariable(name: "n_groups", scope: !1120, file: !3, line: 411, type: !62)
!1124 = !DILocation(line: 370, column: 30, scope: !1108, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 315, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 314, column: 5)
!1127 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 309, column: 12)
!1128 = !DILocation(line: 375, column: 3, scope: !1108, inlinedAt: !1125)
!1129 = !DILocation(line: 338, column: 28, scope: !77, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 375, column: 3, scope: !1131, inlinedAt: !1125)
!1131 = !DILexicalBlockFile(scope: !1108, file: !3, discriminator: 1)
!1132 = !DILocation(line: 341, column: 21, scope: !77, inlinedAt: !1130)
!1133 = !DILocation(line: 341, column: 10, scope: !77, inlinedAt: !1130)
!1134 = !DILocation(line: 375, column: 3, scope: !1135, inlinedAt: !1125)
!1135 = !DILexicalBlockFile(scope: !1108, file: !3, discriminator: 2)
!1136 = !DILocation(line: 376, column: 19, scope: !1108, inlinedAt: !1125)
!1137 = !DILocation(line: 376, column: 9, scope: !1108, inlinedAt: !1125)
!1138 = !DILocation(line: 372, column: 18, scope: !1108, inlinedAt: !1125)
!1139 = !DILocation(line: 377, column: 7, scope: !1140, inlinedAt: !1125)
!1140 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 377, column: 7)
!1141 = !DILocation(line: 377, column: 7, scope: !1108, inlinedAt: !1125)
!1142 = !DILocation(line: 378, column: 5, scope: !1140, inlinedAt: !1125)
!1143 = !DILocation(line: 380, column: 3, scope: !1108, inlinedAt: !1125)
!1144 = !DILocation(line: 327, column: 28, scope: !89, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 380, column: 3, scope: !1131, inlinedAt: !1125)
!1146 = !DILocation(line: 330, column: 21, scope: !89, inlinedAt: !1145)
!1147 = !DILocation(line: 330, column: 10, scope: !89, inlinedAt: !1145)
!1148 = !DILocation(line: 380, column: 3, scope: !1135, inlinedAt: !1125)
!1149 = !DILocation(line: 381, column: 19, scope: !1108, inlinedAt: !1125)
!1150 = !DILocation(line: 381, column: 9, scope: !1108, inlinedAt: !1125)
!1151 = !DILocation(line: 373, column: 17, scope: !1108, inlinedAt: !1125)
!1152 = !DILocation(line: 382, column: 7, scope: !1153, inlinedAt: !1125)
!1153 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 382, column: 7)
!1154 = !DILocation(line: 382, column: 7, scope: !1108, inlinedAt: !1125)
!1155 = !DILocation(line: 383, column: 5, scope: !1153, inlinedAt: !1125)
!1156 = !{!1157, !771, i64 0}
!1157 = !{!"group", !771, i64 0, !771, i64 8, !886, i64 16, !771, i64 24}
!1158 = !DILocation(line: 385, column: 7, scope: !1159, inlinedAt: !1125)
!1159 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 385, column: 7)
!1160 = !DILocation(line: 385, column: 15, scope: !1159, inlinedAt: !1125)
!1161 = !DILocation(line: 385, column: 12, scope: !1159, inlinedAt: !1125)
!1162 = !DILocation(line: 385, column: 7, scope: !1108, inlinedAt: !1125)
!1163 = !DILocation(line: 387, column: 7, scope: !1164, inlinedAt: !1125)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 386, column: 5)
!1165 = !DILocation(line: 338, column: 28, scope: !77, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 387, column: 7, scope: !1167, inlinedAt: !1125)
!1167 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 1)
!1168 = !DILocation(line: 341, column: 21, scope: !77, inlinedAt: !1166)
!1169 = !DILocation(line: 341, column: 10, scope: !77, inlinedAt: !1166)
!1170 = !DILocation(line: 387, column: 7, scope: !1171, inlinedAt: !1125)
!1171 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 2)
!1172 = !DILocation(line: 388, column: 23, scope: !1164, inlinedAt: !1125)
!1173 = !DILocation(line: 388, column: 13, scope: !1164, inlinedAt: !1125)
!1174 = !DILocation(line: 389, column: 11, scope: !1175, inlinedAt: !1125)
!1175 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 389, column: 11)
!1176 = !DILocation(line: 389, column: 11, scope: !1164, inlinedAt: !1125)
!1177 = !DILocation(line: 390, column: 9, scope: !1175, inlinedAt: !1125)
!1178 = !DILocation(line: 393, column: 7, scope: !1179, inlinedAt: !1125)
!1179 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 393, column: 7)
!1180 = !DILocation(line: 393, column: 15, scope: !1179, inlinedAt: !1125)
!1181 = !DILocation(line: 393, column: 12, scope: !1179, inlinedAt: !1125)
!1182 = !DILocation(line: 393, column: 7, scope: !1108, inlinedAt: !1125)
!1183 = !DILocation(line: 395, column: 7, scope: !1184, inlinedAt: !1125)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 394, column: 5)
!1185 = !DILocation(line: 327, column: 28, scope: !89, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 395, column: 7, scope: !1187, inlinedAt: !1125)
!1187 = !DILexicalBlockFile(scope: !1184, file: !3, discriminator: 1)
!1188 = !DILocation(line: 330, column: 21, scope: !89, inlinedAt: !1186)
!1189 = !DILocation(line: 330, column: 10, scope: !89, inlinedAt: !1186)
!1190 = !DILocation(line: 395, column: 7, scope: !1191, inlinedAt: !1125)
!1191 = !DILexicalBlockFile(scope: !1184, file: !3, discriminator: 2)
!1192 = !DILocation(line: 396, column: 23, scope: !1184, inlinedAt: !1125)
!1193 = !DILocation(line: 396, column: 13, scope: !1184, inlinedAt: !1125)
!1194 = !DILocation(line: 397, column: 11, scope: !1195, inlinedAt: !1125)
!1195 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 397, column: 11)
!1196 = !DILocation(line: 397, column: 11, scope: !1184, inlinedAt: !1125)
!1197 = !DILocation(line: 398, column: 9, scope: !1195, inlinedAt: !1125)
!1198 = !DILocation(line: 402, column: 5, scope: !1120, inlinedAt: !1125)
!1199 = !DILocation(line: 406, column: 9, scope: !1200, inlinedAt: !1125)
!1200 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 406, column: 9)
!1201 = !DILocation(line: 406, column: 9, scope: !1120, inlinedAt: !1125)
!1202 = !DILocation(line: 407, column: 23, scope: !1200, inlinedAt: !1125)
!1203 = !DILocation(line: 407, column: 34, scope: !1204, inlinedAt: !1125)
!1204 = !DILexicalBlockFile(scope: !1200, file: !3, discriminator: 1)
!1205 = !DILocation(line: 407, column: 23, scope: !1204, inlinedAt: !1125)
!1206 = !DILocation(line: 405, column: 11, scope: !1120, inlinedAt: !1125)
!1207 = !DIExpression(DW_OP_deref)
!1208 = !DILocation(line: 402, column: 12, scope: !1120, inlinedAt: !1125)
!1209 = !DILocation(line: 411, column: 20, scope: !1120, inlinedAt: !1125)
!1210 = !DILocation(line: 411, column: 9, scope: !1120, inlinedAt: !1125)
!1211 = !DILocation(line: 412, column: 18, scope: !1212, inlinedAt: !1125)
!1212 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 412, column: 9)
!1213 = !DILocation(line: 412, column: 9, scope: !1120, inlinedAt: !1125)
!1214 = !DILocation(line: 415, column: 21, scope: !1215, inlinedAt: !1125)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 414, column: 13)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 413, column: 7)
!1217 = !DILocation(line: 414, column: 13, scope: !1216, inlinedAt: !1125)
!1218 = !DILocation(line: 415, column: 28, scope: !1219, inlinedAt: !1125)
!1219 = !DILexicalBlockFile(scope: !1215, file: !3, discriminator: 1)
!1220 = !DILocation(line: 416, column: 18, scope: !1215, inlinedAt: !1125)
!1221 = !DILocation(line: 415, column: 11, scope: !1222, inlinedAt: !1125)
!1222 = !DILexicalBlockFile(scope: !1215, file: !3, discriminator: 2)
!1223 = !DILocation(line: 415, column: 11, scope: !1215, inlinedAt: !1125)
!1224 = !DILocation(line: 418, column: 28, scope: !1219, inlinedAt: !1125)
!1225 = !DILocation(line: 418, column: 11, scope: !1222, inlinedAt: !1125)
!1226 = !DILocation(line: 435, column: 3, scope: !1108, inlinedAt: !1125)
!1227 = !DILocation(line: 423, column: 18, scope: !1228, inlinedAt: !1125)
!1228 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 423, column: 9)
!1229 = !DILocation(line: 423, column: 9, scope: !1120, inlinedAt: !1125)
!1230 = !DILocation(line: 424, column: 7, scope: !1228, inlinedAt: !1125)
!1231 = !DILocation(line: 424, column: 7, scope: !1232, inlinedAt: !1125)
!1232 = !DILexicalBlockFile(scope: !1228, file: !3, discriminator: 1)
!1233 = !DILocation(line: 403, column: 9, scope: !1120, inlinedAt: !1125)
!1234 = !DILocation(line: 427, column: 15, scope: !1235, inlinedAt: !1125)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 427, column: 13)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 426, column: 7)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 425, column: 5)
!1238 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 425, column: 5)
!1239 = !DILocation(line: 427, column: 13, scope: !1236, inlinedAt: !1125)
!1240 = !DILocalVariable(name: "__c", arg: 1, scope: !1241, file: !1242, line: 105, type: !62)
!1241 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1242, file: !1242, line: 105, type: !1243, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1245)
!1242 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!62, !62}
!1245 = !{!1240}
!1246 = !DILocation(line: 105, column: 23, scope: !1241, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 428, column: 11, scope: !1235, inlinedAt: !1125)
!1248 = !DILocation(line: 107, column: 10, scope: !1241, inlinedAt: !1247)
!1249 = !{!1250, !771, i64 40}
!1250 = !{!"_IO_FILE", !886, i64 0, !771, i64 8, !771, i64 16, !771, i64 24, !771, i64 32, !771, i64 40, !771, i64 48, !771, i64 56, !771, i64 64, !771, i64 72, !771, i64 80, !771, i64 88, !771, i64 96, !771, i64 104, !886, i64 112, !886, i64 116, !1251, i64 120, !1252, i64 128, !772, i64 130, !772, i64 131, !771, i64 136, !1251, i64 144, !771, i64 152, !771, i64 160, !771, i64 168, !771, i64 176, !1251, i64 184, !886, i64 192, !772, i64 196}
!1251 = !{!"long", !772, i64 0}
!1252 = !{!"short", !772, i64 0}
!1253 = !{!1250, !771, i64 48}
!1254 = !{!"branch_weights", i32 2000, i32 1}
!1255 = !DILocation(line: 107, column: 10, scope: !1256, inlinedAt: !1247)
!1256 = !DILexicalBlockFile(scope: !1241, file: !1242, discriminator: 1)
!1257 = !DILocation(line: 107, column: 10, scope: !1258, inlinedAt: !1247)
!1258 = !DILexicalBlockFile(scope: !1241, file: !1242, discriminator: 2)
!1259 = !DILocation(line: 429, column: 9, scope: !1236, inlinedAt: !1125)
!1260 = !DILocation(line: 327, column: 28, scope: !89, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 429, column: 9, scope: !1236, inlinedAt: !1125)
!1262 = !DILocation(line: 330, column: 21, scope: !89, inlinedAt: !1261)
!1263 = !DILocation(line: 330, column: 10, scope: !89, inlinedAt: !1261)
!1264 = !DILocation(line: 429, column: 9, scope: !1265, inlinedAt: !1125)
!1265 = !DILexicalBlockFile(scope: !1236, file: !3, discriminator: 1)
!1266 = !DILocation(line: 430, column: 25, scope: !1236, inlinedAt: !1125)
!1267 = !DILocation(line: 430, column: 15, scope: !1236, inlinedAt: !1125)
!1268 = !DILocation(line: 431, column: 13, scope: !1269, inlinedAt: !1125)
!1269 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 431, column: 13)
!1270 = !DILocation(line: 431, column: 13, scope: !1236, inlinedAt: !1125)
!1271 = !DILocation(line: 432, column: 11, scope: !1269, inlinedAt: !1125)
!1272 = !DILocation(line: 425, column: 32, scope: !1273, inlinedAt: !1125)
!1273 = !DILexicalBlockFile(scope: !1237, file: !3, discriminator: 2)
!1274 = !DILocation(line: 425, column: 19, scope: !1275, inlinedAt: !1125)
!1275 = !DILexicalBlockFile(scope: !1237, file: !3, discriminator: 1)
!1276 = !DILocation(line: 425, column: 5, scope: !1277, inlinedAt: !1125)
!1277 = !DILexicalBlockFile(scope: !1238, file: !3, discriminator: 1)
!1278 = distinct !{!1278, !1279, !1280}
!1279 = !DILocation(line: 425, column: 5, scope: !1238)
!1280 = !DILocation(line: 433, column: 7, scope: !1238)
!1281 = !DILocation(line: 434, column: 11, scope: !1120, inlinedAt: !1125)
!1282 = !DILocation(line: 434, column: 5, scope: !1120, inlinedAt: !1125)
!1283 = !DILocation(line: 441, column: 1, scope: !1108, inlinedAt: !1125)
!1284 = !DILocation(line: 317, column: 3, scope: !815)
!1285 = !DILocation(line: 105, column: 23, scope: !1241, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 317, column: 3, scope: !815)
!1287 = !DILocation(line: 107, column: 10, scope: !1241, inlinedAt: !1286)
!1288 = !DILocation(line: 107, column: 10, scope: !1256, inlinedAt: !1286)
!1289 = !DILocation(line: 107, column: 10, scope: !1258, inlinedAt: !1286)
!1290 = !DILocation(line: 320, column: 10, scope: !815)
!1291 = !DILocation(line: 321, column: 1, scope: !815)
!1292 = distinct !DISubprogram(name: "print_group_list", scope: !111, file: !111, line: 36, type: !1293, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1295)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!68, !17, !22, !31, !31, !68, !7}
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1314, !1316, !1317}
!1296 = !DILocalVariable(name: "username", arg: 1, scope: !1292, file: !111, line: 36, type: !17)
!1297 = !DILocalVariable(name: "ruid", arg: 2, scope: !1292, file: !111, line: 37, type: !22)
!1298 = !DILocalVariable(name: "rgid", arg: 3, scope: !1292, file: !111, line: 37, type: !31)
!1299 = !DILocalVariable(name: "egid", arg: 4, scope: !1292, file: !111, line: 37, type: !31)
!1300 = !DILocalVariable(name: "use_names", arg: 5, scope: !1292, file: !111, line: 38, type: !68)
!1301 = !DILocalVariable(name: "delim", arg: 6, scope: !1292, file: !111, line: 38, type: !7)
!1302 = !DILocalVariable(name: "ok", scope: !1292, file: !111, line: 40, type: !68)
!1303 = !DILocalVariable(name: "pwd", scope: !1292, file: !111, line: 41, type: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !621, line: 49, size: 384, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1305, file: !621, line: 51, baseType: !6, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1305, file: !621, line: 52, baseType: !6, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1305, file: !621, line: 53, baseType: !24, size: 32, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1305, file: !621, line: 54, baseType: !32, size: 32, offset: 160)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1305, file: !621, line: 55, baseType: !6, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1305, file: !621, line: 56, baseType: !6, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1305, file: !621, line: 57, baseType: !6, size: 64, offset: 320)
!1314 = !DILocalVariable(name: "groups", scope: !1315, file: !111, line: 61, type: !608)
!1315 = distinct !DILexicalBlock(scope: !1292, file: !111, line: 60, column: 3)
!1316 = !DILocalVariable(name: "i", scope: !1315, file: !111, line: 62, type: !62)
!1317 = !DILocalVariable(name: "n_groups", scope: !1315, file: !111, line: 64, type: !62)
!1318 = !DILocation(line: 36, column: 31, scope: !1292)
!1319 = !DILocation(line: 37, column: 25, scope: !1292)
!1320 = !DILocation(line: 37, column: 37, scope: !1292)
!1321 = !DILocation(line: 37, column: 49, scope: !1292)
!1322 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1323 = !DILocation(line: 38, column: 24, scope: !1292)
!1324 = !DILocation(line: 38, column: 40, scope: !1292)
!1325 = !DILocation(line: 40, column: 8, scope: !1292)
!1326 = !DILocation(line: 41, column: 18, scope: !1292)
!1327 = !DILocation(line: 43, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1292, file: !111, line: 43, column: 7)
!1329 = !DILocation(line: 43, column: 7, scope: !1292)
!1330 = !DILocation(line: 45, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !111, line: 44, column: 5)
!1332 = !DILocation(line: 46, column: 11, scope: !1331)
!1333 = !DILocalVariable(name: "gid", arg: 1, scope: !1334, file: !111, line: 104, type: !31)
!1334 = distinct !DISubprogram(name: "print_group", scope: !111, file: !111, line: 104, type: !1335, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!68, !31, !68}
!1337 = !{!1333, !1338, !1339, !1347, !1348}
!1338 = !DILocalVariable(name: "use_name", arg: 2, scope: !1334, file: !111, line: 104, type: !68)
!1339 = !DILocalVariable(name: "grp", scope: !1334, file: !111, line: 106, type: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !633, line: 42, size: 256, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !1341, file: !633, line: 44, baseType: !6, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !1341, file: !633, line: 45, baseType: !6, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !1341, file: !633, line: 46, baseType: !32, size: 32, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !1341, file: !633, line: 47, baseType: !609, size: 64, offset: 192)
!1347 = !DILocalVariable(name: "ok", scope: !1334, file: !111, line: 107, type: !68)
!1348 = !DILocalVariable(name: "s", scope: !1334, file: !111, line: 120, type: !6)
!1349 = !DILocation(line: 104, column: 20, scope: !1334, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 50, column: 8, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1292, file: !111, line: 50, column: 7)
!1352 = !DILocation(line: 104, column: 30, scope: !1334, inlinedAt: !1350)
!1353 = !DILocation(line: 106, column: 17, scope: !1334, inlinedAt: !1350)
!1354 = !DILocation(line: 107, column: 8, scope: !1334, inlinedAt: !1350)
!1355 = !DILocation(line: 109, column: 7, scope: !1334, inlinedAt: !1350)
!1356 = !DILocation(line: 98, column: 21, scope: !110, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 120, column: 34, scope: !1358, inlinedAt: !1350)
!1358 = !DILexicalBlockFile(scope: !1334, file: !111, discriminator: 2)
!1359 = !DILocation(line: 98, column: 10, scope: !110, inlinedAt: !1357)
!1360 = !DILocation(line: 120, column: 9, scope: !1334, inlinedAt: !1350)
!1361 = !DILocation(line: 121, column: 3, scope: !1334, inlinedAt: !1350)
!1362 = !DILocation(line: 111, column: 13, scope: !1363, inlinedAt: !1350)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !111, line: 110, column: 5)
!1364 = distinct !DILexicalBlock(scope: !1334, file: !111, line: 109, column: 7)
!1365 = !DILocation(line: 112, column: 15, scope: !1366, inlinedAt: !1350)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !111, line: 112, column: 11)
!1367 = !DILocation(line: 112, column: 11, scope: !1363, inlinedAt: !1350)
!1368 = !DILocation(line: 114, column: 24, scope: !1369, inlinedAt: !1350)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !111, line: 113, column: 9)
!1370 = !DILocation(line: 115, column: 18, scope: !1369, inlinedAt: !1350)
!1371 = !DILocation(line: 114, column: 11, scope: !1372, inlinedAt: !1350)
!1372 = !DILexicalBlockFile(scope: !1369, file: !111, discriminator: 1)
!1373 = !DILocation(line: 50, column: 7, scope: !1292)
!1374 = !DILocation(line: 120, column: 24, scope: !1375, inlinedAt: !1350)
!1375 = !DILexicalBlockFile(scope: !1334, file: !111, discriminator: 1)
!1376 = !DILocation(line: 53, column: 12, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1292, file: !111, line: 53, column: 7)
!1378 = !DILocation(line: 53, column: 7, scope: !1292)
!1379 = !DILocation(line: 107, column: 10, scope: !1380, inlinedAt: !1383)
!1380 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1242, file: !1242, line: 105, type: !1243, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1381)
!1381 = !{!1382}
!1382 = !DILocalVariable(name: "__c", arg: 1, scope: !1380, file: !1242, line: 105, type: !62)
!1383 = distinct !DILocation(line: 55, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !111, line: 54, column: 5)
!1385 = !DILocation(line: 55, column: 7, scope: !1384)
!1386 = !DILocation(line: 107, column: 10, scope: !1387, inlinedAt: !1383)
!1387 = !DILexicalBlockFile(scope: !1380, file: !1242, discriminator: 1)
!1388 = !DILocation(line: 107, column: 10, scope: !1389, inlinedAt: !1383)
!1389 = !DILexicalBlockFile(scope: !1380, file: !1242, discriminator: 2)
!1390 = !DILocation(line: 104, column: 20, scope: !1334, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 56, column: 12, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1384, file: !111, line: 56, column: 11)
!1393 = !DILocation(line: 104, column: 30, scope: !1334, inlinedAt: !1391)
!1394 = !DILocation(line: 106, column: 17, scope: !1334, inlinedAt: !1391)
!1395 = !DILocation(line: 107, column: 8, scope: !1334, inlinedAt: !1391)
!1396 = !DILocation(line: 109, column: 7, scope: !1334, inlinedAt: !1391)
!1397 = !DILocation(line: 98, column: 21, scope: !110, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 120, column: 34, scope: !1358, inlinedAt: !1391)
!1399 = !DILocation(line: 98, column: 10, scope: !110, inlinedAt: !1398)
!1400 = !DILocation(line: 120, column: 9, scope: !1334, inlinedAt: !1391)
!1401 = !DILocation(line: 121, column: 3, scope: !1334, inlinedAt: !1391)
!1402 = !DILocation(line: 111, column: 13, scope: !1363, inlinedAt: !1391)
!1403 = !DILocation(line: 112, column: 15, scope: !1366, inlinedAt: !1391)
!1404 = !DILocation(line: 112, column: 11, scope: !1363, inlinedAt: !1391)
!1405 = !DILocation(line: 114, column: 24, scope: !1369, inlinedAt: !1391)
!1406 = !DILocation(line: 115, column: 18, scope: !1369, inlinedAt: !1391)
!1407 = !DILocation(line: 114, column: 11, scope: !1372, inlinedAt: !1391)
!1408 = !DILocation(line: 56, column: 11, scope: !1384)
!1409 = !DILocation(line: 120, column: 24, scope: !1375, inlinedAt: !1391)
!1410 = !DILocation(line: 61, column: 5, scope: !1315)
!1411 = !DILocation(line: 64, column: 43, scope: !1315)
!1412 = !DILocation(line: 64, column: 54, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1315, file: !111, discriminator: 1)
!1414 = !DILocation(line: 64, column: 43, scope: !1413)
!1415 = !DILocation(line: 64, column: 43, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1315, file: !111, discriminator: 3)
!1417 = !DILocation(line: 61, column: 12, scope: !1315)
!1418 = !DILocation(line: 64, column: 20, scope: !1416)
!1419 = !DILocation(line: 64, column: 9, scope: !1315)
!1420 = !DILocation(line: 65, column: 18, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1315, file: !111, line: 65, column: 9)
!1422 = !DILocation(line: 65, column: 9, scope: !1315)
!1423 = !DILocation(line: 62, column: 9, scope: !1315)
!1424 = !DILocation(line: 79, column: 19, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1426, file: !111, discriminator: 1)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !111, line: 79, column: 5)
!1427 = distinct !DILexicalBlock(scope: !1315, file: !111, line: 79, column: 5)
!1428 = !DILocation(line: 79, column: 5, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1427, file: !111, discriminator: 1)
!1430 = !DILocation(line: 69, column: 23, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !111, line: 68, column: 11)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !111, line: 67, column: 13)
!1433 = distinct !DILexicalBlock(scope: !1421, file: !111, line: 66, column: 7)
!1434 = !DILocation(line: 67, column: 13, scope: !1433)
!1435 = !DILocation(line: 69, column: 30, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1431, file: !111, discriminator: 1)
!1437 = !DILocation(line: 70, column: 20, scope: !1431)
!1438 = !DILocation(line: 69, column: 13, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1431, file: !111, discriminator: 2)
!1440 = !DILocation(line: 71, column: 11, scope: !1431)
!1441 = !DILocation(line: 74, column: 30, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1443, file: !111, discriminator: 1)
!1443 = distinct !DILexicalBlock(scope: !1432, file: !111, line: 73, column: 11)
!1444 = !DILocation(line: 74, column: 13, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1443, file: !111, discriminator: 2)
!1446 = !DILocation(line: 80, column: 11, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1426, file: !111, line: 80, column: 11)
!1448 = !DILocation(line: 80, column: 21, scope: !1447)
!1449 = !DILocation(line: 80, column: 42, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1447, file: !111, discriminator: 1)
!1451 = !DILocation(line: 80, column: 29, scope: !1447)
!1452 = !DILocation(line: 107, column: 10, scope: !1380, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 82, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1447, file: !111, line: 81, column: 9)
!1455 = !DILocation(line: 107, column: 10, scope: !1387, inlinedAt: !1453)
!1456 = !DILocation(line: 107, column: 10, scope: !1389, inlinedAt: !1453)
!1457 = !DILocation(line: 83, column: 29, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !111, line: 83, column: 15)
!1459 = !DILocation(line: 104, column: 20, scope: !1334, inlinedAt: !1460)
!1460 = distinct !DILocation(line: 83, column: 16, scope: !1458)
!1461 = !DILocation(line: 104, column: 30, scope: !1334, inlinedAt: !1460)
!1462 = !DILocation(line: 106, column: 17, scope: !1334, inlinedAt: !1460)
!1463 = !DILocation(line: 107, column: 8, scope: !1334, inlinedAt: !1460)
!1464 = !DILocation(line: 109, column: 7, scope: !1334, inlinedAt: !1460)
!1465 = !DILocation(line: 98, column: 21, scope: !110, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 120, column: 34, scope: !1358, inlinedAt: !1460)
!1467 = !DILocation(line: 98, column: 10, scope: !110, inlinedAt: !1466)
!1468 = !DILocation(line: 120, column: 9, scope: !1334, inlinedAt: !1460)
!1469 = !DILocation(line: 121, column: 3, scope: !1334, inlinedAt: !1460)
!1470 = !DILocation(line: 111, column: 13, scope: !1363, inlinedAt: !1460)
!1471 = !DILocation(line: 112, column: 15, scope: !1366, inlinedAt: !1460)
!1472 = !DILocation(line: 112, column: 11, scope: !1363, inlinedAt: !1460)
!1473 = !DILocation(line: 114, column: 24, scope: !1369, inlinedAt: !1460)
!1474 = !DILocation(line: 115, column: 18, scope: !1369, inlinedAt: !1460)
!1475 = !DILocation(line: 114, column: 11, scope: !1372, inlinedAt: !1460)
!1476 = !DILocation(line: 83, column: 15, scope: !1454)
!1477 = !DILocation(line: 120, column: 24, scope: !1375, inlinedAt: !1460)
!1478 = !DILocation(line: 79, column: 32, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1426, file: !111, discriminator: 2)
!1480 = distinct !{!1480, !1481, !1482}
!1481 = !DILocation(line: 79, column: 5, scope: !1427)
!1482 = !DILocation(line: 85, column: 9, scope: !1427)
!1483 = !DILocation(line: 87, column: 3, scope: !1292)
!1484 = !DILocation(line: 86, column: 11, scope: !1315)
!1485 = !DILocation(line: 86, column: 5, scope: !1315)
!1486 = !DILocation(line: 88, column: 10, scope: !1292)
!1487 = !DILocation(line: 89, column: 1, scope: !1292)
!1488 = !DILocation(line: 104, column: 20, scope: !1334)
!1489 = !DILocation(line: 104, column: 30, scope: !1334)
!1490 = !DILocation(line: 106, column: 17, scope: !1334)
!1491 = !DILocation(line: 107, column: 8, scope: !1334)
!1492 = !DILocation(line: 109, column: 7, scope: !1334)
!1493 = !DILocation(line: 98, column: 21, scope: !110, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 120, column: 34, scope: !1358)
!1495 = !DILocation(line: 111, column: 13, scope: !1363)
!1496 = !DILocation(line: 112, column: 15, scope: !1366)
!1497 = !DILocation(line: 112, column: 11, scope: !1363)
!1498 = !DILocation(line: 114, column: 24, scope: !1369)
!1499 = !DILocation(line: 115, column: 18, scope: !1369)
!1500 = !DILocation(line: 114, column: 11, scope: !1372)
!1501 = !DILocation(line: 117, column: 9, scope: !1369)
!1502 = !DILocation(line: 120, column: 24, scope: !1375)
!1503 = !DILocation(line: 120, column: 13, scope: !1375)
!1504 = !DILocation(line: 98, column: 10, scope: !110, inlinedAt: !1494)
!1505 = !DILocation(line: 120, column: 13, scope: !1358)
!1506 = !DILocation(line: 120, column: 13, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1334, file: !111, discriminator: 3)
!1508 = !DILocation(line: 120, column: 9, scope: !1334)
!1509 = !DILocation(line: 121, column: 3, scope: !1334)
!1510 = !DILocation(line: 122, column: 3, scope: !1334)
!1511 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !129, file: !129, line: 41, type: !39, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1512)
!1512 = !{!1513}
!1513 = !DILocalVariable(name: "file", arg: 1, scope: !1511, file: !129, line: 41, type: !17)
!1514 = !DILocation(line: 41, column: 41, scope: !1511)
!1515 = !DILocation(line: 43, column: 13, scope: !1511)
!1516 = !DILocation(line: 44, column: 1, scope: !1511)
!1517 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !129, file: !129, line: 78, type: !1518, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !68}
!1520 = !{!1521}
!1521 = !DILocalVariable(name: "ignore", arg: 1, scope: !1517, file: !129, line: 78, type: !68)
!1522 = !DILocation(line: 78, column: 37, scope: !1517)
!1523 = !DILocation(line: 80, column: 16, scope: !1517)
!1524 = !{!1525, !1525, i64 0}
!1525 = !{!"_Bool", !772, i64 0}
!1526 = !DILocation(line: 81, column: 1, scope: !1517)
!1527 = distinct !DISubprogram(name: "close_stdout", scope: !129, file: !129, line: 107, type: !1528, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null}
!1530 = !{!1531}
!1531 = !DILocalVariable(name: "write_error", scope: !1532, file: !129, line: 112, type: !17)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !129, line: 111, column: 5)
!1533 = distinct !DILexicalBlock(scope: !1527, file: !129, line: 109, column: 7)
!1534 = !DILocation(line: 109, column: 21, scope: !1533)
!1535 = !DILocation(line: 109, column: 7, scope: !1533)
!1536 = !DILocation(line: 109, column: 29, scope: !1533)
!1537 = !DILocation(line: 110, column: 7, scope: !1533)
!1538 = !DILocation(line: 110, column: 12, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1533, file: !129, discriminator: 1)
!1540 = !{i8 0, i8 2}
!1541 = !DILocation(line: 114, column: 19, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1532, file: !129, line: 113, column: 11)
!1543 = !DILocation(line: 110, column: 25, scope: !1539)
!1544 = !DILocation(line: 110, column: 28, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1533, file: !129, discriminator: 2)
!1546 = !DILocation(line: 110, column: 34, scope: !1545)
!1547 = !DILocation(line: 109, column: 7, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1527, file: !129, discriminator: 1)
!1549 = !DILocation(line: 112, column: 33, scope: !1532)
!1550 = !DILocation(line: 112, column: 19, scope: !1532)
!1551 = !DILocation(line: 113, column: 11, scope: !1542)
!1552 = !DILocation(line: 113, column: 11, scope: !1532)
!1553 = !DILocation(line: 114, column: 36, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1542, file: !129, discriminator: 1)
!1555 = !DILocation(line: 114, column: 9, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1542, file: !129, discriminator: 2)
!1557 = !DILocation(line: 114, column: 9, scope: !1542)
!1558 = !DILocation(line: 117, column: 9, scope: !1554)
!1559 = !DILocation(line: 119, column: 14, scope: !1532)
!1560 = !DILocation(line: 119, column: 7, scope: !1532)
!1561 = !DILocation(line: 122, column: 22, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1527, file: !129, line: 122, column: 8)
!1563 = !DILocation(line: 122, column: 8, scope: !1562)
!1564 = !DILocation(line: 122, column: 30, scope: !1562)
!1565 = !DILocation(line: 122, column: 8, scope: !1527)
!1566 = !DILocation(line: 123, column: 13, scope: !1562)
!1567 = !DILocation(line: 123, column: 6, scope: !1562)
!1568 = !DILocation(line: 124, column: 1, scope: !1527)
!1569 = distinct !DISubprogram(name: "umaxtostr", scope: !1570, file: !1570, line: 36, type: !1571, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !1573)
!1570 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!6, !585, !6}
!1573 = !{!1574, !1575, !1576}
!1574 = !DILocalVariable(name: "i", arg: 1, scope: !1569, file: !1570, line: 36, type: !585)
!1575 = !DILocalVariable(name: "buf", arg: 2, scope: !1569, file: !1570, line: 36, type: !6)
!1576 = !DILocalVariable(name: "p", scope: !1569, file: !1570, line: 38, type: !6)
!1577 = !DILocation(line: 36, column: 19, scope: !1569)
!1578 = !DILocation(line: 36, column: 28, scope: !1569)
!1579 = !DILocation(line: 38, column: 17, scope: !1569)
!1580 = !DILocation(line: 38, column: 9, scope: !1569)
!1581 = !DILocation(line: 39, column: 6, scope: !1569)
!1582 = !DILocation(line: 41, column: 7, scope: !1569)
!1583 = !DILocation(line: 52, column: 24, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !1570, line: 50, column: 5)
!1585 = distinct !DILexicalBlock(scope: !1569, file: !1570, line: 41, column: 7)
!1586 = !DILocation(line: 52, column: 16, scope: !1584)
!1587 = !DILocation(line: 52, column: 10, scope: !1584)
!1588 = !DILocation(line: 52, column: 14, scope: !1584)
!1589 = !DILocation(line: 53, column: 17, scope: !1584)
!1590 = !DILocation(line: 53, column: 24, scope: !1584)
!1591 = !DILocation(line: 52, column: 9, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1584, file: !1570, discriminator: 1)
!1593 = distinct !{!1593, !1594, !1595}
!1594 = !DILocation(line: 51, column: 7, scope: !1584)
!1595 = !DILocation(line: 53, column: 28, scope: !1584)
!1596 = !DILocation(line: 56, column: 3, scope: !1569)
!1597 = distinct !DISubprogram(name: "set_program_name", scope: !143, file: !143, line: 39, type: !39, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !139, variables: !1598)
!1598 = !{!1599, !1600, !1601}
!1599 = !DILocalVariable(name: "argv0", arg: 1, scope: !1597, file: !143, line: 39, type: !17)
!1600 = !DILocalVariable(name: "slash", scope: !1597, file: !143, line: 46, type: !17)
!1601 = !DILocalVariable(name: "base", scope: !1597, file: !143, line: 47, type: !17)
!1602 = !DILocation(line: 39, column: 31, scope: !1597)
!1603 = !DILocation(line: 51, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1597, file: !143, line: 51, column: 7)
!1605 = !DILocation(line: 51, column: 7, scope: !1597)
!1606 = !DILocation(line: 55, column: 14, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !143, line: 52, column: 5)
!1608 = !DILocation(line: 54, column: 7, scope: !1607)
!1609 = !DILocation(line: 56, column: 7, scope: !1607)
!1610 = !DILocation(line: 59, column: 11, scope: !1597)
!1611 = !DILocation(line: 46, column: 15, scope: !1597)
!1612 = !DILocation(line: 60, column: 17, scope: !1597)
!1613 = !DILocation(line: 60, column: 33, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1597, file: !143, discriminator: 1)
!1615 = !DILocation(line: 60, column: 11, scope: !1597)
!1616 = !DILocation(line: 47, column: 15, scope: !1597)
!1617 = !DILocation(line: 61, column: 12, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1597, file: !143, line: 61, column: 7)
!1619 = !DILocation(line: 61, column: 20, scope: !1618)
!1620 = !DILocation(line: 61, column: 25, scope: !1618)
!1621 = !DILocation(line: 61, column: 28, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1618, file: !143, discriminator: 1)
!1623 = !DILocation(line: 61, column: 61, scope: !1622)
!1624 = !DILocation(line: 61, column: 7, scope: !1614)
!1625 = !DILocation(line: 64, column: 11, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !143, line: 64, column: 11)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !143, line: 62, column: 5)
!1628 = !DILocation(line: 64, column: 36, scope: !1626)
!1629 = !DILocation(line: 64, column: 11, scope: !1627)
!1630 = !DILocation(line: 66, column: 24, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !143, line: 65, column: 9)
!1632 = !DILocation(line: 70, column: 41, scope: !1631)
!1633 = !DILocation(line: 72, column: 9, scope: !1631)
!1634 = !DILocation(line: 84, column: 16, scope: !1597)
!1635 = !DILocation(line: 90, column: 27, scope: !1597)
!1636 = !DILocation(line: 92, column: 1, scope: !1597)
!1637 = distinct !DISubprogram(name: "clone_quoting_options", scope: !188, file: !188, line: 114, type: !1638, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1641)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!1640, !1640}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1641 = !{!1642, !1643, !1644}
!1642 = !DILocalVariable(name: "o", arg: 1, scope: !1637, file: !188, line: 114, type: !1640)
!1643 = !DILocalVariable(name: "e", scope: !1637, file: !188, line: 116, type: !62)
!1644 = !DILocalVariable(name: "p", scope: !1637, file: !188, line: 117, type: !1640)
!1645 = !DILocation(line: 114, column: 48, scope: !1637)
!1646 = !DILocation(line: 116, column: 11, scope: !1637)
!1647 = !DILocation(line: 116, column: 7, scope: !1637)
!1648 = !DILocation(line: 117, column: 40, scope: !1637)
!1649 = !DILocation(line: 117, column: 40, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1637, file: !188, discriminator: 3)
!1651 = !DILocation(line: 117, column: 31, scope: !1650)
!1652 = !DILocation(line: 117, column: 27, scope: !1637)
!1653 = !DILocation(line: 119, column: 9, scope: !1637)
!1654 = !DILocation(line: 120, column: 3, scope: !1637)
!1655 = distinct !DISubprogram(name: "get_quoting_style", scope: !188, file: !188, line: 125, type: !1656, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1660)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!149, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!1660 = !{!1661}
!1661 = !DILocalVariable(name: "o", arg: 1, scope: !1655, file: !188, line: 125, type: !1658)
!1662 = !DILocation(line: 125, column: 50, scope: !1655)
!1663 = !DILocation(line: 127, column: 11, scope: !1655)
!1664 = !DILocation(line: 127, column: 46, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1655, file: !188, discriminator: 3)
!1666 = !{!1667, !772, i64 0}
!1667 = !{!"quoting_options", !772, i64 0, !886, i64 4, !772, i64 8, !771, i64 40, !771, i64 48}
!1668 = !DILocation(line: 127, column: 3, scope: !1665)
!1669 = distinct !DISubprogram(name: "set_quoting_style", scope: !188, file: !188, line: 133, type: !1670, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1672)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1640, !149}
!1672 = !{!1673, !1674}
!1673 = !DILocalVariable(name: "o", arg: 1, scope: !1669, file: !188, line: 133, type: !1640)
!1674 = !DILocalVariable(name: "s", arg: 2, scope: !1669, file: !188, line: 133, type: !149)
!1675 = !DILocation(line: 133, column: 44, scope: !1669)
!1676 = !DILocation(line: 133, column: 66, scope: !1669)
!1677 = !DILocation(line: 135, column: 4, scope: !1669)
!1678 = !DILocation(line: 135, column: 39, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1669, file: !188, discriminator: 3)
!1680 = !DILocation(line: 135, column: 45, scope: !1679)
!1681 = !DILocation(line: 136, column: 1, scope: !1669)
!1682 = distinct !DISubprogram(name: "set_char_quoting", scope: !188, file: !188, line: 144, type: !1683, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!62, !1640, !7, !62}
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1692, !1693}
!1686 = !DILocalVariable(name: "o", arg: 1, scope: !1682, file: !188, line: 144, type: !1640)
!1687 = !DILocalVariable(name: "c", arg: 2, scope: !1682, file: !188, line: 144, type: !7)
!1688 = !DILocalVariable(name: "i", arg: 3, scope: !1682, file: !188, line: 144, type: !62)
!1689 = !DILocalVariable(name: "uc", scope: !1682, file: !188, line: 146, type: !16)
!1690 = !DILocalVariable(name: "p", scope: !1682, file: !188, line: 147, type: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1692 = !DILocalVariable(name: "shift", scope: !1682, file: !188, line: 149, type: !62)
!1693 = !DILocalVariable(name: "r", scope: !1682, file: !188, line: 150, type: !62)
!1694 = !DILocation(line: 144, column: 43, scope: !1682)
!1695 = !DILocation(line: 144, column: 51, scope: !1682)
!1696 = !DILocation(line: 144, column: 58, scope: !1682)
!1697 = !DILocation(line: 146, column: 17, scope: !1682)
!1698 = !DILocation(line: 148, column: 6, scope: !1682)
!1699 = !DILocation(line: 148, column: 62, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1682, file: !188, discriminator: 3)
!1701 = !DILocation(line: 148, column: 57, scope: !1700)
!1702 = !DILocation(line: 147, column: 17, scope: !1682)
!1703 = !DILocation(line: 149, column: 18, scope: !1682)
!1704 = !DILocation(line: 149, column: 15, scope: !1682)
!1705 = !DILocation(line: 149, column: 7, scope: !1682)
!1706 = !DILocation(line: 150, column: 12, scope: !1682)
!1707 = !DILocation(line: 150, column: 15, scope: !1682)
!1708 = !DILocation(line: 150, column: 25, scope: !1682)
!1709 = !DILocation(line: 150, column: 7, scope: !1682)
!1710 = !DILocation(line: 151, column: 13, scope: !1682)
!1711 = !DILocation(line: 151, column: 18, scope: !1682)
!1712 = !DILocation(line: 151, column: 23, scope: !1682)
!1713 = !DILocation(line: 151, column: 6, scope: !1682)
!1714 = !DILocation(line: 152, column: 3, scope: !1682)
!1715 = distinct !DISubprogram(name: "set_quoting_flags", scope: !188, file: !188, line: 160, type: !1716, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!62, !1640, !62}
!1718 = !{!1719, !1720, !1721}
!1719 = !DILocalVariable(name: "o", arg: 1, scope: !1715, file: !188, line: 160, type: !1640)
!1720 = !DILocalVariable(name: "i", arg: 2, scope: !1715, file: !188, line: 160, type: !62)
!1721 = !DILocalVariable(name: "r", scope: !1715, file: !188, line: 162, type: !62)
!1722 = !DILocation(line: 160, column: 44, scope: !1715)
!1723 = !DILocation(line: 160, column: 51, scope: !1715)
!1724 = !DILocation(line: 163, column: 8, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1715, file: !188, line: 163, column: 7)
!1726 = !DILocation(line: 163, column: 7, scope: !1715)
!1727 = !DILocation(line: 165, column: 10, scope: !1715)
!1728 = !{!1667, !886, i64 4}
!1729 = !DILocation(line: 162, column: 7, scope: !1715)
!1730 = !DILocation(line: 166, column: 12, scope: !1715)
!1731 = !DILocation(line: 167, column: 3, scope: !1715)
!1732 = distinct !DISubprogram(name: "set_custom_quoting", scope: !188, file: !188, line: 171, type: !1733, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1640, !17, !17}
!1735 = !{!1736, !1737, !1738}
!1736 = !DILocalVariable(name: "o", arg: 1, scope: !1732, file: !188, line: 171, type: !1640)
!1737 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1732, file: !188, line: 172, type: !17)
!1738 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1732, file: !188, line: 172, type: !17)
!1739 = !DILocation(line: 171, column: 45, scope: !1732)
!1740 = !DILocation(line: 172, column: 33, scope: !1732)
!1741 = !DILocation(line: 172, column: 57, scope: !1732)
!1742 = !DILocation(line: 174, column: 8, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1732, file: !188, line: 174, column: 7)
!1744 = !DILocation(line: 174, column: 7, scope: !1732)
!1745 = !DILocation(line: 176, column: 6, scope: !1732)
!1746 = !DILocation(line: 176, column: 12, scope: !1732)
!1747 = !DILocation(line: 177, column: 8, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1732, file: !188, line: 177, column: 7)
!1749 = !DILocation(line: 177, column: 23, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1748, file: !188, discriminator: 1)
!1751 = !DILocation(line: 177, column: 19, scope: !1748)
!1752 = !DILocation(line: 178, column: 5, scope: !1748)
!1753 = !DILocation(line: 179, column: 6, scope: !1732)
!1754 = !DILocation(line: 179, column: 17, scope: !1732)
!1755 = !{!1667, !771, i64 40}
!1756 = !DILocation(line: 180, column: 6, scope: !1732)
!1757 = !DILocation(line: 180, column: 18, scope: !1732)
!1758 = !{!1667, !771, i64 48}
!1759 = !DILocation(line: 181, column: 1, scope: !1732)
!1760 = distinct !DISubprogram(name: "quotearg_buffer", scope: !188, file: !188, line: 776, type: !1761, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!9, !6, !9, !17, !9, !1658}
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771}
!1764 = !DILocalVariable(name: "buffer", arg: 1, scope: !1760, file: !188, line: 776, type: !6)
!1765 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1760, file: !188, line: 776, type: !9)
!1766 = !DILocalVariable(name: "arg", arg: 3, scope: !1760, file: !188, line: 777, type: !17)
!1767 = !DILocalVariable(name: "argsize", arg: 4, scope: !1760, file: !188, line: 777, type: !9)
!1768 = !DILocalVariable(name: "o", arg: 5, scope: !1760, file: !188, line: 778, type: !1658)
!1769 = !DILocalVariable(name: "p", scope: !1760, file: !188, line: 780, type: !1658)
!1770 = !DILocalVariable(name: "e", scope: !1760, file: !188, line: 781, type: !62)
!1771 = !DILocalVariable(name: "r", scope: !1760, file: !188, line: 782, type: !9)
!1772 = !DILocation(line: 776, column: 24, scope: !1760)
!1773 = !DILocation(line: 776, column: 39, scope: !1760)
!1774 = !DILocation(line: 777, column: 30, scope: !1760)
!1775 = !DILocation(line: 777, column: 42, scope: !1760)
!1776 = !DILocation(line: 778, column: 48, scope: !1760)
!1777 = !DILocation(line: 780, column: 37, scope: !1760)
!1778 = !DILocation(line: 780, column: 33, scope: !1760)
!1779 = !DILocation(line: 781, column: 11, scope: !1760)
!1780 = !DILocation(line: 781, column: 7, scope: !1760)
!1781 = !DILocation(line: 783, column: 43, scope: !1760)
!1782 = !DILocation(line: 783, column: 53, scope: !1760)
!1783 = !DILocation(line: 783, column: 60, scope: !1760)
!1784 = !DILocation(line: 784, column: 43, scope: !1760)
!1785 = !DILocation(line: 784, column: 58, scope: !1760)
!1786 = !DILocation(line: 782, column: 14, scope: !1760)
!1787 = !DILocation(line: 782, column: 10, scope: !1760)
!1788 = !DILocation(line: 785, column: 9, scope: !1760)
!1789 = !DILocation(line: 786, column: 3, scope: !1760)
!1790 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !188, file: !188, line: 248, type: !1791, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1795)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!9, !6, !9, !17, !9, !149, !62, !1793, !17, !17}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1820, !1821, !1822, !1823, !1824, !1827, !1828, !1845, !1848, !1849, !1856}
!1796 = !DILocalVariable(name: "buffer", arg: 1, scope: !1790, file: !188, line: 248, type: !6)
!1797 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1790, file: !188, line: 248, type: !9)
!1798 = !DILocalVariable(name: "arg", arg: 3, scope: !1790, file: !188, line: 249, type: !17)
!1799 = !DILocalVariable(name: "argsize", arg: 4, scope: !1790, file: !188, line: 249, type: !9)
!1800 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1790, file: !188, line: 250, type: !149)
!1801 = !DILocalVariable(name: "flags", arg: 6, scope: !1790, file: !188, line: 250, type: !62)
!1802 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1790, file: !188, line: 251, type: !1793)
!1803 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1790, file: !188, line: 252, type: !17)
!1804 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1790, file: !188, line: 253, type: !17)
!1805 = !DILocalVariable(name: "i", scope: !1790, file: !188, line: 255, type: !9)
!1806 = !DILocalVariable(name: "len", scope: !1790, file: !188, line: 256, type: !9)
!1807 = !DILocalVariable(name: "orig_buffersize", scope: !1790, file: !188, line: 257, type: !9)
!1808 = !DILocalVariable(name: "quote_string", scope: !1790, file: !188, line: 258, type: !17)
!1809 = !DILocalVariable(name: "quote_string_len", scope: !1790, file: !188, line: 259, type: !9)
!1810 = !DILocalVariable(name: "backslash_escapes", scope: !1790, file: !188, line: 260, type: !68)
!1811 = !DILocalVariable(name: "unibyte_locale", scope: !1790, file: !188, line: 261, type: !68)
!1812 = !DILocalVariable(name: "elide_outer_quotes", scope: !1790, file: !188, line: 262, type: !68)
!1813 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1790, file: !188, line: 263, type: !68)
!1814 = !DILocalVariable(name: "encountered_single_quote", scope: !1790, file: !188, line: 264, type: !68)
!1815 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1790, file: !188, line: 265, type: !68)
!1816 = !DILocalVariable(name: "c", scope: !1817, file: !188, line: 394, type: !16)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !188, line: 393, column: 5)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !188, line: 392, column: 3)
!1819 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 392, column: 3)
!1820 = !DILocalVariable(name: "esc", scope: !1817, file: !188, line: 395, type: !16)
!1821 = !DILocalVariable(name: "is_right_quote", scope: !1817, file: !188, line: 396, type: !68)
!1822 = !DILocalVariable(name: "escaping", scope: !1817, file: !188, line: 397, type: !68)
!1823 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1817, file: !188, line: 398, type: !68)
!1824 = !DILocalVariable(name: "m", scope: !1825, file: !188, line: 602, type: !9)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 600, column: 11)
!1826 = distinct !DILexicalBlock(scope: !1817, file: !188, line: 418, column: 9)
!1827 = !DILocalVariable(name: "printable", scope: !1825, file: !188, line: 604, type: !68)
!1828 = !DILocalVariable(name: "mbstate", scope: !1829, file: !188, line: 613, type: !1831)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !188, line: 612, column: 15)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !188, line: 606, column: 17)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1832, line: 107, baseType: !1833)
!1832 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1832, line: 95, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1832, line: 83, size: 64, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1834, file: !1832, line: 85, baseType: !62, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1834, file: !1832, line: 94, baseType: !1838, size: 32, offset: 32)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1834, file: !1832, line: 86, size: 32, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1838, file: !1832, line: 89, baseType: !26, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1838, file: !1832, line: 93, baseType: !1842, size: 32)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1843)
!1843 = !{!1844}
!1844 = !DISubrange(count: 4)
!1845 = !DILocalVariable(name: "w", scope: !1846, file: !188, line: 623, type: !1847)
!1846 = distinct !DILexicalBlock(scope: !1829, file: !188, line: 622, column: 19)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !10, line: 90, baseType: !62)
!1848 = !DILocalVariable(name: "bytes", scope: !1846, file: !188, line: 624, type: !9)
!1849 = !DILocalVariable(name: "j", scope: !1850, file: !188, line: 649, type: !9)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !188, line: 648, column: 27)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !188, line: 646, column: 29)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !188, line: 641, column: 23)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !188, line: 633, column: 30)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !188, line: 628, column: 30)
!1855 = distinct !DILexicalBlock(scope: !1846, file: !188, line: 626, column: 25)
!1856 = !DILocalVariable(name: "ilim", scope: !1857, file: !188, line: 676, type: !9)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !188, line: 673, column: 15)
!1858 = distinct !DILexicalBlock(scope: !1825, file: !188, line: 672, column: 17)
!1859 = !DILocation(line: 248, column: 33, scope: !1790)
!1860 = !DILocation(line: 248, column: 48, scope: !1790)
!1861 = !DILocation(line: 249, column: 39, scope: !1790)
!1862 = !DILocation(line: 249, column: 51, scope: !1790)
!1863 = !DILocation(line: 250, column: 46, scope: !1790)
!1864 = !DILocation(line: 250, column: 65, scope: !1790)
!1865 = !DILocation(line: 251, column: 47, scope: !1790)
!1866 = !DILocation(line: 252, column: 39, scope: !1790)
!1867 = !DILocation(line: 253, column: 39, scope: !1790)
!1868 = !DILocation(line: 256, column: 10, scope: !1790)
!1869 = !DILocation(line: 257, column: 10, scope: !1790)
!1870 = !DILocation(line: 258, column: 15, scope: !1790)
!1871 = !DILocation(line: 259, column: 10, scope: !1790)
!1872 = !DILocation(line: 260, column: 8, scope: !1790)
!1873 = !DILocation(line: 261, column: 25, scope: !1790)
!1874 = !DILocation(line: 261, column: 36, scope: !1790)
!1875 = !DILocation(line: 262, column: 8, scope: !1790)
!1876 = !DILocation(line: 263, column: 8, scope: !1790)
!1877 = !DILocation(line: 264, column: 8, scope: !1790)
!1878 = !DILocation(line: 265, column: 8, scope: !1790)
!1879 = !DILocation(line: 265, column: 3, scope: !1790)
!1880 = !DILocation(line: 308, column: 3, scope: !1790)
!1881 = !DILocation(line: 315, column: 11, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 309, column: 5)
!1883 = !DILocation(line: 315, column: 12, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1882, file: !188, line: 315, column: 11)
!1885 = !DILocation(line: 316, column: 9, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1887, file: !188, discriminator: 1)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !188, line: 316, column: 9)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !188, line: 316, column: 9)
!1889 = !DILocation(line: 316, column: 9, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1888, file: !188, discriminator: 1)
!1891 = !DILocation(line: 316, column: 9, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1887, file: !188, discriminator: 2)
!1893 = !DILocation(line: 354, column: 26, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !188, line: 332, column: 11)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !188, line: 331, column: 13)
!1896 = distinct !DILexicalBlock(scope: !1882, file: !188, line: 330, column: 7)
!1897 = !DILocation(line: 355, column: 27, scope: !1894)
!1898 = !DILocation(line: 356, column: 11, scope: !1894)
!1899 = !DILocation(line: 357, column: 14, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !188, line: 357, column: 13)
!1901 = !DILocation(line: 357, column: 13, scope: !1896)
!1902 = !DILocation(line: 358, column: 43, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1904, file: !188, discriminator: 1)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !188, line: 358, column: 11)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !188, line: 358, column: 11)
!1906 = !DILocation(line: 358, column: 11, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1905, file: !188, discriminator: 1)
!1908 = !DILocation(line: 359, column: 13, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !188, discriminator: 1)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !188, line: 359, column: 13)
!1911 = distinct !DILexicalBlock(scope: !1904, file: !188, line: 359, column: 13)
!1912 = !DILocation(line: 359, column: 13, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1911, file: !188, discriminator: 1)
!1914 = !DILocation(line: 359, column: 13, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1910, file: !188, discriminator: 2)
!1916 = !DILocation(line: 359, column: 13, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1911, file: !188, discriminator: 3)
!1918 = !DILocation(line: 358, column: 70, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1904, file: !188, discriminator: 2)
!1920 = distinct !{!1920, !1921, !1922}
!1921 = !DILocation(line: 358, column: 11, scope: !1905)
!1922 = !DILocation(line: 359, column: 13, scope: !1905)
!1923 = !DILocation(line: 362, column: 28, scope: !1896)
!1924 = !DILocation(line: 364, column: 7, scope: !1882)
!1925 = !DILocation(line: 367, column: 7, scope: !1882)
!1926 = !DILocation(line: 370, column: 7, scope: !1882)
!1927 = !DILocation(line: 373, column: 12, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1882, file: !188, line: 373, column: 11)
!1929 = !DILocation(line: 373, column: 11, scope: !1882)
!1930 = !DILocation(line: 378, column: 12, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1882, file: !188, line: 378, column: 11)
!1932 = !DILocation(line: 378, column: 11, scope: !1882)
!1933 = !DILocation(line: 379, column: 9, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1935, file: !188, discriminator: 1)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !188, line: 379, column: 9)
!1936 = distinct !DILexicalBlock(scope: !1931, file: !188, line: 379, column: 9)
!1937 = !DILocation(line: 379, column: 9, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1936, file: !188, discriminator: 1)
!1939 = !DILocation(line: 379, column: 9, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1935, file: !188, discriminator: 2)
!1941 = !DILocation(line: 386, column: 7, scope: !1882)
!1942 = !DILocation(line: 389, column: 7, scope: !1882)
!1943 = !DILocation(line: 255, column: 10, scope: !1790)
!1944 = !DILocation(line: 392, column: 8, scope: !1819)
!1945 = !DILocation(line: 392, column: 27, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1818, file: !188, discriminator: 1)
!1947 = !DILocation(line: 392, column: 19, scope: !1946)
!1948 = !DILocation(line: 392, column: 60, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1818, file: !188, discriminator: 3)
!1950 = !DILocation(line: 392, column: 3, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1819, file: !188, discriminator: 4)
!1952 = !DILocation(line: 392, column: 41, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1818, file: !188, discriminator: 2)
!1954 = !DILocation(line: 392, column: 48, scope: !1953)
!1955 = !DILocation(line: 396, column: 12, scope: !1817)
!1956 = !DILocation(line: 397, column: 12, scope: !1817)
!1957 = !DILocation(line: 398, column: 12, scope: !1817)
!1958 = !DILocation(line: 401, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1817, file: !188, line: 400, column: 11)
!1960 = !DILocation(line: 403, column: 17, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1959, file: !188, discriminator: 1)
!1962 = !DILocation(line: 404, column: 39, scope: !1959)
!1963 = !DILocation(line: 408, column: 32, scope: !1959)
!1964 = !DILocation(line: 404, column: 19, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1959, file: !188, discriminator: 2)
!1966 = !DILocation(line: 404, column: 15, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1959, file: !188, discriminator: 4)
!1968 = !DILocation(line: 409, column: 11, scope: !1959)
!1969 = !DILocation(line: 409, column: 26, scope: !1961)
!1970 = !DILocation(line: 409, column: 14, scope: !1961)
!1971 = !DILocation(line: 400, column: 11, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1817, file: !188, discriminator: 1)
!1973 = !DILocation(line: 416, column: 11, scope: !1817)
!1974 = !DILocation(line: 394, column: 21, scope: !1817)
!1975 = !DILocation(line: 417, column: 7, scope: !1817)
!1976 = !DILocation(line: 420, column: 15, scope: !1826)
!1977 = !DILocation(line: 422, column: 15, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1979, file: !188, discriminator: 1)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !188, line: 422, column: 15)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !188, line: 421, column: 13)
!1981 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 420, column: 15)
!1982 = !DILocation(line: 422, column: 15, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1984, file: !188, discriminator: 4)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !188, line: 422, column: 15)
!1985 = !DILocation(line: 422, column: 15, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1984, file: !188, discriminator: 3)
!1987 = !DILocation(line: 422, column: 15, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1989, file: !188, discriminator: 6)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !188, line: 422, column: 15)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !188, line: 422, column: 15)
!1991 = distinct !DILexicalBlock(scope: !1984, file: !188, line: 422, column: 15)
!1992 = !DILocation(line: 422, column: 15, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1990, file: !188, discriminator: 6)
!1994 = !DILocation(line: 422, column: 15, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1989, file: !188, discriminator: 7)
!1996 = !DILocation(line: 422, column: 15, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1990, file: !188, discriminator: 8)
!1998 = !DILocation(line: 422, column: 15, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !2000, file: !188, discriminator: 11)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !188, line: 422, column: 15)
!2001 = distinct !DILexicalBlock(scope: !1991, file: !188, line: 422, column: 15)
!2002 = !DILocation(line: 422, column: 15, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2001, file: !188, discriminator: 11)
!2004 = !DILocation(line: 422, column: 15, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2000, file: !188, discriminator: 12)
!2006 = !DILocation(line: 422, column: 15, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2001, file: !188, discriminator: 13)
!2008 = !DILocation(line: 422, column: 15, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !188, discriminator: 16)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !188, line: 422, column: 15)
!2011 = distinct !DILexicalBlock(scope: !1991, file: !188, line: 422, column: 15)
!2012 = !DILocation(line: 422, column: 15, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2011, file: !188, discriminator: 16)
!2014 = !DILocation(line: 422, column: 15, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2010, file: !188, discriminator: 17)
!2016 = !DILocation(line: 422, column: 15, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2011, file: !188, discriminator: 18)
!2018 = !DILocation(line: 422, column: 15, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !1991, file: !188, discriminator: 20)
!2020 = !DILocation(line: 422, column: 15, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2022, file: !188, discriminator: 22)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !188, line: 422, column: 15)
!2023 = distinct !DILexicalBlock(scope: !1979, file: !188, line: 422, column: 15)
!2024 = !DILocation(line: 422, column: 15, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2023, file: !188, discriminator: 22)
!2026 = !DILocation(line: 422, column: 15, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2022, file: !188, discriminator: 23)
!2028 = !DILocation(line: 422, column: 15, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2023, file: !188, discriminator: 24)
!2030 = !DILocation(line: 430, column: 19, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1980, file: !188, line: 429, column: 19)
!2032 = !DILocation(line: 430, column: 24, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2031, file: !188, discriminator: 1)
!2034 = !DILocation(line: 430, column: 28, scope: !2033)
!2035 = !DILocation(line: 430, column: 38, scope: !2033)
!2036 = !DILocation(line: 430, column: 48, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2031, file: !188, discriminator: 2)
!2038 = !DILocation(line: 430, column: 59, scope: !2037)
!2039 = !DILocation(line: 432, column: 19, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2041, file: !188, discriminator: 1)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !188, line: 432, column: 19)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !188, line: 432, column: 19)
!2043 = distinct !DILexicalBlock(scope: !2031, file: !188, line: 431, column: 17)
!2044 = !DILocation(line: 432, column: 19, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2042, file: !188, discriminator: 1)
!2046 = !DILocation(line: 432, column: 19, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2041, file: !188, discriminator: 2)
!2048 = !DILocation(line: 432, column: 19, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2042, file: !188, discriminator: 3)
!2050 = !DILocation(line: 433, column: 19, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2052, file: !188, discriminator: 1)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !188, line: 433, column: 19)
!2053 = distinct !DILexicalBlock(scope: !2043, file: !188, line: 433, column: 19)
!2054 = !DILocation(line: 433, column: 19, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2053, file: !188, discriminator: 1)
!2056 = !DILocation(line: 433, column: 19, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2052, file: !188, discriminator: 2)
!2058 = !DILocation(line: 433, column: 19, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2053, file: !188, discriminator: 3)
!2060 = !DILocation(line: 434, column: 17, scope: !2043)
!2061 = !DILocation(line: 441, column: 20, scope: !1981)
!2062 = !DILocation(line: 446, column: 11, scope: !1826)
!2063 = !DILocation(line: 449, column: 19, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 447, column: 13)
!2065 = !DILocation(line: 455, column: 19, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2064, file: !188, line: 454, column: 19)
!2067 = !DILocation(line: 455, column: 24, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2066, file: !188, discriminator: 1)
!2069 = !DILocation(line: 455, column: 28, scope: !2068)
!2070 = !DILocation(line: 455, column: 38, scope: !2068)
!2071 = !DILocation(line: 455, column: 47, scope: !2072)
!2072 = !DILexicalBlockFile(scope: !2066, file: !188, discriminator: 2)
!2073 = !DILocation(line: 455, column: 41, scope: !2072)
!2074 = !DILocation(line: 455, column: 52, scope: !2072)
!2075 = !DILocation(line: 454, column: 19, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2064, file: !188, discriminator: 1)
!2077 = !DILocation(line: 456, column: 25, scope: !2066)
!2078 = !DILocation(line: 456, column: 17, scope: !2066)
!2079 = !DILocation(line: 463, column: 25, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2066, file: !188, line: 457, column: 19)
!2081 = !DILocation(line: 467, column: 21, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2083, file: !188, discriminator: 1)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !188, line: 467, column: 21)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !188, line: 467, column: 21)
!2085 = !DILocation(line: 467, column: 21, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2084, file: !188, discriminator: 1)
!2087 = !DILocation(line: 467, column: 21, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2083, file: !188, discriminator: 2)
!2089 = !DILocation(line: 467, column: 21, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2084, file: !188, discriminator: 3)
!2091 = !DILocation(line: 468, column: 21, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2093, file: !188, discriminator: 1)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !188, line: 468, column: 21)
!2094 = distinct !DILexicalBlock(scope: !2080, file: !188, line: 468, column: 21)
!2095 = !DILocation(line: 468, column: 21, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2094, file: !188, discriminator: 1)
!2097 = !DILocation(line: 468, column: 21, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2093, file: !188, discriminator: 2)
!2099 = !DILocation(line: 468, column: 21, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2094, file: !188, discriminator: 3)
!2101 = !DILocation(line: 469, column: 21, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2103, file: !188, discriminator: 1)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !188, line: 469, column: 21)
!2104 = distinct !DILexicalBlock(scope: !2080, file: !188, line: 469, column: 21)
!2105 = !DILocation(line: 469, column: 21, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2104, file: !188, discriminator: 1)
!2107 = !DILocation(line: 469, column: 21, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2103, file: !188, discriminator: 2)
!2109 = !DILocation(line: 469, column: 21, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2104, file: !188, discriminator: 3)
!2111 = !DILocation(line: 470, column: 21, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2113, file: !188, discriminator: 1)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !188, line: 470, column: 21)
!2114 = distinct !DILexicalBlock(scope: !2080, file: !188, line: 470, column: 21)
!2115 = !DILocation(line: 470, column: 21, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2114, file: !188, discriminator: 1)
!2117 = !DILocation(line: 470, column: 21, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2113, file: !188, discriminator: 2)
!2119 = !DILocation(line: 470, column: 21, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2114, file: !188, discriminator: 3)
!2121 = !DILocation(line: 471, column: 21, scope: !2080)
!2122 = !DILocation(line: 395, column: 21, scope: !1817)
!2123 = !DILocation(line: 484, column: 31, scope: !1826)
!2124 = !DILocation(line: 485, column: 31, scope: !1826)
!2125 = !DILocation(line: 487, column: 31, scope: !1826)
!2126 = !DILocation(line: 488, column: 31, scope: !1826)
!2127 = !DILocation(line: 489, column: 31, scope: !1826)
!2128 = !DILocation(line: 492, column: 15, scope: !1826)
!2129 = !DILocation(line: 494, column: 19, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !188, line: 493, column: 13)
!2131 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 492, column: 15)
!2132 = !DILocation(line: 501, column: 33, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 501, column: 15)
!2134 = !DILocation(line: 506, column: 15, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 505, column: 15)
!2136 = !DILocation(line: 510, column: 15, scope: !1826)
!2137 = !DILocation(line: 518, column: 26, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 518, column: 15)
!2139 = !DILocation(line: 518, column: 15, scope: !1826)
!2140 = !DILocation(line: 518, column: 40, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2138, file: !188, discriminator: 1)
!2142 = !DILocation(line: 518, column: 47, scope: !2141)
!2143 = !DILocation(line: 522, column: 17, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 522, column: 15)
!2145 = !DILocation(line: 518, column: 18, scope: !2141)
!2146 = !DILocation(line: 518, column: 65, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2138, file: !188, discriminator: 2)
!2148 = !DILocation(line: 518, column: 15, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !1826, file: !188, discriminator: 2)
!2150 = !DILocation(line: 522, column: 15, scope: !1826)
!2151 = !DILocation(line: 526, column: 11, scope: !1826)
!2152 = !DILocation(line: 541, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 540, column: 15)
!2154 = !DILocation(line: 548, column: 15, scope: !1826)
!2155 = !DILocation(line: 550, column: 19, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !188, line: 549, column: 13)
!2157 = distinct !DILexicalBlock(scope: !1826, file: !188, line: 548, column: 15)
!2158 = !DILocation(line: 553, column: 19, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2156, file: !188, line: 553, column: 19)
!2160 = !DILocation(line: 553, column: 35, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2159, file: !188, discriminator: 1)
!2162 = !DILocation(line: 553, column: 30, scope: !2159)
!2163 = !DILocation(line: 562, column: 15, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2165, file: !188, discriminator: 1)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !188, line: 562, column: 15)
!2166 = distinct !DILexicalBlock(scope: !2156, file: !188, line: 562, column: 15)
!2167 = !DILocation(line: 562, column: 15, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2166, file: !188, discriminator: 1)
!2169 = !DILocation(line: 562, column: 15, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2165, file: !188, discriminator: 2)
!2171 = !DILocation(line: 562, column: 15, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2166, file: !188, discriminator: 3)
!2173 = !DILocation(line: 563, column: 15, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2175, file: !188, discriminator: 1)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !188, line: 563, column: 15)
!2176 = distinct !DILexicalBlock(scope: !2156, file: !188, line: 563, column: 15)
!2177 = !DILocation(line: 563, column: 15, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2176, file: !188, discriminator: 1)
!2179 = !DILocation(line: 563, column: 15, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2175, file: !188, discriminator: 2)
!2181 = !DILocation(line: 563, column: 15, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2176, file: !188, discriminator: 3)
!2183 = !DILocation(line: 564, column: 15, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2185, file: !188, discriminator: 1)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !188, line: 564, column: 15)
!2186 = distinct !DILexicalBlock(scope: !2156, file: !188, line: 564, column: 15)
!2187 = !DILocation(line: 564, column: 15, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2186, file: !188, discriminator: 1)
!2189 = !DILocation(line: 564, column: 15, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2185, file: !188, discriminator: 2)
!2191 = !DILocation(line: 564, column: 15, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2186, file: !188, discriminator: 3)
!2193 = !DILocation(line: 566, column: 13, scope: !2156)
!2194 = !DILocation(line: 606, column: 17, scope: !1825)
!2195 = !DILocation(line: 602, column: 20, scope: !1825)
!2196 = !DILocation(line: 609, column: 29, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1830, file: !188, line: 607, column: 15)
!2198 = !{!1252, !1252, i64 0}
!2199 = !DILocation(line: 609, column: 27, scope: !2197)
!2200 = !DILocation(line: 604, column: 18, scope: !1825)
!2201 = !DILocation(line: 610, column: 15, scope: !2197)
!2202 = !DILocation(line: 613, column: 17, scope: !1829)
!2203 = !DILocation(line: 614, column: 17, scope: !1829)
!2204 = !DILocation(line: 618, column: 29, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !1829, file: !188, line: 618, column: 21)
!2206 = !DILocation(line: 618, column: 21, scope: !1829)
!2207 = distinct !{!2207, !2208, !2209}
!2208 = !DILocation(line: 621, column: 17, scope: !1829)
!2209 = !DILocation(line: 667, column: 44, scope: !1829)
!2210 = !DILocation(line: 619, column: 29, scope: !2205)
!2211 = !DILocation(line: 619, column: 19, scope: !2205)
!2212 = !DILocation(line: 623, column: 21, scope: !1846)
!2213 = !DILocation(line: 624, column: 56, scope: !1846)
!2214 = !DILocation(line: 624, column: 50, scope: !1846)
!2215 = !DILocation(line: 625, column: 53, scope: !1846)
!2216 = !DILocation(line: 613, column: 27, scope: !1829)
!2217 = !DILocation(line: 623, column: 29, scope: !1846)
!2218 = !DILocation(line: 624, column: 36, scope: !1846)
!2219 = !DILocation(line: 624, column: 28, scope: !1846)
!2220 = !DILocation(line: 626, column: 25, scope: !1846)
!2221 = !DILocation(line: 636, column: 38, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2223, file: !188, discriminator: 1)
!2223 = distinct !DILexicalBlock(scope: !1853, file: !188, line: 634, column: 23)
!2224 = !DILocation(line: 636, column: 48, scope: !2222)
!2225 = !DILocation(line: 636, column: 51, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2223, file: !188, discriminator: 2)
!2227 = !DILocation(line: 636, column: 48, scope: !2226)
!2228 = !DILocation(line: 636, column: 25, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2223, file: !188, discriminator: 3)
!2230 = !DILocation(line: 637, column: 28, scope: !2223)
!2231 = !DILocation(line: 636, column: 34, scope: !2222)
!2232 = distinct !{!2232, !2233, !2230}
!2233 = !DILocation(line: 636, column: 25, scope: !2223)
!2234 = !DILocation(line: 650, column: 43, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2236, file: !188, discriminator: 1)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !188, line: 650, column: 29)
!2237 = distinct !DILexicalBlock(scope: !1850, file: !188, line: 650, column: 29)
!2238 = !DILocation(line: 647, column: 29, scope: !1851)
!2239 = !DILocation(line: 649, column: 36, scope: !1850)
!2240 = !DILocation(line: 651, column: 49, scope: !2236)
!2241 = !DILocation(line: 651, column: 39, scope: !2236)
!2242 = !DILocation(line: 651, column: 31, scope: !2236)
!2243 = !DILocation(line: 650, column: 53, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2236, file: !188, discriminator: 2)
!2245 = !DILocation(line: 650, column: 29, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2237, file: !188, discriminator: 1)
!2247 = distinct !{!2247, !2248, !2249}
!2248 = !DILocation(line: 650, column: 29, scope: !2237)
!2249 = !DILocation(line: 659, column: 33, scope: !2237)
!2250 = !DILocation(line: 666, column: 19, scope: !1829)
!2251 = !DILocation(line: 662, column: 41, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !1852, file: !188, line: 662, column: 29)
!2253 = !DILocation(line: 662, column: 31, scope: !2252)
!2254 = !DILocation(line: 662, column: 29, scope: !1852)
!2255 = !DILocation(line: 664, column: 27, scope: !1852)
!2256 = !DILocation(line: 667, column: 26, scope: !1829)
!2257 = !DILocation(line: 667, column: 24, scope: !1829)
!2258 = !DILocation(line: 666, column: 19, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !1846, file: !188, discriminator: 3)
!2260 = !DILocation(line: 668, column: 15, scope: !1830)
!2261 = !DILocation(line: 670, column: 40, scope: !1825)
!2262 = !DILocation(line: 672, column: 19, scope: !1858)
!2263 = !DILocation(line: 672, column: 45, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !1858, file: !188, discriminator: 1)
!2265 = !DILocation(line: 672, column: 23, scope: !1858)
!2266 = !DILocation(line: 676, column: 33, scope: !1857)
!2267 = !DILocation(line: 676, column: 24, scope: !1857)
!2268 = !DILocation(line: 678, column: 17, scope: !1857)
!2269 = !DILocation(line: 680, column: 43, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !188, line: 680, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !188, line: 679, column: 19)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !188, line: 678, column: 17)
!2273 = distinct !DILexicalBlock(scope: !1857, file: !188, line: 678, column: 17)
!2274 = !DILocation(line: 682, column: 25, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !188, discriminator: 1)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !188, line: 682, column: 25)
!2277 = distinct !DILexicalBlock(scope: !2270, file: !188, line: 681, column: 23)
!2278 = !DILocation(line: 682, column: 25, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2280, file: !188, discriminator: 4)
!2280 = distinct !DILexicalBlock(scope: !2276, file: !188, line: 682, column: 25)
!2281 = !DILocation(line: 682, column: 25, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2280, file: !188, discriminator: 3)
!2283 = !DILocation(line: 682, column: 25, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2285, file: !188, discriminator: 6)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !188, line: 682, column: 25)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !188, line: 682, column: 25)
!2287 = distinct !DILexicalBlock(scope: !2280, file: !188, line: 682, column: 25)
!2288 = !DILocation(line: 682, column: 25, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2286, file: !188, discriminator: 6)
!2290 = !DILocation(line: 682, column: 25, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2285, file: !188, discriminator: 7)
!2292 = !DILocation(line: 682, column: 25, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2286, file: !188, discriminator: 8)
!2294 = !DILocation(line: 682, column: 25, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2296, file: !188, discriminator: 11)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !188, line: 682, column: 25)
!2297 = distinct !DILexicalBlock(scope: !2287, file: !188, line: 682, column: 25)
!2298 = !DILocation(line: 682, column: 25, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2297, file: !188, discriminator: 11)
!2300 = !DILocation(line: 682, column: 25, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2296, file: !188, discriminator: 12)
!2302 = !DILocation(line: 682, column: 25, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2297, file: !188, discriminator: 13)
!2304 = !DILocation(line: 682, column: 25, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2306, file: !188, discriminator: 16)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !188, line: 682, column: 25)
!2307 = distinct !DILexicalBlock(scope: !2287, file: !188, line: 682, column: 25)
!2308 = !DILocation(line: 682, column: 25, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2307, file: !188, discriminator: 16)
!2310 = !DILocation(line: 682, column: 25, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2306, file: !188, discriminator: 17)
!2312 = !DILocation(line: 682, column: 25, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2307, file: !188, discriminator: 18)
!2314 = !DILocation(line: 682, column: 25, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2287, file: !188, discriminator: 20)
!2316 = !DILocation(line: 682, column: 25, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2318, file: !188, discriminator: 22)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !188, line: 682, column: 25)
!2319 = distinct !DILexicalBlock(scope: !2276, file: !188, line: 682, column: 25)
!2320 = !DILocation(line: 682, column: 25, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2319, file: !188, discriminator: 22)
!2322 = !DILocation(line: 682, column: 25, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2318, file: !188, discriminator: 23)
!2324 = !DILocation(line: 682, column: 25, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2319, file: !188, discriminator: 24)
!2326 = !DILocation(line: 683, column: 25, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !188, discriminator: 1)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !188, line: 683, column: 25)
!2329 = distinct !DILexicalBlock(scope: !2277, file: !188, line: 683, column: 25)
!2330 = !DILocation(line: 683, column: 25, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2329, file: !188, discriminator: 1)
!2332 = !DILocation(line: 683, column: 25, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2328, file: !188, discriminator: 2)
!2334 = !DILocation(line: 683, column: 25, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2329, file: !188, discriminator: 3)
!2336 = !DILocation(line: 684, column: 25, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2338, file: !188, discriminator: 1)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !188, line: 684, column: 25)
!2339 = distinct !DILexicalBlock(scope: !2277, file: !188, line: 684, column: 25)
!2340 = !DILocation(line: 684, column: 25, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2339, file: !188, discriminator: 1)
!2342 = !DILocation(line: 684, column: 25, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2338, file: !188, discriminator: 2)
!2344 = !DILocation(line: 684, column: 25, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2339, file: !188, discriminator: 3)
!2346 = !DILocation(line: 685, column: 38, scope: !2277)
!2347 = !DILocation(line: 685, column: 33, scope: !2277)
!2348 = !DILocation(line: 686, column: 23, scope: !2277)
!2349 = !DILocation(line: 687, column: 30, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2270, file: !188, line: 687, column: 30)
!2351 = !DILocation(line: 687, column: 30, scope: !2270)
!2352 = !DILocation(line: 689, column: 25, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2354, file: !188, discriminator: 1)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !188, line: 689, column: 25)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !188, line: 689, column: 25)
!2356 = distinct !DILexicalBlock(scope: !2350, file: !188, line: 688, column: 23)
!2357 = !DILocation(line: 689, column: 25, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2355, file: !188, discriminator: 1)
!2359 = !DILocation(line: 689, column: 25, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2354, file: !188, discriminator: 2)
!2361 = !DILocation(line: 689, column: 25, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2355, file: !188, discriminator: 3)
!2363 = !DILocation(line: 691, column: 23, scope: !2356)
!2364 = !DILocation(line: 692, column: 35, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2271, file: !188, line: 692, column: 25)
!2366 = !DILocation(line: 692, column: 30, scope: !2365)
!2367 = !DILocation(line: 692, column: 25, scope: !2271)
!2368 = !DILocation(line: 694, column: 21, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2370, file: !188, discriminator: 1)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !188, line: 694, column: 21)
!2371 = distinct !DILexicalBlock(scope: !2271, file: !188, line: 694, column: 21)
!2372 = !DILocation(line: 694, column: 21, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2370, file: !188, discriminator: 2)
!2374 = !DILocation(line: 694, column: 21, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2376, file: !188, discriminator: 4)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !188, line: 694, column: 21)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !188, line: 694, column: 21)
!2378 = distinct !DILexicalBlock(scope: !2370, file: !188, line: 694, column: 21)
!2379 = !DILocation(line: 694, column: 21, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2377, file: !188, discriminator: 4)
!2381 = !DILocation(line: 694, column: 21, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2376, file: !188, discriminator: 5)
!2383 = !DILocation(line: 694, column: 21, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2377, file: !188, discriminator: 6)
!2385 = !DILocation(line: 694, column: 21, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2387, file: !188, discriminator: 9)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !188, line: 694, column: 21)
!2388 = distinct !DILexicalBlock(scope: !2378, file: !188, line: 694, column: 21)
!2389 = !DILocation(line: 694, column: 21, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2388, file: !188, discriminator: 9)
!2391 = !DILocation(line: 694, column: 21, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2387, file: !188, discriminator: 10)
!2393 = !DILocation(line: 694, column: 21, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2388, file: !188, discriminator: 11)
!2395 = !DILocation(line: 694, column: 21, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2378, file: !188, discriminator: 13)
!2397 = !DILocation(line: 695, column: 21, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2399, file: !188, discriminator: 1)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !188, line: 695, column: 21)
!2400 = distinct !DILexicalBlock(scope: !2271, file: !188, line: 695, column: 21)
!2401 = !DILocation(line: 695, column: 21, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2400, file: !188, discriminator: 1)
!2403 = !DILocation(line: 695, column: 21, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2399, file: !188, discriminator: 2)
!2405 = !DILocation(line: 695, column: 21, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2400, file: !188, discriminator: 3)
!2407 = !DILocation(line: 696, column: 25, scope: !2271)
!2408 = !DILocation(line: 678, column: 17, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2272, file: !188, discriminator: 1)
!2410 = distinct !{!2410, !2411, !2412}
!2411 = !DILocation(line: 678, column: 17, scope: !2273)
!2412 = !DILocation(line: 697, column: 19, scope: !2273)
!2413 = !DILocation(line: 704, column: 34, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !1817, file: !188, line: 704, column: 11)
!2415 = !DILocation(line: 706, column: 14, scope: !2414)
!2416 = !DILocation(line: 707, column: 14, scope: !2414)
!2417 = !DILocation(line: 707, column: 35, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2414, file: !188, discriminator: 1)
!2419 = !DILocation(line: 707, column: 17, scope: !2418)
!2420 = !DILocation(line: 707, column: 53, scope: !2418)
!2421 = !DILocation(line: 707, column: 47, scope: !2418)
!2422 = !DILocation(line: 707, column: 65, scope: !2418)
!2423 = !DILocation(line: 708, column: 15, scope: !2418)
!2424 = !DILocation(line: 708, column: 11, scope: !2414)
!2425 = !DILocation(line: 704, column: 11, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !1817, file: !188, discriminator: 2)
!2427 = !DILocation(line: 712, column: 7, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2429, file: !188, discriminator: 1)
!2429 = distinct !DILexicalBlock(scope: !1817, file: !188, line: 712, column: 7)
!2430 = !DILocation(line: 712, column: 7, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2432, file: !188, discriminator: 4)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !188, line: 712, column: 7)
!2433 = !DILocation(line: 712, column: 7, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2432, file: !188, discriminator: 3)
!2435 = !DILocation(line: 712, column: 7, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2437, file: !188, discriminator: 6)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !188, line: 712, column: 7)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !188, line: 712, column: 7)
!2439 = distinct !DILexicalBlock(scope: !2432, file: !188, line: 712, column: 7)
!2440 = !DILocation(line: 712, column: 7, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2438, file: !188, discriminator: 6)
!2442 = !DILocation(line: 712, column: 7, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2437, file: !188, discriminator: 7)
!2444 = !DILocation(line: 712, column: 7, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2438, file: !188, discriminator: 8)
!2446 = !DILocation(line: 712, column: 7, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2448, file: !188, discriminator: 11)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !188, line: 712, column: 7)
!2449 = distinct !DILexicalBlock(scope: !2439, file: !188, line: 712, column: 7)
!2450 = !DILocation(line: 712, column: 7, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2449, file: !188, discriminator: 11)
!2452 = !DILocation(line: 712, column: 7, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2448, file: !188, discriminator: 12)
!2454 = !DILocation(line: 712, column: 7, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2449, file: !188, discriminator: 13)
!2456 = !DILocation(line: 712, column: 7, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2458, file: !188, discriminator: 16)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !188, line: 712, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2439, file: !188, line: 712, column: 7)
!2460 = !DILocation(line: 712, column: 7, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2459, file: !188, discriminator: 16)
!2462 = !DILocation(line: 712, column: 7, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2458, file: !188, discriminator: 17)
!2464 = !DILocation(line: 712, column: 7, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2459, file: !188, discriminator: 18)
!2466 = !DILocation(line: 712, column: 7, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2439, file: !188, discriminator: 20)
!2468 = !DILocation(line: 712, column: 7, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2470, file: !188, discriminator: 22)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !188, line: 712, column: 7)
!2471 = distinct !DILexicalBlock(scope: !2429, file: !188, line: 712, column: 7)
!2472 = !DILocation(line: 712, column: 7, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2471, file: !188, discriminator: 22)
!2474 = !DILocation(line: 712, column: 7, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2470, file: !188, discriminator: 23)
!2476 = !DILocation(line: 712, column: 7, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2471, file: !188, discriminator: 24)
!2478 = !DILocation(line: 715, column: 7, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2480, file: !188, discriminator: 1)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !188, line: 715, column: 7)
!2481 = distinct !DILexicalBlock(scope: !1817, file: !188, line: 715, column: 7)
!2482 = !DILocation(line: 715, column: 7, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2480, file: !188, discriminator: 2)
!2484 = !DILocation(line: 715, column: 7, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2486, file: !188, discriminator: 4)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !188, line: 715, column: 7)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !188, line: 715, column: 7)
!2488 = distinct !DILexicalBlock(scope: !2480, file: !188, line: 715, column: 7)
!2489 = !DILocation(line: 715, column: 7, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2487, file: !188, discriminator: 4)
!2491 = !DILocation(line: 715, column: 7, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2486, file: !188, discriminator: 5)
!2493 = !DILocation(line: 715, column: 7, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2487, file: !188, discriminator: 6)
!2495 = !DILocation(line: 715, column: 7, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2497, file: !188, discriminator: 9)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !188, line: 715, column: 7)
!2498 = distinct !DILexicalBlock(scope: !2488, file: !188, line: 715, column: 7)
!2499 = !DILocation(line: 715, column: 7, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2498, file: !188, discriminator: 9)
!2501 = !DILocation(line: 715, column: 7, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2497, file: !188, discriminator: 10)
!2503 = !DILocation(line: 715, column: 7, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2498, file: !188, discriminator: 11)
!2505 = !DILocation(line: 715, column: 7, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2488, file: !188, discriminator: 13)
!2507 = !DILocation(line: 716, column: 7, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2509, file: !188, discriminator: 1)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !188, line: 716, column: 7)
!2510 = distinct !DILexicalBlock(scope: !1817, file: !188, line: 716, column: 7)
!2511 = !DILocation(line: 716, column: 7, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2510, file: !188, discriminator: 1)
!2513 = !DILocation(line: 716, column: 7, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2509, file: !188, discriminator: 2)
!2515 = !DILocation(line: 716, column: 7, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2510, file: !188, discriminator: 3)
!2517 = !DILocation(line: 718, column: 13, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !1817, file: !188, line: 718, column: 11)
!2519 = !DILocation(line: 718, column: 11, scope: !1817)
!2520 = !DILocation(line: 720, column: 5, scope: !1818)
!2521 = !DILocation(line: 392, column: 75, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !1818, file: !188, discriminator: 5)
!2523 = !DILocation(line: 392, column: 3, scope: !2522)
!2524 = distinct !{!2524, !2525, !2526}
!2525 = !DILocation(line: 392, column: 3, scope: !1819)
!2526 = !DILocation(line: 720, column: 5, scope: !1819)
!2527 = !DILocation(line: 722, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 722, column: 7)
!2529 = !DILocation(line: 722, column: 16, scope: !2528)
!2530 = !DILocation(line: 730, column: 51, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 730, column: 7)
!2532 = !DILocation(line: 731, column: 10, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2531, file: !188, discriminator: 1)
!2534 = !DILocation(line: 733, column: 11, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !188, line: 733, column: 11)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !188, line: 732, column: 5)
!2537 = !DILocation(line: 733, column: 11, scope: !2536)
!2538 = !DILocation(line: 734, column: 16, scope: !2535)
!2539 = !DILocation(line: 734, column: 9, scope: !2535)
!2540 = !DILocation(line: 738, column: 18, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2535, file: !188, line: 738, column: 16)
!2542 = !DILocation(line: 738, column: 32, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2541, file: !188, discriminator: 1)
!2544 = !DILocation(line: 738, column: 29, scope: !2541)
!2545 = !DILocation(line: 747, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 747, column: 7)
!2547 = !DILocation(line: 747, column: 20, scope: !2546)
!2548 = !DILocation(line: 748, column: 12, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !188, discriminator: 1)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !188, line: 748, column: 5)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !188, line: 748, column: 5)
!2552 = !DILocation(line: 748, column: 5, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2551, file: !188, discriminator: 1)
!2554 = !DILocation(line: 749, column: 7, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2556, file: !188, discriminator: 1)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !188, line: 749, column: 7)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !188, line: 749, column: 7)
!2558 = !DILocation(line: 749, column: 7, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2557, file: !188, discriminator: 1)
!2560 = !DILocation(line: 749, column: 7, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2556, file: !188, discriminator: 2)
!2562 = !DILocation(line: 749, column: 7, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2557, file: !188, discriminator: 3)
!2564 = !DILocation(line: 748, column: 39, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2550, file: !188, discriminator: 2)
!2566 = distinct !{!2566, !2567, !2568}
!2567 = !DILocation(line: 748, column: 5, scope: !2551)
!2568 = !DILocation(line: 749, column: 7, scope: !2551)
!2569 = !DILocation(line: 751, column: 11, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 751, column: 7)
!2571 = !DILocation(line: 751, column: 7, scope: !1790)
!2572 = !DILocation(line: 752, column: 5, scope: !2570)
!2573 = !DILocation(line: 752, column: 17, scope: !2570)
!2574 = !DILocation(line: 758, column: 21, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !1790, file: !188, line: 758, column: 7)
!2576 = !DILocation(line: 758, column: 54, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2575, file: !188, discriminator: 1)
!2578 = !DILocation(line: 758, column: 51, scope: !2575)
!2579 = !DILocation(line: 762, column: 42, scope: !1790)
!2580 = !DILocation(line: 760, column: 10, scope: !1790)
!2581 = !DILocation(line: 760, column: 3, scope: !1790)
!2582 = !DILocation(line: 764, column: 1, scope: !1790)
!2583 = distinct !DISubprogram(name: "gettext_quote", scope: !188, file: !188, line: 199, type: !2584, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!17, !17, !149}
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "msgid", arg: 1, scope: !2583, file: !188, line: 199, type: !17)
!2588 = !DILocalVariable(name: "s", arg: 2, scope: !2583, file: !188, line: 199, type: !149)
!2589 = !DILocalVariable(name: "translation", scope: !2583, file: !188, line: 201, type: !17)
!2590 = !DILocalVariable(name: "locale_code", scope: !2583, file: !188, line: 202, type: !17)
!2591 = !DILocation(line: 199, column: 28, scope: !2583)
!2592 = !DILocation(line: 199, column: 54, scope: !2583)
!2593 = !DILocation(line: 201, column: 29, scope: !2583)
!2594 = !DILocation(line: 201, column: 15, scope: !2583)
!2595 = !DILocation(line: 204, column: 19, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2583, file: !188, line: 204, column: 7)
!2597 = !DILocation(line: 204, column: 7, scope: !2583)
!2598 = !DILocation(line: 225, column: 17, scope: !2583)
!2599 = !DILocation(line: 202, column: 15, scope: !2583)
!2600 = !DILocalVariable(name: "s2", arg: 2, scope: !2601, file: !2602, line: 160, type: !17)
!2601 = distinct !DISubprogram(name: "strcaseeq0", scope: !2602, file: !2602, line: 160, type: !2603, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2605)
!2602 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!62, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2605 = !{!2606, !2600, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2606 = !DILocalVariable(name: "s1", arg: 1, scope: !2601, file: !2602, line: 160, type: !17)
!2607 = !DILocalVariable(name: "s20", arg: 3, scope: !2601, file: !2602, line: 160, type: !7)
!2608 = !DILocalVariable(name: "s21", arg: 4, scope: !2601, file: !2602, line: 160, type: !7)
!2609 = !DILocalVariable(name: "s22", arg: 5, scope: !2601, file: !2602, line: 160, type: !7)
!2610 = !DILocalVariable(name: "s23", arg: 6, scope: !2601, file: !2602, line: 160, type: !7)
!2611 = !DILocalVariable(name: "s24", arg: 7, scope: !2601, file: !2602, line: 160, type: !7)
!2612 = !DILocalVariable(name: "s25", arg: 8, scope: !2601, file: !2602, line: 160, type: !7)
!2613 = !DILocalVariable(name: "s26", arg: 9, scope: !2601, file: !2602, line: 160, type: !7)
!2614 = !DILocalVariable(name: "s27", arg: 10, scope: !2601, file: !2602, line: 160, type: !7)
!2615 = !DILocalVariable(name: "s28", arg: 11, scope: !2601, file: !2602, line: 160, type: !7)
!2616 = !DILocation(line: 160, column: 41, scope: !2601, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 226, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2583, file: !188, line: 226, column: 7)
!2619 = !DILocation(line: 160, column: 120, scope: !2601, inlinedAt: !2617)
!2620 = !DILocation(line: 160, column: 130, scope: !2601, inlinedAt: !2617)
!2621 = !DILocation(line: 162, column: 7, scope: !2622, inlinedAt: !2617)
!2622 = !DILexicalBlockFile(scope: !2623, file: !2602, discriminator: 1)
!2623 = distinct !DILexicalBlock(scope: !2601, file: !2602, line: 162, column: 7)
!2624 = !DILocalVariable(name: "s2", arg: 2, scope: !2625, file: !2602, line: 146, type: !17)
!2625 = distinct !DISubprogram(name: "strcaseeq1", scope: !2602, file: !2602, line: 146, type: !2626, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!62, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!2628 = !{!2629, !2624, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637}
!2629 = !DILocalVariable(name: "s1", arg: 1, scope: !2625, file: !2602, line: 146, type: !17)
!2630 = !DILocalVariable(name: "s21", arg: 3, scope: !2625, file: !2602, line: 146, type: !7)
!2631 = !DILocalVariable(name: "s22", arg: 4, scope: !2625, file: !2602, line: 146, type: !7)
!2632 = !DILocalVariable(name: "s23", arg: 5, scope: !2625, file: !2602, line: 146, type: !7)
!2633 = !DILocalVariable(name: "s24", arg: 6, scope: !2625, file: !2602, line: 146, type: !7)
!2634 = !DILocalVariable(name: "s25", arg: 7, scope: !2625, file: !2602, line: 146, type: !7)
!2635 = !DILocalVariable(name: "s26", arg: 8, scope: !2625, file: !2602, line: 146, type: !7)
!2636 = !DILocalVariable(name: "s27", arg: 9, scope: !2625, file: !2602, line: 146, type: !7)
!2637 = !DILocalVariable(name: "s28", arg: 10, scope: !2625, file: !2602, line: 146, type: !7)
!2638 = !DILocation(line: 146, column: 41, scope: !2625, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 167, column: 16, scope: !2640, inlinedAt: !2617)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !2602, line: 164, column: 11)
!2641 = distinct !DILexicalBlock(scope: !2623, file: !2602, line: 163, column: 5)
!2642 = !DILocation(line: 146, column: 110, scope: !2625, inlinedAt: !2639)
!2643 = !DILocation(line: 146, column: 120, scope: !2625, inlinedAt: !2639)
!2644 = !DILocation(line: 148, column: 7, scope: !2645, inlinedAt: !2639)
!2645 = !DILexicalBlockFile(scope: !2646, file: !2602, discriminator: 1)
!2646 = distinct !DILexicalBlock(scope: !2625, file: !2602, line: 148, column: 7)
!2647 = !DILocalVariable(name: "s2", arg: 2, scope: !2648, file: !2602, line: 132, type: !17)
!2648 = distinct !DISubprogram(name: "strcaseeq2", scope: !2602, file: !2602, line: 132, type: !2649, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!62, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!2651 = !{!2652, !2647, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2652 = !DILocalVariable(name: "s1", arg: 1, scope: !2648, file: !2602, line: 132, type: !17)
!2653 = !DILocalVariable(name: "s22", arg: 3, scope: !2648, file: !2602, line: 132, type: !7)
!2654 = !DILocalVariable(name: "s23", arg: 4, scope: !2648, file: !2602, line: 132, type: !7)
!2655 = !DILocalVariable(name: "s24", arg: 5, scope: !2648, file: !2602, line: 132, type: !7)
!2656 = !DILocalVariable(name: "s25", arg: 6, scope: !2648, file: !2602, line: 132, type: !7)
!2657 = !DILocalVariable(name: "s26", arg: 7, scope: !2648, file: !2602, line: 132, type: !7)
!2658 = !DILocalVariable(name: "s27", arg: 8, scope: !2648, file: !2602, line: 132, type: !7)
!2659 = !DILocalVariable(name: "s28", arg: 9, scope: !2648, file: !2602, line: 132, type: !7)
!2660 = !DILocation(line: 132, column: 41, scope: !2648, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 153, column: 16, scope: !2662, inlinedAt: !2639)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !2602, line: 150, column: 11)
!2663 = distinct !DILexicalBlock(scope: !2646, file: !2602, line: 149, column: 5)
!2664 = !DILocation(line: 132, column: 100, scope: !2648, inlinedAt: !2661)
!2665 = !DILocation(line: 132, column: 110, scope: !2648, inlinedAt: !2661)
!2666 = !DILocation(line: 134, column: 7, scope: !2667, inlinedAt: !2661)
!2667 = !DILexicalBlockFile(scope: !2668, file: !2602, discriminator: 1)
!2668 = distinct !DILexicalBlock(scope: !2648, file: !2602, line: 134, column: 7)
!2669 = !DILocalVariable(name: "s2", arg: 2, scope: !2670, file: !2602, line: 118, type: !17)
!2670 = distinct !DISubprogram(name: "strcaseeq3", scope: !2602, file: !2602, line: 118, type: !2671, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!62, !17, !17, !7, !7, !7, !7, !7, !7}
!2673 = !{!2674, !2669, !2675, !2676, !2677, !2678, !2679, !2680}
!2674 = !DILocalVariable(name: "s1", arg: 1, scope: !2670, file: !2602, line: 118, type: !17)
!2675 = !DILocalVariable(name: "s23", arg: 3, scope: !2670, file: !2602, line: 118, type: !7)
!2676 = !DILocalVariable(name: "s24", arg: 4, scope: !2670, file: !2602, line: 118, type: !7)
!2677 = !DILocalVariable(name: "s25", arg: 5, scope: !2670, file: !2602, line: 118, type: !7)
!2678 = !DILocalVariable(name: "s26", arg: 6, scope: !2670, file: !2602, line: 118, type: !7)
!2679 = !DILocalVariable(name: "s27", arg: 7, scope: !2670, file: !2602, line: 118, type: !7)
!2680 = !DILocalVariable(name: "s28", arg: 8, scope: !2670, file: !2602, line: 118, type: !7)
!2681 = !DILocation(line: 118, column: 41, scope: !2670, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 139, column: 16, scope: !2683, inlinedAt: !2661)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !2602, line: 136, column: 11)
!2684 = distinct !DILexicalBlock(scope: !2668, file: !2602, line: 135, column: 5)
!2685 = !DILocation(line: 118, column: 90, scope: !2670, inlinedAt: !2682)
!2686 = !DILocation(line: 118, column: 100, scope: !2670, inlinedAt: !2682)
!2687 = !DILocation(line: 120, column: 7, scope: !2688, inlinedAt: !2682)
!2688 = !DILexicalBlockFile(scope: !2689, file: !2602, discriminator: 2)
!2689 = distinct !DILexicalBlock(scope: !2670, file: !2602, line: 120, column: 7)
!2690 = !DILocation(line: 120, column: 7, scope: !2691, inlinedAt: !2682)
!2691 = !DILexicalBlockFile(scope: !2670, file: !2602, discriminator: 2)
!2692 = !DILocalVariable(name: "s2", arg: 2, scope: !2693, file: !2602, line: 104, type: !17)
!2693 = distinct !DISubprogram(name: "strcaseeq4", scope: !2602, file: !2602, line: 104, type: !2694, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!62, !17, !17, !7, !7, !7, !7, !7}
!2696 = !{!2697, !2692, !2698, !2699, !2700, !2701, !2702}
!2697 = !DILocalVariable(name: "s1", arg: 1, scope: !2693, file: !2602, line: 104, type: !17)
!2698 = !DILocalVariable(name: "s24", arg: 3, scope: !2693, file: !2602, line: 104, type: !7)
!2699 = !DILocalVariable(name: "s25", arg: 4, scope: !2693, file: !2602, line: 104, type: !7)
!2700 = !DILocalVariable(name: "s26", arg: 5, scope: !2693, file: !2602, line: 104, type: !7)
!2701 = !DILocalVariable(name: "s27", arg: 6, scope: !2693, file: !2602, line: 104, type: !7)
!2702 = !DILocalVariable(name: "s28", arg: 7, scope: !2693, file: !2602, line: 104, type: !7)
!2703 = !DILocation(line: 104, column: 41, scope: !2693, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 125, column: 16, scope: !2705, inlinedAt: !2682)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !2602, line: 122, column: 11)
!2706 = distinct !DILexicalBlock(scope: !2689, file: !2602, line: 121, column: 5)
!2707 = !DILocation(line: 104, column: 80, scope: !2693, inlinedAt: !2704)
!2708 = !DILocation(line: 104, column: 90, scope: !2693, inlinedAt: !2704)
!2709 = !DILocation(line: 106, column: 7, scope: !2710, inlinedAt: !2704)
!2710 = !DILexicalBlockFile(scope: !2711, file: !2602, discriminator: 2)
!2711 = distinct !DILexicalBlock(scope: !2693, file: !2602, line: 106, column: 7)
!2712 = !DILocation(line: 106, column: 7, scope: !2713, inlinedAt: !2704)
!2713 = !DILexicalBlockFile(scope: !2693, file: !2602, discriminator: 2)
!2714 = !DILocalVariable(name: "s2", arg: 2, scope: !2715, file: !2602, line: 90, type: !17)
!2715 = distinct !DISubprogram(name: "strcaseeq5", scope: !2602, file: !2602, line: 90, type: !2716, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!62, !17, !17, !7, !7, !7, !7}
!2718 = !{!2719, !2714, !2720, !2721, !2722, !2723}
!2719 = !DILocalVariable(name: "s1", arg: 1, scope: !2715, file: !2602, line: 90, type: !17)
!2720 = !DILocalVariable(name: "s25", arg: 3, scope: !2715, file: !2602, line: 90, type: !7)
!2721 = !DILocalVariable(name: "s26", arg: 4, scope: !2715, file: !2602, line: 90, type: !7)
!2722 = !DILocalVariable(name: "s27", arg: 5, scope: !2715, file: !2602, line: 90, type: !7)
!2723 = !DILocalVariable(name: "s28", arg: 6, scope: !2715, file: !2602, line: 90, type: !7)
!2724 = !DILocation(line: 90, column: 41, scope: !2715, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 111, column: 16, scope: !2726, inlinedAt: !2704)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !2602, line: 108, column: 11)
!2727 = distinct !DILexicalBlock(scope: !2711, file: !2602, line: 107, column: 5)
!2728 = !DILocation(line: 90, column: 70, scope: !2715, inlinedAt: !2725)
!2729 = !DILocation(line: 90, column: 80, scope: !2715, inlinedAt: !2725)
!2730 = !DILocation(line: 92, column: 7, scope: !2731, inlinedAt: !2725)
!2731 = !DILexicalBlockFile(scope: !2732, file: !2602, discriminator: 2)
!2732 = distinct !DILexicalBlock(scope: !2715, file: !2602, line: 92, column: 7)
!2733 = !DILocation(line: 92, column: 7, scope: !2734, inlinedAt: !2725)
!2734 = !DILexicalBlockFile(scope: !2715, file: !2602, discriminator: 2)
!2735 = !DILocation(line: 227, column: 12, scope: !2618)
!2736 = !DILocation(line: 227, column: 21, scope: !2618)
!2737 = !DILocation(line: 227, column: 5, scope: !2618)
!2738 = !DILocation(line: 146, column: 41, scope: !2625, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 167, column: 16, scope: !2640, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 228, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2583, file: !188, line: 228, column: 7)
!2742 = !DILocation(line: 146, column: 110, scope: !2625, inlinedAt: !2739)
!2743 = !DILocation(line: 146, column: 120, scope: !2625, inlinedAt: !2739)
!2744 = !DILocation(line: 148, column: 7, scope: !2645, inlinedAt: !2739)
!2745 = !DILocation(line: 132, column: 41, scope: !2648, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 153, column: 16, scope: !2662, inlinedAt: !2739)
!2747 = !DILocation(line: 132, column: 100, scope: !2648, inlinedAt: !2746)
!2748 = !DILocation(line: 132, column: 110, scope: !2648, inlinedAt: !2746)
!2749 = !DILocation(line: 134, column: 7, scope: !2750, inlinedAt: !2746)
!2750 = !DILexicalBlockFile(scope: !2668, file: !2602, discriminator: 2)
!2751 = !DILocation(line: 134, column: 7, scope: !2752, inlinedAt: !2746)
!2752 = !DILexicalBlockFile(scope: !2648, file: !2602, discriminator: 2)
!2753 = !DILocation(line: 118, column: 41, scope: !2670, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 139, column: 16, scope: !2683, inlinedAt: !2746)
!2755 = !DILocation(line: 118, column: 90, scope: !2670, inlinedAt: !2754)
!2756 = !DILocation(line: 118, column: 100, scope: !2670, inlinedAt: !2754)
!2757 = !DILocation(line: 120, column: 7, scope: !2688, inlinedAt: !2754)
!2758 = !DILocation(line: 120, column: 7, scope: !2691, inlinedAt: !2754)
!2759 = !DILocation(line: 104, column: 41, scope: !2693, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 125, column: 16, scope: !2705, inlinedAt: !2754)
!2761 = !DILocation(line: 104, column: 80, scope: !2693, inlinedAt: !2760)
!2762 = !DILocation(line: 104, column: 90, scope: !2693, inlinedAt: !2760)
!2763 = !DILocation(line: 106, column: 7, scope: !2710, inlinedAt: !2760)
!2764 = !DILocation(line: 106, column: 7, scope: !2713, inlinedAt: !2760)
!2765 = !DILocation(line: 90, column: 41, scope: !2715, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 111, column: 16, scope: !2726, inlinedAt: !2760)
!2767 = !DILocation(line: 90, column: 70, scope: !2715, inlinedAt: !2766)
!2768 = !DILocation(line: 90, column: 80, scope: !2715, inlinedAt: !2766)
!2769 = !DILocation(line: 92, column: 7, scope: !2731, inlinedAt: !2766)
!2770 = !DILocation(line: 92, column: 7, scope: !2734, inlinedAt: !2766)
!2771 = !DILocalVariable(name: "s2", arg: 2, scope: !2772, file: !2602, line: 76, type: !17)
!2772 = distinct !DISubprogram(name: "strcaseeq6", scope: !2602, file: !2602, line: 76, type: !2773, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!62, !17, !17, !7, !7, !7}
!2775 = !{!2776, !2771, !2777, !2778, !2779}
!2776 = !DILocalVariable(name: "s1", arg: 1, scope: !2772, file: !2602, line: 76, type: !17)
!2777 = !DILocalVariable(name: "s26", arg: 3, scope: !2772, file: !2602, line: 76, type: !7)
!2778 = !DILocalVariable(name: "s27", arg: 4, scope: !2772, file: !2602, line: 76, type: !7)
!2779 = !DILocalVariable(name: "s28", arg: 5, scope: !2772, file: !2602, line: 76, type: !7)
!2780 = !DILocation(line: 76, column: 41, scope: !2772, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 97, column: 16, scope: !2782, inlinedAt: !2766)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !2602, line: 94, column: 11)
!2783 = distinct !DILexicalBlock(scope: !2732, file: !2602, line: 93, column: 5)
!2784 = !DILocation(line: 76, column: 60, scope: !2772, inlinedAt: !2781)
!2785 = !DILocation(line: 76, column: 70, scope: !2772, inlinedAt: !2781)
!2786 = !DILocation(line: 78, column: 7, scope: !2787, inlinedAt: !2781)
!2787 = !DILexicalBlockFile(scope: !2788, file: !2602, discriminator: 2)
!2788 = distinct !DILexicalBlock(scope: !2772, file: !2602, line: 78, column: 7)
!2789 = !DILocation(line: 78, column: 7, scope: !2790, inlinedAt: !2781)
!2790 = !DILexicalBlockFile(scope: !2772, file: !2602, discriminator: 2)
!2791 = !DILocalVariable(name: "s2", arg: 2, scope: !2792, file: !2602, line: 62, type: !17)
!2792 = distinct !DISubprogram(name: "strcaseeq7", scope: !2602, file: !2602, line: 62, type: !2793, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!62, !17, !17, !7, !7}
!2795 = !{!2796, !2791, !2797, !2798}
!2796 = !DILocalVariable(name: "s1", arg: 1, scope: !2792, file: !2602, line: 62, type: !17)
!2797 = !DILocalVariable(name: "s27", arg: 3, scope: !2792, file: !2602, line: 62, type: !7)
!2798 = !DILocalVariable(name: "s28", arg: 4, scope: !2792, file: !2602, line: 62, type: !7)
!2799 = !DILocation(line: 62, column: 41, scope: !2792, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 83, column: 16, scope: !2801, inlinedAt: !2781)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !2602, line: 80, column: 11)
!2802 = distinct !DILexicalBlock(scope: !2788, file: !2602, line: 79, column: 5)
!2803 = !DILocation(line: 62, column: 50, scope: !2792, inlinedAt: !2800)
!2804 = !DILocation(line: 62, column: 60, scope: !2792, inlinedAt: !2800)
!2805 = !DILocation(line: 64, column: 7, scope: !2806, inlinedAt: !2800)
!2806 = !DILexicalBlockFile(scope: !2807, file: !2602, discriminator: 2)
!2807 = distinct !DILexicalBlock(scope: !2792, file: !2602, line: 64, column: 7)
!2808 = !DILocation(line: 228, column: 7, scope: !2583)
!2809 = !DILocation(line: 229, column: 12, scope: !2741)
!2810 = !DILocation(line: 229, column: 21, scope: !2741)
!2811 = !DILocation(line: 229, column: 5, scope: !2741)
!2812 = !DILocation(line: 231, column: 13, scope: !2583)
!2813 = !DILocation(line: 231, column: 11, scope: !2583)
!2814 = !DILocation(line: 231, column: 3, scope: !2583)
!2815 = !DILocation(line: 232, column: 1, scope: !2583)
!2816 = distinct !DISubprogram(name: "quotearg_alloc", scope: !188, file: !188, line: 791, type: !2817, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!6, !17, !9, !1658}
!2819 = !{!2820, !2821, !2822}
!2820 = !DILocalVariable(name: "arg", arg: 1, scope: !2816, file: !188, line: 791, type: !17)
!2821 = !DILocalVariable(name: "argsize", arg: 2, scope: !2816, file: !188, line: 791, type: !9)
!2822 = !DILocalVariable(name: "o", arg: 3, scope: !2816, file: !188, line: 792, type: !1658)
!2823 = !DILocation(line: 791, column: 29, scope: !2816)
!2824 = !DILocation(line: 791, column: 41, scope: !2816)
!2825 = !DILocation(line: 792, column: 47, scope: !2816)
!2826 = !DILocalVariable(name: "arg", arg: 1, scope: !2827, file: !188, line: 804, type: !17)
!2827 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !188, file: !188, line: 804, type: !2828, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!6, !17, !9, !684, !1658}
!2830 = !{!2826, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838}
!2831 = !DILocalVariable(name: "argsize", arg: 2, scope: !2827, file: !188, line: 804, type: !9)
!2832 = !DILocalVariable(name: "size", arg: 3, scope: !2827, file: !188, line: 804, type: !684)
!2833 = !DILocalVariable(name: "o", arg: 4, scope: !2827, file: !188, line: 805, type: !1658)
!2834 = !DILocalVariable(name: "p", scope: !2827, file: !188, line: 807, type: !1658)
!2835 = !DILocalVariable(name: "e", scope: !2827, file: !188, line: 808, type: !62)
!2836 = !DILocalVariable(name: "flags", scope: !2827, file: !188, line: 810, type: !62)
!2837 = !DILocalVariable(name: "bufsize", scope: !2827, file: !188, line: 811, type: !9)
!2838 = !DILocalVariable(name: "buf", scope: !2827, file: !188, line: 815, type: !6)
!2839 = !DILocation(line: 804, column: 33, scope: !2827, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 794, column: 10, scope: !2816)
!2841 = !DILocation(line: 804, column: 45, scope: !2827, inlinedAt: !2840)
!2842 = !DILocation(line: 804, column: 62, scope: !2827, inlinedAt: !2840)
!2843 = !DILocation(line: 805, column: 51, scope: !2827, inlinedAt: !2840)
!2844 = !DILocation(line: 807, column: 37, scope: !2827, inlinedAt: !2840)
!2845 = !DILocation(line: 807, column: 33, scope: !2827, inlinedAt: !2840)
!2846 = !DILocation(line: 808, column: 11, scope: !2827, inlinedAt: !2840)
!2847 = !DILocation(line: 808, column: 7, scope: !2827, inlinedAt: !2840)
!2848 = !DILocation(line: 810, column: 18, scope: !2827, inlinedAt: !2840)
!2849 = !DILocation(line: 810, column: 24, scope: !2827, inlinedAt: !2840)
!2850 = !DILocation(line: 810, column: 7, scope: !2827, inlinedAt: !2840)
!2851 = !DILocation(line: 811, column: 69, scope: !2827, inlinedAt: !2840)
!2852 = !DILocation(line: 812, column: 53, scope: !2827, inlinedAt: !2840)
!2853 = !DILocation(line: 813, column: 49, scope: !2827, inlinedAt: !2840)
!2854 = !DILocation(line: 814, column: 49, scope: !2827, inlinedAt: !2840)
!2855 = !DILocation(line: 811, column: 20, scope: !2827, inlinedAt: !2840)
!2856 = !DILocation(line: 814, column: 62, scope: !2827, inlinedAt: !2840)
!2857 = !DILocation(line: 811, column: 10, scope: !2827, inlinedAt: !2840)
!2858 = !DILocalVariable(name: "n", arg: 1, scope: !2859, file: !680, line: 220, type: !9)
!2859 = distinct !DISubprogram(name: "xcharalloc", scope: !680, file: !680, line: 220, type: !2860, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!6, !9}
!2862 = !{!2858}
!2863 = !DILocation(line: 220, column: 20, scope: !2859, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 815, column: 15, scope: !2827, inlinedAt: !2840)
!2865 = !DILocation(line: 222, column: 10, scope: !2859, inlinedAt: !2864)
!2866 = !DILocation(line: 815, column: 9, scope: !2827, inlinedAt: !2840)
!2867 = !DILocation(line: 816, column: 60, scope: !2827, inlinedAt: !2840)
!2868 = !DILocation(line: 818, column: 32, scope: !2827, inlinedAt: !2840)
!2869 = !DILocation(line: 818, column: 47, scope: !2827, inlinedAt: !2840)
!2870 = !DILocation(line: 816, column: 3, scope: !2827, inlinedAt: !2840)
!2871 = !DILocation(line: 819, column: 9, scope: !2827, inlinedAt: !2840)
!2872 = !DILocation(line: 794, column: 3, scope: !2816)
!2873 = !DILocation(line: 804, column: 33, scope: !2827)
!2874 = !DILocation(line: 804, column: 45, scope: !2827)
!2875 = !DILocation(line: 804, column: 62, scope: !2827)
!2876 = !DILocation(line: 805, column: 51, scope: !2827)
!2877 = !DILocation(line: 807, column: 37, scope: !2827)
!2878 = !DILocation(line: 807, column: 33, scope: !2827)
!2879 = !DILocation(line: 808, column: 11, scope: !2827)
!2880 = !DILocation(line: 808, column: 7, scope: !2827)
!2881 = !DILocation(line: 810, column: 18, scope: !2827)
!2882 = !DILocation(line: 810, column: 27, scope: !2827)
!2883 = !DILocation(line: 810, column: 24, scope: !2827)
!2884 = !DILocation(line: 810, column: 7, scope: !2827)
!2885 = !DILocation(line: 811, column: 69, scope: !2827)
!2886 = !DILocation(line: 812, column: 53, scope: !2827)
!2887 = !DILocation(line: 813, column: 49, scope: !2827)
!2888 = !DILocation(line: 814, column: 49, scope: !2827)
!2889 = !DILocation(line: 811, column: 20, scope: !2827)
!2890 = !DILocation(line: 814, column: 62, scope: !2827)
!2891 = !DILocation(line: 811, column: 10, scope: !2827)
!2892 = !DILocation(line: 220, column: 20, scope: !2859, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 815, column: 15, scope: !2827)
!2894 = !DILocation(line: 222, column: 10, scope: !2859, inlinedAt: !2893)
!2895 = !DILocation(line: 815, column: 9, scope: !2827)
!2896 = !DILocation(line: 816, column: 60, scope: !2827)
!2897 = !DILocation(line: 818, column: 32, scope: !2827)
!2898 = !DILocation(line: 818, column: 47, scope: !2827)
!2899 = !DILocation(line: 816, column: 3, scope: !2827)
!2900 = !DILocation(line: 819, column: 9, scope: !2827)
!2901 = !DILocation(line: 820, column: 7, scope: !2827)
!2902 = !DILocation(line: 821, column: 11, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2827, file: !188, line: 820, column: 7)
!2904 = !{!1251, !1251, i64 0}
!2905 = !DILocation(line: 821, column: 5, scope: !2903)
!2906 = !DILocation(line: 822, column: 3, scope: !2827)
!2907 = distinct !DISubprogram(name: "quotearg_free", scope: !188, file: !188, line: 840, type: !1528, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2908)
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "sv", scope: !2907, file: !188, line: 842, type: !212)
!2910 = !DILocalVariable(name: "i", scope: !2907, file: !188, line: 843, type: !62)
!2911 = !DILocation(line: 842, column: 24, scope: !2907)
!2912 = !DILocation(line: 842, column: 19, scope: !2907)
!2913 = !DILocation(line: 843, column: 7, scope: !2907)
!2914 = !DILocation(line: 844, column: 19, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2916, file: !188, discriminator: 1)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !188, line: 844, column: 3)
!2917 = distinct !DILexicalBlock(scope: !2907, file: !188, line: 844, column: 3)
!2918 = !DILocation(line: 844, column: 17, scope: !2915)
!2919 = !DILocation(line: 844, column: 3, scope: !2920)
!2920 = !DILexicalBlockFile(scope: !2917, file: !188, discriminator: 1)
!2921 = !DILocation(line: 845, column: 17, scope: !2916)
!2922 = !{!2923, !771, i64 8}
!2923 = !{!"slotvec", !1251, i64 0, !771, i64 8}
!2924 = !DILocation(line: 845, column: 5, scope: !2916)
!2925 = !DILocation(line: 844, column: 28, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !2916, file: !188, discriminator: 2)
!2927 = distinct !{!2927, !2928, !2929}
!2928 = !DILocation(line: 844, column: 3, scope: !2917)
!2929 = !DILocation(line: 845, column: 20, scope: !2917)
!2930 = !DILocation(line: 846, column: 13, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2907, file: !188, line: 846, column: 7)
!2932 = !DILocation(line: 846, column: 17, scope: !2931)
!2933 = !DILocation(line: 846, column: 7, scope: !2907)
!2934 = !DILocation(line: 848, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2931, file: !188, line: 847, column: 5)
!2936 = !DILocation(line: 849, column: 21, scope: !2935)
!2937 = !{!2923, !1251, i64 0}
!2938 = !DILocation(line: 850, column: 20, scope: !2935)
!2939 = !DILocation(line: 851, column: 5, scope: !2935)
!2940 = !DILocation(line: 852, column: 10, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2907, file: !188, line: 852, column: 7)
!2942 = !DILocation(line: 852, column: 7, scope: !2907)
!2943 = !DILocation(line: 854, column: 13, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !188, line: 853, column: 5)
!2945 = !DILocation(line: 854, column: 7, scope: !2944)
!2946 = !DILocation(line: 855, column: 15, scope: !2944)
!2947 = !DILocation(line: 856, column: 5, scope: !2944)
!2948 = !DILocation(line: 857, column: 10, scope: !2907)
!2949 = !DILocation(line: 858, column: 1, scope: !2907)
!2950 = distinct !DISubprogram(name: "quotearg_n", scope: !188, file: !188, line: 922, type: !2951, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!6, !62, !17}
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "n", arg: 1, scope: !2950, file: !188, line: 922, type: !62)
!2955 = !DILocalVariable(name: "arg", arg: 2, scope: !2950, file: !188, line: 922, type: !17)
!2956 = !DILocation(line: 922, column: 17, scope: !2950)
!2957 = !DILocation(line: 922, column: 32, scope: !2950)
!2958 = !DILocation(line: 924, column: 10, scope: !2950)
!2959 = !DILocation(line: 924, column: 3, scope: !2950)
!2960 = distinct !DISubprogram(name: "quotearg_n_options", scope: !188, file: !188, line: 869, type: !2961, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!6, !62, !17, !9, !1658}
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2969, !2970, !2973, !2975, !2976, !2977}
!2964 = !DILocalVariable(name: "n", arg: 1, scope: !2960, file: !188, line: 869, type: !62)
!2965 = !DILocalVariable(name: "arg", arg: 2, scope: !2960, file: !188, line: 869, type: !17)
!2966 = !DILocalVariable(name: "argsize", arg: 3, scope: !2960, file: !188, line: 869, type: !9)
!2967 = !DILocalVariable(name: "options", arg: 4, scope: !2960, file: !188, line: 870, type: !1658)
!2968 = !DILocalVariable(name: "e", scope: !2960, file: !188, line: 872, type: !62)
!2969 = !DILocalVariable(name: "sv", scope: !2960, file: !188, line: 874, type: !212)
!2970 = !DILocalVariable(name: "preallocated", scope: !2971, file: !188, line: 881, type: !68)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !188, line: 880, column: 5)
!2972 = distinct !DILexicalBlock(scope: !2960, file: !188, line: 879, column: 7)
!2973 = !DILocalVariable(name: "size", scope: !2974, file: !188, line: 894, type: !9)
!2974 = distinct !DILexicalBlock(scope: !2960, file: !188, line: 893, column: 3)
!2975 = !DILocalVariable(name: "val", scope: !2974, file: !188, line: 895, type: !6)
!2976 = !DILocalVariable(name: "flags", scope: !2974, file: !188, line: 897, type: !62)
!2977 = !DILocalVariable(name: "qsize", scope: !2974, file: !188, line: 898, type: !9)
!2978 = !DILocation(line: 869, column: 25, scope: !2960)
!2979 = !DILocation(line: 869, column: 40, scope: !2960)
!2980 = !DILocation(line: 869, column: 52, scope: !2960)
!2981 = !DILocation(line: 870, column: 51, scope: !2960)
!2982 = !DILocation(line: 872, column: 11, scope: !2960)
!2983 = !DILocation(line: 872, column: 7, scope: !2960)
!2984 = !DILocation(line: 874, column: 24, scope: !2960)
!2985 = !DILocation(line: 874, column: 19, scope: !2960)
!2986 = !DILocation(line: 876, column: 9, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2960, file: !188, line: 876, column: 7)
!2988 = !DILocation(line: 876, column: 7, scope: !2960)
!2989 = !DILocation(line: 877, column: 5, scope: !2987)
!2990 = !DILocation(line: 879, column: 7, scope: !2972)
!2991 = !DILocation(line: 879, column: 14, scope: !2972)
!2992 = !DILocation(line: 879, column: 7, scope: !2960)
!2993 = !DILocation(line: 881, column: 31, scope: !2971)
!2994 = !DILocation(line: 883, column: 67, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2971, file: !188, line: 883, column: 11)
!2996 = !DILocation(line: 883, column: 11, scope: !2971)
!2997 = !DILocation(line: 884, column: 9, scope: !2995)
!2998 = !DILocation(line: 886, column: 32, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !2971, file: !188, discriminator: 3)
!3000 = !DILocation(line: 886, column: 61, scope: !2999)
!3001 = !DILocation(line: 886, column: 58, scope: !2999)
!3002 = !DILocation(line: 886, column: 66, scope: !2999)
!3003 = !DILocation(line: 886, column: 22, scope: !2999)
!3004 = !DILocation(line: 886, column: 15, scope: !2999)
!3005 = !DILocation(line: 887, column: 11, scope: !2971)
!3006 = !DILocation(line: 888, column: 15, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2971, file: !188, line: 887, column: 11)
!3008 = !{i64 0, i64 8, !2904, i64 8, i64 8, !770}
!3009 = !DILocation(line: 888, column: 9, scope: !3007)
!3010 = !DILocation(line: 889, column: 20, scope: !2971)
!3011 = !DILocation(line: 889, column: 18, scope: !2971)
!3012 = !DILocation(line: 889, column: 7, scope: !2971)
!3013 = !DILocation(line: 889, column: 38, scope: !2971)
!3014 = !DILocation(line: 889, column: 31, scope: !2971)
!3015 = !DILocation(line: 889, column: 48, scope: !2971)
!3016 = !DILocation(line: 890, column: 14, scope: !2971)
!3017 = !DILocation(line: 891, column: 5, scope: !2971)
!3018 = !DILocation(line: 894, column: 19, scope: !2974)
!3019 = !DILocation(line: 894, column: 25, scope: !2974)
!3020 = !DILocation(line: 894, column: 12, scope: !2974)
!3021 = !DILocation(line: 895, column: 23, scope: !2974)
!3022 = !DILocation(line: 895, column: 11, scope: !2974)
!3023 = !DILocation(line: 897, column: 26, scope: !2974)
!3024 = !DILocation(line: 897, column: 32, scope: !2974)
!3025 = !DILocation(line: 897, column: 9, scope: !2974)
!3026 = !DILocation(line: 899, column: 55, scope: !2974)
!3027 = !DILocation(line: 900, column: 46, scope: !2974)
!3028 = !DILocation(line: 901, column: 55, scope: !2974)
!3029 = !DILocation(line: 902, column: 55, scope: !2974)
!3030 = !DILocation(line: 898, column: 20, scope: !2974)
!3031 = !DILocation(line: 898, column: 12, scope: !2974)
!3032 = !DILocation(line: 904, column: 14, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2974, file: !188, line: 904, column: 9)
!3034 = !DILocation(line: 904, column: 9, scope: !2974)
!3035 = !DILocation(line: 906, column: 35, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3033, file: !188, line: 905, column: 7)
!3037 = !DILocation(line: 906, column: 20, scope: !3036)
!3038 = !DILocation(line: 907, column: 17, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3036, file: !188, line: 907, column: 13)
!3040 = !DILocation(line: 907, column: 13, scope: !3036)
!3041 = !DILocation(line: 908, column: 11, scope: !3039)
!3042 = !DILocation(line: 220, column: 20, scope: !2859, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 909, column: 27, scope: !3036)
!3044 = !DILocation(line: 222, column: 10, scope: !2859, inlinedAt: !3043)
!3045 = !DILocation(line: 909, column: 19, scope: !3036)
!3046 = !DILocation(line: 910, column: 69, scope: !3036)
!3047 = !DILocation(line: 912, column: 44, scope: !3036)
!3048 = !DILocation(line: 913, column: 44, scope: !3036)
!3049 = !DILocation(line: 910, column: 9, scope: !3036)
!3050 = !DILocation(line: 914, column: 7, scope: !3036)
!3051 = !DILocation(line: 916, column: 11, scope: !2974)
!3052 = !DILocation(line: 917, column: 5, scope: !2974)
!3053 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !188, file: !188, line: 928, type: !3054, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3056)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!6, !62, !17, !9}
!3056 = !{!3057, !3058, !3059}
!3057 = !DILocalVariable(name: "n", arg: 1, scope: !3053, file: !188, line: 928, type: !62)
!3058 = !DILocalVariable(name: "arg", arg: 2, scope: !3053, file: !188, line: 928, type: !17)
!3059 = !DILocalVariable(name: "argsize", arg: 3, scope: !3053, file: !188, line: 928, type: !9)
!3060 = !DILocation(line: 928, column: 21, scope: !3053)
!3061 = !DILocation(line: 928, column: 36, scope: !3053)
!3062 = !DILocation(line: 928, column: 48, scope: !3053)
!3063 = !DILocation(line: 930, column: 10, scope: !3053)
!3064 = !DILocation(line: 930, column: 3, scope: !3053)
!3065 = distinct !DISubprogram(name: "quotearg", scope: !188, file: !188, line: 934, type: !3066, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!6, !17}
!3068 = !{!3069}
!3069 = !DILocalVariable(name: "arg", arg: 1, scope: !3065, file: !188, line: 934, type: !17)
!3070 = !DILocation(line: 934, column: 23, scope: !3065)
!3071 = !DILocation(line: 922, column: 17, scope: !2950, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 936, column: 10, scope: !3065)
!3073 = !DILocation(line: 922, column: 32, scope: !2950, inlinedAt: !3072)
!3074 = !DILocation(line: 924, column: 10, scope: !2950, inlinedAt: !3072)
!3075 = !DILocation(line: 936, column: 3, scope: !3065)
!3076 = distinct !DISubprogram(name: "quotearg_mem", scope: !188, file: !188, line: 940, type: !3077, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!6, !17, !9}
!3079 = !{!3080, !3081}
!3080 = !DILocalVariable(name: "arg", arg: 1, scope: !3076, file: !188, line: 940, type: !17)
!3081 = !DILocalVariable(name: "argsize", arg: 2, scope: !3076, file: !188, line: 940, type: !9)
!3082 = !DILocation(line: 940, column: 27, scope: !3076)
!3083 = !DILocation(line: 940, column: 39, scope: !3076)
!3084 = !DILocation(line: 928, column: 21, scope: !3053, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 942, column: 10, scope: !3076)
!3086 = !DILocation(line: 928, column: 36, scope: !3053, inlinedAt: !3085)
!3087 = !DILocation(line: 928, column: 48, scope: !3053, inlinedAt: !3085)
!3088 = !DILocation(line: 930, column: 10, scope: !3053, inlinedAt: !3085)
!3089 = !DILocation(line: 942, column: 3, scope: !3076)
!3090 = distinct !DISubprogram(name: "quotearg_n_style", scope: !188, file: !188, line: 946, type: !3091, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!6, !62, !149, !17}
!3093 = !{!3094, !3095, !3096, !3097}
!3094 = !DILocalVariable(name: "n", arg: 1, scope: !3090, file: !188, line: 946, type: !62)
!3095 = !DILocalVariable(name: "s", arg: 2, scope: !3090, file: !188, line: 946, type: !149)
!3096 = !DILocalVariable(name: "arg", arg: 3, scope: !3090, file: !188, line: 946, type: !17)
!3097 = !DILocalVariable(name: "o", scope: !3090, file: !188, line: 948, type: !1659)
!3098 = !DILocalVariable(name: "o", scope: !3099, file: !188, line: 187, type: !193)
!3099 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !188, file: !188, line: 185, type: !3100, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!193, !149}
!3102 = !{!3103, !3098}
!3103 = !DILocalVariable(name: "style", arg: 1, scope: !3099, file: !188, line: 185, type: !149)
!3104 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3105 = !DILocation(line: 187, column: 26, scope: !3099, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 948, column: 36, scope: !3090)
!3107 = !DILocation(line: 946, column: 23, scope: !3090)
!3108 = !DILocation(line: 946, column: 45, scope: !3090)
!3109 = !DILocation(line: 946, column: 60, scope: !3090)
!3110 = !DILocation(line: 948, column: 3, scope: !3090)
!3111 = !DILocation(line: 948, column: 32, scope: !3090)
!3112 = !DILocation(line: 185, column: 48, scope: !3099, inlinedAt: !3106)
!3113 = !DILocation(line: 187, column: 3, scope: !3099, inlinedAt: !3106)
!3114 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3115 = !DILocation(line: 188, column: 13, scope: !3116, inlinedAt: !3106)
!3116 = distinct !DILexicalBlock(scope: !3099, file: !188, line: 188, column: 7)
!3117 = !DILocation(line: 188, column: 7, scope: !3099, inlinedAt: !3106)
!3118 = !DILocation(line: 189, column: 5, scope: !3116, inlinedAt: !3106)
!3119 = !{!3120}
!3120 = distinct !{!3120, !3121, !"quoting_options_from_style: argument 0"}
!3121 = distinct !{!3121, !"quoting_options_from_style"}
!3122 = !DILocation(line: 191, column: 10, scope: !3099, inlinedAt: !3106)
!3123 = !DILocation(line: 192, column: 1, scope: !3099, inlinedAt: !3106)
!3124 = !DILocation(line: 949, column: 10, scope: !3090)
!3125 = !DILocation(line: 950, column: 1, scope: !3090)
!3126 = !DILocation(line: 949, column: 3, scope: !3090)
!3127 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !188, file: !188, line: 953, type: !3128, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!6, !62, !149, !17, !9}
!3130 = !{!3131, !3132, !3133, !3134, !3135}
!3131 = !DILocalVariable(name: "n", arg: 1, scope: !3127, file: !188, line: 953, type: !62)
!3132 = !DILocalVariable(name: "s", arg: 2, scope: !3127, file: !188, line: 953, type: !149)
!3133 = !DILocalVariable(name: "arg", arg: 3, scope: !3127, file: !188, line: 954, type: !17)
!3134 = !DILocalVariable(name: "argsize", arg: 4, scope: !3127, file: !188, line: 954, type: !9)
!3135 = !DILocalVariable(name: "o", scope: !3127, file: !188, line: 956, type: !1659)
!3136 = !DILocation(line: 187, column: 26, scope: !3099, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 956, column: 36, scope: !3127)
!3138 = !DILocation(line: 953, column: 27, scope: !3127)
!3139 = !DILocation(line: 953, column: 49, scope: !3127)
!3140 = !DILocation(line: 954, column: 35, scope: !3127)
!3141 = !DILocation(line: 954, column: 47, scope: !3127)
!3142 = !DILocation(line: 956, column: 3, scope: !3127)
!3143 = !DILocation(line: 956, column: 32, scope: !3127)
!3144 = !DILocation(line: 185, column: 48, scope: !3099, inlinedAt: !3137)
!3145 = !DILocation(line: 187, column: 3, scope: !3099, inlinedAt: !3137)
!3146 = !DILocation(line: 188, column: 13, scope: !3116, inlinedAt: !3137)
!3147 = !DILocation(line: 188, column: 7, scope: !3099, inlinedAt: !3137)
!3148 = !DILocation(line: 189, column: 5, scope: !3116, inlinedAt: !3137)
!3149 = !{!3150}
!3150 = distinct !{!3150, !3151, !"quoting_options_from_style: argument 0"}
!3151 = distinct !{!3151, !"quoting_options_from_style"}
!3152 = !DILocation(line: 191, column: 10, scope: !3099, inlinedAt: !3137)
!3153 = !DILocation(line: 192, column: 1, scope: !3099, inlinedAt: !3137)
!3154 = !DILocation(line: 957, column: 10, scope: !3127)
!3155 = !DILocation(line: 958, column: 1, scope: !3127)
!3156 = !DILocation(line: 957, column: 3, scope: !3127)
!3157 = distinct !DISubprogram(name: "quotearg_style", scope: !188, file: !188, line: 961, type: !3158, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!6, !149, !17}
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "s", arg: 1, scope: !3157, file: !188, line: 961, type: !149)
!3162 = !DILocalVariable(name: "arg", arg: 2, scope: !3157, file: !188, line: 961, type: !17)
!3163 = !DILocation(line: 187, column: 26, scope: !3099, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 948, column: 36, scope: !3090, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 963, column: 10, scope: !3157)
!3166 = !DILocation(line: 961, column: 36, scope: !3157)
!3167 = !DILocation(line: 961, column: 51, scope: !3157)
!3168 = !DILocation(line: 946, column: 23, scope: !3090, inlinedAt: !3165)
!3169 = !DILocation(line: 946, column: 45, scope: !3090, inlinedAt: !3165)
!3170 = !DILocation(line: 946, column: 60, scope: !3090, inlinedAt: !3165)
!3171 = !DILocation(line: 948, column: 3, scope: !3090, inlinedAt: !3165)
!3172 = !DILocation(line: 948, column: 32, scope: !3090, inlinedAt: !3165)
!3173 = !DILocation(line: 185, column: 48, scope: !3099, inlinedAt: !3164)
!3174 = !DILocation(line: 187, column: 3, scope: !3099, inlinedAt: !3164)
!3175 = !DILocation(line: 188, column: 13, scope: !3116, inlinedAt: !3164)
!3176 = !DILocation(line: 188, column: 7, scope: !3099, inlinedAt: !3164)
!3177 = !DILocation(line: 189, column: 5, scope: !3116, inlinedAt: !3164)
!3178 = !{!3179}
!3179 = distinct !{!3179, !3180, !"quoting_options_from_style: argument 0"}
!3180 = distinct !{!3180, !"quoting_options_from_style"}
!3181 = !DILocation(line: 191, column: 10, scope: !3099, inlinedAt: !3164)
!3182 = !DILocation(line: 192, column: 1, scope: !3099, inlinedAt: !3164)
!3183 = !DILocation(line: 949, column: 10, scope: !3090, inlinedAt: !3165)
!3184 = !DILocation(line: 950, column: 1, scope: !3090, inlinedAt: !3165)
!3185 = !DILocation(line: 963, column: 3, scope: !3157)
!3186 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !188, file: !188, line: 967, type: !3187, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!6, !149, !17, !9}
!3189 = !{!3190, !3191, !3192}
!3190 = !DILocalVariable(name: "s", arg: 1, scope: !3186, file: !188, line: 967, type: !149)
!3191 = !DILocalVariable(name: "arg", arg: 2, scope: !3186, file: !188, line: 967, type: !17)
!3192 = !DILocalVariable(name: "argsize", arg: 3, scope: !3186, file: !188, line: 967, type: !9)
!3193 = !DILocation(line: 187, column: 26, scope: !3099, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 956, column: 36, scope: !3127, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 969, column: 10, scope: !3186)
!3196 = !DILocation(line: 967, column: 40, scope: !3186)
!3197 = !DILocation(line: 967, column: 55, scope: !3186)
!3198 = !DILocation(line: 967, column: 67, scope: !3186)
!3199 = !DILocation(line: 953, column: 27, scope: !3127, inlinedAt: !3195)
!3200 = !DILocation(line: 953, column: 49, scope: !3127, inlinedAt: !3195)
!3201 = !DILocation(line: 954, column: 35, scope: !3127, inlinedAt: !3195)
!3202 = !DILocation(line: 954, column: 47, scope: !3127, inlinedAt: !3195)
!3203 = !DILocation(line: 956, column: 3, scope: !3127, inlinedAt: !3195)
!3204 = !DILocation(line: 956, column: 32, scope: !3127, inlinedAt: !3195)
!3205 = !DILocation(line: 185, column: 48, scope: !3099, inlinedAt: !3194)
!3206 = !DILocation(line: 187, column: 3, scope: !3099, inlinedAt: !3194)
!3207 = !DILocation(line: 188, column: 13, scope: !3116, inlinedAt: !3194)
!3208 = !DILocation(line: 188, column: 7, scope: !3099, inlinedAt: !3194)
!3209 = !DILocation(line: 189, column: 5, scope: !3116, inlinedAt: !3194)
!3210 = !{!3211}
!3211 = distinct !{!3211, !3212, !"quoting_options_from_style: argument 0"}
!3212 = distinct !{!3212, !"quoting_options_from_style"}
!3213 = !DILocation(line: 191, column: 10, scope: !3099, inlinedAt: !3194)
!3214 = !DILocation(line: 192, column: 1, scope: !3099, inlinedAt: !3194)
!3215 = !DILocation(line: 957, column: 10, scope: !3127, inlinedAt: !3195)
!3216 = !DILocation(line: 958, column: 1, scope: !3127, inlinedAt: !3195)
!3217 = !DILocation(line: 969, column: 3, scope: !3186)
!3218 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !188, file: !188, line: 973, type: !3219, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!6, !17, !9, !7}
!3221 = !{!3222, !3223, !3224, !3225}
!3222 = !DILocalVariable(name: "arg", arg: 1, scope: !3218, file: !188, line: 973, type: !17)
!3223 = !DILocalVariable(name: "argsize", arg: 2, scope: !3218, file: !188, line: 973, type: !9)
!3224 = !DILocalVariable(name: "ch", arg: 3, scope: !3218, file: !188, line: 973, type: !7)
!3225 = !DILocalVariable(name: "options", scope: !3218, file: !188, line: 975, type: !193)
!3226 = !DILocation(line: 973, column: 32, scope: !3218)
!3227 = !DILocation(line: 973, column: 44, scope: !3218)
!3228 = !DILocation(line: 973, column: 58, scope: !3218)
!3229 = !DILocation(line: 975, column: 3, scope: !3218)
!3230 = !DILocation(line: 976, column: 13, scope: !3218)
!3231 = !{i64 0, i64 4, !936, i64 4, i64 4, !885, i64 8, i64 32, !936, i64 40, i64 8, !770, i64 48, i64 8, !770}
!3232 = !DILocation(line: 975, column: 26, scope: !3218)
!3233 = !DILocation(line: 144, column: 43, scope: !1682, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 977, column: 3, scope: !3218)
!3235 = !DILocation(line: 144, column: 51, scope: !1682, inlinedAt: !3234)
!3236 = !DILocation(line: 144, column: 58, scope: !1682, inlinedAt: !3234)
!3237 = !DILocation(line: 146, column: 17, scope: !1682, inlinedAt: !3234)
!3238 = !DILocation(line: 148, column: 62, scope: !1700, inlinedAt: !3234)
!3239 = !DILocation(line: 148, column: 57, scope: !1700, inlinedAt: !3234)
!3240 = !DILocation(line: 147, column: 17, scope: !1682, inlinedAt: !3234)
!3241 = !DILocation(line: 149, column: 18, scope: !1682, inlinedAt: !3234)
!3242 = !DILocation(line: 149, column: 15, scope: !1682, inlinedAt: !3234)
!3243 = !DILocation(line: 149, column: 7, scope: !1682, inlinedAt: !3234)
!3244 = !DILocation(line: 150, column: 12, scope: !1682, inlinedAt: !3234)
!3245 = !DILocation(line: 150, column: 15, scope: !1682, inlinedAt: !3234)
!3246 = !DILocation(line: 150, column: 25, scope: !1682, inlinedAt: !3234)
!3247 = !DILocation(line: 150, column: 7, scope: !1682, inlinedAt: !3234)
!3248 = !DILocation(line: 151, column: 18, scope: !1682, inlinedAt: !3234)
!3249 = !DILocation(line: 151, column: 23, scope: !1682, inlinedAt: !3234)
!3250 = !DILocation(line: 151, column: 6, scope: !1682, inlinedAt: !3234)
!3251 = !DILocation(line: 978, column: 10, scope: !3218)
!3252 = !DILocation(line: 979, column: 1, scope: !3218)
!3253 = !DILocation(line: 978, column: 3, scope: !3218)
!3254 = distinct !DISubprogram(name: "quotearg_char", scope: !188, file: !188, line: 982, type: !3255, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!6, !17, !7}
!3257 = !{!3258, !3259}
!3258 = !DILocalVariable(name: "arg", arg: 1, scope: !3254, file: !188, line: 982, type: !17)
!3259 = !DILocalVariable(name: "ch", arg: 2, scope: !3254, file: !188, line: 982, type: !7)
!3260 = !DILocation(line: 982, column: 28, scope: !3254)
!3261 = !DILocation(line: 982, column: 38, scope: !3254)
!3262 = !DILocation(line: 973, column: 32, scope: !3218, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 984, column: 10, scope: !3254)
!3264 = !DILocation(line: 973, column: 44, scope: !3218, inlinedAt: !3263)
!3265 = !DILocation(line: 973, column: 58, scope: !3218, inlinedAt: !3263)
!3266 = !DILocation(line: 975, column: 3, scope: !3218, inlinedAt: !3263)
!3267 = !DILocation(line: 976, column: 13, scope: !3218, inlinedAt: !3263)
!3268 = !DILocation(line: 975, column: 26, scope: !3218, inlinedAt: !3263)
!3269 = !DILocation(line: 144, column: 43, scope: !1682, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 977, column: 3, scope: !3218, inlinedAt: !3263)
!3271 = !DILocation(line: 144, column: 51, scope: !1682, inlinedAt: !3270)
!3272 = !DILocation(line: 144, column: 58, scope: !1682, inlinedAt: !3270)
!3273 = !DILocation(line: 146, column: 17, scope: !1682, inlinedAt: !3270)
!3274 = !DILocation(line: 148, column: 62, scope: !1700, inlinedAt: !3270)
!3275 = !DILocation(line: 148, column: 57, scope: !1700, inlinedAt: !3270)
!3276 = !DILocation(line: 147, column: 17, scope: !1682, inlinedAt: !3270)
!3277 = !DILocation(line: 149, column: 18, scope: !1682, inlinedAt: !3270)
!3278 = !DILocation(line: 149, column: 15, scope: !1682, inlinedAt: !3270)
!3279 = !DILocation(line: 149, column: 7, scope: !1682, inlinedAt: !3270)
!3280 = !DILocation(line: 150, column: 12, scope: !1682, inlinedAt: !3270)
!3281 = !DILocation(line: 150, column: 15, scope: !1682, inlinedAt: !3270)
!3282 = !DILocation(line: 150, column: 25, scope: !1682, inlinedAt: !3270)
!3283 = !DILocation(line: 150, column: 7, scope: !1682, inlinedAt: !3270)
!3284 = !DILocation(line: 151, column: 18, scope: !1682, inlinedAt: !3270)
!3285 = !DILocation(line: 151, column: 23, scope: !1682, inlinedAt: !3270)
!3286 = !DILocation(line: 151, column: 6, scope: !1682, inlinedAt: !3270)
!3287 = !DILocation(line: 978, column: 10, scope: !3218, inlinedAt: !3263)
!3288 = !DILocation(line: 979, column: 1, scope: !3218, inlinedAt: !3263)
!3289 = !DILocation(line: 984, column: 3, scope: !3254)
!3290 = distinct !DISubprogram(name: "quotearg_colon", scope: !188, file: !188, line: 988, type: !3066, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3291)
!3291 = !{!3292}
!3292 = !DILocalVariable(name: "arg", arg: 1, scope: !3290, file: !188, line: 988, type: !17)
!3293 = !DILocation(line: 988, column: 29, scope: !3290)
!3294 = !DILocation(line: 982, column: 28, scope: !3254, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 990, column: 10, scope: !3290)
!3296 = !DILocation(line: 982, column: 38, scope: !3254, inlinedAt: !3295)
!3297 = !DILocation(line: 973, column: 32, scope: !3218, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 984, column: 10, scope: !3254, inlinedAt: !3295)
!3299 = !DILocation(line: 973, column: 44, scope: !3218, inlinedAt: !3298)
!3300 = !DILocation(line: 973, column: 58, scope: !3218, inlinedAt: !3298)
!3301 = !DILocation(line: 975, column: 3, scope: !3218, inlinedAt: !3298)
!3302 = !DILocation(line: 976, column: 13, scope: !3218, inlinedAt: !3298)
!3303 = !DILocation(line: 975, column: 26, scope: !3218, inlinedAt: !3298)
!3304 = !DILocation(line: 144, column: 43, scope: !1682, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 977, column: 3, scope: !3218, inlinedAt: !3298)
!3306 = !DILocation(line: 144, column: 51, scope: !1682, inlinedAt: !3305)
!3307 = !DILocation(line: 144, column: 58, scope: !1682, inlinedAt: !3305)
!3308 = !DILocation(line: 146, column: 17, scope: !1682, inlinedAt: !3305)
!3309 = !DILocation(line: 148, column: 57, scope: !1700, inlinedAt: !3305)
!3310 = !DILocation(line: 147, column: 17, scope: !1682, inlinedAt: !3305)
!3311 = !DILocation(line: 149, column: 7, scope: !1682, inlinedAt: !3305)
!3312 = !DILocation(line: 150, column: 12, scope: !1682, inlinedAt: !3305)
!3313 = !DILocation(line: 151, column: 6, scope: !1682, inlinedAt: !3305)
!3314 = !DILocation(line: 978, column: 10, scope: !3218, inlinedAt: !3298)
!3315 = !DILocation(line: 979, column: 1, scope: !3218, inlinedAt: !3298)
!3316 = !DILocation(line: 990, column: 3, scope: !3290)
!3317 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !188, file: !188, line: 994, type: !3077, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3318)
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "arg", arg: 1, scope: !3317, file: !188, line: 994, type: !17)
!3320 = !DILocalVariable(name: "argsize", arg: 2, scope: !3317, file: !188, line: 994, type: !9)
!3321 = !DILocation(line: 994, column: 33, scope: !3317)
!3322 = !DILocation(line: 994, column: 45, scope: !3317)
!3323 = !DILocation(line: 973, column: 32, scope: !3218, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 996, column: 10, scope: !3317)
!3325 = !DILocation(line: 973, column: 44, scope: !3218, inlinedAt: !3324)
!3326 = !DILocation(line: 973, column: 58, scope: !3218, inlinedAt: !3324)
!3327 = !DILocation(line: 975, column: 3, scope: !3218, inlinedAt: !3324)
!3328 = !DILocation(line: 976, column: 13, scope: !3218, inlinedAt: !3324)
!3329 = !DILocation(line: 975, column: 26, scope: !3218, inlinedAt: !3324)
!3330 = !DILocation(line: 144, column: 43, scope: !1682, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 977, column: 3, scope: !3218, inlinedAt: !3324)
!3332 = !DILocation(line: 144, column: 51, scope: !1682, inlinedAt: !3331)
!3333 = !DILocation(line: 144, column: 58, scope: !1682, inlinedAt: !3331)
!3334 = !DILocation(line: 146, column: 17, scope: !1682, inlinedAt: !3331)
!3335 = !DILocation(line: 148, column: 57, scope: !1700, inlinedAt: !3331)
!3336 = !DILocation(line: 147, column: 17, scope: !1682, inlinedAt: !3331)
!3337 = !DILocation(line: 149, column: 7, scope: !1682, inlinedAt: !3331)
!3338 = !DILocation(line: 150, column: 12, scope: !1682, inlinedAt: !3331)
!3339 = !DILocation(line: 151, column: 6, scope: !1682, inlinedAt: !3331)
!3340 = !DILocation(line: 978, column: 10, scope: !3218, inlinedAt: !3324)
!3341 = !DILocation(line: 979, column: 1, scope: !3218, inlinedAt: !3324)
!3342 = !DILocation(line: 996, column: 3, scope: !3317)
!3343 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !188, file: !188, line: 1000, type: !3091, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3344)
!3344 = !{!3345, !3346, !3347, !3348}
!3345 = !DILocalVariable(name: "n", arg: 1, scope: !3343, file: !188, line: 1000, type: !62)
!3346 = !DILocalVariable(name: "s", arg: 2, scope: !3343, file: !188, line: 1000, type: !149)
!3347 = !DILocalVariable(name: "arg", arg: 3, scope: !3343, file: !188, line: 1000, type: !17)
!3348 = !DILocalVariable(name: "options", scope: !3343, file: !188, line: 1002, type: !193)
!3349 = !DILocation(line: 187, column: 26, scope: !3099, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 1003, column: 13, scope: !3343)
!3351 = !DILocation(line: 1000, column: 29, scope: !3343)
!3352 = !DILocation(line: 1000, column: 51, scope: !3343)
!3353 = !DILocation(line: 1000, column: 66, scope: !3343)
!3354 = !DILocation(line: 1002, column: 3, scope: !3343)
!3355 = !DILocation(line: 185, column: 48, scope: !3099, inlinedAt: !3350)
!3356 = !DILocation(line: 187, column: 3, scope: !3099, inlinedAt: !3350)
!3357 = !DILocation(line: 188, column: 13, scope: !3116, inlinedAt: !3350)
!3358 = !DILocation(line: 188, column: 7, scope: !3099, inlinedAt: !3350)
!3359 = !DILocation(line: 189, column: 5, scope: !3116, inlinedAt: !3350)
!3360 = !{!3361}
!3361 = distinct !{!3361, !3362, !"quoting_options_from_style: argument 0"}
!3362 = distinct !{!3362, !"quoting_options_from_style"}
!3363 = !DILocation(line: 191, column: 10, scope: !3099, inlinedAt: !3350)
!3364 = !DILocation(line: 192, column: 1, scope: !3099, inlinedAt: !3350)
!3365 = !DILocation(line: 1003, column: 13, scope: !3343)
!3366 = !DILocation(line: 1002, column: 26, scope: !3343)
!3367 = !DILocation(line: 144, column: 43, scope: !1682, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 1004, column: 3, scope: !3343)
!3369 = !DILocation(line: 144, column: 51, scope: !1682, inlinedAt: !3368)
!3370 = !DILocation(line: 144, column: 58, scope: !1682, inlinedAt: !3368)
!3371 = !DILocation(line: 146, column: 17, scope: !1682, inlinedAt: !3368)
!3372 = !DILocation(line: 148, column: 57, scope: !1700, inlinedAt: !3368)
!3373 = !DILocation(line: 147, column: 17, scope: !1682, inlinedAt: !3368)
!3374 = !DILocation(line: 149, column: 7, scope: !1682, inlinedAt: !3368)
!3375 = !DILocation(line: 150, column: 12, scope: !1682, inlinedAt: !3368)
!3376 = !DILocation(line: 151, column: 6, scope: !1682, inlinedAt: !3368)
!3377 = !DILocation(line: 1005, column: 10, scope: !3343)
!3378 = !DILocation(line: 1006, column: 1, scope: !3343)
!3379 = !DILocation(line: 1005, column: 3, scope: !3343)
!3380 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !188, file: !188, line: 1009, type: !3381, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!6, !62, !17, !17, !17}
!3383 = !{!3384, !3385, !3386, !3387}
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3380, file: !188, line: 1009, type: !62)
!3385 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3380, file: !188, line: 1009, type: !17)
!3386 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3380, file: !188, line: 1010, type: !17)
!3387 = !DILocalVariable(name: "arg", arg: 4, scope: !3380, file: !188, line: 1010, type: !17)
!3388 = !DILocation(line: 1009, column: 24, scope: !3380)
!3389 = !DILocation(line: 1009, column: 39, scope: !3380)
!3390 = !DILocation(line: 1010, column: 32, scope: !3380)
!3391 = !DILocation(line: 1010, column: 57, scope: !3380)
!3392 = !DILocalVariable(name: "n", arg: 1, scope: !3393, file: !188, line: 1017, type: !62)
!3393 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !188, file: !188, line: 1017, type: !3394, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!6, !62, !17, !17, !17, !9}
!3396 = !{!3392, !3397, !3398, !3399, !3400, !3401}
!3397 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3393, file: !188, line: 1017, type: !17)
!3398 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3393, file: !188, line: 1018, type: !17)
!3399 = !DILocalVariable(name: "arg", arg: 4, scope: !3393, file: !188, line: 1019, type: !17)
!3400 = !DILocalVariable(name: "argsize", arg: 5, scope: !3393, file: !188, line: 1019, type: !9)
!3401 = !DILocalVariable(name: "o", scope: !3393, file: !188, line: 1021, type: !193)
!3402 = !DILocation(line: 1017, column: 28, scope: !3393, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 1012, column: 10, scope: !3380)
!3404 = !DILocation(line: 1017, column: 43, scope: !3393, inlinedAt: !3403)
!3405 = !DILocation(line: 1018, column: 36, scope: !3393, inlinedAt: !3403)
!3406 = !DILocation(line: 1019, column: 36, scope: !3393, inlinedAt: !3403)
!3407 = !DILocation(line: 1019, column: 48, scope: !3393, inlinedAt: !3403)
!3408 = !DILocation(line: 1021, column: 3, scope: !3393, inlinedAt: !3403)
!3409 = !DILocation(line: 1021, column: 30, scope: !3393, inlinedAt: !3403)
!3410 = !DILocation(line: 1021, column: 26, scope: !3393, inlinedAt: !3403)
!3411 = !DILocation(line: 171, column: 45, scope: !1732, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 1022, column: 3, scope: !3393, inlinedAt: !3403)
!3413 = !DILocation(line: 172, column: 33, scope: !1732, inlinedAt: !3412)
!3414 = !DILocation(line: 172, column: 57, scope: !1732, inlinedAt: !3412)
!3415 = !DILocation(line: 176, column: 6, scope: !1732, inlinedAt: !3412)
!3416 = !DILocation(line: 176, column: 12, scope: !1732, inlinedAt: !3412)
!3417 = !DILocation(line: 177, column: 8, scope: !1748, inlinedAt: !3412)
!3418 = !DILocation(line: 177, column: 23, scope: !1750, inlinedAt: !3412)
!3419 = !DILocation(line: 177, column: 19, scope: !1748, inlinedAt: !3412)
!3420 = !DILocation(line: 178, column: 5, scope: !1748, inlinedAt: !3412)
!3421 = !DILocation(line: 179, column: 6, scope: !1732, inlinedAt: !3412)
!3422 = !DILocation(line: 179, column: 17, scope: !1732, inlinedAt: !3412)
!3423 = !DILocation(line: 180, column: 6, scope: !1732, inlinedAt: !3412)
!3424 = !DILocation(line: 180, column: 18, scope: !1732, inlinedAt: !3412)
!3425 = !DILocation(line: 1023, column: 10, scope: !3393, inlinedAt: !3403)
!3426 = !DILocation(line: 1024, column: 1, scope: !3393, inlinedAt: !3403)
!3427 = !DILocation(line: 1012, column: 3, scope: !3380)
!3428 = !DILocation(line: 1017, column: 28, scope: !3393)
!3429 = !DILocation(line: 1017, column: 43, scope: !3393)
!3430 = !DILocation(line: 1018, column: 36, scope: !3393)
!3431 = !DILocation(line: 1019, column: 36, scope: !3393)
!3432 = !DILocation(line: 1019, column: 48, scope: !3393)
!3433 = !DILocation(line: 1021, column: 3, scope: !3393)
!3434 = !DILocation(line: 1021, column: 30, scope: !3393)
!3435 = !DILocation(line: 1021, column: 26, scope: !3393)
!3436 = !DILocation(line: 171, column: 45, scope: !1732, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 1022, column: 3, scope: !3393)
!3438 = !DILocation(line: 172, column: 33, scope: !1732, inlinedAt: !3437)
!3439 = !DILocation(line: 172, column: 57, scope: !1732, inlinedAt: !3437)
!3440 = !DILocation(line: 176, column: 6, scope: !1732, inlinedAt: !3437)
!3441 = !DILocation(line: 176, column: 12, scope: !1732, inlinedAt: !3437)
!3442 = !DILocation(line: 177, column: 8, scope: !1748, inlinedAt: !3437)
!3443 = !DILocation(line: 177, column: 23, scope: !1750, inlinedAt: !3437)
!3444 = !DILocation(line: 177, column: 19, scope: !1748, inlinedAt: !3437)
!3445 = !DILocation(line: 178, column: 5, scope: !1748, inlinedAt: !3437)
!3446 = !DILocation(line: 179, column: 6, scope: !1732, inlinedAt: !3437)
!3447 = !DILocation(line: 179, column: 17, scope: !1732, inlinedAt: !3437)
!3448 = !DILocation(line: 180, column: 6, scope: !1732, inlinedAt: !3437)
!3449 = !DILocation(line: 180, column: 18, scope: !1732, inlinedAt: !3437)
!3450 = !DILocation(line: 1023, column: 10, scope: !3393)
!3451 = !DILocation(line: 1024, column: 1, scope: !3393)
!3452 = !DILocation(line: 1023, column: 3, scope: !3393)
!3453 = distinct !DISubprogram(name: "quotearg_custom", scope: !188, file: !188, line: 1027, type: !3454, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!6, !17, !17, !17}
!3456 = !{!3457, !3458, !3459}
!3457 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3453, file: !188, line: 1027, type: !17)
!3458 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3453, file: !188, line: 1027, type: !17)
!3459 = !DILocalVariable(name: "arg", arg: 3, scope: !3453, file: !188, line: 1028, type: !17)
!3460 = !DILocation(line: 1027, column: 30, scope: !3453)
!3461 = !DILocation(line: 1027, column: 54, scope: !3453)
!3462 = !DILocation(line: 1028, column: 30, scope: !3453)
!3463 = !DILocation(line: 1009, column: 24, scope: !3380, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 1030, column: 10, scope: !3453)
!3465 = !DILocation(line: 1009, column: 39, scope: !3380, inlinedAt: !3464)
!3466 = !DILocation(line: 1010, column: 32, scope: !3380, inlinedAt: !3464)
!3467 = !DILocation(line: 1010, column: 57, scope: !3380, inlinedAt: !3464)
!3468 = !DILocation(line: 1017, column: 28, scope: !3393, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 1012, column: 10, scope: !3380, inlinedAt: !3464)
!3470 = !DILocation(line: 1017, column: 43, scope: !3393, inlinedAt: !3469)
!3471 = !DILocation(line: 1018, column: 36, scope: !3393, inlinedAt: !3469)
!3472 = !DILocation(line: 1019, column: 36, scope: !3393, inlinedAt: !3469)
!3473 = !DILocation(line: 1019, column: 48, scope: !3393, inlinedAt: !3469)
!3474 = !DILocation(line: 1021, column: 3, scope: !3393, inlinedAt: !3469)
!3475 = !DILocation(line: 1021, column: 30, scope: !3393, inlinedAt: !3469)
!3476 = !DILocation(line: 1021, column: 26, scope: !3393, inlinedAt: !3469)
!3477 = !DILocation(line: 171, column: 45, scope: !1732, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 1022, column: 3, scope: !3393, inlinedAt: !3469)
!3479 = !DILocation(line: 172, column: 33, scope: !1732, inlinedAt: !3478)
!3480 = !DILocation(line: 172, column: 57, scope: !1732, inlinedAt: !3478)
!3481 = !DILocation(line: 176, column: 6, scope: !1732, inlinedAt: !3478)
!3482 = !DILocation(line: 176, column: 12, scope: !1732, inlinedAt: !3478)
!3483 = !DILocation(line: 177, column: 8, scope: !1748, inlinedAt: !3478)
!3484 = !DILocation(line: 177, column: 23, scope: !1750, inlinedAt: !3478)
!3485 = !DILocation(line: 177, column: 19, scope: !1748, inlinedAt: !3478)
!3486 = !DILocation(line: 178, column: 5, scope: !1748, inlinedAt: !3478)
!3487 = !DILocation(line: 179, column: 6, scope: !1732, inlinedAt: !3478)
!3488 = !DILocation(line: 179, column: 17, scope: !1732, inlinedAt: !3478)
!3489 = !DILocation(line: 180, column: 6, scope: !1732, inlinedAt: !3478)
!3490 = !DILocation(line: 180, column: 18, scope: !1732, inlinedAt: !3478)
!3491 = !DILocation(line: 1023, column: 10, scope: !3393, inlinedAt: !3469)
!3492 = !DILocation(line: 1024, column: 1, scope: !3393, inlinedAt: !3469)
!3493 = !DILocation(line: 1030, column: 3, scope: !3453)
!3494 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !188, file: !188, line: 1034, type: !3495, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!6, !17, !17, !17, !9}
!3497 = !{!3498, !3499, !3500, !3501}
!3498 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3494, file: !188, line: 1034, type: !17)
!3499 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3494, file: !188, line: 1034, type: !17)
!3500 = !DILocalVariable(name: "arg", arg: 3, scope: !3494, file: !188, line: 1035, type: !17)
!3501 = !DILocalVariable(name: "argsize", arg: 4, scope: !3494, file: !188, line: 1035, type: !9)
!3502 = !DILocation(line: 1034, column: 34, scope: !3494)
!3503 = !DILocation(line: 1034, column: 58, scope: !3494)
!3504 = !DILocation(line: 1035, column: 34, scope: !3494)
!3505 = !DILocation(line: 1035, column: 46, scope: !3494)
!3506 = !DILocation(line: 1017, column: 28, scope: !3393, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 1037, column: 10, scope: !3494)
!3508 = !DILocation(line: 1017, column: 43, scope: !3393, inlinedAt: !3507)
!3509 = !DILocation(line: 1018, column: 36, scope: !3393, inlinedAt: !3507)
!3510 = !DILocation(line: 1019, column: 36, scope: !3393, inlinedAt: !3507)
!3511 = !DILocation(line: 1019, column: 48, scope: !3393, inlinedAt: !3507)
!3512 = !DILocation(line: 1021, column: 3, scope: !3393, inlinedAt: !3507)
!3513 = !DILocation(line: 1021, column: 30, scope: !3393, inlinedAt: !3507)
!3514 = !DILocation(line: 1021, column: 26, scope: !3393, inlinedAt: !3507)
!3515 = !DILocation(line: 171, column: 45, scope: !1732, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 1022, column: 3, scope: !3393, inlinedAt: !3507)
!3517 = !DILocation(line: 172, column: 33, scope: !1732, inlinedAt: !3516)
!3518 = !DILocation(line: 172, column: 57, scope: !1732, inlinedAt: !3516)
!3519 = !DILocation(line: 176, column: 6, scope: !1732, inlinedAt: !3516)
!3520 = !DILocation(line: 176, column: 12, scope: !1732, inlinedAt: !3516)
!3521 = !DILocation(line: 177, column: 8, scope: !1748, inlinedAt: !3516)
!3522 = !DILocation(line: 177, column: 23, scope: !1750, inlinedAt: !3516)
!3523 = !DILocation(line: 177, column: 19, scope: !1748, inlinedAt: !3516)
!3524 = !DILocation(line: 178, column: 5, scope: !1748, inlinedAt: !3516)
!3525 = !DILocation(line: 179, column: 6, scope: !1732, inlinedAt: !3516)
!3526 = !DILocation(line: 179, column: 17, scope: !1732, inlinedAt: !3516)
!3527 = !DILocation(line: 180, column: 6, scope: !1732, inlinedAt: !3516)
!3528 = !DILocation(line: 180, column: 18, scope: !1732, inlinedAt: !3516)
!3529 = !DILocation(line: 1023, column: 10, scope: !3393, inlinedAt: !3507)
!3530 = !DILocation(line: 1024, column: 1, scope: !3393, inlinedAt: !3507)
!3531 = !DILocation(line: 1037, column: 3, scope: !3494)
!3532 = distinct !DISubprogram(name: "quote_n_mem", scope: !188, file: !188, line: 1052, type: !3533, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!17, !62, !17, !9}
!3535 = !{!3536, !3537, !3538}
!3536 = !DILocalVariable(name: "n", arg: 1, scope: !3532, file: !188, line: 1052, type: !62)
!3537 = !DILocalVariable(name: "arg", arg: 2, scope: !3532, file: !188, line: 1052, type: !17)
!3538 = !DILocalVariable(name: "argsize", arg: 3, scope: !3532, file: !188, line: 1052, type: !9)
!3539 = !DILocation(line: 1052, column: 18, scope: !3532)
!3540 = !DILocation(line: 1052, column: 33, scope: !3532)
!3541 = !DILocation(line: 1052, column: 45, scope: !3532)
!3542 = !DILocation(line: 1054, column: 10, scope: !3532)
!3543 = !DILocation(line: 1054, column: 3, scope: !3532)
!3544 = distinct !DISubprogram(name: "quote_mem", scope: !188, file: !188, line: 1058, type: !3545, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!17, !17, !9}
!3547 = !{!3548, !3549}
!3548 = !DILocalVariable(name: "arg", arg: 1, scope: !3544, file: !188, line: 1058, type: !17)
!3549 = !DILocalVariable(name: "argsize", arg: 2, scope: !3544, file: !188, line: 1058, type: !9)
!3550 = !DILocation(line: 1058, column: 24, scope: !3544)
!3551 = !DILocation(line: 1058, column: 36, scope: !3544)
!3552 = !DILocation(line: 1052, column: 18, scope: !3532, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 1060, column: 10, scope: !3544)
!3554 = !DILocation(line: 1052, column: 33, scope: !3532, inlinedAt: !3553)
!3555 = !DILocation(line: 1052, column: 45, scope: !3532, inlinedAt: !3553)
!3556 = !DILocation(line: 1054, column: 10, scope: !3532, inlinedAt: !3553)
!3557 = !DILocation(line: 1060, column: 3, scope: !3544)
!3558 = distinct !DISubprogram(name: "quote_n", scope: !188, file: !188, line: 1064, type: !3559, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!17, !62, !17}
!3561 = !{!3562, !3563}
!3562 = !DILocalVariable(name: "n", arg: 1, scope: !3558, file: !188, line: 1064, type: !62)
!3563 = !DILocalVariable(name: "arg", arg: 2, scope: !3558, file: !188, line: 1064, type: !17)
!3564 = !DILocation(line: 1064, column: 14, scope: !3558)
!3565 = !DILocation(line: 1064, column: 29, scope: !3558)
!3566 = !DILocation(line: 1052, column: 18, scope: !3532, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 1066, column: 10, scope: !3558)
!3568 = !DILocation(line: 1052, column: 33, scope: !3532, inlinedAt: !3567)
!3569 = !DILocation(line: 1052, column: 45, scope: !3532, inlinedAt: !3567)
!3570 = !DILocation(line: 1054, column: 10, scope: !3532, inlinedAt: !3567)
!3571 = !DILocation(line: 1066, column: 3, scope: !3558)
!3572 = distinct !DISubprogram(name: "quote", scope: !188, file: !188, line: 1070, type: !3573, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!17, !17}
!3575 = !{!3576}
!3576 = !DILocalVariable(name: "arg", arg: 1, scope: !3572, file: !188, line: 1070, type: !17)
!3577 = !DILocation(line: 1070, column: 20, scope: !3572)
!3578 = !DILocation(line: 1064, column: 14, scope: !3558, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 1072, column: 10, scope: !3572)
!3580 = !DILocation(line: 1064, column: 29, scope: !3558, inlinedAt: !3579)
!3581 = !DILocation(line: 1052, column: 18, scope: !3532, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1066, column: 10, scope: !3558, inlinedAt: !3579)
!3583 = !DILocation(line: 1052, column: 33, scope: !3532, inlinedAt: !3582)
!3584 = !DILocation(line: 1052, column: 45, scope: !3532, inlinedAt: !3582)
!3585 = !DILocation(line: 1054, column: 10, scope: !3532, inlinedAt: !3582)
!3586 = !DILocation(line: 1072, column: 3, scope: !3572)
!3587 = distinct !DISubprogram(name: "parse_user_spec", scope: !604, file: !604, line: 259, type: !3588, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!17, !17, !607, !608, !609, !609}
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3591 = !DILocalVariable(name: "spec", arg: 1, scope: !3587, file: !604, line: 259, type: !17)
!3592 = !DILocalVariable(name: "uid", arg: 2, scope: !3587, file: !604, line: 259, type: !607)
!3593 = !DILocalVariable(name: "gid", arg: 3, scope: !3587, file: !604, line: 259, type: !608)
!3594 = !DILocalVariable(name: "username", arg: 4, scope: !3587, file: !604, line: 260, type: !609)
!3595 = !DILocalVariable(name: "groupname", arg: 5, scope: !3587, file: !604, line: 260, type: !609)
!3596 = !DILocalVariable(name: "colon", scope: !3587, file: !604, line: 262, type: !17)
!3597 = !DILocalVariable(name: "error_msg", scope: !3587, file: !604, line: 263, type: !17)
!3598 = !DILocalVariable(name: "dot", scope: !3599, file: !604, line: 274, type: !17)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !604, line: 267, column: 5)
!3600 = distinct !DILexicalBlock(scope: !3587, file: !604, line: 266, column: 7)
!3601 = !DILocation(line: 259, column: 30, scope: !3587)
!3602 = !DILocation(line: 259, column: 43, scope: !3587)
!3603 = !DILocation(line: 259, column: 55, scope: !3587)
!3604 = !DILocation(line: 260, column: 25, scope: !3587)
!3605 = !DILocation(line: 260, column: 42, scope: !3587)
!3606 = !DILocation(line: 262, column: 23, scope: !3587)
!3607 = !DILocation(line: 262, column: 29, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3587, file: !604, discriminator: 1)
!3609 = !DILocation(line: 262, column: 23, scope: !3608)
!3610 = !DILocation(line: 262, column: 23, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3587, file: !604, discriminator: 3)
!3612 = !DILocation(line: 262, column: 15, scope: !3587)
!3613 = !DILocation(line: 264, column: 5, scope: !3587)
!3614 = !DILocation(line: 263, column: 15, scope: !3587)
!3615 = !DILocation(line: 266, column: 11, scope: !3600)
!3616 = !DILocation(line: 266, column: 24, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !3600, file: !604, discriminator: 2)
!3618 = !DILocation(line: 274, column: 25, scope: !3599)
!3619 = !DILocation(line: 274, column: 19, scope: !3599)
!3620 = !DILocation(line: 275, column: 11, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3599, file: !604, line: 275, column: 11)
!3622 = !DILocation(line: 276, column: 11, scope: !3621)
!3623 = !DILocation(line: 276, column: 16, scope: !3624)
!3624 = !DILexicalBlockFile(scope: !3621, file: !604, discriminator: 1)
!3625 = !DILocation(line: 275, column: 11, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !3599, file: !604, discriminator: 1)
!3627 = !DILocation(line: 280, column: 3, scope: !3587)
!3628 = !DILocation(line: 102, column: 35, scope: !603)
!3629 = !DILocation(line: 102, column: 53, scope: !603)
!3630 = !DILocation(line: 103, column: 30, scope: !603)
!3631 = !DILocation(line: 103, column: 42, scope: !603)
!3632 = !DILocation(line: 104, column: 30, scope: !603)
!3633 = !DILocation(line: 104, column: 47, scope: !603)
!3634 = !DILocation(line: 115, column: 9, scope: !603)
!3635 = !DILocation(line: 116, column: 16, scope: !603)
!3636 = !DILocation(line: 116, column: 9, scope: !603)
!3637 = !DILocation(line: 117, column: 16, scope: !603)
!3638 = !DILocation(line: 117, column: 22, scope: !3639)
!3639 = !DILexicalBlockFile(scope: !603, file: !604, discriminator: 1)
!3640 = !DILocation(line: 117, column: 16, scope: !3639)
!3641 = !DILocation(line: 117, column: 16, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !603, file: !604, discriminator: 3)
!3643 = !DILocation(line: 117, column: 9, scope: !603)
!3644 = !DILocation(line: 110, column: 15, scope: !603)
!3645 = !DILocation(line: 120, column: 7, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !603, file: !604, line: 120, column: 7)
!3647 = !DILocation(line: 120, column: 7, scope: !603)
!3648 = !DILocation(line: 121, column: 15, scope: !3646)
!3649 = !DILocation(line: 121, column: 5, scope: !3646)
!3650 = !DILocation(line: 122, column: 7, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !603, file: !604, line: 122, column: 7)
!3652 = !DILocation(line: 122, column: 7, scope: !603)
!3653 = !DILocation(line: 123, column: 16, scope: !3651)
!3654 = !DILocation(line: 123, column: 5, scope: !3651)
!3655 = !DILocation(line: 113, column: 9, scope: !603)
!3656 = !DILocation(line: 130, column: 17, scope: !646)
!3657 = !DILocation(line: 130, column: 7, scope: !603)
!3658 = !DILocation(line: 132, column: 11, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !604, line: 132, column: 11)
!3660 = distinct !DILexicalBlock(scope: !646, file: !604, line: 131, column: 5)
!3661 = !DILocation(line: 132, column: 11, scope: !3660)
!3662 = !DILocation(line: 133, column: 13, scope: !3659)
!3663 = !DILocation(line: 133, column: 9, scope: !3659)
!3664 = !DILocation(line: 137, column: 31, scope: !645)
!3665 = !DILocation(line: 137, column: 14, scope: !645)
!3666 = !DILocation(line: 138, column: 16, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !645, file: !604, line: 138, column: 11)
!3668 = !DILocation(line: 138, column: 11, scope: !645)
!3669 = !DILocation(line: 140, column: 35, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !604, line: 139, column: 9)
!3671 = !DILocation(line: 140, column: 15, scope: !3670)
!3672 = !DILocation(line: 141, column: 11, scope: !3670)
!3673 = !DILocation(line: 141, column: 19, scope: !3670)
!3674 = !DILocation(line: 142, column: 9, scope: !3670)
!3675 = !DILocation(line: 145, column: 41, scope: !3639)
!3676 = !DILocation(line: 145, column: 29, scope: !3639)
!3677 = !DILocation(line: 145, column: 46, scope: !3639)
!3678 = !DILocation(line: 145, column: 8, scope: !3639)
!3679 = !DILocation(line: 145, column: 8, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !603, file: !604, discriminator: 4)
!3681 = !DILocation(line: 114, column: 15, scope: !603)
!3682 = !DILocation(line: 158, column: 9, scope: !651)
!3683 = !DILocation(line: 158, column: 7, scope: !603)
!3684 = !DILocation(line: 161, column: 14, scope: !650)
!3685 = !DILocation(line: 161, column: 17, scope: !650)
!3686 = !DILocation(line: 161, column: 33, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !650, file: !604, discriminator: 2)
!3688 = !DILocation(line: 111, column: 18, scope: !603)
!3689 = !DILocation(line: 162, column: 15, scope: !649)
!3690 = !DILocation(line: 162, column: 11, scope: !650)
!3691 = !DILocation(line: 164, column: 45, scope: !648)
!3692 = !DILocation(line: 164, column: 58, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !648, file: !604, discriminator: 1)
!3694 = !DILocation(line: 164, column: 53, scope: !648)
!3695 = !DILocation(line: 165, column: 15, scope: !648)
!3696 = !DILocation(line: 173, column: 15, scope: !653)
!3697 = !DILocation(line: 173, column: 33, scope: !653)
!3698 = !DILocation(line: 174, column: 19, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !653, file: !604, line: 174, column: 19)
!3700 = !DILocation(line: 174, column: 52, scope: !3699)
!3701 = !DILocation(line: 175, column: 22, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !3699, file: !604, discriminator: 1)
!3703 = !DILocation(line: 175, column: 26, scope: !3702)
!3704 = !DILocation(line: 175, column: 19, scope: !3699)
!3705 = !DILocation(line: 175, column: 39, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3699, file: !604, discriminator: 2)
!3707 = !DILocation(line: 175, column: 51, scope: !3706)
!3708 = !DILocation(line: 174, column: 19, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !653, file: !604, discriminator: 1)
!3710 = !DILocation(line: 179, column: 13, scope: !654)
!3711 = !DILocation(line: 183, column: 23, scope: !658)
!3712 = !DILocation(line: 184, column: 17, scope: !657)
!3713 = !DILocation(line: 184, column: 38, scope: !3714)
!3714 = !DILexicalBlockFile(scope: !657, file: !604, discriminator: 1)
!3715 = !DILocation(line: 184, column: 25, scope: !657)
!3716 = !DILocation(line: 188, column: 15, scope: !656)
!3717 = !DILocation(line: 188, column: 20, scope: !656)
!3718 = !DILocation(line: 189, column: 27, scope: !656)
!3719 = !DILocation(line: 190, column: 21, scope: !656)
!3720 = !DILocation(line: 112, column: 17, scope: !603)
!3721 = !DILocation(line: 191, column: 32, scope: !656)
!3722 = !DILocation(line: 191, column: 43, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !656, file: !604, discriminator: 1)
!3724 = !DILocation(line: 191, column: 32, scope: !3723)
!3725 = !DILocation(line: 191, column: 64, scope: !3726)
!3726 = !DILexicalBlockFile(scope: !656, file: !604, discriminator: 2)
!3727 = !DILocation(line: 191, column: 53, scope: !3726)
!3728 = !DILocation(line: 191, column: 32, scope: !3726)
!3729 = !DILocation(line: 191, column: 32, scope: !3730)
!3730 = !DILexicalBlockFile(scope: !656, file: !604, discriminator: 3)
!3731 = !DILocation(line: 191, column: 23, scope: !3730)
!3732 = !DILocation(line: 192, column: 15, scope: !656)
!3733 = !DILocation(line: 193, column: 13, scope: !657)
!3734 = !DILocation(line: 193, column: 13, scope: !656)
!3735 = !DILocation(line: 195, column: 7, scope: !650)
!3736 = !DILocation(line: 196, column: 5, scope: !650)
!3737 = !DILocation(line: 198, column: 9, scope: !663)
!3738 = !DILocation(line: 198, column: 30, scope: !3739)
!3739 = !DILexicalBlockFile(scope: !663, file: !604, discriminator: 1)
!3740 = !DILocation(line: 198, column: 17, scope: !663)
!3741 = !DILocation(line: 202, column: 14, scope: !662)
!3742 = !DILocation(line: 202, column: 17, scope: !662)
!3743 = !DILocation(line: 202, column: 33, scope: !3744)
!3744 = !DILexicalBlockFile(scope: !662, file: !604, discriminator: 2)
!3745 = !DILocation(line: 203, column: 15, scope: !661)
!3746 = !DILocation(line: 203, column: 11, scope: !662)
!3747 = !DILocation(line: 205, column: 11, scope: !660)
!3748 = !DILocation(line: 205, column: 29, scope: !660)
!3749 = !DILocation(line: 206, column: 15, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !660, file: !604, line: 206, column: 15)
!3751 = !DILocation(line: 206, column: 48, scope: !3750)
!3752 = !DILocation(line: 207, column: 18, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3750, file: !604, discriminator: 1)
!3754 = !DILocation(line: 207, column: 22, scope: !3753)
!3755 = !DILocation(line: 207, column: 15, scope: !3750)
!3756 = !DILocation(line: 207, column: 35, scope: !3757)
!3757 = !DILexicalBlockFile(scope: !3750, file: !604, discriminator: 2)
!3758 = !DILocation(line: 207, column: 47, scope: !3757)
!3759 = !DILocation(line: 206, column: 15, scope: !3760)
!3760 = !DILexicalBlockFile(scope: !660, file: !604, discriminator: 1)
!3761 = !DILocation(line: 211, column: 9, scope: !661)
!3762 = !DILocation(line: 211, column: 9, scope: !660)
!3763 = !DILocation(line: 213, column: 21, scope: !661)
!3764 = !{!1157, !886, i64 16}
!3765 = !DILocation(line: 214, column: 7, scope: !662)
!3766 = !DILocation(line: 215, column: 15, scope: !662)
!3767 = !DILocation(line: 216, column: 5, scope: !662)
!3768 = !DILocation(line: 218, column: 17, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !603, file: !604, line: 218, column: 7)
!3770 = !DILocation(line: 218, column: 7, scope: !603)
!3771 = !DILocation(line: 220, column: 12, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3769, file: !604, line: 219, column: 5)
!3773 = !DILocation(line: 221, column: 11, scope: !3772)
!3774 = !DILocation(line: 222, column: 14, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3772, file: !604, line: 221, column: 11)
!3776 = !DILocation(line: 222, column: 9, scope: !3775)
!3777 = !DILocation(line: 223, column: 11, scope: !3772)
!3778 = !DILocation(line: 225, column: 21, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !604, line: 224, column: 9)
!3780 = distinct !DILexicalBlock(scope: !3772, file: !604, line: 223, column: 11)
!3781 = !DILocation(line: 227, column: 9, scope: !3779)
!3782 = !DILocation(line: 228, column: 11, scope: !3772)
!3783 = !DILocation(line: 230, column: 22, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !604, line: 229, column: 9)
!3785 = distinct !DILexicalBlock(scope: !3772, file: !604, line: 228, column: 11)
!3786 = !DILocation(line: 232, column: 9, scope: !3784)
!3787 = !DILocation(line: 235, column: 3, scope: !603)
!3788 = !DILocation(line: 236, column: 3, scope: !603)
!3789 = !DILocation(line: 237, column: 10, scope: !603)
!3790 = !DILocation(line: 237, column: 22, scope: !3639)
!3791 = !DILocation(line: 237, column: 10, scope: !3639)
!3792 = !DILocation(line: 237, column: 10, scope: !3642)
!3793 = !DILocation(line: 237, column: 3, scope: !3642)
!3794 = distinct !DISubprogram(name: "version_etc_arn", scope: !672, file: !672, line: 62, type: !3795, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !3852)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !3797, !17, !17, !17, !3851, !9}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3799, line: 49, baseType: !3800)
!3799 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3801, line: 241, size: 1728, elements: !3802)
!3801 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3802 = !{!3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3823, !3824, !3825, !3826, !3829, !3830, !3832, !3836, !3839, !3841, !3842, !3843, !3844, !3845, !3846, !3847}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3800, file: !3801, line: 242, baseType: !62, size: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3800, file: !3801, line: 247, baseType: !6, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3800, file: !3801, line: 248, baseType: !6, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3800, file: !3801, line: 249, baseType: !6, size: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3800, file: !3801, line: 250, baseType: !6, size: 64, offset: 256)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3800, file: !3801, line: 251, baseType: !6, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3800, file: !3801, line: 252, baseType: !6, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3800, file: !3801, line: 253, baseType: !6, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3800, file: !3801, line: 254, baseType: !6, size: 64, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3800, file: !3801, line: 256, baseType: !6, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3800, file: !3801, line: 257, baseType: !6, size: 64, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3800, file: !3801, line: 258, baseType: !6, size: 64, offset: 704)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3800, file: !3801, line: 260, baseType: !3816, size: 64, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3801, line: 156, size: 192, elements: !3818)
!3818 = !{!3819, !3820, !3822}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3817, file: !3801, line: 157, baseType: !3816, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3817, file: !3801, line: 158, baseType: !3821, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3817, file: !3801, line: 162, baseType: !62, size: 32, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3800, file: !3801, line: 262, baseType: !3821, size: 64, offset: 832)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3800, file: !3801, line: 264, baseType: !62, size: 32, offset: 896)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3800, file: !3801, line: 268, baseType: !62, size: 32, offset: 928)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3800, file: !3801, line: 270, baseType: !3827, size: 64, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !25, line: 140, baseType: !3828)
!3828 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3800, file: !3801, line: 274, baseType: !184, size: 16, offset: 1024)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3800, file: !3801, line: 275, baseType: !3831, size: 8, offset: 1040)
!3831 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3800, file: !3801, line: 276, baseType: !3833, size: 8, offset: 1048)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !3834)
!3834 = !{!3835}
!3835 = !DISubrange(count: 1)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3800, file: !3801, line: 280, baseType: !3837, size: 64, offset: 1088)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3801, line: 150, baseType: null)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3800, file: !3801, line: 289, baseType: !3840, size: 64, offset: 1152)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !25, line: 141, baseType: !3828)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3800, file: !3801, line: 297, baseType: !8, size: 64, offset: 1216)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3800, file: !3801, line: 298, baseType: !8, size: 64, offset: 1280)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3800, file: !3801, line: 299, baseType: !8, size: 64, offset: 1344)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3800, file: !3801, line: 300, baseType: !8, size: 64, offset: 1408)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3800, file: !3801, line: 302, baseType: !9, size: 64, offset: 1472)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3800, file: !3801, line: 303, baseType: !62, size: 32, offset: 1536)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3800, file: !3801, line: 305, baseType: !3848, size: 160, offset: 1568)
!3848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !3849)
!3849 = !{!3850}
!3850 = !DISubrange(count: 20)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3858}
!3853 = !DILocalVariable(name: "stream", arg: 1, scope: !3794, file: !672, line: 62, type: !3797)
!3854 = !DILocalVariable(name: "command_name", arg: 2, scope: !3794, file: !672, line: 63, type: !17)
!3855 = !DILocalVariable(name: "package", arg: 3, scope: !3794, file: !672, line: 63, type: !17)
!3856 = !DILocalVariable(name: "version", arg: 4, scope: !3794, file: !672, line: 64, type: !17)
!3857 = !DILocalVariable(name: "authors", arg: 5, scope: !3794, file: !672, line: 65, type: !3851)
!3858 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3794, file: !672, line: 65, type: !9)
!3859 = !DILocation(line: 62, column: 24, scope: !3794)
!3860 = !DILocation(line: 63, column: 30, scope: !3794)
!3861 = !DILocation(line: 63, column: 56, scope: !3794)
!3862 = !DILocation(line: 64, column: 30, scope: !3794)
!3863 = !DILocation(line: 65, column: 39, scope: !3794)
!3864 = !DILocation(line: 65, column: 55, scope: !3794)
!3865 = !DILocation(line: 67, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3794, file: !672, line: 67, column: 7)
!3867 = !DILocation(line: 67, column: 7, scope: !3794)
!3868 = !DILocation(line: 68, column: 5, scope: !3866)
!3869 = !DILocation(line: 70, column: 5, scope: !3866)
!3870 = !DILocation(line: 84, column: 3, scope: !3794)
!3871 = !DILocation(line: 84, column: 3, scope: !3872)
!3872 = !DILexicalBlockFile(scope: !3794, file: !672, discriminator: 1)
!3873 = !DILocation(line: 86, column: 3, scope: !3794)
!3874 = !DILocation(line: 86, column: 3, scope: !3872)
!3875 = !DILocation(line: 95, column: 3, scope: !3794)
!3876 = !DILocation(line: 99, column: 7, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3794, file: !672, line: 96, column: 5)
!3878 = !DILocation(line: 102, column: 7, scope: !3877)
!3879 = !DILocation(line: 102, column: 7, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3877, file: !672, discriminator: 1)
!3881 = !DILocation(line: 103, column: 7, scope: !3877)
!3882 = !DILocation(line: 106, column: 7, scope: !3877)
!3883 = !DILocation(line: 106, column: 7, scope: !3880)
!3884 = !DILocation(line: 107, column: 7, scope: !3877)
!3885 = !DILocation(line: 110, column: 7, scope: !3877)
!3886 = !DILocation(line: 110, column: 7, scope: !3880)
!3887 = !DILocation(line: 112, column: 7, scope: !3877)
!3888 = !DILocation(line: 117, column: 7, scope: !3877)
!3889 = !DILocation(line: 117, column: 7, scope: !3880)
!3890 = !DILocation(line: 119, column: 7, scope: !3877)
!3891 = !DILocation(line: 124, column: 7, scope: !3877)
!3892 = !DILocation(line: 124, column: 7, scope: !3880)
!3893 = !DILocation(line: 126, column: 7, scope: !3877)
!3894 = !DILocation(line: 131, column: 7, scope: !3877)
!3895 = !DILocation(line: 131, column: 7, scope: !3880)
!3896 = !DILocation(line: 134, column: 7, scope: !3877)
!3897 = !DILocation(line: 139, column: 7, scope: !3877)
!3898 = !DILocation(line: 139, column: 7, scope: !3880)
!3899 = !DILocation(line: 142, column: 7, scope: !3877)
!3900 = !DILocation(line: 147, column: 7, scope: !3877)
!3901 = !DILocation(line: 147, column: 7, scope: !3880)
!3902 = !DILocation(line: 151, column: 7, scope: !3877)
!3903 = !DILocation(line: 156, column: 7, scope: !3877)
!3904 = !DILocation(line: 156, column: 7, scope: !3880)
!3905 = !DILocation(line: 160, column: 7, scope: !3877)
!3906 = !DILocation(line: 167, column: 7, scope: !3877)
!3907 = !DILocation(line: 167, column: 7, scope: !3880)
!3908 = !DILocation(line: 171, column: 7, scope: !3877)
!3909 = !DILocation(line: 173, column: 1, scope: !3794)
!3910 = distinct !DISubprogram(name: "version_etc_ar", scope: !672, file: !672, line: 180, type: !3911, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{null, !3797, !17, !17, !17, !3851}
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919}
!3914 = !DILocalVariable(name: "stream", arg: 1, scope: !3910, file: !672, line: 180, type: !3797)
!3915 = !DILocalVariable(name: "command_name", arg: 2, scope: !3910, file: !672, line: 181, type: !17)
!3916 = !DILocalVariable(name: "package", arg: 3, scope: !3910, file: !672, line: 181, type: !17)
!3917 = !DILocalVariable(name: "version", arg: 4, scope: !3910, file: !672, line: 182, type: !17)
!3918 = !DILocalVariable(name: "authors", arg: 5, scope: !3910, file: !672, line: 182, type: !3851)
!3919 = !DILocalVariable(name: "n_authors", scope: !3910, file: !672, line: 184, type: !9)
!3920 = !DILocation(line: 180, column: 23, scope: !3910)
!3921 = !DILocation(line: 181, column: 29, scope: !3910)
!3922 = !DILocation(line: 181, column: 55, scope: !3910)
!3923 = !DILocation(line: 182, column: 29, scope: !3910)
!3924 = !DILocation(line: 182, column: 59, scope: !3910)
!3925 = !DILocation(line: 184, column: 10, scope: !3910)
!3926 = !DILocation(line: 186, column: 8, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3910, file: !672, line: 186, column: 3)
!3928 = !DILocation(line: 186, column: 23, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3930, file: !672, discriminator: 1)
!3930 = distinct !DILexicalBlock(scope: !3927, file: !672, line: 186, column: 3)
!3931 = !DILocation(line: 186, column: 3, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3927, file: !672, discriminator: 1)
!3933 = !DILocation(line: 186, column: 52, scope: !3934)
!3934 = !DILexicalBlockFile(scope: !3930, file: !672, discriminator: 3)
!3935 = distinct !{!3935, !3936, !3937}
!3936 = !DILocation(line: 186, column: 3, scope: !3927)
!3937 = !DILocation(line: 187, column: 5, scope: !3927)
!3938 = !DILocation(line: 188, column: 3, scope: !3910)
!3939 = !DILocation(line: 189, column: 1, scope: !3910)
!3940 = distinct !DISubprogram(name: "version_etc_va", scope: !672, file: !672, line: 196, type: !3941, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !3950)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{null, !3797, !17, !17, !17, !3943}
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !669, line: 189, size: 192, elements: !3945)
!3945 = !{!3946, !3947, !3948, !3949}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3944, file: !669, line: 189, baseType: !26, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3944, file: !669, line: 189, baseType: !26, size: 32, offset: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3944, file: !669, line: 189, baseType: !8, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3944, file: !669, line: 189, baseType: !8, size: 64, offset: 128)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957}
!3951 = !DILocalVariable(name: "stream", arg: 1, scope: !3940, file: !672, line: 196, type: !3797)
!3952 = !DILocalVariable(name: "command_name", arg: 2, scope: !3940, file: !672, line: 197, type: !17)
!3953 = !DILocalVariable(name: "package", arg: 3, scope: !3940, file: !672, line: 197, type: !17)
!3954 = !DILocalVariable(name: "version", arg: 4, scope: !3940, file: !672, line: 198, type: !17)
!3955 = !DILocalVariable(name: "authors", arg: 5, scope: !3940, file: !672, line: 198, type: !3943)
!3956 = !DILocalVariable(name: "n_authors", scope: !3940, file: !672, line: 200, type: !9)
!3957 = !DILocalVariable(name: "authtab", scope: !3940, file: !672, line: 201, type: !3958)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !106)
!3959 = !DILocation(line: 196, column: 23, scope: !3940)
!3960 = !DILocation(line: 197, column: 29, scope: !3940)
!3961 = !DILocation(line: 197, column: 55, scope: !3940)
!3962 = !DILocation(line: 198, column: 29, scope: !3940)
!3963 = !DILocation(line: 198, column: 46, scope: !3940)
!3964 = !DILocation(line: 201, column: 3, scope: !3940)
!3965 = !DILocation(line: 201, column: 15, scope: !3940)
!3966 = !DILocation(line: 200, column: 10, scope: !3940)
!3967 = !DILocation(line: 205, column: 35, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3969, file: !672, discriminator: 1)
!3969 = distinct !DILexicalBlock(scope: !3970, file: !672, line: 203, column: 3)
!3970 = distinct !DILexicalBlock(scope: !3940, file: !672, line: 203, column: 3)
!3971 = !DILocation(line: 205, column: 35, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3969, file: !672, discriminator: 2)
!3973 = !DILocation(line: 205, column: 35, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3969, file: !672, discriminator: 3)
!3975 = !DILocation(line: 205, column: 35, scope: !3976)
!3976 = !DILexicalBlockFile(scope: !3969, file: !672, discriminator: 4)
!3977 = !DILocation(line: 205, column: 14, scope: !3976)
!3978 = !DILocation(line: 205, column: 33, scope: !3976)
!3979 = !DILocation(line: 205, column: 67, scope: !3976)
!3980 = !DILocation(line: 203, column: 3, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3970, file: !672, discriminator: 1)
!3982 = !DILocation(line: 208, column: 3, scope: !3940)
!3983 = !DILocation(line: 210, column: 1, scope: !3940)
!3984 = distinct !DISubprogram(name: "version_etc", scope: !672, file: !672, line: 227, type: !3985, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{null, !3797, !17, !17, !17, null}
!3987 = !{!3988, !3989, !3990, !3991, !3992}
!3988 = !DILocalVariable(name: "stream", arg: 1, scope: !3984, file: !672, line: 227, type: !3797)
!3989 = !DILocalVariable(name: "command_name", arg: 2, scope: !3984, file: !672, line: 228, type: !17)
!3990 = !DILocalVariable(name: "package", arg: 3, scope: !3984, file: !672, line: 228, type: !17)
!3991 = !DILocalVariable(name: "version", arg: 4, scope: !3984, file: !672, line: 229, type: !17)
!3992 = !DILocalVariable(name: "authors", scope: !3984, file: !672, line: 231, type: !3993)
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3799, line: 80, baseType: !3994)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3995, line: 50, baseType: !3996)
!3995 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !669, line: 231, baseType: !3997)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3944, size: 192, elements: !3834)
!3998 = !DILocation(line: 227, column: 20, scope: !3984)
!3999 = !DILocation(line: 228, column: 26, scope: !3984)
!4000 = !DILocation(line: 228, column: 52, scope: !3984)
!4001 = !DILocation(line: 229, column: 26, scope: !3984)
!4002 = !DILocation(line: 231, column: 3, scope: !3984)
!4003 = !DILocation(line: 231, column: 11, scope: !3984)
!4004 = !DILocation(line: 233, column: 3, scope: !3984)
!4005 = !DILocation(line: 234, column: 3, scope: !3984)
!4006 = !DILocation(line: 235, column: 3, scope: !3984)
!4007 = !DILocation(line: 236, column: 1, scope: !3984)
!4008 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !672, file: !672, line: 239, type: !1528, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !4)
!4009 = !DILocation(line: 245, column: 3, scope: !4008)
!4010 = !DILocation(line: 245, column: 3, scope: !4011)
!4011 = !DILexicalBlockFile(scope: !4008, file: !672, discriminator: 1)
!4012 = !DILocation(line: 251, column: 3, scope: !4008)
!4013 = !DILocation(line: 251, column: 3, scope: !4011)
!4014 = !DILocation(line: 256, column: 3, scope: !4008)
!4015 = !DILocation(line: 256, column: 3, scope: !4011)
!4016 = !DILocation(line: 258, column: 1, scope: !4008)
!4017 = distinct !DISubprogram(name: "xnmalloc", scope: !680, file: !680, line: 105, type: !4018, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!8, !9, !9}
!4020 = !{!4021, !4022}
!4021 = !DILocalVariable(name: "n", arg: 1, scope: !4017, file: !680, line: 105, type: !9)
!4022 = !DILocalVariable(name: "s", arg: 2, scope: !4017, file: !680, line: 105, type: !9)
!4023 = !DILocation(line: 105, column: 18, scope: !4017)
!4024 = !DILocation(line: 105, column: 28, scope: !4017)
!4025 = !DILocation(line: 107, column: 7, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4017, file: !680, line: 107, column: 7)
!4027 = !DILocation(line: 107, column: 7, scope: !4017)
!4028 = !DILocation(line: 108, column: 5, scope: !4026)
!4029 = !DILocation(line: 109, column: 21, scope: !4017)
!4030 = !DILocalVariable(name: "n", arg: 1, scope: !4031, file: !4032, line: 39, type: !9)
!4031 = distinct !DISubprogram(name: "xmalloc", scope: !4032, file: !4032, line: 39, type: !4033, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4035)
!4032 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!8, !9}
!4035 = !{!4030, !4036}
!4036 = !DILocalVariable(name: "p", scope: !4031, file: !4032, line: 41, type: !8)
!4037 = !DILocation(line: 39, column: 17, scope: !4031, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 109, column: 10, scope: !4017)
!4039 = !DILocation(line: 41, column: 13, scope: !4031, inlinedAt: !4038)
!4040 = !DILocation(line: 41, column: 9, scope: !4031, inlinedAt: !4038)
!4041 = !DILocation(line: 42, column: 8, scope: !4042, inlinedAt: !4038)
!4042 = distinct !DILexicalBlock(scope: !4031, file: !4032, line: 42, column: 7)
!4043 = !DILocation(line: 42, column: 15, scope: !4044, inlinedAt: !4038)
!4044 = !DILexicalBlockFile(scope: !4042, file: !4032, discriminator: 1)
!4045 = !DILocation(line: 42, column: 10, scope: !4042, inlinedAt: !4038)
!4046 = !DILocation(line: 43, column: 5, scope: !4042, inlinedAt: !4038)
!4047 = !DILocation(line: 109, column: 3, scope: !4017)
!4048 = !DILocation(line: 39, column: 17, scope: !4031)
!4049 = !DILocation(line: 41, column: 13, scope: !4031)
!4050 = !DILocation(line: 41, column: 9, scope: !4031)
!4051 = !DILocation(line: 42, column: 8, scope: !4042)
!4052 = !DILocation(line: 42, column: 15, scope: !4044)
!4053 = !DILocation(line: 42, column: 10, scope: !4042)
!4054 = !DILocation(line: 43, column: 5, scope: !4042)
!4055 = !DILocation(line: 44, column: 3, scope: !4031)
!4056 = distinct !DISubprogram(name: "xnrealloc", scope: !680, file: !680, line: 118, type: !4057, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4059)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!8, !8, !9, !9}
!4059 = !{!4060, !4061, !4062}
!4060 = !DILocalVariable(name: "p", arg: 1, scope: !4056, file: !680, line: 118, type: !8)
!4061 = !DILocalVariable(name: "n", arg: 2, scope: !4056, file: !680, line: 118, type: !9)
!4062 = !DILocalVariable(name: "s", arg: 3, scope: !4056, file: !680, line: 118, type: !9)
!4063 = !DILocation(line: 118, column: 18, scope: !4056)
!4064 = !DILocation(line: 118, column: 28, scope: !4056)
!4065 = !DILocation(line: 118, column: 38, scope: !4056)
!4066 = !DILocation(line: 120, column: 7, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4056, file: !680, line: 120, column: 7)
!4068 = !DILocation(line: 120, column: 7, scope: !4056)
!4069 = !DILocation(line: 121, column: 5, scope: !4067)
!4070 = !DILocation(line: 122, column: 25, scope: !4056)
!4071 = !DILocalVariable(name: "p", arg: 1, scope: !4072, file: !4032, line: 51, type: !8)
!4072 = distinct !DISubprogram(name: "xrealloc", scope: !4032, file: !4032, line: 51, type: !4073, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4075)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!8, !8, !9}
!4075 = !{!4071, !4076}
!4076 = !DILocalVariable(name: "n", arg: 2, scope: !4072, file: !4032, line: 51, type: !9)
!4077 = !DILocation(line: 51, column: 17, scope: !4072, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 122, column: 10, scope: !4056)
!4079 = !DILocation(line: 51, column: 27, scope: !4072, inlinedAt: !4078)
!4080 = !DILocation(line: 53, column: 8, scope: !4081, inlinedAt: !4078)
!4081 = distinct !DILexicalBlock(scope: !4072, file: !4032, line: 53, column: 7)
!4082 = !DILocation(line: 53, column: 13, scope: !4083, inlinedAt: !4078)
!4083 = !DILexicalBlockFile(scope: !4081, file: !4032, discriminator: 1)
!4084 = !DILocation(line: 53, column: 10, scope: !4081, inlinedAt: !4078)
!4085 = !DILocation(line: 57, column: 7, scope: !4086, inlinedAt: !4078)
!4086 = distinct !DILexicalBlock(scope: !4081, file: !4032, line: 54, column: 5)
!4087 = !DILocation(line: 58, column: 7, scope: !4086, inlinedAt: !4078)
!4088 = !DILocation(line: 61, column: 7, scope: !4072, inlinedAt: !4078)
!4089 = !DILocation(line: 62, column: 8, scope: !4090, inlinedAt: !4078)
!4090 = distinct !DILexicalBlock(scope: !4072, file: !4032, line: 62, column: 7)
!4091 = !DILocation(line: 62, column: 13, scope: !4092, inlinedAt: !4078)
!4092 = !DILexicalBlockFile(scope: !4090, file: !4032, discriminator: 1)
!4093 = !DILocation(line: 62, column: 10, scope: !4090, inlinedAt: !4078)
!4094 = !DILocation(line: 63, column: 5, scope: !4090, inlinedAt: !4078)
!4095 = !DILocation(line: 122, column: 3, scope: !4056)
!4096 = !DILocation(line: 51, column: 17, scope: !4072)
!4097 = !DILocation(line: 51, column: 27, scope: !4072)
!4098 = !DILocation(line: 53, column: 8, scope: !4081)
!4099 = !DILocation(line: 53, column: 13, scope: !4083)
!4100 = !DILocation(line: 53, column: 10, scope: !4081)
!4101 = !DILocation(line: 57, column: 7, scope: !4086)
!4102 = !DILocation(line: 58, column: 7, scope: !4086)
!4103 = !DILocation(line: 61, column: 7, scope: !4072)
!4104 = !DILocation(line: 62, column: 8, scope: !4090)
!4105 = !DILocation(line: 62, column: 13, scope: !4092)
!4106 = !DILocation(line: 62, column: 10, scope: !4090)
!4107 = !DILocation(line: 63, column: 5, scope: !4090)
!4108 = !DILocation(line: 65, column: 1, scope: !4072)
!4109 = !DILocation(line: 180, column: 19, scope: !681)
!4110 = !DILocation(line: 180, column: 30, scope: !681)
!4111 = !DILocation(line: 180, column: 41, scope: !681)
!4112 = !DILocation(line: 182, column: 14, scope: !681)
!4113 = !DILocation(line: 182, column: 10, scope: !681)
!4114 = !DILocation(line: 184, column: 9, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !681, file: !680, line: 184, column: 7)
!4116 = !DILocation(line: 184, column: 7, scope: !681)
!4117 = !DILocation(line: 186, column: 13, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !680, line: 186, column: 11)
!4119 = distinct !DILexicalBlock(scope: !4115, file: !680, line: 185, column: 5)
!4120 = !DILocation(line: 186, column: 11, scope: !4119)
!4121 = !DILocation(line: 194, column: 30, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4118, file: !680, line: 187, column: 9)
!4123 = !DILocation(line: 195, column: 16, scope: !4122)
!4124 = !DILocation(line: 195, column: 13, scope: !4122)
!4125 = !DILocation(line: 196, column: 9, scope: !4122)
!4126 = !DILocation(line: 204, column: 69, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !680, line: 204, column: 11)
!4128 = distinct !DILexicalBlock(scope: !4115, file: !680, line: 199, column: 5)
!4129 = !DILocation(line: 205, column: 11, scope: !4127)
!4130 = !DILocation(line: 204, column: 11, scope: !4128)
!4131 = !DILocation(line: 206, column: 9, scope: !4127)
!4132 = !DILocation(line: 210, column: 7, scope: !681)
!4133 = !DILocation(line: 211, column: 25, scope: !681)
!4134 = !DILocation(line: 51, column: 17, scope: !4072, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 211, column: 10, scope: !681)
!4136 = !DILocation(line: 51, column: 27, scope: !4072, inlinedAt: !4135)
!4137 = !DILocation(line: 53, column: 10, scope: !4081, inlinedAt: !4135)
!4138 = !DILocation(line: 207, column: 14, scope: !4128)
!4139 = !DILocation(line: 207, column: 18, scope: !4128)
!4140 = !DILocation(line: 207, column: 9, scope: !4128)
!4141 = !DILocation(line: 53, column: 8, scope: !4081, inlinedAt: !4135)
!4142 = !DILocation(line: 57, column: 7, scope: !4086, inlinedAt: !4135)
!4143 = !DILocation(line: 58, column: 7, scope: !4086, inlinedAt: !4135)
!4144 = !DILocation(line: 61, column: 7, scope: !4072, inlinedAt: !4135)
!4145 = !DILocation(line: 62, column: 8, scope: !4090, inlinedAt: !4135)
!4146 = !DILocation(line: 62, column: 13, scope: !4092, inlinedAt: !4135)
!4147 = !DILocation(line: 62, column: 10, scope: !4090, inlinedAt: !4135)
!4148 = !DILocation(line: 63, column: 5, scope: !4090, inlinedAt: !4135)
!4149 = !DILocation(line: 211, column: 3, scope: !681)
!4150 = distinct !DISubprogram(name: "xcharalloc", scope: !680, file: !680, line: 220, type: !2860, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4151)
!4151 = !{!4152}
!4152 = !DILocalVariable(name: "n", arg: 1, scope: !4150, file: !680, line: 220, type: !9)
!4153 = !DILocation(line: 220, column: 20, scope: !4150)
!4154 = !DILocation(line: 39, column: 17, scope: !4031, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 222, column: 10, scope: !4150)
!4156 = !DILocation(line: 41, column: 13, scope: !4031, inlinedAt: !4155)
!4157 = !DILocation(line: 41, column: 9, scope: !4031, inlinedAt: !4155)
!4158 = !DILocation(line: 42, column: 8, scope: !4042, inlinedAt: !4155)
!4159 = !DILocation(line: 42, column: 15, scope: !4044, inlinedAt: !4155)
!4160 = !DILocation(line: 42, column: 10, scope: !4042, inlinedAt: !4155)
!4161 = !DILocation(line: 43, column: 5, scope: !4042, inlinedAt: !4155)
!4162 = !DILocation(line: 222, column: 3, scope: !4150)
!4163 = distinct !DISubprogram(name: "x2realloc", scope: !4032, file: !4032, line: 74, type: !4164, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4166)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!8, !8, !684}
!4166 = !{!4167, !4168}
!4167 = !DILocalVariable(name: "p", arg: 1, scope: !4163, file: !4032, line: 74, type: !8)
!4168 = !DILocalVariable(name: "pn", arg: 2, scope: !4163, file: !4032, line: 74, type: !684)
!4169 = !DILocation(line: 74, column: 18, scope: !4163)
!4170 = !DILocation(line: 74, column: 29, scope: !4163)
!4171 = !DILocation(line: 180, column: 19, scope: !681, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 76, column: 10, scope: !4163)
!4173 = !DILocation(line: 180, column: 30, scope: !681, inlinedAt: !4172)
!4174 = !DILocation(line: 180, column: 41, scope: !681, inlinedAt: !4172)
!4175 = !DILocation(line: 182, column: 14, scope: !681, inlinedAt: !4172)
!4176 = !DILocation(line: 182, column: 10, scope: !681, inlinedAt: !4172)
!4177 = !DILocation(line: 184, column: 9, scope: !4115, inlinedAt: !4172)
!4178 = !DILocation(line: 184, column: 7, scope: !681, inlinedAt: !4172)
!4179 = !DILocation(line: 186, column: 13, scope: !4118, inlinedAt: !4172)
!4180 = !DILocation(line: 186, column: 11, scope: !4119, inlinedAt: !4172)
!4181 = !DILocation(line: 210, column: 7, scope: !681, inlinedAt: !4172)
!4182 = !DILocation(line: 51, column: 17, scope: !4072, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 211, column: 10, scope: !681, inlinedAt: !4172)
!4184 = !DILocation(line: 51, column: 27, scope: !4072, inlinedAt: !4183)
!4185 = !DILocation(line: 53, column: 10, scope: !4081, inlinedAt: !4183)
!4186 = !DILocation(line: 205, column: 11, scope: !4127, inlinedAt: !4172)
!4187 = !DILocation(line: 204, column: 11, scope: !4128, inlinedAt: !4172)
!4188 = !DILocation(line: 206, column: 9, scope: !4127, inlinedAt: !4172)
!4189 = !DILocation(line: 207, column: 14, scope: !4128, inlinedAt: !4172)
!4190 = !DILocation(line: 207, column: 18, scope: !4128, inlinedAt: !4172)
!4191 = !DILocation(line: 207, column: 9, scope: !4128, inlinedAt: !4172)
!4192 = !DILocation(line: 53, column: 8, scope: !4081, inlinedAt: !4183)
!4193 = !DILocation(line: 57, column: 7, scope: !4086, inlinedAt: !4183)
!4194 = !DILocation(line: 58, column: 7, scope: !4086, inlinedAt: !4183)
!4195 = !DILocation(line: 61, column: 7, scope: !4072, inlinedAt: !4183)
!4196 = !DILocation(line: 62, column: 8, scope: !4090, inlinedAt: !4183)
!4197 = !DILocation(line: 62, column: 13, scope: !4092, inlinedAt: !4183)
!4198 = !DILocation(line: 62, column: 10, scope: !4090, inlinedAt: !4183)
!4199 = !DILocation(line: 63, column: 5, scope: !4090, inlinedAt: !4183)
!4200 = !DILocation(line: 76, column: 3, scope: !4163)
!4201 = distinct !DISubprogram(name: "xzalloc", scope: !4032, file: !4032, line: 84, type: !4033, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4202)
!4202 = !{!4203}
!4203 = !DILocalVariable(name: "s", arg: 1, scope: !4201, file: !4032, line: 84, type: !9)
!4204 = !DILocation(line: 84, column: 17, scope: !4201)
!4205 = !DILocation(line: 39, column: 17, scope: !4031, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 86, column: 18, scope: !4201)
!4207 = !DILocation(line: 41, column: 13, scope: !4031, inlinedAt: !4206)
!4208 = !DILocation(line: 41, column: 9, scope: !4031, inlinedAt: !4206)
!4209 = !DILocation(line: 42, column: 8, scope: !4042, inlinedAt: !4206)
!4210 = !DILocation(line: 42, column: 15, scope: !4044, inlinedAt: !4206)
!4211 = !DILocation(line: 42, column: 10, scope: !4042, inlinedAt: !4206)
!4212 = !DILocation(line: 43, column: 5, scope: !4042, inlinedAt: !4206)
!4213 = !DILocation(line: 86, column: 10, scope: !4201)
!4214 = !DILocation(line: 86, column: 3, scope: !4201)
!4215 = distinct !DISubprogram(name: "xcalloc", scope: !4032, file: !4032, line: 93, type: !4018, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4216)
!4216 = !{!4217, !4218, !4219}
!4217 = !DILocalVariable(name: "n", arg: 1, scope: !4215, file: !4032, line: 93, type: !9)
!4218 = !DILocalVariable(name: "s", arg: 2, scope: !4215, file: !4032, line: 93, type: !9)
!4219 = !DILocalVariable(name: "p", scope: !4215, file: !4032, line: 95, type: !8)
!4220 = !DILocation(line: 93, column: 17, scope: !4215)
!4221 = !DILocation(line: 93, column: 27, scope: !4215)
!4222 = !DILocation(line: 100, column: 7, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4215, file: !4032, line: 100, column: 7)
!4224 = !DILocation(line: 101, column: 7, scope: !4223)
!4225 = !DILocation(line: 101, column: 18, scope: !4226)
!4226 = !DILexicalBlockFile(scope: !4223, file: !4032, discriminator: 1)
!4227 = !DILocation(line: 95, column: 9, scope: !4215)
!4228 = !DILocation(line: 101, column: 16, scope: !4226)
!4229 = !DILocation(line: 100, column: 7, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4215, file: !4032, discriminator: 1)
!4231 = !DILocation(line: 102, column: 5, scope: !4223)
!4232 = !DILocation(line: 103, column: 3, scope: !4215)
!4233 = distinct !DISubprogram(name: "xmemdup", scope: !4032, file: !4032, line: 111, type: !4234, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!8, !12, !9}
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "p", arg: 1, scope: !4233, file: !4032, line: 111, type: !12)
!4238 = !DILocalVariable(name: "s", arg: 2, scope: !4233, file: !4032, line: 111, type: !9)
!4239 = !DILocation(line: 111, column: 22, scope: !4233)
!4240 = !DILocation(line: 111, column: 32, scope: !4233)
!4241 = !DILocation(line: 39, column: 17, scope: !4031, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 113, column: 18, scope: !4233)
!4243 = !DILocation(line: 41, column: 13, scope: !4031, inlinedAt: !4242)
!4244 = !DILocation(line: 41, column: 9, scope: !4031, inlinedAt: !4242)
!4245 = !DILocation(line: 42, column: 8, scope: !4042, inlinedAt: !4242)
!4246 = !DILocation(line: 42, column: 15, scope: !4044, inlinedAt: !4242)
!4247 = !DILocation(line: 42, column: 10, scope: !4042, inlinedAt: !4242)
!4248 = !DILocation(line: 43, column: 5, scope: !4042, inlinedAt: !4242)
!4249 = !DILocation(line: 113, column: 10, scope: !4233)
!4250 = !DILocation(line: 113, column: 3, scope: !4233)
!4251 = distinct !DISubprogram(name: "xstrdup", scope: !4032, file: !4032, line: 119, type: !3066, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4252)
!4252 = !{!4253}
!4253 = !DILocalVariable(name: "string", arg: 1, scope: !4251, file: !4032, line: 119, type: !17)
!4254 = !DILocation(line: 119, column: 22, scope: !4251)
!4255 = !DILocation(line: 121, column: 27, scope: !4251)
!4256 = !DILocation(line: 121, column: 43, scope: !4251)
!4257 = !DILocation(line: 111, column: 22, scope: !4233, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 121, column: 10, scope: !4259)
!4259 = !DILexicalBlockFile(scope: !4251, file: !4032, discriminator: 1)
!4260 = !DILocation(line: 111, column: 32, scope: !4233, inlinedAt: !4258)
!4261 = !DILocation(line: 39, column: 17, scope: !4031, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 113, column: 18, scope: !4233, inlinedAt: !4258)
!4263 = !DILocation(line: 41, column: 13, scope: !4031, inlinedAt: !4262)
!4264 = !DILocation(line: 41, column: 9, scope: !4031, inlinedAt: !4262)
!4265 = !DILocation(line: 42, column: 8, scope: !4042, inlinedAt: !4262)
!4266 = !DILocation(line: 42, column: 15, scope: !4044, inlinedAt: !4262)
!4267 = !DILocation(line: 42, column: 10, scope: !4042, inlinedAt: !4262)
!4268 = !DILocation(line: 43, column: 5, scope: !4042, inlinedAt: !4262)
!4269 = !DILocation(line: 113, column: 10, scope: !4233, inlinedAt: !4258)
!4270 = !DILocation(line: 121, column: 3, scope: !4251)
!4271 = distinct !DISubprogram(name: "xalloc_die", scope: !4272, file: !4272, line: 32, type: !1528, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !693, variables: !4)
!4272 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4273 = !DILocation(line: 34, column: 10, scope: !4271)
!4274 = !DILocation(line: 34, column: 33, scope: !4271)
!4275 = !DILocation(line: 34, column: 3, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !4271, file: !4272, discriminator: 1)
!4277 = !DILocation(line: 40, column: 3, scope: !4271)
!4278 = distinct !DISubprogram(name: "xgetgroups", scope: !4279, file: !4279, line: 31, type: !717, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !695, variables: !4280)
!4279 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4280 = !{!4281, !4282, !4283, !4284}
!4281 = !DILocalVariable(name: "username", arg: 1, scope: !4278, file: !4279, line: 31, type: !17)
!4282 = !DILocalVariable(name: "gid", arg: 2, scope: !4278, file: !4279, line: 31, type: !31)
!4283 = !DILocalVariable(name: "groups", arg: 3, scope: !4278, file: !4279, line: 31, type: !719)
!4284 = !DILocalVariable(name: "result", scope: !4278, file: !4279, line: 33, type: !62)
!4285 = !DILocation(line: 31, column: 25, scope: !4278)
!4286 = !DILocation(line: 31, column: 41, scope: !4278)
!4287 = !DILocation(line: 31, column: 54, scope: !4278)
!4288 = !DILocation(line: 33, column: 16, scope: !4278)
!4289 = !DILocation(line: 33, column: 7, scope: !4278)
!4290 = !DILocation(line: 34, column: 14, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4278, file: !4279, line: 34, column: 7)
!4292 = !DILocation(line: 34, column: 20, scope: !4291)
!4293 = !DILocation(line: 34, column: 23, scope: !4294)
!4294 = !DILexicalBlockFile(scope: !4291, file: !4279, discriminator: 1)
!4295 = !DILocation(line: 34, column: 29, scope: !4294)
!4296 = !DILocation(line: 34, column: 7, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !4278, file: !4279, discriminator: 1)
!4298 = !DILocation(line: 35, column: 5, scope: !4291)
!4299 = !DILocation(line: 36, column: 3, scope: !4278)
!4300 = distinct !DISubprogram(name: "xstrtoul", scope: !4301, file: !4301, line: 88, type: !4302, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4306)
!4301 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!4304, !17, !609, !62, !4305, !17}
!4304 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !592, line: 39, baseType: !591)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!4306 = !{!4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4319, !4320, !4323, !4324}
!4307 = !DILocalVariable(name: "s", arg: 1, scope: !4300, file: !4301, line: 88, type: !17)
!4308 = !DILocalVariable(name: "ptr", arg: 2, scope: !4300, file: !4301, line: 88, type: !609)
!4309 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4300, file: !4301, line: 88, type: !62)
!4310 = !DILocalVariable(name: "val", arg: 4, scope: !4300, file: !4301, line: 89, type: !4305)
!4311 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4300, file: !4301, line: 89, type: !17)
!4312 = !DILocalVariable(name: "t_ptr", scope: !4300, file: !4301, line: 91, type: !6)
!4313 = !DILocalVariable(name: "p", scope: !4300, file: !4301, line: 92, type: !609)
!4314 = !DILocalVariable(name: "tmp", scope: !4300, file: !4301, line: 93, type: !11)
!4315 = !DILocalVariable(name: "err", scope: !4300, file: !4301, line: 94, type: !4304)
!4316 = !DILocalVariable(name: "q", scope: !4317, file: !4301, line: 104, type: !17)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !4301, line: 103, column: 5)
!4318 = distinct !DILexicalBlock(scope: !4300, file: !4301, line: 102, column: 7)
!4319 = !DILocalVariable(name: "ch", scope: !4317, file: !4301, line: 105, type: !16)
!4320 = !DILocalVariable(name: "base", scope: !4321, file: !4301, line: 141, type: !62)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !4301, line: 140, column: 5)
!4322 = distinct !DILexicalBlock(scope: !4300, file: !4301, line: 139, column: 7)
!4323 = !DILocalVariable(name: "suffixes", scope: !4321, file: !4301, line: 142, type: !62)
!4324 = !DILocalVariable(name: "overflow", scope: !4321, file: !4301, line: 143, type: !4304)
!4325 = !DILocation(line: 88, column: 24, scope: !4300)
!4326 = !DILocation(line: 88, column: 34, scope: !4300)
!4327 = !DILocation(line: 88, column: 43, scope: !4300)
!4328 = !DILocation(line: 89, column: 24, scope: !4300)
!4329 = !DILocation(line: 89, column: 41, scope: !4300)
!4330 = !DILocation(line: 91, column: 3, scope: !4300)
!4331 = !DILocation(line: 94, column: 16, scope: !4300)
!4332 = !DILocation(line: 96, column: 3, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4334, file: !4301, line: 96, column: 3)
!4334 = distinct !DILexicalBlock(scope: !4300, file: !4301, line: 96, column: 3)
!4335 = !DILocation(line: 96, column: 3, scope: !4336)
!4336 = !DILexicalBlockFile(scope: !4333, file: !4301, discriminator: 3)
!4337 = !DILocation(line: 98, column: 8, scope: !4300)
!4338 = !DILocation(line: 92, column: 10, scope: !4300)
!4339 = !DILocation(line: 100, column: 3, scope: !4300)
!4340 = !DILocation(line: 100, column: 9, scope: !4300)
!4341 = !DILocation(line: 104, column: 19, scope: !4317)
!4342 = !DILocation(line: 106, column: 14, scope: !4343)
!4343 = !DILexicalBlockFile(scope: !4317, file: !4301, discriminator: 1)
!4344 = !DILocation(line: 106, column: 7, scope: !4317)
!4345 = !DILocation(line: 105, column: 21, scope: !4317)
!4346 = !DILocation(line: 106, column: 7, scope: !4343)
!4347 = !DILocation(line: 107, column: 15, scope: !4317)
!4348 = distinct !{!4348, !4344, !4349}
!4349 = !DILocation(line: 107, column: 17, scope: !4317)
!4350 = !DILocation(line: 109, column: 9, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4317, file: !4301, line: 108, column: 11)
!4352 = !DILocation(line: 112, column: 9, scope: !4300)
!4353 = !DILocation(line: 93, column: 14, scope: !4300)
!4354 = !DILocation(line: 114, column: 7, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4300, file: !4301, line: 114, column: 7)
!4356 = !DILocation(line: 114, column: 10, scope: !4355)
!4357 = !DILocation(line: 114, column: 7, scope: !4300)
!4358 = !DILocation(line: 118, column: 11, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !4301, line: 118, column: 11)
!4360 = distinct !DILexicalBlock(scope: !4355, file: !4301, line: 115, column: 5)
!4361 = !DILocation(line: 118, column: 26, scope: !4359)
!4362 = !DILocation(line: 118, column: 29, scope: !4363)
!4363 = !DILexicalBlockFile(scope: !4359, file: !4301, discriminator: 1)
!4364 = !DILocation(line: 118, column: 33, scope: !4363)
!4365 = !DILocation(line: 118, column: 36, scope: !4366)
!4366 = !DILexicalBlockFile(scope: !4359, file: !4301, discriminator: 5)
!4367 = !DILocation(line: 118, column: 11, scope: !4368)
!4368 = !DILexicalBlockFile(scope: !4360, file: !4301, discriminator: 5)
!4369 = !DILocation(line: 123, column: 12, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4355, file: !4301, line: 123, column: 12)
!4371 = !DILocation(line: 123, column: 12, scope: !4355)
!4372 = !DILocation(line: 128, column: 5, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4370, file: !4301, line: 124, column: 5)
!4374 = !DILocation(line: 133, column: 8, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4300, file: !4301, line: 133, column: 7)
!4376 = !DILocation(line: 133, column: 7, scope: !4300)
!4377 = !DILocation(line: 135, column: 12, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4375, file: !4301, line: 134, column: 5)
!4379 = !DILocation(line: 136, column: 7, scope: !4378)
!4380 = !DILocation(line: 139, column: 7, scope: !4322)
!4381 = !DILocation(line: 139, column: 11, scope: !4322)
!4382 = !DILocation(line: 139, column: 7, scope: !4300)
!4383 = !DILocation(line: 141, column: 11, scope: !4321)
!4384 = !DILocation(line: 142, column: 11, scope: !4321)
!4385 = !DILocation(line: 145, column: 12, scope: !4386)
!4386 = !DILexicalBlockFile(scope: !4387, file: !4301, discriminator: 3)
!4387 = distinct !DILexicalBlock(scope: !4321, file: !4301, line: 145, column: 11)
!4388 = !DILocation(line: 145, column: 11, scope: !4389)
!4389 = !DILexicalBlockFile(scope: !4321, file: !4301, discriminator: 3)
!4390 = !DILocation(line: 147, column: 16, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4387, file: !4301, line: 146, column: 9)
!4392 = !DILocation(line: 148, column: 22, scope: !4391)
!4393 = !DILocation(line: 148, column: 11, scope: !4391)
!4394 = !DILocation(line: 151, column: 7, scope: !4321)
!4395 = !DILocation(line: 163, column: 15, scope: !4396)
!4396 = !DILexicalBlockFile(scope: !4397, file: !4301, discriminator: 2)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !4301, line: 163, column: 15)
!4398 = distinct !DILexicalBlock(scope: !4321, file: !4301, line: 152, column: 9)
!4399 = !DILocation(line: 163, column: 15, scope: !4400)
!4400 = !DILexicalBlockFile(scope: !4398, file: !4301, discriminator: 2)
!4401 = !DILocation(line: 164, column: 21, scope: !4397)
!4402 = !DILocation(line: 164, column: 13, scope: !4397)
!4403 = !DILocation(line: 167, column: 21, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !4301, line: 167, column: 21)
!4405 = distinct !DILexicalBlock(scope: !4397, file: !4301, line: 165, column: 15)
!4406 = !DILocation(line: 167, column: 29, scope: !4404)
!4407 = !DILocation(line: 167, column: 21, scope: !4405)
!4408 = !DILocation(line: 175, column: 17, scope: !4405)
!4409 = !DILocation(line: 179, column: 7, scope: !4321)
!4410 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4411, file: !4301, line: 60, type: !62)
!4411 = distinct !DISubprogram(name: "bkm_scale", scope: !4301, file: !4301, line: 60, type: !4412, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4414)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!4304, !4305, !62}
!4414 = !{!4415, !4410}
!4415 = !DILocalVariable(name: "x", arg: 1, scope: !4411, file: !4301, line: 60, type: !4305)
!4416 = !DILocation(line: 60, column: 31, scope: !4411, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 182, column: 22, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4321, file: !4301, line: 180, column: 9)
!4419 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4417)
!4420 = distinct !DILexicalBlock(scope: !4411, file: !4301, line: 67, column: 7)
!4421 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4417)
!4422 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4417)
!4423 = !DILocation(line: 143, column: 20, scope: !4321)
!4424 = !DILocation(line: 183, column: 11, scope: !4418)
!4425 = !DILocation(line: 60, column: 31, scope: !4411, inlinedAt: !4426)
!4426 = distinct !DILocation(line: 189, column: 22, scope: !4418)
!4427 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4426)
!4428 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4426)
!4429 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4426)
!4430 = !DILocation(line: 190, column: 11, scope: !4418)
!4431 = !DILocalVariable(name: "power", arg: 3, scope: !4432, file: !4301, line: 77, type: !62)
!4432 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4301, file: !4301, line: 77, type: !4433, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!4304, !4305, !62, !62}
!4435 = !{!4436, !4437, !4431, !4438}
!4436 = !DILocalVariable(name: "x", arg: 1, scope: !4432, file: !4301, line: 77, type: !4305)
!4437 = !DILocalVariable(name: "base", arg: 2, scope: !4432, file: !4301, line: 77, type: !62)
!4438 = !DILocalVariable(name: "err", scope: !4432, file: !4301, line: 79, type: !4304)
!4439 = !DILocation(line: 77, column: 50, scope: !4432, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 197, column: 22, scope: !4418)
!4441 = !DILocation(line: 79, column: 16, scope: !4432, inlinedAt: !4440)
!4442 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 81, column: 12, scope: !4432, inlinedAt: !4440)
!4444 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4443)
!4445 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4443)
!4446 = !DILocation(line: 81, column: 9, scope: !4432, inlinedAt: !4440)
!4447 = !DILocation(line: 77, column: 50, scope: !4432, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 202, column: 22, scope: !4418)
!4449 = !DILocation(line: 79, column: 16, scope: !4432, inlinedAt: !4448)
!4450 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 81, column: 12, scope: !4432, inlinedAt: !4448)
!4452 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4451)
!4453 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4451)
!4454 = !DILocation(line: 81, column: 9, scope: !4432, inlinedAt: !4448)
!4455 = !DILocation(line: 77, column: 50, scope: !4432, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 207, column: 22, scope: !4418)
!4457 = !DILocation(line: 79, column: 16, scope: !4432, inlinedAt: !4456)
!4458 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4459)
!4459 = distinct !DILocation(line: 81, column: 12, scope: !4432, inlinedAt: !4456)
!4460 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4459)
!4461 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4459)
!4462 = !DILocation(line: 77, column: 50, scope: !4432, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 212, column: 22, scope: !4418)
!4464 = !DILocation(line: 79, column: 16, scope: !4432, inlinedAt: !4463)
!4465 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 81, column: 12, scope: !4432, inlinedAt: !4463)
!4467 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4466)
!4468 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4466)
!4469 = !DILocation(line: 81, column: 9, scope: !4432, inlinedAt: !4463)
!4470 = !DILocation(line: 77, column: 50, scope: !4432, inlinedAt: !4471)
!4471 = distinct !DILocation(line: 216, column: 22, scope: !4418)
!4472 = !DILocation(line: 79, column: 16, scope: !4432, inlinedAt: !4471)
!4473 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 81, column: 12, scope: !4432, inlinedAt: !4471)
!4475 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4474)
!4476 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4474)
!4477 = !DILocation(line: 81, column: 9, scope: !4432, inlinedAt: !4471)
!4478 = !DILocation(line: 77, column: 50, scope: !4432, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 221, column: 22, scope: !4418)
!4480 = !DILocation(line: 79, column: 16, scope: !4432, inlinedAt: !4479)
!4481 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 81, column: 12, scope: !4432, inlinedAt: !4479)
!4483 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4482)
!4484 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4482)
!4485 = !DILocation(line: 81, column: 9, scope: !4432, inlinedAt: !4479)
!4486 = !DILocation(line: 60, column: 31, scope: !4411, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 225, column: 22, scope: !4418)
!4488 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4487)
!4489 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4487)
!4490 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4487)
!4491 = !DILocation(line: 226, column: 11, scope: !4418)
!4492 = !DILocation(line: 77, column: 50, scope: !4432, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 229, column: 22, scope: !4418)
!4494 = !DILocation(line: 79, column: 16, scope: !4432, inlinedAt: !4493)
!4495 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 81, column: 12, scope: !4432, inlinedAt: !4493)
!4497 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4496)
!4498 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4496)
!4499 = !DILocation(line: 81, column: 9, scope: !4432, inlinedAt: !4493)
!4500 = !DILocation(line: 77, column: 50, scope: !4432, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 233, column: 22, scope: !4418)
!4502 = !DILocation(line: 79, column: 16, scope: !4432, inlinedAt: !4501)
!4503 = !DILocation(line: 67, column: 39, scope: !4420, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 81, column: 12, scope: !4432, inlinedAt: !4501)
!4505 = !DILocation(line: 72, column: 6, scope: !4411, inlinedAt: !4504)
!4506 = !DILocation(line: 67, column: 7, scope: !4411, inlinedAt: !4504)
!4507 = !DILocation(line: 81, column: 9, scope: !4432, inlinedAt: !4501)
!4508 = !DILocation(line: 237, column: 16, scope: !4418)
!4509 = !DILocation(line: 238, column: 22, scope: !4418)
!4510 = !DILocation(line: 238, column: 11, scope: !4418)
!4511 = !DILocation(line: 241, column: 11, scope: !4321)
!4512 = !DILocation(line: 242, column: 10, scope: !4321)
!4513 = !DILocation(line: 243, column: 11, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4321, file: !4301, line: 243, column: 11)
!4515 = !DILocation(line: 244, column: 13, scope: !4514)
!4516 = !DILocation(line: 243, column: 11, scope: !4321)
!4517 = !DILocation(line: 247, column: 8, scope: !4300)
!4518 = !DILocation(line: 248, column: 3, scope: !4300)
!4519 = !DILocation(line: 249, column: 1, scope: !4300)
!4520 = distinct !DISubprogram(name: "rpl_calloc", scope: !4521, file: !4521, line: 42, type: !4018, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !4522)
!4521 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4522 = !{!4523, !4524, !4525, !4526}
!4523 = !DILocalVariable(name: "n", arg: 1, scope: !4520, file: !4521, line: 42, type: !9)
!4524 = !DILocalVariable(name: "s", arg: 2, scope: !4520, file: !4521, line: 42, type: !9)
!4525 = !DILocalVariable(name: "result", scope: !4520, file: !4521, line: 44, type: !8)
!4526 = !DILocalVariable(name: "bytes", scope: !4527, file: !4521, line: 56, type: !9)
!4527 = distinct !DILexicalBlock(scope: !4528, file: !4521, line: 53, column: 5)
!4528 = distinct !DILexicalBlock(scope: !4520, file: !4521, line: 47, column: 7)
!4529 = !DILocation(line: 42, column: 20, scope: !4520)
!4530 = !DILocation(line: 42, column: 30, scope: !4520)
!4531 = !DILocation(line: 47, column: 9, scope: !4528)
!4532 = !DILocation(line: 47, column: 19, scope: !4533)
!4533 = !DILexicalBlockFile(scope: !4528, file: !4521, discriminator: 1)
!4534 = !DILocation(line: 47, column: 14, scope: !4528)
!4535 = !DILocation(line: 56, column: 24, scope: !4527)
!4536 = !DILocation(line: 56, column: 14, scope: !4527)
!4537 = !DILocation(line: 57, column: 17, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4527, file: !4521, line: 57, column: 11)
!4539 = !DILocation(line: 57, column: 21, scope: !4538)
!4540 = !DILocation(line: 57, column: 11, scope: !4527)
!4541 = !DILocation(line: 59, column: 11, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4538, file: !4521, line: 58, column: 9)
!4543 = !DILocation(line: 59, column: 17, scope: !4542)
!4544 = !DILocation(line: 65, column: 12, scope: !4520)
!4545 = !DILocation(line: 44, column: 9, scope: !4520)
!4546 = !DILocation(line: 72, column: 3, scope: !4520)
!4547 = !DILocation(line: 73, column: 1, scope: !4520)
!4548 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4549, file: !4549, line: 334, type: !4550, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !703, variables: !4564)
!4549 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!9, !4552, !17, !9, !4553}
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1832, line: 107, baseType: !4555)
!4555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1832, line: 95, baseType: !4556)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1832, line: 83, size: 64, elements: !4557)
!4557 = !{!4558, !4559}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4556, file: !1832, line: 85, baseType: !62, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4556, file: !1832, line: 94, baseType: !4560, size: 32, offset: 32)
!4560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4556, file: !1832, line: 86, size: 32, elements: !4561)
!4561 = !{!4562, !4563}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4560, file: !1832, line: 89, baseType: !26, size: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4560, file: !1832, line: 93, baseType: !1842, size: 32)
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4570, !4571}
!4565 = !DILocalVariable(name: "pwc", arg: 1, scope: !4548, file: !4549, line: 334, type: !4552)
!4566 = !DILocalVariable(name: "s", arg: 2, scope: !4548, file: !4549, line: 334, type: !17)
!4567 = !DILocalVariable(name: "n", arg: 3, scope: !4548, file: !4549, line: 334, type: !9)
!4568 = !DILocalVariable(name: "ps", arg: 4, scope: !4548, file: !4549, line: 334, type: !4553)
!4569 = !DILocalVariable(name: "ret", scope: !4548, file: !4549, line: 336, type: !9)
!4570 = !DILocalVariable(name: "wc", scope: !4548, file: !4549, line: 337, type: !1847)
!4571 = !DILocalVariable(name: "uc", scope: !4572, file: !4549, line: 398, type: !16)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !4549, line: 397, column: 5)
!4573 = distinct !DILexicalBlock(scope: !4548, file: !4549, line: 396, column: 7)
!4574 = !DILocation(line: 334, column: 23, scope: !4548)
!4575 = !DILocation(line: 334, column: 40, scope: !4548)
!4576 = !DILocation(line: 334, column: 50, scope: !4548)
!4577 = !DILocation(line: 334, column: 64, scope: !4548)
!4578 = !DILocation(line: 337, column: 3, scope: !4548)
!4579 = !DILocation(line: 353, column: 9, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4548, file: !4549, line: 353, column: 7)
!4581 = !DILocation(line: 353, column: 7, scope: !4548)
!4582 = !DILocation(line: 388, column: 9, scope: !4548)
!4583 = !DILocation(line: 336, column: 10, scope: !4548)
!4584 = !DILocation(line: 396, column: 19, scope: !4573)
!4585 = !DILocation(line: 396, column: 31, scope: !4586)
!4586 = !DILexicalBlockFile(scope: !4573, file: !4549, discriminator: 1)
!4587 = !DILocation(line: 396, column: 26, scope: !4573)
!4588 = !DILocation(line: 396, column: 41, scope: !4589)
!4589 = !DILexicalBlockFile(scope: !4573, file: !4549, discriminator: 2)
!4590 = !DILocation(line: 396, column: 7, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4548, file: !4549, discriminator: 2)
!4592 = !DILocation(line: 398, column: 26, scope: !4572)
!4593 = !DILocation(line: 398, column: 21, scope: !4572)
!4594 = !DILocation(line: 399, column: 14, scope: !4572)
!4595 = !DILocation(line: 399, column: 12, scope: !4572)
!4596 = !DILocation(line: 405, column: 1, scope: !4548)
!4597 = distinct !DISubprogram(name: "close_stream", scope: !4598, file: !4598, line: 56, type: !4599, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !706, variables: !4641)
!4598 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!62, !4601}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3799, line: 49, baseType: !4603)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3801, line: 241, size: 1728, elements: !4604)
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4603, file: !3801, line: 242, baseType: !62, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4603, file: !3801, line: 247, baseType: !6, size: 64, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4603, file: !3801, line: 248, baseType: !6, size: 64, offset: 128)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4603, file: !3801, line: 249, baseType: !6, size: 64, offset: 192)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4603, file: !3801, line: 250, baseType: !6, size: 64, offset: 256)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4603, file: !3801, line: 251, baseType: !6, size: 64, offset: 320)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4603, file: !3801, line: 252, baseType: !6, size: 64, offset: 384)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4603, file: !3801, line: 253, baseType: !6, size: 64, offset: 448)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4603, file: !3801, line: 254, baseType: !6, size: 64, offset: 512)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4603, file: !3801, line: 256, baseType: !6, size: 64, offset: 576)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4603, file: !3801, line: 257, baseType: !6, size: 64, offset: 640)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4603, file: !3801, line: 258, baseType: !6, size: 64, offset: 704)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4603, file: !3801, line: 260, baseType: !4618, size: 64, offset: 768)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3801, line: 156, size: 192, elements: !4620)
!4620 = !{!4621, !4622, !4624}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4619, file: !3801, line: 157, baseType: !4618, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4619, file: !3801, line: 158, baseType: !4623, size: 64, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4619, file: !3801, line: 162, baseType: !62, size: 32, offset: 128)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4603, file: !3801, line: 262, baseType: !4623, size: 64, offset: 832)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4603, file: !3801, line: 264, baseType: !62, size: 32, offset: 896)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4603, file: !3801, line: 268, baseType: !62, size: 32, offset: 928)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4603, file: !3801, line: 270, baseType: !3827, size: 64, offset: 960)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4603, file: !3801, line: 274, baseType: !184, size: 16, offset: 1024)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4603, file: !3801, line: 275, baseType: !3831, size: 8, offset: 1040)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4603, file: !3801, line: 276, baseType: !3833, size: 8, offset: 1048)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4603, file: !3801, line: 280, baseType: !3837, size: 64, offset: 1088)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4603, file: !3801, line: 289, baseType: !3840, size: 64, offset: 1152)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4603, file: !3801, line: 297, baseType: !8, size: 64, offset: 1216)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4603, file: !3801, line: 298, baseType: !8, size: 64, offset: 1280)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4603, file: !3801, line: 299, baseType: !8, size: 64, offset: 1344)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4603, file: !3801, line: 300, baseType: !8, size: 64, offset: 1408)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4603, file: !3801, line: 302, baseType: !9, size: 64, offset: 1472)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4603, file: !3801, line: 303, baseType: !62, size: 32, offset: 1536)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4603, file: !3801, line: 305, baseType: !3848, size: 160, offset: 1568)
!4641 = !{!4642, !4643, !4645, !4646}
!4642 = !DILocalVariable(name: "stream", arg: 1, scope: !4597, file: !4598, line: 56, type: !4601)
!4643 = !DILocalVariable(name: "some_pending", scope: !4597, file: !4598, line: 58, type: !4644)
!4644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!4645 = !DILocalVariable(name: "prev_fail", scope: !4597, file: !4598, line: 59, type: !4644)
!4646 = !DILocalVariable(name: "fclose_fail", scope: !4597, file: !4598, line: 60, type: !4644)
!4647 = !DILocation(line: 56, column: 21, scope: !4597)
!4648 = !DILocation(line: 58, column: 30, scope: !4597)
!4649 = !DILocalVariable(name: "__stream", arg: 1, scope: !4650, file: !1242, line: 132, type: !4601)
!4650 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1242, file: !1242, line: 132, type: !4599, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !706, variables: !4651)
!4651 = !{!4649}
!4652 = !DILocation(line: 132, column: 1, scope: !4650, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 59, column: 27, scope: !4597)
!4654 = !DILocation(line: 134, column: 10, scope: !4650, inlinedAt: !4653)
!4655 = !{!1250, !886, i64 0}
!4656 = !DILocation(line: 59, column: 43, scope: !4597)
!4657 = !DILocation(line: 60, column: 29, scope: !4597)
!4658 = !DILocation(line: 60, column: 45, scope: !4597)
!4659 = !DILocation(line: 70, column: 17, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4597, file: !4598, line: 70, column: 7)
!4661 = !DILocation(line: 70, column: 33, scope: !4662)
!4662 = !DILexicalBlockFile(scope: !4660, file: !4598, discriminator: 1)
!4663 = !DILocation(line: 70, column: 53, scope: !4664)
!4664 = !DILexicalBlockFile(scope: !4660, file: !4598, discriminator: 3)
!4665 = !DILocation(line: 70, column: 7, scope: !4666)
!4666 = !DILexicalBlockFile(scope: !4597, file: !4598, discriminator: 3)
!4667 = !DILocation(line: 72, column: 11, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4660, file: !4598, line: 71, column: 5)
!4669 = !DILocation(line: 73, column: 9, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4668, file: !4598, line: 72, column: 11)
!4671 = !DILocation(line: 73, column: 15, scope: !4670)
!4672 = !DILocation(line: 78, column: 1, scope: !4597)
!4673 = distinct !DISubprogram(name: "hard_locale", scope: !4674, file: !4674, line: 38, type: !4675, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !708, variables: !4677)
!4674 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!68, !62}
!4677 = !{!4678, !4679, !4680, !4681, !4688, !4689, !4691, !4692, !4694, !4695, !4697}
!4678 = !DILocalVariable(name: "category", arg: 1, scope: !4673, file: !4674, line: 38, type: !62)
!4679 = !DILocalVariable(name: "hard", scope: !4673, file: !4674, line: 40, type: !68)
!4680 = !DILocalVariable(name: "p", scope: !4673, file: !4674, line: 41, type: !17)
!4681 = !DILocalVariable(name: "__s1_len", scope: !4682, file: !4674, line: 47, type: !9)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !4674, line: 47, column: 15)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !4674, line: 47, column: 15)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !4674, line: 46, column: 9)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !4674, line: 45, column: 11)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !4674, line: 44, column: 5)
!4687 = distinct !DILexicalBlock(scope: !4673, file: !4674, line: 43, column: 7)
!4688 = !DILocalVariable(name: "__s2_len", scope: !4682, file: !4674, line: 47, type: !9)
!4689 = !DILocalVariable(name: "__s2", scope: !4690, file: !4674, line: 47, type: !14)
!4690 = distinct !DILexicalBlock(scope: !4682, file: !4674, line: 47, column: 15)
!4691 = !DILocalVariable(name: "__result", scope: !4690, file: !4674, line: 47, type: !62)
!4692 = !DILocalVariable(name: "__s1_len", scope: !4693, file: !4674, line: 47, type: !9)
!4693 = distinct !DILexicalBlock(scope: !4683, file: !4674, line: 47, column: 39)
!4694 = !DILocalVariable(name: "__s2_len", scope: !4693, file: !4674, line: 47, type: !9)
!4695 = !DILocalVariable(name: "__s2", scope: !4696, file: !4674, line: 47, type: !14)
!4696 = distinct !DILexicalBlock(scope: !4693, file: !4674, line: 47, column: 39)
!4697 = !DILocalVariable(name: "__result", scope: !4696, file: !4674, line: 47, type: !62)
!4698 = !DILocation(line: 38, column: 18, scope: !4673)
!4699 = !DILocation(line: 40, column: 8, scope: !4673)
!4700 = !DILocation(line: 41, column: 19, scope: !4673)
!4701 = !DILocation(line: 41, column: 15, scope: !4673)
!4702 = !DILocation(line: 43, column: 7, scope: !4687)
!4703 = !DILocation(line: 43, column: 7, scope: !4673)
!4704 = !DILocation(line: 47, column: 15, scope: !4682)
!4705 = !DILocation(line: 47, column: 15, scope: !4690)
!4706 = !DILocation(line: 47, column: 15, scope: !4707)
!4707 = !DILexicalBlockFile(scope: !4690, file: !4674, discriminator: 2)
!4708 = !DILocation(line: 47, column: 15, scope: !4709)
!4709 = !DILexicalBlockFile(scope: !4710, file: !4674, discriminator: 3)
!4710 = distinct !DILexicalBlock(scope: !4690, file: !4674, line: 47, column: 15)
!4711 = !DILocation(line: 47, column: 15, scope: !4712)
!4712 = !DILexicalBlockFile(scope: !4710, file: !4674, discriminator: 2)
!4713 = !DILocation(line: 47, column: 15, scope: !4714)
!4714 = !DILexicalBlockFile(scope: !4715, file: !4674, discriminator: 4)
!4715 = distinct !DILexicalBlock(scope: !4710, file: !4674, line: 47, column: 15)
!4716 = !DILocation(line: 47, column: 15, scope: !4717)
!4717 = !DILexicalBlockFile(scope: !4682, file: !4674, discriminator: 11)
!4718 = !DILocation(line: 47, column: 36, scope: !4719)
!4719 = !DILexicalBlockFile(scope: !4683, file: !4674, discriminator: 13)
!4720 = !DILocation(line: 47, column: 39, scope: !4693)
!4721 = !DILocation(line: 47, column: 39, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !4693, file: !4674, discriminator: 26)
!4723 = !DILocation(line: 47, column: 59, scope: !4724)
!4724 = !DILexicalBlockFile(scope: !4683, file: !4674, discriminator: 27)
!4725 = !DILocation(line: 47, column: 15, scope: !4726)
!4726 = !DILexicalBlockFile(scope: !4684, file: !4674, discriminator: 27)
!4727 = !DILocation(line: 48, column: 13, scope: !4683)
!4728 = !DILocation(line: 71, column: 3, scope: !4673)
!4729 = distinct !DISubprogram(name: "locale_charset", scope: !580, file: !580, line: 393, type: !4730, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!17}
!4732 = !{!4733, !4734, !4735, !4740}
!4733 = !DILocalVariable(name: "codeset", scope: !4729, file: !580, line: 395, type: !17)
!4734 = !DILocalVariable(name: "aliases", scope: !4729, file: !580, line: 396, type: !17)
!4735 = !DILocalVariable(name: "__s1_len", scope: !4736, file: !580, line: 592, type: !9)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !580, line: 592, column: 9)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !580, line: 592, column: 9)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !580, line: 589, column: 3)
!4739 = distinct !DILexicalBlock(scope: !4729, file: !580, line: 589, column: 3)
!4740 = !DILocalVariable(name: "__s2_len", scope: !4736, file: !580, line: 592, type: !9)
!4741 = !DILocalVariable(name: "buf1", scope: !4742, file: !580, line: 196, type: !4809)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !580, line: 194, column: 21)
!4743 = distinct !DILexicalBlock(scope: !4744, file: !580, line: 193, column: 19)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !580, line: 193, column: 19)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !580, line: 188, column: 17)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !580, line: 181, column: 19)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !580, line: 177, column: 13)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !580, line: 173, column: 15)
!4749 = distinct !DILexicalBlock(scope: !4750, file: !580, line: 161, column: 9)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !580, line: 157, column: 11)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !580, line: 130, column: 5)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !580, line: 129, column: 7)
!4753 = distinct !DISubprogram(name: "get_charset_aliases", scope: !580, file: !580, line: 124, type: !4730, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4761, !4762, !4763, !4764, !4805, !4806, !4807, !4741, !4808, !4812, !4813, !4814}
!4755 = !DILocalVariable(name: "cp", scope: !4753, file: !580, line: 126, type: !17)
!4756 = !DILocalVariable(name: "dir", scope: !4751, file: !580, line: 132, type: !17)
!4757 = !DILocalVariable(name: "base", scope: !4751, file: !580, line: 133, type: !17)
!4758 = !DILocalVariable(name: "file_name", scope: !4751, file: !580, line: 134, type: !6)
!4759 = !DILocalVariable(name: "dir_len", scope: !4760, file: !580, line: 144, type: !9)
!4760 = distinct !DILexicalBlock(scope: !4751, file: !580, line: 143, column: 7)
!4761 = !DILocalVariable(name: "base_len", scope: !4760, file: !580, line: 145, type: !9)
!4762 = !DILocalVariable(name: "add_slash", scope: !4760, file: !580, line: 146, type: !62)
!4763 = !DILocalVariable(name: "fd", scope: !4749, file: !580, line: 162, type: !62)
!4764 = !DILocalVariable(name: "fp", scope: !4747, file: !580, line: 178, type: !4765)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3799, line: 49, baseType: !4767)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3801, line: 241, size: 1728, elements: !4768)
!4768 = !{!4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4767, file: !3801, line: 242, baseType: !62, size: 32)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4767, file: !3801, line: 247, baseType: !6, size: 64, offset: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4767, file: !3801, line: 248, baseType: !6, size: 64, offset: 128)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4767, file: !3801, line: 249, baseType: !6, size: 64, offset: 192)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4767, file: !3801, line: 250, baseType: !6, size: 64, offset: 256)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4767, file: !3801, line: 251, baseType: !6, size: 64, offset: 320)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4767, file: !3801, line: 252, baseType: !6, size: 64, offset: 384)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4767, file: !3801, line: 253, baseType: !6, size: 64, offset: 448)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4767, file: !3801, line: 254, baseType: !6, size: 64, offset: 512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4767, file: !3801, line: 256, baseType: !6, size: 64, offset: 576)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4767, file: !3801, line: 257, baseType: !6, size: 64, offset: 640)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4767, file: !3801, line: 258, baseType: !6, size: 64, offset: 704)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4767, file: !3801, line: 260, baseType: !4782, size: 64, offset: 768)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3801, line: 156, size: 192, elements: !4784)
!4784 = !{!4785, !4786, !4788}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4783, file: !3801, line: 157, baseType: !4782, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4783, file: !3801, line: 158, baseType: !4787, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4783, file: !3801, line: 162, baseType: !62, size: 32, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4767, file: !3801, line: 262, baseType: !4787, size: 64, offset: 832)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4767, file: !3801, line: 264, baseType: !62, size: 32, offset: 896)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4767, file: !3801, line: 268, baseType: !62, size: 32, offset: 928)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4767, file: !3801, line: 270, baseType: !3827, size: 64, offset: 960)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4767, file: !3801, line: 274, baseType: !184, size: 16, offset: 1024)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4767, file: !3801, line: 275, baseType: !3831, size: 8, offset: 1040)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4767, file: !3801, line: 276, baseType: !3833, size: 8, offset: 1048)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4767, file: !3801, line: 280, baseType: !3837, size: 64, offset: 1088)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4767, file: !3801, line: 289, baseType: !3840, size: 64, offset: 1152)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4767, file: !3801, line: 297, baseType: !8, size: 64, offset: 1216)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4767, file: !3801, line: 298, baseType: !8, size: 64, offset: 1280)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4767, file: !3801, line: 299, baseType: !8, size: 64, offset: 1344)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4767, file: !3801, line: 300, baseType: !8, size: 64, offset: 1408)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4767, file: !3801, line: 302, baseType: !9, size: 64, offset: 1472)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4767, file: !3801, line: 303, baseType: !62, size: 32, offset: 1536)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4767, file: !3801, line: 305, baseType: !3848, size: 160, offset: 1568)
!4805 = !DILocalVariable(name: "res_ptr", scope: !4745, file: !580, line: 190, type: !6)
!4806 = !DILocalVariable(name: "res_size", scope: !4745, file: !580, line: 191, type: !9)
!4807 = !DILocalVariable(name: "c", scope: !4742, file: !580, line: 195, type: !62)
!4808 = !DILocalVariable(name: "buf2", scope: !4742, file: !580, line: 197, type: !4809)
!4809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !4810)
!4810 = !{!4811}
!4811 = !DISubrange(count: 51)
!4812 = !DILocalVariable(name: "l1", scope: !4742, file: !580, line: 198, type: !9)
!4813 = !DILocalVariable(name: "l2", scope: !4742, file: !580, line: 198, type: !9)
!4814 = !DILocalVariable(name: "old_res_ptr", scope: !4742, file: !580, line: 199, type: !6)
!4815 = !DILocation(line: 196, column: 28, scope: !4742, inlinedAt: !4816)
!4816 = distinct !DILocation(line: 589, column: 18, scope: !4739)
!4817 = !DILocation(line: 197, column: 28, scope: !4742, inlinedAt: !4816)
!4818 = !DILocation(line: 403, column: 13, scope: !4729)
!4819 = !DILocation(line: 395, column: 15, scope: !4729)
!4820 = !DILocation(line: 584, column: 15, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4729, file: !580, line: 584, column: 7)
!4822 = !DILocation(line: 584, column: 7, scope: !4729)
!4823 = !DILocation(line: 128, column: 8, scope: !4753, inlinedAt: !4816)
!4824 = !DILocation(line: 126, column: 15, scope: !4753, inlinedAt: !4816)
!4825 = !DILocation(line: 129, column: 10, scope: !4752, inlinedAt: !4816)
!4826 = !DILocation(line: 129, column: 7, scope: !4753, inlinedAt: !4816)
!4827 = !DILocation(line: 138, column: 13, scope: !4751, inlinedAt: !4816)
!4828 = !DILocation(line: 132, column: 19, scope: !4751, inlinedAt: !4816)
!4829 = !DILocation(line: 139, column: 15, scope: !4830, inlinedAt: !4816)
!4830 = distinct !DILexicalBlock(scope: !4751, file: !580, line: 139, column: 11)
!4831 = !DILocation(line: 139, column: 23, scope: !4830, inlinedAt: !4816)
!4832 = !DILocation(line: 139, column: 26, scope: !4833, inlinedAt: !4816)
!4833 = !DILexicalBlockFile(scope: !4830, file: !580, discriminator: 1)
!4834 = !DILocation(line: 139, column: 33, scope: !4833, inlinedAt: !4816)
!4835 = !DILocation(line: 139, column: 11, scope: !4836, inlinedAt: !4816)
!4836 = !DILexicalBlockFile(scope: !4751, file: !580, discriminator: 1)
!4837 = !DILocation(line: 140, column: 9, scope: !4830, inlinedAt: !4816)
!4838 = !DILocation(line: 144, column: 26, scope: !4760, inlinedAt: !4816)
!4839 = !DILocation(line: 144, column: 16, scope: !4760, inlinedAt: !4816)
!4840 = !DILocation(line: 145, column: 16, scope: !4760, inlinedAt: !4816)
!4841 = !DILocation(line: 146, column: 34, scope: !4760, inlinedAt: !4816)
!4842 = !DILocation(line: 146, column: 38, scope: !4760, inlinedAt: !4816)
!4843 = !DILocation(line: 146, column: 42, scope: !4844, inlinedAt: !4816)
!4844 = !DILexicalBlockFile(scope: !4760, file: !580, discriminator: 1)
!4845 = !DILocation(line: 146, column: 41, scope: !4844, inlinedAt: !4816)
!4846 = !DILocation(line: 147, column: 48, scope: !4760, inlinedAt: !4816)
!4847 = !DILocation(line: 147, column: 46, scope: !4760, inlinedAt: !4816)
!4848 = !DILocation(line: 147, column: 69, scope: !4760, inlinedAt: !4816)
!4849 = !DILocation(line: 147, column: 30, scope: !4760, inlinedAt: !4816)
!4850 = !DILocation(line: 134, column: 13, scope: !4751, inlinedAt: !4816)
!4851 = !DILocation(line: 148, column: 13, scope: !4760, inlinedAt: !4816)
!4852 = !DILocation(line: 150, column: 13, scope: !4853, inlinedAt: !4816)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !580, line: 149, column: 11)
!4854 = distinct !DILexicalBlock(scope: !4760, file: !580, line: 148, column: 13)
!4855 = !DILocation(line: 151, column: 17, scope: !4853, inlinedAt: !4816)
!4856 = !DILocation(line: 152, column: 34, scope: !4857, inlinedAt: !4816)
!4857 = distinct !DILexicalBlock(scope: !4853, file: !580, line: 151, column: 17)
!4858 = !DILocation(line: 153, column: 41, scope: !4853, inlinedAt: !4816)
!4859 = !DILocation(line: 153, column: 13, scope: !4853, inlinedAt: !4816)
!4860 = !DILocation(line: 157, column: 11, scope: !4751, inlinedAt: !4816)
!4861 = !DILocation(line: 171, column: 16, scope: !4749, inlinedAt: !4816)
!4862 = !DILocation(line: 162, column: 15, scope: !4749, inlinedAt: !4816)
!4863 = !DILocation(line: 173, column: 18, scope: !4748, inlinedAt: !4816)
!4864 = !DILocation(line: 173, column: 15, scope: !4749, inlinedAt: !4816)
!4865 = !DILocation(line: 180, column: 20, scope: !4747, inlinedAt: !4816)
!4866 = !DILocation(line: 178, column: 21, scope: !4747, inlinedAt: !4816)
!4867 = !DILocation(line: 181, column: 22, scope: !4746, inlinedAt: !4816)
!4868 = !DILocation(line: 181, column: 19, scope: !4747, inlinedAt: !4816)
!4869 = !DILocation(line: 190, column: 25, scope: !4745, inlinedAt: !4816)
!4870 = !DILocation(line: 184, column: 19, scope: !4871, inlinedAt: !4816)
!4871 = distinct !DILexicalBlock(scope: !4746, file: !580, line: 182, column: 17)
!4872 = !DILocation(line: 186, column: 17, scope: !4871, inlinedAt: !4816)
!4873 = !DILocation(line: 191, column: 26, scope: !4745, inlinedAt: !4816)
!4874 = !DILocation(line: 196, column: 23, scope: !4742, inlinedAt: !4816)
!4875 = !DILocation(line: 197, column: 23, scope: !4742, inlinedAt: !4816)
!4876 = !DILocalVariable(name: "__fp", arg: 1, scope: !4877, file: !1242, line: 63, type: !4765)
!4877 = distinct !DISubprogram(name: "getc_unlocked", scope: !1242, file: !1242, line: 63, type: !4878, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !4880)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!62, !4765}
!4880 = !{!4876}
!4881 = !DILocation(line: 63, column: 22, scope: !4877, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 201, column: 27, scope: !4742, inlinedAt: !4816)
!4883 = !DILocation(line: 65, column: 10, scope: !4877, inlinedAt: !4882)
!4884 = !{!1250, !771, i64 8}
!4885 = !{!1250, !771, i64 16}
!4886 = !DILocation(line: 65, column: 10, scope: !4887, inlinedAt: !4882)
!4887 = !DILexicalBlockFile(scope: !4877, file: !1242, discriminator: 1)
!4888 = !DILocation(line: 65, column: 10, scope: !4889, inlinedAt: !4882)
!4889 = !DILexicalBlockFile(scope: !4877, file: !1242, discriminator: 2)
!4890 = !DILocation(line: 65, column: 10, scope: !4891, inlinedAt: !4882)
!4891 = !DILexicalBlockFile(scope: !4877, file: !1242, discriminator: 3)
!4892 = !DILocation(line: 195, column: 27, scope: !4742, inlinedAt: !4816)
!4893 = !DILocation(line: 202, column: 27, scope: !4742, inlinedAt: !4816)
!4894 = !DILocation(line: 63, column: 22, scope: !4877, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 210, column: 33, scope: !4896, inlinedAt: !4816)
!4896 = distinct !DILexicalBlock(scope: !4897, file: !580, line: 207, column: 25)
!4897 = distinct !DILexicalBlock(scope: !4742, file: !580, line: 206, column: 27)
!4898 = !DILocation(line: 65, column: 10, scope: !4877, inlinedAt: !4895)
!4899 = !DILocation(line: 65, column: 10, scope: !4887, inlinedAt: !4895)
!4900 = !DILocation(line: 65, column: 10, scope: !4889, inlinedAt: !4895)
!4901 = !DILocation(line: 65, column: 10, scope: !4891, inlinedAt: !4895)
!4902 = !DILocation(line: 210, column: 29, scope: !4903, inlinedAt: !4816)
!4903 = !DILexicalBlockFile(scope: !4896, file: !580, discriminator: 1)
!4904 = distinct !{!4904, !4905, !4906}
!4905 = !DILocation(line: 193, column: 19, scope: !4744)
!4906 = !DILocation(line: 241, column: 21, scope: !4744)
!4907 = !DILocation(line: 216, column: 23, scope: !4742, inlinedAt: !4816)
!4908 = !DILocation(line: 217, column: 27, scope: !4909, inlinedAt: !4816)
!4909 = distinct !DILexicalBlock(scope: !4742, file: !580, line: 217, column: 27)
!4910 = !DILocation(line: 217, column: 64, scope: !4909, inlinedAt: !4816)
!4911 = !DILocation(line: 217, column: 27, scope: !4742, inlinedAt: !4816)
!4912 = !DILocation(line: 219, column: 28, scope: !4742, inlinedAt: !4816)
!4913 = !DILocation(line: 198, column: 30, scope: !4742, inlinedAt: !4816)
!4914 = !DILocation(line: 220, column: 28, scope: !4742, inlinedAt: !4816)
!4915 = !DILocation(line: 198, column: 34, scope: !4742, inlinedAt: !4816)
!4916 = !DILocation(line: 199, column: 29, scope: !4742, inlinedAt: !4816)
!4917 = !DILocation(line: 222, column: 36, scope: !4918, inlinedAt: !4816)
!4918 = distinct !DILexicalBlock(scope: !4742, file: !580, line: 222, column: 27)
!4919 = !DILocation(line: 222, column: 27, scope: !4742, inlinedAt: !4816)
!4920 = !DILocation(line: 225, column: 63, scope: !4921, inlinedAt: !4816)
!4921 = distinct !DILexicalBlock(scope: !4918, file: !580, line: 223, column: 25)
!4922 = !DILocation(line: 225, column: 46, scope: !4921, inlinedAt: !4816)
!4923 = !DILocation(line: 226, column: 25, scope: !4921, inlinedAt: !4816)
!4924 = !DILocation(line: 229, column: 36, scope: !4925, inlinedAt: !4816)
!4925 = distinct !DILexicalBlock(scope: !4918, file: !580, line: 228, column: 25)
!4926 = !DILocation(line: 230, column: 73, scope: !4925, inlinedAt: !4816)
!4927 = !DILocation(line: 230, column: 46, scope: !4925, inlinedAt: !4816)
!4928 = !DILocation(line: 232, column: 35, scope: !4929, inlinedAt: !4816)
!4929 = distinct !DILexicalBlock(scope: !4742, file: !580, line: 232, column: 27)
!4930 = !DILocation(line: 232, column: 27, scope: !4742, inlinedAt: !4816)
!4931 = !DILocation(line: 236, column: 27, scope: !4932, inlinedAt: !4816)
!4932 = distinct !DILexicalBlock(scope: !4929, file: !580, line: 233, column: 25)
!4933 = !DILocation(line: 237, column: 27, scope: !4932, inlinedAt: !4816)
!4934 = !DILocation(line: 239, column: 39, scope: !4742, inlinedAt: !4816)
!4935 = !DILocation(line: 239, column: 50, scope: !4742, inlinedAt: !4816)
!4936 = !DILocation(line: 239, column: 61, scope: !4742, inlinedAt: !4816)
!4937 = !DILocalVariable(name: "__dest", arg: 1, scope: !4938, file: !4939, line: 107, type: !4942)
!4938 = distinct !DISubprogram(name: "strcpy", scope: !4939, file: !4939, line: 107, type: !4940, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !236, variables: !4944)
!4939 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!6, !4942, !4943}
!4942 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!4943 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!4944 = !{!4937, !4945}
!4945 = !DILocalVariable(name: "__src", arg: 2, scope: !4938, file: !4939, line: 107, type: !4943)
!4946 = !DILocation(line: 107, column: 1, scope: !4938, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 239, column: 23, scope: !4742, inlinedAt: !4816)
!4948 = !DILocation(line: 109, column: 49, scope: !4938, inlinedAt: !4947)
!4949 = !DILocation(line: 109, column: 10, scope: !4938, inlinedAt: !4947)
!4950 = !DILocation(line: 107, column: 1, scope: !4938, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 240, column: 23, scope: !4742, inlinedAt: !4816)
!4952 = !DILocation(line: 109, column: 49, scope: !4938, inlinedAt: !4951)
!4953 = !DILocation(line: 109, column: 10, scope: !4938, inlinedAt: !4951)
!4954 = !DILocation(line: 241, column: 21, scope: !4743, inlinedAt: !4816)
!4955 = !DILocation(line: 242, column: 19, scope: !4745, inlinedAt: !4816)
!4956 = !DILocation(line: 243, column: 32, scope: !4957, inlinedAt: !4816)
!4957 = distinct !DILexicalBlock(scope: !4745, file: !580, line: 243, column: 23)
!4958 = !DILocation(line: 243, column: 23, scope: !4745, inlinedAt: !4816)
!4959 = !DILocation(line: 247, column: 33, scope: !4960, inlinedAt: !4816)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !580, line: 246, column: 21)
!4961 = !DILocation(line: 247, column: 45, scope: !4960, inlinedAt: !4816)
!4962 = !DILocation(line: 253, column: 11, scope: !4749, inlinedAt: !4816)
!4963 = !DILocation(line: 377, column: 23, scope: !4751, inlinedAt: !4816)
!4964 = !DILocation(line: 378, column: 5, scope: !4751, inlinedAt: !4816)
!4965 = !DILocation(line: 396, column: 15, scope: !4729)
!4966 = !DILocation(line: 590, column: 8, scope: !4738)
!4967 = !DILocation(line: 590, column: 17, scope: !4738)
!4968 = !DILocation(line: 589, column: 3, scope: !4969)
!4969 = !DILexicalBlockFile(scope: !4739, file: !580, discriminator: 1)
!4970 = !DILocation(line: 592, column: 9, scope: !4736)
!4971 = !DILocation(line: 592, column: 35, scope: !4737)
!4972 = !DILocation(line: 593, column: 9, scope: !4737)
!4973 = !DILocation(line: 593, column: 24, scope: !4974)
!4974 = !DILexicalBlockFile(scope: !4737, file: !580, discriminator: 1)
!4975 = !DILocation(line: 593, column: 31, scope: !4974)
!4976 = !DILocation(line: 593, column: 34, scope: !4977)
!4977 = !DILexicalBlockFile(scope: !4737, file: !580, discriminator: 2)
!4978 = !DILocation(line: 593, column: 45, scope: !4977)
!4979 = !DILocation(line: 592, column: 9, scope: !4980)
!4980 = !DILexicalBlockFile(scope: !4738, file: !580, discriminator: 1)
!4981 = !DILocation(line: 595, column: 29, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4737, file: !580, line: 594, column: 7)
!4983 = !DILocation(line: 595, column: 27, scope: !4982)
!4984 = !DILocation(line: 595, column: 46, scope: !4982)
!4985 = !DILocation(line: 596, column: 9, scope: !4982)
!4986 = !DILocation(line: 591, column: 19, scope: !4738)
!4987 = !DILocation(line: 591, column: 36, scope: !4738)
!4988 = !DILocation(line: 591, column: 16, scope: !4738)
!4989 = !DILocation(line: 591, column: 52, scope: !4980)
!4990 = !DILocation(line: 591, column: 69, scope: !4738)
!4991 = !DILocation(line: 591, column: 49, scope: !4738)
!4992 = distinct !{!4992, !4993, !4994}
!4993 = !DILocation(line: 589, column: 3, scope: !4739)
!4994 = !DILocation(line: 597, column: 7, scope: !4739)
!4995 = !DILocation(line: 602, column: 7, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4729, file: !580, line: 602, column: 7)
!4997 = !DILocation(line: 602, column: 18, scope: !4996)
!4998 = !DILocation(line: 602, column: 7, scope: !4729)
!4999 = !DILocation(line: 612, column: 3, scope: !4729)
!5000 = !DILocation(line: 66, column: 25, scope: !716)
!5001 = !DILocation(line: 66, column: 41, scope: !716)
!5002 = !DILocation(line: 66, column: 54, scope: !716)
!5003 = !DILocation(line: 68, column: 3, scope: !716)
!5004 = !DILocation(line: 81, column: 7, scope: !730)
!5005 = !DILocation(line: 81, column: 7, scope: !716)
!5006 = !DILocation(line: 68, column: 7, scope: !716)
!5007 = !DILocation(line: 84, column: 20, scope: !729)
!5008 = !DILocalVariable(name: "g", arg: 1, scope: !5009, file: !715, line: 43, type: !608)
!5009 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !715, file: !715, line: 43, type: !5010, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !711, variables: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!608, !608, !9}
!5012 = !{!5008, !5013}
!5013 = !DILocalVariable(name: "num", arg: 2, scope: !5009, file: !715, line: 43, type: !9)
!5014 = !DILocation(line: 43, column: 26, scope: !5009, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 86, column: 11, scope: !729)
!5016 = !DILocation(line: 43, column: 36, scope: !5009, inlinedAt: !5015)
!5017 = !DILocation(line: 51, column: 10, scope: !5009, inlinedAt: !5015)
!5018 = !DILocation(line: 87, column: 13, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !729, file: !715, line: 87, column: 11)
!5020 = !DILocation(line: 87, column: 11, scope: !729)
!5021 = !DILocation(line: 93, column: 31, scope: !728)
!5022 = !DILocation(line: 70, column: 10, scope: !716)
!5023 = !DILocation(line: 93, column: 15, scope: !728)
!5024 = !DILocation(line: 96, column: 16, scope: !728)
!5025 = !DILocation(line: 69, column: 7, scope: !716)
!5026 = !DILocation(line: 100, column: 18, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !728, file: !715, line: 100, column: 15)
!5028 = !DILocation(line: 100, column: 39, scope: !5029)
!5029 = !DILexicalBlockFile(scope: !5027, file: !715, discriminator: 1)
!5030 = !DILocation(line: 100, column: 22, scope: !5027)
!5031 = !DILocation(line: 101, column: 26, scope: !5027)
!5032 = !DILocation(line: 101, column: 13, scope: !5027)
!5033 = !DILocation(line: 103, column: 41, scope: !734)
!5034 = !DILocation(line: 43, column: 26, scope: !5009, inlinedAt: !5035)
!5035 = distinct !DILocation(line: 103, column: 20, scope: !734)
!5036 = !DILocation(line: 43, column: 36, scope: !5009, inlinedAt: !5035)
!5037 = !DILocation(line: 45, column: 7, scope: !5038, inlinedAt: !5035)
!5038 = distinct !DILexicalBlock(scope: !5009, file: !715, line: 45, column: 7)
!5039 = !DILocation(line: 45, column: 7, scope: !5009, inlinedAt: !5035)
!5040 = !DILocation(line: 47, column: 7, scope: !5041, inlinedAt: !5035)
!5041 = distinct !DILexicalBlock(scope: !5038, file: !715, line: 46, column: 5)
!5042 = !DILocation(line: 47, column: 13, scope: !5041, inlinedAt: !5035)
!5043 = !DILocation(line: 103, column: 15, scope: !728)
!5044 = !DILocation(line: 51, column: 26, scope: !5009, inlinedAt: !5035)
!5045 = !DILocation(line: 51, column: 10, scope: !5009, inlinedAt: !5035)
!5046 = !DILocation(line: 103, column: 56, scope: !734)
!5047 = !DILocation(line: 105, column: 33, scope: !733)
!5048 = !DILocation(line: 105, column: 19, scope: !733)
!5049 = !DILocation(line: 106, column: 15, scope: !733)
!5050 = !DILocation(line: 107, column: 21, scope: !733)
!5051 = !DILocation(line: 112, column: 17, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !728, file: !715, line: 112, column: 15)
!5053 = !DILocation(line: 112, column: 15, scope: !728)
!5054 = !DILocation(line: 114, column: 23, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5052, file: !715, line: 113, column: 13)
!5056 = !DILocation(line: 117, column: 22, scope: !5055)
!5057 = !DILocation(line: 117, column: 15, scope: !5055)
!5058 = !DILocation(line: 126, column: 21, scope: !716)
!5059 = !DILocation(line: 124, column: 16, scope: !5060)
!5060 = !DILexicalBlockFile(scope: !716, file: !715, discriminator: 3)
!5061 = !DILocation(line: 131, column: 20, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !716, file: !715, line: 131, column: 7)
!5063 = !DILocation(line: 131, column: 7, scope: !716)
!5064 = !DILocation(line: 133, column: 11, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !715, line: 133, column: 11)
!5066 = distinct !DILexicalBlock(scope: !5062, file: !715, line: 132, column: 5)
!5067 = !DILocation(line: 133, column: 17, scope: !5065)
!5068 = !DILocation(line: 133, column: 27, scope: !5065)
!5069 = !DILocation(line: 43, column: 26, scope: !5009, inlinedAt: !5070)
!5070 = distinct !DILocation(line: 133, column: 35, scope: !5071)
!5071 = !DILexicalBlockFile(scope: !5065, file: !715, discriminator: 1)
!5072 = !DILocation(line: 43, column: 36, scope: !5009, inlinedAt: !5070)
!5073 = !DILocation(line: 51, column: 10, scope: !5009, inlinedAt: !5070)
!5074 = !DILocation(line: 133, column: 33, scope: !5071)
!5075 = !DILocation(line: 133, column: 11, scope: !5076)
!5076 = !DILexicalBlockFile(scope: !5066, file: !715, discriminator: 1)
!5077 = !DILocation(line: 135, column: 19, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5065, file: !715, line: 134, column: 9)
!5079 = !DILocation(line: 136, column: 14, scope: !5078)
!5080 = !DILocation(line: 137, column: 22, scope: !5078)
!5081 = !DILocation(line: 137, column: 11, scope: !5078)
!5082 = !DILocation(line: 142, column: 20, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !716, file: !715, line: 142, column: 7)
!5084 = !DILocation(line: 142, column: 46, scope: !5085)
!5085 = !DILexicalBlockFile(scope: !5083, file: !715, discriminator: 2)
!5086 = !DILocation(line: 142, column: 25, scope: !5083)
!5087 = !DILocation(line: 143, column: 17, scope: !5083)
!5088 = !DILocation(line: 43, column: 26, scope: !5009, inlinedAt: !5089)
!5089 = distinct !DILocation(line: 144, column: 7, scope: !716)
!5090 = !DILocation(line: 43, column: 36, scope: !5009, inlinedAt: !5089)
!5091 = !DILocation(line: 45, column: 7, scope: !5038, inlinedAt: !5089)
!5092 = !DILocation(line: 45, column: 7, scope: !5009, inlinedAt: !5089)
!5093 = !DILocation(line: 47, column: 7, scope: !5041, inlinedAt: !5089)
!5094 = !DILocation(line: 47, column: 13, scope: !5041, inlinedAt: !5089)
!5095 = !DILocation(line: 145, column: 7, scope: !716)
!5096 = !DILocation(line: 144, column: 31, scope: !716)
!5097 = !DILocation(line: 51, column: 26, scope: !5009, inlinedAt: !5089)
!5098 = !DILocation(line: 51, column: 10, scope: !5009, inlinedAt: !5089)
!5099 = !DILocation(line: 145, column: 9, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !716, file: !715, line: 145, column: 7)
!5101 = !DILocation(line: 150, column: 42, scope: !716)
!5102 = !DILocation(line: 150, column: 35, scope: !716)
!5103 = !DILocation(line: 151, column: 35, scope: !716)
!5104 = !DILocation(line: 150, column: 11, scope: !716)
!5105 = !DILocation(line: 153, column: 10, scope: !737)
!5106 = !DILocation(line: 153, column: 7, scope: !716)
!5107 = !DILocation(line: 156, column: 25, scope: !736)
!5108 = !DILocation(line: 156, column: 11, scope: !736)
!5109 = !DILocation(line: 157, column: 7, scope: !736)
!5110 = !DILocation(line: 158, column: 13, scope: !736)
!5111 = !DILocation(line: 162, column: 17, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !716, file: !715, line: 162, column: 7)
!5113 = !DILocation(line: 164, column: 10, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5112, file: !715, line: 163, column: 5)
!5115 = !DILocation(line: 165, column: 9, scope: !5114)
!5116 = !DILocation(line: 166, column: 5, scope: !5114)
!5117 = !DILocation(line: 167, column: 11, scope: !716)
!5118 = !DILocation(line: 185, column: 9, scope: !740)
!5119 = !DILocation(line: 185, column: 7, scope: !716)
!5120 = !DILocation(line: 187, column: 21, scope: !739)
!5121 = !DILocation(line: 187, column: 13, scope: !739)
!5122 = !DILocation(line: 189, column: 29, scope: !739)
!5123 = !DILocation(line: 189, column: 14, scope: !739)
!5124 = !DILocation(line: 188, column: 14, scope: !739)
!5125 = !DILocation(line: 191, column: 31, scope: !5126)
!5126 = !DILexicalBlockFile(scope: !5127, file: !715, discriminator: 1)
!5127 = distinct !DILexicalBlock(scope: !5128, file: !715, line: 191, column: 7)
!5128 = distinct !DILexicalBlock(scope: !739, file: !715, line: 191, column: 7)
!5129 = !DILocation(line: 191, column: 7, scope: !5130)
!5130 = !DILexicalBlockFile(scope: !5128, file: !715, discriminator: 1)
!5131 = !DILocation(line: 193, column: 15, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !715, line: 193, column: 15)
!5133 = distinct !DILexicalBlock(scope: !5127, file: !715, line: 192, column: 9)
!5134 = !DILocation(line: 193, column: 21, scope: !5132)
!5135 = !DILocation(line: 193, column: 39, scope: !5136)
!5136 = !DILexicalBlockFile(scope: !5132, file: !715, discriminator: 1)
!5137 = !DILocation(line: 193, column: 30, scope: !5132)
!5138 = !DILocation(line: 194, column: 15, scope: !5132)
!5139 = distinct !{!5139, !5140, !5141}
!5140 = !DILocation(line: 191, column: 7, scope: !5128)
!5141 = !DILocation(line: 197, column: 9, scope: !5128)
!5142 = !DILocation(line: 196, column: 14, scope: !5132)
!5143 = !DILocation(line: 196, column: 18, scope: !5132)
!5144 = !DILocation(line: 201, column: 1, scope: !716)
!5145 = distinct !DISubprogram(name: "rpl_fclose", scope: !5146, file: !5146, line: 56, type: !5147, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !746, variables: !5189)
!5146 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!62, !5149}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3799, line: 49, baseType: !5151)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3801, line: 241, size: 1728, elements: !5152)
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5151, file: !3801, line: 242, baseType: !62, size: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5151, file: !3801, line: 247, baseType: !6, size: 64, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5151, file: !3801, line: 248, baseType: !6, size: 64, offset: 128)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5151, file: !3801, line: 249, baseType: !6, size: 64, offset: 192)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5151, file: !3801, line: 250, baseType: !6, size: 64, offset: 256)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5151, file: !3801, line: 251, baseType: !6, size: 64, offset: 320)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5151, file: !3801, line: 252, baseType: !6, size: 64, offset: 384)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5151, file: !3801, line: 253, baseType: !6, size: 64, offset: 448)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5151, file: !3801, line: 254, baseType: !6, size: 64, offset: 512)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5151, file: !3801, line: 256, baseType: !6, size: 64, offset: 576)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5151, file: !3801, line: 257, baseType: !6, size: 64, offset: 640)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5151, file: !3801, line: 258, baseType: !6, size: 64, offset: 704)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5151, file: !3801, line: 260, baseType: !5166, size: 64, offset: 768)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3801, line: 156, size: 192, elements: !5168)
!5168 = !{!5169, !5170, !5172}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5167, file: !3801, line: 157, baseType: !5166, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5167, file: !3801, line: 158, baseType: !5171, size: 64, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5167, file: !3801, line: 162, baseType: !62, size: 32, offset: 128)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5151, file: !3801, line: 262, baseType: !5171, size: 64, offset: 832)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5151, file: !3801, line: 264, baseType: !62, size: 32, offset: 896)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5151, file: !3801, line: 268, baseType: !62, size: 32, offset: 928)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5151, file: !3801, line: 270, baseType: !3827, size: 64, offset: 960)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5151, file: !3801, line: 274, baseType: !184, size: 16, offset: 1024)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5151, file: !3801, line: 275, baseType: !3831, size: 8, offset: 1040)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5151, file: !3801, line: 276, baseType: !3833, size: 8, offset: 1048)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5151, file: !3801, line: 280, baseType: !3837, size: 64, offset: 1088)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5151, file: !3801, line: 289, baseType: !3840, size: 64, offset: 1152)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5151, file: !3801, line: 297, baseType: !8, size: 64, offset: 1216)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5151, file: !3801, line: 298, baseType: !8, size: 64, offset: 1280)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5151, file: !3801, line: 299, baseType: !8, size: 64, offset: 1344)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5151, file: !3801, line: 300, baseType: !8, size: 64, offset: 1408)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5151, file: !3801, line: 302, baseType: !9, size: 64, offset: 1472)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5151, file: !3801, line: 303, baseType: !62, size: 32, offset: 1536)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5151, file: !3801, line: 305, baseType: !3848, size: 160, offset: 1568)
!5189 = !{!5190, !5191, !5192, !5193}
!5190 = !DILocalVariable(name: "fp", arg: 1, scope: !5145, file: !5146, line: 56, type: !5149)
!5191 = !DILocalVariable(name: "saved_errno", scope: !5145, file: !5146, line: 58, type: !62)
!5192 = !DILocalVariable(name: "fd", scope: !5145, file: !5146, line: 59, type: !62)
!5193 = !DILocalVariable(name: "result", scope: !5145, file: !5146, line: 60, type: !62)
!5194 = !DILocation(line: 56, column: 19, scope: !5145)
!5195 = !DILocation(line: 58, column: 7, scope: !5145)
!5196 = !DILocation(line: 60, column: 7, scope: !5145)
!5197 = !DILocation(line: 63, column: 8, scope: !5145)
!5198 = !DILocation(line: 59, column: 7, scope: !5145)
!5199 = !DILocation(line: 64, column: 10, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5145, file: !5146, line: 64, column: 7)
!5201 = !DILocation(line: 64, column: 7, scope: !5145)
!5202 = !DILocation(line: 65, column: 12, scope: !5200)
!5203 = !DILocation(line: 65, column: 5, scope: !5200)
!5204 = !DILocation(line: 70, column: 9, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5145, file: !5146, line: 70, column: 7)
!5206 = !DILocation(line: 70, column: 23, scope: !5205)
!5207 = !DILocation(line: 70, column: 33, scope: !5208)
!5208 = !DILexicalBlockFile(scope: !5205, file: !5146, discriminator: 1)
!5209 = !DILocation(line: 70, column: 26, scope: !5210)
!5210 = !DILexicalBlockFile(scope: !5205, file: !5146, discriminator: 3)
!5211 = !DILocation(line: 70, column: 59, scope: !5208)
!5212 = !DILocation(line: 71, column: 7, scope: !5205)
!5213 = !DILocation(line: 71, column: 10, scope: !5208)
!5214 = !DILocation(line: 70, column: 7, scope: !5215)
!5215 = !DILexicalBlockFile(scope: !5145, file: !5146, discriminator: 2)
!5216 = !DILocation(line: 98, column: 12, scope: !5145)
!5217 = !DILocation(line: 103, column: 7, scope: !5145)
!5218 = !DILocation(line: 72, column: 19, scope: !5205)
!5219 = !DILocation(line: 103, column: 19, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5145, file: !5146, line: 103, column: 7)
!5221 = !DILocation(line: 105, column: 13, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5220, file: !5146, line: 104, column: 5)
!5223 = !DILocation(line: 107, column: 5, scope: !5222)
!5224 = !DILocation(line: 110, column: 1, scope: !5145)
!5225 = distinct !DISubprogram(name: "rpl_fflush", scope: !5226, file: !5226, line: 127, type: !5227, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !5269)
!5226 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!62, !5229}
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3799, line: 49, baseType: !5231)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3801, line: 241, size: 1728, elements: !5232)
!5232 = !{!5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5231, file: !3801, line: 242, baseType: !62, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5231, file: !3801, line: 247, baseType: !6, size: 64, offset: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5231, file: !3801, line: 248, baseType: !6, size: 64, offset: 128)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5231, file: !3801, line: 249, baseType: !6, size: 64, offset: 192)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5231, file: !3801, line: 250, baseType: !6, size: 64, offset: 256)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5231, file: !3801, line: 251, baseType: !6, size: 64, offset: 320)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5231, file: !3801, line: 252, baseType: !6, size: 64, offset: 384)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5231, file: !3801, line: 253, baseType: !6, size: 64, offset: 448)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5231, file: !3801, line: 254, baseType: !6, size: 64, offset: 512)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5231, file: !3801, line: 256, baseType: !6, size: 64, offset: 576)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5231, file: !3801, line: 257, baseType: !6, size: 64, offset: 640)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5231, file: !3801, line: 258, baseType: !6, size: 64, offset: 704)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5231, file: !3801, line: 260, baseType: !5246, size: 64, offset: 768)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3801, line: 156, size: 192, elements: !5248)
!5248 = !{!5249, !5250, !5252}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5247, file: !3801, line: 157, baseType: !5246, size: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5247, file: !3801, line: 158, baseType: !5251, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5247, file: !3801, line: 162, baseType: !62, size: 32, offset: 128)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5231, file: !3801, line: 262, baseType: !5251, size: 64, offset: 832)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5231, file: !3801, line: 264, baseType: !62, size: 32, offset: 896)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5231, file: !3801, line: 268, baseType: !62, size: 32, offset: 928)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5231, file: !3801, line: 270, baseType: !3827, size: 64, offset: 960)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5231, file: !3801, line: 274, baseType: !184, size: 16, offset: 1024)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5231, file: !3801, line: 275, baseType: !3831, size: 8, offset: 1040)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5231, file: !3801, line: 276, baseType: !3833, size: 8, offset: 1048)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5231, file: !3801, line: 280, baseType: !3837, size: 64, offset: 1088)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5231, file: !3801, line: 289, baseType: !3840, size: 64, offset: 1152)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5231, file: !3801, line: 297, baseType: !8, size: 64, offset: 1216)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5231, file: !3801, line: 298, baseType: !8, size: 64, offset: 1280)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5231, file: !3801, line: 299, baseType: !8, size: 64, offset: 1344)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5231, file: !3801, line: 300, baseType: !8, size: 64, offset: 1408)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5231, file: !3801, line: 302, baseType: !9, size: 64, offset: 1472)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5231, file: !3801, line: 303, baseType: !62, size: 32, offset: 1536)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5231, file: !3801, line: 305, baseType: !3848, size: 160, offset: 1568)
!5269 = !{!5270}
!5270 = !DILocalVariable(name: "stream", arg: 1, scope: !5225, file: !5226, line: 127, type: !5229)
!5271 = !DILocation(line: 127, column: 19, scope: !5225)
!5272 = !DILocation(line: 148, column: 14, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5225, file: !5226, line: 148, column: 7)
!5274 = !DILocation(line: 148, column: 22, scope: !5273)
!5275 = !DILocation(line: 148, column: 27, scope: !5276)
!5276 = !DILexicalBlockFile(scope: !5273, file: !5226, discriminator: 1)
!5277 = !DILocation(line: 148, column: 7, scope: !5278)
!5278 = !DILexicalBlockFile(scope: !5225, file: !5226, discriminator: 1)
!5279 = !DILocation(line: 149, column: 12, scope: !5273)
!5280 = !DILocation(line: 149, column: 5, scope: !5273)
!5281 = !DILocalVariable(name: "fp", arg: 1, scope: !5282, file: !5226, line: 40, type: !5229)
!5282 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5226, file: !5226, line: 40, type: !5283, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !748, variables: !5285)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{null, !5229}
!5285 = !{!5281}
!5286 = !DILocation(line: 40, column: 48, scope: !5282, inlinedAt: !5287)
!5287 = distinct !DILocation(line: 153, column: 3, scope: !5225)
!5288 = !DILocation(line: 42, column: 11, scope: !5289, inlinedAt: !5287)
!5289 = distinct !DILexicalBlock(scope: !5282, file: !5226, line: 42, column: 7)
!5290 = !DILocation(line: 42, column: 18, scope: !5289, inlinedAt: !5287)
!5291 = !DILocation(line: 42, column: 7, scope: !5282, inlinedAt: !5287)
!5292 = !DILocation(line: 44, column: 5, scope: !5289, inlinedAt: !5287)
!5293 = !DILocation(line: 155, column: 10, scope: !5225)
!5294 = !DILocation(line: 155, column: 3, scope: !5225)
!5295 = !DILocation(line: 229, column: 1, scope: !5225)
!5296 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5297, file: !5297, line: 28, type: !5298, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !750, variables: !5341)
!5297 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!62, !5300, !5340, !62}
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3799, line: 49, baseType: !5302)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3801, line: 241, size: 1728, elements: !5303)
!5303 = !{!5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5302, file: !3801, line: 242, baseType: !62, size: 32)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5302, file: !3801, line: 247, baseType: !6, size: 64, offset: 64)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5302, file: !3801, line: 248, baseType: !6, size: 64, offset: 128)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5302, file: !3801, line: 249, baseType: !6, size: 64, offset: 192)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5302, file: !3801, line: 250, baseType: !6, size: 64, offset: 256)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5302, file: !3801, line: 251, baseType: !6, size: 64, offset: 320)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5302, file: !3801, line: 252, baseType: !6, size: 64, offset: 384)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5302, file: !3801, line: 253, baseType: !6, size: 64, offset: 448)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5302, file: !3801, line: 254, baseType: !6, size: 64, offset: 512)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5302, file: !3801, line: 256, baseType: !6, size: 64, offset: 576)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5302, file: !3801, line: 257, baseType: !6, size: 64, offset: 640)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5302, file: !3801, line: 258, baseType: !6, size: 64, offset: 704)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5302, file: !3801, line: 260, baseType: !5317, size: 64, offset: 768)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3801, line: 156, size: 192, elements: !5319)
!5319 = !{!5320, !5321, !5323}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5318, file: !3801, line: 157, baseType: !5317, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5318, file: !3801, line: 158, baseType: !5322, size: 64, offset: 64)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5318, file: !3801, line: 162, baseType: !62, size: 32, offset: 128)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5302, file: !3801, line: 262, baseType: !5322, size: 64, offset: 832)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5302, file: !3801, line: 264, baseType: !62, size: 32, offset: 896)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5302, file: !3801, line: 268, baseType: !62, size: 32, offset: 928)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5302, file: !3801, line: 270, baseType: !3827, size: 64, offset: 960)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5302, file: !3801, line: 274, baseType: !184, size: 16, offset: 1024)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5302, file: !3801, line: 275, baseType: !3831, size: 8, offset: 1040)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5302, file: !3801, line: 276, baseType: !3833, size: 8, offset: 1048)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5302, file: !3801, line: 280, baseType: !3837, size: 64, offset: 1088)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5302, file: !3801, line: 289, baseType: !3840, size: 64, offset: 1152)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5302, file: !3801, line: 297, baseType: !8, size: 64, offset: 1216)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5302, file: !3801, line: 298, baseType: !8, size: 64, offset: 1280)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5302, file: !3801, line: 299, baseType: !8, size: 64, offset: 1344)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5302, file: !3801, line: 300, baseType: !8, size: 64, offset: 1408)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5302, file: !3801, line: 302, baseType: !9, size: 64, offset: 1472)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5302, file: !3801, line: 303, baseType: !62, size: 32, offset: 1536)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5302, file: !3801, line: 305, baseType: !3848, size: 160, offset: 1568)
!5340 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3799, line: 91, baseType: !3827)
!5341 = !{!5342, !5343, !5344, !5345}
!5342 = !DILocalVariable(name: "fp", arg: 1, scope: !5296, file: !5297, line: 28, type: !5300)
!5343 = !DILocalVariable(name: "offset", arg: 2, scope: !5296, file: !5297, line: 28, type: !5340)
!5344 = !DILocalVariable(name: "whence", arg: 3, scope: !5296, file: !5297, line: 28, type: !62)
!5345 = !DILocalVariable(name: "pos", scope: !5346, file: !5297, line: 116, type: !5340)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !5297, line: 112, column: 5)
!5347 = distinct !DILexicalBlock(scope: !5296, file: !5297, line: 51, column: 7)
!5348 = !DILocation(line: 28, column: 15, scope: !5296)
!5349 = !DILocation(line: 28, column: 25, scope: !5296)
!5350 = !DILocation(line: 28, column: 37, scope: !5296)
!5351 = !DILocation(line: 51, column: 11, scope: !5347)
!5352 = !DILocation(line: 51, column: 31, scope: !5347)
!5353 = !DILocation(line: 51, column: 24, scope: !5347)
!5354 = !DILocation(line: 52, column: 7, scope: !5347)
!5355 = !DILocation(line: 52, column: 14, scope: !5356)
!5356 = !DILexicalBlockFile(scope: !5347, file: !5297, discriminator: 1)
!5357 = !DILocation(line: 52, column: 35, scope: !5356)
!5358 = !{!1250, !771, i64 32}
!5359 = !DILocation(line: 52, column: 28, scope: !5356)
!5360 = !DILocation(line: 53, column: 7, scope: !5347)
!5361 = !DILocation(line: 53, column: 14, scope: !5356)
!5362 = !{!1250, !771, i64 72}
!5363 = !DILocation(line: 53, column: 28, scope: !5356)
!5364 = !DILocation(line: 51, column: 7, scope: !5365)
!5365 = !DILexicalBlockFile(scope: !5296, file: !5297, discriminator: 1)
!5366 = !DILocation(line: 116, column: 26, scope: !5346)
!5367 = !DILocation(line: 116, column: 19, scope: !5368)
!5368 = !DILexicalBlockFile(scope: !5346, file: !5297, discriminator: 1)
!5369 = !DILocation(line: 116, column: 13, scope: !5346)
!5370 = !DILocation(line: 117, column: 15, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5346, file: !5297, line: 117, column: 11)
!5372 = !DILocation(line: 117, column: 11, scope: !5346)
!5373 = !DILocation(line: 127, column: 11, scope: !5346)
!5374 = !DILocation(line: 127, column: 18, scope: !5346)
!5375 = !DILocation(line: 128, column: 11, scope: !5346)
!5376 = !DILocation(line: 128, column: 19, scope: !5346)
!5377 = !{!1250, !1251, i64 144}
!5378 = !DILocation(line: 159, column: 7, scope: !5346)
!5379 = !DILocation(line: 161, column: 10, scope: !5296)
!5380 = !DILocation(line: 161, column: 3, scope: !5296)
!5381 = !DILocation(line: 162, column: 1, scope: !5296)
