; ModuleID = 'coreutils-8.27/src/chroot.bc'
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
@.str.1 = private unnamed_addr constant [64 x i8] c"Usage: %s [OPTION] NEWROOT [COMMAND [ARG]...]\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Run COMMAND with root directory set to NEWROOT.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"  --groups=G_LIST        specify supplementary groups as g1,g2,..,gN\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"  --userspec=USER:GROUP  specify user and group (ID or name) to use\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  --skip-chdir           do not change working directory to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"\0AIf no command is given, run '${SHELL} -i' (default: '/bin/sh -i').\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_opts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"Roland McGrath\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"option --skip-chdir only permitted if NEWROOT is old %s\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"cannot change root directory to %s\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"cannot chdir to root directory\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"no group specified for unknown uid: %d\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"failed to get supplemental groups\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"failed to set supplemental groups\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"failed to set group-ID\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"failed to set user-ID\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"invalid group %s\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"invalid group list %s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"userspec\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"skip-chdir\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !140
@.str.31 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !146
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !151
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !155
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !162
@.str.54 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.56 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.60, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.61, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.66, i32 0, i32 0), i8* null], align 16, !dbg !169
@.str.57 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.58 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.59 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.60 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.61 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.62 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.63 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.64 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.65 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.66 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !181
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !188
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !200
@.str.11.67 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.69 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.70 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.71 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.72 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.73 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !207
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !214
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !202
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !216
@.str.3.82 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.1.85 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.87 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.88 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.89 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.102 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.106 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.107 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !222
@.str.1.120 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.126 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.127 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.141 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !231
@.str.3.142 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.143 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.144 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.145 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.146 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.147 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !741 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !745, metadata !746), !dbg !747
  %2 = icmp eq i32 %0, 0, !dbg !748
  br i1 %2, label %8, label %3, !dbg !750

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !751, !tbaa !754
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !751
  %6 = load i8*, i8** @program_name, align 8, !dbg !751, !tbaa !754
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !758
  br label %48, !dbg !760

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !762
  %10 = load i8*, i8** @program_name, align 8, !dbg !762, !tbaa !754
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #10, !dbg !764
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !766
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766, !tbaa !754
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !767
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !768
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !754
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !769
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !770
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !770, !tbaa !754
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !771
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !772
  %22 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !773
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i8* %22) #10, !dbg !774
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !776
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !776, !tbaa !754
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !777
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !778
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !778, !tbaa !754
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !779
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !780
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !780, !tbaa !754
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !781
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !106, metadata !746) #10, !dbg !782
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !106, metadata !746) #10, !dbg !782
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !784
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !785
  %35 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !787
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !117, metadata !746) #10, !dbg !788
  %36 = icmp eq i8* %35, null, !dbg !789
  br i1 %36, label %43, label %37, !dbg !790

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #13, !dbg !791
  %39 = icmp eq i32 %38, 0, !dbg !791
  br i1 %39, label %43, label %40, !dbg !793

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !795
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !797
  br label %43, !dbg !799

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !800
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !801
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !802
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !803
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #14, !dbg !804
  unreachable, !dbg !804
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !805 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !809, metadata !746), !dbg !867
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !810, metadata !746), !dbg !868
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !812, metadata !746), !dbg !869
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !813, metadata !746), !dbg !870
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !814, metadata !746), !dbg !871
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !815, metadata !746), !dbg !872
  %8 = bitcast i32* %3 to i8*, !dbg !873
  call void @llvm.lifetime.start(i64 4, i8* nonnull %8) #10, !dbg !873
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !816, metadata !746), !dbg !874
  store i32 -1, i32* %3, align 4, !dbg !874, !tbaa !875
  %9 = bitcast i32* %4 to i8*, !dbg !877
  call void @llvm.lifetime.start(i64 4, i8* nonnull %9) #10, !dbg !877
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !817, metadata !746), !dbg !878
  store i32 -1, i32* %4, align 4, !dbg !878, !tbaa !875
  %10 = bitcast i32** %5 to i8*, !dbg !879
  call void @llvm.lifetime.start(i64 8, i8* nonnull %10) #10, !dbg !879
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !818, metadata !746), !dbg !880
  store i32* null, i32** %5, align 8, !dbg !880, !tbaa !754
  %11 = bitcast i64* %6 to i8*, !dbg !881
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #10, !dbg !881
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !819, metadata !746), !dbg !882
  store i64 0, i64* %6, align 8, !dbg !882, !tbaa !883
  %12 = load i8*, i8** %1, align 8, !dbg !885, !tbaa !754
  tail call void @set_program_name(i8* %12) #10, !dbg !886
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !887
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !888
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !889
  tail call void @llvm.dbg.value(metadata i32 125, i64 0, metadata !890, metadata !746), !dbg !893
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !895, !tbaa !875
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !897
  br label %18, !dbg !898

; <label>:17:                                     ; preds = %25
  br label %18, !dbg !869

; <label>:18:                                     ; preds = %17, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %17 ]
  %20 = phi i8* [ null, %2 ], [ %23, %17 ]
  %21 = phi i8* [ null, %2 ], [ %26, %17 ]
  br label %22, !dbg !869

; <label>:22:                                     ; preds = %18, %39
  %23 = phi i8* [ %20, %18 ], [ %40, %39 ]
  %24 = phi i8* [ %21, %18 ], [ %26, %39 ]
  br label %25, !dbg !869

; <label>:25:                                     ; preds = %32, %22
  %26 = phi i8* [ %24, %22 ], [ %29, %32 ]
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !812, metadata !746), !dbg !869
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !814, metadata !746), !dbg !871
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !815, metadata !746), !dbg !872
  %27 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_opts, i64 0, i64 0), i32* null) #10, !dbg !899
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !811, metadata !746), !dbg !901
  switch i32 %27, label %45 [
    i32 -1, label %46
    i32 257, label %28
    i32 256, label %39
    i32 258, label %17
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !902, !llvm.loop !903

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** @optarg, align 8, !dbg !905, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !812, metadata !746), !dbg !869
  %30 = tail call i64 @strlen(i8* %29) #13, !dbg !906
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !820, metadata !746), !dbg !907
  %31 = icmp eq i64 %30, 0, !dbg !908
  br i1 %31, label %32, label %33, !dbg !910

; <label>:32:                                     ; preds = %28, %38, %33
  br label %25, !dbg !869, !llvm.loop !903

; <label>:33:                                     ; preds = %28
  %34 = add i64 %30, -1, !dbg !911
  %35 = getelementptr inbounds i8, i8* %29, i64 %34, !dbg !913
  %36 = load i8, i8* %35, align 1, !dbg !913, !tbaa !914
  %37 = icmp eq i8 %36, 58, !dbg !915
  br i1 %37, label %38, label %32, !dbg !916

; <label>:38:                                     ; preds = %33
  store i8 0, i8* %35, align 1, !dbg !918, !tbaa !914
  br label %32, !dbg !919

; <label>:39:                                     ; preds = %25
  %40 = load i8*, i8** @optarg, align 8, !dbg !920, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !814, metadata !746), !dbg !871
  br label %22, !dbg !921, !llvm.loop !903

; <label>:41:                                     ; preds = %25
  tail call void @usage(i32 0) #15, !dbg !922
  unreachable, !dbg !922

; <label>:42:                                     ; preds = %25
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !923, !tbaa !754
  %44 = load i8*, i8** @Version, align 8, !dbg !923, !tbaa !754
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* null) #10, !dbg !923
  tail call void @exit(i32 0) #14, !dbg !924
  unreachable, !dbg !923

; <label>:45:                                     ; preds = %25
  tail call void @usage(i32 125) #15, !dbg !926
  unreachable, !dbg !926

; <label>:46:                                     ; preds = %25
  %47 = load i32, i32* @optind, align 4, !dbg !927, !tbaa !875
  %48 = icmp slt i32 %47, %0, !dbg !929
  br i1 %48, label %51, label %49, !dbg !930

; <label>:49:                                     ; preds = %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !931
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50) #10, !dbg !933
  tail call void @usage(i32 125) #15, !dbg !935
  unreachable, !dbg !935

; <label>:51:                                     ; preds = %46
  %52 = sext i32 %47 to i64, !dbg !936
  %53 = getelementptr inbounds i8*, i8** %1, i64 %52, !dbg !936
  %54 = load i8*, i8** %53, align 8, !dbg !936, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !824, metadata !746), !dbg !937
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !938, metadata !746) #10, !dbg !951
  %55 = tail call i8* @canonicalize_file_name(i8* %54) #10, !dbg !953
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !943, metadata !746) #10, !dbg !954
  %56 = icmp eq i8* %55, null, !dbg !955
  br i1 %56, label %70, label %57, !dbg !956

; <label>:57:                                     ; preds = %51
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !945, metadata !746) #10, !dbg !957
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !948, metadata !746) #10, !dbg !958
  %58 = load i8, i8* %55, align 1, !dbg !959, !tbaa !914
  %59 = zext i8 %58 to i32, !dbg !959
  %60 = sub nsw i32 47, %59, !dbg !959
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !950, metadata !746) #10, !dbg !958
  %61 = icmp eq i32 %60, 0, !dbg !961
  br i1 %61, label %62, label %67, !dbg !964

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !966
  %64 = load i8, i8* %63, align 1, !dbg !966, !tbaa !914
  %65 = zext i8 %64 to i32, !dbg !966
  %66 = sub nsw i32 0, %65, !dbg !966
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !950, metadata !746) #10, !dbg !958
  br label %67, !dbg !969

; <label>:67:                                     ; preds = %62, %57
  %68 = phi i32 [ %66, %62 ], [ %60, %57 ]
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !950, metadata !746) #10, !dbg !958
  %69 = icmp eq i32 %68, 0, !dbg !972
  br label %70

; <label>:70:                                     ; preds = %51, %67
  %71 = phi i1 [ false, %51 ], [ %69, %67 ]
  tail call void @free(i8* %55) #10, !dbg !974
  %72 = icmp eq i8 %19, 0, !dbg !975
  %73 = or i1 %72, %71, !dbg !978
  br i1 %73, label %77, label %74, !dbg !978

; <label>:74:                                     ; preds = %70
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !979
  %76 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !981
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75, i8* %76) #10, !dbg !982
  tail call void @usage(i32 125) #15, !dbg !984
  unreachable, !dbg !984

; <label>:77:                                     ; preds = %70
  br i1 %71, label %121, label %78, !dbg !985

; <label>:78:                                     ; preds = %77
  %79 = icmp eq i8* %26, null, !dbg !986
  br i1 %79, label %82, label %80, !dbg !987

; <label>:80:                                     ; preds = %78
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !816, metadata !988), !dbg !874
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !817, metadata !988), !dbg !878
  %81 = call i8* @parse_user_spec(i8* nonnull %26, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #10, !dbg !989
  call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !826, metadata !746), !dbg !989
  br label %82, !dbg !990

; <label>:82:                                     ; preds = %78, %80
  %83 = load i32, i32* %3, align 4, !dbg !991, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !816, metadata !746), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !992, metadata !746), !dbg !997
  %84 = icmp eq i32 %83, -1, !dbg !999
  br i1 %84, label %102, label %85, !dbg !1000

; <label>:85:                                     ; preds = %82
  %86 = icmp eq i8* %23, null, !dbg !1001
  %87 = load i32, i32* %4, align 4, !dbg !1003
  %88 = icmp eq i32 %87, -1, !dbg !1005
  %89 = or i1 %86, %88, !dbg !1012
  br i1 %89, label %90, label %105, !dbg !1012

; <label>:90:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !816, metadata !746), !dbg !874
  %91 = call %struct.passwd* @getpwuid(i32 %83) #10, !dbg !1013
  call void @llvm.dbg.value(metadata %struct.passwd* %91, i64 0, metadata !831, metadata !746), !dbg !1015
  %92 = icmp eq %struct.passwd* %91, null, !dbg !1016
  br i1 %92, label %102, label %93, !dbg !1017

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %4, align 4, !dbg !1018, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !817, metadata !746), !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !1010, metadata !746), !dbg !1021
  %95 = icmp eq i32 %94, -1, !dbg !1023
  br i1 %95, label %96, label %99, !dbg !1024

; <label>:96:                                     ; preds = %93
  %97 = getelementptr inbounds %struct.passwd, %struct.passwd* %91, i64 0, i32 3, !dbg !1025
  %98 = load i32, i32* %97, align 4, !dbg !1025, !tbaa !1026
  call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !817, metadata !746), !dbg !878
  store i32 %98, i32* %4, align 4, !dbg !1028, !tbaa !875
  br label %99, !dbg !1029

; <label>:99:                                     ; preds = %96, %93
  %100 = getelementptr inbounds %struct.passwd, %struct.passwd* %91, i64 0, i32 0, !dbg !1030
  %101 = load i8*, i8** %100, align 8, !dbg !1030, !tbaa !1031
  call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !813, metadata !746), !dbg !870
  br label %102, !dbg !1032

; <label>:102:                                    ; preds = %99, %90, %82
  %103 = phi i8* [ null, %82 ], [ %101, %99 ], [ null, %90 ]
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !813, metadata !746), !dbg !870
  %104 = icmp eq i8* %23, null, !dbg !1033
  br i1 %104, label %111, label %105, !dbg !1034

; <label>:105:                                    ; preds = %102, %85
  %106 = phi i8* [ %103, %102 ], [ null, %85 ]
  %107 = load i8, i8* %23, align 1, !dbg !1035, !tbaa !914
  %108 = icmp eq i8 %107, 0, !dbg !1035
  br i1 %108, label %121, label %109, !dbg !1037

; <label>:109:                                    ; preds = %105
  call void @llvm.dbg.value(metadata i32** %5, i64 0, metadata !818, metadata !988), !dbg !880
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !819, metadata !988), !dbg !882
  %110 = call fastcc i32 @parse_additional_groups(i8* nonnull %23, i32** nonnull %5, i64* nonnull %6, i1 zeroext false), !dbg !1039
  call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !845, metadata !746), !dbg !1039
  br label %121, !dbg !1040

; <label>:111:                                    ; preds = %102
  %112 = load i32, i32* %4, align 4, !dbg !1041, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !817, metadata !746), !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !1010, metadata !746), !dbg !1043
  %113 = icmp ne i32 %112, -1, !dbg !1045
  %114 = icmp ne i8* %103, null, !dbg !1046
  %115 = and i1 %114, %113, !dbg !1045
  br i1 %115, label %116, label %121, !dbg !1045

; <label>:116:                                    ; preds = %111
  call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !817, metadata !746), !dbg !878
  call void @llvm.dbg.value(metadata i32** %5, i64 0, metadata !818, metadata !988), !dbg !880
  %117 = call i32 @xgetgroups(i8* nonnull %103, i32 %112, i32** nonnull %5) #10, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !848, metadata !746), !dbg !1049
  %118 = icmp sgt i32 %117, 0, !dbg !1050
  br i1 %118, label %119, label %121, !dbg !1052

; <label>:119:                                    ; preds = %116
  %120 = sext i32 %117 to i64, !dbg !1053
  call void @llvm.dbg.value(metadata i64 %120, i64 0, metadata !819, metadata !746), !dbg !882
  store i64 %120, i64* %6, align 8, !dbg !1054, !tbaa !883
  br label %121, !dbg !1055

; <label>:121:                                    ; preds = %105, %116, %119, %109, %111, %77
  %122 = phi i8* [ null, %77 ], [ %106, %109 ], [ %103, %111 ], [ %103, %119 ], [ %103, %116 ], [ %106, %105 ]
  call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !813, metadata !746), !dbg !870
  %123 = call i32 @chroot(i8* %54) #10, !dbg !1056
  %124 = icmp eq i32 %123, 0, !dbg !1058
  br i1 %124, label %130, label %125, !dbg !1059

; <label>:125:                                    ; preds = %121
  %126 = tail call i32* @__errno_location() #1, !dbg !1060
  %127 = load i32, i32* %126, align 4, !dbg !1060, !tbaa !875
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !1061
  %129 = call i8* @quotearg_style(i32 4, i8* %54) #10, !dbg !1063
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %127, i8* %128, i8* %129) #10, !dbg !1065
  unreachable, !dbg !1060

; <label>:130:                                    ; preds = %121
  br i1 %72, label %131, label %138, !dbg !1067

; <label>:131:                                    ; preds = %130
  %132 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !1069
  %133 = icmp eq i32 %132, 0, !dbg !1069
  br i1 %133, label %138, label %134, !dbg !1071

; <label>:134:                                    ; preds = %131
  %135 = tail call i32* @__errno_location() #1, !dbg !1072
  %136 = load i32, i32* %135, align 4, !dbg !1072, !tbaa !875
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !1073
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %136, i8* %137) #10, !dbg !1074
  unreachable, !dbg !1072

; <label>:138:                                    ; preds = %131, %130
  %139 = load i32, i32* @optind, align 4, !dbg !1076, !tbaa !875
  %140 = add nsw i32 %139, 1, !dbg !1077
  %141 = icmp eq i32 %140, %0, !dbg !1078
  br i1 %141, label %142, label %148, !dbg !1079

; <label>:142:                                    ; preds = %138
  %143 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !851, metadata !746), !dbg !1081
  %144 = icmp eq i8* %143, null, !dbg !1082
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i64 0, metadata !851, metadata !746), !dbg !1081
  %145 = select i1 %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* %143, !dbg !1084
  call void @llvm.dbg.value(metadata i8* %145, i64 0, metadata !851, metadata !746), !dbg !1081
  store i8* %145, i8** %1, align 8, !dbg !1085, !tbaa !754
  %146 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1086
  %147 = bitcast i8** %146 to <2 x i8*>*, !dbg !1087
  store <2 x i8*> <i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* null>, <2 x i8*>* %147, align 8, !dbg !1087, !tbaa !754
  br label %151, !dbg !1088

; <label>:148:                                    ; preds = %138
  %149 = sext i32 %140 to i64, !dbg !1089
  %150 = getelementptr inbounds i8*, i8** %1, i64 %149, !dbg !1089
  call void @llvm.dbg.value(metadata i8** %150, i64 0, metadata !810, metadata !746), !dbg !868
  br label %151

; <label>:151:                                    ; preds = %148, %142
  %152 = phi i8** [ %1, %142 ], [ %150, %148 ]
  call void @llvm.dbg.value(metadata i8** %152, i64 0, metadata !810, metadata !746), !dbg !868
  %153 = icmp eq i8* %26, null, !dbg !1091
  br i1 %153, label %166, label %154, !dbg !1092

; <label>:154:                                    ; preds = %151
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !816, metadata !988), !dbg !874
  call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !817, metadata !988), !dbg !878
  %155 = call i8* @parse_user_spec(i8* nonnull %26, i32* nonnull %3, i32* nonnull %4, i8** null, i8** null) #10, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !854, metadata !746), !dbg !1094
  %156 = icmp eq i8* %155, null, !dbg !1095
  br i1 %156, label %166, label %157, !dbg !1097

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* %3, align 4, !dbg !1098, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !816, metadata !746), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %158, i64 0, metadata !992, metadata !746), !dbg !1100
  %159 = icmp eq i32 %158, -1, !dbg !1102
  br i1 %159, label %160, label %169, !dbg !1103

; <label>:160:                                    ; preds = %157
  %161 = load i32, i32* %4, align 4, !dbg !1104, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %161, i64 0, metadata !817, metadata !746), !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %161, i64 0, metadata !1010, metadata !746), !dbg !1106
  %162 = icmp eq i32 %161, -1, !dbg !1108
  br i1 %162, label %163, label %166, !dbg !1109

; <label>:163:                                    ; preds = %160
  %164 = tail call i32* @__errno_location() #1, !dbg !1111
  %165 = load i32, i32* %164, align 4, !dbg !1111, !tbaa !875
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %155) #10, !dbg !1112
  unreachable, !dbg !1111

; <label>:166:                                    ; preds = %160, %154, %151
  %167 = load i32, i32* %3, align 4, !dbg !1113, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !816, metadata !746), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !992, metadata !746), !dbg !1114
  %168 = icmp eq i32 %167, -1, !dbg !1116
  br i1 %168, label %196, label %169, !dbg !1117

; <label>:169:                                    ; preds = %157, %166
  %170 = phi i32 [ %158, %157 ], [ %167, %166 ], !dbg !1118
  %171 = icmp eq i8* %23, null, !dbg !1120
  %172 = load i32, i32* %4, align 4, !dbg !1122
  %173 = icmp eq i32 %172, -1, !dbg !1124
  %174 = or i1 %171, %173, !dbg !1126
  br i1 %174, label %178, label %175, !dbg !1126

; <label>:175:                                    ; preds = %169
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !813, metadata !746), !dbg !870
  %176 = load i32*, i32** %5, align 8, !dbg !1127, !tbaa !754
  call void @llvm.dbg.value(metadata i32* %198, i64 0, metadata !818, metadata !746), !dbg !880
  call void @llvm.dbg.value(metadata i32* %198, i64 0, metadata !860, metadata !746), !dbg !1128
  %177 = bitcast i32** %7 to i8*, !dbg !1129
  call void @llvm.lifetime.start(i64 8, i8* nonnull %177) #10, !dbg !1129
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !861, metadata !746), !dbg !1130
  store i32* null, i32** %7, align 8, !dbg !1130, !tbaa !754
  br label %201, !dbg !1131

; <label>:178:                                    ; preds = %169
  call void @llvm.dbg.value(metadata i32 %170, i64 0, metadata !816, metadata !746), !dbg !874
  %179 = call %struct.passwd* @getpwuid(i32 %170) #10, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.passwd* %179, i64 0, metadata !857, metadata !746), !dbg !1133
  %180 = icmp eq %struct.passwd* %179, null, !dbg !1134
  %181 = load i32, i32* %4, align 4, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !817, metadata !746), !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !1010, metadata !746), !dbg !1135
  %182 = icmp eq i32 %181, -1, !dbg !1139
  br i1 %180, label %190, label %183, !dbg !1140

; <label>:183:                                    ; preds = %178
  br i1 %182, label %184, label %187, !dbg !1141

; <label>:184:                                    ; preds = %183
  %185 = getelementptr inbounds %struct.passwd, %struct.passwd* %179, i64 0, i32 3, !dbg !1142
  %186 = load i32, i32* %185, align 4, !dbg !1142, !tbaa !1026
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !817, metadata !746), !dbg !878
  store i32 %186, i32* %4, align 4, !dbg !1143, !tbaa !875
  br label %187, !dbg !1144

; <label>:187:                                    ; preds = %184, %183
  %188 = getelementptr inbounds %struct.passwd, %struct.passwd* %179, i64 0, i32 0, !dbg !1145
  %189 = load i8*, i8** %188, align 8, !dbg !1145, !tbaa !1031
  call void @llvm.dbg.value(metadata i8* %189, i64 0, metadata !813, metadata !746), !dbg !870
  br label %196, !dbg !1146

; <label>:190:                                    ; preds = %178
  br i1 %182, label %191, label %196, !dbg !1147

; <label>:191:                                    ; preds = %190
  %192 = tail call i32* @__errno_location() #1, !dbg !1148
  %193 = load i32, i32* %192, align 4, !dbg !1148, !tbaa !875
  %194 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !1151
  %195 = load i32, i32* %3, align 4, !dbg !1148, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !816, metadata !746), !dbg !874
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %193, i8* %194, i32 %195) #10, !dbg !1153
  unreachable, !dbg !1148

; <label>:196:                                    ; preds = %187, %190, %166
  %197 = phi i8* [ %122, %166 ], [ %189, %187 ], [ %122, %190 ]
  call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !813, metadata !746), !dbg !870
  %198 = load i32*, i32** %5, align 8, !dbg !1127, !tbaa !754
  call void @llvm.dbg.value(metadata i32* %198, i64 0, metadata !818, metadata !746), !dbg !880
  call void @llvm.dbg.value(metadata i32* %198, i64 0, metadata !860, metadata !746), !dbg !1128
  %199 = bitcast i32** %7 to i8*, !dbg !1129
  call void @llvm.lifetime.start(i64 8, i8* nonnull %199) #10, !dbg !1129
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !861, metadata !746), !dbg !1130
  store i32* null, i32** %7, align 8, !dbg !1130, !tbaa !754
  %200 = icmp eq i8* %23, null, !dbg !1155
  br i1 %200, label %216, label %201, !dbg !1131

; <label>:201:                                    ; preds = %196, %175
  %202 = phi i8* [ %177, %175 ], [ %199, %196 ]
  %203 = phi i32* [ %176, %175 ], [ %198, %196 ]
  %204 = load i8, i8* %23, align 1, !dbg !1156, !tbaa !914
  %205 = icmp eq i8 %204, 0, !dbg !1156
  br i1 %205, label %238, label %206, !dbg !1158

; <label>:206:                                    ; preds = %201
  %207 = load i64, i64* %6, align 8, !dbg !1159, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %207, i64 0, metadata !819, metadata !746), !dbg !882
  %208 = icmp eq i64 %207, 0, !dbg !1162
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !819, metadata !988), !dbg !882
  call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !861, metadata !988), !dbg !1130
  %209 = call fastcc i32 @parse_additional_groups(i8* nonnull %23, i32** nonnull %7, i64* nonnull %6, i1 zeroext %208), !dbg !1163
  %210 = icmp eq i32 %209, 0, !dbg !1164
  br i1 %210, label %214, label %211, !dbg !1165

; <label>:211:                                    ; preds = %206
  %212 = load i64, i64* %6, align 8, !dbg !1166, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !819, metadata !746), !dbg !882
  %213 = icmp eq i64 %212, 0, !dbg !1166
  br i1 %213, label %283, label %238, !dbg !1169

; <label>:214:                                    ; preds = %206
  %215 = load i32*, i32** %7, align 8, !dbg !1170, !tbaa !754
  call void @llvm.dbg.value(metadata i32* %215, i64 0, metadata !861, metadata !746), !dbg !1130
  call void @llvm.dbg.value(metadata i32* %215, i64 0, metadata !860, metadata !746), !dbg !1128
  br label %238

; <label>:216:                                    ; preds = %196
  %217 = load i32, i32* %4, align 4, !dbg !1171, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %217, i64 0, metadata !817, metadata !746), !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %217, i64 0, metadata !1010, metadata !746), !dbg !1173
  %218 = icmp ne i32 %217, -1, !dbg !1175
  %219 = icmp ne i8* %197, null, !dbg !1176
  %220 = and i1 %219, %218, !dbg !1175
  br i1 %220, label %221, label %234, !dbg !1175

; <label>:221:                                    ; preds = %216
  call void @llvm.dbg.value(metadata i32 %217, i64 0, metadata !817, metadata !746), !dbg !878
  call void @llvm.dbg.value(metadata i32** %7, i64 0, metadata !861, metadata !988), !dbg !1130
  %222 = call i32 @xgetgroups(i8* nonnull %197, i32 %217, i32** nonnull %7) #10, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %222, i64 0, metadata !862, metadata !746), !dbg !1179
  %223 = icmp slt i32 %222, 1, !dbg !1180
  br i1 %223, label %224, label %231, !dbg !1182

; <label>:224:                                    ; preds = %221
  %225 = load i64, i64* %6, align 8, !dbg !1183, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !819, metadata !746), !dbg !882
  %226 = icmp eq i64 %225, 0, !dbg !1183
  br i1 %226, label %227, label %234, !dbg !1186

; <label>:227:                                    ; preds = %224
  %228 = tail call i32* @__errno_location() #1, !dbg !1187
  %229 = load i32, i32* %228, align 4, !dbg !1187, !tbaa !875
  %230 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !1188
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %229, i8* %230) #10, !dbg !1190
  unreachable, !dbg !1187

; <label>:231:                                    ; preds = %221
  %232 = sext i32 %222 to i64, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !819, metadata !746), !dbg !882
  store i64 %232, i64* %6, align 8, !dbg !1194, !tbaa !883
  %233 = load i32*, i32** %7, align 8, !dbg !1195, !tbaa !754
  call void @llvm.dbg.value(metadata i32* %233, i64 0, metadata !861, metadata !746), !dbg !1130
  call void @llvm.dbg.value(metadata i32* %233, i64 0, metadata !860, metadata !746), !dbg !1128
  br label %234

; <label>:234:                                    ; preds = %231, %224, %216
  %235 = phi i32* [ %198, %216 ], [ %198, %224 ], [ %233, %231 ]
  call void @llvm.dbg.value(metadata i32* %235, i64 0, metadata !860, metadata !746), !dbg !1128
  %236 = load i32, i32* %3, align 4, !dbg !1196, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %236, i64 0, metadata !816, metadata !746), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %236, i64 0, metadata !992, metadata !746), !dbg !1198
  %237 = icmp eq i32 %236, -1, !dbg !1200
  br i1 %237, label %248, label %238, !dbg !1200

; <label>:238:                                    ; preds = %234, %201, %214, %211
  %239 = phi i32* [ %235, %234 ], [ %203, %201 ], [ %215, %214 ], [ %203, %211 ]
  %240 = phi i8* [ %199, %234 ], [ %202, %201 ], [ %202, %214 ], [ %202, %211 ]
  %241 = load i64, i64* %6, align 8, !dbg !1201, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !819, metadata !746), !dbg !882
  %242 = call i32 @setgroups(i64 %241, i32* %239) #10, !dbg !1203
  %243 = icmp eq i32 %242, 0, !dbg !1204
  br i1 %243, label %248, label %244, !dbg !1205

; <label>:244:                                    ; preds = %238
  %245 = tail call i32* @__errno_location() #1, !dbg !1207
  %246 = load i32, i32* %245, align 4, !dbg !1207, !tbaa !875
  %247 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !1208
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %246, i8* %247) #10, !dbg !1210
  unreachable, !dbg !1207

; <label>:248:                                    ; preds = %234, %238
  %249 = phi i8* [ %240, %238 ], [ %199, %234 ]
  %250 = bitcast i32** %7 to i8**, !dbg !1211
  %251 = load i8*, i8** %250, align 8, !dbg !1211, !tbaa !754
  call void @free(i8* %251) #10, !dbg !1212
  %252 = bitcast i32** %5 to i8**, !dbg !1213
  %253 = load i8*, i8** %252, align 8, !dbg !1213, !tbaa !754
  call void @free(i8* %253) #10, !dbg !1214
  %254 = load i32, i32* %4, align 4, !dbg !1215, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %254, i64 0, metadata !817, metadata !746), !dbg !878
  tail call void @llvm.dbg.value(metadata i32 %254, i64 0, metadata !1010, metadata !746), !dbg !1217
  %255 = icmp eq i32 %254, -1, !dbg !1219
  br i1 %255, label %263, label %256, !dbg !1220

; <label>:256:                                    ; preds = %248
  call void @llvm.dbg.value(metadata i32 %254, i64 0, metadata !817, metadata !746), !dbg !878
  %257 = call i32 @setgid(i32 %254) #10, !dbg !1221
  %258 = icmp eq i32 %257, 0, !dbg !1221
  br i1 %258, label %263, label %259, !dbg !1223

; <label>:259:                                    ; preds = %256
  %260 = tail call i32* @__errno_location() #1, !dbg !1224
  %261 = load i32, i32* %260, align 4, !dbg !1224, !tbaa !875
  %262 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1225
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %261, i8* %262) #10, !dbg !1226
  unreachable, !dbg !1224

; <label>:263:                                    ; preds = %256, %248
  %264 = load i32, i32* %3, align 4, !dbg !1228, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !816, metadata !746), !dbg !874
  tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !992, metadata !746), !dbg !1230
  %265 = icmp eq i32 %264, -1, !dbg !1232
  br i1 %265, label %273, label %266, !dbg !1233

; <label>:266:                                    ; preds = %263
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !816, metadata !746), !dbg !874
  %267 = call i32 @setuid(i32 %264) #10, !dbg !1234
  %268 = icmp eq i32 %267, 0, !dbg !1234
  br i1 %268, label %273, label %269, !dbg !1236

; <label>:269:                                    ; preds = %266
  %270 = tail call i32* @__errno_location() #1, !dbg !1237
  %271 = load i32, i32* %270, align 4, !dbg !1237, !tbaa !875
  %272 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !1238
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %271, i8* %272) #10, !dbg !1239
  unreachable, !dbg !1237

; <label>:273:                                    ; preds = %266, %263
  %274 = load i8*, i8** %152, align 8, !dbg !1241, !tbaa !754
  %275 = call i32 @execvp(i8* %274, i8** %152) #10, !dbg !1242
  %276 = tail call i32* @__errno_location() #1, !dbg !1243
  %277 = load i32, i32* %276, align 4, !dbg !1243, !tbaa !875
  %278 = icmp eq i32 %277, 2, !dbg !1244
  %279 = select i1 %278, i32 127, i32 126, !dbg !1243
  call void @llvm.dbg.value(metadata i32 %279, i64 0, metadata !866, metadata !746), !dbg !1245
  %280 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !1246
  %281 = load i8*, i8** %152, align 8, !dbg !1247, !tbaa !754
  %282 = call i8* @quote(i8* %281) #10, !dbg !1248
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %277, i8* %280, i8* %282) #10, !dbg !1249
  br label %283

; <label>:283:                                    ; preds = %211, %273
  %284 = phi i8* [ %249, %273 ], [ %202, %211 ]
  %285 = phi i32 [ %279, %273 ], [ 125, %211 ]
  call void @llvm.lifetime.end(i64 8, i8* %284) #10, !dbg !1251
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #10, !dbg !1251
  call void @llvm.lifetime.end(i64 8, i8* nonnull %10) #10, !dbg !1251
  call void @llvm.lifetime.end(i64 4, i8* nonnull %9) #10, !dbg !1251
  call void @llvm.lifetime.end(i64 4, i8* nonnull %8) #10, !dbg !1251
  ret i32 %285, !dbg !1252
}

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
declare i8* @canonicalize_file_name(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_additional_groups(i8*, i32** nocapture, i64* nocapture, i1 zeroext) unnamed_addr #6 !dbg !1253 {
  %5 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1257, metadata !746), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32** %1, i64 0, metadata !1258, metadata !746), !dbg !1273
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !1259, metadata !746), !dbg !1274
  tail call void @llvm.dbg.value(metadata i1 %3, i64 0, metadata !1260, metadata !1275), !dbg !1276
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1261, metadata !746), !dbg !1277
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1262, metadata !746), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1263, metadata !746), !dbg !1279
  %6 = tail call noalias i8* @xstrdup(i8* %0) #10, !dbg !1280
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1264, metadata !746), !dbg !1281
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1266, metadata !746), !dbg !1282
  %7 = call i8* @strtok(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !1283
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1266, metadata !746), !dbg !1282
  call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1265, metadata !746), !dbg !1285
  call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !1261, metadata !746), !dbg !1277
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1263, metadata !746), !dbg !1279
  %8 = icmp eq i8* %7, null, !dbg !1286
  br i1 %8, label %94, label %9, !dbg !1286

; <label>:9:                                      ; preds = %4
  %10 = bitcast i64* %5 to i8*
  br label %11, !dbg !1286

; <label>:11:                                     ; preds = %9, %84
  %12 = phi i8* [ %7, %9 ], [ %90, %84 ]
  %13 = phi i32 [ 0, %9 ], [ %89, %84 ]
  %14 = phi i32* [ null, %9 ], [ %88, %84 ]
  %15 = phi i8* [ null, %9 ], [ %87, %84 ]
  %16 = phi i64 [ 0, %9 ], [ %86, %84 ]
  %17 = phi i64 [ 0, %9 ], [ %85, %84 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %10) #10, !dbg !1288
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !1271, metadata !988), !dbg !1289
  %18 = call i32 @xstrtoul(i8* nonnull %12, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !1290
  %19 = icmp eq i32 %18, 0, !dbg !1292
  %20 = load i64, i64* %5, align 8, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1271, metadata !746), !dbg !1289
  %21 = icmp ult i64 %20, 4294967296, !dbg !1295
  %22 = and i1 %19, %21, !dbg !1296
  br i1 %22, label %23, label %44, !dbg !1296

; <label>:23:                                     ; preds = %11
  %24 = tail call i16** @__ctype_b_loc() #1, !dbg !1297
  %25 = load i16*, i16** %24, align 8, !tbaa !754
  br label %26, !dbg !1285

; <label>:26:                                     ; preds = %26, %23
  %27 = phi i8* [ %34, %26 ], [ %12, %23 ]
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1265, metadata !746), !dbg !1285
  %28 = load i8, i8* %27, align 1, !dbg !1297, !tbaa !914
  %29 = zext i8 %28 to i64, !dbg !1297
  %30 = getelementptr inbounds i16, i16* %25, i64 %29, !dbg !1297
  %31 = load i16, i16* %30, align 2, !dbg !1297, !tbaa !1300
  %32 = and i16 %31, 8192, !dbg !1297
  %33 = icmp eq i16 %32, 0, !dbg !1302
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1265, metadata !746), !dbg !1285
  br i1 %33, label %35, label %26, !dbg !1302, !llvm.loop !1304

; <label>:35:                                     ; preds = %26
  %36 = icmp eq i8 %28, 43, !dbg !1306
  br i1 %36, label %57, label %37, !dbg !1308

; <label>:37:                                     ; preds = %35
  %38 = call %struct.group* @getgrnam(i8* %27) #10, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.group* %38, i64 0, metadata !1267, metadata !746), !dbg !1311
  %39 = icmp eq %struct.group* %38, null, !dbg !1312
  br i1 %39, label %57, label %40, !dbg !1314

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %struct.group, %struct.group* %38, i64 0, i32 2, !dbg !1315
  %42 = load i32, i32* %41, align 8, !dbg !1315, !tbaa !1316
  %43 = zext i32 %42 to i64, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1271, metadata !746), !dbg !1289
  store i64 %43, i64* %5, align 8, !dbg !1319, !tbaa !883
  br label %57, !dbg !1320

; <label>:44:                                     ; preds = %11
  %45 = call %struct.group* @getgrnam(i8* nonnull %12) #10, !dbg !1321
  call void @llvm.dbg.value(metadata %struct.group* %45, i64 0, metadata !1267, metadata !746), !dbg !1311
  %46 = icmp eq %struct.group* %45, null, !dbg !1323
  br i1 %46, label %51, label %47, !dbg !1325

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.group, %struct.group* %45, i64 0, i32 2, !dbg !1326
  %49 = load i32, i32* %48, align 8, !dbg !1326, !tbaa !1316
  %50 = zext i32 %49 to i64, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1271, metadata !746), !dbg !1289
  store i64 %50, i64* %5, align 8, !dbg !1328, !tbaa !883
  br label %57, !dbg !1329

; <label>:51:                                     ; preds = %44
  call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1267, metadata !746), !dbg !1311
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1265, metadata !746), !dbg !1285
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1266, metadata !746), !dbg !1282
  br i1 %3, label %52, label %92, !dbg !1330

; <label>:52:                                     ; preds = %51
  %53 = tail call i32* @__errno_location() #1, !dbg !1333
  %54 = load i32, i32* %53, align 4, !dbg !1333, !tbaa !875
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1336
  %56 = call i8* @quote(i8* nonnull %12) #10, !dbg !1338
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %54, i8* %55, i8* %56) #10, !dbg !1340
  br label %84, !dbg !1342

; <label>:57:                                     ; preds = %47, %37, %35, %40
  call void @llvm.dbg.value(metadata %struct.group* null, i64 0, metadata !1267, metadata !746), !dbg !1311
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1265, metadata !746), !dbg !1285
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1262, metadata !746), !dbg !1278
  %58 = icmp eq i64 %16, %17, !dbg !1343
  br i1 %58, label %59, label %76, !dbg !1345

; <label>:59:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !60, metadata !746) #10, !dbg !1346
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !62, metadata !746) #10, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !63, metadata !746) #10, !dbg !1349
  %60 = icmp eq i8* %15, null, !dbg !1350
  br i1 %60, label %61, label %64, !dbg !1352

; <label>:61:                                     ; preds = %59
  %62 = icmp eq i64 %16, 0, !dbg !1353
  call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !63, metadata !746) #10, !dbg !1349
  call void @llvm.dbg.value(metadata i64 32, i64 0, metadata !63, metadata !746) #10, !dbg !1349
  %63 = select i1 %62, i64 32, i64 %16, !dbg !1356
  br label %71, !dbg !1356

; <label>:64:                                     ; preds = %59
  %65 = icmp ult i64 %16, 1537228672809129301, !dbg !1357
  br i1 %65, label %67, label %66, !dbg !1360

; <label>:66:                                     ; preds = %64
  call void @xalloc_die() #14, !dbg !1361
  unreachable, !dbg !1361

; <label>:67:                                     ; preds = %64
  %68 = lshr i64 %16, 1, !dbg !1362
  %69 = add i64 %16, 1, !dbg !1363
  %70 = add i64 %69, %68, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !63, metadata !746) #10, !dbg !1349
  br label %71

; <label>:71:                                     ; preds = %61, %67
  %72 = phi i64 [ %70, %67 ], [ %63, %61 ]
  call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !63, metadata !746) #10, !dbg !1349
  %73 = shl i64 %72, 2, !dbg !1365
  %74 = call i8* @xrealloc(i8* %15, i64 %73) #10, !dbg !1366
  %75 = bitcast i8* %74 to i32*, !dbg !1367
  call void @llvm.dbg.value(metadata i32* %75, i64 0, metadata !1261, metadata !746), !dbg !1277
  br label %76, !dbg !1368

; <label>:76:                                     ; preds = %71, %57
  %77 = phi i64 [ %72, %71 ], [ %17, %57 ]
  %78 = phi i8* [ %74, %71 ], [ %15, %57 ]
  %79 = phi i32* [ %75, %71 ], [ %14, %57 ]
  call void @llvm.dbg.value(metadata i32* %79, i64 0, metadata !1261, metadata !746), !dbg !1277
  %80 = load i64, i64* %5, align 8, !dbg !1369, !tbaa !883
  call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !1271, metadata !746), !dbg !1289
  %81 = trunc i64 %80 to i32, !dbg !1369
  %82 = add i64 %16, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !1263, metadata !746), !dbg !1279
  %83 = getelementptr inbounds i32, i32* %79, i64 %16, !dbg !1371
  store i32 %81, i32* %83, align 4, !dbg !1372, !tbaa !875
  br label %84, !dbg !1373

; <label>:84:                                     ; preds = %52, %76
  %85 = phi i64 [ %77, %76 ], [ %17, %52 ]
  %86 = phi i64 [ %82, %76 ], [ %16, %52 ]
  %87 = phi i8* [ %78, %76 ], [ %15, %52 ]
  %88 = phi i32* [ %79, %76 ], [ %14, %52 ]
  %89 = phi i32 [ %13, %76 ], [ -1, %52 ]
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1266, metadata !746), !dbg !1282
  call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1261, metadata !746), !dbg !1277
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1263, metadata !746), !dbg !1279
  call void @llvm.lifetime.end(i64 8, i8* nonnull %10) #10, !dbg !1373
  %90 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !1283
  call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !1266, metadata !746), !dbg !1282
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1265, metadata !746), !dbg !1285
  call void @llvm.dbg.value(metadata i32* %88, i64 0, metadata !1261, metadata !746), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !1263, metadata !746), !dbg !1279
  %91 = icmp eq i8* %90, null, !dbg !1286
  br i1 %91, label %93, label %11, !dbg !1286

; <label>:92:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1266, metadata !746), !dbg !1282
  call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1261, metadata !746), !dbg !1277
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1263, metadata !746), !dbg !1279
  call void @llvm.lifetime.end(i64 8, i8* nonnull %10) #10, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !1266, metadata !746), !dbg !1282
  call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1261, metadata !746), !dbg !1277
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1263, metadata !746), !dbg !1279
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !1266, metadata !746), !dbg !1282
  store i32* %14, i32** %1, align 8, !dbg !1374, !tbaa !754
  br label %110, !dbg !1375

; <label>:93:                                     ; preds = %84
  br label %94, !dbg !1282

; <label>:94:                                     ; preds = %93, %4
  %95 = phi i64 [ 0, %4 ], [ %86, %93 ]
  %96 = phi i32* [ null, %4 ], [ %88, %93 ]
  %97 = phi i32 [ 0, %4 ], [ %89, %93 ]
  call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !1266, metadata !746), !dbg !1282
  call void @llvm.dbg.value(metadata i32* undef, i64 0, metadata !1261, metadata !746), !dbg !1277
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1263, metadata !746), !dbg !1279
  %98 = icmp ne i32 %97, 0, !dbg !1376
  %99 = icmp ne i64 %95, 0, !dbg !1376
  %100 = or i1 %99, %98, !dbg !1376
  %101 = xor i1 %3, true, !dbg !1376
  %102 = or i1 %100, %101, !dbg !1376
  %103 = select i1 %100, i32 %97, i32 -1, !dbg !1376
  br i1 %102, label %107, label %104, !dbg !1376

; <label>:104:                                    ; preds = %94
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1378
  %106 = call i8* @quote(i8* %0) #10, !dbg !1381
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %105, i8* %106) #10, !dbg !1383
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !1266, metadata !746), !dbg !1282
  store i32* %96, i32** %1, align 8, !dbg !1374, !tbaa !754
  br label %110, !dbg !1375

; <label>:107:                                    ; preds = %94
  call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !1266, metadata !746), !dbg !1282
  store i32* %96, i32** %1, align 8, !dbg !1374, !tbaa !754
  %108 = icmp eq i32 %103, 0, !dbg !1385
  br i1 %108, label %109, label %110, !dbg !1375

; <label>:109:                                    ; preds = %107
  store i64 %95, i64* %2, align 8, !dbg !1387, !tbaa !883
  br label %110, !dbg !1388

; <label>:110:                                    ; preds = %92, %104, %109, %107
  %111 = phi i32 [ -1, %104 ], [ 0, %109 ], [ %103, %107 ], [ -1, %92 ]
  call void @free(i8* %6) #10, !dbg !1389
  ret i32 %111, !dbg !1390
}

; Function Attrs: nounwind
declare i32 @chroot(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setgroups(i64, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setgid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setuid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

declare %struct.group* @getgrnam(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1391 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1393, metadata !746), !dbg !1394
  store i8* %0, i8** @file_name, align 8, !dbg !1395, !tbaa !754
  ret void, !dbg !1396
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1397 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1401, metadata !1275), !dbg !1402
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1403, !tbaa !1404
  ret void, !dbg !1406
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1407 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1414, !tbaa !754
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1415
  %3 = icmp eq i32 %2, 0, !dbg !1416
  br i1 %3, label %21, label %4, !dbg !1417

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1418, !tbaa !1404, !range !1420
  %6 = icmp eq i8 %5, 0, !dbg !1418
  %7 = tail call i32* @__errno_location() #1, !dbg !1421
  br i1 %6, label %11, label %8, !dbg !1423

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1424, !tbaa !875
  %10 = icmp eq i32 %9, 32, !dbg !1426
  br i1 %10, label %21, label %11, !dbg !1427

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1429
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1411, metadata !746), !dbg !1430
  %13 = load i8*, i8** @file_name, align 8, !dbg !1431, !tbaa !754
  %14 = icmp eq i8* %13, null, !dbg !1431
  %15 = load i32, i32* %7, align 4, !tbaa !875
  br i1 %14, label %18, label %16, !dbg !1432

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1433
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1435
  br label %19, !dbg !1437

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #10, !dbg !1438
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1439, !tbaa !875
  tail call void @_exit(i32 %20) #14, !dbg !1440
  unreachable, !dbg !1440

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1441, !tbaa !754
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1443
  %24 = icmp eq i32 %23, 0, !dbg !1444
  br i1 %24, label %27, label %25, !dbg !1445

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1446, !tbaa !875
  tail call void @_exit(i32 %26) #14, !dbg !1447
  unreachable, !dbg !1447

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1448
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1449 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1451, metadata !746), !dbg !1454
  %2 = icmp eq i8* %0, null, !dbg !1455
  br i1 %2, label %3, label %6, !dbg !1457

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1458, !tbaa !754
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1460
  tail call void @abort() #14, !dbg !1461
  unreachable, !dbg !1461

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1462
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1452, metadata !746), !dbg !1463
  %8 = icmp ne i8* %7, null, !dbg !1464
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1465
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1467
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1453, metadata !746), !dbg !1468
  %11 = ptrtoint i8* %10 to i64, !dbg !1469
  %12 = ptrtoint i8* %0 to i64, !dbg !1469
  %13 = sub i64 %11, %12, !dbg !1469
  %14 = icmp sgt i64 %13, 6, !dbg !1471
  br i1 %14, label %15, label %24, !dbg !1472

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1473
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.55, i64 0, i64 0), i64 7) #13, !dbg !1473
  %18 = icmp eq i32 %17, 0, !dbg !1475
  br i1 %18, label %19, label %24, !dbg !1476

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1451, metadata !746), !dbg !1454
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.56, i64 0, i64 0), i64 3) #13, !dbg !1477
  %21 = icmp eq i32 %20, 0, !dbg !1480
  br i1 %21, label %22, label %24, !dbg !1481

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1482
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1451, metadata !746), !dbg !1454
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1484, !tbaa !754
  br label %24, !dbg !1485

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1451, metadata !746), !dbg !1454
  store i8* %25, i8** @program_name, align 8, !dbg !1486, !tbaa !754
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1487, !tbaa !754
  ret void, !dbg !1488
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1489 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1494, metadata !746), !dbg !1497
  %2 = tail call i32* @__errno_location() #1, !dbg !1498
  %3 = load i32, i32* %2, align 4, !dbg !1498, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1495, metadata !746), !dbg !1499
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1500
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1501
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1501
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1503
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1503
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1496, metadata !746), !dbg !1504
  store i32 %3, i32* %2, align 4, !dbg !1505, !tbaa !875
  ret %struct.quoting_options* %8, !dbg !1506
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1507 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1513, metadata !746), !dbg !1514
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1515
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1515
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1516
  %5 = load i32, i32* %4, align 8, !dbg !1516, !tbaa !1518
  ret i32 %5, !dbg !1520
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1521 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1525, metadata !746), !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1526, metadata !746), !dbg !1528
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1529
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1529
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1530
  store i32 %1, i32* %5, align 8, !dbg !1532, !tbaa !1518
  ret void, !dbg !1533
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1534 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1538, metadata !746), !dbg !1546
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1539, metadata !746), !dbg !1547
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1540, metadata !746), !dbg !1548
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1541, metadata !746), !dbg !1549
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1550
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1550
  %6 = lshr i8 %1, 5, !dbg !1551
  %7 = zext i8 %6 to i64, !dbg !1551
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1553
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1542, metadata !746), !dbg !1554
  %9 = and i8 %1, 31, !dbg !1555
  %10 = zext i8 %9 to i32, !dbg !1556
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1544, metadata !746), !dbg !1557
  %11 = load i32, i32* %8, align 4, !dbg !1558, !tbaa !875
  %12 = lshr i32 %11, %10, !dbg !1559
  %13 = and i32 %12, 1, !dbg !1560
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1545, metadata !746), !dbg !1561
  %14 = and i32 %2, 1, !dbg !1562
  %15 = xor i32 %13, %14, !dbg !1563
  %16 = shl i32 %15, %10, !dbg !1564
  %17 = xor i32 %16, %11, !dbg !1565
  store i32 %17, i32* %8, align 4, !dbg !1565, !tbaa !875
  ret i32 %13, !dbg !1566
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1567 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1571, metadata !746), !dbg !1574
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1572, metadata !746), !dbg !1575
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1576
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1571, metadata !746), !dbg !1574
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1578
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1571, metadata !746), !dbg !1574
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1579
  %6 = load i32, i32* %5, align 4, !dbg !1579, !tbaa !1580
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1573, metadata !746), !dbg !1581
  store i32 %1, i32* %5, align 4, !dbg !1582, !tbaa !1580
  ret i32 %6, !dbg !1583
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1584 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1588, metadata !746), !dbg !1591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1589, metadata !746), !dbg !1592
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1590, metadata !746), !dbg !1593
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1594
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1588, metadata !746), !dbg !1591
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1596
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1588, metadata !746), !dbg !1591
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1597
  store i32 10, i32* %6, align 8, !dbg !1598, !tbaa !1518
  %7 = icmp ne i8* %1, null, !dbg !1599
  %8 = icmp ne i8* %2, null, !dbg !1601
  %9 = and i1 %7, %8, !dbg !1603
  br i1 %9, label %11, label %10, !dbg !1603

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1604
  unreachable, !dbg !1604

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1605
  store i8* %1, i8** %12, align 8, !dbg !1606, !tbaa !1607
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1608
  store i8* %2, i8** %13, align 8, !dbg !1609, !tbaa !1610
  ret void, !dbg !1611
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1612 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1616, metadata !746), !dbg !1624
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1617, metadata !746), !dbg !1625
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1618, metadata !746), !dbg !1626
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1619, metadata !746), !dbg !1627
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1620, metadata !746), !dbg !1628
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1629
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1629
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1621, metadata !746), !dbg !1630
  %8 = tail call i32* @__errno_location() #1, !dbg !1631
  %9 = load i32, i32* %8, align 4, !dbg !1631, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1622, metadata !746), !dbg !1632
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1633
  %11 = load i32, i32* %10, align 8, !dbg !1633, !tbaa !1518
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1634
  %13 = load i32, i32* %12, align 4, !dbg !1634, !tbaa !1580
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1635
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1636
  %16 = load i8*, i8** %15, align 8, !dbg !1636, !tbaa !1607
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1637
  %18 = load i8*, i8** %17, align 8, !dbg !1637, !tbaa !1610
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1638
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1623, metadata !746), !dbg !1639
  store i32 %9, i32* %8, align 4, !dbg !1640, !tbaa !875
  ret i64 %19, !dbg !1641
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1642 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1648, metadata !746), !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1649, metadata !746), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1650, metadata !746), !dbg !1713
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1651, metadata !746), !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1652, metadata !746), !dbg !1715
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1653, metadata !746), !dbg !1716
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1654, metadata !746), !dbg !1717
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1655, metadata !746), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1656, metadata !746), !dbg !1719
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1658, metadata !746), !dbg !1720
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1659, metadata !746), !dbg !1721
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1660, metadata !746), !dbg !1722
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1661, metadata !746), !dbg !1723
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1662, metadata !746), !dbg !1724
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1725
  %14 = icmp eq i64 %13, 1, !dbg !1726
  %15 = lshr i32 %5, 1, !dbg !1727
  %16 = trunc i32 %15 to i8, !dbg !1727
  %17 = and i8 %16, 1, !dbg !1727
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1664, metadata !746), !dbg !1727
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1665, metadata !746), !dbg !1728
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1666, metadata !746), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1667, metadata !746), !dbg !1730
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1731

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1649, metadata !746), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1667, metadata !746), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1666, metadata !746), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1664, metadata !746), !dbg !1727
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1651, metadata !746), !dbg !1714
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1662, metadata !746), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1661, metadata !746), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1660, metadata !746), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1659, metadata !746), !dbg !1721
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1656, metadata !746), !dbg !1719
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1655, metadata !746), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1652, metadata !746), !dbg !1715
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
  ], !dbg !1732

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1652, metadata !746), !dbg !1715
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1664, metadata !746), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1664, metadata !746), !dbg !1727
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1652, metadata !746), !dbg !1715
  br label %95, !dbg !1733

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1664, metadata !746), !dbg !1727
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1652, metadata !746), !dbg !1715
  %43 = and i8 %36, 1, !dbg !1735
  %44 = icmp eq i8 %43, 0, !dbg !1735
  br i1 %44, label %45, label %95, !dbg !1733

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1737
  br i1 %46, label %95, label %47, !dbg !1741

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1743, !tbaa !914
  br label %95, !dbg !1743

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.67, i64 0, i64 0), i32 %28), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1655, metadata !746), !dbg !1718
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), i32 %28), !dbg !1749
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1656, metadata !746), !dbg !1719
  br label %51, !dbg !1750

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1656, metadata !746), !dbg !1719
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1655, metadata !746), !dbg !1718
  %54 = and i8 %36, 1, !dbg !1751
  %55 = icmp eq i8 %54, 0, !dbg !1751
  br i1 %55, label %56, label %73, !dbg !1753

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1660, metadata !746), !dbg !1722
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1658, metadata !746), !dbg !1720
  %57 = load i8, i8* %52, align 1, !dbg !1754, !tbaa !914
  %58 = icmp eq i8 %57, 0, !dbg !1758
  br i1 %58, label %73, label %59, !dbg !1758

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1760

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1760
  br i1 %64, label %65, label %67, !dbg !1764

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1766
  store i8 %61, i8* %66, align 1, !dbg !1766, !tbaa !914
  br label %67, !dbg !1766

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1658, metadata !746), !dbg !1720
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1770
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1660, metadata !746), !dbg !1722
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1660, metadata !746), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1658, metadata !746), !dbg !1720
  %70 = load i8, i8* %69, align 1, !dbg !1754, !tbaa !914
  %71 = icmp eq i8 %70, 0, !dbg !1758
  br i1 %71, label %72, label %60, !dbg !1758, !llvm.loop !1772

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1720

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1662, metadata !746), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1660, metadata !746), !dbg !1722
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1661, metadata !746), !dbg !1723
  br label %95, !dbg !1776

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1662, metadata !746), !dbg !1724
  br label %77, !dbg !1777

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1662, metadata !746), !dbg !1724
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1664, metadata !746), !dbg !1727
  br label %79, !dbg !1778

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1664, metadata !746), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1662, metadata !746), !dbg !1724
  %82 = and i8 %81, 1, !dbg !1779
  %83 = icmp eq i8 %82, 0, !dbg !1779
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1662, metadata !746), !dbg !1724
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1781
  br label %85, !dbg !1781

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1664, metadata !746), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1662, metadata !746), !dbg !1724
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1652, metadata !746), !dbg !1715
  %88 = and i8 %87, 1, !dbg !1782
  %89 = icmp eq i8 %88, 0, !dbg !1782
  br i1 %89, label %90, label %95, !dbg !1784

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1785
  br i1 %91, label %95, label %92, !dbg !1789

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1791, !tbaa !914
  br label %95, !dbg !1791

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1664, metadata !746), !dbg !1727
  br label %95, !dbg !1793

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1794
  unreachable, !dbg !1794

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1664, metadata !746), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1662, metadata !746), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1661, metadata !746), !dbg !1723
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1660, metadata !746), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1656, metadata !746), !dbg !1719
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1655, metadata !746), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1652, metadata !746), !dbg !1715
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1657, metadata !746), !dbg !1795
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
  br label %123, !dbg !1796

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1649, metadata !746), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1667, metadata !746), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1666, metadata !746), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1651, metadata !746), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1659, metadata !746), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1657, metadata !746), !dbg !1795
  %132 = icmp eq i64 %127, -1, !dbg !1797
  br i1 %132, label %135, label %133, !dbg !1799

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1800
  br i1 %134, label %597, label %139, !dbg !1802

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1804
  %137 = load i8, i8* %136, align 1, !dbg !1804, !tbaa !914
  %138 = icmp eq i8 %137, 0, !dbg !1806
  br i1 %138, label %597, label %139, !dbg !1802

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1673, metadata !746), !dbg !1807
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1674, metadata !746), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1675, metadata !746), !dbg !1809
  br i1 %109, label %140, label %155, !dbg !1810

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1812
  %142 = and i1 %110, %132, !dbg !1814
  br i1 %142, label %143, label %145, !dbg !1814

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1651, metadata !746), !dbg !1714
  br label %145, !dbg !1816

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1651, metadata !746), !dbg !1714
  %147 = icmp ugt i64 %141, %146, !dbg !1818
  br i1 %147, label %155, label %148, !dbg !1820

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1821
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1822
  %151 = icmp ne i32 %150, 0, !dbg !1823
  %152 = or i1 %151, %112, !dbg !1823
  %153 = xor i1 %151, true, !dbg !1823
  %154 = zext i1 %153 to i8, !dbg !1823
  br i1 %152, label %155, label %644, !dbg !1823

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1673, metadata !746), !dbg !1807
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1651, metadata !746), !dbg !1714
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1825
  %159 = load i8, i8* %158, align 1, !dbg !1825, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1668, metadata !746), !dbg !1826
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
  ], !dbg !1827

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1828

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1829

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1674, metadata !746), !dbg !1808
  %163 = and i8 %128, 1, !dbg !1834
  %164 = icmp eq i8 %163, 0, !dbg !1834
  %165 = and i1 %114, %164, !dbg !1837
  br i1 %165, label %166, label %182, !dbg !1837

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1839
  br i1 %167, label %168, label %170, !dbg !1844

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1846
  store i8 39, i8* %169, align 1, !dbg !1846, !tbaa !914
  br label %170, !dbg !1846

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1658, metadata !746), !dbg !1720
  %172 = icmp ult i64 %171, %131, !dbg !1850
  br i1 %172, label %173, label %175, !dbg !1854

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1856
  store i8 36, i8* %174, align 1, !dbg !1856, !tbaa !914
  br label %175, !dbg !1856

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1658, metadata !746), !dbg !1720
  %177 = icmp ult i64 %176, %131, !dbg !1860
  br i1 %177, label %178, label %180, !dbg !1864

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1866
  store i8 39, i8* %179, align 1, !dbg !1866, !tbaa !914
  br label %180, !dbg !1866

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1665, metadata !746), !dbg !1728
  br label %182, !dbg !1870

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1658, metadata !746), !dbg !1720
  %185 = icmp ult i64 %183, %131, !dbg !1872
  br i1 %185, label %186, label %188, !dbg !1876

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1878
  store i8 92, i8* %187, align 1, !dbg !1878, !tbaa !914
  br label %188, !dbg !1878

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1658, metadata !746), !dbg !1720
  br i1 %106, label %190, label %476, !dbg !1882

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1884
  %192 = icmp ult i64 %191, %156, !dbg !1886
  br i1 %192, label %193, label %476, !dbg !1887

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1888
  %195 = load i8, i8* %194, align 1, !dbg !1888, !tbaa !914
  %196 = add i8 %195, -48, !dbg !1890
  %197 = icmp ult i8 %196, 10, !dbg !1890
  br i1 %197, label %198, label %476, !dbg !1890

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1891
  br i1 %199, label %200, label %202, !dbg !1896

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1898
  store i8 48, i8* %201, align 1, !dbg !1898, !tbaa !914
  br label %202, !dbg !1898

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1658, metadata !746), !dbg !1720
  %204 = icmp ult i64 %203, %131, !dbg !1902
  br i1 %204, label %205, label %207, !dbg !1906

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1908
  store i8 48, i8* %206, align 1, !dbg !1908, !tbaa !914
  br label %207, !dbg !1908

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1658, metadata !746), !dbg !1720
  br label %476, !dbg !1912

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1913

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1914

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1915

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1917

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1919
  %215 = icmp ult i64 %214, %156, !dbg !1921
  br i1 %215, label %216, label %476, !dbg !1922

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1923
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1925
  %219 = load i8, i8* %218, align 1, !dbg !1925, !tbaa !914
  %220 = icmp eq i8 %219, 63, !dbg !1926
  br i1 %220, label %221, label %476, !dbg !1927

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1929
  %223 = load i8, i8* %222, align 1, !dbg !1929, !tbaa !914
  %224 = sext i8 %223 to i32, !dbg !1929
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
  ], !dbg !1930

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1931

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1668, metadata !746), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1657, metadata !746), !dbg !1795
  %227 = icmp ult i64 %125, %131, !dbg !1933
  br i1 %227, label %228, label %230, !dbg !1937

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1939
  store i8 63, i8* %229, align 1, !dbg !1939, !tbaa !914
  br label %230, !dbg !1939

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1658, metadata !746), !dbg !1720
  %232 = icmp ult i64 %231, %131, !dbg !1943
  br i1 %232, label %233, label %235, !dbg !1947

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1949
  store i8 34, i8* %234, align 1, !dbg !1949, !tbaa !914
  br label %235, !dbg !1949

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1658, metadata !746), !dbg !1720
  %237 = icmp ult i64 %236, %131, !dbg !1953
  br i1 %237, label %238, label %240, !dbg !1957

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1959
  store i8 34, i8* %239, align 1, !dbg !1959, !tbaa !914
  br label %240, !dbg !1959

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1658, metadata !746), !dbg !1720
  %242 = icmp ult i64 %241, %131, !dbg !1963
  br i1 %242, label %243, label %245, !dbg !1967

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1969
  store i8 63, i8* %244, align 1, !dbg !1969, !tbaa !914
  br label %245, !dbg !1969

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1658, metadata !746), !dbg !1720
  br label %476, !dbg !1973

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1672, metadata !746), !dbg !1974
  br label %257, !dbg !1975

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1672, metadata !746), !dbg !1974
  br label %257, !dbg !1976

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1672, metadata !746), !dbg !1974
  br label %255, !dbg !1977

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1672, metadata !746), !dbg !1974
  br label %255, !dbg !1978

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1672, metadata !746), !dbg !1974
  br label %257, !dbg !1979

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1672, metadata !746), !dbg !1974
  br i1 %114, label %253, label %254, !dbg !1980

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1981

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1984

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1672, metadata !746), !dbg !1974
  br i1 %118, label %257, label %644, !dbg !1986

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1672, metadata !746), !dbg !1974
  br i1 %105, label %503, label %476, !dbg !1988

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1989
  br i1 %260, label %261, label %266, !dbg !1991

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1992, !tbaa !914
  %263 = icmp ne i8 %262, 0, !dbg !1994
  %264 = icmp ne i64 %124, 0, !dbg !1995
  %265 = or i1 %264, %263, !dbg !1997
  br i1 %265, label %476, label %272, !dbg !1997

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1998
  %268 = icmp ne i64 %124, 0, !dbg !1995
  %269 = or i1 %268, %267, !dbg !2000
  br i1 %269, label %476, label %272, !dbg !2000

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1995
  br i1 %271, label %272, label %476, !dbg !2002

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1675, metadata !746), !dbg !1809
  br label %273, !dbg !2003

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1675, metadata !746), !dbg !1809
  br i1 %118, label %476, label %644, !dbg !2004

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1666, metadata !746), !dbg !1729
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1675, metadata !746), !dbg !1809
  br i1 %114, label %276, label %476, !dbg !2006

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2007

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2010
  %279 = icmp ne i64 %126, 0, !dbg !2012
  %280 = or i1 %279, %278, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1659, metadata !746), !dbg !1721
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1649, metadata !746), !dbg !1712
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2014
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1649, metadata !746), !dbg !1712
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1659, metadata !746), !dbg !1721
  %283 = icmp ult i64 %125, %282, !dbg !2015
  br i1 %283, label %284, label %286, !dbg !2019

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2021
  store i8 39, i8* %285, align 1, !dbg !2021, !tbaa !914
  br label %286, !dbg !2021

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1658, metadata !746), !dbg !1720
  %288 = icmp ult i64 %287, %282, !dbg !2025
  br i1 %288, label %289, label %291, !dbg !2029

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2031
  store i8 92, i8* %290, align 1, !dbg !2031, !tbaa !914
  br label %291, !dbg !2031

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1658, metadata !746), !dbg !1720
  %293 = icmp ult i64 %292, %282, !dbg !2035
  br i1 %293, label %294, label %296, !dbg !2039

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2041
  store i8 39, i8* %295, align 1, !dbg !2041, !tbaa !914
  br label %296, !dbg !2041

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1665, metadata !746), !dbg !1728
  br label %476, !dbg !2045

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2046

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1676, metadata !746), !dbg !2047
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2048
  %301 = load i16*, i16** %300, align 8, !dbg !2048, !tbaa !754
  %302 = zext i8 %159 to i64, !dbg !2048
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2048
  %304 = load i16, i16* %303, align 2, !dbg !2048, !tbaa !1300
  %305 = lshr i16 %304, 14, !dbg !2050
  %306 = trunc i16 %305 to i8, !dbg !2050
  %307 = and i8 %306, 1, !dbg !2050
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1679, metadata !746), !dbg !2051
  br label %368, !dbg !2052

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2053
  store i64 0, i64* %10, align 8, !dbg !2054
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1676, metadata !746), !dbg !2047
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1679, metadata !746), !dbg !2051
  %309 = icmp eq i64 %156, -1, !dbg !2055
  br i1 %309, label %310, label %312, !dbg !2057, !llvm.loop !2058

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1651, metadata !746), !dbg !1714
  br label %312, !dbg !2062, !llvm.loop !2058

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2051

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1679, metadata !746), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1676, metadata !746), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1651, metadata !746), !dbg !1714
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2063
  %317 = add i64 %315, %124, !dbg !2064
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2065
  %319 = sub i64 %313, %317, !dbg !2066
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1680, metadata !988), !dbg !2067
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1697, metadata !988), !dbg !2068
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1700, metadata !746), !dbg !2070
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2071

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1676, metadata !746), !dbg !2047
  %322 = icmp ugt i64 %313, %317, !dbg !2072
  br i1 %322, label %323, label %351, !dbg !2075

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2076

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2076
  %328 = load i8, i8* %327, align 1, !dbg !2076, !tbaa !914
  %329 = icmp eq i8 %328, 0, !dbg !2078
  br i1 %329, label %348, label %330, !dbg !2079

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1676, metadata !746), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1676, metadata !746), !dbg !2047
  %332 = add i64 %331, %124, !dbg !2082
  %333 = icmp ult i64 %332, %313, !dbg !2072
  br i1 %333, label %324, label %348, !dbg !2075, !llvm.loop !2083

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2085
  %336 = and i1 %116, %335, !dbg !2089
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1701, metadata !746), !dbg !2090
  br i1 %336, label %337, label %355, !dbg !2089

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2091

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2091
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2092
  %342 = load i8, i8* %341, align 1, !dbg !2092, !tbaa !914
  %343 = sext i8 %342 to i32, !dbg !2092
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2093

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1701, metadata !746), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1701, metadata !746), !dbg !2090
  %346 = icmp ult i64 %345, %320, !dbg !2085
  br i1 %346, label %338, label %354, !dbg !2096, !llvm.loop !2098

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2051

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2051

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2051

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1679, metadata !746), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1676, metadata !746), !dbg !2047
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2101
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2102

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2102, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1697, metadata !746), !dbg !2068
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2104
  %358 = icmp eq i32 %357, 0, !dbg !2104
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1679, metadata !746), !dbg !2051
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2105
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1679, metadata !746), !dbg !2051
  %360 = add i64 %320, %315, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1676, metadata !746), !dbg !2047
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1679, metadata !746), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1676, metadata !746), !dbg !2047
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2101
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1680, metadata !988), !dbg !2067
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2107
  %362 = icmp eq i32 %361, 0, !dbg !2108
  br i1 %362, label %314, label %363, !dbg !2109, !llvm.loop !2058

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2111

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2111
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1679, metadata !746), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1676, metadata !746), !dbg !2047
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2101
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2111
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1679, metadata !746), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1676, metadata !746), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1651, metadata !746), !dbg !1714
  %372 = and i8 %371, 1, !dbg !2112
  %373 = icmp ne i8 %372, 0, !dbg !2112
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1675, metadata !746), !dbg !1809
  %374 = icmp ult i64 %370, 2, !dbg !2113
  %375 = or i1 %373, %113, !dbg !2114
  %376 = and i1 %374, %375, !dbg !2116
  br i1 %376, label %476, label %377, !dbg !2116

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1708, metadata !746), !dbg !2118
  br label %379, !dbg !2119

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1674, metadata !746), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1673, metadata !746), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1668, metadata !746), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1657, metadata !746), !dbg !1795
  br i1 %375, label %432, label %386, !dbg !2120

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2125

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1674, metadata !746), !dbg !1808
  %388 = and i8 %382, 1, !dbg !2129
  %389 = icmp eq i8 %388, 0, !dbg !2129
  %390 = and i1 %114, %389, !dbg !2132
  br i1 %390, label %391, label %407, !dbg !2132

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2134
  br i1 %392, label %393, label %395, !dbg !2139

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2141
  store i8 39, i8* %394, align 1, !dbg !2141, !tbaa !914
  br label %395, !dbg !2141

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1658, metadata !746), !dbg !1720
  %397 = icmp ult i64 %396, %131, !dbg !2145
  br i1 %397, label %398, label %400, !dbg !2149

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2151
  store i8 36, i8* %399, align 1, !dbg !2151, !tbaa !914
  br label %400, !dbg !2151

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1658, metadata !746), !dbg !1720
  %402 = icmp ult i64 %401, %131, !dbg !2155
  br i1 %402, label %403, label %405, !dbg !2159

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2161
  store i8 39, i8* %404, align 1, !dbg !2161, !tbaa !914
  br label %405, !dbg !2161

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1665, metadata !746), !dbg !1728
  br label %407, !dbg !2165

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1658, metadata !746), !dbg !1720
  %410 = icmp ult i64 %408, %131, !dbg !2167
  br i1 %410, label %411, label %413, !dbg !2171

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2173
  store i8 92, i8* %412, align 1, !dbg !2173, !tbaa !914
  br label %413, !dbg !2173

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1658, metadata !746), !dbg !1720
  %415 = icmp ult i64 %414, %131, !dbg !2177
  br i1 %415, label %416, label %420, !dbg !2181

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2183
  %418 = or i8 %417, 48, !dbg !2183
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2183
  store i8 %418, i8* %419, align 1, !dbg !2183, !tbaa !914
  br label %420, !dbg !2183

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1658, metadata !746), !dbg !1720
  %422 = icmp ult i64 %421, %131, !dbg !2187
  br i1 %422, label %423, label %428, !dbg !2191

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2193
  %425 = and i8 %424, 7, !dbg !2193
  %426 = or i8 %425, 48, !dbg !2193
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2193
  store i8 %426, i8* %427, align 1, !dbg !2193, !tbaa !914
  br label %428, !dbg !2193

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1658, metadata !746), !dbg !1720
  %430 = and i8 %383, 7, !dbg !2197
  %431 = or i8 %430, 48, !dbg !2198
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1668, metadata !746), !dbg !1826
  br label %441, !dbg !2199

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2200
  %434 = icmp eq i8 %433, 0, !dbg !2200
  br i1 %434, label %441, label %435, !dbg !2202

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2203
  br i1 %436, label %437, label %439, !dbg !2208

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2210
  store i8 92, i8* %438, align 1, !dbg !2210, !tbaa !914
  br label %439, !dbg !2210

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1673, metadata !746), !dbg !1807
  br label %441, !dbg !2214

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1674, metadata !746), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1673, metadata !746), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1668, metadata !746), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1658, metadata !746), !dbg !1720
  %447 = add i64 %380, 1, !dbg !2215
  %448 = icmp ugt i64 %378, %447, !dbg !2217
  br i1 %448, label %449, label %541, !dbg !2218

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2219
  %451 = icmp ne i8 %450, 0, !dbg !2219
  %452 = and i8 %446, 1, !dbg !2223
  %453 = icmp eq i8 %452, 0, !dbg !2223
  %454 = and i1 %451, %453, !dbg !2219
  br i1 %454, label %455, label %466, !dbg !2219

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2225
  br i1 %456, label %457, label %459, !dbg !2230

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2232
  store i8 39, i8* %458, align 1, !dbg !2232, !tbaa !914
  br label %459, !dbg !2232

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1658, metadata !746), !dbg !1720
  %461 = icmp ult i64 %460, %131, !dbg !2236
  br i1 %461, label %462, label %464, !dbg !2240

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2242
  store i8 39, i8* %463, align 1, !dbg !2242, !tbaa !914
  br label %464, !dbg !2242

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1665, metadata !746), !dbg !1728
  br label %466, !dbg !2246

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1658, metadata !746), !dbg !1720
  %469 = icmp ult i64 %467, %131, !dbg !2248
  br i1 %469, label %470, label %472, !dbg !2252

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2254
  store i8 %444, i8* %471, align 1, !dbg !2254, !tbaa !914
  br label %472, !dbg !2254

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1657, metadata !746), !dbg !1795
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2258
  %475 = load i8, i8* %474, align 1, !dbg !2258, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1668, metadata !746), !dbg !1826
  br label %379, !dbg !2259, !llvm.loop !2261

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1649, metadata !746), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1675, metadata !746), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1674, metadata !746), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1673, metadata !746), !dbg !1807
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1668, metadata !746), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1666, metadata !746), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1651, metadata !746), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1659, metadata !746), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1657, metadata !746), !dbg !1795
  br i1 %107, label %488, label %487, !dbg !2264

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2266

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2267

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2268
  %491 = zext i8 %490 to i64, !dbg !2268
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2270
  %493 = load i32, i32* %492, align 4, !dbg !2270, !tbaa !875
  %494 = and i8 %483, 31, !dbg !2271
  %495 = zext i8 %494 to i32, !dbg !2272
  %496 = shl i32 1, %495, !dbg !2273
  %497 = and i32 %493, %496, !dbg !2273
  %498 = icmp eq i32 %497, 0, !dbg !2273
  %499 = icmp eq i8 %157, 0, !dbg !2274
  %500 = and i1 %499, %498, !dbg !2275
  br i1 %500, label %542, label %503, !dbg !2275

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2274
  br i1 %502, label %542, label %503, !dbg !2276

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1649, metadata !746), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1675, metadata !746), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1668, metadata !746), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1666, metadata !746), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1651, metadata !746), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1659, metadata !746), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1657, metadata !746), !dbg !1795
  br i1 %112, label %513, label %644, !dbg !2278

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1674, metadata !746), !dbg !1808
  %514 = and i8 %508, 1, !dbg !2281
  %515 = icmp eq i8 %514, 0, !dbg !2281
  %516 = and i1 %114, %515, !dbg !2284
  br i1 %516, label %517, label %533, !dbg !2284

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2286
  br i1 %518, label %519, label %521, !dbg !2291

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2293
  store i8 39, i8* %520, align 1, !dbg !2293, !tbaa !914
  br label %521, !dbg !2293

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1658, metadata !746), !dbg !1720
  %523 = icmp ult i64 %522, %512, !dbg !2297
  br i1 %523, label %524, label %526, !dbg !2301

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2303
  store i8 36, i8* %525, align 1, !dbg !2303, !tbaa !914
  br label %526, !dbg !2303

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1658, metadata !746), !dbg !1720
  %528 = icmp ult i64 %527, %512, !dbg !2307
  br i1 %528, label %529, label %531, !dbg !2311

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2313
  store i8 39, i8* %530, align 1, !dbg !2313, !tbaa !914
  br label %531, !dbg !2313

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1665, metadata !746), !dbg !1728
  br label %533, !dbg !2317

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1658, metadata !746), !dbg !1720
  %536 = icmp ult i64 %534, %512, !dbg !2319
  br i1 %536, label %537, label %539, !dbg !2323

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2325
  store i8 92, i8* %538, align 1, !dbg !2325, !tbaa !914
  br label %539, !dbg !2325

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1649, metadata !746), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1675, metadata !746), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1674, metadata !746), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1668, metadata !746), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1666, metadata !746), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1651, metadata !746), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1659, metadata !746), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1657, metadata !746), !dbg !1795
  br label %569, !dbg !2329

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1712

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1649, metadata !746), !dbg !1712
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1675, metadata !746), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1674, metadata !746), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1668, metadata !746), !dbg !1826
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1666, metadata !746), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1651, metadata !746), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1659, metadata !746), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1657, metadata !746), !dbg !1795
  %553 = and i8 %547, 1, !dbg !2329
  %554 = icmp ne i8 %553, 0, !dbg !2329
  %555 = and i8 %550, 1, !dbg !2333
  %556 = icmp eq i8 %555, 0, !dbg !2333
  %557 = and i1 %554, %556, !dbg !2329
  br i1 %557, label %558, label %569, !dbg !2329

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2335
  br i1 %559, label %560, label %562, !dbg !2340

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2342
  store i8 39, i8* %561, align 1, !dbg !2342, !tbaa !914
  br label %562, !dbg !2342

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1658, metadata !746), !dbg !1720
  %564 = icmp ult i64 %563, %552, !dbg !2346
  br i1 %564, label %565, label %567, !dbg !2350

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2352
  store i8 39, i8* %566, align 1, !dbg !2352, !tbaa !914
  br label %567, !dbg !2352

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1658, metadata !746), !dbg !1720
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1665, metadata !746), !dbg !1728
  br label %569, !dbg !2356

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1665, metadata !746), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1658, metadata !746), !dbg !1720
  %579 = icmp ult i64 %577, %570, !dbg !2358
  br i1 %579, label %580, label %582, !dbg !2362

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2364
  store i8 %572, i8* %581, align 1, !dbg !2364, !tbaa !914
  br label %582, !dbg !2364

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1658, metadata !746), !dbg !1720
  %584 = and i8 %571, 1, !dbg !2368
  %585 = icmp eq i8 %584, 0, !dbg !2368
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1667, metadata !746), !dbg !1730
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2370
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1667, metadata !746), !dbg !1730
  br label %587, !dbg !2371

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1657, metadata !746), !dbg !1795
  br label %123, !dbg !2374, !llvm.loop !2375

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2378
  %600 = and i1 %114, %599, !dbg !2380
  %601 = xor i1 %600, true, !dbg !2380
  %602 = or i1 %112, %601, !dbg !2380
  br i1 %602, label %603, label %648, !dbg !2380

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2381
  %605 = xor i1 %604, true, !dbg !2381
  %606 = and i8 %129, 1, !dbg !2383
  %607 = icmp eq i8 %606, 0, !dbg !2383
  %608 = or i1 %607, %605, !dbg !2381
  br i1 %608, label %618, label %609, !dbg !2381

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2385
  %611 = icmp eq i8 %610, 0, !dbg !2385
  br i1 %611, label %614, label %612, !dbg !2388

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2389
  br label %659, !dbg !2390

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2391
  %616 = icmp ne i64 %126, 0, !dbg !2393
  %617 = and i1 %616, %615, !dbg !2395
  br i1 %617, label %27, label %618, !dbg !2395

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2396
  %620 = and i1 %619, %112, !dbg !2398
  br i1 %620, label %621, label %638, !dbg !2398

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1660, metadata !746), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1658, metadata !746), !dbg !1720
  %622 = load i8, i8* %100, align 1, !dbg !2399, !tbaa !914
  %623 = icmp eq i8 %622, 0, !dbg !2403
  br i1 %623, label %638, label %624, !dbg !2403

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2405

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2405
  br i1 %629, label %630, label %632, !dbg !2409

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2411
  store i8 %626, i8* %631, align 1, !dbg !2411, !tbaa !914
  br label %632, !dbg !2411

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1658, metadata !746), !dbg !1720
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1660, metadata !746), !dbg !1722
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1660, metadata !746), !dbg !1722
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1658, metadata !746), !dbg !1720
  %635 = load i8, i8* %634, align 1, !dbg !2399, !tbaa !914
  %636 = icmp eq i8 %635, 0, !dbg !2403
  br i1 %636, label %637, label %625, !dbg !2403, !llvm.loop !2417

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1720

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1658, metadata !746), !dbg !1720
  %640 = icmp ult i64 %639, %131, !dbg !2420
  br i1 %640, label %641, label %659, !dbg !2422

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2423
  store i8 0, i8* %642, align 1, !dbg !2424, !tbaa !914
  br label %659, !dbg !2423

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1712

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1712

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1712

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1649, metadata !746), !dbg !1712
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1651, metadata !746), !dbg !1714
  %653 = icmp ne i32 %650, 2, !dbg !2425
  %654 = icmp eq i8 %104, 0, !dbg !2427
  %655 = or i1 %653, %654, !dbg !2429
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1652, metadata !746), !dbg !1715
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1652, metadata !746), !dbg !1715
  %657 = and i32 %5, -3, !dbg !2430
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2431
  br label %659, !dbg !2432

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2433
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2434 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2438, metadata !746), !dbg !2442
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2439, metadata !746), !dbg !2443
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2444
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2440, metadata !746), !dbg !2445
  %4 = icmp eq i8* %3, %0, !dbg !2446
  br i1 %4, label %5, label %75, !dbg !2448

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2449
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2441, metadata !746), !dbg !2450
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2451, metadata !746), !dbg !2467
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2465, metadata !746), !dbg !2470
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2466, metadata !746), !dbg !2471
  %7 = load i8, i8* %6, align 1, !tbaa !914
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2472
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2472

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2475, metadata !746), !dbg !2489
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2487, metadata !746), !dbg !2493
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2488, metadata !746), !dbg !2494
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !914
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2495
  %15 = icmp eq i32 %14, 84, !dbg !2495
  br i1 %15, label %16, label %72, !dbg !2495

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2498, metadata !746), !dbg !2511
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2509, metadata !746), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2510, metadata !746), !dbg !2516
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !914
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2517
  %21 = icmp eq i32 %20, 70, !dbg !2517
  br i1 %21, label %22, label %72, !dbg !2517

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2520, metadata !746), !dbg !2532
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2530, metadata !746), !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2531, metadata !746), !dbg !2537
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !914
  %25 = icmp eq i8 %24, 45, !dbg !2538
  br i1 %25, label %26, label %72, !dbg !2541

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2543, metadata !746), !dbg !2554
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2552, metadata !746), !dbg !2558
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2553, metadata !746), !dbg !2559
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !914
  %29 = icmp eq i8 %28, 56, !dbg !2560
  br i1 %29, label %30, label %72, !dbg !2563

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2565, metadata !746), !dbg !2575
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2573, metadata !746), !dbg !2579
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2574, metadata !746), !dbg !2580
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !914
  %33 = icmp eq i8 %32, 0, !dbg !2581
  br i1 %33, label %34, label %72, !dbg !2584

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2586, !tbaa !914
  %36 = icmp eq i8 %35, 96, !dbg !2587
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.71, i64 0, i64 0), !dbg !2586
  br label %75, !dbg !2588

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2475, metadata !746), !dbg !2589
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2487, metadata !746), !dbg !2593
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2488, metadata !746), !dbg !2594
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !914
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2595
  %43 = icmp eq i32 %42, 66, !dbg !2595
  br i1 %43, label %44, label %72, !dbg !2595

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2498, metadata !746), !dbg !2596
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2509, metadata !746), !dbg !2598
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2510, metadata !746), !dbg !2599
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !914
  %47 = icmp eq i8 %46, 49, !dbg !2600
  br i1 %47, label %48, label %72, !dbg !2602

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2520, metadata !746), !dbg !2604
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2530, metadata !746), !dbg !2606
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2531, metadata !746), !dbg !2607
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !914
  %51 = icmp eq i8 %50, 56, !dbg !2608
  br i1 %51, label %52, label %72, !dbg !2609

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2543, metadata !746), !dbg !2610
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2552, metadata !746), !dbg !2612
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2553, metadata !746), !dbg !2613
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !914
  %55 = icmp eq i8 %54, 48, !dbg !2614
  br i1 %55, label %56, label %72, !dbg !2615

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2565, metadata !746), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2573, metadata !746), !dbg !2618
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2574, metadata !746), !dbg !2619
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !914
  %59 = icmp eq i8 %58, 51, !dbg !2620
  br i1 %59, label %60, label %72, !dbg !2621

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2622, metadata !746), !dbg !2631
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2629, metadata !746), !dbg !2635
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2630, metadata !746), !dbg !2636
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !914
  %63 = icmp eq i8 %62, 48, !dbg !2637
  br i1 %63, label %64, label %72, !dbg !2640

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2642, metadata !746), !dbg !2650
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2648, metadata !746), !dbg !2654
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2649, metadata !746), !dbg !2655
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !914
  %67 = icmp eq i8 %66, 0, !dbg !2656
  br i1 %67, label %68, label %72, !dbg !2659

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2660, !tbaa !914
  %70 = icmp eq i8 %69, 96, !dbg !2661
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.72, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.73, i64 0, i64 0), !dbg !2660
  br label %75, !dbg !2662

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2663
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.68, i64 0, i64 0), !dbg !2664
  br label %75, !dbg !2665

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2666
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2667 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2671, metadata !746), !dbg !2674
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2672, metadata !746), !dbg !2675
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2673, metadata !746), !dbg !2676
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2677, metadata !746) #10, !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2682, metadata !746) #10, !dbg !2692
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2683, metadata !746) #10, !dbg !2693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2684, metadata !746) #10, !dbg !2694
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2695
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2695
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2685, metadata !746) #10, !dbg !2696
  %6 = tail call i32* @__errno_location() #1, !dbg !2697
  %7 = load i32, i32* %6, align 4, !dbg !2697, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2686, metadata !746) #10, !dbg !2698
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2699
  %9 = load i32, i32* %8, align 4, !dbg !2699, !tbaa !1580
  %10 = or i32 %9, 1, !dbg !2700
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2687, metadata !746) #10, !dbg !2701
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2702
  %12 = load i32, i32* %11, align 8, !dbg !2702, !tbaa !1518
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2703
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2704
  %15 = load i8*, i8** %14, align 8, !dbg !2704, !tbaa !1607
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2705
  %17 = load i8*, i8** %16, align 8, !dbg !2705, !tbaa !1610
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2706
  %19 = add i64 %18, 1, !dbg !2707
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2688, metadata !746) #10, !dbg !2708
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2709, metadata !746) #10, !dbg !2714
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2716
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2689, metadata !746) #10, !dbg !2717
  %21 = load i32, i32* %11, align 8, !dbg !2718, !tbaa !1518
  %22 = load i8*, i8** %14, align 8, !dbg !2719, !tbaa !1607
  %23 = load i8*, i8** %16, align 8, !dbg !2720, !tbaa !1610
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2721
  store i32 %7, i32* %6, align 4, !dbg !2722, !tbaa !875
  ret i8* %20, !dbg !2723
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2678 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2677, metadata !746), !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2682, metadata !746), !dbg !2725
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2683, metadata !746), !dbg !2726
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2684, metadata !746), !dbg !2727
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2728
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2685, metadata !746), !dbg !2729
  %7 = tail call i32* @__errno_location() #1, !dbg !2730
  %8 = load i32, i32* %7, align 4, !dbg !2730, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2686, metadata !746), !dbg !2731
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2732
  %10 = load i32, i32* %9, align 4, !dbg !2732, !tbaa !1580
  %11 = icmp ne i64* %2, null, !dbg !2733
  %12 = xor i1 %11, true, !dbg !2733
  %13 = zext i1 %12 to i32, !dbg !2733
  %14 = or i32 %10, %13, !dbg !2734
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2687, metadata !746), !dbg !2735
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2736
  %16 = load i32, i32* %15, align 8, !dbg !2736, !tbaa !1518
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2737
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2738
  %19 = load i8*, i8** %18, align 8, !dbg !2738, !tbaa !1607
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2739
  %21 = load i8*, i8** %20, align 8, !dbg !2739, !tbaa !1610
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2740
  %23 = add i64 %22, 1, !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2688, metadata !746), !dbg !2742
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2709, metadata !746) #10, !dbg !2743
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2745
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2689, metadata !746), !dbg !2746
  %25 = load i32, i32* %15, align 8, !dbg !2747, !tbaa !1518
  %26 = load i8*, i8** %18, align 8, !dbg !2748, !tbaa !1607
  %27 = load i8*, i8** %20, align 8, !dbg !2749, !tbaa !1610
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2750
  store i32 %8, i32* %7, align 4, !dbg !2751, !tbaa !875
  br i1 %11, label %29, label %30, !dbg !2752

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2753, !tbaa !883
  br label %30, !dbg !2755

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2756
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2757 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2761, !tbaa !754
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2759, metadata !746), !dbg !2762
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2760, metadata !746), !dbg !2763
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2760, metadata !746), !dbg !2763
  %2 = load i32, i32* @nslots, align 4, !dbg !2764, !tbaa !875
  %3 = icmp sgt i32 %2, 1, !dbg !2768
  br i1 %3, label %4, label %14, !dbg !2769

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2771

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2771
  %8 = load i8*, i8** %7, align 8, !dbg !2771, !tbaa !2772
  tail call void @free(i8* %8) #10, !dbg !2774
  %9 = add nuw i64 %6, 1, !dbg !2775
  %10 = load i32, i32* @nslots, align 4, !dbg !2764, !tbaa !875
  %11 = sext i32 %10 to i64, !dbg !2768
  %12 = icmp slt i64 %9, %11, !dbg !2768
  br i1 %12, label %5, label %13, !dbg !2769, !llvm.loop !2777

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2780

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2780
  %16 = load i8*, i8** %15, align 8, !dbg !2780, !tbaa !2772
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2782
  br i1 %17, label %19, label %18, !dbg !2783

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2784
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2786, !tbaa !2787
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2788, !tbaa !2772
  br label %19, !dbg !2789

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2790
  br i1 %20, label %23, label %21, !dbg !2792

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2793
  tail call void @free(i8* %22) #10, !dbg !2795
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2796, !tbaa !754
  br label %23, !dbg !2797

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2798, !tbaa !875
  ret void, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2800 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2804, metadata !746), !dbg !2806
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2805, metadata !746), !dbg !2807
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2808
  ret i8* %3, !dbg !2809
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2810 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2814, metadata !746), !dbg !2828
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2815, metadata !746), !dbg !2829
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2816, metadata !746), !dbg !2830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2817, metadata !746), !dbg !2831
  %5 = tail call i32* @__errno_location() #1, !dbg !2832
  %6 = load i32, i32* %5, align 4, !dbg !2832, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2818, metadata !746), !dbg !2833
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2834, !tbaa !754
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2819, metadata !746), !dbg !2835
  %8 = icmp slt i32 %0, 0, !dbg !2836
  br i1 %8, label %9, label %10, !dbg !2838

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2839
  unreachable, !dbg !2839

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2840, !tbaa !875
  %12 = icmp sgt i32 %11, %0, !dbg !2841
  br i1 %12, label %34, label %13, !dbg !2842

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2843
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2844
  br i1 %15, label %16, label %17, !dbg !2846

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2847
  unreachable, !dbg !2847

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2848
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2848
  %20 = add nsw i32 %0, 1, !dbg !2850
  %21 = sext i32 %20 to i64, !dbg !2851
  %22 = shl nsw i64 %21, 4, !dbg !2852
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2853
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2853
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2819, metadata !746), !dbg !2835
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2854, !tbaa !754
  br i1 %14, label %25, label %26, !dbg !2855

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2856, !tbaa.struct !2858
  br label %26, !dbg !2859

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2860, !tbaa !875
  %28 = sext i32 %27 to i64, !dbg !2861
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2861
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2862
  %31 = sub nsw i32 %20, %27, !dbg !2863
  %32 = sext i32 %31 to i64, !dbg !2864
  %33 = shl nsw i64 %32, 4, !dbg !2865
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2862
  store i32 %20, i32* @nslots, align 4, !dbg !2866, !tbaa !875
  br label %34, !dbg !2867

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2819, metadata !746), !dbg !2835
  %36 = sext i32 %0 to i64, !dbg !2868
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2869
  %38 = load i64, i64* %37, align 8, !dbg !2869, !tbaa !2787
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2823, metadata !746), !dbg !2870
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2871
  %40 = load i8*, i8** %39, align 8, !dbg !2871, !tbaa !2772
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2825, metadata !746), !dbg !2872
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2873
  %42 = load i32, i32* %41, align 4, !dbg !2873, !tbaa !1580
  %43 = or i32 %42, 1, !dbg !2874
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2826, metadata !746), !dbg !2875
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2876
  %45 = load i32, i32* %44, align 8, !dbg !2876, !tbaa !1518
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2877
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2878
  %48 = load i8*, i8** %47, align 8, !dbg !2878, !tbaa !1607
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2879
  %50 = load i8*, i8** %49, align 8, !dbg !2879, !tbaa !1610
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2880
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2827, metadata !746), !dbg !2881
  %52 = icmp ugt i64 %38, %51, !dbg !2882
  br i1 %52, label %63, label %53, !dbg !2884

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2823, metadata !746), !dbg !2870
  store i64 %54, i64* %37, align 8, !dbg !2887, !tbaa !2787
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2888
  br i1 %55, label %57, label %56, !dbg !2890

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2891
  br label %57, !dbg !2891

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2709, metadata !746) #10, !dbg !2892
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2894
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2825, metadata !746), !dbg !2872
  store i8* %58, i8** %39, align 8, !dbg !2895, !tbaa !2772
  %59 = load i32, i32* %44, align 8, !dbg !2896, !tbaa !1518
  %60 = load i8*, i8** %47, align 8, !dbg !2897, !tbaa !1607
  %61 = load i8*, i8** %49, align 8, !dbg !2898, !tbaa !1610
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2899
  br label %63, !dbg !2900

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2825, metadata !746), !dbg !2872
  store i32 %6, i32* %5, align 4, !dbg !2901, !tbaa !875
  ret i8* %64, !dbg !2902
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2903 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2907, metadata !746), !dbg !2910
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2908, metadata !746), !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2909, metadata !746), !dbg !2912
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2913
  ret i8* %4, !dbg !2914
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2915 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2919, metadata !746), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2804, metadata !746) #10, !dbg !2921
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2805, metadata !746) #10, !dbg !2923
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2924
  ret i8* %2, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2926 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2930, metadata !746), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2931, metadata !746), !dbg !2933
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2907, metadata !746) #10, !dbg !2934
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2908, metadata !746) #10, !dbg !2936
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2909, metadata !746) #10, !dbg !2937
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2938
  ret i8* %3, !dbg !2939
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2940 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2948, metadata !2954), !dbg !2955
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2944, metadata !746), !dbg !2957
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2945, metadata !746), !dbg !2958
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2946, metadata !746), !dbg !2959
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2960
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2947, metadata !988), !dbg !2961
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2953, metadata !746) #10, !dbg !2962
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2963
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2963
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2948, metadata !746) #10, !dbg !2955
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2948, metadata !2964) #10, !dbg !2955
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2955
  %8 = icmp eq i32 %1, 10, !dbg !2965
  br i1 %8, label %9, label %10, !dbg !2967

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2968, !noalias !2969
  unreachable, !dbg !2968

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2948, metadata !2964) #10, !dbg !2955
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2972
  store i32 %1, i32* %11, align 8, !dbg !2972, !alias.scope !2969
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2972
  %13 = bitcast i32* %12 to i8*, !dbg !2972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2972
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2973
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2947, metadata !988), !dbg !2961
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2974
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2975
  ret i8* %14, !dbg !2976
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2977 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2948, metadata !2954), !dbg !2986
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2981, metadata !746), !dbg !2988
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2982, metadata !746), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2983, metadata !746), !dbg !2990
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2984, metadata !746), !dbg !2991
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2992
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2985, metadata !988), !dbg !2993
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2953, metadata !746) #10, !dbg !2994
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2995
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2995
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2948, metadata !746) #10, !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2948, metadata !2964) #10, !dbg !2986
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2986
  %9 = icmp eq i32 %1, 10, !dbg !2996
  br i1 %9, label %10, label %11, !dbg !2997

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2998, !noalias !2999
  unreachable, !dbg !2998

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2948, metadata !2964) #10, !dbg !2986
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3002
  store i32 %1, i32* %12, align 8, !dbg !3002, !alias.scope !2999
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3002
  %14 = bitcast i32* %13 to i8*, !dbg !3002
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3002
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3003
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2985, metadata !988), !dbg !2993
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3004
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3005
  ret i8* %15, !dbg !3006
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3007 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2948, metadata !2954), !dbg !3013
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3011, metadata !746), !dbg !3016
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3012, metadata !746), !dbg !3017
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2944, metadata !746) #10, !dbg !3018
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2945, metadata !746) #10, !dbg !3019
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2946, metadata !746) #10, !dbg !3020
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3021
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3021
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2947, metadata !988) #10, !dbg !3022
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2953, metadata !746) #10, !dbg !3023
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3024
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3024
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2948, metadata !746) #10, !dbg !3013
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2948, metadata !2964) #10, !dbg !3013
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3013
  %7 = icmp eq i32 %0, 10, !dbg !3025
  br i1 %7, label %8, label %9, !dbg !3026

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3027, !noalias !3028
  unreachable, !dbg !3027

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2948, metadata !2964) #10, !dbg !3013
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3031
  store i32 %0, i32* %10, align 8, !dbg !3031, !alias.scope !3028
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3031
  %12 = bitcast i32* %11 to i8*, !dbg !3031
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3031
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3032
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2947, metadata !988) #10, !dbg !3022
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3033
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3034
  ret i8* %13, !dbg !3035
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3036 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2948, metadata !2954), !dbg !3043
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3040, metadata !746), !dbg !3046
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3041, metadata !746), !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3042, metadata !746), !dbg !3048
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2981, metadata !746) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2982, metadata !746) #10, !dbg !3050
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2983, metadata !746) #10, !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2984, metadata !746) #10, !dbg !3052
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3053
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3053
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2985, metadata !988) #10, !dbg !3054
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2953, metadata !746) #10, !dbg !3055
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3056
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3056
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2948, metadata !746) #10, !dbg !3043
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2948, metadata !2964) #10, !dbg !3043
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3043
  %8 = icmp eq i32 %0, 10, !dbg !3057
  br i1 %8, label %9, label %10, !dbg !3058

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3059, !noalias !3060
  unreachable, !dbg !3059

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2948, metadata !2964) #10, !dbg !3043
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3063
  store i32 %0, i32* %11, align 8, !dbg !3063, !alias.scope !3060
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3063
  %13 = bitcast i32* %12 to i8*, !dbg !3063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3063
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3064
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2985, metadata !988) #10, !dbg !3054
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3065
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3066
  ret i8* %14, !dbg !3067
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3068 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !746), !dbg !3076
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3073, metadata !746), !dbg !3077
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3074, metadata !746), !dbg !3078
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3079
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3080, !tbaa.struct !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3075, metadata !988), !dbg !3082
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1538, metadata !746), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1539, metadata !746), !dbg !3085
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1540, metadata !746), !dbg !3086
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1541, metadata !746), !dbg !3087
  %6 = lshr i8 %2, 5, !dbg !3088
  %7 = zext i8 %6 to i64, !dbg !3088
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3089
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1542, metadata !746), !dbg !3090
  %9 = and i8 %2, 31, !dbg !3091
  %10 = zext i8 %9 to i32, !dbg !3092
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1544, metadata !746), !dbg !3093
  %11 = load i32, i32* %8, align 4, !dbg !3094, !tbaa !875
  %12 = lshr i32 %11, %10, !dbg !3095
  %13 = and i32 %12, 1, !dbg !3096
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1545, metadata !746), !dbg !3097
  %14 = xor i32 %13, 1, !dbg !3098
  %15 = shl i32 %14, %10, !dbg !3099
  %16 = xor i32 %15, %11, !dbg !3100
  store i32 %16, i32* %8, align 4, !dbg !3100, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3075, metadata !988), !dbg !3082
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3101
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3102
  ret i8* %17, !dbg !3103
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3104 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3108, metadata !746), !dbg !3110
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3109, metadata !746), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !746) #10, !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3073, metadata !746) #10, !dbg !3114
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3074, metadata !746) #10, !dbg !3115
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3116
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3117, !tbaa.struct !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3075, metadata !988) #10, !dbg !3118
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1538, metadata !746) #10, !dbg !3119
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1539, metadata !746) #10, !dbg !3121
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1540, metadata !746) #10, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1541, metadata !746) #10, !dbg !3123
  %5 = lshr i8 %1, 5, !dbg !3124
  %6 = zext i8 %5 to i64, !dbg !3124
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3125
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1542, metadata !746) #10, !dbg !3126
  %8 = and i8 %1, 31, !dbg !3127
  %9 = zext i8 %8 to i32, !dbg !3128
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1544, metadata !746) #10, !dbg !3129
  %10 = load i32, i32* %7, align 4, !dbg !3130, !tbaa !875
  %11 = lshr i32 %10, %9, !dbg !3131
  %12 = and i32 %11, 1, !dbg !3132
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1545, metadata !746) #10, !dbg !3133
  %13 = xor i32 %12, 1, !dbg !3134
  %14 = shl i32 %13, %9, !dbg !3135
  %15 = xor i32 %14, %10, !dbg !3136
  store i32 %15, i32* %7, align 4, !dbg !3136, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3075, metadata !988) #10, !dbg !3118
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3137
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3138
  ret i8* %16, !dbg !3139
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3140 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3142, metadata !746), !dbg !3143
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3108, metadata !746) #10, !dbg !3144
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3109, metadata !746) #10, !dbg !3146
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !746) #10, !dbg !3147
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3073, metadata !746) #10, !dbg !3149
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3074, metadata !746) #10, !dbg !3150
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3151
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3152, !tbaa.struct !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3075, metadata !988) #10, !dbg !3153
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1538, metadata !746) #10, !dbg !3154
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1539, metadata !746) #10, !dbg !3156
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1540, metadata !746) #10, !dbg !3157
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1541, metadata !746) #10, !dbg !3158
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3159
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1542, metadata !746) #10, !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1544, metadata !746) #10, !dbg !3161
  %5 = load i32, i32* %4, align 4, !dbg !3162, !tbaa !875
  %6 = or i32 %5, 67108864, !dbg !3163
  store i32 %6, i32* %4, align 4, !dbg !3163, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3075, metadata !988) #10, !dbg !3153
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3164
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3165
  ret i8* %7, !dbg !3166
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3167 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3169, metadata !746), !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3170, metadata !746), !dbg !3172
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !746) #10, !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3073, metadata !746) #10, !dbg !3175
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3074, metadata !746) #10, !dbg !3176
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3177
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3178, !tbaa.struct !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3075, metadata !988) #10, !dbg !3179
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1538, metadata !746) #10, !dbg !3180
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1539, metadata !746) #10, !dbg !3182
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1540, metadata !746) #10, !dbg !3183
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1541, metadata !746) #10, !dbg !3184
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3185
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1542, metadata !746) #10, !dbg !3186
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1544, metadata !746) #10, !dbg !3187
  %6 = load i32, i32* %5, align 4, !dbg !3188, !tbaa !875
  %7 = or i32 %6, 67108864, !dbg !3189
  store i32 %7, i32* %5, align 4, !dbg !3189, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3075, metadata !988) #10, !dbg !3179
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3190
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3191
  ret i8* %8, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3193 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2948, metadata !2954), !dbg !3199
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3195, metadata !746), !dbg !3201
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3196, metadata !746), !dbg !3202
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3197, metadata !746), !dbg !3203
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3204
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3204
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2953, metadata !746) #10, !dbg !3205
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3206
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3206
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2948, metadata !746) #10, !dbg !3199
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2948, metadata !2964) #10, !dbg !3199
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3199
  %9 = icmp eq i32 %1, 10, !dbg !3207
  br i1 %9, label %10, label %11, !dbg !3208

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3209, !noalias !3210
  unreachable, !dbg !3209

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2948, metadata !2964) #10, !dbg !3199
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3213
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3213
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3214
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3215
  store i32 %1, i32* %13, align 8, !dbg !3215
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3215
  %15 = bitcast i32* %14 to i8*, !dbg !3215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3215
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3198, metadata !988), !dbg !3216
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1538, metadata !746), !dbg !3217
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1539, metadata !746), !dbg !3219
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1540, metadata !746), !dbg !3220
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1541, metadata !746), !dbg !3221
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3222
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1542, metadata !746), !dbg !3223
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1544, metadata !746), !dbg !3224
  %17 = load i32, i32* %16, align 4, !dbg !3225, !tbaa !875
  %18 = or i32 %17, 67108864, !dbg !3226
  store i32 %18, i32* %16, align 4, !dbg !3226, !tbaa !875
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3198, metadata !988), !dbg !3216
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3227
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3228
  ret i8* %19, !dbg !3229
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3230 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3234, metadata !746), !dbg !3238
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3235, metadata !746), !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3236, metadata !746), !dbg !3240
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3237, metadata !746), !dbg !3241
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3242, metadata !746) #10, !dbg !3252
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3247, metadata !746) #10, !dbg !3254
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3248, metadata !746) #10, !dbg !3255
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3249, metadata !746) #10, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3250, metadata !746) #10, !dbg !3257
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3258
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3259, !tbaa.struct !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3251, metadata !988) #10, !dbg !3260
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1588, metadata !746) #10, !dbg !3261
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1589, metadata !746) #10, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1590, metadata !746) #10, !dbg !3264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1588, metadata !746) #10, !dbg !3261
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1588, metadata !746) #10, !dbg !3261
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3265
  store i32 10, i32* %7, align 8, !dbg !3266, !tbaa !1518
  %8 = icmp ne i8* %1, null, !dbg !3267
  %9 = icmp ne i8* %2, null, !dbg !3268
  %10 = and i1 %8, %9, !dbg !3269
  br i1 %10, label %12, label %11, !dbg !3269

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3270
  unreachable, !dbg !3270

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3271
  store i8* %1, i8** %13, align 8, !dbg !3272, !tbaa !1607
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3273
  store i8* %2, i8** %14, align 8, !dbg !3274, !tbaa !1610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3251, metadata !988) #10, !dbg !3260
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3275
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3276
  ret i8* %15, !dbg !3277
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3243 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3242, metadata !746), !dbg !3278
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3247, metadata !746), !dbg !3279
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3248, metadata !746), !dbg !3280
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3249, metadata !746), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3250, metadata !746), !dbg !3282
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3283
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3284, !tbaa.struct !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3251, metadata !988), !dbg !3285
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1588, metadata !746) #10, !dbg !3286
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1589, metadata !746) #10, !dbg !3288
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1590, metadata !746) #10, !dbg !3289
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1588, metadata !746) #10, !dbg !3286
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1588, metadata !746) #10, !dbg !3286
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3290
  store i32 10, i32* %8, align 8, !dbg !3291, !tbaa !1518
  %9 = icmp ne i8* %1, null, !dbg !3292
  %10 = icmp ne i8* %2, null, !dbg !3293
  %11 = and i1 %9, %10, !dbg !3294
  br i1 %11, label %13, label %12, !dbg !3294

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3295
  unreachable, !dbg !3295

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3296
  store i8* %1, i8** %14, align 8, !dbg !3297, !tbaa !1607
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3298
  store i8* %2, i8** %15, align 8, !dbg !3299, !tbaa !1610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3251, metadata !988), !dbg !3285
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3300
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3301
  ret i8* %16, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3303 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3307, metadata !746), !dbg !3310
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3308, metadata !746), !dbg !3311
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3309, metadata !746), !dbg !3312
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3234, metadata !746) #10, !dbg !3313
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !746) #10, !dbg !3315
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3236, metadata !746) #10, !dbg !3316
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3237, metadata !746) #10, !dbg !3317
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3242, metadata !746) #10, !dbg !3318
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3247, metadata !746) #10, !dbg !3320
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3248, metadata !746) #10, !dbg !3321
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3249, metadata !746) #10, !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3250, metadata !746) #10, !dbg !3323
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3324
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3324
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3325, !tbaa.struct !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3251, metadata !988) #10, !dbg !3326
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1588, metadata !746) #10, !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1589, metadata !746) #10, !dbg !3329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1590, metadata !746) #10, !dbg !3330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1588, metadata !746) #10, !dbg !3327
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1588, metadata !746) #10, !dbg !3327
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3331
  store i32 10, i32* %6, align 8, !dbg !3332, !tbaa !1518
  %7 = icmp ne i8* %0, null, !dbg !3333
  %8 = icmp ne i8* %1, null, !dbg !3334
  %9 = and i1 %7, %8, !dbg !3335
  br i1 %9, label %11, label %10, !dbg !3335

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3336
  unreachable, !dbg !3336

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3337
  store i8* %0, i8** %12, align 8, !dbg !3338, !tbaa !1607
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3339
  store i8* %1, i8** %13, align 8, !dbg !3340, !tbaa !1610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3251, metadata !988) #10, !dbg !3326
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3341
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3342
  ret i8* %14, !dbg !3343
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3344 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3348, metadata !746), !dbg !3352
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3349, metadata !746), !dbg !3353
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3350, metadata !746), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3351, metadata !746), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3242, metadata !746) #10, !dbg !3356
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3247, metadata !746) #10, !dbg !3358
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3248, metadata !746) #10, !dbg !3359
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3249, metadata !746) #10, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3250, metadata !746) #10, !dbg !3361
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3362
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3363, !tbaa.struct !3081
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3251, metadata !988) #10, !dbg !3364
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1588, metadata !746) #10, !dbg !3365
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1589, metadata !746) #10, !dbg !3367
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1590, metadata !746) #10, !dbg !3368
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1588, metadata !746) #10, !dbg !3365
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1588, metadata !746) #10, !dbg !3365
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3369
  store i32 10, i32* %7, align 8, !dbg !3370, !tbaa !1518
  %8 = icmp ne i8* %0, null, !dbg !3371
  %9 = icmp ne i8* %1, null, !dbg !3372
  %10 = and i1 %8, %9, !dbg !3373
  br i1 %10, label %12, label %11, !dbg !3373

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3374
  unreachable, !dbg !3374

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3375
  store i8* %0, i8** %13, align 8, !dbg !3376, !tbaa !1607
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3377
  store i8* %1, i8** %14, align 8, !dbg !3378, !tbaa !1610
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3251, metadata !988) #10, !dbg !3364
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3379
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3380
  ret i8* %15, !dbg !3381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3382 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3386, metadata !746), !dbg !3389
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3387, metadata !746), !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3388, metadata !746), !dbg !3391
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3392
  ret i8* %4, !dbg !3393
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3394 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3398, metadata !746), !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3399, metadata !746), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3386, metadata !746) #10, !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3387, metadata !746) #10, !dbg !3404
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3388, metadata !746) #10, !dbg !3405
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3406
  ret i8* %3, !dbg !3407
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3408 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3412, metadata !746), !dbg !3414
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3413, metadata !746), !dbg !3415
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3386, metadata !746) #10, !dbg !3416
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3387, metadata !746) #10, !dbg !3418
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3388, metadata !746) #10, !dbg !3419
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3420
  ret i8* %3, !dbg !3421
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3422 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3426, metadata !746), !dbg !3427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3412, metadata !746) #10, !dbg !3428
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3413, metadata !746) #10, !dbg !3430
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3386, metadata !746) #10, !dbg !3431
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3387, metadata !746) #10, !dbg !3433
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3388, metadata !746) #10, !dbg !3434
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3435
  ret i8* %2, !dbg !3436
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @parse_user_spec(i8*, i32* nocapture, i32*, i8**, i8**) local_unnamed_addr #6 !dbg !3437 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3441, metadata !746), !dbg !3451
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !3442, metadata !746), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !3443, metadata !746), !dbg !3453
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !3444, metadata !746), !dbg !3454
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3445, metadata !746), !dbg !3455
  %6 = icmp eq i32* %2, null, !dbg !3456
  br i1 %6, label %9, label %7, !dbg !3456

; <label>:7:                                      ; preds = %5
  %8 = tail call i8* @strchr(i8* %0, i32 58) #10, !dbg !3457
  br label %9, !dbg !3459

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i8* [ %8, %7 ], [ null, %5 ], !dbg !3460
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3446, metadata !746), !dbg !3462
  %11 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* %10, i32* %1, i32* %2, i8** %3, i8** %4), !dbg !3463
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3447, metadata !746), !dbg !3464
  %12 = icmp ne i32* %2, null, !dbg !3465
  %13 = icmp eq i8* %10, null, !dbg !3465
  %14 = and i1 %12, %13, !dbg !3465
  %15 = icmp ne i8* %11, null, !dbg !3466
  %16 = and i1 %14, %15, !dbg !3465
  br i1 %16, label %17, label %24, !dbg !3465

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @strchr(i8* %0, i32 46) #10, !dbg !3468
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !3448, metadata !746), !dbg !3469
  %19 = icmp eq i8* %18, null, !dbg !3470
  br i1 %19, label %24, label %20, !dbg !3472

; <label>:20:                                     ; preds = %17
  %21 = tail call fastcc i8* @parse_with_separator(i8* %0, i8* nonnull %18, i32* %1, i32* nonnull %2, i8** %3, i8** %4), !dbg !3473
  %22 = icmp eq i8* %21, null, !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3447, metadata !746), !dbg !3464
  %23 = select i1 %22, i8* null, i8* %11, !dbg !3475
  ret i8* %23, !dbg !3475

; <label>:24:                                     ; preds = %17, %9
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !3447, metadata !746), !dbg !3464
  ret i8* %11, !dbg !3477
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_with_separator(i8*, i8*, i32* nocapture, i32*, i8**, i8**) unnamed_addr #6 !dbg !586 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !593, metadata !746), !dbg !3478
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !594, metadata !746), !dbg !3479
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !595, metadata !746), !dbg !3480
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !596, metadata !746), !dbg !3481
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !597, metadata !746), !dbg !3482
  tail call void @llvm.dbg.value(metadata i8** %5, i64 0, metadata !598, metadata !746), !dbg !3483
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !622, metadata !746), !dbg !3484
  %10 = load i32, i32* %2, align 4, !dbg !3485, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !623, metadata !746), !dbg !3486
  %11 = icmp ne i32* %3, null, !dbg !3487
  br i1 %11, label %12, label %14, !dbg !3487

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %3, align 4, !dbg !3488, !tbaa !875
  br label %14, !dbg !3490

; <label>:14:                                     ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %6 ], !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !624, metadata !746), !dbg !3493
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !599, metadata !746), !dbg !3494
  %16 = icmp ne i8** %4, null, !dbg !3495
  br i1 %16, label %17, label %18, !dbg !3497

; <label>:17:                                     ; preds = %14
  store i8* null, i8** %4, align 8, !dbg !3498, !tbaa !754
  br label %18, !dbg !3499

; <label>:18:                                     ; preds = %17, %14
  %19 = icmp ne i8** %5, null, !dbg !3500
  br i1 %19, label %20, label %21, !dbg !3502

; <label>:20:                                     ; preds = %18
  store i8* null, i8** %5, align 8, !dbg !3503, !tbaa !754
  br label %21, !dbg !3504

; <label>:21:                                     ; preds = %20, %18
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !620, metadata !746), !dbg !3505
  %22 = icmp eq i8* %1, null, !dbg !3506
  br i1 %22, label %23, label %28, !dbg !3507

; <label>:23:                                     ; preds = %21
  %24 = load i8, i8* %0, align 1, !dbg !3508, !tbaa !914
  %25 = icmp eq i8 %24, 0, !dbg !3508
  br i1 %25, label %138, label %26, !dbg !3511

; <label>:26:                                     ; preds = %23
  %27 = tail call noalias i8* @xstrdup(i8* nonnull %0) #10, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !620, metadata !746), !dbg !3505
  br label %43, !dbg !3513

; <label>:28:                                     ; preds = %21
  %29 = ptrtoint i8* %1 to i64, !dbg !3514
  %30 = ptrtoint i8* %0 to i64, !dbg !3514
  %31 = sub i64 %29, %30, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !625, metadata !746), !dbg !3515
  %32 = icmp eq i64 %31, 0, !dbg !3516
  br i1 %32, label %37, label %33, !dbg !3518

; <label>:33:                                     ; preds = %28
  %34 = add i64 %31, 1, !dbg !3519
  %35 = tail call i8* @xmemdup(i8* %0, i64 %34) #10, !dbg !3521
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !620, metadata !746), !dbg !3505
  %36 = getelementptr inbounds i8, i8* %35, i64 %31, !dbg !3522
  store i8 0, i8* %36, align 1, !dbg !3523, !tbaa !914
  br label %37, !dbg !3524

; <label>:37:                                     ; preds = %28, %33
  %38 = phi i8* [ %35, %33 ], [ null, %28 ]
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !620, metadata !746), !dbg !3505
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3525
  %40 = load i8, i8* %39, align 1, !dbg !3526, !tbaa !914
  %41 = icmp eq i8 %40, 0, !dbg !3527
  %42 = select i1 %41, i8* null, i8* %39, !dbg !3528
  br label %43, !dbg !3528

; <label>:43:                                     ; preds = %26, %37
  %44 = phi i8* [ %38, %37 ], [ %27, %26 ]
  %45 = phi i8* [ %42, %37 ], [ null, %26 ], !dbg !3529
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !621, metadata !746), !dbg !3531
  %46 = icmp eq i8* %44, null, !dbg !3532
  br i1 %46, label %97, label %47, !dbg !3533

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* %44, align 1, !dbg !3534, !tbaa !914
  %49 = icmp eq i8 %48, 43, !dbg !3535
  br i1 %49, label %53, label %50, !dbg !3534

; <label>:50:                                     ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* nonnull %44), !dbg !3536
  tail call void @llvm.dbg.value(metadata %struct.passwd* %51, i64 0, metadata !600, metadata !746), !dbg !3538
  %52 = icmp eq %struct.passwd* %51, null, !dbg !3539
  br i1 %52, label %53, label %71, !dbg !3540

; <label>:53:                                     ; preds = %47, %50
  %54 = icmp ne i8* %1, null, !dbg !3541
  %55 = icmp eq i8* %45, null, !dbg !3542
  %56 = and i1 %54, %55, !dbg !3544
  br i1 %56, label %92, label %57, !dbg !3545

; <label>:57:                                     ; preds = %53
  %58 = bitcast i64* %7 to i8*, !dbg !3546
  call void @llvm.lifetime.start(i64 8, i8* nonnull %58) #10, !dbg !3546
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !633, metadata !988), !dbg !3547
  %59 = call i32 @xstrtoul(i8* nonnull %44, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.82, i64 0, i64 0)) #10, !dbg !3548
  %60 = icmp eq i32 %59, 0, !dbg !3550
  %61 = load i64, i64* %7, align 8, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !633, metadata !746), !dbg !3547
  %62 = icmp ult i64 %61, 4294967296, !dbg !3553
  %63 = and i1 %60, %62, !dbg !3554
  br i1 %63, label %64, label %67, !dbg !3554

; <label>:64:                                     ; preds = %57
  %65 = trunc i64 %61 to i32, !dbg !3555
  %66 = icmp eq i32 %65, -1, !dbg !3557
  br i1 %66, label %67, label %68, !dbg !3558

; <label>:67:                                     ; preds = %64, %57
  br label %68

; <label>:68:                                     ; preds = %64, %67
  %69 = phi i32 [ %10, %67 ], [ %65, %64 ]
  %70 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i64 0, i64 0), %67 ], [ null, %64 ]
  call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !599, metadata !746), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !623, metadata !746), !dbg !3486
  call void @llvm.lifetime.end(i64 8, i8* nonnull %58) #10, !dbg !3560
  br label %92

; <label>:71:                                     ; preds = %50
  %72 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2, !dbg !3561
  %73 = load i32, i32* %72, align 8, !dbg !3561, !tbaa !3562
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !623, metadata !746), !dbg !3486
  %74 = icmp eq i8* %45, null, !dbg !3563
  %75 = icmp ne i8* %1, null, !dbg !3564
  %76 = and i1 %75, %74, !dbg !3566
  br i1 %76, label %77, label %92, !dbg !3566

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !3567
  call void @llvm.lifetime.start(i64 21, i8* nonnull %78) #10, !dbg !3567
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !636, metadata !746), !dbg !3568
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3, !dbg !3569
  %80 = load i32, i32* %79, align 4, !dbg !3569, !tbaa !1026
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !624, metadata !746), !dbg !3493
  %81 = tail call %struct.group* @getgrgid(i32 %80) #10, !dbg !3570
  tail call void @llvm.dbg.value(metadata %struct.group* %81, i64 0, metadata !612, metadata !746), !dbg !3571
  %82 = icmp eq %struct.group* %81, null, !dbg !3572
  br i1 %82, label %86, label %83, !dbg !3572

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.group, %struct.group* %81, i64 0, i32 0, !dbg !3573
  %85 = load i8*, i8** %84, align 8, !dbg !3573, !tbaa !3575
  br label %89, !dbg !3576

; <label>:86:                                     ; preds = %77
  %87 = zext i32 %80 to i64, !dbg !3577
  %88 = call i8* @umaxtostr(i64 %87, i8* nonnull %78) #10, !dbg !3579
  br label %89, !dbg !3580

; <label>:89:                                     ; preds = %86, %83
  %90 = phi i8* [ %85, %83 ], [ %88, %86 ], !dbg !3581
  %91 = call noalias i8* @xstrdup(i8* %90) #10, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !622, metadata !746), !dbg !3484
  call void @endgrent() #10, !dbg !3584
  call void @llvm.lifetime.end(i64 21, i8* nonnull %78) #10, !dbg !3585
  br label %92, !dbg !3586

; <label>:92:                                     ; preds = %68, %53, %71, %89
  %93 = phi i8* [ %91, %89 ], [ null, %71 ], [ null, %53 ], [ null, %68 ]
  %94 = phi i32 [ %73, %89 ], [ %73, %71 ], [ %10, %53 ], [ %69, %68 ]
  %95 = phi i32 [ %80, %89 ], [ %15, %71 ], [ %15, %53 ], [ %15, %68 ]
  %96 = phi i8* [ null, %89 ], [ null, %71 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i64 0, i64 0), %53 ], [ %70, %68 ]
  call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !599, metadata !746), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !624, metadata !746), !dbg !3493
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !623, metadata !746), !dbg !3486
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !622, metadata !746), !dbg !3484
  call void @endpwent() #10, !dbg !3587
  br label %97, !dbg !3588

; <label>:97:                                     ; preds = %43, %92
  %98 = phi i8* [ %44, %92 ], [ null, %43 ]
  %99 = phi i8* [ %93, %92 ], [ null, %43 ]
  %100 = phi i32 [ %94, %92 ], [ %10, %43 ]
  %101 = phi i32 [ %95, %92 ], [ %15, %43 ]
  %102 = phi i8* [ %96, %92 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !599, metadata !746), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !624, metadata !746), !dbg !3493
  call void @llvm.dbg.value(metadata i32 %100, i64 0, metadata !623, metadata !746), !dbg !3486
  call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !622, metadata !746), !dbg !3484
  %103 = icmp ne i8* %45, null, !dbg !3589
  %104 = icmp eq i8* %102, null, !dbg !3590
  %105 = and i1 %103, %104, !dbg !3592
  br i1 %105, label %106, label %133, !dbg !3592

; <label>:106:                                    ; preds = %97
  %107 = load i8, i8* %45, align 1, !dbg !3593, !tbaa !914
  %108 = icmp eq i8 %107, 43, !dbg !3594
  br i1 %108, label %112, label %109, !dbg !3593

; <label>:109:                                    ; preds = %106
  %110 = call %struct.group* @getgrnam(i8* nonnull %45) #10, !dbg !3595
  call void @llvm.dbg.value(metadata %struct.group* %110, i64 0, metadata !612, metadata !746), !dbg !3571
  %111 = icmp eq %struct.group* %110, null, !dbg !3597
  br i1 %111, label %112, label %126, !dbg !3598

; <label>:112:                                    ; preds = %106, %109
  %113 = bitcast i64* %9 to i8*, !dbg !3599
  call void @llvm.lifetime.start(i64 8, i8* nonnull %113) #10, !dbg !3599
  call void @llvm.dbg.value(metadata i64* %9, i64 0, metadata !643, metadata !988), !dbg !3600
  %114 = call i32 @xstrtoul(i8* nonnull %45, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.82, i64 0, i64 0)) #10, !dbg !3601
  %115 = icmp eq i32 %114, 0, !dbg !3603
  %116 = load i64, i64* %9, align 8, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !643, metadata !746), !dbg !3600
  %117 = icmp ult i64 %116, 4294967296, !dbg !3606
  %118 = and i1 %115, %117, !dbg !3607
  br i1 %118, label %119, label %122, !dbg !3607

; <label>:119:                                    ; preds = %112
  %120 = trunc i64 %116 to i32, !dbg !3608
  %121 = icmp eq i32 %120, -1, !dbg !3610
  br i1 %121, label %122, label %123, !dbg !3611

; <label>:122:                                    ; preds = %119, %112
  br label %123

; <label>:123:                                    ; preds = %119, %122
  %124 = phi i32 [ %101, %122 ], [ %120, %119 ]
  %125 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.85, i64 0, i64 0), %122 ], [ null, %119 ]
  call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !599, metadata !746), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !624, metadata !746), !dbg !3493
  call void @llvm.lifetime.end(i64 8, i8* nonnull %113) #10, !dbg !3613
  br label %129, !dbg !3614

; <label>:126:                                    ; preds = %109
  %127 = getelementptr inbounds %struct.group, %struct.group* %110, i64 0, i32 2, !dbg !3615
  %128 = load i32, i32* %127, align 8, !dbg !3615, !tbaa !1316
  call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !624, metadata !746), !dbg !3493
  br label %129

; <label>:129:                                    ; preds = %126, %123
  %130 = phi i32 [ %124, %123 ], [ %128, %126 ]
  %131 = phi i8* [ %125, %123 ], [ null, %126 ]
  call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !599, metadata !746), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !624, metadata !746), !dbg !3493
  call void @endgrent() #10, !dbg !3616
  %132 = call noalias i8* @xstrdup(i8* %45) #10, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !622, metadata !746), !dbg !3484
  br label %133, !dbg !3618

; <label>:133:                                    ; preds = %129, %97
  %134 = phi i8* [ %132, %129 ], [ %99, %97 ]
  %135 = phi i32 [ %130, %129 ], [ %101, %97 ]
  %136 = phi i8* [ %131, %129 ], [ %102, %97 ]
  call void @llvm.dbg.value(metadata i8* %136, i64 0, metadata !599, metadata !746), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !624, metadata !746), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !622, metadata !746), !dbg !3484
  %137 = icmp eq i8* %136, null, !dbg !3619
  br i1 %137, label %138, label %149, !dbg !3621

; <label>:138:                                    ; preds = %23, %133
  %139 = phi i32 [ %135, %133 ], [ %15, %23 ]
  %140 = phi i8* [ %134, %133 ], [ null, %23 ]
  %141 = phi i8* [ %98, %133 ], [ null, %23 ]
  %142 = phi i32 [ %100, %133 ], [ %10, %23 ]
  store i32 %142, i32* %2, align 4, !dbg !3622, !tbaa !875
  br i1 %11, label %143, label %144, !dbg !3624

; <label>:143:                                    ; preds = %138
  store i32 %139, i32* %3, align 4, !dbg !3625, !tbaa !875
  br label %144, !dbg !3627

; <label>:144:                                    ; preds = %143, %138
  br i1 %16, label %145, label %146, !dbg !3628

; <label>:145:                                    ; preds = %144
  store i8* %141, i8** %4, align 8, !dbg !3629, !tbaa !754
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !620, metadata !746), !dbg !3505
  br label %146, !dbg !3632

; <label>:146:                                    ; preds = %145, %144
  %147 = phi i8* [ null, %145 ], [ %141, %144 ]
  call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !620, metadata !746), !dbg !3505
  br i1 %19, label %148, label %149, !dbg !3633

; <label>:148:                                    ; preds = %146
  store i8* %140, i8** %5, align 8, !dbg !3634, !tbaa !754
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !622, metadata !746), !dbg !3484
  br label %149, !dbg !3637

; <label>:149:                                    ; preds = %146, %148, %133
  %150 = phi i1 [ true, %148 ], [ true, %146 ], [ false, %133 ]
  %151 = phi i8* [ null, %148 ], [ null, %146 ], [ %136, %133 ]
  %152 = phi i8* [ %147, %148 ], [ %147, %146 ], [ %98, %133 ]
  %153 = phi i8* [ null, %148 ], [ %140, %146 ], [ %134, %133 ]
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !622, metadata !746), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !620, metadata !746), !dbg !3505
  call void @free(i8* %152) #10, !dbg !3638
  call void @free(i8* %153) #10, !dbg !3639
  br i1 %150, label %156, label %154, !dbg !3640

; <label>:154:                                    ; preds = %149
  %155 = call i8* @dcgettext(i8* null, i8* nonnull %151, i32 5) #10, !dbg !3641
  br label %156, !dbg !3642

; <label>:156:                                    ; preds = %149, %154
  %157 = phi i8* [ %155, %154 ], [ null, %149 ], !dbg !3643
  ret i8* %157, !dbg !3644
}

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

declare void @endgrent() local_unnamed_addr #3

declare void @endpwent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3645 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3703, metadata !746), !dbg !3709
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3704, metadata !746), !dbg !3710
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3705, metadata !746), !dbg !3711
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3706, metadata !746), !dbg !3712
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3707, metadata !746), !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3708, metadata !746), !dbg !3714
  %7 = icmp eq i8* %1, null, !dbg !3715
  br i1 %7, label %10, label %8, !dbg !3717

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3718
  br label %12, !dbg !3718

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3719
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i32 5) #10, !dbg !3720
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3721
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.89, i64 0, i64 0), i32 5) #10, !dbg !3723
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3724
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
  ], !dbg !3725

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3726
  unreachable, !dbg !3726

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.90, i64 0, i64 0), i32 5) #10, !dbg !3728
  %20 = load i8*, i8** %4, align 8, !dbg !3728, !tbaa !754
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3729
  br label %146, !dbg !3731

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.91, i64 0, i64 0), i32 5) #10, !dbg !3732
  %24 = load i8*, i8** %4, align 8, !dbg !3732, !tbaa !754
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3732
  %26 = load i8*, i8** %25, align 8, !dbg !3732, !tbaa !754
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3733
  br label %146, !dbg !3734

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.92, i64 0, i64 0), i32 5) #10, !dbg !3735
  %30 = load i8*, i8** %4, align 8, !dbg !3735, !tbaa !754
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3735
  %32 = load i8*, i8** %31, align 8, !dbg !3735, !tbaa !754
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3735
  %34 = load i8*, i8** %33, align 8, !dbg !3735, !tbaa !754
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3736
  br label %146, !dbg !3737

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.93, i64 0, i64 0), i32 5) #10, !dbg !3738
  %38 = load i8*, i8** %4, align 8, !dbg !3738, !tbaa !754
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3738
  %40 = load i8*, i8** %39, align 8, !dbg !3738, !tbaa !754
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3738
  %42 = load i8*, i8** %41, align 8, !dbg !3738, !tbaa !754
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3738
  %44 = load i8*, i8** %43, align 8, !dbg !3738, !tbaa !754
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3739
  br label %146, !dbg !3740

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.94, i64 0, i64 0), i32 5) #10, !dbg !3741
  %48 = load i8*, i8** %4, align 8, !dbg !3741, !tbaa !754
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3741
  %50 = load i8*, i8** %49, align 8, !dbg !3741, !tbaa !754
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3741
  %52 = load i8*, i8** %51, align 8, !dbg !3741, !tbaa !754
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3741
  %54 = load i8*, i8** %53, align 8, !dbg !3741, !tbaa !754
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3741
  %56 = load i8*, i8** %55, align 8, !dbg !3741, !tbaa !754
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3742
  br label %146, !dbg !3743

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.95, i64 0, i64 0), i32 5) #10, !dbg !3744
  %60 = load i8*, i8** %4, align 8, !dbg !3744, !tbaa !754
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3744
  %62 = load i8*, i8** %61, align 8, !dbg !3744, !tbaa !754
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3744
  %64 = load i8*, i8** %63, align 8, !dbg !3744, !tbaa !754
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3744
  %66 = load i8*, i8** %65, align 8, !dbg !3744, !tbaa !754
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3744
  %68 = load i8*, i8** %67, align 8, !dbg !3744, !tbaa !754
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3744
  %70 = load i8*, i8** %69, align 8, !dbg !3744, !tbaa !754
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3745
  br label %146, !dbg !3746

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.96, i64 0, i64 0), i32 5) #10, !dbg !3747
  %74 = load i8*, i8** %4, align 8, !dbg !3747, !tbaa !754
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3747
  %76 = load i8*, i8** %75, align 8, !dbg !3747, !tbaa !754
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3747
  %78 = load i8*, i8** %77, align 8, !dbg !3747, !tbaa !754
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3747
  %80 = load i8*, i8** %79, align 8, !dbg !3747, !tbaa !754
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3747
  %82 = load i8*, i8** %81, align 8, !dbg !3747, !tbaa !754
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3747
  %84 = load i8*, i8** %83, align 8, !dbg !3747, !tbaa !754
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3747
  %86 = load i8*, i8** %85, align 8, !dbg !3747, !tbaa !754
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3748
  br label %146, !dbg !3749

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.97, i64 0, i64 0), i32 5) #10, !dbg !3750
  %90 = load i8*, i8** %4, align 8, !dbg !3750, !tbaa !754
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3750
  %92 = load i8*, i8** %91, align 8, !dbg !3750, !tbaa !754
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3750
  %94 = load i8*, i8** %93, align 8, !dbg !3750, !tbaa !754
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3750
  %96 = load i8*, i8** %95, align 8, !dbg !3750, !tbaa !754
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3750
  %98 = load i8*, i8** %97, align 8, !dbg !3750, !tbaa !754
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3750
  %100 = load i8*, i8** %99, align 8, !dbg !3750, !tbaa !754
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3750
  %102 = load i8*, i8** %101, align 8, !dbg !3750, !tbaa !754
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3750
  %104 = load i8*, i8** %103, align 8, !dbg !3750, !tbaa !754
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3751
  br label %146, !dbg !3752

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.98, i64 0, i64 0), i32 5) #10, !dbg !3753
  %108 = load i8*, i8** %4, align 8, !dbg !3753, !tbaa !754
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3753
  %110 = load i8*, i8** %109, align 8, !dbg !3753, !tbaa !754
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3753
  %112 = load i8*, i8** %111, align 8, !dbg !3753, !tbaa !754
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3753
  %114 = load i8*, i8** %113, align 8, !dbg !3753, !tbaa !754
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3753
  %116 = load i8*, i8** %115, align 8, !dbg !3753, !tbaa !754
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3753
  %118 = load i8*, i8** %117, align 8, !dbg !3753, !tbaa !754
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3753
  %120 = load i8*, i8** %119, align 8, !dbg !3753, !tbaa !754
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3753
  %122 = load i8*, i8** %121, align 8, !dbg !3753, !tbaa !754
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3753
  %124 = load i8*, i8** %123, align 8, !dbg !3753, !tbaa !754
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3754
  br label %146, !dbg !3755

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.99, i64 0, i64 0), i32 5) #10, !dbg !3756
  %128 = load i8*, i8** %4, align 8, !dbg !3756, !tbaa !754
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3756
  %130 = load i8*, i8** %129, align 8, !dbg !3756, !tbaa !754
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3756
  %132 = load i8*, i8** %131, align 8, !dbg !3756, !tbaa !754
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3756
  %134 = load i8*, i8** %133, align 8, !dbg !3756, !tbaa !754
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3756
  %136 = load i8*, i8** %135, align 8, !dbg !3756, !tbaa !754
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3756
  %138 = load i8*, i8** %137, align 8, !dbg !3756, !tbaa !754
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3756
  %140 = load i8*, i8** %139, align 8, !dbg !3756, !tbaa !754
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3756
  %142 = load i8*, i8** %141, align 8, !dbg !3756, !tbaa !754
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3756
  %144 = load i8*, i8** %143, align 8, !dbg !3756, !tbaa !754
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3757
  br label %146, !dbg !3758

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3759
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3760 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3764, metadata !746), !dbg !3770
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3765, metadata !746), !dbg !3771
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3766, metadata !746), !dbg !3772
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3767, metadata !746), !dbg !3773
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3768, metadata !746), !dbg !3774
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3769, metadata !746), !dbg !3775
  br label %6, !dbg !3776

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3769, metadata !746), !dbg !3775
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3778
  %9 = load i8*, i8** %8, align 8, !dbg !3778, !tbaa !754
  %10 = icmp eq i8* %9, null, !dbg !3781
  %11 = add i64 %7, 1, !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3769, metadata !746), !dbg !3775
  br i1 %10, label %12, label %6, !dbg !3781, !llvm.loop !3785

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3788
  ret void, !dbg !3789
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3790 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3801, metadata !746), !dbg !3809
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3802, metadata !746), !dbg !3810
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3803, metadata !746), !dbg !3811
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3804, metadata !746), !dbg !3812
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3805, metadata !746), !dbg !3813
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3814
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3814
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3807, metadata !746), !dbg !3815
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3806, metadata !746), !dbg !3816
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3817
  %12 = icmp ult i32 %11, 41, !dbg !3817
  br i1 %12, label %13, label %18, !dbg !3817

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3821
  %15 = sext i32 %11 to i64, !dbg !3821
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3821
  %17 = add i32 %11, 8, !dbg !3821
  store i32 %17, i32* %8, align 8, !dbg !3821
  br label %21, !dbg !3821

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3823
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3823
  store i8* %20, i8** %10, align 8, !dbg !3823
  br label %21, !dbg !3823

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3817
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3825
  %25 = load i8*, i8** %24, align 8, !dbg !3825
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3827
  store i8* %25, i8** %26, align 16, !dbg !3828, !tbaa !754
  %27 = icmp eq i8* %25, null, !dbg !3829
  br i1 %27, label %30, label %28, !dbg !3830

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %29 = icmp ult i32 %22, 41, !dbg !3817
  br i1 %29, label %35, label %32, !dbg !3817

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3832
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3833
  ret void, !dbg !3833

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3823
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3823
  store i8* %34, i8** %10, align 8, !dbg !3823
  br label %40, !dbg !3823

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3821
  %37 = sext i32 %22 to i64, !dbg !3821
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3821
  %39 = add i32 %22, 8, !dbg !3821
  store i32 %39, i32* %8, align 8, !dbg !3821
  br label %40, !dbg !3821

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3817
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3825
  %44 = load i8*, i8** %43, align 8, !dbg !3825
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3827
  store i8* %44, i8** %45, align 8, !dbg !3828, !tbaa !754
  %46 = icmp eq i8* %44, null, !dbg !3829
  br i1 %46, label %30, label %47, !dbg !3830

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %48 = icmp ult i32 %41, 41, !dbg !3817
  br i1 %48, label %52, label %49, !dbg !3817

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3823
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3823
  store i8* %51, i8** %10, align 8, !dbg !3823
  br label %57, !dbg !3823

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3821
  %54 = sext i32 %41 to i64, !dbg !3821
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3821
  %56 = add i32 %41, 8, !dbg !3821
  store i32 %56, i32* %8, align 8, !dbg !3821
  br label %57, !dbg !3821

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3817
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3825
  %61 = load i8*, i8** %60, align 8, !dbg !3825
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3827
  store i8* %61, i8** %62, align 16, !dbg !3828, !tbaa !754
  %63 = icmp eq i8* %61, null, !dbg !3829
  br i1 %63, label %30, label %64, !dbg !3830

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %65 = icmp ult i32 %58, 41, !dbg !3817
  br i1 %65, label %69, label %66, !dbg !3817

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3823
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3823
  store i8* %68, i8** %10, align 8, !dbg !3823
  br label %74, !dbg !3823

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3821
  %71 = sext i32 %58 to i64, !dbg !3821
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3821
  %73 = add i32 %58, 8, !dbg !3821
  store i32 %73, i32* %8, align 8, !dbg !3821
  br label %74, !dbg !3821

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3817
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3825
  %78 = load i8*, i8** %77, align 8, !dbg !3825
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3827
  store i8* %78, i8** %79, align 8, !dbg !3828, !tbaa !754
  %80 = icmp eq i8* %78, null, !dbg !3829
  br i1 %80, label %30, label %81, !dbg !3830

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %82 = icmp ult i32 %75, 41, !dbg !3817
  br i1 %82, label %86, label %83, !dbg !3817

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3823
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3823
  store i8* %85, i8** %10, align 8, !dbg !3823
  br label %91, !dbg !3823

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3821
  %88 = sext i32 %75 to i64, !dbg !3821
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3821
  %90 = add i32 %75, 8, !dbg !3821
  store i32 %90, i32* %8, align 8, !dbg !3821
  br label %91, !dbg !3821

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3817
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3825
  %95 = load i8*, i8** %94, align 8, !dbg !3825
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3827
  store i8* %95, i8** %96, align 16, !dbg !3828, !tbaa !754
  %97 = icmp eq i8* %95, null, !dbg !3829
  br i1 %97, label %30, label %98, !dbg !3830

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %99 = icmp ult i32 %92, 41, !dbg !3817
  br i1 %99, label %103, label %100, !dbg !3817

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3823
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3823
  store i8* %102, i8** %10, align 8, !dbg !3823
  br label %108, !dbg !3823

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3821
  %105 = sext i32 %92 to i64, !dbg !3821
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3821
  %107 = add i32 %92, 8, !dbg !3821
  store i32 %107, i32* %8, align 8, !dbg !3821
  br label %108, !dbg !3821

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3825
  %111 = load i8*, i8** %110, align 8, !dbg !3825
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3827
  store i8* %111, i8** %112, align 8, !dbg !3828, !tbaa !754
  %113 = icmp eq i8* %111, null, !dbg !3829
  br i1 %113, label %30, label %114, !dbg !3830

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %115 = load i8*, i8** %10, align 8, !dbg !3823
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3823
  store i8* %116, i8** %10, align 8, !dbg !3823
  %117 = bitcast i8* %115 to i8**, !dbg !3825
  %118 = load i8*, i8** %117, align 8, !dbg !3825
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3827
  store i8* %118, i8** %119, align 16, !dbg !3828, !tbaa !754
  %120 = icmp eq i8* %118, null, !dbg !3829
  br i1 %120, label %30, label %121, !dbg !3830

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %122 = load i8*, i8** %10, align 8, !dbg !3823
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3823
  store i8* %123, i8** %10, align 8, !dbg !3823
  %124 = bitcast i8* %122 to i8**, !dbg !3825
  %125 = load i8*, i8** %124, align 8, !dbg !3825
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3827
  store i8* %125, i8** %126, align 8, !dbg !3828, !tbaa !754
  %127 = icmp eq i8* %125, null, !dbg !3829
  br i1 %127, label %30, label %128, !dbg !3830

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %129 = load i8*, i8** %10, align 8, !dbg !3823
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3823
  store i8* %130, i8** %10, align 8, !dbg !3823
  %131 = bitcast i8* %129 to i8**, !dbg !3825
  %132 = load i8*, i8** %131, align 8, !dbg !3825
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3827
  store i8* %132, i8** %133, align 16, !dbg !3828, !tbaa !754
  %134 = icmp eq i8* %132, null, !dbg !3829
  br i1 %134, label %30, label %135, !dbg !3830

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %136 = load i8*, i8** %10, align 8, !dbg !3823
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3823
  store i8* %137, i8** %10, align 8, !dbg !3823
  %138 = bitcast i8* %136 to i8**, !dbg !3825
  %139 = load i8*, i8** %138, align 8, !dbg !3825
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3827
  store i8* %139, i8** %140, align 8, !dbg !3828, !tbaa !754
  %141 = icmp eq i8* %139, null, !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3806, metadata !746), !dbg !3816
  %142 = select i1 %141, i64 9, i64 10, !dbg !3830
  br label %30, !dbg !3830
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3834 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3838, metadata !746), !dbg !3848
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3839, metadata !746), !dbg !3849
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3840, metadata !746), !dbg !3850
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3841, metadata !746), !dbg !3851
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3852
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3852
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3842, metadata !746), !dbg !3853
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3854
  call void @llvm.va_start(i8* nonnull %6), !dbg !3854
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3855
  call void @llvm.va_end(i8* nonnull %6), !dbg !3856
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3857
  ret void, !dbg !3857
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3858 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.102, i64 0, i64 0), i32 5) #10, !dbg !3859
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.103, i64 0, i64 0)) #10, !dbg !3860
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.104, i64 0, i64 0), i32 5) #10, !dbg !3862
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.105, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.106, i64 0, i64 0)) #10, !dbg !3863
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.107, i64 0, i64 0), i32 5) #10, !dbg !3864
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3864, !tbaa !754
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3865
  ret void, !dbg !3866
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3867 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3871, metadata !746), !dbg !3873
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3872, metadata !746), !dbg !3874
  %3 = udiv i64 9223372036854775807, %1, !dbg !3875
  %4 = icmp ult i64 %3, %0, !dbg !3875
  br i1 %4, label %5, label %6, !dbg !3877

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3878
  unreachable, !dbg !3878

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3879
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3880, metadata !746) #10, !dbg !3887
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3889
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3886, metadata !746) #10, !dbg !3890
  %9 = icmp eq i8* %8, null, !dbg !3891
  %10 = icmp ne i64 %7, 0, !dbg !3893
  %11 = and i1 %10, %9, !dbg !3895
  br i1 %11, label %12, label %13, !dbg !3895

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3896
  unreachable, !dbg !3896

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3897
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3881 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3880, metadata !746), !dbg !3898
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3899
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3886, metadata !746), !dbg !3900
  %3 = icmp eq i8* %2, null, !dbg !3901
  %4 = icmp ne i64 %0, 0, !dbg !3902
  %5 = and i1 %4, %3, !dbg !3903
  br i1 %5, label %6, label %7, !dbg !3903

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3904
  unreachable, !dbg !3904

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3905
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3906 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3910, metadata !746), !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3911, metadata !746), !dbg !3914
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3912, metadata !746), !dbg !3915
  %4 = udiv i64 9223372036854775807, %2, !dbg !3916
  %5 = icmp ult i64 %4, %1, !dbg !3916
  br i1 %5, label %6, label %7, !dbg !3918

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3919
  unreachable, !dbg !3919

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3920
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3921, metadata !746) #10, !dbg !3927
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3926, metadata !746) #10, !dbg !3929
  %9 = icmp eq i64 %8, 0, !dbg !3930
  %10 = icmp ne i8* %0, null, !dbg !3932
  %11 = and i1 %10, %9, !dbg !3934
  br i1 %11, label %12, label %13, !dbg !3934

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3935
  br label %19, !dbg !3937

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3938
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3921, metadata !746) #10, !dbg !3927
  %15 = icmp eq i8* %14, null, !dbg !3939
  %16 = icmp ne i64 %8, 0, !dbg !3941
  %17 = and i1 %16, %15, !dbg !3943
  br i1 %17, label %18, label %19, !dbg !3943

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3944
  unreachable, !dbg !3944

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3945
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3922 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3921, metadata !746), !dbg !3946
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3926, metadata !746), !dbg !3947
  %3 = icmp eq i64 %1, 0, !dbg !3948
  %4 = icmp ne i8* %0, null, !dbg !3949
  %5 = and i1 %4, %3, !dbg !3950
  br i1 %5, label %6, label %7, !dbg !3950

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3951
  br label %13, !dbg !3952

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3953
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3921, metadata !746), !dbg !3946
  %9 = icmp eq i8* %8, null, !dbg !3954
  %10 = icmp ne i64 %1, 0, !dbg !3955
  %11 = and i1 %10, %9, !dbg !3956
  br i1 %11, label %12, label %13, !dbg !3956

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3957
  unreachable, !dbg !3957

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3958
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !664 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !666, metadata !746), !dbg !3959
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !667, metadata !746), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !668, metadata !746), !dbg !3961
  %4 = load i64, i64* %1, align 8, !dbg !3962, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !669, metadata !746), !dbg !3963
  %5 = icmp eq i8* %0, null, !dbg !3964
  br i1 %5, label %6, label %13, !dbg !3966

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3967
  br i1 %7, label %8, label %17, !dbg !3970

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3971
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !669, metadata !746), !dbg !3963
  %10 = icmp ugt i64 %2, 128, !dbg !3973
  %11 = zext i1 %10 to i64, !dbg !3973
  %12 = add nuw nsw i64 %9, %11, !dbg !3974
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !669, metadata !746), !dbg !3963
  br label %17, !dbg !3975

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3976
  %15 = icmp ugt i64 %14, %4, !dbg !3979
  br i1 %15, label %20, label %16, !dbg !3980

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3981
  unreachable, !dbg !3981

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !669, metadata !746), !dbg !3963
  store i64 %18, i64* %1, align 8, !dbg !3982, !tbaa !883
  %19 = mul i64 %18, %2, !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3921, metadata !746) #10, !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3926, metadata !746) #10, !dbg !3986
  br label %27, !dbg !3987

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3988
  %22 = add i64 %4, 1, !dbg !3989
  %23 = add i64 %22, %21, !dbg !3990
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !669, metadata !746), !dbg !3963
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !669, metadata !746), !dbg !3963
  store i64 %23, i64* %1, align 8, !dbg !3982, !tbaa !883
  %24 = mul i64 %23, %2, !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3921, metadata !746) #10, !dbg !3984
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3926, metadata !746) #10, !dbg !3986
  %25 = icmp eq i64 %24, 0, !dbg !3991
  br i1 %25, label %26, label %27, !dbg !3987

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3992
  br label %34, !dbg !3993

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3994
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3921, metadata !746) #10, !dbg !3984
  %30 = icmp eq i8* %29, null, !dbg !3995
  %31 = icmp ne i64 %28, 0, !dbg !3996
  %32 = and i1 %31, %30, !dbg !3997
  br i1 %32, label %33, label %34, !dbg !3997

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3998
  unreachable, !dbg !3998

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3999
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4000 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4002, metadata !746), !dbg !4003
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3880, metadata !746) #10, !dbg !4004
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4006
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3886, metadata !746) #10, !dbg !4007
  %3 = icmp eq i8* %2, null, !dbg !4008
  %4 = icmp ne i64 %0, 0, !dbg !4009
  %5 = and i1 %4, %3, !dbg !4010
  br i1 %5, label %6, label %7, !dbg !4010

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4011
  unreachable, !dbg !4011

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4012
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4013 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4017, metadata !746), !dbg !4019
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4018, metadata !746), !dbg !4020
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !666, metadata !746) #10, !dbg !4021
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !667, metadata !746) #10, !dbg !4023
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !668, metadata !746) #10, !dbg !4024
  %3 = load i64, i64* %1, align 8, !dbg !4025, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !669, metadata !746) #10, !dbg !4026
  %4 = icmp eq i8* %0, null, !dbg !4027
  br i1 %4, label %5, label %8, !dbg !4028

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !669, metadata !746) #10, !dbg !4026
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !669, metadata !746) #10, !dbg !4026
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !669, metadata !746) #10, !dbg !4026
  store i64 %7, i64* %1, align 8, !dbg !4031, !tbaa !883
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3921, metadata !746) #10, !dbg !4032
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3926, metadata !746) #10, !dbg !4034
  br label %17, !dbg !4035

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4036
  br i1 %9, label %11, label %10, !dbg !4037

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4038
  unreachable, !dbg !4038

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4039
  %13 = add i64 %3, 1, !dbg !4040
  %14 = add i64 %13, %12, !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !669, metadata !746) #10, !dbg !4026
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !669, metadata !746) #10, !dbg !4026
  store i64 %14, i64* %1, align 8, !dbg !4031, !tbaa !883
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3921, metadata !746) #10, !dbg !4032
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3926, metadata !746) #10, !dbg !4034
  %15 = icmp eq i64 %14, 0, !dbg !4042
  br i1 %15, label %16, label %17, !dbg !4035

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4043
  br label %24, !dbg !4044

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4045
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3921, metadata !746) #10, !dbg !4032
  %20 = icmp eq i8* %19, null, !dbg !4046
  %21 = icmp ne i64 %18, 0, !dbg !4047
  %22 = and i1 %21, %20, !dbg !4048
  br i1 %22, label %23, label %24, !dbg !4048

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4049
  unreachable, !dbg !4049

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4050
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4051 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4053, metadata !746), !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3880, metadata !746) #10, !dbg !4055
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4057
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3886, metadata !746) #10, !dbg !4058
  %3 = icmp eq i8* %2, null, !dbg !4059
  %4 = icmp ne i64 %0, 0, !dbg !4060
  %5 = and i1 %4, %3, !dbg !4061
  br i1 %5, label %6, label %7, !dbg !4061

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4062
  unreachable, !dbg !4062

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4063
  ret i8* %2, !dbg !4064
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4065 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4067, metadata !746), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4068, metadata !746), !dbg !4071
  %3 = udiv i64 9223372036854775807, %1, !dbg !4072
  %4 = icmp ult i64 %3, %0, !dbg !4072
  br i1 %4, label %8, label %5, !dbg !4074

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4075
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4069, metadata !746), !dbg !4077
  %7 = icmp eq i8* %6, null, !dbg !4078
  br i1 %7, label %8, label %9, !dbg !4079

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4081
  unreachable, !dbg !4081

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4082
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4083 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4087, metadata !746), !dbg !4089
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4088, metadata !746), !dbg !4090
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3880, metadata !746) #10, !dbg !4091
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4093
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3886, metadata !746) #10, !dbg !4094
  %4 = icmp eq i8* %3, null, !dbg !4095
  %5 = icmp ne i64 %1, 0, !dbg !4096
  %6 = and i1 %5, %4, !dbg !4097
  br i1 %6, label %7, label %8, !dbg !4097

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4098
  unreachable, !dbg !4098

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4099
  ret i8* %3, !dbg !4100
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4101 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4103, metadata !746), !dbg !4104
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4105
  %3 = add i64 %2, 1, !dbg !4106
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4087, metadata !746) #10, !dbg !4107
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4088, metadata !746) #10, !dbg !4110
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3880, metadata !746) #10, !dbg !4111
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4113
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3886, metadata !746) #10, !dbg !4114
  %5 = icmp eq i8* %4, null, !dbg !4115
  %6 = icmp ne i64 %3, 0, !dbg !4116
  %7 = and i1 %6, %5, !dbg !4117
  br i1 %7, label %8, label %9, !dbg !4117

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4118
  unreachable, !dbg !4118

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4119
  ret i8* %4, !dbg !4120
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4121 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4123, !tbaa !875
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.120, i64 0, i64 0), i32 5) #10, !dbg !4124
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i8* %2) #10, !dbg !4125
  tail call void @abort() #14, !dbg !4127
  unreachable, !dbg !4127
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xgetgroups(i8*, i32, i32**) local_unnamed_addr #6 !dbg !4128 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4131, metadata !746), !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4132, metadata !746), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !4133, metadata !746), !dbg !4137
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #10, !dbg !4138
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4134, metadata !746), !dbg !4139
  %5 = icmp eq i32 %4, -1, !dbg !4140
  br i1 %5, label %6, label %11, !dbg !4142

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #1, !dbg !4143
  %8 = load i32, i32* %7, align 4, !dbg !4143, !tbaa !875
  %9 = icmp eq i32 %8, 12, !dbg !4145
  br i1 %9, label %10, label %11, !dbg !4146

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4148
  unreachable, !dbg !4148

; <label>:11:                                     ; preds = %6, %3
  ret i32 %4, !dbg !4149
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4150 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4157, metadata !746), !dbg !4175
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4158, metadata !746), !dbg !4176
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4159, metadata !746), !dbg !4177
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4160, metadata !746), !dbg !4178
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4161, metadata !746), !dbg !4179
  %7 = bitcast i8** %6 to i8*, !dbg !4180
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4165, metadata !746), !dbg !4181
  %8 = icmp ult i32 %2, 37, !dbg !4182
  br i1 %8, label %10, label %9, !dbg !4182

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.126, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.127, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #14, !dbg !4185
  unreachable, !dbg !4185

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4187
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4163, metadata !746), !dbg !4188
  %12 = tail call i32* @__errno_location() #1, !dbg !4189
  store i32 0, i32* %12, align 4, !dbg !4190, !tbaa !875
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4166, metadata !746), !dbg !4191
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !4192
  %14 = load i16*, i16** %13, align 8, !tbaa !754
  br label %15, !dbg !4194

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !914
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4169, metadata !746), !dbg !4195
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4166, metadata !746), !dbg !4191
  %18 = zext i8 %17 to i64, !dbg !4192
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4192
  %20 = load i16, i16* %19, align 2, !dbg !4192, !tbaa !1300
  %21 = and i16 %20, 8192, !dbg !4192
  %22 = icmp eq i16 %21, 0, !dbg !4196
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4197
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4166, metadata !746), !dbg !4191
  br i1 %22, label %24, label %15, !dbg !4196, !llvm.loop !4198

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !4187
  %26 = icmp eq i8 %17, 45, !dbg !4200
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #10, !dbg !4202
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4164, metadata !746), !dbg !4203
  %29 = load i8*, i8** %25, align 8, !dbg !4204, !tbaa !754
  %30 = icmp eq i8* %29, %0, !dbg !4206
  br i1 %30, label %31, label %40, !dbg !4207

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4208
  br i1 %32, label %265, label %33, !dbg !4211

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4212, !tbaa !914
  %35 = icmp eq i8 %34, 0, !dbg !4212
  br i1 %35, label %265, label %36, !dbg !4214

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4212
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !4215
  %39 = icmp eq i8* %38, null, !dbg !4215
  br i1 %39, label %265, label %47, !dbg !4217

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4219, !tbaa !875
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4221

; <label>:42:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4165, metadata !746), !dbg !4181
  br label %43, !dbg !4222

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4165, metadata !746), !dbg !4181
  %45 = icmp eq i8* %4, null, !dbg !4224
  br i1 %45, label %46, label %47, !dbg !4226

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4164, metadata !746), !dbg !4203
  store i64 %28, i64* %3, align 8, !dbg !4227, !tbaa !883
  br label %265, !dbg !4229

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4230, !tbaa !914
  %51 = icmp eq i8 %50, 0, !dbg !4231
  br i1 %51, label %262, label %52, !dbg !4232

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !4230
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4170, metadata !746), !dbg !4233
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4173, metadata !746), !dbg !4234
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !4235
  %55 = icmp eq i8* %54, null, !dbg !4235
  br i1 %55, label %56, label %58, !dbg !4238

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4164, metadata !746), !dbg !4203
  store i64 %49, i64* %3, align 8, !dbg !4240, !tbaa !883
  %57 = or i32 %48, 2, !dbg !4242
  br label %265, !dbg !4243

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
  ], !dbg !4244

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !4245
  %61 = icmp eq i8* %60, null, !dbg !4245
  br i1 %61, label %72, label %62, !dbg !4249

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4251
  %64 = load i8, i8* %63, align 1, !dbg !4251, !tbaa !914
  %65 = sext i8 %64 to i32, !dbg !4251
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4252

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4253
  %68 = load i8, i8* %67, align 1, !dbg !4253, !tbaa !914
  %69 = icmp eq i8 %68, 66, !dbg !4256
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4173, metadata !746), !dbg !4234
  %70 = select i1 %69, i64 3, i64 1, !dbg !4257
  br label %72, !dbg !4257

; <label>:71:                                     ; preds = %62, %62
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4170, metadata !746), !dbg !4233
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4173, metadata !746), !dbg !4234
  br label %72, !dbg !4258

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
  ], !dbg !4259

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4260, metadata !746), !dbg !4266
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4269
  %77 = shl i64 %49, 9, !dbg !4271
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4272
  %79 = zext i1 %76 to i32, !dbg !4272
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4174, metadata !746), !dbg !4273
  br label %253, !dbg !4274

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4260, metadata !746), !dbg !4275
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4277
  %82 = shl i64 %49, 10, !dbg !4278
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4279
  %84 = zext i1 %81 to i32, !dbg !4279
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4174, metadata !746), !dbg !4273
  br label %253, !dbg !4280

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4289
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4291
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4289
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4292
  %88 = mul i64 %49, %73, !dbg !4294
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4295
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  %90 = icmp ult i64 %86, %89, !dbg !4292
  %91 = mul i64 %89, %73, !dbg !4294
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4295
  %93 = or i1 %90, %87, !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  %94 = icmp ult i64 %86, %92, !dbg !4292
  %95 = mul i64 %92, %73, !dbg !4294
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4295
  %97 = or i1 %94, %93, !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  %98 = icmp ult i64 %86, %96, !dbg !4292
  %99 = mul i64 %96, %73, !dbg !4294
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4295
  %101 = or i1 %98, %97, !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  %102 = icmp ult i64 %86, %100, !dbg !4292
  %103 = mul i64 %100, %73, !dbg !4294
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4295
  %105 = or i1 %102, %101, !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  %106 = icmp ult i64 %86, %104, !dbg !4292
  %107 = mul i64 %104, %73, !dbg !4294
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4295
  %109 = or i1 %106, %105, !dbg !4296
  %110 = zext i1 %109 to i32, !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4289
  br label %253, !dbg !4273

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4297
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4299
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4299
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4297
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4300
  %114 = mul i64 %49, %73, !dbg !4302
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4303
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4281, metadata !746), !dbg !4297
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4281, metadata !746), !dbg !4297
  %116 = icmp ult i64 %112, %115, !dbg !4300
  %117 = mul i64 %115, %73, !dbg !4302
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4303
  %119 = or i1 %116, %113, !dbg !4304
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4281, metadata !746), !dbg !4297
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4281, metadata !746), !dbg !4297
  %120 = icmp ult i64 %112, %118, !dbg !4300
  %121 = mul i64 %118, %73, !dbg !4302
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4303
  %123 = or i1 %120, %119, !dbg !4304
  %124 = zext i1 %123 to i32, !dbg !4304
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4281, metadata !746), !dbg !4297
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4281, metadata !746), !dbg !4297
  br label %253, !dbg !4273

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4281, metadata !746), !dbg !4305
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4307
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4307
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4281, metadata !746), !dbg !4305
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4308
  %128 = mul i64 %49, %73, !dbg !4310
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4311
  %130 = zext i1 %127 to i32, !dbg !4311
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4288, metadata !746), !dbg !4307
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4288, metadata !746), !dbg !4307
  br label %253, !dbg !4273

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4281, metadata !746), !dbg !4312
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4314
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4314
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4281, metadata !746), !dbg !4312
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4315
  %134 = mul i64 %49, %73, !dbg !4317
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4318
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4281, metadata !746), !dbg !4312
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4281, metadata !746), !dbg !4312
  %136 = icmp ult i64 %132, %135, !dbg !4315
  %137 = mul i64 %135, %73, !dbg !4317
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4318
  %139 = or i1 %136, %133, !dbg !4319
  %140 = zext i1 %139 to i32, !dbg !4319
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4281, metadata !746), !dbg !4312
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4281, metadata !746), !dbg !4312
  br label %253, !dbg !4273

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4322
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4322
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4281, metadata !746), !dbg !4320
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4323
  %144 = mul i64 %49, %73, !dbg !4325
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4326
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  %146 = icmp ult i64 %142, %145, !dbg !4323
  %147 = mul i64 %145, %73, !dbg !4325
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4326
  %149 = or i1 %146, %143, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  %150 = icmp ult i64 %142, %148, !dbg !4323
  %151 = mul i64 %148, %73, !dbg !4325
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4326
  %153 = or i1 %150, %149, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  %154 = icmp ult i64 %142, %152, !dbg !4323
  %155 = mul i64 %152, %73, !dbg !4325
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4326
  %157 = or i1 %154, %153, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  %158 = icmp ult i64 %142, %156, !dbg !4323
  %159 = mul i64 %156, %73, !dbg !4325
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4326
  %161 = or i1 %158, %157, !dbg !4327
  %162 = zext i1 %161 to i32, !dbg !4327
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4320
  br label %253, !dbg !4273

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4328
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4330
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4330
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4281, metadata !746), !dbg !4328
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4331
  %166 = mul i64 %49, %73, !dbg !4333
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4334
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4328
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4328
  %168 = icmp ult i64 %164, %167, !dbg !4331
  %169 = mul i64 %167, %73, !dbg !4333
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4334
  %171 = or i1 %168, %165, !dbg !4335
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4328
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4328
  %172 = icmp ult i64 %164, %170, !dbg !4331
  %173 = mul i64 %170, %73, !dbg !4333
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4334
  %175 = or i1 %172, %171, !dbg !4335
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4328
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4328
  %176 = icmp ult i64 %164, %174, !dbg !4331
  %177 = mul i64 %174, %73, !dbg !4333
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4334
  %179 = or i1 %176, %175, !dbg !4335
  %180 = zext i1 %179 to i32, !dbg !4335
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4328
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4281, metadata !746), !dbg !4328
  br label %253, !dbg !4273

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4260, metadata !746), !dbg !4336
  %182 = icmp slt i64 %49, 0, !dbg !4338
  %183 = shl i64 %49, 1, !dbg !4339
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4340
  %185 = lshr i64 %49, 63, !dbg !4340
  %186 = trunc i64 %185 to i32, !dbg !4340
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4174, metadata !746), !dbg !4273
  br label %253, !dbg !4341

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4344
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4344
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4281, metadata !746), !dbg !4342
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4345
  %190 = mul i64 %49, %73, !dbg !4347
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4348
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  %192 = icmp ult i64 %188, %191, !dbg !4345
  %193 = mul i64 %191, %73, !dbg !4347
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4348
  %195 = or i1 %192, %189, !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  %196 = icmp ult i64 %188, %194, !dbg !4345
  %197 = mul i64 %194, %73, !dbg !4347
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4348
  %199 = or i1 %196, %195, !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  %200 = icmp ult i64 %188, %198, !dbg !4345
  %201 = mul i64 %198, %73, !dbg !4347
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4348
  %203 = or i1 %200, %199, !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  %204 = icmp ult i64 %188, %202, !dbg !4345
  %205 = mul i64 %202, %73, !dbg !4347
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4348
  %207 = or i1 %204, %203, !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  %208 = icmp ult i64 %188, %206, !dbg !4345
  %209 = mul i64 %206, %73, !dbg !4347
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4348
  %211 = or i1 %208, %207, !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  %212 = icmp ult i64 %188, %210, !dbg !4345
  %213 = mul i64 %210, %73, !dbg !4347
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4348
  %215 = or i1 %212, %211, !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  %216 = icmp ult i64 %188, %214, !dbg !4345
  %217 = mul i64 %214, %73, !dbg !4347
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4348
  %219 = or i1 %216, %215, !dbg !4349
  %220 = zext i1 %219 to i32, !dbg !4349
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4342
  br label %253, !dbg !4273

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4352
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4288, metadata !746), !dbg !4352
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4281, metadata !746), !dbg !4350
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4353
  %224 = mul i64 %49, %73, !dbg !4355
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4356
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  %226 = icmp ult i64 %222, %225, !dbg !4353
  %227 = mul i64 %225, %73, !dbg !4355
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4356
  %229 = or i1 %226, %223, !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  %230 = icmp ult i64 %222, %228, !dbg !4353
  %231 = mul i64 %228, %73, !dbg !4355
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4356
  %233 = or i1 %230, %229, !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  %234 = icmp ult i64 %222, %232, !dbg !4353
  %235 = mul i64 %232, %73, !dbg !4355
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4356
  %237 = or i1 %234, %233, !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  %238 = icmp ult i64 %222, %236, !dbg !4353
  %239 = mul i64 %236, %73, !dbg !4355
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4356
  %241 = or i1 %238, %237, !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  %242 = icmp ult i64 %222, %240, !dbg !4353
  %243 = mul i64 %240, %73, !dbg !4355
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4356
  %245 = or i1 %242, %241, !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  %246 = icmp ult i64 %222, %244, !dbg !4353
  %247 = mul i64 %244, %73, !dbg !4355
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4356
  %249 = or i1 %246, %245, !dbg !4357
  %250 = zext i1 %249 to i32, !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4281, metadata !746), !dbg !4350
  br label %253, !dbg !4273

; <label>:251:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4164, metadata !746), !dbg !4203
  store i64 %49, i64* %3, align 8, !dbg !4358, !tbaa !883
  %252 = or i32 %48, 2, !dbg !4359
  br label %265, !dbg !4360

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  tail call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4174, metadata !746), !dbg !4273
  %256 = or i32 %255, %48, !dbg !4361
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4165, metadata !746), !dbg !4181
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4362
  store i8* %257, i8** %25, align 8, !dbg !4362, !tbaa !754
  %258 = load i8, i8* %257, align 1, !dbg !4363, !tbaa !914
  %259 = icmp eq i8 %258, 0, !dbg !4363
  %260 = or i32 %256, 2, !dbg !4365
  tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4165, metadata !746), !dbg !4181
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4366
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4165, metadata !746), !dbg !4181
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4165, metadata !746), !dbg !4181
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4165, metadata !746), !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4164, metadata !746), !dbg !4203
  store i64 %263, i64* %3, align 8, !dbg !4367, !tbaa !883
  br label %265, !dbg !4368

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !4369
  ret i32 %266, !dbg !4369
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4370 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4373, metadata !746), !dbg !4379
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4374, metadata !746), !dbg !4380
  %3 = icmp eq i64 %0, 0, !dbg !4381
  %4 = icmp eq i64 %1, 0, !dbg !4382
  %5 = or i1 %3, %4, !dbg !4384
  br i1 %5, label %12, label %6, !dbg !4384

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4385
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4376, metadata !746), !dbg !4386
  %8 = udiv i64 %7, %1, !dbg !4387
  %9 = icmp eq i64 %8, %0, !dbg !4389
  br i1 %9, label %12, label %10, !dbg !4390

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4391
  store i32 12, i32* %11, align 4, !dbg !4393, !tbaa !875
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4373, metadata !746), !dbg !4379
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4374, metadata !746), !dbg !4380
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4394
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4375, metadata !746), !dbg !4395
  br label %16, !dbg !4396

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4397
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4398 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4415, metadata !746), !dbg !4424
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4416, metadata !746), !dbg !4425
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4417, metadata !746), !dbg !4426
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4418, metadata !746), !dbg !4427
  %6 = bitcast i32* %5 to i8*, !dbg !4428
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4428
  %7 = icmp eq i32* %0, null, !dbg !4429
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4415, metadata !746), !dbg !4424
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4431
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4415, metadata !746), !dbg !4424
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4432
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4419, metadata !746), !dbg !4433
  %10 = icmp ugt i64 %9, -3, !dbg !4434
  %11 = icmp ne i64 %2, 0, !dbg !4435
  %12 = and i1 %11, %10, !dbg !4437
  br i1 %12, label %13, label %18, !dbg !4437

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4438
  br i1 %14, label %18, label %15, !dbg !4440

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4442, !tbaa !914
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4421, metadata !746), !dbg !4443
  %17 = zext i8 %16 to i32, !dbg !4444
  store i32 %17, i32* %8, align 4, !dbg !4445, !tbaa !875
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4446
  ret i64 %19, !dbg !4446
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4447 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4492, metadata !746), !dbg !4497
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4498
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4499, metadata !746), !dbg !4503
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4505
  %4 = load i32, i32* %3, align 8, !dbg !4505, !tbaa !4506
  %5 = and i32 %4, 32, !dbg !4505
  %6 = icmp eq i32 %5, 0, !dbg !4508
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4509
  %8 = icmp ne i32 %7, 0, !dbg !4510
  br i1 %6, label %9, label %19, !dbg !4511

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4513
  %11 = icmp ne i64 %2, 0, !dbg !4513
  %12 = or i1 %11, %10, !dbg !4513
  %13 = sext i1 %8 to i32, !dbg !4513
  br i1 %12, label %22, label %14, !dbg !4513

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4515
  %16 = load i32, i32* %15, align 4, !dbg !4515, !tbaa !875
  %17 = icmp ne i32 %16, 9, !dbg !4517
  %18 = sext i1 %17 to i32, !dbg !4517
  br label %22, !dbg !4517

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4519

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4521
  store i32 0, i32* %21, align 4, !dbg !4523, !tbaa !875
  br label %22, !dbg !4521

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4524
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4525 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4530, metadata !746), !dbg !4550
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4531, metadata !746), !dbg !4551
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4552
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4532, metadata !746), !dbg !4553
  %3 = icmp eq i8* %2, null, !dbg !4554
  br i1 %3, label %15, label %4, !dbg !4555

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4540, metadata !746), !dbg !4556
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4541, metadata !746), !dbg !4557
  %5 = load i8, i8* %2, align 1, !dbg !4558, !tbaa !914
  %6 = icmp eq i8 %5, 67, !dbg !4560
  br i1 %6, label %7, label %11, !dbg !4563

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4565
  %9 = load i8, i8* %8, align 1, !dbg !4565, !tbaa !914
  %10 = icmp eq i8 %9, 0, !dbg !4568
  br i1 %10, label %14, label %11, !dbg !4570

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4546, metadata !746), !dbg !4572
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0)) #10, !dbg !4573
  %13 = icmp eq i32 %12, 0, !dbg !4575
  br i1 %13, label %14, label %15, !dbg !4577

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4531, metadata !746), !dbg !4551
  br label %15, !dbg !4579

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4580
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !4581 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4586, metadata !746), !dbg !4589
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4587, metadata !746), !dbg !4590
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !4591
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4588, metadata !746), !dbg !4592
  store i8 0, i8* %3, align 1, !dbg !4593, !tbaa !914
  br label %4, !dbg !4594

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4588, metadata !746), !dbg !4592
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4586, metadata !746), !dbg !4589
  %7 = urem i64 %5, 10, !dbg !4595
  %8 = trunc i64 %7 to i8, !dbg !4598
  %9 = or i8 %8, 48, !dbg !4598
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4599
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4588, metadata !746), !dbg !4592
  store i8 %9, i8* %10, align 1, !dbg !4600, !tbaa !914
  %11 = udiv i64 %5, 10, !dbg !4601
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4586, metadata !746), !dbg !4589
  %12 = icmp ugt i64 %5, 9, !dbg !4602
  br i1 %12, label %4, label %13, !dbg !4603, !llvm.loop !4605

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4588, metadata !746), !dbg !4592
  ret i8* %10, !dbg !4608
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4609 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4621, metadata !746), !dbg !4695
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4688, metadata !746), !dbg !4697
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4698
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4613, metadata !746), !dbg !4699
  %4 = icmp eq i8* %3, null, !dbg !4700
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.141, i64 0, i64 0), i8* %3, !dbg !4702
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4613, metadata !746), !dbg !4699
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4703, !tbaa !754
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4635, metadata !746) #10, !dbg !4704
  %7 = icmp eq i8* %6, null, !dbg !4705
  br i1 %7, label %8, label %127, !dbg !4706

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.142, i64 0, i64 0)) #10, !dbg !4707
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4636, metadata !746) #10, !dbg !4708
  %10 = icmp eq i8* %9, null, !dbg !4709
  br i1 %10, label %14, label %11, !dbg !4711

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4712, !tbaa !914
  %13 = icmp eq i8 %12, 0, !dbg !4714
  br i1 %13, label %14, label %15, !dbg !4715

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4717

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.143, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4636, metadata !746) #10, !dbg !4708
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4718
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4639, metadata !746) #10, !dbg !4719
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4641, metadata !746) #10, !dbg !4720
  %18 = icmp eq i64 %17, 0, !dbg !4721
  br i1 %18, label %24, label %19, !dbg !4722

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4723
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4723
  %22 = load i8, i8* %21, align 1, !dbg !4723, !tbaa !914
  %23 = icmp ne i8 %22, 47, !dbg !4725
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4726
  %27 = add i64 %17, 14, !dbg !4727
  %28 = add i64 %27, %26, !dbg !4728
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4729
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4638, metadata !746) #10, !dbg !4730
  %30 = icmp eq i8* %29, null, !dbg !4731
  br i1 %30, label %125, label %31, !dbg !4731

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4732
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4735

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4736, !tbaa !914
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4738
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.144, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4739
  br label %37, !dbg !4740

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4738
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.144, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4739
  br label %37, !dbg !4740

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4741
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4643, metadata !746) #10, !dbg !4742
  %39 = icmp slt i32 %38, 0, !dbg !4743
  br i1 %39, label %123, label %40, !dbg !4744

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.145, i64 0, i64 0)) #10, !dbg !4745
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4644, metadata !746) #10, !dbg !4746
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4747
  br i1 %42, label %48, label %43, !dbg !4748

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4749

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4750
  br label %123, !dbg !4752

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4685, metadata !746) #10, !dbg !4749
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4686, metadata !746) #10, !dbg !4753
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4754
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4755
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4756, metadata !746) #10, !dbg !4761
  %53 = load i8*, i8** %46, align 8, !dbg !4763, !tbaa !4764
  %54 = load i8*, i8** %47, align 8, !dbg !4763, !tbaa !4765
  %55 = icmp ult i8* %53, %54, !dbg !4763
  br i1 %55, label %58, label %56, !dbg !4763, !prof !4766

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4767
  br label %62, !dbg !4767

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4769
  store i8* %59, i8** %46, align 8, !dbg !4769, !tbaa !4764
  %60 = load i8, i8* %53, align 1, !dbg !4769, !tbaa !914
  %61 = zext i8 %60 to i32, !dbg !4769
  br label %62, !dbg !4769

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4771
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4687, metadata !746) #10, !dbg !4773
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4774

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4775

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4756, metadata !746) #10, !dbg !4775
  %66 = load i8*, i8** %46, align 8, !dbg !4779, !tbaa !4764
  %67 = load i8*, i8** %47, align 8, !dbg !4779, !tbaa !4765
  %68 = icmp ult i8* %66, %67, !dbg !4779
  br i1 %68, label %71, label %69, !dbg !4779, !prof !4766

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4780
  br label %75, !dbg !4780

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4781
  store i8* %72, i8** %46, align 8, !dbg !4781, !tbaa !4764
  %73 = load i8, i8* %66, align 1, !dbg !4781, !tbaa !914
  %74 = zext i8 %73 to i32, !dbg !4781
  br label %75, !dbg !4781

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4782
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4687, metadata !746) #10, !dbg !4773
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4783, !llvm.loop !4785

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4788
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.146, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4789
  %80 = icmp slt i32 %79, 2, !dbg !4791
  br i1 %80, label %115, label %81, !dbg !4792

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4793
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4692, metadata !746) #10, !dbg !4794
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4795
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4693, metadata !746) #10, !dbg !4796
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4694, metadata !746) #10, !dbg !4797
  %84 = icmp eq i64 %51, 0, !dbg !4798
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4800

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4686, metadata !746) #10, !dbg !4753
  %89 = add i64 %86, 2, !dbg !4801
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4803
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4685, metadata !746) #10, !dbg !4749
  br label %95, !dbg !4804

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4805
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4686, metadata !746) #10, !dbg !4753
  %93 = add i64 %92, 1, !dbg !4807
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4808
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4685, metadata !746) #10, !dbg !4749
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4685, metadata !746) #10, !dbg !4749
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4686, metadata !746) #10, !dbg !4753
  %98 = icmp eq i8* %97, null, !dbg !4809
  br i1 %98, label %99, label %100, !dbg !4811

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4686, metadata !746) #10, !dbg !4753
  call void @free(i8* %52) #10, !dbg !4812
  br label %116, !dbg !4814

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4815
  %102 = xor i64 %83, -1, !dbg !4816
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4816
  %104 = xor i64 %82, -1, !dbg !4817
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4817
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4818, metadata !746) #10, !dbg !4827
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4826, metadata !746) #10, !dbg !4827
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4829
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4830
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4818, metadata !746) #10, !dbg !4831
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4826, metadata !746) #10, !dbg !4831
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4833
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4834
  br label %111, !dbg !4835

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4749

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4685, metadata !746) #10, !dbg !4749
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4686, metadata !746) #10, !dbg !4753
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4835
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4835
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4749

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4749

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4685, metadata !746) #10, !dbg !4749
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4686, metadata !746) #10, !dbg !4753
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4835
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4835
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4836
  %120 = icmp eq i64 %117, 0, !dbg !4837
  br i1 %120, label %123, label %121, !dbg !4839

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4840
  store i8 0, i8* %122, align 1, !dbg !4842, !tbaa !914
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4635, metadata !746) #10, !dbg !4704
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.141, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.141, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.141, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4635, metadata !746) #10, !dbg !4704
  call void @free(i8* %29) #10, !dbg !4843
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.141, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4635, metadata !746) #10, !dbg !4704
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4844, !tbaa !754
  br label %127, !dbg !4845

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4614, metadata !746), !dbg !4846
  %129 = load i8, i8* %128, align 1, !dbg !4847, !tbaa !914
  %130 = icmp eq i8 %129, 0, !dbg !4848
  br i1 %130, label %157, label %131, !dbg !4849

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4851

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4851
  %136 = icmp eq i32 %135, 0, !dbg !4852
  br i1 %136, label %143, label %137, !dbg !4853

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4854
  br i1 %138, label %139, label %147, !dbg !4856

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4857
  %141 = load i8, i8* %140, align 1, !dbg !4857, !tbaa !914
  %142 = icmp eq i8 %141, 0, !dbg !4859
  br i1 %142, label %143, label %147, !dbg !4860

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4862
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4864
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4865
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4613, metadata !746), !dbg !4699
  br label %157, !dbg !4866

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4867
  %149 = add i64 %148, 1, !dbg !4868
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4869
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4614, metadata !746), !dbg !4846
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4870
  %152 = add i64 %151, 1, !dbg !4871
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4872
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4614, metadata !746), !dbg !4846
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4614, metadata !746), !dbg !4846
  %154 = load i8, i8* %153, align 1, !dbg !4847, !tbaa !914
  %155 = icmp eq i8 %154, 0, !dbg !4848
  br i1 %155, label %156, label %132, !dbg !4849, !llvm.loop !4873

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4699

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4613, metadata !746), !dbg !4699
  %159 = load i8, i8* %158, align 1, !dbg !4876, !tbaa !914
  %160 = icmp eq i8 %159, 0, !dbg !4878
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.147, i64 0, i64 0), i8* %158, !dbg !4879
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4613, metadata !746), !dbg !4699
  ret i8* %161, !dbg !4880
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

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @mgetgroups(i8*, i32, i32** nocapture) local_unnamed_addr #6 !dbg !700 {
  %4 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !705, metadata !746), !dbg !4881
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !706, metadata !746), !dbg !4882
  tail call void @llvm.dbg.value(metadata i32** %2, i64 0, metadata !707, metadata !746), !dbg !4883
  %5 = bitcast i32* %4 to i8*, !dbg !4884
  call void @llvm.lifetime.start(i64 4, i8* nonnull %5) #10, !dbg !4884
  %6 = icmp eq i8* %0, null, !dbg !4885
  br i1 %6, label %44, label %7, !dbg !4886

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !708, metadata !746), !dbg !4887
  store i32 10, i32* %4, align 4, !dbg !4888, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4889, metadata !746) #10, !dbg !4895
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !4894, metadata !746) #10, !dbg !4897
  %8 = tail call i8* @realloc(i8* null, i64 40) #10, !dbg !4898
  %9 = icmp eq i8* %8, null, !dbg !4899
  br i1 %9, label %122, label %10, !dbg !4901

; <label>:10:                                     ; preds = %7
  br label %11, !dbg !4898

; <label>:11:                                     ; preds = %10, %39
  %12 = phi i32 [ %40, %39 ], [ 10, %10 ], !dbg !4902
  %13 = phi i8* [ %30, %39 ], [ %8, %10 ]
  %14 = bitcast i8* %13 to i32*, !dbg !4898
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !710, metadata !746), !dbg !4903
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !708, metadata !746), !dbg !4887
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !715, metadata !746), !dbg !4904
  call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !708, metadata !988), !dbg !4887
  %15 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %14, i32* nonnull %4) #10, !dbg !4905
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !709, metadata !746), !dbg !4906
  %16 = icmp slt i32 %15, 0, !dbg !4907
  %17 = load i32, i32* %4, align 4, !tbaa !875
  %18 = icmp eq i32 %12, %17, !dbg !4909
  %19 = and i1 %16, %18, !dbg !4911
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !708, metadata !746), !dbg !4887
  br i1 %19, label %20, label %22, !dbg !4911

; <label>:20:                                     ; preds = %11
  %21 = shl nsw i32 %12, 1, !dbg !4912
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !708, metadata !746), !dbg !4887
  store i32 %21, i32* %4, align 4, !dbg !4912, !tbaa !875
  br label %22, !dbg !4913

; <label>:22:                                     ; preds = %11, %20
  %23 = phi i32 [ %21, %20 ], [ %17, %11 ], !dbg !4914
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !708, metadata !746), !dbg !4887
  call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !4889, metadata !746) #10, !dbg !4915
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4894, metadata !746) #10, !dbg !4917
  %24 = icmp slt i32 %23, 0, !dbg !4918
  br i1 %24, label %25, label %27, !dbg !4920

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #1, !dbg !4921
  store i32 12, i32* %26, align 4, !dbg !4923, !tbaa !875
  br label %34, !dbg !4924

; <label>:27:                                     ; preds = %22
  %28 = sext i32 %23 to i64, !dbg !4914
  %29 = shl nsw i64 %28, 2, !dbg !4925
  %30 = call i8* @realloc(i8* nonnull %13, i64 %29) #10, !dbg !4926
  %31 = icmp eq i8* %30, null, !dbg !4927
  br i1 %31, label %32, label %37, !dbg !4924

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #1, !dbg !4928
  br label %34, !dbg !4928

; <label>:34:                                     ; preds = %32, %25
  %35 = phi i32* [ %33, %32 ], [ %26, %25 ], !dbg !4928
  %36 = load i32, i32* %35, align 4, !dbg !4928, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !716, metadata !746), !dbg !4929
  call void @free(i8* nonnull %13) #10, !dbg !4930
  store i32 %36, i32* %35, align 4, !dbg !4931, !tbaa !875
  br label %122

; <label>:37:                                     ; preds = %27
  %38 = icmp sgt i32 %15, -1, !dbg !4932
  br i1 %38, label %41, label %39, !dbg !4934

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %4, align 4, !tbaa !875
  br label %11, !dbg !4934

; <label>:41:                                     ; preds = %37
  %42 = bitcast i32** %2 to i8**, !dbg !4935
  store i8* %30, i8** %42, align 8, !dbg !4935, !tbaa !754
  %43 = load i32, i32* %4, align 4, !dbg !4937, !tbaa !875
  call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !708, metadata !746), !dbg !4887
  br label %122, !dbg !4938

; <label>:44:                                     ; preds = %3
  %45 = tail call i32 @getgroups(i32 0, i32* null) #10, !dbg !4939
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !708, metadata !746), !dbg !4887
  store i32 %45, i32* %4, align 4, !dbg !4940, !tbaa !875
  %46 = icmp slt i32 %45, 0, !dbg !4942
  br i1 %46, label %47, label %59, !dbg !4944

; <label>:47:                                     ; preds = %44
  %48 = tail call i32* @__errno_location() #1, !dbg !4945
  %49 = load i32, i32* %48, align 4, !dbg !4945, !tbaa !875
  %50 = icmp eq i32 %49, 38, !dbg !4948
  br i1 %50, label %51, label %122, !dbg !4949

; <label>:51:                                     ; preds = %47
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4889, metadata !746) #10, !dbg !4950
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4894, metadata !746) #10, !dbg !4953
  %52 = tail call i8* @realloc(i8* null, i64 4) #10, !dbg !4954
  tail call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !710, metadata !746), !dbg !4903
  %53 = icmp eq i8* %52, null, !dbg !4955
  br i1 %53, label %122, label %54, !dbg !4956

; <label>:54:                                     ; preds = %51
  %55 = bitcast i8* %52 to i32*, !dbg !4954
  %56 = bitcast i32** %2 to i8**, !dbg !4958
  store i8* %52, i8** %56, align 8, !dbg !4958, !tbaa !754
  store i32 %1, i32* %55, align 4, !dbg !4960, !tbaa !875
  %57 = icmp ne i32 %1, -1, !dbg !4961
  %58 = zext i1 %57 to i32, !dbg !4961
  br label %122, !dbg !4962

; <label>:59:                                     ; preds = %44
  %60 = icmp eq i32 %45, 0, !dbg !4963
  %61 = icmp ne i32 %1, -1, !dbg !4965
  %62 = or i1 %61, %60, !dbg !4967
  br i1 %62, label %63, label %68, !dbg !4967

; <label>:63:                                     ; preds = %59
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !708, metadata !746), !dbg !4887
  %64 = add nsw i32 %45, 1, !dbg !4968
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !708, metadata !746), !dbg !4887
  store i32 %64, i32* %4, align 4, !dbg !4968, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !708, metadata !746), !dbg !4887
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !4889, metadata !746) #10, !dbg !4969
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !4894, metadata !746) #10, !dbg !4971
  %65 = icmp slt i32 %45, -1, !dbg !4972
  br i1 %65, label %66, label %68, !dbg !4973

; <label>:66:                                     ; preds = %63
  %67 = tail call i32* @__errno_location() #1, !dbg !4974
  store i32 12, i32* %67, align 4, !dbg !4975, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !710, metadata !746), !dbg !4903
  br label %122, !dbg !4976

; <label>:68:                                     ; preds = %59, %63
  %69 = phi i32 [ %64, %63 ], [ %45, %59 ]
  %70 = sext i32 %69 to i64, !dbg !4977
  %71 = shl nsw i64 %70, 2, !dbg !4978
  %72 = tail call i8* @realloc(i8* null, i64 %71) #10, !dbg !4979
  %73 = bitcast i8* %72 to i32*, !dbg !4979
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !710, metadata !746), !dbg !4903
  %74 = icmp eq i8* %72, null, !dbg !4980
  br i1 %74, label %122, label %75, !dbg !4976

; <label>:75:                                     ; preds = %68
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !708, metadata !746), !dbg !4887
  %76 = zext i1 %61 to i32, !dbg !4982
  %77 = sub nsw i32 %69, %76, !dbg !4983
  %78 = zext i1 %61 to i64, !dbg !4984
  %79 = getelementptr inbounds i32, i32* %73, i64 %78, !dbg !4984
  %80 = tail call i32 @getgroups(i32 %77, i32* %79) #10, !dbg !4985
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !709, metadata !746), !dbg !4906
  %81 = icmp slt i32 %80, 0, !dbg !4986
  br i1 %81, label %82, label %85, !dbg !4987

; <label>:82:                                     ; preds = %75
  %83 = tail call i32* @__errno_location() #1, !dbg !4988
  %84 = load i32, i32* %83, align 4, !dbg !4988, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !719, metadata !746), !dbg !4989
  tail call void @free(i8* nonnull %72) #10, !dbg !4990
  store i32 %84, i32* %83, align 4, !dbg !4991, !tbaa !875
  br label %122

; <label>:85:                                     ; preds = %75
  br i1 %61, label %86, label %88, !dbg !4992

; <label>:86:                                     ; preds = %85
  store i32 %1, i32* %73, align 4, !dbg !4994, !tbaa !875
  %87 = add nsw i32 %80, 1, !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !709, metadata !746), !dbg !4906
  br label %88, !dbg !4997

; <label>:88:                                     ; preds = %85, %86
  %89 = phi i32 [ %87, %86 ], [ %80, %85 ]
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !709, metadata !746), !dbg !4906
  %90 = bitcast i32** %2 to i8**, !dbg !4998
  store i8* %72, i8** %90, align 8, !dbg !4998, !tbaa !754
  %91 = icmp sgt i32 %89, 1, !dbg !4999
  br i1 %91, label %92, label %122, !dbg !5000

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %73, align 4, !dbg !5001, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !722, metadata !746), !dbg !5002
  %94 = sext i32 %89 to i64, !dbg !5003
  %95 = getelementptr inbounds i32, i32* %73, i64 %94, !dbg !5003
  tail call void @llvm.dbg.value(metadata i32* %95, i64 0, metadata !726, metadata !746), !dbg !5004
  %96 = getelementptr inbounds i8, i8* %72, i64 4
  %97 = bitcast i8* %96 to i32*
  tail call void @llvm.dbg.value(metadata i32* %97, i64 0, metadata !725, metadata !746), !dbg !5005
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !709, metadata !746), !dbg !4906
  tail call void @llvm.dbg.value(metadata i32* %73, i64 0, metadata !710, metadata !746), !dbg !4903
  %98 = icmp ult i32* %97, %95, !dbg !5006
  br i1 %98, label %99, label %122, !dbg !5010

; <label>:99:                                     ; preds = %92
  br label %100, !dbg !5010

; <label>:100:                                    ; preds = %99, %116
  %101 = phi i32 [ %108, %116 ], [ %93, %99 ]
  %102 = phi i32* [ %118, %116 ], [ %97, %99 ]
  %103 = phi i32 [ %107, %116 ], [ %89, %99 ]
  %104 = phi i32* [ %117, %116 ], [ %73, %99 ]
  br label %105, !dbg !5010

; <label>:105:                                    ; preds = %100, %112
  %106 = phi i32* [ %102, %100 ], [ %114, %112 ]
  %107 = phi i32 [ %103, %100 ], [ %113, %112 ]
  %108 = load i32, i32* %106, align 4, !dbg !5012, !tbaa !875
  %109 = icmp eq i32 %108, %93, !dbg !5015
  %110 = icmp eq i32 %108, %101, !dbg !5016
  %111 = or i1 %109, %110, !dbg !5018
  br i1 %111, label %112, label %116, !dbg !5018

; <label>:112:                                    ; preds = %105
  %113 = add nsw i32 %107, -1, !dbg !5019
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !709, metadata !746), !dbg !4906
  %114 = getelementptr inbounds i32, i32* %106, i64 1
  tail call void @llvm.dbg.value(metadata i32* %114, i64 0, metadata !725, metadata !746), !dbg !5005
  tail call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !709, metadata !746), !dbg !4906
  tail call void @llvm.dbg.value(metadata i32* %104, i64 0, metadata !710, metadata !746), !dbg !4903
  %115 = icmp ult i32* %114, %95, !dbg !5006
  br i1 %115, label %105, label %120, !dbg !5010, !llvm.loop !5020

; <label>:116:                                    ; preds = %105
  %117 = getelementptr inbounds i32, i32* %104, i64 1, !dbg !5023
  tail call void @llvm.dbg.value(metadata i32* %117, i64 0, metadata !710, metadata !746), !dbg !4903
  store i32 %108, i32* %117, align 4, !dbg !5024, !tbaa !875
  %118 = getelementptr inbounds i32, i32* %106, i64 1
  tail call void @llvm.dbg.value(metadata i32* %118, i64 0, metadata !725, metadata !746), !dbg !5005
  tail call void @llvm.dbg.value(metadata i32 %107, i64 0, metadata !709, metadata !746), !dbg !4906
  tail call void @llvm.dbg.value(metadata i32* %117, i64 0, metadata !710, metadata !746), !dbg !4903
  %119 = icmp ult i32* %118, %95, !dbg !5006
  br i1 %119, label %100, label %121, !dbg !5010, !llvm.loop !5020

; <label>:120:                                    ; preds = %112
  br label %122, !dbg !5025

; <label>:121:                                    ; preds = %116
  br label %122, !dbg !5025

; <label>:122:                                    ; preds = %121, %120, %92, %41, %34, %66, %88, %68, %47, %51, %7, %82, %54
  %123 = phi i32 [ %58, %54 ], [ -1, %82 ], [ -1, %7 ], [ -1, %51 ], [ -1, %47 ], [ -1, %68 ], [ %89, %88 ], [ -1, %66 ], [ %43, %41 ], [ -1, %34 ], [ %89, %92 ], [ %113, %120 ], [ %107, %121 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %5) #10, !dbg !5025
  ret i32 %123, !dbg !5025
}

declare i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5026 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5071, metadata !746), !dbg !5075
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5072, metadata !746), !dbg !5076
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5074, metadata !746), !dbg !5077
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5078
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5073, metadata !746), !dbg !5079
  %3 = icmp slt i32 %2, 0, !dbg !5080
  br i1 %3, label %4, label %6, !dbg !5082

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5083
  br label %24, !dbg !5084

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5085
  %8 = icmp eq i32 %7, 0, !dbg !5085
  br i1 %8, label %13, label %9, !dbg !5087

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5088
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5090
  %12 = icmp eq i64 %11, -1, !dbg !5092
  br i1 %12, label %16, label %13, !dbg !5093

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5094
  %15 = icmp eq i32 %14, 0, !dbg !5094
  br i1 %15, label %16, label %18, !dbg !5095

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5072, metadata !746), !dbg !5076
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5097
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5074, metadata !746), !dbg !5077
  br label %24, !dbg !5098

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5099
  %20 = load i32, i32* %19, align 4, !dbg !5099, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5072, metadata !746), !dbg !5076
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5072, metadata !746), !dbg !5076
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5097
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5074, metadata !746), !dbg !5077
  %22 = icmp eq i32 %20, 0, !dbg !5100
  br i1 %22, label %24, label %23, !dbg !5098

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5102, !tbaa !875
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5074, metadata !746), !dbg !5077
  br label %24, !dbg !5104

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5105
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5106 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5151, metadata !746), !dbg !5152
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5153
  br i1 %2, label %6, label %3, !dbg !5155

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5156
  %5 = icmp eq i32 %4, 0, !dbg !5156
  br i1 %5, label %6, label %8, !dbg !5158

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5160
  br label %17, !dbg !5161

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5162, metadata !746) #10, !dbg !5167
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5169
  %10 = load i32, i32* %9, align 8, !dbg !5169, !tbaa !4506
  %11 = and i32 %10, 256, !dbg !5171
  %12 = icmp eq i32 %11, 0, !dbg !5171
  br i1 %12, label %15, label %13, !dbg !5172

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5173
  br label %15, !dbg !5173

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5174
  br label %17, !dbg !5175

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5176
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5177 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5223, metadata !746), !dbg !5229
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5224, metadata !746), !dbg !5230
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5225, metadata !746), !dbg !5231
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5232
  %5 = load i8*, i8** %4, align 8, !dbg !5232, !tbaa !4765
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5233
  %7 = load i8*, i8** %6, align 8, !dbg !5233, !tbaa !4764
  %8 = icmp eq i8* %5, %7, !dbg !5234
  br i1 %8, label %9, label %28, !dbg !5235

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5236
  %11 = load i8*, i8** %10, align 8, !dbg !5236, !tbaa !5238
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5239
  %13 = load i8*, i8** %12, align 8, !dbg !5239, !tbaa !5240
  %14 = icmp eq i8* %11, %13, !dbg !5241
  br i1 %14, label %15, label %28, !dbg !5242

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5243
  %17 = load i8*, i8** %16, align 8, !dbg !5243, !tbaa !5244
  %18 = icmp eq i8* %17, null, !dbg !5245
  br i1 %18, label %19, label %28, !dbg !5246

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5248
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5249
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5226, metadata !746), !dbg !5251
  %22 = icmp eq i64 %21, -1, !dbg !5252
  br i1 %22, label %30, label %23, !dbg !5254

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5255
  %25 = load i32, i32* %24, align 8, !dbg !5256, !tbaa !4506
  %26 = and i32 %25, -17, !dbg !5256
  store i32 %26, i32* %24, align 8, !dbg !5256, !tbaa !4506
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5257
  store i64 %21, i64* %27, align 8, !dbg !5258, !tbaa !5259
  br label %30, !dbg !5260

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5261
  br label %30, !dbg !5262

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5263
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

!llvm.dbg.cu = !{!2, !142, !148, !157, !164, !171, !579, !652, !224, !660, !671, !673, !675, !679, !681, !684, !686, !689, !233, !695, !730, !732, !734}
!llvm.ident = !{!736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736}
!llvm.module.flags = !{!737, !738, !739, !740}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_opts", scope: !2, file: !3, line: 57, type: !128, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !98)
!3 = !DIFile(filename: "src/chroot.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !26, !34, !49}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 87, size: 32, elements: !21)
!20 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!23 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!24 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!25 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !27, line: 26, size: 32, elements: !28)
!27 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!30 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!31 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!32 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!33 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 46, size: 32, elements: !36)
!35 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!37 = !DIEnumerator(name: "_ISupper", value: 256)
!38 = !DIEnumerator(name: "_ISlower", value: 512)
!39 = !DIEnumerator(name: "_ISalpha", value: 1024)
!40 = !DIEnumerator(name: "_ISdigit", value: 2048)
!41 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!42 = !DIEnumerator(name: "_ISspace", value: 8192)
!43 = !DIEnumerator(name: "_ISprint", value: 16384)
!44 = !DIEnumerator(name: "_ISgraph", value: 32768)
!45 = !DIEnumerator(name: "_ISblank", value: 1)
!46 = !DIEnumerator(name: "_IScntrl", value: 2)
!47 = !DIEnumerator(name: "_ISpunct", value: 4)
!48 = !DIEnumerator(name: "_ISalnum", value: 8)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !51, file: !50, line: 192, size: 32, elements: !64)
!50 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!51 = distinct !DISubprogram(name: "x2nrealloc", scope: !50, file: !50, line: 180, type: !52, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !59)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !54, !55, !56}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 62, baseType: !58)
!57 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!58 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!59 = !{!60, !61, !62, !63}
!60 = !DILocalVariable(name: "p", arg: 1, scope: !51, file: !50, line: 180, type: !54)
!61 = !DILocalVariable(name: "pn", arg: 2, scope: !51, file: !50, line: 180, type: !55)
!62 = !DILocalVariable(name: "s", arg: 3, scope: !51, file: !50, line: 180, type: !56)
!63 = !DILocalVariable(name: "n", scope: !51, file: !50, line: 182, type: !56)
!64 = !{!65}
!65 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!66 = !{!67, !54, !69, !56, !70, !72, !75, !77, !82, !84, !85, !94}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !78, line: 80, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !80, line: 134, baseType: !81)
!80 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !78, line: 65, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !80, line: 135, baseType: !81)
!84 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !87, line: 42, size: 256, elements: !88)
!87 = !DIFile(filename: "/usr/include/grp.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!88 = !{!89, !90, !91, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !86, file: !87, line: 44, baseType: !67, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !86, file: !87, line: 45, baseType: !67, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !86, file: !87, line: 46, baseType: !83, size: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !86, file: !87, line: 47, baseType: !93, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !95, line: 270, baseType: !96)
!95 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !80, line: 195, baseType: !97)
!97 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!98 = !{!99, !0}
!99 = !DIGlobalVariableExpression(var: !100)
!100 = distinct !DIGlobalVariable(name: "infomap", scope: !101, file: !20, line: 632, type: !125, isLocal: true, isDefinition: true)
!101 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !20, file: !20, line: 630, type: !102, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !75}
!104 = !{!105, !106, !107, !114, !116, !117, !118, !121, !122, !124}
!105 = !DILocalVariable(name: "program", arg: 1, scope: !101, file: !20, line: 630, type: !75)
!106 = !DILocalVariable(name: "node", scope: !101, file: !20, line: 642, type: !75)
!107 = !DILocalVariable(name: "map_prog", scope: !101, file: !20, line: 643, type: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !101, file: !20, line: 632, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !110, file: !20, line: 632, baseType: !75, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !110, file: !20, line: 632, baseType: !75, size: 64, offset: 64)
!114 = !DILocalVariable(name: "__s1_len", scope: !115, file: !20, line: 645, type: !56)
!115 = distinct !DILexicalBlock(scope: !101, file: !20, line: 645, column: 33)
!116 = !DILocalVariable(name: "__s2_len", scope: !115, file: !20, line: 645, type: !56)
!117 = !DILocalVariable(name: "lc_messages", scope: !101, file: !20, line: 655, type: !75)
!118 = !DILocalVariable(name: "__s1_len", scope: !119, file: !20, line: 656, type: !56)
!119 = distinct !DILexicalBlock(scope: !120, file: !20, line: 656, column: 22)
!120 = distinct !DILexicalBlock(scope: !101, file: !20, line: 656, column: 7)
!121 = !DILocalVariable(name: "__s2_len", scope: !119, file: !20, line: 656, type: !56)
!122 = !DILocalVariable(name: "__s2", scope: !123, file: !20, line: 656, type: !72)
!123 = distinct !DILexicalBlock(scope: !119, file: !20, line: 656, column: 22)
!124 = !DILocalVariable(name: "__result", scope: !123, file: !20, line: 656, type: !69)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 896, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 7)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 1536, elements: !138)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !131, line: 104, size: 256, elements: !132)
!131 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!132 = !{!133, !134, !135, !137}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !131, line: 106, baseType: !75, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !130, file: !131, line: 109, baseType: !69, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !130, file: !131, line: 110, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !130, file: !131, line: 111, baseType: !69, size: 32, offset: 192)
!138 = !{!139}
!139 = !DISubrange(count: 6)
!140 = !DIGlobalVariableExpression(var: !141)
!141 = distinct !DIGlobalVariable(name: "Version", scope: !142, file: !143, line: 2, type: !75, isLocal: false, isDefinition: true)
!142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !143, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, globals: !145)
!143 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !{}
!145 = !{!140}
!146 = !DIGlobalVariableExpression(var: !147)
!147 = distinct !DIGlobalVariable(name: "file_name", scope: !148, file: !153, line: 36, type: !75, isLocal: true, isDefinition: true)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, globals: !150)
!149 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!150 = !{!146, !151}
!151 = !DIGlobalVariableExpression(var: !152)
!152 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !148, file: !153, line: 46, type: !154, isLocal: true, isDefinition: true)
!153 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!154 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "exit_failure", scope: !157, file: !160, line: 24, type: !161, isLocal: false, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, globals: !159)
!158 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!159 = !{!155}
!160 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "program_name", scope: !164, file: !168, line: 33, type: !75, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !166, globals: !167)
!165 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!166 = !{!54, !67}
!167 = !{!162}
!168 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !171, file: !183, line: 77, type: !218, isLocal: false, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !179, globals: !180)
!172 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!173 = !{!5, !174, !34}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!177 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!178 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!179 = !{!69, !84, !56, !67}
!180 = !{!169, !181, !188, !200, !202, !207, !214, !216}
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !171, file: !183, line: 93, type: !184, isLocal: false, isDefinition: true)
!183 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 320, elements: !186)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!186 = !{!187}
!187 = !DISubrange(count: 10)
!188 = !DIGlobalVariableExpression(var: !189)
!189 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !171, file: !183, line: 1043, type: !190, isLocal: false, isDefinition: true)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !183, line: 57, size: 448, elements: !191)
!191 = !{!192, !193, !194, !198, !199}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !190, file: !183, line: 60, baseType: !5, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !183, line: 63, baseType: !69, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !190, file: !183, line: 67, baseType: !195, size: 256, offset: 64)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !190, file: !183, line: 70, baseType: !75, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !190, file: !183, line: 73, baseType: !75, size: 64, offset: 384)
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !171, file: !183, line: 108, type: !190, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "slot0", scope: !171, file: !183, line: 834, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 2048, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 256)
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "slotvec", scope: !171, file: !183, line: 837, type: !209, isLocal: true, isDefinition: true)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !183, line: 826, size: 128, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !210, file: !183, line: 828, baseType: !56, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !210, file: !183, line: 829, baseType: !67, size: 64, offset: 64)
!214 = !DIGlobalVariableExpression(var: !215)
!215 = distinct !DIGlobalVariable(name: "nslots", scope: !171, file: !183, line: 835, type: !69, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217)
!217 = distinct !DIGlobalVariable(name: "slotvec0", scope: !171, file: !183, line: 836, type: !210, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 704, elements: !220)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!220 = !{!221}
!221 = !DISubrange(count: 11)
!222 = !DIGlobalVariableExpression(var: !223)
!223 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !224, file: !227, line: 26, type: !228, isLocal: false, isDefinition: true)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, globals: !226)
!225 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!226 = !{!222}
!227 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 376, elements: !229)
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
!574 = !{!54, !67, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!576 = !{!231}
!577 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!578 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !75)
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !581, retainedTypes: !582, globals: !583)
!580 = !DIFile(filename: "./lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!26}
!582 = !{!54, !77, !82}
!583 = !{!584, !648, !650}
!584 = !DIGlobalVariableExpression(var: !585)
!585 = distinct !DIGlobalVariable(name: "E_invalid_user", scope: !586, file: !587, line: 106, type: !75, isLocal: true, isDefinition: true)
!586 = distinct !DISubprogram(name: "parse_with_separator", scope: !587, file: !587, line: 102, type: !588, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !592)
!587 = !DIFile(filename: "lib/userspec.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!588 = !DISubroutineType(types: !589)
!589 = !{!75, !75, !75, !590, !591, !93, !93}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !612, !620, !621, !622, !623, !624, !625, !628, !633, !636, !643}
!593 = !DILocalVariable(name: "spec", arg: 1, scope: !586, file: !587, line: 102, type: !75)
!594 = !DILocalVariable(name: "separator", arg: 2, scope: !586, file: !587, line: 102, type: !75)
!595 = !DILocalVariable(name: "uid", arg: 3, scope: !586, file: !587, line: 103, type: !590)
!596 = !DILocalVariable(name: "gid", arg: 4, scope: !586, file: !587, line: 103, type: !591)
!597 = !DILocalVariable(name: "username", arg: 5, scope: !586, file: !587, line: 104, type: !93)
!598 = !DILocalVariable(name: "groupname", arg: 6, scope: !586, file: !587, line: 104, type: !93)
!599 = !DILocalVariable(name: "error_msg", scope: !586, file: !587, line: 110, type: !75)
!600 = !DILocalVariable(name: "pwd", scope: !586, file: !587, line: 111, type: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !603, line: 49, size: 384, elements: !604)
!603 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !{!605, !606, !607, !608, !609, !610, !611}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !602, file: !603, line: 51, baseType: !67, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !602, file: !603, line: 52, baseType: !67, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !602, file: !603, line: 53, baseType: !79, size: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !602, file: !603, line: 54, baseType: !83, size: 32, offset: 160)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !602, file: !603, line: 55, baseType: !67, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !602, file: !603, line: 56, baseType: !67, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !602, file: !603, line: 57, baseType: !67, size: 64, offset: 320)
!612 = !DILocalVariable(name: "grp", scope: !586, file: !587, line: 112, type: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !87, line: 42, size: 256, elements: !615)
!615 = !{!616, !617, !618, !619}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !614, file: !87, line: 44, baseType: !67, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !614, file: !87, line: 45, baseType: !67, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !614, file: !87, line: 46, baseType: !83, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !614, file: !87, line: 47, baseType: !93, size: 64, offset: 192)
!620 = !DILocalVariable(name: "u", scope: !586, file: !587, line: 113, type: !67)
!621 = !DILocalVariable(name: "g", scope: !586, file: !587, line: 114, type: !75)
!622 = !DILocalVariable(name: "gname", scope: !586, file: !587, line: 115, type: !67)
!623 = !DILocalVariable(name: "unum", scope: !586, file: !587, line: 116, type: !77)
!624 = !DILocalVariable(name: "gnum", scope: !586, file: !587, line: 117, type: !82)
!625 = !DILocalVariable(name: "ulen", scope: !626, file: !587, line: 137, type: !56)
!626 = distinct !DILexicalBlock(scope: !627, file: !587, line: 136, column: 5)
!627 = distinct !DILexicalBlock(scope: !586, file: !587, line: 130, column: 7)
!628 = !DILocalVariable(name: "use_login_group", scope: !629, file: !587, line: 164, type: !154)
!629 = distinct !DILexicalBlock(scope: !630, file: !587, line: 163, column: 9)
!630 = distinct !DILexicalBlock(scope: !631, file: !587, line: 162, column: 11)
!631 = distinct !DILexicalBlock(scope: !632, file: !587, line: 159, column: 5)
!632 = distinct !DILexicalBlock(scope: !586, file: !587, line: 158, column: 7)
!633 = !DILocalVariable(name: "tmp", scope: !634, file: !587, line: 173, type: !58)
!634 = distinct !DILexicalBlock(scope: !635, file: !587, line: 172, column: 13)
!635 = distinct !DILexicalBlock(scope: !629, file: !587, line: 165, column: 15)
!636 = !DILocalVariable(name: "buf", scope: !637, file: !587, line: 188, type: !640)
!637 = distinct !DILexicalBlock(scope: !638, file: !587, line: 185, column: 13)
!638 = distinct !DILexicalBlock(scope: !639, file: !587, line: 184, column: 15)
!639 = distinct !DILexicalBlock(scope: !630, file: !587, line: 182, column: 9)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 168, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 21)
!643 = !DILocalVariable(name: "tmp", scope: !644, file: !587, line: 205, type: !58)
!644 = distinct !DILexicalBlock(scope: !645, file: !587, line: 204, column: 9)
!645 = distinct !DILexicalBlock(scope: !646, file: !587, line: 203, column: 11)
!646 = distinct !DILexicalBlock(scope: !647, file: !587, line: 199, column: 5)
!647 = distinct !DILexicalBlock(scope: !586, file: !587, line: 198, column: 7)
!648 = !DIGlobalVariableExpression(var: !649)
!649 = distinct !DIGlobalVariable(name: "E_invalid_group", scope: !586, file: !587, line: 107, type: !75, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651)
!651 = distinct !DIGlobalVariable(name: "E_bad_spec", scope: !586, file: !587, line: 108, type: !75, isLocal: true, isDefinition: true)
!652 = distinct !DICompileUnit(language: DW_LANG_C99, file: !653, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !654, retainedTypes: !659)
!653 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = !{!655}
!655 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !656, line: 41, size: 32, elements: !657)
!656 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!657 = !{!658}
!658 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!659 = !{!54}
!660 = distinct !DICompileUnit(language: DW_LANG_C99, file: !661, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !662, retainedTypes: !670)
!661 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!662 = !{!663}
!663 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !664, file: !50, line: 192, size: 32, elements: !64)
!664 = distinct !DISubprogram(name: "x2nrealloc", scope: !50, file: !50, line: 180, type: !52, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !665)
!665 = !{!666, !667, !668, !669}
!666 = !DILocalVariable(name: "p", arg: 1, scope: !664, file: !50, line: 180, type: !54)
!667 = !DILocalVariable(name: "pn", arg: 2, scope: !664, file: !50, line: 180, type: !55)
!668 = !DILocalVariable(name: "s", arg: 3, scope: !664, file: !50, line: 180, type: !56)
!669 = !DILocalVariable(name: "n", scope: !664, file: !50, line: 182, type: !56)
!670 = !{!56, !67, !54}
!671 = distinct !DICompileUnit(language: DW_LANG_C99, file: !672, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144)
!672 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = distinct !DICompileUnit(language: DW_LANG_C99, file: !674, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144)
!674 = !DIFile(filename: "./lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !677, retainedTypes: !678)
!676 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!677 = !{!26, !34}
!678 = !{!69, !84, !67}
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !659)
!680 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !683)
!682 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!683 = !{!56}
!684 = distinct !DICompileUnit(language: DW_LANG_C99, file: !685, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144)
!685 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!686 = distinct !DICompileUnit(language: DW_LANG_C99, file: !687, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !688)
!687 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!688 = !{!56, !70, !72, !75}
!689 = distinct !DICompileUnit(language: DW_LANG_C99, file: !690, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !691)
!690 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !693, line: 136, baseType: !694)
!693 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !80, line: 62, baseType: !58)
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !697, retainedTypes: !729)
!696 = !DIFile(filename: "./lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!697 = !{!698}
!698 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !700, file: !699, line: 83, size: 32, elements: !727)
!699 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!700 = distinct !DISubprogram(name: "mgetgroups", scope: !699, file: !699, line: 66, type: !701, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !695, variables: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!69, !75, !82, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !715, !716, !719, !722, !725, !726}
!705 = !DILocalVariable(name: "username", arg: 1, scope: !700, file: !699, line: 66, type: !75)
!706 = !DILocalVariable(name: "gid", arg: 2, scope: !700, file: !699, line: 66, type: !82)
!707 = !DILocalVariable(name: "groups", arg: 3, scope: !700, file: !699, line: 66, type: !703)
!708 = !DILocalVariable(name: "max_n_groups", scope: !700, file: !699, line: 68, type: !69)
!709 = !DILocalVariable(name: "ng", scope: !700, file: !699, line: 69, type: !69)
!710 = !DILocalVariable(name: "g", scope: !700, file: !699, line: 70, type: !591)
!711 = !DILocalVariable(name: "h", scope: !712, file: !699, line: 92, type: !591)
!712 = distinct !DILexicalBlock(scope: !713, file: !699, line: 91, column: 9)
!713 = distinct !DILexicalBlock(scope: !714, file: !699, line: 82, column: 5)
!714 = distinct !DILexicalBlock(scope: !700, file: !699, line: 81, column: 7)
!715 = !DILocalVariable(name: "last_n_groups", scope: !712, file: !699, line: 93, type: !69)
!716 = !DILocalVariable(name: "saved_errno", scope: !717, file: !699, line: 105, type: !69)
!717 = distinct !DILexicalBlock(scope: !718, file: !699, line: 104, column: 13)
!718 = distinct !DILexicalBlock(scope: !712, file: !699, line: 103, column: 15)
!719 = !DILocalVariable(name: "saved_errno", scope: !720, file: !699, line: 156, type: !69)
!720 = distinct !DILexicalBlock(scope: !721, file: !699, line: 154, column: 5)
!721 = distinct !DILexicalBlock(scope: !700, file: !699, line: 153, column: 7)
!722 = !DILocalVariable(name: "first", scope: !723, file: !699, line: 187, type: !82)
!723 = distinct !DILexicalBlock(scope: !724, file: !699, line: 186, column: 5)
!724 = distinct !DILexicalBlock(scope: !700, file: !699, line: 185, column: 7)
!725 = !DILocalVariable(name: "next", scope: !723, file: !699, line: 188, type: !591)
!726 = !DILocalVariable(name: "groups_end", scope: !723, file: !699, line: 189, type: !591)
!727 = !{!728}
!728 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10)
!729 = !{!54, !82, !56}
!730 = distinct !DICompileUnit(language: DW_LANG_C99, file: !731, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144)
!731 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!732 = distinct !DICompileUnit(language: DW_LANG_C99, file: !733, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !659)
!733 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!734 = distinct !DICompileUnit(language: DW_LANG_C99, file: !735, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !144, retainedTypes: !659)
!735 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!736 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!737 = !{i32 2, !"Dwarf Version", i32 4}
!738 = !{i32 2, !"Debug Info Version", i32 3}
!739 = !{i32 1, !"PIC Level", i32 2}
!740 = !{i32 1, !"PIE Level", i32 2}
!741 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 180, type: !742, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !69}
!744 = !{!745}
!745 = !DILocalVariable(name: "status", arg: 1, scope: !741, file: !3, line: 180, type: !69)
!746 = !DIExpression()
!747 = !DILocation(line: 180, column: 12, scope: !741)
!748 = !DILocation(line: 182, column: 14, scope: !749)
!749 = distinct !DILexicalBlock(scope: !741, file: !3, line: 182, column: 7)
!750 = !DILocation(line: 182, column: 7, scope: !741)
!751 = !DILocation(line: 183, column: 5, scope: !752)
!752 = !DILexicalBlockFile(scope: !753, file: !3, discriminator: 1)
!753 = distinct !DILexicalBlock(scope: !749, file: !3, line: 183, column: 5)
!754 = !{!755, !755, i64 0}
!755 = !{!"any pointer", !756, i64 0}
!756 = !{!"omnipotent char", !757, i64 0}
!757 = !{!"Simple C/C++ TBAA"}
!758 = !DILocation(line: 183, column: 5, scope: !759)
!759 = !DILexicalBlockFile(scope: !753, file: !3, discriminator: 3)
!760 = !DILocation(line: 183, column: 5, scope: !761)
!761 = !DILexicalBlockFile(scope: !753, file: !3, discriminator: 2)
!762 = !DILocation(line: 186, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !749, file: !3, line: 185, column: 5)
!764 = !DILocation(line: 186, column: 7, scope: !765)
!765 = !DILexicalBlockFile(scope: !763, file: !3, discriminator: 1)
!766 = !DILocation(line: 191, column: 7, scope: !763)
!767 = !DILocation(line: 191, column: 7, scope: !765)
!768 = !DILocation(line: 196, column: 7, scope: !763)
!769 = !DILocation(line: 196, column: 7, scope: !765)
!770 = !DILocation(line: 199, column: 7, scope: !763)
!771 = !DILocation(line: 199, column: 7, scope: !765)
!772 = !DILocation(line: 202, column: 7, scope: !763)
!773 = !DILocation(line: 202, column: 7, scope: !765)
!774 = !DILocation(line: 202, column: 7, scope: !775)
!775 = !DILexicalBlockFile(scope: !763, file: !3, discriminator: 2)
!776 = !DILocation(line: 206, column: 7, scope: !763)
!777 = !DILocation(line: 206, column: 7, scope: !765)
!778 = !DILocation(line: 207, column: 7, scope: !763)
!779 = !DILocation(line: 207, column: 7, scope: !765)
!780 = !DILocation(line: 208, column: 7, scope: !763)
!781 = !DILocation(line: 208, column: 7, scope: !765)
!782 = !DILocation(line: 642, column: 15, scope: !101, inlinedAt: !783)
!783 = distinct !DILocation(line: 212, column: 7, scope: !763)
!784 = !DILocation(line: 651, column: 3, scope: !101, inlinedAt: !783)
!785 = !DILocation(line: 651, column: 3, scope: !786, inlinedAt: !783)
!786 = !DILexicalBlockFile(scope: !101, file: !20, discriminator: 1)
!787 = !DILocation(line: 655, column: 29, scope: !101, inlinedAt: !783)
!788 = !DILocation(line: 655, column: 15, scope: !101, inlinedAt: !783)
!789 = !DILocation(line: 656, column: 7, scope: !120, inlinedAt: !783)
!790 = !DILocation(line: 656, column: 19, scope: !120, inlinedAt: !783)
!791 = !DILocation(line: 656, column: 22, scope: !792, inlinedAt: !783)
!792 = !DILexicalBlockFile(scope: !120, file: !20, discriminator: 16)
!793 = !DILocation(line: 656, column: 7, scope: !794, inlinedAt: !783)
!794 = !DILexicalBlockFile(scope: !101, file: !20, discriminator: 16)
!795 = !DILocation(line: 662, column: 7, scope: !796, inlinedAt: !783)
!796 = distinct !DILexicalBlock(scope: !120, file: !20, line: 657, column: 5)
!797 = !DILocation(line: 662, column: 7, scope: !798, inlinedAt: !783)
!798 = !DILexicalBlockFile(scope: !796, file: !20, discriminator: 1)
!799 = !DILocation(line: 664, column: 5, scope: !796, inlinedAt: !783)
!800 = !DILocation(line: 665, column: 3, scope: !101, inlinedAt: !783)
!801 = !DILocation(line: 665, column: 3, scope: !786, inlinedAt: !783)
!802 = !DILocation(line: 667, column: 3, scope: !101, inlinedAt: !783)
!803 = !DILocation(line: 667, column: 3, scope: !786, inlinedAt: !783)
!804 = !DILocation(line: 214, column: 3, scope: !741)
!805 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 218, type: !806, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{!69, !69, !93}
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !824, !825, !826, !831, !845, !848, !851, !854, !857, !860, !861, !862, !866}
!809 = !DILocalVariable(name: "argc", arg: 1, scope: !805, file: !3, line: 218, type: !69)
!810 = !DILocalVariable(name: "argv", arg: 2, scope: !805, file: !3, line: 218, type: !93)
!811 = !DILocalVariable(name: "c", scope: !805, file: !3, line: 220, type: !69)
!812 = !DILocalVariable(name: "userspec", scope: !805, file: !3, line: 223, type: !67)
!813 = !DILocalVariable(name: "username", scope: !805, file: !3, line: 224, type: !75)
!814 = !DILocalVariable(name: "groups", scope: !805, file: !3, line: 225, type: !75)
!815 = !DILocalVariable(name: "skip_chdir", scope: !805, file: !3, line: 226, type: !154)
!816 = !DILocalVariable(name: "uid", scope: !805, file: !3, line: 229, type: !77)
!817 = !DILocalVariable(name: "gid", scope: !805, file: !3, line: 230, type: !82)
!818 = !DILocalVariable(name: "out_gids", scope: !805, file: !3, line: 231, type: !591)
!819 = !DILocalVariable(name: "n_gids", scope: !805, file: !3, line: 232, type: !56)
!820 = !DILocalVariable(name: "userlen", scope: !821, file: !3, line: 253, type: !56)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 248, column: 11)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 246, column: 9)
!823 = distinct !DILexicalBlock(scope: !805, file: !3, line: 244, column: 5)
!824 = !DILocalVariable(name: "newroot", scope: !805, file: !3, line: 282, type: !75)
!825 = !DILocalVariable(name: "is_oldroot", scope: !805, file: !3, line: 283, type: !154)
!826 = !DILocalVariable(name: "__x", scope: !827, file: !3, line: 301, type: !75)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 301, column: 9)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 300, column: 11)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 293, column: 5)
!830 = distinct !DILexicalBlock(scope: !805, file: !3, line: 292, column: 7)
!831 = !DILocalVariable(name: "pwd", scope: !832, file: !3, line: 307, type: !834)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 306, column: 9)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 305, column: 11)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !603, line: 49, size: 384, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843, !844}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !836, file: !603, line: 51, baseType: !67, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !836, file: !603, line: 52, baseType: !67, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !836, file: !603, line: 53, baseType: !79, size: 32, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !836, file: !603, line: 54, baseType: !83, size: 32, offset: 160)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !836, file: !603, line: 55, baseType: !67, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !836, file: !603, line: 56, baseType: !67, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !836, file: !603, line: 57, baseType: !67, size: 64, offset: 320)
!845 = !DILocalVariable(name: "__x", scope: !846, file: !3, line: 317, type: !69)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 317, column: 9)
!847 = distinct !DILexicalBlock(scope: !829, file: !3, line: 316, column: 11)
!848 = !DILocalVariable(name: "ngroups", scope: !849, file: !3, line: 322, type: !69)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 321, column: 9)
!850 = distinct !DILexicalBlock(scope: !847, file: !3, line: 320, column: 16)
!851 = !DILocalVariable(name: "shell", scope: !852, file: !3, line: 339, type: !67)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 337, column: 5)
!853 = distinct !DILexicalBlock(scope: !805, file: !3, line: 336, column: 7)
!854 = !DILocalVariable(name: "err", scope: !855, file: !3, line: 356, type: !75)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 355, column: 5)
!856 = distinct !DILexicalBlock(scope: !805, file: !3, line: 354, column: 7)
!857 = !DILocalVariable(name: "pwd", scope: !858, file: !3, line: 366, type: !834)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 365, column: 5)
!859 = distinct !DILexicalBlock(scope: !805, file: !3, line: 364, column: 7)
!860 = !DILocalVariable(name: "gids", scope: !805, file: !3, line: 380, type: !591)
!861 = !DILocalVariable(name: "in_gids", scope: !805, file: !3, line: 381, type: !591)
!862 = !DILocalVariable(name: "ngroups", scope: !863, file: !3, line: 396, type: !69)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 395, column: 5)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 394, column: 12)
!865 = distinct !DILexicalBlock(scope: !805, file: !3, line: 382, column: 7)
!866 = !DILocalVariable(name: "exit_status", scope: !805, file: !3, line: 427, type: !69)
!867 = !DILocation(line: 218, column: 11, scope: !805)
!868 = !DILocation(line: 218, column: 24, scope: !805)
!869 = !DILocation(line: 223, column: 9, scope: !805)
!870 = !DILocation(line: 224, column: 15, scope: !805)
!871 = !DILocation(line: 225, column: 15, scope: !805)
!872 = !DILocation(line: 226, column: 8, scope: !805)
!873 = !DILocation(line: 229, column: 3, scope: !805)
!874 = !DILocation(line: 229, column: 9, scope: !805)
!875 = !{!876, !876, i64 0}
!876 = !{!"int", !756, i64 0}
!877 = !DILocation(line: 230, column: 3, scope: !805)
!878 = !DILocation(line: 230, column: 9, scope: !805)
!879 = !DILocation(line: 231, column: 3, scope: !805)
!880 = !DILocation(line: 231, column: 16, scope: !805)
!881 = !DILocation(line: 232, column: 3, scope: !805)
!882 = !DILocation(line: 232, column: 10, scope: !805)
!883 = !{!884, !884, i64 0}
!884 = !{!"long", !756, i64 0}
!885 = !DILocation(line: 235, column: 21, scope: !805)
!886 = !DILocation(line: 235, column: 3, scope: !805)
!887 = !DILocation(line: 236, column: 3, scope: !805)
!888 = !DILocation(line: 237, column: 3, scope: !805)
!889 = !DILocation(line: 238, column: 3, scope: !805)
!890 = !DILocalVariable(name: "status", arg: 1, scope: !891, file: !20, line: 99, type: !69)
!891 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !20, file: !20, line: 99, type: !742, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !892)
!892 = !{!890}
!893 = !DILocation(line: 99, column: 30, scope: !891, inlinedAt: !894)
!894 = distinct !DILocation(line: 240, column: 3, scope: !805)
!895 = !DILocation(line: 102, column: 18, scope: !896, inlinedAt: !894)
!896 = distinct !DILexicalBlock(scope: !891, file: !20, line: 101, column: 7)
!897 = !DILocation(line: 241, column: 3, scope: !805)
!898 = !DILocation(line: 243, column: 3, scope: !805)
!899 = !DILocation(line: 243, column: 15, scope: !900)
!900 = !DILexicalBlockFile(scope: !805, file: !3, discriminator: 1)
!901 = !DILocation(line: 220, column: 7, scope: !805)
!902 = !DILocation(line: 243, column: 3, scope: !900)
!903 = distinct !{!903, !898, !904}
!904 = !DILocation(line: 274, column: 5, scope: !805)
!905 = !DILocation(line: 249, column: 24, scope: !821)
!906 = !DILocation(line: 253, column: 30, scope: !821)
!907 = !DILocation(line: 253, column: 20, scope: !821)
!908 = !DILocation(line: 254, column: 17, scope: !909)
!909 = distinct !DILexicalBlock(scope: !821, file: !3, line: 254, column: 17)
!910 = !DILocation(line: 254, column: 25, scope: !909)
!911 = !DILocation(line: 254, column: 45, scope: !912)
!912 = !DILexicalBlockFile(scope: !909, file: !3, discriminator: 1)
!913 = !DILocation(line: 254, column: 28, scope: !912)
!914 = !{!756, !756, i64 0}
!915 = !DILocation(line: 254, column: 50, scope: !912)
!916 = !DILocation(line: 254, column: 17, scope: !917)
!917 = !DILexicalBlockFile(scope: !821, file: !3, discriminator: 1)
!918 = !DILocation(line: 255, column: 37, scope: !909)
!919 = !DILocation(line: 255, column: 15, scope: !909)
!920 = !DILocation(line: 260, column: 20, scope: !822)
!921 = !DILocation(line: 261, column: 11, scope: !822)
!922 = !DILocation(line: 267, column: 9, scope: !822)
!923 = !DILocation(line: 269, column: 9, scope: !822)
!924 = !DILocation(line: 269, column: 9, scope: !925)
!925 = !DILexicalBlockFile(scope: !822, file: !3, discriminator: 1)
!926 = !DILocation(line: 272, column: 11, scope: !822)
!927 = !DILocation(line: 276, column: 15, scope: !928)
!928 = distinct !DILexicalBlock(scope: !805, file: !3, line: 276, column: 7)
!929 = !DILocation(line: 276, column: 12, scope: !928)
!930 = !DILocation(line: 276, column: 7, scope: !805)
!931 = !DILocation(line: 278, column: 20, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !3, line: 277, column: 5)
!933 = !DILocation(line: 278, column: 7, scope: !934)
!934 = !DILexicalBlockFile(scope: !932, file: !3, discriminator: 1)
!935 = !DILocation(line: 279, column: 7, scope: !932)
!936 = !DILocation(line: 282, column: 25, scope: !805)
!937 = !DILocation(line: 282, column: 15, scope: !805)
!938 = !DILocalVariable(name: "dir", arg: 1, scope: !939, file: !3, line: 171, type: !75)
!939 = distinct !DISubprogram(name: "is_root", scope: !3, file: !3, line: 171, type: !940, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{!154, !75}
!942 = !{!938, !943, !944, !945, !947, !948, !950}
!943 = !DILocalVariable(name: "resolved", scope: !939, file: !3, line: 173, type: !67)
!944 = !DILocalVariable(name: "is_res_root", scope: !939, file: !3, line: 174, type: !154)
!945 = !DILocalVariable(name: "__s1_len", scope: !946, file: !3, line: 174, type: !56)
!946 = distinct !DILexicalBlock(scope: !939, file: !3, line: 174, column: 34)
!947 = !DILocalVariable(name: "__s2_len", scope: !946, file: !3, line: 174, type: !56)
!948 = !DILocalVariable(name: "__s2", scope: !949, file: !3, line: 174, type: !72)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 174, column: 34)
!950 = !DILocalVariable(name: "__result", scope: !949, file: !3, line: 174, type: !69)
!951 = !DILocation(line: 171, column: 22, scope: !939, inlinedAt: !952)
!952 = distinct !DILocation(line: 283, column: 21, scope: !805)
!953 = !DILocation(line: 173, column: 20, scope: !939, inlinedAt: !952)
!954 = !DILocation(line: 173, column: 9, scope: !939, inlinedAt: !952)
!955 = !DILocation(line: 174, column: 22, scope: !939, inlinedAt: !952)
!956 = !DILocation(line: 174, column: 31, scope: !939, inlinedAt: !952)
!957 = !DILocation(line: 174, column: 34, scope: !946, inlinedAt: !952)
!958 = !DILocation(line: 174, column: 34, scope: !949, inlinedAt: !952)
!959 = !DILocation(line: 174, column: 34, scope: !960, inlinedAt: !952)
!960 = !DILexicalBlockFile(scope: !949, file: !3, discriminator: 3)
!961 = !DILocation(line: 174, column: 34, scope: !962, inlinedAt: !952)
!962 = !DILexicalBlockFile(scope: !963, file: !3, discriminator: 4)
!963 = distinct !DILexicalBlock(scope: !949, file: !3, line: 174, column: 34)
!964 = !DILocation(line: 174, column: 34, scope: !965, inlinedAt: !952)
!965 = !DILexicalBlockFile(scope: !963, file: !3, discriminator: 3)
!966 = !DILocation(line: 174, column: 34, scope: !967, inlinedAt: !952)
!967 = !DILexicalBlockFile(scope: !968, file: !3, discriminator: 5)
!968 = distinct !DILexicalBlock(scope: !963, file: !3, line: 174, column: 34)
!969 = !DILocation(line: 174, column: 34, scope: !970, inlinedAt: !952)
!970 = !DILexicalBlockFile(scope: !971, file: !3, discriminator: 5)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 174, column: 34)
!972 = !DILocation(line: 174, column: 34, scope: !973, inlinedAt: !952)
!973 = !DILexicalBlockFile(scope: !939, file: !3, discriminator: 14)
!974 = !DILocation(line: 175, column: 3, scope: !939, inlinedAt: !952)
!975 = !DILocation(line: 285, column: 23, scope: !976)
!976 = !DILexicalBlockFile(scope: !977, file: !3, discriminator: 1)
!977 = distinct !DILexicalBlock(scope: !805, file: !3, line: 285, column: 7)
!978 = !DILocation(line: 285, column: 20, scope: !977)
!979 = !DILocation(line: 287, column: 20, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 286, column: 5)
!981 = !DILocation(line: 288, column: 14, scope: !980)
!982 = !DILocation(line: 287, column: 7, scope: !983)
!983 = !DILexicalBlockFile(scope: !980, file: !3, discriminator: 1)
!984 = !DILocation(line: 289, column: 7, scope: !980)
!985 = !DILocation(line: 292, column: 7, scope: !805)
!986 = !DILocation(line: 300, column: 11, scope: !828)
!987 = !DILocation(line: 300, column: 11, scope: !829)
!988 = !DIExpression(DW_OP_deref)
!989 = !DILocation(line: 301, column: 9, scope: !827)
!990 = !DILocation(line: 301, column: 9, scope: !828)
!991 = !DILocation(line: 305, column: 11, scope: !833)
!992 = !DILocalVariable(name: "uid", arg: 1, scope: !993, file: !3, line: 45, type: !77)
!993 = distinct !DISubprogram(name: "uid_unset", scope: !3, file: !3, line: 45, type: !994, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !996)
!994 = !DISubroutineType(types: !995)
!995 = !{!154, !77}
!996 = !{!992}
!997 = !DILocation(line: 45, column: 37, scope: !993, inlinedAt: !998)
!998 = distinct !DILocation(line: 305, column: 11, scope: !833)
!999 = !DILocation(line: 45, column: 55, scope: !993, inlinedAt: !998)
!1000 = !DILocation(line: 305, column: 25, scope: !833)
!1001 = !DILocation(line: 305, column: 31, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 1)
!1003 = !DILocation(line: 305, column: 52, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 2)
!1005 = !DILocation(line: 46, column: 55, scope: !1006, inlinedAt: !1011)
!1006 = distinct !DISubprogram(name: "gid_unset", scope: !3, file: !3, line: 46, type: !1007, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!154, !82}
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "gid", arg: 1, scope: !1006, file: !3, line: 46, type: !82)
!1011 = distinct !DILocation(line: 305, column: 41, scope: !1004)
!1012 = !DILocation(line: 305, column: 38, scope: !1002)
!1013 = !DILocation(line: 308, column: 22, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !832, file: !3, line: 308, column: 15)
!1015 = !DILocation(line: 307, column: 32, scope: !832)
!1016 = !DILocation(line: 308, column: 20, scope: !1014)
!1017 = !DILocation(line: 308, column: 15, scope: !832)
!1018 = !DILocation(line: 310, column: 30, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 310, column: 19)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 309, column: 13)
!1021 = !DILocation(line: 46, column: 37, scope: !1006, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 310, column: 19, scope: !1019)
!1023 = !DILocation(line: 46, column: 55, scope: !1006, inlinedAt: !1022)
!1024 = !DILocation(line: 310, column: 19, scope: !1020)
!1025 = !DILocation(line: 311, column: 28, scope: !1019)
!1026 = !{!1027, !876, i64 20}
!1027 = !{!"passwd", !755, i64 0, !755, i64 8, !876, i64 16, !876, i64 20, !755, i64 24, !755, i64 32, !755, i64 40}
!1028 = !DILocation(line: 311, column: 21, scope: !1019)
!1029 = !DILocation(line: 311, column: 17, scope: !1019)
!1030 = !DILocation(line: 312, column: 31, scope: !1020)
!1031 = !{!1027, !755, i64 0}
!1032 = !DILocation(line: 313, column: 13, scope: !1020)
!1033 = !DILocation(line: 316, column: 11, scope: !847)
!1034 = !DILocation(line: 316, column: 18, scope: !847)
!1035 = !DILocation(line: 316, column: 21, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !847, file: !3, discriminator: 1)
!1037 = !DILocation(line: 316, column: 11, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !829, file: !3, discriminator: 1)
!1039 = !DILocation(line: 317, column: 9, scope: !846)
!1040 = !DILocation(line: 317, column: 9, scope: !847)
!1041 = !DILocation(line: 320, column: 28, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !850, file: !3, discriminator: 1)
!1043 = !DILocation(line: 46, column: 37, scope: !1006, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 320, column: 28, scope: !1042)
!1045 = !DILocation(line: 320, column: 42, scope: !1042)
!1046 = !DILocation(line: 320, column: 45, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !850, file: !3, discriminator: 2)
!1048 = !DILocation(line: 322, column: 25, scope: !849)
!1049 = !DILocation(line: 322, column: 15, scope: !849)
!1050 = !DILocation(line: 323, column: 17, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !849, file: !3, line: 323, column: 15)
!1052 = !DILocation(line: 323, column: 15, scope: !849)
!1053 = !DILocation(line: 324, column: 22, scope: !1051)
!1054 = !DILocation(line: 324, column: 20, scope: !1051)
!1055 = !DILocation(line: 324, column: 13, scope: !1051)
!1056 = !DILocation(line: 329, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !805, file: !3, line: 329, column: 7)
!1058 = !DILocation(line: 329, column: 24, scope: !1057)
!1059 = !DILocation(line: 329, column: 7, scope: !805)
!1060 = !DILocation(line: 330, column: 5, scope: !1057)
!1061 = !DILocation(line: 330, column: 5, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1057, file: !3, discriminator: 1)
!1063 = !DILocation(line: 330, column: 5, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1057, file: !3, discriminator: 2)
!1065 = !DILocation(line: 330, column: 5, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1057, file: !3, discriminator: 3)
!1067 = !DILocation(line: 333, column: 20, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !805, file: !3, line: 333, column: 7)
!1069 = !DILocation(line: 333, column: 23, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1068, file: !3, discriminator: 1)
!1071 = !DILocation(line: 333, column: 7, scope: !900)
!1072 = !DILocation(line: 334, column: 5, scope: !1068)
!1073 = !DILocation(line: 334, column: 5, scope: !1070)
!1074 = !DILocation(line: 334, column: 5, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1068, file: !3, discriminator: 2)
!1076 = !DILocation(line: 336, column: 15, scope: !853)
!1077 = !DILocation(line: 336, column: 22, scope: !853)
!1078 = !DILocation(line: 336, column: 12, scope: !853)
!1079 = !DILocation(line: 336, column: 7, scope: !805)
!1080 = !DILocation(line: 339, column: 21, scope: !852)
!1081 = !DILocation(line: 339, column: 13, scope: !852)
!1082 = !DILocation(line: 340, column: 17, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !852, file: !3, line: 340, column: 11)
!1084 = !DILocation(line: 340, column: 11, scope: !852)
!1085 = !DILocation(line: 342, column: 15, scope: !852)
!1086 = !DILocation(line: 343, column: 7, scope: !852)
!1087 = !DILocation(line: 343, column: 15, scope: !852)
!1088 = !DILocation(line: 345, column: 5, scope: !852)
!1089 = !DILocation(line: 349, column: 12, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !853, file: !3, line: 347, column: 5)
!1091 = !DILocation(line: 354, column: 7, scope: !856)
!1092 = !DILocation(line: 354, column: 7, scope: !805)
!1093 = !DILocation(line: 356, column: 25, scope: !855)
!1094 = !DILocation(line: 356, column: 19, scope: !855)
!1095 = !DILocation(line: 358, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !855, file: !3, line: 358, column: 11)
!1097 = !DILocation(line: 358, column: 15, scope: !1096)
!1098 = !DILocation(line: 358, column: 29, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1096, file: !3, discriminator: 1)
!1100 = !DILocation(line: 45, column: 37, scope: !993, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 358, column: 18, scope: !1099)
!1102 = !DILocation(line: 45, column: 55, scope: !993, inlinedAt: !1101)
!1103 = !DILocation(line: 358, column: 34, scope: !1099)
!1104 = !DILocation(line: 358, column: 48, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1096, file: !3, discriminator: 2)
!1106 = !DILocation(line: 46, column: 37, scope: !1006, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 358, column: 37, scope: !1105)
!1108 = !DILocation(line: 46, column: 55, scope: !1006, inlinedAt: !1107)
!1109 = !DILocation(line: 358, column: 11, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !855, file: !3, discriminator: 2)
!1111 = !DILocation(line: 359, column: 9, scope: !1096)
!1112 = !DILocation(line: 359, column: 9, scope: !1099)
!1113 = !DILocation(line: 364, column: 7, scope: !859)
!1114 = !DILocation(line: 45, column: 37, scope: !993, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 364, column: 7, scope: !859)
!1116 = !DILocation(line: 45, column: 55, scope: !993, inlinedAt: !1115)
!1117 = !DILocation(line: 364, column: 21, scope: !859)
!1118 = !DILocation(line: 367, column: 28, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !858, file: !3, line: 367, column: 11)
!1120 = !DILocation(line: 364, column: 27, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !859, file: !3, discriminator: 1)
!1122 = !DILocation(line: 364, column: 48, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !859, file: !3, discriminator: 2)
!1124 = !DILocation(line: 46, column: 55, scope: !1006, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 364, column: 37, scope: !1123)
!1126 = !DILocation(line: 364, column: 34, scope: !1121)
!1127 = !DILocation(line: 380, column: 23, scope: !805)
!1128 = !DILocation(line: 380, column: 16, scope: !805)
!1129 = !DILocation(line: 381, column: 3, scope: !805)
!1130 = !DILocation(line: 381, column: 16, scope: !805)
!1131 = !DILocation(line: 382, column: 14, scope: !865)
!1132 = !DILocation(line: 367, column: 18, scope: !1119)
!1133 = !DILocation(line: 366, column: 28, scope: !858)
!1134 = !DILocation(line: 367, column: 16, scope: !1119)
!1135 = !DILocation(line: 46, column: 37, scope: !1006, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 369, column: 15, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 369, column: 15)
!1138 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 368, column: 9)
!1139 = !DILocation(line: 46, column: 55, scope: !1006, inlinedAt: !1136)
!1140 = !DILocation(line: 367, column: 11, scope: !858)
!1141 = !DILocation(line: 369, column: 15, scope: !1138)
!1142 = !DILocation(line: 370, column: 24, scope: !1137)
!1143 = !DILocation(line: 370, column: 17, scope: !1137)
!1144 = !DILocation(line: 370, column: 13, scope: !1137)
!1145 = !DILocation(line: 371, column: 27, scope: !1138)
!1146 = !DILocation(line: 372, column: 9, scope: !1138)
!1147 = !DILocation(line: 373, column: 16, scope: !1119)
!1148 = !DILocation(line: 375, column: 11, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 374, column: 9)
!1150 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 373, column: 16)
!1151 = !DILocation(line: 375, column: 11, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1149, file: !3, discriminator: 1)
!1153 = !DILocation(line: 375, column: 11, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1149, file: !3, discriminator: 2)
!1155 = !DILocation(line: 382, column: 7, scope: !865)
!1156 = !DILocation(line: 382, column: 17, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !865, file: !3, discriminator: 1)
!1158 = !DILocation(line: 382, column: 7, scope: !900)
!1159 = !DILocation(line: 384, column: 64, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 384, column: 11)
!1161 = distinct !DILexicalBlock(scope: !865, file: !3, line: 383, column: 5)
!1162 = !DILocation(line: 384, column: 63, scope: !1160)
!1163 = !DILocation(line: 384, column: 11, scope: !1160)
!1164 = !DILocation(line: 384, column: 72, scope: !1160)
!1165 = !DILocation(line: 384, column: 11, scope: !1161)
!1166 = !DILocation(line: 386, column: 17, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 386, column: 15)
!1168 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 385, column: 9)
!1169 = !DILocation(line: 386, column: 15, scope: !1168)
!1170 = !DILocation(line: 391, column: 16, scope: !1160)
!1171 = !DILocation(line: 394, column: 24, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 1)
!1173 = !DILocation(line: 46, column: 37, scope: !1006, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 394, column: 24, scope: !1172)
!1175 = !DILocation(line: 394, column: 38, scope: !1172)
!1176 = !DILocation(line: 394, column: 41, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 2)
!1178 = !DILocation(line: 396, column: 21, scope: !863)
!1179 = !DILocation(line: 396, column: 11, scope: !863)
!1180 = !DILocation(line: 397, column: 19, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !863, file: !3, line: 397, column: 11)
!1182 = !DILocation(line: 397, column: 11, scope: !863)
!1183 = !DILocation(line: 399, column: 17, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 399, column: 15)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 398, column: 9)
!1186 = !DILocation(line: 399, column: 15, scope: !1185)
!1187 = !DILocation(line: 400, column: 13, scope: !1184)
!1188 = !DILocation(line: 400, column: 13, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1184, file: !3, discriminator: 1)
!1190 = !DILocation(line: 400, column: 13, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1184, file: !3, discriminator: 2)
!1192 = !DILocation(line: 406, column: 20, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 405, column: 9)
!1194 = !DILocation(line: 406, column: 18, scope: !1193)
!1195 = !DILocation(line: 407, column: 18, scope: !1193)
!1196 = !DILocation(line: 412, column: 8, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !805, file: !3, line: 412, column: 7)
!1198 = !DILocation(line: 45, column: 37, scope: !993, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 412, column: 8, scope: !1197)
!1200 = !DILocation(line: 412, column: 22, scope: !1197)
!1201 = !DILocation(line: 412, column: 47, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !1197, file: !3, discriminator: 2)
!1203 = !DILocation(line: 412, column: 36, scope: !1202)
!1204 = !DILocation(line: 412, column: 61, scope: !1202)
!1205 = !DILocation(line: 412, column: 7, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !805, file: !3, discriminator: 2)
!1207 = !DILocation(line: 413, column: 5, scope: !1197)
!1208 = !DILocation(line: 413, column: 5, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1197, file: !3, discriminator: 1)
!1210 = !DILocation(line: 413, column: 5, scope: !1202)
!1211 = !DILocation(line: 415, column: 9, scope: !805)
!1212 = !DILocation(line: 415, column: 3, scope: !805)
!1213 = !DILocation(line: 416, column: 9, scope: !805)
!1214 = !DILocation(line: 416, column: 3, scope: !805)
!1215 = !DILocation(line: 418, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !805, file: !3, line: 418, column: 7)
!1217 = !DILocation(line: 46, column: 37, scope: !1006, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 418, column: 7, scope: !1216)
!1219 = !DILocation(line: 46, column: 55, scope: !1006, inlinedAt: !1218)
!1220 = !DILocation(line: 418, column: 21, scope: !1216)
!1221 = !DILocation(line: 418, column: 24, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1216, file: !3, discriminator: 1)
!1223 = !DILocation(line: 418, column: 7, scope: !900)
!1224 = !DILocation(line: 419, column: 5, scope: !1216)
!1225 = !DILocation(line: 419, column: 5, scope: !1222)
!1226 = !DILocation(line: 419, column: 5, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1216, file: !3, discriminator: 2)
!1228 = !DILocation(line: 421, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !805, file: !3, line: 421, column: 7)
!1230 = !DILocation(line: 45, column: 37, scope: !993, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 421, column: 7, scope: !1229)
!1232 = !DILocation(line: 45, column: 55, scope: !993, inlinedAt: !1231)
!1233 = !DILocation(line: 421, column: 21, scope: !1229)
!1234 = !DILocation(line: 421, column: 24, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1229, file: !3, discriminator: 1)
!1236 = !DILocation(line: 421, column: 7, scope: !900)
!1237 = !DILocation(line: 422, column: 5, scope: !1229)
!1238 = !DILocation(line: 422, column: 5, scope: !1235)
!1239 = !DILocation(line: 422, column: 5, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1229, file: !3, discriminator: 2)
!1241 = !DILocation(line: 425, column: 11, scope: !805)
!1242 = !DILocation(line: 425, column: 3, scope: !805)
!1243 = !DILocation(line: 427, column: 21, scope: !805)
!1244 = !DILocation(line: 427, column: 27, scope: !805)
!1245 = !DILocation(line: 427, column: 7, scope: !805)
!1246 = !DILocation(line: 428, column: 20, scope: !900)
!1247 = !DILocation(line: 428, column: 58, scope: !805)
!1248 = !DILocation(line: 428, column: 51, scope: !1206)
!1249 = !DILocation(line: 428, column: 3, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !805, file: !3, discriminator: 3)
!1251 = !DILocation(line: 430, column: 1, scope: !805)
!1252 = !DILocation(line: 430, column: 1, scope: !900)
!1253 = distinct !DISubprogram(name: "parse_additional_groups", scope: !3, file: !3, line: 96, type: !1254, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!69, !75, !703, !55, !154}
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1271}
!1257 = !DILocalVariable(name: "groups", arg: 1, scope: !1253, file: !3, line: 96, type: !75)
!1258 = !DILocalVariable(name: "pgids", arg: 2, scope: !1253, file: !3, line: 96, type: !703)
!1259 = !DILocalVariable(name: "pn_gids", arg: 3, scope: !1253, file: !3, line: 97, type: !55)
!1260 = !DILocalVariable(name: "show_errors", arg: 4, scope: !1253, file: !3, line: 97, type: !154)
!1261 = !DILocalVariable(name: "gids", scope: !1253, file: !3, line: 99, type: !591)
!1262 = !DILocalVariable(name: "n_gids_allocated", scope: !1253, file: !3, line: 100, type: !56)
!1263 = !DILocalVariable(name: "n_gids", scope: !1253, file: !3, line: 101, type: !56)
!1264 = !DILocalVariable(name: "buffer", scope: !1253, file: !3, line: 102, type: !67)
!1265 = !DILocalVariable(name: "tmp", scope: !1253, file: !3, line: 103, type: !75)
!1266 = !DILocalVariable(name: "ret", scope: !1253, file: !3, line: 104, type: !69)
!1267 = !DILocalVariable(name: "g", scope: !1268, file: !3, line: 108, type: !85)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 107, column: 5)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 106, column: 3)
!1270 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 106, column: 3)
!1271 = !DILocalVariable(name: "value", scope: !1268, file: !3, line: 109, type: !58)
!1272 = !DILocation(line: 96, column: 38, scope: !1253)
!1273 = !DILocation(line: 96, column: 60, scope: !1253)
!1274 = !DILocation(line: 97, column: 34, scope: !1253)
!1275 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1276 = !DILocation(line: 97, column: 48, scope: !1253)
!1277 = !DILocation(line: 99, column: 16, scope: !1253)
!1278 = !DILocation(line: 100, column: 10, scope: !1253)
!1279 = !DILocation(line: 101, column: 10, scope: !1253)
!1280 = !DILocation(line: 102, column: 18, scope: !1253)
!1281 = !DILocation(line: 102, column: 9, scope: !1253)
!1282 = !DILocation(line: 104, column: 7, scope: !1253)
!1283 = !DILocation(line: 106, column: 47, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1269, file: !3, discriminator: 2)
!1285 = !DILocation(line: 103, column: 15, scope: !1253)
!1286 = !DILocation(line: 106, column: 3, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1270, file: !3, discriminator: 1)
!1288 = !DILocation(line: 109, column: 7, scope: !1268)
!1289 = !DILocation(line: 109, column: 25, scope: !1268)
!1290 = !DILocation(line: 111, column: 11, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 111, column: 11)
!1292 = !DILocation(line: 111, column: 48, scope: !1291)
!1293 = !DILocation(line: 111, column: 65, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1291, file: !3, discriminator: 1)
!1295 = !DILocation(line: 111, column: 71, scope: !1294)
!1296 = !DILocation(line: 111, column: 62, scope: !1291)
!1297 = !DILocation(line: 113, column: 18, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1299, file: !3, discriminator: 1)
!1299 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 112, column: 9)
!1300 = !{!1301, !1301, i64 0}
!1301 = !{!"short", !756, i64 0}
!1302 = !DILocation(line: 113, column: 11, scope: !1298)
!1303 = !DILocation(line: 114, column: 16, scope: !1299)
!1304 = distinct !{!1304, !1305, !1303}
!1305 = !DILocation(line: 113, column: 11, scope: !1299)
!1306 = !DILocation(line: 115, column: 20, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 115, column: 15)
!1308 = !DILocation(line: 115, column: 15, scope: !1299)
!1309 = !DILocation(line: 118, column: 19, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 116, column: 13)
!1311 = !DILocation(line: 108, column: 21, scope: !1268)
!1312 = !DILocation(line: 119, column: 21, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 119, column: 19)
!1314 = !DILocation(line: 119, column: 19, scope: !1310)
!1315 = !DILocation(line: 120, column: 28, scope: !1313)
!1316 = !{!1317, !876, i64 16}
!1317 = !{!"group", !755, i64 0, !755, i64 8, !876, i64 16, !755, i64 24}
!1318 = !DILocation(line: 120, column: 25, scope: !1313)
!1319 = !DILocation(line: 120, column: 23, scope: !1313)
!1320 = !DILocation(line: 120, column: 17, scope: !1313)
!1321 = !DILocation(line: 127, column: 15, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 126, column: 9)
!1323 = !DILocation(line: 128, column: 17, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 128, column: 15)
!1325 = !DILocation(line: 128, column: 15, scope: !1322)
!1326 = !DILocation(line: 129, column: 24, scope: !1324)
!1327 = !DILocation(line: 129, column: 21, scope: !1324)
!1328 = !DILocation(line: 129, column: 19, scope: !1324)
!1329 = !DILocation(line: 129, column: 13, scope: !1324)
!1330 = !DILocation(line: 136, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 133, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 132, column: 11)
!1333 = !DILocation(line: 138, column: 25, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 137, column: 13)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 136, column: 15)
!1336 = !DILocation(line: 138, column: 32, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1334, file: !3, discriminator: 1)
!1338 = !DILocation(line: 138, column: 55, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1334, file: !3, discriminator: 2)
!1340 = !DILocation(line: 138, column: 15, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1334, file: !3, discriminator: 3)
!1342 = !DILocation(line: 139, column: 15, scope: !1334)
!1343 = !DILocation(line: 145, column: 18, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 145, column: 11)
!1345 = !DILocation(line: 145, column: 11, scope: !1268)
!1346 = !DILocation(line: 180, column: 19, scope: !51, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 146, column: 16, scope: !1344)
!1348 = !DILocation(line: 180, column: 41, scope: !51, inlinedAt: !1347)
!1349 = !DILocation(line: 182, column: 10, scope: !51, inlinedAt: !1347)
!1350 = !DILocation(line: 184, column: 9, scope: !1351, inlinedAt: !1347)
!1351 = distinct !DILexicalBlock(scope: !51, file: !50, line: 184, column: 7)
!1352 = !DILocation(line: 184, column: 7, scope: !51, inlinedAt: !1347)
!1353 = !DILocation(line: 186, column: 13, scope: !1354, inlinedAt: !1347)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !50, line: 186, column: 11)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !50, line: 185, column: 5)
!1356 = !DILocation(line: 186, column: 11, scope: !1355, inlinedAt: !1347)
!1357 = !DILocation(line: 205, column: 11, scope: !1358, inlinedAt: !1347)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !50, line: 204, column: 11)
!1359 = distinct !DILexicalBlock(scope: !1351, file: !50, line: 199, column: 5)
!1360 = !DILocation(line: 204, column: 11, scope: !1359, inlinedAt: !1347)
!1361 = !DILocation(line: 206, column: 9, scope: !1358, inlinedAt: !1347)
!1362 = !DILocation(line: 207, column: 14, scope: !1359, inlinedAt: !1347)
!1363 = !DILocation(line: 207, column: 18, scope: !1359, inlinedAt: !1347)
!1364 = !DILocation(line: 207, column: 9, scope: !1359, inlinedAt: !1347)
!1365 = !DILocation(line: 211, column: 25, scope: !51, inlinedAt: !1347)
!1366 = !DILocation(line: 211, column: 10, scope: !51, inlinedAt: !1347)
!1367 = !DILocation(line: 146, column: 16, scope: !1344)
!1368 = !DILocation(line: 146, column: 9, scope: !1344)
!1369 = !DILocation(line: 147, column: 24, scope: !1268)
!1370 = !DILocation(line: 147, column: 18, scope: !1268)
!1371 = !DILocation(line: 147, column: 7, scope: !1268)
!1372 = !DILocation(line: 147, column: 22, scope: !1268)
!1373 = !DILocation(line: 148, column: 5, scope: !1269)
!1374 = !DILocation(line: 157, column: 10, scope: !1253)
!1375 = !DILocation(line: 159, column: 7, scope: !1253)
!1376 = !DILocation(line: 150, column: 16, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 150, column: 7)
!1378 = !DILocation(line: 153, column: 22, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 152, column: 11)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 151, column: 5)
!1381 = !DILocation(line: 153, column: 50, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1379, file: !3, discriminator: 1)
!1383 = !DILocation(line: 153, column: 9, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1379, file: !3, discriminator: 2)
!1385 = !DILocation(line: 159, column: 11, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 159, column: 7)
!1387 = !DILocation(line: 160, column: 14, scope: !1386)
!1388 = !DILocation(line: 160, column: 5, scope: !1386)
!1389 = !DILocation(line: 162, column: 3, scope: !1253)
!1390 = !DILocation(line: 163, column: 3, scope: !1253)
!1391 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !153, file: !153, line: 41, type: !102, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !148, variables: !1392)
!1392 = !{!1393}
!1393 = !DILocalVariable(name: "file", arg: 1, scope: !1391, file: !153, line: 41, type: !75)
!1394 = !DILocation(line: 41, column: 41, scope: !1391)
!1395 = !DILocation(line: 43, column: 13, scope: !1391)
!1396 = !DILocation(line: 44, column: 1, scope: !1391)
!1397 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !153, file: !153, line: 78, type: !1398, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !148, variables: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !154}
!1400 = !{!1401}
!1401 = !DILocalVariable(name: "ignore", arg: 1, scope: !1397, file: !153, line: 78, type: !154)
!1402 = !DILocation(line: 78, column: 37, scope: !1397)
!1403 = !DILocation(line: 80, column: 16, scope: !1397)
!1404 = !{!1405, !1405, i64 0}
!1405 = !{!"_Bool", !756, i64 0}
!1406 = !DILocation(line: 81, column: 1, scope: !1397)
!1407 = distinct !DISubprogram(name: "close_stdout", scope: !153, file: !153, line: 107, type: !1408, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !148, variables: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null}
!1410 = !{!1411}
!1411 = !DILocalVariable(name: "write_error", scope: !1412, file: !153, line: 112, type: !75)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !153, line: 111, column: 5)
!1413 = distinct !DILexicalBlock(scope: !1407, file: !153, line: 109, column: 7)
!1414 = !DILocation(line: 109, column: 21, scope: !1413)
!1415 = !DILocation(line: 109, column: 7, scope: !1413)
!1416 = !DILocation(line: 109, column: 29, scope: !1413)
!1417 = !DILocation(line: 110, column: 7, scope: !1413)
!1418 = !DILocation(line: 110, column: 12, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1413, file: !153, discriminator: 1)
!1420 = !{i8 0, i8 2}
!1421 = !DILocation(line: 114, column: 19, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1412, file: !153, line: 113, column: 11)
!1423 = !DILocation(line: 110, column: 25, scope: !1419)
!1424 = !DILocation(line: 110, column: 28, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1413, file: !153, discriminator: 2)
!1426 = !DILocation(line: 110, column: 34, scope: !1425)
!1427 = !DILocation(line: 109, column: 7, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1407, file: !153, discriminator: 1)
!1429 = !DILocation(line: 112, column: 33, scope: !1412)
!1430 = !DILocation(line: 112, column: 19, scope: !1412)
!1431 = !DILocation(line: 113, column: 11, scope: !1422)
!1432 = !DILocation(line: 113, column: 11, scope: !1412)
!1433 = !DILocation(line: 114, column: 36, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1422, file: !153, discriminator: 1)
!1435 = !DILocation(line: 114, column: 9, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1422, file: !153, discriminator: 2)
!1437 = !DILocation(line: 114, column: 9, scope: !1422)
!1438 = !DILocation(line: 117, column: 9, scope: !1434)
!1439 = !DILocation(line: 119, column: 14, scope: !1412)
!1440 = !DILocation(line: 119, column: 7, scope: !1412)
!1441 = !DILocation(line: 122, column: 22, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1407, file: !153, line: 122, column: 8)
!1443 = !DILocation(line: 122, column: 8, scope: !1442)
!1444 = !DILocation(line: 122, column: 30, scope: !1442)
!1445 = !DILocation(line: 122, column: 8, scope: !1407)
!1446 = !DILocation(line: 123, column: 13, scope: !1442)
!1447 = !DILocation(line: 123, column: 6, scope: !1442)
!1448 = !DILocation(line: 124, column: 1, scope: !1407)
!1449 = distinct !DISubprogram(name: "set_program_name", scope: !168, file: !168, line: 39, type: !102, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !164, variables: !1450)
!1450 = !{!1451, !1452, !1453}
!1451 = !DILocalVariable(name: "argv0", arg: 1, scope: !1449, file: !168, line: 39, type: !75)
!1452 = !DILocalVariable(name: "slash", scope: !1449, file: !168, line: 46, type: !75)
!1453 = !DILocalVariable(name: "base", scope: !1449, file: !168, line: 47, type: !75)
!1454 = !DILocation(line: 39, column: 31, scope: !1449)
!1455 = !DILocation(line: 51, column: 13, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1449, file: !168, line: 51, column: 7)
!1457 = !DILocation(line: 51, column: 7, scope: !1449)
!1458 = !DILocation(line: 55, column: 14, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !168, line: 52, column: 5)
!1460 = !DILocation(line: 54, column: 7, scope: !1459)
!1461 = !DILocation(line: 56, column: 7, scope: !1459)
!1462 = !DILocation(line: 59, column: 11, scope: !1449)
!1463 = !DILocation(line: 46, column: 15, scope: !1449)
!1464 = !DILocation(line: 60, column: 17, scope: !1449)
!1465 = !DILocation(line: 60, column: 33, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1449, file: !168, discriminator: 1)
!1467 = !DILocation(line: 60, column: 11, scope: !1449)
!1468 = !DILocation(line: 47, column: 15, scope: !1449)
!1469 = !DILocation(line: 61, column: 12, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1449, file: !168, line: 61, column: 7)
!1471 = !DILocation(line: 61, column: 20, scope: !1470)
!1472 = !DILocation(line: 61, column: 25, scope: !1470)
!1473 = !DILocation(line: 61, column: 28, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1470, file: !168, discriminator: 1)
!1475 = !DILocation(line: 61, column: 61, scope: !1474)
!1476 = !DILocation(line: 61, column: 7, scope: !1466)
!1477 = !DILocation(line: 64, column: 11, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !168, line: 64, column: 11)
!1479 = distinct !DILexicalBlock(scope: !1470, file: !168, line: 62, column: 5)
!1480 = !DILocation(line: 64, column: 36, scope: !1478)
!1481 = !DILocation(line: 64, column: 11, scope: !1479)
!1482 = !DILocation(line: 66, column: 24, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !168, line: 65, column: 9)
!1484 = !DILocation(line: 70, column: 41, scope: !1483)
!1485 = !DILocation(line: 72, column: 9, scope: !1483)
!1486 = !DILocation(line: 84, column: 16, scope: !1449)
!1487 = !DILocation(line: 90, column: 27, scope: !1449)
!1488 = !DILocation(line: 92, column: 1, scope: !1449)
!1489 = distinct !DISubprogram(name: "clone_quoting_options", scope: !183, file: !183, line: 114, type: !1490, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1493)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1492, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1489, file: !183, line: 114, type: !1492)
!1495 = !DILocalVariable(name: "e", scope: !1489, file: !183, line: 116, type: !69)
!1496 = !DILocalVariable(name: "p", scope: !1489, file: !183, line: 117, type: !1492)
!1497 = !DILocation(line: 114, column: 48, scope: !1489)
!1498 = !DILocation(line: 116, column: 11, scope: !1489)
!1499 = !DILocation(line: 116, column: 7, scope: !1489)
!1500 = !DILocation(line: 117, column: 40, scope: !1489)
!1501 = !DILocation(line: 117, column: 40, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1489, file: !183, discriminator: 3)
!1503 = !DILocation(line: 117, column: 31, scope: !1502)
!1504 = !DILocation(line: 117, column: 27, scope: !1489)
!1505 = !DILocation(line: 119, column: 9, scope: !1489)
!1506 = !DILocation(line: 120, column: 3, scope: !1489)
!1507 = distinct !DISubprogram(name: "get_quoting_style", scope: !183, file: !183, line: 125, type: !1508, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1512)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!5, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!1512 = !{!1513}
!1513 = !DILocalVariable(name: "o", arg: 1, scope: !1507, file: !183, line: 125, type: !1510)
!1514 = !DILocation(line: 125, column: 50, scope: !1507)
!1515 = !DILocation(line: 127, column: 11, scope: !1507)
!1516 = !DILocation(line: 127, column: 46, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1507, file: !183, discriminator: 3)
!1518 = !{!1519, !756, i64 0}
!1519 = !{!"quoting_options", !756, i64 0, !876, i64 4, !756, i64 8, !755, i64 40, !755, i64 48}
!1520 = !DILocation(line: 127, column: 3, scope: !1517)
!1521 = distinct !DISubprogram(name: "set_quoting_style", scope: !183, file: !183, line: 133, type: !1522, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1492, !5}
!1524 = !{!1525, !1526}
!1525 = !DILocalVariable(name: "o", arg: 1, scope: !1521, file: !183, line: 133, type: !1492)
!1526 = !DILocalVariable(name: "s", arg: 2, scope: !1521, file: !183, line: 133, type: !5)
!1527 = !DILocation(line: 133, column: 44, scope: !1521)
!1528 = !DILocation(line: 133, column: 66, scope: !1521)
!1529 = !DILocation(line: 135, column: 4, scope: !1521)
!1530 = !DILocation(line: 135, column: 39, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1521, file: !183, discriminator: 3)
!1532 = !DILocation(line: 135, column: 45, scope: !1531)
!1533 = !DILocation(line: 136, column: 1, scope: !1521)
!1534 = distinct !DISubprogram(name: "set_char_quoting", scope: !183, file: !183, line: 144, type: !1535, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!69, !1492, !68, !69}
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1544, !1545}
!1538 = !DILocalVariable(name: "o", arg: 1, scope: !1534, file: !183, line: 144, type: !1492)
!1539 = !DILocalVariable(name: "c", arg: 2, scope: !1534, file: !183, line: 144, type: !68)
!1540 = !DILocalVariable(name: "i", arg: 3, scope: !1534, file: !183, line: 144, type: !69)
!1541 = !DILocalVariable(name: "uc", scope: !1534, file: !183, line: 146, type: !74)
!1542 = !DILocalVariable(name: "p", scope: !1534, file: !183, line: 147, type: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1544 = !DILocalVariable(name: "shift", scope: !1534, file: !183, line: 149, type: !69)
!1545 = !DILocalVariable(name: "r", scope: !1534, file: !183, line: 150, type: !69)
!1546 = !DILocation(line: 144, column: 43, scope: !1534)
!1547 = !DILocation(line: 144, column: 51, scope: !1534)
!1548 = !DILocation(line: 144, column: 58, scope: !1534)
!1549 = !DILocation(line: 146, column: 17, scope: !1534)
!1550 = !DILocation(line: 148, column: 6, scope: !1534)
!1551 = !DILocation(line: 148, column: 62, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1534, file: !183, discriminator: 3)
!1553 = !DILocation(line: 148, column: 57, scope: !1552)
!1554 = !DILocation(line: 147, column: 17, scope: !1534)
!1555 = !DILocation(line: 149, column: 18, scope: !1534)
!1556 = !DILocation(line: 149, column: 15, scope: !1534)
!1557 = !DILocation(line: 149, column: 7, scope: !1534)
!1558 = !DILocation(line: 150, column: 12, scope: !1534)
!1559 = !DILocation(line: 150, column: 15, scope: !1534)
!1560 = !DILocation(line: 150, column: 25, scope: !1534)
!1561 = !DILocation(line: 150, column: 7, scope: !1534)
!1562 = !DILocation(line: 151, column: 13, scope: !1534)
!1563 = !DILocation(line: 151, column: 18, scope: !1534)
!1564 = !DILocation(line: 151, column: 23, scope: !1534)
!1565 = !DILocation(line: 151, column: 6, scope: !1534)
!1566 = !DILocation(line: 152, column: 3, scope: !1534)
!1567 = distinct !DISubprogram(name: "set_quoting_flags", scope: !183, file: !183, line: 160, type: !1568, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!69, !1492, !69}
!1570 = !{!1571, !1572, !1573}
!1571 = !DILocalVariable(name: "o", arg: 1, scope: !1567, file: !183, line: 160, type: !1492)
!1572 = !DILocalVariable(name: "i", arg: 2, scope: !1567, file: !183, line: 160, type: !69)
!1573 = !DILocalVariable(name: "r", scope: !1567, file: !183, line: 162, type: !69)
!1574 = !DILocation(line: 160, column: 44, scope: !1567)
!1575 = !DILocation(line: 160, column: 51, scope: !1567)
!1576 = !DILocation(line: 163, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1567, file: !183, line: 163, column: 7)
!1578 = !DILocation(line: 163, column: 7, scope: !1567)
!1579 = !DILocation(line: 165, column: 10, scope: !1567)
!1580 = !{!1519, !876, i64 4}
!1581 = !DILocation(line: 162, column: 7, scope: !1567)
!1582 = !DILocation(line: 166, column: 12, scope: !1567)
!1583 = !DILocation(line: 167, column: 3, scope: !1567)
!1584 = distinct !DISubprogram(name: "set_custom_quoting", scope: !183, file: !183, line: 171, type: !1585, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !1492, !75, !75}
!1587 = !{!1588, !1589, !1590}
!1588 = !DILocalVariable(name: "o", arg: 1, scope: !1584, file: !183, line: 171, type: !1492)
!1589 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1584, file: !183, line: 172, type: !75)
!1590 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1584, file: !183, line: 172, type: !75)
!1591 = !DILocation(line: 171, column: 45, scope: !1584)
!1592 = !DILocation(line: 172, column: 33, scope: !1584)
!1593 = !DILocation(line: 172, column: 57, scope: !1584)
!1594 = !DILocation(line: 174, column: 8, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1584, file: !183, line: 174, column: 7)
!1596 = !DILocation(line: 174, column: 7, scope: !1584)
!1597 = !DILocation(line: 176, column: 6, scope: !1584)
!1598 = !DILocation(line: 176, column: 12, scope: !1584)
!1599 = !DILocation(line: 177, column: 8, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1584, file: !183, line: 177, column: 7)
!1601 = !DILocation(line: 177, column: 23, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1600, file: !183, discriminator: 1)
!1603 = !DILocation(line: 177, column: 19, scope: !1600)
!1604 = !DILocation(line: 178, column: 5, scope: !1600)
!1605 = !DILocation(line: 179, column: 6, scope: !1584)
!1606 = !DILocation(line: 179, column: 17, scope: !1584)
!1607 = !{!1519, !755, i64 40}
!1608 = !DILocation(line: 180, column: 6, scope: !1584)
!1609 = !DILocation(line: 180, column: 18, scope: !1584)
!1610 = !{!1519, !755, i64 48}
!1611 = !DILocation(line: 181, column: 1, scope: !1584)
!1612 = distinct !DISubprogram(name: "quotearg_buffer", scope: !183, file: !183, line: 776, type: !1613, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!56, !67, !56, !75, !56, !1510}
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1616 = !DILocalVariable(name: "buffer", arg: 1, scope: !1612, file: !183, line: 776, type: !67)
!1617 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1612, file: !183, line: 776, type: !56)
!1618 = !DILocalVariable(name: "arg", arg: 3, scope: !1612, file: !183, line: 777, type: !75)
!1619 = !DILocalVariable(name: "argsize", arg: 4, scope: !1612, file: !183, line: 777, type: !56)
!1620 = !DILocalVariable(name: "o", arg: 5, scope: !1612, file: !183, line: 778, type: !1510)
!1621 = !DILocalVariable(name: "p", scope: !1612, file: !183, line: 780, type: !1510)
!1622 = !DILocalVariable(name: "e", scope: !1612, file: !183, line: 781, type: !69)
!1623 = !DILocalVariable(name: "r", scope: !1612, file: !183, line: 782, type: !56)
!1624 = !DILocation(line: 776, column: 24, scope: !1612)
!1625 = !DILocation(line: 776, column: 39, scope: !1612)
!1626 = !DILocation(line: 777, column: 30, scope: !1612)
!1627 = !DILocation(line: 777, column: 42, scope: !1612)
!1628 = !DILocation(line: 778, column: 48, scope: !1612)
!1629 = !DILocation(line: 780, column: 37, scope: !1612)
!1630 = !DILocation(line: 780, column: 33, scope: !1612)
!1631 = !DILocation(line: 781, column: 11, scope: !1612)
!1632 = !DILocation(line: 781, column: 7, scope: !1612)
!1633 = !DILocation(line: 783, column: 43, scope: !1612)
!1634 = !DILocation(line: 783, column: 53, scope: !1612)
!1635 = !DILocation(line: 783, column: 60, scope: !1612)
!1636 = !DILocation(line: 784, column: 43, scope: !1612)
!1637 = !DILocation(line: 784, column: 58, scope: !1612)
!1638 = !DILocation(line: 782, column: 14, scope: !1612)
!1639 = !DILocation(line: 782, column: 10, scope: !1612)
!1640 = !DILocation(line: 785, column: 9, scope: !1612)
!1641 = !DILocation(line: 786, column: 3, scope: !1612)
!1642 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !183, file: !183, line: 248, type: !1643, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !1647)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!56, !67, !56, !75, !56, !5, !69, !1645, !75, !75}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1672, !1673, !1674, !1675, !1676, !1679, !1680, !1697, !1700, !1701, !1708}
!1648 = !DILocalVariable(name: "buffer", arg: 1, scope: !1642, file: !183, line: 248, type: !67)
!1649 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1642, file: !183, line: 248, type: !56)
!1650 = !DILocalVariable(name: "arg", arg: 3, scope: !1642, file: !183, line: 249, type: !75)
!1651 = !DILocalVariable(name: "argsize", arg: 4, scope: !1642, file: !183, line: 249, type: !56)
!1652 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1642, file: !183, line: 250, type: !5)
!1653 = !DILocalVariable(name: "flags", arg: 6, scope: !1642, file: !183, line: 250, type: !69)
!1654 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1642, file: !183, line: 251, type: !1645)
!1655 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1642, file: !183, line: 252, type: !75)
!1656 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1642, file: !183, line: 253, type: !75)
!1657 = !DILocalVariable(name: "i", scope: !1642, file: !183, line: 255, type: !56)
!1658 = !DILocalVariable(name: "len", scope: !1642, file: !183, line: 256, type: !56)
!1659 = !DILocalVariable(name: "orig_buffersize", scope: !1642, file: !183, line: 257, type: !56)
!1660 = !DILocalVariable(name: "quote_string", scope: !1642, file: !183, line: 258, type: !75)
!1661 = !DILocalVariable(name: "quote_string_len", scope: !1642, file: !183, line: 259, type: !56)
!1662 = !DILocalVariable(name: "backslash_escapes", scope: !1642, file: !183, line: 260, type: !154)
!1663 = !DILocalVariable(name: "unibyte_locale", scope: !1642, file: !183, line: 261, type: !154)
!1664 = !DILocalVariable(name: "elide_outer_quotes", scope: !1642, file: !183, line: 262, type: !154)
!1665 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1642, file: !183, line: 263, type: !154)
!1666 = !DILocalVariable(name: "encountered_single_quote", scope: !1642, file: !183, line: 264, type: !154)
!1667 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1642, file: !183, line: 265, type: !154)
!1668 = !DILocalVariable(name: "c", scope: !1669, file: !183, line: 394, type: !74)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !183, line: 393, column: 5)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !183, line: 392, column: 3)
!1671 = distinct !DILexicalBlock(scope: !1642, file: !183, line: 392, column: 3)
!1672 = !DILocalVariable(name: "esc", scope: !1669, file: !183, line: 395, type: !74)
!1673 = !DILocalVariable(name: "is_right_quote", scope: !1669, file: !183, line: 396, type: !154)
!1674 = !DILocalVariable(name: "escaping", scope: !1669, file: !183, line: 397, type: !154)
!1675 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1669, file: !183, line: 398, type: !154)
!1676 = !DILocalVariable(name: "m", scope: !1677, file: !183, line: 602, type: !56)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 600, column: 11)
!1678 = distinct !DILexicalBlock(scope: !1669, file: !183, line: 418, column: 9)
!1679 = !DILocalVariable(name: "printable", scope: !1677, file: !183, line: 604, type: !154)
!1680 = !DILocalVariable(name: "mbstate", scope: !1681, file: !183, line: 613, type: !1683)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !183, line: 612, column: 15)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !183, line: 606, column: 17)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1684, line: 107, baseType: !1685)
!1684 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1684, line: 95, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1684, line: 83, size: 64, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1686, file: !1684, line: 85, baseType: !69, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1686, file: !1684, line: 94, baseType: !1690, size: 32, offset: 32)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1686, file: !1684, line: 86, size: 32, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1690, file: !1684, line: 89, baseType: !81, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1690, file: !1684, line: 93, baseType: !1694, size: 32)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, elements: !1695)
!1695 = !{!1696}
!1696 = !DISubrange(count: 4)
!1697 = !DILocalVariable(name: "w", scope: !1698, file: !183, line: 623, type: !1699)
!1698 = distinct !DILexicalBlock(scope: !1681, file: !183, line: 622, column: 19)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !57, line: 90, baseType: !69)
!1700 = !DILocalVariable(name: "bytes", scope: !1698, file: !183, line: 624, type: !56)
!1701 = !DILocalVariable(name: "j", scope: !1702, file: !183, line: 649, type: !56)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !183, line: 648, column: 27)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !183, line: 646, column: 29)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !183, line: 641, column: 23)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !183, line: 633, column: 30)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !183, line: 628, column: 30)
!1707 = distinct !DILexicalBlock(scope: !1698, file: !183, line: 626, column: 25)
!1708 = !DILocalVariable(name: "ilim", scope: !1709, file: !183, line: 676, type: !56)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !183, line: 673, column: 15)
!1710 = distinct !DILexicalBlock(scope: !1677, file: !183, line: 672, column: 17)
!1711 = !DILocation(line: 248, column: 33, scope: !1642)
!1712 = !DILocation(line: 248, column: 48, scope: !1642)
!1713 = !DILocation(line: 249, column: 39, scope: !1642)
!1714 = !DILocation(line: 249, column: 51, scope: !1642)
!1715 = !DILocation(line: 250, column: 46, scope: !1642)
!1716 = !DILocation(line: 250, column: 65, scope: !1642)
!1717 = !DILocation(line: 251, column: 47, scope: !1642)
!1718 = !DILocation(line: 252, column: 39, scope: !1642)
!1719 = !DILocation(line: 253, column: 39, scope: !1642)
!1720 = !DILocation(line: 256, column: 10, scope: !1642)
!1721 = !DILocation(line: 257, column: 10, scope: !1642)
!1722 = !DILocation(line: 258, column: 15, scope: !1642)
!1723 = !DILocation(line: 259, column: 10, scope: !1642)
!1724 = !DILocation(line: 260, column: 8, scope: !1642)
!1725 = !DILocation(line: 261, column: 25, scope: !1642)
!1726 = !DILocation(line: 261, column: 36, scope: !1642)
!1727 = !DILocation(line: 262, column: 8, scope: !1642)
!1728 = !DILocation(line: 263, column: 8, scope: !1642)
!1729 = !DILocation(line: 264, column: 8, scope: !1642)
!1730 = !DILocation(line: 265, column: 8, scope: !1642)
!1731 = !DILocation(line: 265, column: 3, scope: !1642)
!1732 = !DILocation(line: 308, column: 3, scope: !1642)
!1733 = !DILocation(line: 315, column: 11, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1642, file: !183, line: 309, column: 5)
!1735 = !DILocation(line: 315, column: 12, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1734, file: !183, line: 315, column: 11)
!1737 = !DILocation(line: 316, column: 9, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1739, file: !183, discriminator: 1)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !183, line: 316, column: 9)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !183, line: 316, column: 9)
!1741 = !DILocation(line: 316, column: 9, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1740, file: !183, discriminator: 1)
!1743 = !DILocation(line: 316, column: 9, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1739, file: !183, discriminator: 2)
!1745 = !DILocation(line: 354, column: 26, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !183, line: 332, column: 11)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !183, line: 331, column: 13)
!1748 = distinct !DILexicalBlock(scope: !1734, file: !183, line: 330, column: 7)
!1749 = !DILocation(line: 355, column: 27, scope: !1746)
!1750 = !DILocation(line: 356, column: 11, scope: !1746)
!1751 = !DILocation(line: 357, column: 14, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !183, line: 357, column: 13)
!1753 = !DILocation(line: 357, column: 13, scope: !1748)
!1754 = !DILocation(line: 358, column: 43, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1756, file: !183, discriminator: 1)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !183, line: 358, column: 11)
!1757 = distinct !DILexicalBlock(scope: !1752, file: !183, line: 358, column: 11)
!1758 = !DILocation(line: 358, column: 11, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1757, file: !183, discriminator: 1)
!1760 = !DILocation(line: 359, column: 13, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1762, file: !183, discriminator: 1)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !183, line: 359, column: 13)
!1763 = distinct !DILexicalBlock(scope: !1756, file: !183, line: 359, column: 13)
!1764 = !DILocation(line: 359, column: 13, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1763, file: !183, discriminator: 1)
!1766 = !DILocation(line: 359, column: 13, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1762, file: !183, discriminator: 2)
!1768 = !DILocation(line: 359, column: 13, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1763, file: !183, discriminator: 3)
!1770 = !DILocation(line: 358, column: 70, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1756, file: !183, discriminator: 2)
!1772 = distinct !{!1772, !1773, !1774}
!1773 = !DILocation(line: 358, column: 11, scope: !1757)
!1774 = !DILocation(line: 359, column: 13, scope: !1757)
!1775 = !DILocation(line: 362, column: 28, scope: !1748)
!1776 = !DILocation(line: 364, column: 7, scope: !1734)
!1777 = !DILocation(line: 367, column: 7, scope: !1734)
!1778 = !DILocation(line: 370, column: 7, scope: !1734)
!1779 = !DILocation(line: 373, column: 12, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1734, file: !183, line: 373, column: 11)
!1781 = !DILocation(line: 373, column: 11, scope: !1734)
!1782 = !DILocation(line: 378, column: 12, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1734, file: !183, line: 378, column: 11)
!1784 = !DILocation(line: 378, column: 11, scope: !1734)
!1785 = !DILocation(line: 379, column: 9, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1787, file: !183, discriminator: 1)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !183, line: 379, column: 9)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !183, line: 379, column: 9)
!1789 = !DILocation(line: 379, column: 9, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1788, file: !183, discriminator: 1)
!1791 = !DILocation(line: 379, column: 9, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1787, file: !183, discriminator: 2)
!1793 = !DILocation(line: 386, column: 7, scope: !1734)
!1794 = !DILocation(line: 389, column: 7, scope: !1734)
!1795 = !DILocation(line: 255, column: 10, scope: !1642)
!1796 = !DILocation(line: 392, column: 8, scope: !1671)
!1797 = !DILocation(line: 392, column: 27, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1670, file: !183, discriminator: 1)
!1799 = !DILocation(line: 392, column: 19, scope: !1798)
!1800 = !DILocation(line: 392, column: 60, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1670, file: !183, discriminator: 3)
!1802 = !DILocation(line: 392, column: 3, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1671, file: !183, discriminator: 4)
!1804 = !DILocation(line: 392, column: 41, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1670, file: !183, discriminator: 2)
!1806 = !DILocation(line: 392, column: 48, scope: !1805)
!1807 = !DILocation(line: 396, column: 12, scope: !1669)
!1808 = !DILocation(line: 397, column: 12, scope: !1669)
!1809 = !DILocation(line: 398, column: 12, scope: !1669)
!1810 = !DILocation(line: 401, column: 11, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1669, file: !183, line: 400, column: 11)
!1812 = !DILocation(line: 403, column: 17, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1811, file: !183, discriminator: 1)
!1814 = !DILocation(line: 404, column: 39, scope: !1811)
!1815 = !DILocation(line: 408, column: 32, scope: !1811)
!1816 = !DILocation(line: 404, column: 19, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1811, file: !183, discriminator: 2)
!1818 = !DILocation(line: 404, column: 15, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1811, file: !183, discriminator: 4)
!1820 = !DILocation(line: 409, column: 11, scope: !1811)
!1821 = !DILocation(line: 409, column: 26, scope: !1813)
!1822 = !DILocation(line: 409, column: 14, scope: !1813)
!1823 = !DILocation(line: 400, column: 11, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1669, file: !183, discriminator: 1)
!1825 = !DILocation(line: 416, column: 11, scope: !1669)
!1826 = !DILocation(line: 394, column: 21, scope: !1669)
!1827 = !DILocation(line: 417, column: 7, scope: !1669)
!1828 = !DILocation(line: 420, column: 15, scope: !1678)
!1829 = !DILocation(line: 422, column: 15, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1831, file: !183, discriminator: 1)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !183, line: 422, column: 15)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !183, line: 421, column: 13)
!1833 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 420, column: 15)
!1834 = !DILocation(line: 422, column: 15, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1836, file: !183, discriminator: 4)
!1836 = distinct !DILexicalBlock(scope: !1831, file: !183, line: 422, column: 15)
!1837 = !DILocation(line: 422, column: 15, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1836, file: !183, discriminator: 3)
!1839 = !DILocation(line: 422, column: 15, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !183, discriminator: 6)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !183, line: 422, column: 15)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !183, line: 422, column: 15)
!1843 = distinct !DILexicalBlock(scope: !1836, file: !183, line: 422, column: 15)
!1844 = !DILocation(line: 422, column: 15, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1842, file: !183, discriminator: 6)
!1846 = !DILocation(line: 422, column: 15, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1841, file: !183, discriminator: 7)
!1848 = !DILocation(line: 422, column: 15, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1842, file: !183, discriminator: 8)
!1850 = !DILocation(line: 422, column: 15, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1852, file: !183, discriminator: 11)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !183, line: 422, column: 15)
!1853 = distinct !DILexicalBlock(scope: !1843, file: !183, line: 422, column: 15)
!1854 = !DILocation(line: 422, column: 15, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1853, file: !183, discriminator: 11)
!1856 = !DILocation(line: 422, column: 15, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1852, file: !183, discriminator: 12)
!1858 = !DILocation(line: 422, column: 15, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1853, file: !183, discriminator: 13)
!1860 = !DILocation(line: 422, column: 15, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1862, file: !183, discriminator: 16)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !183, line: 422, column: 15)
!1863 = distinct !DILexicalBlock(scope: !1843, file: !183, line: 422, column: 15)
!1864 = !DILocation(line: 422, column: 15, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1863, file: !183, discriminator: 16)
!1866 = !DILocation(line: 422, column: 15, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1862, file: !183, discriminator: 17)
!1868 = !DILocation(line: 422, column: 15, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1863, file: !183, discriminator: 18)
!1870 = !DILocation(line: 422, column: 15, scope: !1871)
!1871 = !DILexicalBlockFile(scope: !1843, file: !183, discriminator: 20)
!1872 = !DILocation(line: 422, column: 15, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1874, file: !183, discriminator: 22)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !183, line: 422, column: 15)
!1875 = distinct !DILexicalBlock(scope: !1831, file: !183, line: 422, column: 15)
!1876 = !DILocation(line: 422, column: 15, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1875, file: !183, discriminator: 22)
!1878 = !DILocation(line: 422, column: 15, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1874, file: !183, discriminator: 23)
!1880 = !DILocation(line: 422, column: 15, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1875, file: !183, discriminator: 24)
!1882 = !DILocation(line: 430, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1832, file: !183, line: 429, column: 19)
!1884 = !DILocation(line: 430, column: 24, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1883, file: !183, discriminator: 1)
!1886 = !DILocation(line: 430, column: 28, scope: !1885)
!1887 = !DILocation(line: 430, column: 38, scope: !1885)
!1888 = !DILocation(line: 430, column: 48, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1883, file: !183, discriminator: 2)
!1890 = !DILocation(line: 430, column: 59, scope: !1889)
!1891 = !DILocation(line: 432, column: 19, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1893, file: !183, discriminator: 1)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !183, line: 432, column: 19)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !183, line: 432, column: 19)
!1895 = distinct !DILexicalBlock(scope: !1883, file: !183, line: 431, column: 17)
!1896 = !DILocation(line: 432, column: 19, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1894, file: !183, discriminator: 1)
!1898 = !DILocation(line: 432, column: 19, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1893, file: !183, discriminator: 2)
!1900 = !DILocation(line: 432, column: 19, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1894, file: !183, discriminator: 3)
!1902 = !DILocation(line: 433, column: 19, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1904, file: !183, discriminator: 1)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !183, line: 433, column: 19)
!1905 = distinct !DILexicalBlock(scope: !1895, file: !183, line: 433, column: 19)
!1906 = !DILocation(line: 433, column: 19, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1905, file: !183, discriminator: 1)
!1908 = !DILocation(line: 433, column: 19, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1904, file: !183, discriminator: 2)
!1910 = !DILocation(line: 433, column: 19, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1905, file: !183, discriminator: 3)
!1912 = !DILocation(line: 434, column: 17, scope: !1895)
!1913 = !DILocation(line: 441, column: 20, scope: !1833)
!1914 = !DILocation(line: 446, column: 11, scope: !1678)
!1915 = !DILocation(line: 449, column: 19, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 447, column: 13)
!1917 = !DILocation(line: 455, column: 19, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1916, file: !183, line: 454, column: 19)
!1919 = !DILocation(line: 455, column: 24, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1918, file: !183, discriminator: 1)
!1921 = !DILocation(line: 455, column: 28, scope: !1920)
!1922 = !DILocation(line: 455, column: 38, scope: !1920)
!1923 = !DILocation(line: 455, column: 47, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1918, file: !183, discriminator: 2)
!1925 = !DILocation(line: 455, column: 41, scope: !1924)
!1926 = !DILocation(line: 455, column: 52, scope: !1924)
!1927 = !DILocation(line: 454, column: 19, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1916, file: !183, discriminator: 1)
!1929 = !DILocation(line: 456, column: 25, scope: !1918)
!1930 = !DILocation(line: 456, column: 17, scope: !1918)
!1931 = !DILocation(line: 463, column: 25, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1918, file: !183, line: 457, column: 19)
!1933 = !DILocation(line: 467, column: 21, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1935, file: !183, discriminator: 1)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !183, line: 467, column: 21)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !183, line: 467, column: 21)
!1937 = !DILocation(line: 467, column: 21, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1936, file: !183, discriminator: 1)
!1939 = !DILocation(line: 467, column: 21, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1935, file: !183, discriminator: 2)
!1941 = !DILocation(line: 467, column: 21, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1936, file: !183, discriminator: 3)
!1943 = !DILocation(line: 468, column: 21, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1945, file: !183, discriminator: 1)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !183, line: 468, column: 21)
!1946 = distinct !DILexicalBlock(scope: !1932, file: !183, line: 468, column: 21)
!1947 = !DILocation(line: 468, column: 21, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1946, file: !183, discriminator: 1)
!1949 = !DILocation(line: 468, column: 21, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1945, file: !183, discriminator: 2)
!1951 = !DILocation(line: 468, column: 21, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1946, file: !183, discriminator: 3)
!1953 = !DILocation(line: 469, column: 21, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1955, file: !183, discriminator: 1)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !183, line: 469, column: 21)
!1956 = distinct !DILexicalBlock(scope: !1932, file: !183, line: 469, column: 21)
!1957 = !DILocation(line: 469, column: 21, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1956, file: !183, discriminator: 1)
!1959 = !DILocation(line: 469, column: 21, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1955, file: !183, discriminator: 2)
!1961 = !DILocation(line: 469, column: 21, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1956, file: !183, discriminator: 3)
!1963 = !DILocation(line: 470, column: 21, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1965, file: !183, discriminator: 1)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !183, line: 470, column: 21)
!1966 = distinct !DILexicalBlock(scope: !1932, file: !183, line: 470, column: 21)
!1967 = !DILocation(line: 470, column: 21, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1966, file: !183, discriminator: 1)
!1969 = !DILocation(line: 470, column: 21, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1965, file: !183, discriminator: 2)
!1971 = !DILocation(line: 470, column: 21, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1966, file: !183, discriminator: 3)
!1973 = !DILocation(line: 471, column: 21, scope: !1932)
!1974 = !DILocation(line: 395, column: 21, scope: !1669)
!1975 = !DILocation(line: 484, column: 31, scope: !1678)
!1976 = !DILocation(line: 485, column: 31, scope: !1678)
!1977 = !DILocation(line: 487, column: 31, scope: !1678)
!1978 = !DILocation(line: 488, column: 31, scope: !1678)
!1979 = !DILocation(line: 489, column: 31, scope: !1678)
!1980 = !DILocation(line: 492, column: 15, scope: !1678)
!1981 = !DILocation(line: 494, column: 19, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !183, line: 493, column: 13)
!1983 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 492, column: 15)
!1984 = !DILocation(line: 501, column: 33, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 501, column: 15)
!1986 = !DILocation(line: 506, column: 15, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 505, column: 15)
!1988 = !DILocation(line: 510, column: 15, scope: !1678)
!1989 = !DILocation(line: 518, column: 26, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 518, column: 15)
!1991 = !DILocation(line: 518, column: 15, scope: !1678)
!1992 = !DILocation(line: 518, column: 40, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1990, file: !183, discriminator: 1)
!1994 = !DILocation(line: 518, column: 47, scope: !1993)
!1995 = !DILocation(line: 522, column: 17, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 522, column: 15)
!1997 = !DILocation(line: 518, column: 18, scope: !1993)
!1998 = !DILocation(line: 518, column: 65, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1990, file: !183, discriminator: 2)
!2000 = !DILocation(line: 518, column: 15, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1678, file: !183, discriminator: 2)
!2002 = !DILocation(line: 522, column: 15, scope: !1678)
!2003 = !DILocation(line: 526, column: 11, scope: !1678)
!2004 = !DILocation(line: 541, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 540, column: 15)
!2006 = !DILocation(line: 548, column: 15, scope: !1678)
!2007 = !DILocation(line: 550, column: 19, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !183, line: 549, column: 13)
!2009 = distinct !DILexicalBlock(scope: !1678, file: !183, line: 548, column: 15)
!2010 = !DILocation(line: 553, column: 19, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !183, line: 553, column: 19)
!2012 = !DILocation(line: 553, column: 35, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2011, file: !183, discriminator: 1)
!2014 = !DILocation(line: 553, column: 30, scope: !2011)
!2015 = !DILocation(line: 562, column: 15, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2017, file: !183, discriminator: 1)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !183, line: 562, column: 15)
!2018 = distinct !DILexicalBlock(scope: !2008, file: !183, line: 562, column: 15)
!2019 = !DILocation(line: 562, column: 15, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2018, file: !183, discriminator: 1)
!2021 = !DILocation(line: 562, column: 15, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2017, file: !183, discriminator: 2)
!2023 = !DILocation(line: 562, column: 15, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2018, file: !183, discriminator: 3)
!2025 = !DILocation(line: 563, column: 15, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2027, file: !183, discriminator: 1)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !183, line: 563, column: 15)
!2028 = distinct !DILexicalBlock(scope: !2008, file: !183, line: 563, column: 15)
!2029 = !DILocation(line: 563, column: 15, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2028, file: !183, discriminator: 1)
!2031 = !DILocation(line: 563, column: 15, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2027, file: !183, discriminator: 2)
!2033 = !DILocation(line: 563, column: 15, scope: !2034)
!2034 = !DILexicalBlockFile(scope: !2028, file: !183, discriminator: 3)
!2035 = !DILocation(line: 564, column: 15, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2037, file: !183, discriminator: 1)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !183, line: 564, column: 15)
!2038 = distinct !DILexicalBlock(scope: !2008, file: !183, line: 564, column: 15)
!2039 = !DILocation(line: 564, column: 15, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2038, file: !183, discriminator: 1)
!2041 = !DILocation(line: 564, column: 15, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2037, file: !183, discriminator: 2)
!2043 = !DILocation(line: 564, column: 15, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2038, file: !183, discriminator: 3)
!2045 = !DILocation(line: 566, column: 13, scope: !2008)
!2046 = !DILocation(line: 606, column: 17, scope: !1677)
!2047 = !DILocation(line: 602, column: 20, scope: !1677)
!2048 = !DILocation(line: 609, column: 29, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1682, file: !183, line: 607, column: 15)
!2050 = !DILocation(line: 609, column: 27, scope: !2049)
!2051 = !DILocation(line: 604, column: 18, scope: !1677)
!2052 = !DILocation(line: 610, column: 15, scope: !2049)
!2053 = !DILocation(line: 613, column: 17, scope: !1681)
!2054 = !DILocation(line: 614, column: 17, scope: !1681)
!2055 = !DILocation(line: 618, column: 29, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1681, file: !183, line: 618, column: 21)
!2057 = !DILocation(line: 618, column: 21, scope: !1681)
!2058 = distinct !{!2058, !2059, !2060}
!2059 = !DILocation(line: 621, column: 17, scope: !1681)
!2060 = !DILocation(line: 667, column: 44, scope: !1681)
!2061 = !DILocation(line: 619, column: 29, scope: !2056)
!2062 = !DILocation(line: 619, column: 19, scope: !2056)
!2063 = !DILocation(line: 623, column: 21, scope: !1698)
!2064 = !DILocation(line: 624, column: 56, scope: !1698)
!2065 = !DILocation(line: 624, column: 50, scope: !1698)
!2066 = !DILocation(line: 625, column: 53, scope: !1698)
!2067 = !DILocation(line: 613, column: 27, scope: !1681)
!2068 = !DILocation(line: 623, column: 29, scope: !1698)
!2069 = !DILocation(line: 624, column: 36, scope: !1698)
!2070 = !DILocation(line: 624, column: 28, scope: !1698)
!2071 = !DILocation(line: 626, column: 25, scope: !1698)
!2072 = !DILocation(line: 636, column: 38, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2074, file: !183, discriminator: 1)
!2074 = distinct !DILexicalBlock(scope: !1705, file: !183, line: 634, column: 23)
!2075 = !DILocation(line: 636, column: 48, scope: !2073)
!2076 = !DILocation(line: 636, column: 51, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2074, file: !183, discriminator: 2)
!2078 = !DILocation(line: 636, column: 48, scope: !2077)
!2079 = !DILocation(line: 636, column: 25, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2074, file: !183, discriminator: 3)
!2081 = !DILocation(line: 637, column: 28, scope: !2074)
!2082 = !DILocation(line: 636, column: 34, scope: !2073)
!2083 = distinct !{!2083, !2084, !2081}
!2084 = !DILocation(line: 636, column: 25, scope: !2074)
!2085 = !DILocation(line: 650, column: 43, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2087, file: !183, discriminator: 1)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !183, line: 650, column: 29)
!2088 = distinct !DILexicalBlock(scope: !1702, file: !183, line: 650, column: 29)
!2089 = !DILocation(line: 647, column: 29, scope: !1703)
!2090 = !DILocation(line: 649, column: 36, scope: !1702)
!2091 = !DILocation(line: 651, column: 49, scope: !2087)
!2092 = !DILocation(line: 651, column: 39, scope: !2087)
!2093 = !DILocation(line: 651, column: 31, scope: !2087)
!2094 = !DILocation(line: 650, column: 53, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2087, file: !183, discriminator: 2)
!2096 = !DILocation(line: 650, column: 29, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2088, file: !183, discriminator: 1)
!2098 = distinct !{!2098, !2099, !2100}
!2099 = !DILocation(line: 650, column: 29, scope: !2088)
!2100 = !DILocation(line: 659, column: 33, scope: !2088)
!2101 = !DILocation(line: 666, column: 19, scope: !1681)
!2102 = !DILocation(line: 662, column: 41, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1704, file: !183, line: 662, column: 29)
!2104 = !DILocation(line: 662, column: 31, scope: !2103)
!2105 = !DILocation(line: 662, column: 29, scope: !1704)
!2106 = !DILocation(line: 664, column: 27, scope: !1704)
!2107 = !DILocation(line: 667, column: 26, scope: !1681)
!2108 = !DILocation(line: 667, column: 24, scope: !1681)
!2109 = !DILocation(line: 666, column: 19, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !1698, file: !183, discriminator: 3)
!2111 = !DILocation(line: 668, column: 15, scope: !1682)
!2112 = !DILocation(line: 670, column: 40, scope: !1677)
!2113 = !DILocation(line: 672, column: 19, scope: !1710)
!2114 = !DILocation(line: 672, column: 45, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !1710, file: !183, discriminator: 1)
!2116 = !DILocation(line: 672, column: 23, scope: !1710)
!2117 = !DILocation(line: 676, column: 33, scope: !1709)
!2118 = !DILocation(line: 676, column: 24, scope: !1709)
!2119 = !DILocation(line: 678, column: 17, scope: !1709)
!2120 = !DILocation(line: 680, column: 43, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !183, line: 680, column: 25)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !183, line: 679, column: 19)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !183, line: 678, column: 17)
!2124 = distinct !DILexicalBlock(scope: !1709, file: !183, line: 678, column: 17)
!2125 = !DILocation(line: 682, column: 25, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2127, file: !183, discriminator: 1)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !183, line: 682, column: 25)
!2128 = distinct !DILexicalBlock(scope: !2121, file: !183, line: 681, column: 23)
!2129 = !DILocation(line: 682, column: 25, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2131, file: !183, discriminator: 4)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !183, line: 682, column: 25)
!2132 = !DILocation(line: 682, column: 25, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2131, file: !183, discriminator: 3)
!2134 = !DILocation(line: 682, column: 25, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2136, file: !183, discriminator: 6)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !183, line: 682, column: 25)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !183, line: 682, column: 25)
!2138 = distinct !DILexicalBlock(scope: !2131, file: !183, line: 682, column: 25)
!2139 = !DILocation(line: 682, column: 25, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2137, file: !183, discriminator: 6)
!2141 = !DILocation(line: 682, column: 25, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2136, file: !183, discriminator: 7)
!2143 = !DILocation(line: 682, column: 25, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2137, file: !183, discriminator: 8)
!2145 = !DILocation(line: 682, column: 25, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2147, file: !183, discriminator: 11)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !183, line: 682, column: 25)
!2148 = distinct !DILexicalBlock(scope: !2138, file: !183, line: 682, column: 25)
!2149 = !DILocation(line: 682, column: 25, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2148, file: !183, discriminator: 11)
!2151 = !DILocation(line: 682, column: 25, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2147, file: !183, discriminator: 12)
!2153 = !DILocation(line: 682, column: 25, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2148, file: !183, discriminator: 13)
!2155 = !DILocation(line: 682, column: 25, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2157, file: !183, discriminator: 16)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !183, line: 682, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2138, file: !183, line: 682, column: 25)
!2159 = !DILocation(line: 682, column: 25, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2158, file: !183, discriminator: 16)
!2161 = !DILocation(line: 682, column: 25, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2157, file: !183, discriminator: 17)
!2163 = !DILocation(line: 682, column: 25, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2158, file: !183, discriminator: 18)
!2165 = !DILocation(line: 682, column: 25, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2138, file: !183, discriminator: 20)
!2167 = !DILocation(line: 682, column: 25, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2169, file: !183, discriminator: 22)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !183, line: 682, column: 25)
!2170 = distinct !DILexicalBlock(scope: !2127, file: !183, line: 682, column: 25)
!2171 = !DILocation(line: 682, column: 25, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2170, file: !183, discriminator: 22)
!2173 = !DILocation(line: 682, column: 25, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2169, file: !183, discriminator: 23)
!2175 = !DILocation(line: 682, column: 25, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2170, file: !183, discriminator: 24)
!2177 = !DILocation(line: 683, column: 25, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2179, file: !183, discriminator: 1)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !183, line: 683, column: 25)
!2180 = distinct !DILexicalBlock(scope: !2128, file: !183, line: 683, column: 25)
!2181 = !DILocation(line: 683, column: 25, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2180, file: !183, discriminator: 1)
!2183 = !DILocation(line: 683, column: 25, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2179, file: !183, discriminator: 2)
!2185 = !DILocation(line: 683, column: 25, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2180, file: !183, discriminator: 3)
!2187 = !DILocation(line: 684, column: 25, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2189, file: !183, discriminator: 1)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !183, line: 684, column: 25)
!2190 = distinct !DILexicalBlock(scope: !2128, file: !183, line: 684, column: 25)
!2191 = !DILocation(line: 684, column: 25, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2190, file: !183, discriminator: 1)
!2193 = !DILocation(line: 684, column: 25, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2189, file: !183, discriminator: 2)
!2195 = !DILocation(line: 684, column: 25, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2190, file: !183, discriminator: 3)
!2197 = !DILocation(line: 685, column: 38, scope: !2128)
!2198 = !DILocation(line: 685, column: 33, scope: !2128)
!2199 = !DILocation(line: 686, column: 23, scope: !2128)
!2200 = !DILocation(line: 687, column: 30, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2121, file: !183, line: 687, column: 30)
!2202 = !DILocation(line: 687, column: 30, scope: !2121)
!2203 = !DILocation(line: 689, column: 25, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2205, file: !183, discriminator: 1)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !183, line: 689, column: 25)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !183, line: 689, column: 25)
!2207 = distinct !DILexicalBlock(scope: !2201, file: !183, line: 688, column: 23)
!2208 = !DILocation(line: 689, column: 25, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2206, file: !183, discriminator: 1)
!2210 = !DILocation(line: 689, column: 25, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2205, file: !183, discriminator: 2)
!2212 = !DILocation(line: 689, column: 25, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2206, file: !183, discriminator: 3)
!2214 = !DILocation(line: 691, column: 23, scope: !2207)
!2215 = !DILocation(line: 692, column: 35, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2122, file: !183, line: 692, column: 25)
!2217 = !DILocation(line: 692, column: 30, scope: !2216)
!2218 = !DILocation(line: 692, column: 25, scope: !2122)
!2219 = !DILocation(line: 694, column: 21, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2221, file: !183, discriminator: 1)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !183, line: 694, column: 21)
!2222 = distinct !DILexicalBlock(scope: !2122, file: !183, line: 694, column: 21)
!2223 = !DILocation(line: 694, column: 21, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2221, file: !183, discriminator: 2)
!2225 = !DILocation(line: 694, column: 21, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2227, file: !183, discriminator: 4)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !183, line: 694, column: 21)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !183, line: 694, column: 21)
!2229 = distinct !DILexicalBlock(scope: !2221, file: !183, line: 694, column: 21)
!2230 = !DILocation(line: 694, column: 21, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2228, file: !183, discriminator: 4)
!2232 = !DILocation(line: 694, column: 21, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2227, file: !183, discriminator: 5)
!2234 = !DILocation(line: 694, column: 21, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2228, file: !183, discriminator: 6)
!2236 = !DILocation(line: 694, column: 21, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2238, file: !183, discriminator: 9)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !183, line: 694, column: 21)
!2239 = distinct !DILexicalBlock(scope: !2229, file: !183, line: 694, column: 21)
!2240 = !DILocation(line: 694, column: 21, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2239, file: !183, discriminator: 9)
!2242 = !DILocation(line: 694, column: 21, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2238, file: !183, discriminator: 10)
!2244 = !DILocation(line: 694, column: 21, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2239, file: !183, discriminator: 11)
!2246 = !DILocation(line: 694, column: 21, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2229, file: !183, discriminator: 13)
!2248 = !DILocation(line: 695, column: 21, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !183, discriminator: 1)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !183, line: 695, column: 21)
!2251 = distinct !DILexicalBlock(scope: !2122, file: !183, line: 695, column: 21)
!2252 = !DILocation(line: 695, column: 21, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2251, file: !183, discriminator: 1)
!2254 = !DILocation(line: 695, column: 21, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2250, file: !183, discriminator: 2)
!2256 = !DILocation(line: 695, column: 21, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2251, file: !183, discriminator: 3)
!2258 = !DILocation(line: 696, column: 25, scope: !2122)
!2259 = !DILocation(line: 678, column: 17, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2123, file: !183, discriminator: 1)
!2261 = distinct !{!2261, !2262, !2263}
!2262 = !DILocation(line: 678, column: 17, scope: !2124)
!2263 = !DILocation(line: 697, column: 19, scope: !2124)
!2264 = !DILocation(line: 704, column: 34, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !1669, file: !183, line: 704, column: 11)
!2266 = !DILocation(line: 706, column: 14, scope: !2265)
!2267 = !DILocation(line: 707, column: 14, scope: !2265)
!2268 = !DILocation(line: 707, column: 35, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2265, file: !183, discriminator: 1)
!2270 = !DILocation(line: 707, column: 17, scope: !2269)
!2271 = !DILocation(line: 707, column: 53, scope: !2269)
!2272 = !DILocation(line: 707, column: 47, scope: !2269)
!2273 = !DILocation(line: 707, column: 65, scope: !2269)
!2274 = !DILocation(line: 708, column: 15, scope: !2269)
!2275 = !DILocation(line: 708, column: 11, scope: !2265)
!2276 = !DILocation(line: 704, column: 11, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !1669, file: !183, discriminator: 2)
!2278 = !DILocation(line: 712, column: 7, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2280, file: !183, discriminator: 1)
!2280 = distinct !DILexicalBlock(scope: !1669, file: !183, line: 712, column: 7)
!2281 = !DILocation(line: 712, column: 7, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2283, file: !183, discriminator: 4)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !183, line: 712, column: 7)
!2284 = !DILocation(line: 712, column: 7, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2283, file: !183, discriminator: 3)
!2286 = !DILocation(line: 712, column: 7, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2288, file: !183, discriminator: 6)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !183, line: 712, column: 7)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !183, line: 712, column: 7)
!2290 = distinct !DILexicalBlock(scope: !2283, file: !183, line: 712, column: 7)
!2291 = !DILocation(line: 712, column: 7, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2289, file: !183, discriminator: 6)
!2293 = !DILocation(line: 712, column: 7, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2288, file: !183, discriminator: 7)
!2295 = !DILocation(line: 712, column: 7, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2289, file: !183, discriminator: 8)
!2297 = !DILocation(line: 712, column: 7, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2299, file: !183, discriminator: 11)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !183, line: 712, column: 7)
!2300 = distinct !DILexicalBlock(scope: !2290, file: !183, line: 712, column: 7)
!2301 = !DILocation(line: 712, column: 7, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2300, file: !183, discriminator: 11)
!2303 = !DILocation(line: 712, column: 7, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2299, file: !183, discriminator: 12)
!2305 = !DILocation(line: 712, column: 7, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2300, file: !183, discriminator: 13)
!2307 = !DILocation(line: 712, column: 7, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2309, file: !183, discriminator: 16)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !183, line: 712, column: 7)
!2310 = distinct !DILexicalBlock(scope: !2290, file: !183, line: 712, column: 7)
!2311 = !DILocation(line: 712, column: 7, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2310, file: !183, discriminator: 16)
!2313 = !DILocation(line: 712, column: 7, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2309, file: !183, discriminator: 17)
!2315 = !DILocation(line: 712, column: 7, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2310, file: !183, discriminator: 18)
!2317 = !DILocation(line: 712, column: 7, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2290, file: !183, discriminator: 20)
!2319 = !DILocation(line: 712, column: 7, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2321, file: !183, discriminator: 22)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !183, line: 712, column: 7)
!2322 = distinct !DILexicalBlock(scope: !2280, file: !183, line: 712, column: 7)
!2323 = !DILocation(line: 712, column: 7, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2322, file: !183, discriminator: 22)
!2325 = !DILocation(line: 712, column: 7, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2321, file: !183, discriminator: 23)
!2327 = !DILocation(line: 712, column: 7, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2322, file: !183, discriminator: 24)
!2329 = !DILocation(line: 715, column: 7, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2331, file: !183, discriminator: 1)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !183, line: 715, column: 7)
!2332 = distinct !DILexicalBlock(scope: !1669, file: !183, line: 715, column: 7)
!2333 = !DILocation(line: 715, column: 7, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2331, file: !183, discriminator: 2)
!2335 = !DILocation(line: 715, column: 7, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2337, file: !183, discriminator: 4)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !183, line: 715, column: 7)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !183, line: 715, column: 7)
!2339 = distinct !DILexicalBlock(scope: !2331, file: !183, line: 715, column: 7)
!2340 = !DILocation(line: 715, column: 7, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2338, file: !183, discriminator: 4)
!2342 = !DILocation(line: 715, column: 7, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2337, file: !183, discriminator: 5)
!2344 = !DILocation(line: 715, column: 7, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2338, file: !183, discriminator: 6)
!2346 = !DILocation(line: 715, column: 7, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2348, file: !183, discriminator: 9)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !183, line: 715, column: 7)
!2349 = distinct !DILexicalBlock(scope: !2339, file: !183, line: 715, column: 7)
!2350 = !DILocation(line: 715, column: 7, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2349, file: !183, discriminator: 9)
!2352 = !DILocation(line: 715, column: 7, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2348, file: !183, discriminator: 10)
!2354 = !DILocation(line: 715, column: 7, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2349, file: !183, discriminator: 11)
!2356 = !DILocation(line: 715, column: 7, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2339, file: !183, discriminator: 13)
!2358 = !DILocation(line: 716, column: 7, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2360, file: !183, discriminator: 1)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !183, line: 716, column: 7)
!2361 = distinct !DILexicalBlock(scope: !1669, file: !183, line: 716, column: 7)
!2362 = !DILocation(line: 716, column: 7, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2361, file: !183, discriminator: 1)
!2364 = !DILocation(line: 716, column: 7, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2360, file: !183, discriminator: 2)
!2366 = !DILocation(line: 716, column: 7, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2361, file: !183, discriminator: 3)
!2368 = !DILocation(line: 718, column: 13, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !1669, file: !183, line: 718, column: 11)
!2370 = !DILocation(line: 718, column: 11, scope: !1669)
!2371 = !DILocation(line: 720, column: 5, scope: !1670)
!2372 = !DILocation(line: 392, column: 75, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !1670, file: !183, discriminator: 5)
!2374 = !DILocation(line: 392, column: 3, scope: !2373)
!2375 = distinct !{!2375, !2376, !2377}
!2376 = !DILocation(line: 392, column: 3, scope: !1671)
!2377 = !DILocation(line: 720, column: 5, scope: !1671)
!2378 = !DILocation(line: 722, column: 11, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !1642, file: !183, line: 722, column: 7)
!2380 = !DILocation(line: 722, column: 16, scope: !2379)
!2381 = !DILocation(line: 730, column: 51, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !1642, file: !183, line: 730, column: 7)
!2383 = !DILocation(line: 731, column: 10, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2382, file: !183, discriminator: 1)
!2385 = !DILocation(line: 733, column: 11, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !183, line: 733, column: 11)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !183, line: 732, column: 5)
!2388 = !DILocation(line: 733, column: 11, scope: !2387)
!2389 = !DILocation(line: 734, column: 16, scope: !2386)
!2390 = !DILocation(line: 734, column: 9, scope: !2386)
!2391 = !DILocation(line: 738, column: 18, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2386, file: !183, line: 738, column: 16)
!2393 = !DILocation(line: 738, column: 32, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2392, file: !183, discriminator: 1)
!2395 = !DILocation(line: 738, column: 29, scope: !2392)
!2396 = !DILocation(line: 747, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !1642, file: !183, line: 747, column: 7)
!2398 = !DILocation(line: 747, column: 20, scope: !2397)
!2399 = !DILocation(line: 748, column: 12, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2401, file: !183, discriminator: 1)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !183, line: 748, column: 5)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !183, line: 748, column: 5)
!2403 = !DILocation(line: 748, column: 5, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2402, file: !183, discriminator: 1)
!2405 = !DILocation(line: 749, column: 7, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2407, file: !183, discriminator: 1)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !183, line: 749, column: 7)
!2408 = distinct !DILexicalBlock(scope: !2401, file: !183, line: 749, column: 7)
!2409 = !DILocation(line: 749, column: 7, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2408, file: !183, discriminator: 1)
!2411 = !DILocation(line: 749, column: 7, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !2407, file: !183, discriminator: 2)
!2413 = !DILocation(line: 749, column: 7, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2408, file: !183, discriminator: 3)
!2415 = !DILocation(line: 748, column: 39, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2401, file: !183, discriminator: 2)
!2417 = distinct !{!2417, !2418, !2419}
!2418 = !DILocation(line: 748, column: 5, scope: !2402)
!2419 = !DILocation(line: 749, column: 7, scope: !2402)
!2420 = !DILocation(line: 751, column: 11, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !1642, file: !183, line: 751, column: 7)
!2422 = !DILocation(line: 751, column: 7, scope: !1642)
!2423 = !DILocation(line: 752, column: 5, scope: !2421)
!2424 = !DILocation(line: 752, column: 17, scope: !2421)
!2425 = !DILocation(line: 758, column: 21, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !1642, file: !183, line: 758, column: 7)
!2427 = !DILocation(line: 758, column: 54, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2426, file: !183, discriminator: 1)
!2429 = !DILocation(line: 758, column: 51, scope: !2426)
!2430 = !DILocation(line: 762, column: 42, scope: !1642)
!2431 = !DILocation(line: 760, column: 10, scope: !1642)
!2432 = !DILocation(line: 760, column: 3, scope: !1642)
!2433 = !DILocation(line: 764, column: 1, scope: !1642)
!2434 = distinct !DISubprogram(name: "gettext_quote", scope: !183, file: !183, line: 199, type: !2435, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!75, !75, !5}
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DILocalVariable(name: "msgid", arg: 1, scope: !2434, file: !183, line: 199, type: !75)
!2439 = !DILocalVariable(name: "s", arg: 2, scope: !2434, file: !183, line: 199, type: !5)
!2440 = !DILocalVariable(name: "translation", scope: !2434, file: !183, line: 201, type: !75)
!2441 = !DILocalVariable(name: "locale_code", scope: !2434, file: !183, line: 202, type: !75)
!2442 = !DILocation(line: 199, column: 28, scope: !2434)
!2443 = !DILocation(line: 199, column: 54, scope: !2434)
!2444 = !DILocation(line: 201, column: 29, scope: !2434)
!2445 = !DILocation(line: 201, column: 15, scope: !2434)
!2446 = !DILocation(line: 204, column: 19, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2434, file: !183, line: 204, column: 7)
!2448 = !DILocation(line: 204, column: 7, scope: !2434)
!2449 = !DILocation(line: 225, column: 17, scope: !2434)
!2450 = !DILocation(line: 202, column: 15, scope: !2434)
!2451 = !DILocalVariable(name: "s2", arg: 2, scope: !2452, file: !2453, line: 160, type: !75)
!2452 = distinct !DISubprogram(name: "strcaseeq0", scope: !2453, file: !2453, line: 160, type: !2454, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2456)
!2453 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!69, !75, !75, !68, !68, !68, !68, !68, !68, !68, !68, !68}
!2456 = !{!2457, !2451, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2457 = !DILocalVariable(name: "s1", arg: 1, scope: !2452, file: !2453, line: 160, type: !75)
!2458 = !DILocalVariable(name: "s20", arg: 3, scope: !2452, file: !2453, line: 160, type: !68)
!2459 = !DILocalVariable(name: "s21", arg: 4, scope: !2452, file: !2453, line: 160, type: !68)
!2460 = !DILocalVariable(name: "s22", arg: 5, scope: !2452, file: !2453, line: 160, type: !68)
!2461 = !DILocalVariable(name: "s23", arg: 6, scope: !2452, file: !2453, line: 160, type: !68)
!2462 = !DILocalVariable(name: "s24", arg: 7, scope: !2452, file: !2453, line: 160, type: !68)
!2463 = !DILocalVariable(name: "s25", arg: 8, scope: !2452, file: !2453, line: 160, type: !68)
!2464 = !DILocalVariable(name: "s26", arg: 9, scope: !2452, file: !2453, line: 160, type: !68)
!2465 = !DILocalVariable(name: "s27", arg: 10, scope: !2452, file: !2453, line: 160, type: !68)
!2466 = !DILocalVariable(name: "s28", arg: 11, scope: !2452, file: !2453, line: 160, type: !68)
!2467 = !DILocation(line: 160, column: 41, scope: !2452, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 226, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2434, file: !183, line: 226, column: 7)
!2470 = !DILocation(line: 160, column: 120, scope: !2452, inlinedAt: !2468)
!2471 = !DILocation(line: 160, column: 130, scope: !2452, inlinedAt: !2468)
!2472 = !DILocation(line: 162, column: 7, scope: !2473, inlinedAt: !2468)
!2473 = !DILexicalBlockFile(scope: !2474, file: !2453, discriminator: 1)
!2474 = distinct !DILexicalBlock(scope: !2452, file: !2453, line: 162, column: 7)
!2475 = !DILocalVariable(name: "s2", arg: 2, scope: !2476, file: !2453, line: 146, type: !75)
!2476 = distinct !DISubprogram(name: "strcaseeq1", scope: !2453, file: !2453, line: 146, type: !2477, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!69, !75, !75, !68, !68, !68, !68, !68, !68, !68, !68}
!2479 = !{!2480, !2475, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2480 = !DILocalVariable(name: "s1", arg: 1, scope: !2476, file: !2453, line: 146, type: !75)
!2481 = !DILocalVariable(name: "s21", arg: 3, scope: !2476, file: !2453, line: 146, type: !68)
!2482 = !DILocalVariable(name: "s22", arg: 4, scope: !2476, file: !2453, line: 146, type: !68)
!2483 = !DILocalVariable(name: "s23", arg: 5, scope: !2476, file: !2453, line: 146, type: !68)
!2484 = !DILocalVariable(name: "s24", arg: 6, scope: !2476, file: !2453, line: 146, type: !68)
!2485 = !DILocalVariable(name: "s25", arg: 7, scope: !2476, file: !2453, line: 146, type: !68)
!2486 = !DILocalVariable(name: "s26", arg: 8, scope: !2476, file: !2453, line: 146, type: !68)
!2487 = !DILocalVariable(name: "s27", arg: 9, scope: !2476, file: !2453, line: 146, type: !68)
!2488 = !DILocalVariable(name: "s28", arg: 10, scope: !2476, file: !2453, line: 146, type: !68)
!2489 = !DILocation(line: 146, column: 41, scope: !2476, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 167, column: 16, scope: !2491, inlinedAt: !2468)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !2453, line: 164, column: 11)
!2492 = distinct !DILexicalBlock(scope: !2474, file: !2453, line: 163, column: 5)
!2493 = !DILocation(line: 146, column: 110, scope: !2476, inlinedAt: !2490)
!2494 = !DILocation(line: 146, column: 120, scope: !2476, inlinedAt: !2490)
!2495 = !DILocation(line: 148, column: 7, scope: !2496, inlinedAt: !2490)
!2496 = !DILexicalBlockFile(scope: !2497, file: !2453, discriminator: 1)
!2497 = distinct !DILexicalBlock(scope: !2476, file: !2453, line: 148, column: 7)
!2498 = !DILocalVariable(name: "s2", arg: 2, scope: !2499, file: !2453, line: 132, type: !75)
!2499 = distinct !DISubprogram(name: "strcaseeq2", scope: !2453, file: !2453, line: 132, type: !2500, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!69, !75, !75, !68, !68, !68, !68, !68, !68, !68}
!2502 = !{!2503, !2498, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2503 = !DILocalVariable(name: "s1", arg: 1, scope: !2499, file: !2453, line: 132, type: !75)
!2504 = !DILocalVariable(name: "s22", arg: 3, scope: !2499, file: !2453, line: 132, type: !68)
!2505 = !DILocalVariable(name: "s23", arg: 4, scope: !2499, file: !2453, line: 132, type: !68)
!2506 = !DILocalVariable(name: "s24", arg: 5, scope: !2499, file: !2453, line: 132, type: !68)
!2507 = !DILocalVariable(name: "s25", arg: 6, scope: !2499, file: !2453, line: 132, type: !68)
!2508 = !DILocalVariable(name: "s26", arg: 7, scope: !2499, file: !2453, line: 132, type: !68)
!2509 = !DILocalVariable(name: "s27", arg: 8, scope: !2499, file: !2453, line: 132, type: !68)
!2510 = !DILocalVariable(name: "s28", arg: 9, scope: !2499, file: !2453, line: 132, type: !68)
!2511 = !DILocation(line: 132, column: 41, scope: !2499, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 153, column: 16, scope: !2513, inlinedAt: !2490)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !2453, line: 150, column: 11)
!2514 = distinct !DILexicalBlock(scope: !2497, file: !2453, line: 149, column: 5)
!2515 = !DILocation(line: 132, column: 100, scope: !2499, inlinedAt: !2512)
!2516 = !DILocation(line: 132, column: 110, scope: !2499, inlinedAt: !2512)
!2517 = !DILocation(line: 134, column: 7, scope: !2518, inlinedAt: !2512)
!2518 = !DILexicalBlockFile(scope: !2519, file: !2453, discriminator: 1)
!2519 = distinct !DILexicalBlock(scope: !2499, file: !2453, line: 134, column: 7)
!2520 = !DILocalVariable(name: "s2", arg: 2, scope: !2521, file: !2453, line: 118, type: !75)
!2521 = distinct !DISubprogram(name: "strcaseeq3", scope: !2453, file: !2453, line: 118, type: !2522, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!69, !75, !75, !68, !68, !68, !68, !68, !68}
!2524 = !{!2525, !2520, !2526, !2527, !2528, !2529, !2530, !2531}
!2525 = !DILocalVariable(name: "s1", arg: 1, scope: !2521, file: !2453, line: 118, type: !75)
!2526 = !DILocalVariable(name: "s23", arg: 3, scope: !2521, file: !2453, line: 118, type: !68)
!2527 = !DILocalVariable(name: "s24", arg: 4, scope: !2521, file: !2453, line: 118, type: !68)
!2528 = !DILocalVariable(name: "s25", arg: 5, scope: !2521, file: !2453, line: 118, type: !68)
!2529 = !DILocalVariable(name: "s26", arg: 6, scope: !2521, file: !2453, line: 118, type: !68)
!2530 = !DILocalVariable(name: "s27", arg: 7, scope: !2521, file: !2453, line: 118, type: !68)
!2531 = !DILocalVariable(name: "s28", arg: 8, scope: !2521, file: !2453, line: 118, type: !68)
!2532 = !DILocation(line: 118, column: 41, scope: !2521, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 139, column: 16, scope: !2534, inlinedAt: !2512)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !2453, line: 136, column: 11)
!2535 = distinct !DILexicalBlock(scope: !2519, file: !2453, line: 135, column: 5)
!2536 = !DILocation(line: 118, column: 90, scope: !2521, inlinedAt: !2533)
!2537 = !DILocation(line: 118, column: 100, scope: !2521, inlinedAt: !2533)
!2538 = !DILocation(line: 120, column: 7, scope: !2539, inlinedAt: !2533)
!2539 = !DILexicalBlockFile(scope: !2540, file: !2453, discriminator: 2)
!2540 = distinct !DILexicalBlock(scope: !2521, file: !2453, line: 120, column: 7)
!2541 = !DILocation(line: 120, column: 7, scope: !2542, inlinedAt: !2533)
!2542 = !DILexicalBlockFile(scope: !2521, file: !2453, discriminator: 2)
!2543 = !DILocalVariable(name: "s2", arg: 2, scope: !2544, file: !2453, line: 104, type: !75)
!2544 = distinct !DISubprogram(name: "strcaseeq4", scope: !2453, file: !2453, line: 104, type: !2545, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!69, !75, !75, !68, !68, !68, !68, !68}
!2547 = !{!2548, !2543, !2549, !2550, !2551, !2552, !2553}
!2548 = !DILocalVariable(name: "s1", arg: 1, scope: !2544, file: !2453, line: 104, type: !75)
!2549 = !DILocalVariable(name: "s24", arg: 3, scope: !2544, file: !2453, line: 104, type: !68)
!2550 = !DILocalVariable(name: "s25", arg: 4, scope: !2544, file: !2453, line: 104, type: !68)
!2551 = !DILocalVariable(name: "s26", arg: 5, scope: !2544, file: !2453, line: 104, type: !68)
!2552 = !DILocalVariable(name: "s27", arg: 6, scope: !2544, file: !2453, line: 104, type: !68)
!2553 = !DILocalVariable(name: "s28", arg: 7, scope: !2544, file: !2453, line: 104, type: !68)
!2554 = !DILocation(line: 104, column: 41, scope: !2544, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 125, column: 16, scope: !2556, inlinedAt: !2533)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !2453, line: 122, column: 11)
!2557 = distinct !DILexicalBlock(scope: !2540, file: !2453, line: 121, column: 5)
!2558 = !DILocation(line: 104, column: 80, scope: !2544, inlinedAt: !2555)
!2559 = !DILocation(line: 104, column: 90, scope: !2544, inlinedAt: !2555)
!2560 = !DILocation(line: 106, column: 7, scope: !2561, inlinedAt: !2555)
!2561 = !DILexicalBlockFile(scope: !2562, file: !2453, discriminator: 2)
!2562 = distinct !DILexicalBlock(scope: !2544, file: !2453, line: 106, column: 7)
!2563 = !DILocation(line: 106, column: 7, scope: !2564, inlinedAt: !2555)
!2564 = !DILexicalBlockFile(scope: !2544, file: !2453, discriminator: 2)
!2565 = !DILocalVariable(name: "s2", arg: 2, scope: !2566, file: !2453, line: 90, type: !75)
!2566 = distinct !DISubprogram(name: "strcaseeq5", scope: !2453, file: !2453, line: 90, type: !2567, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!69, !75, !75, !68, !68, !68, !68}
!2569 = !{!2570, !2565, !2571, !2572, !2573, !2574}
!2570 = !DILocalVariable(name: "s1", arg: 1, scope: !2566, file: !2453, line: 90, type: !75)
!2571 = !DILocalVariable(name: "s25", arg: 3, scope: !2566, file: !2453, line: 90, type: !68)
!2572 = !DILocalVariable(name: "s26", arg: 4, scope: !2566, file: !2453, line: 90, type: !68)
!2573 = !DILocalVariable(name: "s27", arg: 5, scope: !2566, file: !2453, line: 90, type: !68)
!2574 = !DILocalVariable(name: "s28", arg: 6, scope: !2566, file: !2453, line: 90, type: !68)
!2575 = !DILocation(line: 90, column: 41, scope: !2566, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 111, column: 16, scope: !2577, inlinedAt: !2555)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !2453, line: 108, column: 11)
!2578 = distinct !DILexicalBlock(scope: !2562, file: !2453, line: 107, column: 5)
!2579 = !DILocation(line: 90, column: 70, scope: !2566, inlinedAt: !2576)
!2580 = !DILocation(line: 90, column: 80, scope: !2566, inlinedAt: !2576)
!2581 = !DILocation(line: 92, column: 7, scope: !2582, inlinedAt: !2576)
!2582 = !DILexicalBlockFile(scope: !2583, file: !2453, discriminator: 2)
!2583 = distinct !DILexicalBlock(scope: !2566, file: !2453, line: 92, column: 7)
!2584 = !DILocation(line: 92, column: 7, scope: !2585, inlinedAt: !2576)
!2585 = !DILexicalBlockFile(scope: !2566, file: !2453, discriminator: 2)
!2586 = !DILocation(line: 227, column: 12, scope: !2469)
!2587 = !DILocation(line: 227, column: 21, scope: !2469)
!2588 = !DILocation(line: 227, column: 5, scope: !2469)
!2589 = !DILocation(line: 146, column: 41, scope: !2476, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 167, column: 16, scope: !2491, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 228, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2434, file: !183, line: 228, column: 7)
!2593 = !DILocation(line: 146, column: 110, scope: !2476, inlinedAt: !2590)
!2594 = !DILocation(line: 146, column: 120, scope: !2476, inlinedAt: !2590)
!2595 = !DILocation(line: 148, column: 7, scope: !2496, inlinedAt: !2590)
!2596 = !DILocation(line: 132, column: 41, scope: !2499, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 153, column: 16, scope: !2513, inlinedAt: !2590)
!2598 = !DILocation(line: 132, column: 100, scope: !2499, inlinedAt: !2597)
!2599 = !DILocation(line: 132, column: 110, scope: !2499, inlinedAt: !2597)
!2600 = !DILocation(line: 134, column: 7, scope: !2601, inlinedAt: !2597)
!2601 = !DILexicalBlockFile(scope: !2519, file: !2453, discriminator: 2)
!2602 = !DILocation(line: 134, column: 7, scope: !2603, inlinedAt: !2597)
!2603 = !DILexicalBlockFile(scope: !2499, file: !2453, discriminator: 2)
!2604 = !DILocation(line: 118, column: 41, scope: !2521, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 139, column: 16, scope: !2534, inlinedAt: !2597)
!2606 = !DILocation(line: 118, column: 90, scope: !2521, inlinedAt: !2605)
!2607 = !DILocation(line: 118, column: 100, scope: !2521, inlinedAt: !2605)
!2608 = !DILocation(line: 120, column: 7, scope: !2539, inlinedAt: !2605)
!2609 = !DILocation(line: 120, column: 7, scope: !2542, inlinedAt: !2605)
!2610 = !DILocation(line: 104, column: 41, scope: !2544, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 125, column: 16, scope: !2556, inlinedAt: !2605)
!2612 = !DILocation(line: 104, column: 80, scope: !2544, inlinedAt: !2611)
!2613 = !DILocation(line: 104, column: 90, scope: !2544, inlinedAt: !2611)
!2614 = !DILocation(line: 106, column: 7, scope: !2561, inlinedAt: !2611)
!2615 = !DILocation(line: 106, column: 7, scope: !2564, inlinedAt: !2611)
!2616 = !DILocation(line: 90, column: 41, scope: !2566, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 111, column: 16, scope: !2577, inlinedAt: !2611)
!2618 = !DILocation(line: 90, column: 70, scope: !2566, inlinedAt: !2617)
!2619 = !DILocation(line: 90, column: 80, scope: !2566, inlinedAt: !2617)
!2620 = !DILocation(line: 92, column: 7, scope: !2582, inlinedAt: !2617)
!2621 = !DILocation(line: 92, column: 7, scope: !2585, inlinedAt: !2617)
!2622 = !DILocalVariable(name: "s2", arg: 2, scope: !2623, file: !2453, line: 76, type: !75)
!2623 = distinct !DISubprogram(name: "strcaseeq6", scope: !2453, file: !2453, line: 76, type: !2624, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!69, !75, !75, !68, !68, !68}
!2626 = !{!2627, !2622, !2628, !2629, !2630}
!2627 = !DILocalVariable(name: "s1", arg: 1, scope: !2623, file: !2453, line: 76, type: !75)
!2628 = !DILocalVariable(name: "s26", arg: 3, scope: !2623, file: !2453, line: 76, type: !68)
!2629 = !DILocalVariable(name: "s27", arg: 4, scope: !2623, file: !2453, line: 76, type: !68)
!2630 = !DILocalVariable(name: "s28", arg: 5, scope: !2623, file: !2453, line: 76, type: !68)
!2631 = !DILocation(line: 76, column: 41, scope: !2623, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 97, column: 16, scope: !2633, inlinedAt: !2617)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !2453, line: 94, column: 11)
!2634 = distinct !DILexicalBlock(scope: !2583, file: !2453, line: 93, column: 5)
!2635 = !DILocation(line: 76, column: 60, scope: !2623, inlinedAt: !2632)
!2636 = !DILocation(line: 76, column: 70, scope: !2623, inlinedAt: !2632)
!2637 = !DILocation(line: 78, column: 7, scope: !2638, inlinedAt: !2632)
!2638 = !DILexicalBlockFile(scope: !2639, file: !2453, discriminator: 2)
!2639 = distinct !DILexicalBlock(scope: !2623, file: !2453, line: 78, column: 7)
!2640 = !DILocation(line: 78, column: 7, scope: !2641, inlinedAt: !2632)
!2641 = !DILexicalBlockFile(scope: !2623, file: !2453, discriminator: 2)
!2642 = !DILocalVariable(name: "s2", arg: 2, scope: !2643, file: !2453, line: 62, type: !75)
!2643 = distinct !DISubprogram(name: "strcaseeq7", scope: !2453, file: !2453, line: 62, type: !2644, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!69, !75, !75, !68, !68}
!2646 = !{!2647, !2642, !2648, !2649}
!2647 = !DILocalVariable(name: "s1", arg: 1, scope: !2643, file: !2453, line: 62, type: !75)
!2648 = !DILocalVariable(name: "s27", arg: 3, scope: !2643, file: !2453, line: 62, type: !68)
!2649 = !DILocalVariable(name: "s28", arg: 4, scope: !2643, file: !2453, line: 62, type: !68)
!2650 = !DILocation(line: 62, column: 41, scope: !2643, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 83, column: 16, scope: !2652, inlinedAt: !2632)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !2453, line: 80, column: 11)
!2653 = distinct !DILexicalBlock(scope: !2639, file: !2453, line: 79, column: 5)
!2654 = !DILocation(line: 62, column: 50, scope: !2643, inlinedAt: !2651)
!2655 = !DILocation(line: 62, column: 60, scope: !2643, inlinedAt: !2651)
!2656 = !DILocation(line: 64, column: 7, scope: !2657, inlinedAt: !2651)
!2657 = !DILexicalBlockFile(scope: !2658, file: !2453, discriminator: 2)
!2658 = distinct !DILexicalBlock(scope: !2643, file: !2453, line: 64, column: 7)
!2659 = !DILocation(line: 228, column: 7, scope: !2434)
!2660 = !DILocation(line: 229, column: 12, scope: !2592)
!2661 = !DILocation(line: 229, column: 21, scope: !2592)
!2662 = !DILocation(line: 229, column: 5, scope: !2592)
!2663 = !DILocation(line: 231, column: 13, scope: !2434)
!2664 = !DILocation(line: 231, column: 11, scope: !2434)
!2665 = !DILocation(line: 231, column: 3, scope: !2434)
!2666 = !DILocation(line: 232, column: 1, scope: !2434)
!2667 = distinct !DISubprogram(name: "quotearg_alloc", scope: !183, file: !183, line: 791, type: !2668, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!67, !75, !56, !1510}
!2670 = !{!2671, !2672, !2673}
!2671 = !DILocalVariable(name: "arg", arg: 1, scope: !2667, file: !183, line: 791, type: !75)
!2672 = !DILocalVariable(name: "argsize", arg: 2, scope: !2667, file: !183, line: 791, type: !56)
!2673 = !DILocalVariable(name: "o", arg: 3, scope: !2667, file: !183, line: 792, type: !1510)
!2674 = !DILocation(line: 791, column: 29, scope: !2667)
!2675 = !DILocation(line: 791, column: 41, scope: !2667)
!2676 = !DILocation(line: 792, column: 47, scope: !2667)
!2677 = !DILocalVariable(name: "arg", arg: 1, scope: !2678, file: !183, line: 804, type: !75)
!2678 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !183, file: !183, line: 804, type: !2679, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!67, !75, !56, !55, !1510}
!2681 = !{!2677, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DILocalVariable(name: "argsize", arg: 2, scope: !2678, file: !183, line: 804, type: !56)
!2683 = !DILocalVariable(name: "size", arg: 3, scope: !2678, file: !183, line: 804, type: !55)
!2684 = !DILocalVariable(name: "o", arg: 4, scope: !2678, file: !183, line: 805, type: !1510)
!2685 = !DILocalVariable(name: "p", scope: !2678, file: !183, line: 807, type: !1510)
!2686 = !DILocalVariable(name: "e", scope: !2678, file: !183, line: 808, type: !69)
!2687 = !DILocalVariable(name: "flags", scope: !2678, file: !183, line: 810, type: !69)
!2688 = !DILocalVariable(name: "bufsize", scope: !2678, file: !183, line: 811, type: !56)
!2689 = !DILocalVariable(name: "buf", scope: !2678, file: !183, line: 815, type: !67)
!2690 = !DILocation(line: 804, column: 33, scope: !2678, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 794, column: 10, scope: !2667)
!2692 = !DILocation(line: 804, column: 45, scope: !2678, inlinedAt: !2691)
!2693 = !DILocation(line: 804, column: 62, scope: !2678, inlinedAt: !2691)
!2694 = !DILocation(line: 805, column: 51, scope: !2678, inlinedAt: !2691)
!2695 = !DILocation(line: 807, column: 37, scope: !2678, inlinedAt: !2691)
!2696 = !DILocation(line: 807, column: 33, scope: !2678, inlinedAt: !2691)
!2697 = !DILocation(line: 808, column: 11, scope: !2678, inlinedAt: !2691)
!2698 = !DILocation(line: 808, column: 7, scope: !2678, inlinedAt: !2691)
!2699 = !DILocation(line: 810, column: 18, scope: !2678, inlinedAt: !2691)
!2700 = !DILocation(line: 810, column: 24, scope: !2678, inlinedAt: !2691)
!2701 = !DILocation(line: 810, column: 7, scope: !2678, inlinedAt: !2691)
!2702 = !DILocation(line: 811, column: 69, scope: !2678, inlinedAt: !2691)
!2703 = !DILocation(line: 812, column: 53, scope: !2678, inlinedAt: !2691)
!2704 = !DILocation(line: 813, column: 49, scope: !2678, inlinedAt: !2691)
!2705 = !DILocation(line: 814, column: 49, scope: !2678, inlinedAt: !2691)
!2706 = !DILocation(line: 811, column: 20, scope: !2678, inlinedAt: !2691)
!2707 = !DILocation(line: 814, column: 62, scope: !2678, inlinedAt: !2691)
!2708 = !DILocation(line: 811, column: 10, scope: !2678, inlinedAt: !2691)
!2709 = !DILocalVariable(name: "n", arg: 1, scope: !2710, file: !50, line: 220, type: !56)
!2710 = distinct !DISubprogram(name: "xcharalloc", scope: !50, file: !50, line: 220, type: !2711, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!67, !56}
!2713 = !{!2709}
!2714 = !DILocation(line: 220, column: 20, scope: !2710, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 815, column: 15, scope: !2678, inlinedAt: !2691)
!2716 = !DILocation(line: 222, column: 10, scope: !2710, inlinedAt: !2715)
!2717 = !DILocation(line: 815, column: 9, scope: !2678, inlinedAt: !2691)
!2718 = !DILocation(line: 816, column: 60, scope: !2678, inlinedAt: !2691)
!2719 = !DILocation(line: 818, column: 32, scope: !2678, inlinedAt: !2691)
!2720 = !DILocation(line: 818, column: 47, scope: !2678, inlinedAt: !2691)
!2721 = !DILocation(line: 816, column: 3, scope: !2678, inlinedAt: !2691)
!2722 = !DILocation(line: 819, column: 9, scope: !2678, inlinedAt: !2691)
!2723 = !DILocation(line: 794, column: 3, scope: !2667)
!2724 = !DILocation(line: 804, column: 33, scope: !2678)
!2725 = !DILocation(line: 804, column: 45, scope: !2678)
!2726 = !DILocation(line: 804, column: 62, scope: !2678)
!2727 = !DILocation(line: 805, column: 51, scope: !2678)
!2728 = !DILocation(line: 807, column: 37, scope: !2678)
!2729 = !DILocation(line: 807, column: 33, scope: !2678)
!2730 = !DILocation(line: 808, column: 11, scope: !2678)
!2731 = !DILocation(line: 808, column: 7, scope: !2678)
!2732 = !DILocation(line: 810, column: 18, scope: !2678)
!2733 = !DILocation(line: 810, column: 27, scope: !2678)
!2734 = !DILocation(line: 810, column: 24, scope: !2678)
!2735 = !DILocation(line: 810, column: 7, scope: !2678)
!2736 = !DILocation(line: 811, column: 69, scope: !2678)
!2737 = !DILocation(line: 812, column: 53, scope: !2678)
!2738 = !DILocation(line: 813, column: 49, scope: !2678)
!2739 = !DILocation(line: 814, column: 49, scope: !2678)
!2740 = !DILocation(line: 811, column: 20, scope: !2678)
!2741 = !DILocation(line: 814, column: 62, scope: !2678)
!2742 = !DILocation(line: 811, column: 10, scope: !2678)
!2743 = !DILocation(line: 220, column: 20, scope: !2710, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 815, column: 15, scope: !2678)
!2745 = !DILocation(line: 222, column: 10, scope: !2710, inlinedAt: !2744)
!2746 = !DILocation(line: 815, column: 9, scope: !2678)
!2747 = !DILocation(line: 816, column: 60, scope: !2678)
!2748 = !DILocation(line: 818, column: 32, scope: !2678)
!2749 = !DILocation(line: 818, column: 47, scope: !2678)
!2750 = !DILocation(line: 816, column: 3, scope: !2678)
!2751 = !DILocation(line: 819, column: 9, scope: !2678)
!2752 = !DILocation(line: 820, column: 7, scope: !2678)
!2753 = !DILocation(line: 821, column: 11, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2678, file: !183, line: 820, column: 7)
!2755 = !DILocation(line: 821, column: 5, scope: !2754)
!2756 = !DILocation(line: 822, column: 3, scope: !2678)
!2757 = distinct !DISubprogram(name: "quotearg_free", scope: !183, file: !183, line: 840, type: !1408, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2758)
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "sv", scope: !2757, file: !183, line: 842, type: !209)
!2760 = !DILocalVariable(name: "i", scope: !2757, file: !183, line: 843, type: !69)
!2761 = !DILocation(line: 842, column: 24, scope: !2757)
!2762 = !DILocation(line: 842, column: 19, scope: !2757)
!2763 = !DILocation(line: 843, column: 7, scope: !2757)
!2764 = !DILocation(line: 844, column: 19, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2766, file: !183, discriminator: 1)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !183, line: 844, column: 3)
!2767 = distinct !DILexicalBlock(scope: !2757, file: !183, line: 844, column: 3)
!2768 = !DILocation(line: 844, column: 17, scope: !2765)
!2769 = !DILocation(line: 844, column: 3, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2767, file: !183, discriminator: 1)
!2771 = !DILocation(line: 845, column: 17, scope: !2766)
!2772 = !{!2773, !755, i64 8}
!2773 = !{!"slotvec", !884, i64 0, !755, i64 8}
!2774 = !DILocation(line: 845, column: 5, scope: !2766)
!2775 = !DILocation(line: 844, column: 28, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2766, file: !183, discriminator: 2)
!2777 = distinct !{!2777, !2778, !2779}
!2778 = !DILocation(line: 844, column: 3, scope: !2767)
!2779 = !DILocation(line: 845, column: 20, scope: !2767)
!2780 = !DILocation(line: 846, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2757, file: !183, line: 846, column: 7)
!2782 = !DILocation(line: 846, column: 17, scope: !2781)
!2783 = !DILocation(line: 846, column: 7, scope: !2757)
!2784 = !DILocation(line: 848, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !183, line: 847, column: 5)
!2786 = !DILocation(line: 849, column: 21, scope: !2785)
!2787 = !{!2773, !884, i64 0}
!2788 = !DILocation(line: 850, column: 20, scope: !2785)
!2789 = !DILocation(line: 851, column: 5, scope: !2785)
!2790 = !DILocation(line: 852, column: 10, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2757, file: !183, line: 852, column: 7)
!2792 = !DILocation(line: 852, column: 7, scope: !2757)
!2793 = !DILocation(line: 854, column: 13, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !183, line: 853, column: 5)
!2795 = !DILocation(line: 854, column: 7, scope: !2794)
!2796 = !DILocation(line: 855, column: 15, scope: !2794)
!2797 = !DILocation(line: 856, column: 5, scope: !2794)
!2798 = !DILocation(line: 857, column: 10, scope: !2757)
!2799 = !DILocation(line: 858, column: 1, scope: !2757)
!2800 = distinct !DISubprogram(name: "quotearg_n", scope: !183, file: !183, line: 922, type: !2801, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!67, !69, !75}
!2803 = !{!2804, !2805}
!2804 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !183, line: 922, type: !69)
!2805 = !DILocalVariable(name: "arg", arg: 2, scope: !2800, file: !183, line: 922, type: !75)
!2806 = !DILocation(line: 922, column: 17, scope: !2800)
!2807 = !DILocation(line: 922, column: 32, scope: !2800)
!2808 = !DILocation(line: 924, column: 10, scope: !2800)
!2809 = !DILocation(line: 924, column: 3, scope: !2800)
!2810 = distinct !DISubprogram(name: "quotearg_n_options", scope: !183, file: !183, line: 869, type: !2811, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!67, !69, !75, !56, !1510}
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819, !2820, !2823, !2825, !2826, !2827}
!2814 = !DILocalVariable(name: "n", arg: 1, scope: !2810, file: !183, line: 869, type: !69)
!2815 = !DILocalVariable(name: "arg", arg: 2, scope: !2810, file: !183, line: 869, type: !75)
!2816 = !DILocalVariable(name: "argsize", arg: 3, scope: !2810, file: !183, line: 869, type: !56)
!2817 = !DILocalVariable(name: "options", arg: 4, scope: !2810, file: !183, line: 870, type: !1510)
!2818 = !DILocalVariable(name: "e", scope: !2810, file: !183, line: 872, type: !69)
!2819 = !DILocalVariable(name: "sv", scope: !2810, file: !183, line: 874, type: !209)
!2820 = !DILocalVariable(name: "preallocated", scope: !2821, file: !183, line: 881, type: !154)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !183, line: 880, column: 5)
!2822 = distinct !DILexicalBlock(scope: !2810, file: !183, line: 879, column: 7)
!2823 = !DILocalVariable(name: "size", scope: !2824, file: !183, line: 894, type: !56)
!2824 = distinct !DILexicalBlock(scope: !2810, file: !183, line: 893, column: 3)
!2825 = !DILocalVariable(name: "val", scope: !2824, file: !183, line: 895, type: !67)
!2826 = !DILocalVariable(name: "flags", scope: !2824, file: !183, line: 897, type: !69)
!2827 = !DILocalVariable(name: "qsize", scope: !2824, file: !183, line: 898, type: !56)
!2828 = !DILocation(line: 869, column: 25, scope: !2810)
!2829 = !DILocation(line: 869, column: 40, scope: !2810)
!2830 = !DILocation(line: 869, column: 52, scope: !2810)
!2831 = !DILocation(line: 870, column: 51, scope: !2810)
!2832 = !DILocation(line: 872, column: 11, scope: !2810)
!2833 = !DILocation(line: 872, column: 7, scope: !2810)
!2834 = !DILocation(line: 874, column: 24, scope: !2810)
!2835 = !DILocation(line: 874, column: 19, scope: !2810)
!2836 = !DILocation(line: 876, column: 9, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2810, file: !183, line: 876, column: 7)
!2838 = !DILocation(line: 876, column: 7, scope: !2810)
!2839 = !DILocation(line: 877, column: 5, scope: !2837)
!2840 = !DILocation(line: 879, column: 7, scope: !2822)
!2841 = !DILocation(line: 879, column: 14, scope: !2822)
!2842 = !DILocation(line: 879, column: 7, scope: !2810)
!2843 = !DILocation(line: 881, column: 31, scope: !2821)
!2844 = !DILocation(line: 883, column: 67, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2821, file: !183, line: 883, column: 11)
!2846 = !DILocation(line: 883, column: 11, scope: !2821)
!2847 = !DILocation(line: 884, column: 9, scope: !2845)
!2848 = !DILocation(line: 886, column: 32, scope: !2849)
!2849 = !DILexicalBlockFile(scope: !2821, file: !183, discriminator: 3)
!2850 = !DILocation(line: 886, column: 61, scope: !2849)
!2851 = !DILocation(line: 886, column: 58, scope: !2849)
!2852 = !DILocation(line: 886, column: 66, scope: !2849)
!2853 = !DILocation(line: 886, column: 22, scope: !2849)
!2854 = !DILocation(line: 886, column: 15, scope: !2849)
!2855 = !DILocation(line: 887, column: 11, scope: !2821)
!2856 = !DILocation(line: 888, column: 15, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2821, file: !183, line: 887, column: 11)
!2858 = !{i64 0, i64 8, !883, i64 8, i64 8, !754}
!2859 = !DILocation(line: 888, column: 9, scope: !2857)
!2860 = !DILocation(line: 889, column: 20, scope: !2821)
!2861 = !DILocation(line: 889, column: 18, scope: !2821)
!2862 = !DILocation(line: 889, column: 7, scope: !2821)
!2863 = !DILocation(line: 889, column: 38, scope: !2821)
!2864 = !DILocation(line: 889, column: 31, scope: !2821)
!2865 = !DILocation(line: 889, column: 48, scope: !2821)
!2866 = !DILocation(line: 890, column: 14, scope: !2821)
!2867 = !DILocation(line: 891, column: 5, scope: !2821)
!2868 = !DILocation(line: 894, column: 19, scope: !2824)
!2869 = !DILocation(line: 894, column: 25, scope: !2824)
!2870 = !DILocation(line: 894, column: 12, scope: !2824)
!2871 = !DILocation(line: 895, column: 23, scope: !2824)
!2872 = !DILocation(line: 895, column: 11, scope: !2824)
!2873 = !DILocation(line: 897, column: 26, scope: !2824)
!2874 = !DILocation(line: 897, column: 32, scope: !2824)
!2875 = !DILocation(line: 897, column: 9, scope: !2824)
!2876 = !DILocation(line: 899, column: 55, scope: !2824)
!2877 = !DILocation(line: 900, column: 46, scope: !2824)
!2878 = !DILocation(line: 901, column: 55, scope: !2824)
!2879 = !DILocation(line: 902, column: 55, scope: !2824)
!2880 = !DILocation(line: 898, column: 20, scope: !2824)
!2881 = !DILocation(line: 898, column: 12, scope: !2824)
!2882 = !DILocation(line: 904, column: 14, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2824, file: !183, line: 904, column: 9)
!2884 = !DILocation(line: 904, column: 9, scope: !2824)
!2885 = !DILocation(line: 906, column: 35, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !183, line: 905, column: 7)
!2887 = !DILocation(line: 906, column: 20, scope: !2886)
!2888 = !DILocation(line: 907, column: 17, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2886, file: !183, line: 907, column: 13)
!2890 = !DILocation(line: 907, column: 13, scope: !2886)
!2891 = !DILocation(line: 908, column: 11, scope: !2889)
!2892 = !DILocation(line: 220, column: 20, scope: !2710, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 909, column: 27, scope: !2886)
!2894 = !DILocation(line: 222, column: 10, scope: !2710, inlinedAt: !2893)
!2895 = !DILocation(line: 909, column: 19, scope: !2886)
!2896 = !DILocation(line: 910, column: 69, scope: !2886)
!2897 = !DILocation(line: 912, column: 44, scope: !2886)
!2898 = !DILocation(line: 913, column: 44, scope: !2886)
!2899 = !DILocation(line: 910, column: 9, scope: !2886)
!2900 = !DILocation(line: 914, column: 7, scope: !2886)
!2901 = !DILocation(line: 916, column: 11, scope: !2824)
!2902 = !DILocation(line: 917, column: 5, scope: !2824)
!2903 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !183, file: !183, line: 928, type: !2904, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!67, !69, !75, !56}
!2906 = !{!2907, !2908, !2909}
!2907 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !183, line: 928, type: !69)
!2908 = !DILocalVariable(name: "arg", arg: 2, scope: !2903, file: !183, line: 928, type: !75)
!2909 = !DILocalVariable(name: "argsize", arg: 3, scope: !2903, file: !183, line: 928, type: !56)
!2910 = !DILocation(line: 928, column: 21, scope: !2903)
!2911 = !DILocation(line: 928, column: 36, scope: !2903)
!2912 = !DILocation(line: 928, column: 48, scope: !2903)
!2913 = !DILocation(line: 930, column: 10, scope: !2903)
!2914 = !DILocation(line: 930, column: 3, scope: !2903)
!2915 = distinct !DISubprogram(name: "quotearg", scope: !183, file: !183, line: 934, type: !2916, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!67, !75}
!2918 = !{!2919}
!2919 = !DILocalVariable(name: "arg", arg: 1, scope: !2915, file: !183, line: 934, type: !75)
!2920 = !DILocation(line: 934, column: 23, scope: !2915)
!2921 = !DILocation(line: 922, column: 17, scope: !2800, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 936, column: 10, scope: !2915)
!2923 = !DILocation(line: 922, column: 32, scope: !2800, inlinedAt: !2922)
!2924 = !DILocation(line: 924, column: 10, scope: !2800, inlinedAt: !2922)
!2925 = !DILocation(line: 936, column: 3, scope: !2915)
!2926 = distinct !DISubprogram(name: "quotearg_mem", scope: !183, file: !183, line: 940, type: !2927, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!67, !75, !56}
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "arg", arg: 1, scope: !2926, file: !183, line: 940, type: !75)
!2931 = !DILocalVariable(name: "argsize", arg: 2, scope: !2926, file: !183, line: 940, type: !56)
!2932 = !DILocation(line: 940, column: 27, scope: !2926)
!2933 = !DILocation(line: 940, column: 39, scope: !2926)
!2934 = !DILocation(line: 928, column: 21, scope: !2903, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 942, column: 10, scope: !2926)
!2936 = !DILocation(line: 928, column: 36, scope: !2903, inlinedAt: !2935)
!2937 = !DILocation(line: 928, column: 48, scope: !2903, inlinedAt: !2935)
!2938 = !DILocation(line: 930, column: 10, scope: !2903, inlinedAt: !2935)
!2939 = !DILocation(line: 942, column: 3, scope: !2926)
!2940 = distinct !DISubprogram(name: "quotearg_n_style", scope: !183, file: !183, line: 946, type: !2941, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!67, !69, !5, !75}
!2943 = !{!2944, !2945, !2946, !2947}
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2940, file: !183, line: 946, type: !69)
!2945 = !DILocalVariable(name: "s", arg: 2, scope: !2940, file: !183, line: 946, type: !5)
!2946 = !DILocalVariable(name: "arg", arg: 3, scope: !2940, file: !183, line: 946, type: !75)
!2947 = !DILocalVariable(name: "o", scope: !2940, file: !183, line: 948, type: !1511)
!2948 = !DILocalVariable(name: "o", scope: !2949, file: !183, line: 187, type: !190)
!2949 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !183, file: !183, line: 185, type: !2950, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!190, !5}
!2952 = !{!2953, !2948}
!2953 = !DILocalVariable(name: "style", arg: 1, scope: !2949, file: !183, line: 185, type: !5)
!2954 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2955 = !DILocation(line: 187, column: 26, scope: !2949, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 948, column: 36, scope: !2940)
!2957 = !DILocation(line: 946, column: 23, scope: !2940)
!2958 = !DILocation(line: 946, column: 45, scope: !2940)
!2959 = !DILocation(line: 946, column: 60, scope: !2940)
!2960 = !DILocation(line: 948, column: 3, scope: !2940)
!2961 = !DILocation(line: 948, column: 32, scope: !2940)
!2962 = !DILocation(line: 185, column: 48, scope: !2949, inlinedAt: !2956)
!2963 = !DILocation(line: 187, column: 3, scope: !2949, inlinedAt: !2956)
!2964 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2965 = !DILocation(line: 188, column: 13, scope: !2966, inlinedAt: !2956)
!2966 = distinct !DILexicalBlock(scope: !2949, file: !183, line: 188, column: 7)
!2967 = !DILocation(line: 188, column: 7, scope: !2949, inlinedAt: !2956)
!2968 = !DILocation(line: 189, column: 5, scope: !2966, inlinedAt: !2956)
!2969 = !{!2970}
!2970 = distinct !{!2970, !2971, !"quoting_options_from_style: argument 0"}
!2971 = distinct !{!2971, !"quoting_options_from_style"}
!2972 = !DILocation(line: 191, column: 10, scope: !2949, inlinedAt: !2956)
!2973 = !DILocation(line: 192, column: 1, scope: !2949, inlinedAt: !2956)
!2974 = !DILocation(line: 949, column: 10, scope: !2940)
!2975 = !DILocation(line: 950, column: 1, scope: !2940)
!2976 = !DILocation(line: 949, column: 3, scope: !2940)
!2977 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !183, file: !183, line: 953, type: !2978, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!67, !69, !5, !75, !56}
!2980 = !{!2981, !2982, !2983, !2984, !2985}
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2977, file: !183, line: 953, type: !69)
!2982 = !DILocalVariable(name: "s", arg: 2, scope: !2977, file: !183, line: 953, type: !5)
!2983 = !DILocalVariable(name: "arg", arg: 3, scope: !2977, file: !183, line: 954, type: !75)
!2984 = !DILocalVariable(name: "argsize", arg: 4, scope: !2977, file: !183, line: 954, type: !56)
!2985 = !DILocalVariable(name: "o", scope: !2977, file: !183, line: 956, type: !1511)
!2986 = !DILocation(line: 187, column: 26, scope: !2949, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 956, column: 36, scope: !2977)
!2988 = !DILocation(line: 953, column: 27, scope: !2977)
!2989 = !DILocation(line: 953, column: 49, scope: !2977)
!2990 = !DILocation(line: 954, column: 35, scope: !2977)
!2991 = !DILocation(line: 954, column: 47, scope: !2977)
!2992 = !DILocation(line: 956, column: 3, scope: !2977)
!2993 = !DILocation(line: 956, column: 32, scope: !2977)
!2994 = !DILocation(line: 185, column: 48, scope: !2949, inlinedAt: !2987)
!2995 = !DILocation(line: 187, column: 3, scope: !2949, inlinedAt: !2987)
!2996 = !DILocation(line: 188, column: 13, scope: !2966, inlinedAt: !2987)
!2997 = !DILocation(line: 188, column: 7, scope: !2949, inlinedAt: !2987)
!2998 = !DILocation(line: 189, column: 5, scope: !2966, inlinedAt: !2987)
!2999 = !{!3000}
!3000 = distinct !{!3000, !3001, !"quoting_options_from_style: argument 0"}
!3001 = distinct !{!3001, !"quoting_options_from_style"}
!3002 = !DILocation(line: 191, column: 10, scope: !2949, inlinedAt: !2987)
!3003 = !DILocation(line: 192, column: 1, scope: !2949, inlinedAt: !2987)
!3004 = !DILocation(line: 957, column: 10, scope: !2977)
!3005 = !DILocation(line: 958, column: 1, scope: !2977)
!3006 = !DILocation(line: 957, column: 3, scope: !2977)
!3007 = distinct !DISubprogram(name: "quotearg_style", scope: !183, file: !183, line: 961, type: !3008, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!67, !5, !75}
!3010 = !{!3011, !3012}
!3011 = !DILocalVariable(name: "s", arg: 1, scope: !3007, file: !183, line: 961, type: !5)
!3012 = !DILocalVariable(name: "arg", arg: 2, scope: !3007, file: !183, line: 961, type: !75)
!3013 = !DILocation(line: 187, column: 26, scope: !2949, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 948, column: 36, scope: !2940, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 963, column: 10, scope: !3007)
!3016 = !DILocation(line: 961, column: 36, scope: !3007)
!3017 = !DILocation(line: 961, column: 51, scope: !3007)
!3018 = !DILocation(line: 946, column: 23, scope: !2940, inlinedAt: !3015)
!3019 = !DILocation(line: 946, column: 45, scope: !2940, inlinedAt: !3015)
!3020 = !DILocation(line: 946, column: 60, scope: !2940, inlinedAt: !3015)
!3021 = !DILocation(line: 948, column: 3, scope: !2940, inlinedAt: !3015)
!3022 = !DILocation(line: 948, column: 32, scope: !2940, inlinedAt: !3015)
!3023 = !DILocation(line: 185, column: 48, scope: !2949, inlinedAt: !3014)
!3024 = !DILocation(line: 187, column: 3, scope: !2949, inlinedAt: !3014)
!3025 = !DILocation(line: 188, column: 13, scope: !2966, inlinedAt: !3014)
!3026 = !DILocation(line: 188, column: 7, scope: !2949, inlinedAt: !3014)
!3027 = !DILocation(line: 189, column: 5, scope: !2966, inlinedAt: !3014)
!3028 = !{!3029}
!3029 = distinct !{!3029, !3030, !"quoting_options_from_style: argument 0"}
!3030 = distinct !{!3030, !"quoting_options_from_style"}
!3031 = !DILocation(line: 191, column: 10, scope: !2949, inlinedAt: !3014)
!3032 = !DILocation(line: 192, column: 1, scope: !2949, inlinedAt: !3014)
!3033 = !DILocation(line: 949, column: 10, scope: !2940, inlinedAt: !3015)
!3034 = !DILocation(line: 950, column: 1, scope: !2940, inlinedAt: !3015)
!3035 = !DILocation(line: 963, column: 3, scope: !3007)
!3036 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !183, file: !183, line: 967, type: !3037, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!67, !5, !75, !56}
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "s", arg: 1, scope: !3036, file: !183, line: 967, type: !5)
!3041 = !DILocalVariable(name: "arg", arg: 2, scope: !3036, file: !183, line: 967, type: !75)
!3042 = !DILocalVariable(name: "argsize", arg: 3, scope: !3036, file: !183, line: 967, type: !56)
!3043 = !DILocation(line: 187, column: 26, scope: !2949, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 956, column: 36, scope: !2977, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 969, column: 10, scope: !3036)
!3046 = !DILocation(line: 967, column: 40, scope: !3036)
!3047 = !DILocation(line: 967, column: 55, scope: !3036)
!3048 = !DILocation(line: 967, column: 67, scope: !3036)
!3049 = !DILocation(line: 953, column: 27, scope: !2977, inlinedAt: !3045)
!3050 = !DILocation(line: 953, column: 49, scope: !2977, inlinedAt: !3045)
!3051 = !DILocation(line: 954, column: 35, scope: !2977, inlinedAt: !3045)
!3052 = !DILocation(line: 954, column: 47, scope: !2977, inlinedAt: !3045)
!3053 = !DILocation(line: 956, column: 3, scope: !2977, inlinedAt: !3045)
!3054 = !DILocation(line: 956, column: 32, scope: !2977, inlinedAt: !3045)
!3055 = !DILocation(line: 185, column: 48, scope: !2949, inlinedAt: !3044)
!3056 = !DILocation(line: 187, column: 3, scope: !2949, inlinedAt: !3044)
!3057 = !DILocation(line: 188, column: 13, scope: !2966, inlinedAt: !3044)
!3058 = !DILocation(line: 188, column: 7, scope: !2949, inlinedAt: !3044)
!3059 = !DILocation(line: 189, column: 5, scope: !2966, inlinedAt: !3044)
!3060 = !{!3061}
!3061 = distinct !{!3061, !3062, !"quoting_options_from_style: argument 0"}
!3062 = distinct !{!3062, !"quoting_options_from_style"}
!3063 = !DILocation(line: 191, column: 10, scope: !2949, inlinedAt: !3044)
!3064 = !DILocation(line: 192, column: 1, scope: !2949, inlinedAt: !3044)
!3065 = !DILocation(line: 957, column: 10, scope: !2977, inlinedAt: !3045)
!3066 = !DILocation(line: 958, column: 1, scope: !2977, inlinedAt: !3045)
!3067 = !DILocation(line: 969, column: 3, scope: !3036)
!3068 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !183, file: !183, line: 973, type: !3069, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!67, !75, !56, !68}
!3071 = !{!3072, !3073, !3074, !3075}
!3072 = !DILocalVariable(name: "arg", arg: 1, scope: !3068, file: !183, line: 973, type: !75)
!3073 = !DILocalVariable(name: "argsize", arg: 2, scope: !3068, file: !183, line: 973, type: !56)
!3074 = !DILocalVariable(name: "ch", arg: 3, scope: !3068, file: !183, line: 973, type: !68)
!3075 = !DILocalVariable(name: "options", scope: !3068, file: !183, line: 975, type: !190)
!3076 = !DILocation(line: 973, column: 32, scope: !3068)
!3077 = !DILocation(line: 973, column: 44, scope: !3068)
!3078 = !DILocation(line: 973, column: 58, scope: !3068)
!3079 = !DILocation(line: 975, column: 3, scope: !3068)
!3080 = !DILocation(line: 976, column: 13, scope: !3068)
!3081 = !{i64 0, i64 4, !914, i64 4, i64 4, !875, i64 8, i64 32, !914, i64 40, i64 8, !754, i64 48, i64 8, !754}
!3082 = !DILocation(line: 975, column: 26, scope: !3068)
!3083 = !DILocation(line: 144, column: 43, scope: !1534, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 977, column: 3, scope: !3068)
!3085 = !DILocation(line: 144, column: 51, scope: !1534, inlinedAt: !3084)
!3086 = !DILocation(line: 144, column: 58, scope: !1534, inlinedAt: !3084)
!3087 = !DILocation(line: 146, column: 17, scope: !1534, inlinedAt: !3084)
!3088 = !DILocation(line: 148, column: 62, scope: !1552, inlinedAt: !3084)
!3089 = !DILocation(line: 148, column: 57, scope: !1552, inlinedAt: !3084)
!3090 = !DILocation(line: 147, column: 17, scope: !1534, inlinedAt: !3084)
!3091 = !DILocation(line: 149, column: 18, scope: !1534, inlinedAt: !3084)
!3092 = !DILocation(line: 149, column: 15, scope: !1534, inlinedAt: !3084)
!3093 = !DILocation(line: 149, column: 7, scope: !1534, inlinedAt: !3084)
!3094 = !DILocation(line: 150, column: 12, scope: !1534, inlinedAt: !3084)
!3095 = !DILocation(line: 150, column: 15, scope: !1534, inlinedAt: !3084)
!3096 = !DILocation(line: 150, column: 25, scope: !1534, inlinedAt: !3084)
!3097 = !DILocation(line: 150, column: 7, scope: !1534, inlinedAt: !3084)
!3098 = !DILocation(line: 151, column: 18, scope: !1534, inlinedAt: !3084)
!3099 = !DILocation(line: 151, column: 23, scope: !1534, inlinedAt: !3084)
!3100 = !DILocation(line: 151, column: 6, scope: !1534, inlinedAt: !3084)
!3101 = !DILocation(line: 978, column: 10, scope: !3068)
!3102 = !DILocation(line: 979, column: 1, scope: !3068)
!3103 = !DILocation(line: 978, column: 3, scope: !3068)
!3104 = distinct !DISubprogram(name: "quotearg_char", scope: !183, file: !183, line: 982, type: !3105, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!67, !75, !68}
!3107 = !{!3108, !3109}
!3108 = !DILocalVariable(name: "arg", arg: 1, scope: !3104, file: !183, line: 982, type: !75)
!3109 = !DILocalVariable(name: "ch", arg: 2, scope: !3104, file: !183, line: 982, type: !68)
!3110 = !DILocation(line: 982, column: 28, scope: !3104)
!3111 = !DILocation(line: 982, column: 38, scope: !3104)
!3112 = !DILocation(line: 973, column: 32, scope: !3068, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 984, column: 10, scope: !3104)
!3114 = !DILocation(line: 973, column: 44, scope: !3068, inlinedAt: !3113)
!3115 = !DILocation(line: 973, column: 58, scope: !3068, inlinedAt: !3113)
!3116 = !DILocation(line: 975, column: 3, scope: !3068, inlinedAt: !3113)
!3117 = !DILocation(line: 976, column: 13, scope: !3068, inlinedAt: !3113)
!3118 = !DILocation(line: 975, column: 26, scope: !3068, inlinedAt: !3113)
!3119 = !DILocation(line: 144, column: 43, scope: !1534, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 977, column: 3, scope: !3068, inlinedAt: !3113)
!3121 = !DILocation(line: 144, column: 51, scope: !1534, inlinedAt: !3120)
!3122 = !DILocation(line: 144, column: 58, scope: !1534, inlinedAt: !3120)
!3123 = !DILocation(line: 146, column: 17, scope: !1534, inlinedAt: !3120)
!3124 = !DILocation(line: 148, column: 62, scope: !1552, inlinedAt: !3120)
!3125 = !DILocation(line: 148, column: 57, scope: !1552, inlinedAt: !3120)
!3126 = !DILocation(line: 147, column: 17, scope: !1534, inlinedAt: !3120)
!3127 = !DILocation(line: 149, column: 18, scope: !1534, inlinedAt: !3120)
!3128 = !DILocation(line: 149, column: 15, scope: !1534, inlinedAt: !3120)
!3129 = !DILocation(line: 149, column: 7, scope: !1534, inlinedAt: !3120)
!3130 = !DILocation(line: 150, column: 12, scope: !1534, inlinedAt: !3120)
!3131 = !DILocation(line: 150, column: 15, scope: !1534, inlinedAt: !3120)
!3132 = !DILocation(line: 150, column: 25, scope: !1534, inlinedAt: !3120)
!3133 = !DILocation(line: 150, column: 7, scope: !1534, inlinedAt: !3120)
!3134 = !DILocation(line: 151, column: 18, scope: !1534, inlinedAt: !3120)
!3135 = !DILocation(line: 151, column: 23, scope: !1534, inlinedAt: !3120)
!3136 = !DILocation(line: 151, column: 6, scope: !1534, inlinedAt: !3120)
!3137 = !DILocation(line: 978, column: 10, scope: !3068, inlinedAt: !3113)
!3138 = !DILocation(line: 979, column: 1, scope: !3068, inlinedAt: !3113)
!3139 = !DILocation(line: 984, column: 3, scope: !3104)
!3140 = distinct !DISubprogram(name: "quotearg_colon", scope: !183, file: !183, line: 988, type: !2916, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3141)
!3141 = !{!3142}
!3142 = !DILocalVariable(name: "arg", arg: 1, scope: !3140, file: !183, line: 988, type: !75)
!3143 = !DILocation(line: 988, column: 29, scope: !3140)
!3144 = !DILocation(line: 982, column: 28, scope: !3104, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 990, column: 10, scope: !3140)
!3146 = !DILocation(line: 982, column: 38, scope: !3104, inlinedAt: !3145)
!3147 = !DILocation(line: 973, column: 32, scope: !3068, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 984, column: 10, scope: !3104, inlinedAt: !3145)
!3149 = !DILocation(line: 973, column: 44, scope: !3068, inlinedAt: !3148)
!3150 = !DILocation(line: 973, column: 58, scope: !3068, inlinedAt: !3148)
!3151 = !DILocation(line: 975, column: 3, scope: !3068, inlinedAt: !3148)
!3152 = !DILocation(line: 976, column: 13, scope: !3068, inlinedAt: !3148)
!3153 = !DILocation(line: 975, column: 26, scope: !3068, inlinedAt: !3148)
!3154 = !DILocation(line: 144, column: 43, scope: !1534, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 977, column: 3, scope: !3068, inlinedAt: !3148)
!3156 = !DILocation(line: 144, column: 51, scope: !1534, inlinedAt: !3155)
!3157 = !DILocation(line: 144, column: 58, scope: !1534, inlinedAt: !3155)
!3158 = !DILocation(line: 146, column: 17, scope: !1534, inlinedAt: !3155)
!3159 = !DILocation(line: 148, column: 57, scope: !1552, inlinedAt: !3155)
!3160 = !DILocation(line: 147, column: 17, scope: !1534, inlinedAt: !3155)
!3161 = !DILocation(line: 149, column: 7, scope: !1534, inlinedAt: !3155)
!3162 = !DILocation(line: 150, column: 12, scope: !1534, inlinedAt: !3155)
!3163 = !DILocation(line: 151, column: 6, scope: !1534, inlinedAt: !3155)
!3164 = !DILocation(line: 978, column: 10, scope: !3068, inlinedAt: !3148)
!3165 = !DILocation(line: 979, column: 1, scope: !3068, inlinedAt: !3148)
!3166 = !DILocation(line: 990, column: 3, scope: !3140)
!3167 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !183, file: !183, line: 994, type: !2927, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3168)
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "arg", arg: 1, scope: !3167, file: !183, line: 994, type: !75)
!3170 = !DILocalVariable(name: "argsize", arg: 2, scope: !3167, file: !183, line: 994, type: !56)
!3171 = !DILocation(line: 994, column: 33, scope: !3167)
!3172 = !DILocation(line: 994, column: 45, scope: !3167)
!3173 = !DILocation(line: 973, column: 32, scope: !3068, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 996, column: 10, scope: !3167)
!3175 = !DILocation(line: 973, column: 44, scope: !3068, inlinedAt: !3174)
!3176 = !DILocation(line: 973, column: 58, scope: !3068, inlinedAt: !3174)
!3177 = !DILocation(line: 975, column: 3, scope: !3068, inlinedAt: !3174)
!3178 = !DILocation(line: 976, column: 13, scope: !3068, inlinedAt: !3174)
!3179 = !DILocation(line: 975, column: 26, scope: !3068, inlinedAt: !3174)
!3180 = !DILocation(line: 144, column: 43, scope: !1534, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 977, column: 3, scope: !3068, inlinedAt: !3174)
!3182 = !DILocation(line: 144, column: 51, scope: !1534, inlinedAt: !3181)
!3183 = !DILocation(line: 144, column: 58, scope: !1534, inlinedAt: !3181)
!3184 = !DILocation(line: 146, column: 17, scope: !1534, inlinedAt: !3181)
!3185 = !DILocation(line: 148, column: 57, scope: !1552, inlinedAt: !3181)
!3186 = !DILocation(line: 147, column: 17, scope: !1534, inlinedAt: !3181)
!3187 = !DILocation(line: 149, column: 7, scope: !1534, inlinedAt: !3181)
!3188 = !DILocation(line: 150, column: 12, scope: !1534, inlinedAt: !3181)
!3189 = !DILocation(line: 151, column: 6, scope: !1534, inlinedAt: !3181)
!3190 = !DILocation(line: 978, column: 10, scope: !3068, inlinedAt: !3174)
!3191 = !DILocation(line: 979, column: 1, scope: !3068, inlinedAt: !3174)
!3192 = !DILocation(line: 996, column: 3, scope: !3167)
!3193 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !183, file: !183, line: 1000, type: !2941, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3194)
!3194 = !{!3195, !3196, !3197, !3198}
!3195 = !DILocalVariable(name: "n", arg: 1, scope: !3193, file: !183, line: 1000, type: !69)
!3196 = !DILocalVariable(name: "s", arg: 2, scope: !3193, file: !183, line: 1000, type: !5)
!3197 = !DILocalVariable(name: "arg", arg: 3, scope: !3193, file: !183, line: 1000, type: !75)
!3198 = !DILocalVariable(name: "options", scope: !3193, file: !183, line: 1002, type: !190)
!3199 = !DILocation(line: 187, column: 26, scope: !2949, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1003, column: 13, scope: !3193)
!3201 = !DILocation(line: 1000, column: 29, scope: !3193)
!3202 = !DILocation(line: 1000, column: 51, scope: !3193)
!3203 = !DILocation(line: 1000, column: 66, scope: !3193)
!3204 = !DILocation(line: 1002, column: 3, scope: !3193)
!3205 = !DILocation(line: 185, column: 48, scope: !2949, inlinedAt: !3200)
!3206 = !DILocation(line: 187, column: 3, scope: !2949, inlinedAt: !3200)
!3207 = !DILocation(line: 188, column: 13, scope: !2966, inlinedAt: !3200)
!3208 = !DILocation(line: 188, column: 7, scope: !2949, inlinedAt: !3200)
!3209 = !DILocation(line: 189, column: 5, scope: !2966, inlinedAt: !3200)
!3210 = !{!3211}
!3211 = distinct !{!3211, !3212, !"quoting_options_from_style: argument 0"}
!3212 = distinct !{!3212, !"quoting_options_from_style"}
!3213 = !DILocation(line: 191, column: 10, scope: !2949, inlinedAt: !3200)
!3214 = !DILocation(line: 192, column: 1, scope: !2949, inlinedAt: !3200)
!3215 = !DILocation(line: 1003, column: 13, scope: !3193)
!3216 = !DILocation(line: 1002, column: 26, scope: !3193)
!3217 = !DILocation(line: 144, column: 43, scope: !1534, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1004, column: 3, scope: !3193)
!3219 = !DILocation(line: 144, column: 51, scope: !1534, inlinedAt: !3218)
!3220 = !DILocation(line: 144, column: 58, scope: !1534, inlinedAt: !3218)
!3221 = !DILocation(line: 146, column: 17, scope: !1534, inlinedAt: !3218)
!3222 = !DILocation(line: 148, column: 57, scope: !1552, inlinedAt: !3218)
!3223 = !DILocation(line: 147, column: 17, scope: !1534, inlinedAt: !3218)
!3224 = !DILocation(line: 149, column: 7, scope: !1534, inlinedAt: !3218)
!3225 = !DILocation(line: 150, column: 12, scope: !1534, inlinedAt: !3218)
!3226 = !DILocation(line: 151, column: 6, scope: !1534, inlinedAt: !3218)
!3227 = !DILocation(line: 1005, column: 10, scope: !3193)
!3228 = !DILocation(line: 1006, column: 1, scope: !3193)
!3229 = !DILocation(line: 1005, column: 3, scope: !3193)
!3230 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !183, file: !183, line: 1009, type: !3231, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!67, !69, !75, !75, !75}
!3233 = !{!3234, !3235, !3236, !3237}
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3230, file: !183, line: 1009, type: !69)
!3235 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3230, file: !183, line: 1009, type: !75)
!3236 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3230, file: !183, line: 1010, type: !75)
!3237 = !DILocalVariable(name: "arg", arg: 4, scope: !3230, file: !183, line: 1010, type: !75)
!3238 = !DILocation(line: 1009, column: 24, scope: !3230)
!3239 = !DILocation(line: 1009, column: 39, scope: !3230)
!3240 = !DILocation(line: 1010, column: 32, scope: !3230)
!3241 = !DILocation(line: 1010, column: 57, scope: !3230)
!3242 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !183, line: 1017, type: !69)
!3243 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !183, file: !183, line: 1017, type: !3244, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!67, !69, !75, !75, !75, !56}
!3246 = !{!3242, !3247, !3248, !3249, !3250, !3251}
!3247 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3243, file: !183, line: 1017, type: !75)
!3248 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3243, file: !183, line: 1018, type: !75)
!3249 = !DILocalVariable(name: "arg", arg: 4, scope: !3243, file: !183, line: 1019, type: !75)
!3250 = !DILocalVariable(name: "argsize", arg: 5, scope: !3243, file: !183, line: 1019, type: !56)
!3251 = !DILocalVariable(name: "o", scope: !3243, file: !183, line: 1021, type: !190)
!3252 = !DILocation(line: 1017, column: 28, scope: !3243, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 1012, column: 10, scope: !3230)
!3254 = !DILocation(line: 1017, column: 43, scope: !3243, inlinedAt: !3253)
!3255 = !DILocation(line: 1018, column: 36, scope: !3243, inlinedAt: !3253)
!3256 = !DILocation(line: 1019, column: 36, scope: !3243, inlinedAt: !3253)
!3257 = !DILocation(line: 1019, column: 48, scope: !3243, inlinedAt: !3253)
!3258 = !DILocation(line: 1021, column: 3, scope: !3243, inlinedAt: !3253)
!3259 = !DILocation(line: 1021, column: 30, scope: !3243, inlinedAt: !3253)
!3260 = !DILocation(line: 1021, column: 26, scope: !3243, inlinedAt: !3253)
!3261 = !DILocation(line: 171, column: 45, scope: !1584, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 1022, column: 3, scope: !3243, inlinedAt: !3253)
!3263 = !DILocation(line: 172, column: 33, scope: !1584, inlinedAt: !3262)
!3264 = !DILocation(line: 172, column: 57, scope: !1584, inlinedAt: !3262)
!3265 = !DILocation(line: 176, column: 6, scope: !1584, inlinedAt: !3262)
!3266 = !DILocation(line: 176, column: 12, scope: !1584, inlinedAt: !3262)
!3267 = !DILocation(line: 177, column: 8, scope: !1600, inlinedAt: !3262)
!3268 = !DILocation(line: 177, column: 23, scope: !1602, inlinedAt: !3262)
!3269 = !DILocation(line: 177, column: 19, scope: !1600, inlinedAt: !3262)
!3270 = !DILocation(line: 178, column: 5, scope: !1600, inlinedAt: !3262)
!3271 = !DILocation(line: 179, column: 6, scope: !1584, inlinedAt: !3262)
!3272 = !DILocation(line: 179, column: 17, scope: !1584, inlinedAt: !3262)
!3273 = !DILocation(line: 180, column: 6, scope: !1584, inlinedAt: !3262)
!3274 = !DILocation(line: 180, column: 18, scope: !1584, inlinedAt: !3262)
!3275 = !DILocation(line: 1023, column: 10, scope: !3243, inlinedAt: !3253)
!3276 = !DILocation(line: 1024, column: 1, scope: !3243, inlinedAt: !3253)
!3277 = !DILocation(line: 1012, column: 3, scope: !3230)
!3278 = !DILocation(line: 1017, column: 28, scope: !3243)
!3279 = !DILocation(line: 1017, column: 43, scope: !3243)
!3280 = !DILocation(line: 1018, column: 36, scope: !3243)
!3281 = !DILocation(line: 1019, column: 36, scope: !3243)
!3282 = !DILocation(line: 1019, column: 48, scope: !3243)
!3283 = !DILocation(line: 1021, column: 3, scope: !3243)
!3284 = !DILocation(line: 1021, column: 30, scope: !3243)
!3285 = !DILocation(line: 1021, column: 26, scope: !3243)
!3286 = !DILocation(line: 171, column: 45, scope: !1584, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1022, column: 3, scope: !3243)
!3288 = !DILocation(line: 172, column: 33, scope: !1584, inlinedAt: !3287)
!3289 = !DILocation(line: 172, column: 57, scope: !1584, inlinedAt: !3287)
!3290 = !DILocation(line: 176, column: 6, scope: !1584, inlinedAt: !3287)
!3291 = !DILocation(line: 176, column: 12, scope: !1584, inlinedAt: !3287)
!3292 = !DILocation(line: 177, column: 8, scope: !1600, inlinedAt: !3287)
!3293 = !DILocation(line: 177, column: 23, scope: !1602, inlinedAt: !3287)
!3294 = !DILocation(line: 177, column: 19, scope: !1600, inlinedAt: !3287)
!3295 = !DILocation(line: 178, column: 5, scope: !1600, inlinedAt: !3287)
!3296 = !DILocation(line: 179, column: 6, scope: !1584, inlinedAt: !3287)
!3297 = !DILocation(line: 179, column: 17, scope: !1584, inlinedAt: !3287)
!3298 = !DILocation(line: 180, column: 6, scope: !1584, inlinedAt: !3287)
!3299 = !DILocation(line: 180, column: 18, scope: !1584, inlinedAt: !3287)
!3300 = !DILocation(line: 1023, column: 10, scope: !3243)
!3301 = !DILocation(line: 1024, column: 1, scope: !3243)
!3302 = !DILocation(line: 1023, column: 3, scope: !3243)
!3303 = distinct !DISubprogram(name: "quotearg_custom", scope: !183, file: !183, line: 1027, type: !3304, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!67, !75, !75, !75}
!3306 = !{!3307, !3308, !3309}
!3307 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3303, file: !183, line: 1027, type: !75)
!3308 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3303, file: !183, line: 1027, type: !75)
!3309 = !DILocalVariable(name: "arg", arg: 3, scope: !3303, file: !183, line: 1028, type: !75)
!3310 = !DILocation(line: 1027, column: 30, scope: !3303)
!3311 = !DILocation(line: 1027, column: 54, scope: !3303)
!3312 = !DILocation(line: 1028, column: 30, scope: !3303)
!3313 = !DILocation(line: 1009, column: 24, scope: !3230, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 1030, column: 10, scope: !3303)
!3315 = !DILocation(line: 1009, column: 39, scope: !3230, inlinedAt: !3314)
!3316 = !DILocation(line: 1010, column: 32, scope: !3230, inlinedAt: !3314)
!3317 = !DILocation(line: 1010, column: 57, scope: !3230, inlinedAt: !3314)
!3318 = !DILocation(line: 1017, column: 28, scope: !3243, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 1012, column: 10, scope: !3230, inlinedAt: !3314)
!3320 = !DILocation(line: 1017, column: 43, scope: !3243, inlinedAt: !3319)
!3321 = !DILocation(line: 1018, column: 36, scope: !3243, inlinedAt: !3319)
!3322 = !DILocation(line: 1019, column: 36, scope: !3243, inlinedAt: !3319)
!3323 = !DILocation(line: 1019, column: 48, scope: !3243, inlinedAt: !3319)
!3324 = !DILocation(line: 1021, column: 3, scope: !3243, inlinedAt: !3319)
!3325 = !DILocation(line: 1021, column: 30, scope: !3243, inlinedAt: !3319)
!3326 = !DILocation(line: 1021, column: 26, scope: !3243, inlinedAt: !3319)
!3327 = !DILocation(line: 171, column: 45, scope: !1584, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 1022, column: 3, scope: !3243, inlinedAt: !3319)
!3329 = !DILocation(line: 172, column: 33, scope: !1584, inlinedAt: !3328)
!3330 = !DILocation(line: 172, column: 57, scope: !1584, inlinedAt: !3328)
!3331 = !DILocation(line: 176, column: 6, scope: !1584, inlinedAt: !3328)
!3332 = !DILocation(line: 176, column: 12, scope: !1584, inlinedAt: !3328)
!3333 = !DILocation(line: 177, column: 8, scope: !1600, inlinedAt: !3328)
!3334 = !DILocation(line: 177, column: 23, scope: !1602, inlinedAt: !3328)
!3335 = !DILocation(line: 177, column: 19, scope: !1600, inlinedAt: !3328)
!3336 = !DILocation(line: 178, column: 5, scope: !1600, inlinedAt: !3328)
!3337 = !DILocation(line: 179, column: 6, scope: !1584, inlinedAt: !3328)
!3338 = !DILocation(line: 179, column: 17, scope: !1584, inlinedAt: !3328)
!3339 = !DILocation(line: 180, column: 6, scope: !1584, inlinedAt: !3328)
!3340 = !DILocation(line: 180, column: 18, scope: !1584, inlinedAt: !3328)
!3341 = !DILocation(line: 1023, column: 10, scope: !3243, inlinedAt: !3319)
!3342 = !DILocation(line: 1024, column: 1, scope: !3243, inlinedAt: !3319)
!3343 = !DILocation(line: 1030, column: 3, scope: !3303)
!3344 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !183, file: !183, line: 1034, type: !3345, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3347)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!67, !75, !75, !75, !56}
!3347 = !{!3348, !3349, !3350, !3351}
!3348 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3344, file: !183, line: 1034, type: !75)
!3349 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3344, file: !183, line: 1034, type: !75)
!3350 = !DILocalVariable(name: "arg", arg: 3, scope: !3344, file: !183, line: 1035, type: !75)
!3351 = !DILocalVariable(name: "argsize", arg: 4, scope: !3344, file: !183, line: 1035, type: !56)
!3352 = !DILocation(line: 1034, column: 34, scope: !3344)
!3353 = !DILocation(line: 1034, column: 58, scope: !3344)
!3354 = !DILocation(line: 1035, column: 34, scope: !3344)
!3355 = !DILocation(line: 1035, column: 46, scope: !3344)
!3356 = !DILocation(line: 1017, column: 28, scope: !3243, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 1037, column: 10, scope: !3344)
!3358 = !DILocation(line: 1017, column: 43, scope: !3243, inlinedAt: !3357)
!3359 = !DILocation(line: 1018, column: 36, scope: !3243, inlinedAt: !3357)
!3360 = !DILocation(line: 1019, column: 36, scope: !3243, inlinedAt: !3357)
!3361 = !DILocation(line: 1019, column: 48, scope: !3243, inlinedAt: !3357)
!3362 = !DILocation(line: 1021, column: 3, scope: !3243, inlinedAt: !3357)
!3363 = !DILocation(line: 1021, column: 30, scope: !3243, inlinedAt: !3357)
!3364 = !DILocation(line: 1021, column: 26, scope: !3243, inlinedAt: !3357)
!3365 = !DILocation(line: 171, column: 45, scope: !1584, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 1022, column: 3, scope: !3243, inlinedAt: !3357)
!3367 = !DILocation(line: 172, column: 33, scope: !1584, inlinedAt: !3366)
!3368 = !DILocation(line: 172, column: 57, scope: !1584, inlinedAt: !3366)
!3369 = !DILocation(line: 176, column: 6, scope: !1584, inlinedAt: !3366)
!3370 = !DILocation(line: 176, column: 12, scope: !1584, inlinedAt: !3366)
!3371 = !DILocation(line: 177, column: 8, scope: !1600, inlinedAt: !3366)
!3372 = !DILocation(line: 177, column: 23, scope: !1602, inlinedAt: !3366)
!3373 = !DILocation(line: 177, column: 19, scope: !1600, inlinedAt: !3366)
!3374 = !DILocation(line: 178, column: 5, scope: !1600, inlinedAt: !3366)
!3375 = !DILocation(line: 179, column: 6, scope: !1584, inlinedAt: !3366)
!3376 = !DILocation(line: 179, column: 17, scope: !1584, inlinedAt: !3366)
!3377 = !DILocation(line: 180, column: 6, scope: !1584, inlinedAt: !3366)
!3378 = !DILocation(line: 180, column: 18, scope: !1584, inlinedAt: !3366)
!3379 = !DILocation(line: 1023, column: 10, scope: !3243, inlinedAt: !3357)
!3380 = !DILocation(line: 1024, column: 1, scope: !3243, inlinedAt: !3357)
!3381 = !DILocation(line: 1037, column: 3, scope: !3344)
!3382 = distinct !DISubprogram(name: "quote_n_mem", scope: !183, file: !183, line: 1052, type: !3383, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!75, !69, !75, !56}
!3385 = !{!3386, !3387, !3388}
!3386 = !DILocalVariable(name: "n", arg: 1, scope: !3382, file: !183, line: 1052, type: !69)
!3387 = !DILocalVariable(name: "arg", arg: 2, scope: !3382, file: !183, line: 1052, type: !75)
!3388 = !DILocalVariable(name: "argsize", arg: 3, scope: !3382, file: !183, line: 1052, type: !56)
!3389 = !DILocation(line: 1052, column: 18, scope: !3382)
!3390 = !DILocation(line: 1052, column: 33, scope: !3382)
!3391 = !DILocation(line: 1052, column: 45, scope: !3382)
!3392 = !DILocation(line: 1054, column: 10, scope: !3382)
!3393 = !DILocation(line: 1054, column: 3, scope: !3382)
!3394 = distinct !DISubprogram(name: "quote_mem", scope: !183, file: !183, line: 1058, type: !3395, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!75, !75, !56}
!3397 = !{!3398, !3399}
!3398 = !DILocalVariable(name: "arg", arg: 1, scope: !3394, file: !183, line: 1058, type: !75)
!3399 = !DILocalVariable(name: "argsize", arg: 2, scope: !3394, file: !183, line: 1058, type: !56)
!3400 = !DILocation(line: 1058, column: 24, scope: !3394)
!3401 = !DILocation(line: 1058, column: 36, scope: !3394)
!3402 = !DILocation(line: 1052, column: 18, scope: !3382, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 1060, column: 10, scope: !3394)
!3404 = !DILocation(line: 1052, column: 33, scope: !3382, inlinedAt: !3403)
!3405 = !DILocation(line: 1052, column: 45, scope: !3382, inlinedAt: !3403)
!3406 = !DILocation(line: 1054, column: 10, scope: !3382, inlinedAt: !3403)
!3407 = !DILocation(line: 1060, column: 3, scope: !3394)
!3408 = distinct !DISubprogram(name: "quote_n", scope: !183, file: !183, line: 1064, type: !3409, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!75, !69, !75}
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "n", arg: 1, scope: !3408, file: !183, line: 1064, type: !69)
!3413 = !DILocalVariable(name: "arg", arg: 2, scope: !3408, file: !183, line: 1064, type: !75)
!3414 = !DILocation(line: 1064, column: 14, scope: !3408)
!3415 = !DILocation(line: 1064, column: 29, scope: !3408)
!3416 = !DILocation(line: 1052, column: 18, scope: !3382, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 1066, column: 10, scope: !3408)
!3418 = !DILocation(line: 1052, column: 33, scope: !3382, inlinedAt: !3417)
!3419 = !DILocation(line: 1052, column: 45, scope: !3382, inlinedAt: !3417)
!3420 = !DILocation(line: 1054, column: 10, scope: !3382, inlinedAt: !3417)
!3421 = !DILocation(line: 1066, column: 3, scope: !3408)
!3422 = distinct !DISubprogram(name: "quote", scope: !183, file: !183, line: 1070, type: !3423, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !171, variables: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!75, !75}
!3425 = !{!3426}
!3426 = !DILocalVariable(name: "arg", arg: 1, scope: !3422, file: !183, line: 1070, type: !75)
!3427 = !DILocation(line: 1070, column: 20, scope: !3422)
!3428 = !DILocation(line: 1064, column: 14, scope: !3408, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 1072, column: 10, scope: !3422)
!3430 = !DILocation(line: 1064, column: 29, scope: !3408, inlinedAt: !3429)
!3431 = !DILocation(line: 1052, column: 18, scope: !3382, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 1066, column: 10, scope: !3408, inlinedAt: !3429)
!3433 = !DILocation(line: 1052, column: 33, scope: !3382, inlinedAt: !3432)
!3434 = !DILocation(line: 1052, column: 45, scope: !3382, inlinedAt: !3432)
!3435 = !DILocation(line: 1054, column: 10, scope: !3382, inlinedAt: !3432)
!3436 = !DILocation(line: 1072, column: 3, scope: !3422)
!3437 = distinct !DISubprogram(name: "parse_user_spec", scope: !587, file: !587, line: 259, type: !3438, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!75, !75, !590, !591, !93, !93}
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448}
!3441 = !DILocalVariable(name: "spec", arg: 1, scope: !3437, file: !587, line: 259, type: !75)
!3442 = !DILocalVariable(name: "uid", arg: 2, scope: !3437, file: !587, line: 259, type: !590)
!3443 = !DILocalVariable(name: "gid", arg: 3, scope: !3437, file: !587, line: 259, type: !591)
!3444 = !DILocalVariable(name: "username", arg: 4, scope: !3437, file: !587, line: 260, type: !93)
!3445 = !DILocalVariable(name: "groupname", arg: 5, scope: !3437, file: !587, line: 260, type: !93)
!3446 = !DILocalVariable(name: "colon", scope: !3437, file: !587, line: 262, type: !75)
!3447 = !DILocalVariable(name: "error_msg", scope: !3437, file: !587, line: 263, type: !75)
!3448 = !DILocalVariable(name: "dot", scope: !3449, file: !587, line: 274, type: !75)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !587, line: 267, column: 5)
!3450 = distinct !DILexicalBlock(scope: !3437, file: !587, line: 266, column: 7)
!3451 = !DILocation(line: 259, column: 30, scope: !3437)
!3452 = !DILocation(line: 259, column: 43, scope: !3437)
!3453 = !DILocation(line: 259, column: 55, scope: !3437)
!3454 = !DILocation(line: 260, column: 25, scope: !3437)
!3455 = !DILocation(line: 260, column: 42, scope: !3437)
!3456 = !DILocation(line: 262, column: 23, scope: !3437)
!3457 = !DILocation(line: 262, column: 29, scope: !3458)
!3458 = !DILexicalBlockFile(scope: !3437, file: !587, discriminator: 1)
!3459 = !DILocation(line: 262, column: 23, scope: !3458)
!3460 = !DILocation(line: 262, column: 23, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3437, file: !587, discriminator: 3)
!3462 = !DILocation(line: 262, column: 15, scope: !3437)
!3463 = !DILocation(line: 264, column: 5, scope: !3437)
!3464 = !DILocation(line: 263, column: 15, scope: !3437)
!3465 = !DILocation(line: 266, column: 11, scope: !3450)
!3466 = !DILocation(line: 266, column: 24, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3450, file: !587, discriminator: 2)
!3468 = !DILocation(line: 274, column: 25, scope: !3449)
!3469 = !DILocation(line: 274, column: 19, scope: !3449)
!3470 = !DILocation(line: 275, column: 11, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3449, file: !587, line: 275, column: 11)
!3472 = !DILocation(line: 276, column: 11, scope: !3471)
!3473 = !DILocation(line: 276, column: 16, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3471, file: !587, discriminator: 1)
!3475 = !DILocation(line: 275, column: 11, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3449, file: !587, discriminator: 1)
!3477 = !DILocation(line: 280, column: 3, scope: !3437)
!3478 = !DILocation(line: 102, column: 35, scope: !586)
!3479 = !DILocation(line: 102, column: 53, scope: !586)
!3480 = !DILocation(line: 103, column: 30, scope: !586)
!3481 = !DILocation(line: 103, column: 42, scope: !586)
!3482 = !DILocation(line: 104, column: 30, scope: !586)
!3483 = !DILocation(line: 104, column: 47, scope: !586)
!3484 = !DILocation(line: 115, column: 9, scope: !586)
!3485 = !DILocation(line: 116, column: 16, scope: !586)
!3486 = !DILocation(line: 116, column: 9, scope: !586)
!3487 = !DILocation(line: 117, column: 16, scope: !586)
!3488 = !DILocation(line: 117, column: 22, scope: !3489)
!3489 = !DILexicalBlockFile(scope: !586, file: !587, discriminator: 1)
!3490 = !DILocation(line: 117, column: 16, scope: !3489)
!3491 = !DILocation(line: 117, column: 16, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !586, file: !587, discriminator: 3)
!3493 = !DILocation(line: 117, column: 9, scope: !586)
!3494 = !DILocation(line: 110, column: 15, scope: !586)
!3495 = !DILocation(line: 120, column: 7, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !586, file: !587, line: 120, column: 7)
!3497 = !DILocation(line: 120, column: 7, scope: !586)
!3498 = !DILocation(line: 121, column: 15, scope: !3496)
!3499 = !DILocation(line: 121, column: 5, scope: !3496)
!3500 = !DILocation(line: 122, column: 7, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !586, file: !587, line: 122, column: 7)
!3502 = !DILocation(line: 122, column: 7, scope: !586)
!3503 = !DILocation(line: 123, column: 16, scope: !3501)
!3504 = !DILocation(line: 123, column: 5, scope: !3501)
!3505 = !DILocation(line: 113, column: 9, scope: !586)
!3506 = !DILocation(line: 130, column: 17, scope: !627)
!3507 = !DILocation(line: 130, column: 7, scope: !586)
!3508 = !DILocation(line: 132, column: 11, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !587, line: 132, column: 11)
!3510 = distinct !DILexicalBlock(scope: !627, file: !587, line: 131, column: 5)
!3511 = !DILocation(line: 132, column: 11, scope: !3510)
!3512 = !DILocation(line: 133, column: 13, scope: !3509)
!3513 = !DILocation(line: 133, column: 9, scope: !3509)
!3514 = !DILocation(line: 137, column: 31, scope: !626)
!3515 = !DILocation(line: 137, column: 14, scope: !626)
!3516 = !DILocation(line: 138, column: 16, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !626, file: !587, line: 138, column: 11)
!3518 = !DILocation(line: 138, column: 11, scope: !626)
!3519 = !DILocation(line: 140, column: 35, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3517, file: !587, line: 139, column: 9)
!3521 = !DILocation(line: 140, column: 15, scope: !3520)
!3522 = !DILocation(line: 141, column: 11, scope: !3520)
!3523 = !DILocation(line: 141, column: 19, scope: !3520)
!3524 = !DILocation(line: 142, column: 9, scope: !3520)
!3525 = !DILocation(line: 145, column: 41, scope: !3489)
!3526 = !DILocation(line: 145, column: 29, scope: !3489)
!3527 = !DILocation(line: 145, column: 46, scope: !3489)
!3528 = !DILocation(line: 145, column: 8, scope: !3489)
!3529 = !DILocation(line: 145, column: 8, scope: !3530)
!3530 = !DILexicalBlockFile(scope: !586, file: !587, discriminator: 4)
!3531 = !DILocation(line: 114, column: 15, scope: !586)
!3532 = !DILocation(line: 158, column: 9, scope: !632)
!3533 = !DILocation(line: 158, column: 7, scope: !586)
!3534 = !DILocation(line: 161, column: 14, scope: !631)
!3535 = !DILocation(line: 161, column: 17, scope: !631)
!3536 = !DILocation(line: 161, column: 33, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !631, file: !587, discriminator: 2)
!3538 = !DILocation(line: 111, column: 18, scope: !586)
!3539 = !DILocation(line: 162, column: 15, scope: !630)
!3540 = !DILocation(line: 162, column: 11, scope: !631)
!3541 = !DILocation(line: 164, column: 45, scope: !629)
!3542 = !DILocation(line: 164, column: 58, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !629, file: !587, discriminator: 1)
!3544 = !DILocation(line: 164, column: 53, scope: !629)
!3545 = !DILocation(line: 165, column: 15, scope: !629)
!3546 = !DILocation(line: 173, column: 15, scope: !634)
!3547 = !DILocation(line: 173, column: 33, scope: !634)
!3548 = !DILocation(line: 174, column: 19, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !634, file: !587, line: 174, column: 19)
!3550 = !DILocation(line: 174, column: 52, scope: !3549)
!3551 = !DILocation(line: 175, column: 22, scope: !3552)
!3552 = !DILexicalBlockFile(scope: !3549, file: !587, discriminator: 1)
!3553 = !DILocation(line: 175, column: 26, scope: !3552)
!3554 = !DILocation(line: 175, column: 19, scope: !3549)
!3555 = !DILocation(line: 175, column: 39, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !3549, file: !587, discriminator: 2)
!3557 = !DILocation(line: 175, column: 51, scope: !3556)
!3558 = !DILocation(line: 174, column: 19, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !634, file: !587, discriminator: 1)
!3560 = !DILocation(line: 179, column: 13, scope: !635)
!3561 = !DILocation(line: 183, column: 23, scope: !639)
!3562 = !{!1027, !876, i64 16}
!3563 = !DILocation(line: 184, column: 17, scope: !638)
!3564 = !DILocation(line: 184, column: 38, scope: !3565)
!3565 = !DILexicalBlockFile(scope: !638, file: !587, discriminator: 1)
!3566 = !DILocation(line: 184, column: 25, scope: !638)
!3567 = !DILocation(line: 188, column: 15, scope: !637)
!3568 = !DILocation(line: 188, column: 20, scope: !637)
!3569 = !DILocation(line: 189, column: 27, scope: !637)
!3570 = !DILocation(line: 190, column: 21, scope: !637)
!3571 = !DILocation(line: 112, column: 17, scope: !586)
!3572 = !DILocation(line: 191, column: 32, scope: !637)
!3573 = !DILocation(line: 191, column: 43, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !637, file: !587, discriminator: 1)
!3575 = !{!1317, !755, i64 0}
!3576 = !DILocation(line: 191, column: 32, scope: !3574)
!3577 = !DILocation(line: 191, column: 64, scope: !3578)
!3578 = !DILexicalBlockFile(scope: !637, file: !587, discriminator: 2)
!3579 = !DILocation(line: 191, column: 53, scope: !3578)
!3580 = !DILocation(line: 191, column: 32, scope: !3578)
!3581 = !DILocation(line: 191, column: 32, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !637, file: !587, discriminator: 3)
!3583 = !DILocation(line: 191, column: 23, scope: !3582)
!3584 = !DILocation(line: 192, column: 15, scope: !637)
!3585 = !DILocation(line: 193, column: 13, scope: !638)
!3586 = !DILocation(line: 193, column: 13, scope: !637)
!3587 = !DILocation(line: 195, column: 7, scope: !631)
!3588 = !DILocation(line: 196, column: 5, scope: !631)
!3589 = !DILocation(line: 198, column: 9, scope: !647)
!3590 = !DILocation(line: 198, column: 30, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !647, file: !587, discriminator: 1)
!3592 = !DILocation(line: 198, column: 17, scope: !647)
!3593 = !DILocation(line: 202, column: 14, scope: !646)
!3594 = !DILocation(line: 202, column: 17, scope: !646)
!3595 = !DILocation(line: 202, column: 33, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !646, file: !587, discriminator: 2)
!3597 = !DILocation(line: 203, column: 15, scope: !645)
!3598 = !DILocation(line: 203, column: 11, scope: !646)
!3599 = !DILocation(line: 205, column: 11, scope: !644)
!3600 = !DILocation(line: 205, column: 29, scope: !644)
!3601 = !DILocation(line: 206, column: 15, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !644, file: !587, line: 206, column: 15)
!3603 = !DILocation(line: 206, column: 48, scope: !3602)
!3604 = !DILocation(line: 207, column: 18, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3602, file: !587, discriminator: 1)
!3606 = !DILocation(line: 207, column: 22, scope: !3605)
!3607 = !DILocation(line: 207, column: 15, scope: !3602)
!3608 = !DILocation(line: 207, column: 35, scope: !3609)
!3609 = !DILexicalBlockFile(scope: !3602, file: !587, discriminator: 2)
!3610 = !DILocation(line: 207, column: 47, scope: !3609)
!3611 = !DILocation(line: 206, column: 15, scope: !3612)
!3612 = !DILexicalBlockFile(scope: !644, file: !587, discriminator: 1)
!3613 = !DILocation(line: 211, column: 9, scope: !645)
!3614 = !DILocation(line: 211, column: 9, scope: !644)
!3615 = !DILocation(line: 213, column: 21, scope: !645)
!3616 = !DILocation(line: 214, column: 7, scope: !646)
!3617 = !DILocation(line: 215, column: 15, scope: !646)
!3618 = !DILocation(line: 216, column: 5, scope: !646)
!3619 = !DILocation(line: 218, column: 17, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !586, file: !587, line: 218, column: 7)
!3621 = !DILocation(line: 218, column: 7, scope: !586)
!3622 = !DILocation(line: 220, column: 12, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3620, file: !587, line: 219, column: 5)
!3624 = !DILocation(line: 221, column: 11, scope: !3623)
!3625 = !DILocation(line: 222, column: 14, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3623, file: !587, line: 221, column: 11)
!3627 = !DILocation(line: 222, column: 9, scope: !3626)
!3628 = !DILocation(line: 223, column: 11, scope: !3623)
!3629 = !DILocation(line: 225, column: 21, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !587, line: 224, column: 9)
!3631 = distinct !DILexicalBlock(scope: !3623, file: !587, line: 223, column: 11)
!3632 = !DILocation(line: 227, column: 9, scope: !3630)
!3633 = !DILocation(line: 228, column: 11, scope: !3623)
!3634 = !DILocation(line: 230, column: 22, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !587, line: 229, column: 9)
!3636 = distinct !DILexicalBlock(scope: !3623, file: !587, line: 228, column: 11)
!3637 = !DILocation(line: 232, column: 9, scope: !3635)
!3638 = !DILocation(line: 235, column: 3, scope: !586)
!3639 = !DILocation(line: 236, column: 3, scope: !586)
!3640 = !DILocation(line: 237, column: 10, scope: !586)
!3641 = !DILocation(line: 237, column: 22, scope: !3489)
!3642 = !DILocation(line: 237, column: 10, scope: !3489)
!3643 = !DILocation(line: 237, column: 10, scope: !3492)
!3644 = !DILocation(line: 237, column: 3, scope: !3492)
!3645 = distinct !DISubprogram(name: "version_etc_arn", scope: !656, file: !656, line: 62, type: !3646, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !3702)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3648, !75, !75, !75, !3701, !56}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3650, line: 49, baseType: !3651)
!3650 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3652, line: 241, size: 1728, elements: !3653)
!3652 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3674, !3675, !3676, !3677, !3679, !3680, !3682, !3686, !3689, !3691, !3692, !3693, !3694, !3695, !3696, !3697}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3651, file: !3652, line: 242, baseType: !69, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3651, file: !3652, line: 247, baseType: !67, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3651, file: !3652, line: 248, baseType: !67, size: 64, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3651, file: !3652, line: 249, baseType: !67, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3651, file: !3652, line: 250, baseType: !67, size: 64, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3651, file: !3652, line: 251, baseType: !67, size: 64, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3651, file: !3652, line: 252, baseType: !67, size: 64, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3651, file: !3652, line: 253, baseType: !67, size: 64, offset: 448)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3651, file: !3652, line: 254, baseType: !67, size: 64, offset: 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3651, file: !3652, line: 256, baseType: !67, size: 64, offset: 576)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3651, file: !3652, line: 257, baseType: !67, size: 64, offset: 640)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3651, file: !3652, line: 258, baseType: !67, size: 64, offset: 704)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3651, file: !3652, line: 260, baseType: !3667, size: 64, offset: 768)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3652, line: 156, size: 192, elements: !3669)
!3669 = !{!3670, !3671, !3673}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3668, file: !3652, line: 157, baseType: !3667, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3668, file: !3652, line: 158, baseType: !3672, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3668, file: !3652, line: 162, baseType: !69, size: 32, offset: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3651, file: !3652, line: 262, baseType: !3672, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3651, file: !3652, line: 264, baseType: !69, size: 32, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3651, file: !3652, line: 268, baseType: !69, size: 32, offset: 928)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3651, file: !3652, line: 270, baseType: !3678, size: 64, offset: 960)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !80, line: 140, baseType: !97)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3651, file: !3652, line: 274, baseType: !84, size: 16, offset: 1024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3651, file: !3652, line: 275, baseType: !3681, size: 8, offset: 1040)
!3681 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3651, file: !3652, line: 276, baseType: !3683, size: 8, offset: 1048)
!3683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, elements: !3684)
!3684 = !{!3685}
!3685 = !DISubrange(count: 1)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3651, file: !3652, line: 280, baseType: !3687, size: 64, offset: 1088)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3652, line: 150, baseType: null)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3651, file: !3652, line: 289, baseType: !3690, size: 64, offset: 1152)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !80, line: 141, baseType: !97)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3651, file: !3652, line: 297, baseType: !54, size: 64, offset: 1216)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3651, file: !3652, line: 298, baseType: !54, size: 64, offset: 1280)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3651, file: !3652, line: 299, baseType: !54, size: 64, offset: 1344)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3651, file: !3652, line: 300, baseType: !54, size: 64, offset: 1408)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3651, file: !3652, line: 302, baseType: !56, size: 64, offset: 1472)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3651, file: !3652, line: 303, baseType: !69, size: 32, offset: 1536)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3651, file: !3652, line: 305, baseType: !3698, size: 160, offset: 1568)
!3698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, elements: !3699)
!3699 = !{!3700}
!3700 = !DISubrange(count: 20)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708}
!3703 = !DILocalVariable(name: "stream", arg: 1, scope: !3645, file: !656, line: 62, type: !3648)
!3704 = !DILocalVariable(name: "command_name", arg: 2, scope: !3645, file: !656, line: 63, type: !75)
!3705 = !DILocalVariable(name: "package", arg: 3, scope: !3645, file: !656, line: 63, type: !75)
!3706 = !DILocalVariable(name: "version", arg: 4, scope: !3645, file: !656, line: 64, type: !75)
!3707 = !DILocalVariable(name: "authors", arg: 5, scope: !3645, file: !656, line: 65, type: !3701)
!3708 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3645, file: !656, line: 65, type: !56)
!3709 = !DILocation(line: 62, column: 24, scope: !3645)
!3710 = !DILocation(line: 63, column: 30, scope: !3645)
!3711 = !DILocation(line: 63, column: 56, scope: !3645)
!3712 = !DILocation(line: 64, column: 30, scope: !3645)
!3713 = !DILocation(line: 65, column: 39, scope: !3645)
!3714 = !DILocation(line: 65, column: 55, scope: !3645)
!3715 = !DILocation(line: 67, column: 7, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3645, file: !656, line: 67, column: 7)
!3717 = !DILocation(line: 67, column: 7, scope: !3645)
!3718 = !DILocation(line: 68, column: 5, scope: !3716)
!3719 = !DILocation(line: 70, column: 5, scope: !3716)
!3720 = !DILocation(line: 84, column: 3, scope: !3645)
!3721 = !DILocation(line: 84, column: 3, scope: !3722)
!3722 = !DILexicalBlockFile(scope: !3645, file: !656, discriminator: 1)
!3723 = !DILocation(line: 86, column: 3, scope: !3645)
!3724 = !DILocation(line: 86, column: 3, scope: !3722)
!3725 = !DILocation(line: 95, column: 3, scope: !3645)
!3726 = !DILocation(line: 99, column: 7, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3645, file: !656, line: 96, column: 5)
!3728 = !DILocation(line: 102, column: 7, scope: !3727)
!3729 = !DILocation(line: 102, column: 7, scope: !3730)
!3730 = !DILexicalBlockFile(scope: !3727, file: !656, discriminator: 1)
!3731 = !DILocation(line: 103, column: 7, scope: !3727)
!3732 = !DILocation(line: 106, column: 7, scope: !3727)
!3733 = !DILocation(line: 106, column: 7, scope: !3730)
!3734 = !DILocation(line: 107, column: 7, scope: !3727)
!3735 = !DILocation(line: 110, column: 7, scope: !3727)
!3736 = !DILocation(line: 110, column: 7, scope: !3730)
!3737 = !DILocation(line: 112, column: 7, scope: !3727)
!3738 = !DILocation(line: 117, column: 7, scope: !3727)
!3739 = !DILocation(line: 117, column: 7, scope: !3730)
!3740 = !DILocation(line: 119, column: 7, scope: !3727)
!3741 = !DILocation(line: 124, column: 7, scope: !3727)
!3742 = !DILocation(line: 124, column: 7, scope: !3730)
!3743 = !DILocation(line: 126, column: 7, scope: !3727)
!3744 = !DILocation(line: 131, column: 7, scope: !3727)
!3745 = !DILocation(line: 131, column: 7, scope: !3730)
!3746 = !DILocation(line: 134, column: 7, scope: !3727)
!3747 = !DILocation(line: 139, column: 7, scope: !3727)
!3748 = !DILocation(line: 139, column: 7, scope: !3730)
!3749 = !DILocation(line: 142, column: 7, scope: !3727)
!3750 = !DILocation(line: 147, column: 7, scope: !3727)
!3751 = !DILocation(line: 147, column: 7, scope: !3730)
!3752 = !DILocation(line: 151, column: 7, scope: !3727)
!3753 = !DILocation(line: 156, column: 7, scope: !3727)
!3754 = !DILocation(line: 156, column: 7, scope: !3730)
!3755 = !DILocation(line: 160, column: 7, scope: !3727)
!3756 = !DILocation(line: 167, column: 7, scope: !3727)
!3757 = !DILocation(line: 167, column: 7, scope: !3730)
!3758 = !DILocation(line: 171, column: 7, scope: !3727)
!3759 = !DILocation(line: 173, column: 1, scope: !3645)
!3760 = distinct !DISubprogram(name: "version_etc_ar", scope: !656, file: !656, line: 180, type: !3761, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{null, !3648, !75, !75, !75, !3701}
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3769}
!3764 = !DILocalVariable(name: "stream", arg: 1, scope: !3760, file: !656, line: 180, type: !3648)
!3765 = !DILocalVariable(name: "command_name", arg: 2, scope: !3760, file: !656, line: 181, type: !75)
!3766 = !DILocalVariable(name: "package", arg: 3, scope: !3760, file: !656, line: 181, type: !75)
!3767 = !DILocalVariable(name: "version", arg: 4, scope: !3760, file: !656, line: 182, type: !75)
!3768 = !DILocalVariable(name: "authors", arg: 5, scope: !3760, file: !656, line: 182, type: !3701)
!3769 = !DILocalVariable(name: "n_authors", scope: !3760, file: !656, line: 184, type: !56)
!3770 = !DILocation(line: 180, column: 23, scope: !3760)
!3771 = !DILocation(line: 181, column: 29, scope: !3760)
!3772 = !DILocation(line: 181, column: 55, scope: !3760)
!3773 = !DILocation(line: 182, column: 29, scope: !3760)
!3774 = !DILocation(line: 182, column: 59, scope: !3760)
!3775 = !DILocation(line: 184, column: 10, scope: !3760)
!3776 = !DILocation(line: 186, column: 8, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3760, file: !656, line: 186, column: 3)
!3778 = !DILocation(line: 186, column: 23, scope: !3779)
!3779 = !DILexicalBlockFile(scope: !3780, file: !656, discriminator: 1)
!3780 = distinct !DILexicalBlock(scope: !3777, file: !656, line: 186, column: 3)
!3781 = !DILocation(line: 186, column: 3, scope: !3782)
!3782 = !DILexicalBlockFile(scope: !3777, file: !656, discriminator: 1)
!3783 = !DILocation(line: 186, column: 52, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !3780, file: !656, discriminator: 3)
!3785 = distinct !{!3785, !3786, !3787}
!3786 = !DILocation(line: 186, column: 3, scope: !3777)
!3787 = !DILocation(line: 187, column: 5, scope: !3777)
!3788 = !DILocation(line: 188, column: 3, scope: !3760)
!3789 = !DILocation(line: 189, column: 1, scope: !3760)
!3790 = distinct !DISubprogram(name: "version_etc_va", scope: !656, file: !656, line: 196, type: !3791, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !3800)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !3648, !75, !75, !75, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !653, line: 189, size: 192, elements: !3795)
!3795 = !{!3796, !3797, !3798, !3799}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3794, file: !653, line: 189, baseType: !81, size: 32)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3794, file: !653, line: 189, baseType: !81, size: 32, offset: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3794, file: !653, line: 189, baseType: !54, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3794, file: !653, line: 189, baseType: !54, size: 64, offset: 128)
!3800 = !{!3801, !3802, !3803, !3804, !3805, !3806, !3807}
!3801 = !DILocalVariable(name: "stream", arg: 1, scope: !3790, file: !656, line: 196, type: !3648)
!3802 = !DILocalVariable(name: "command_name", arg: 2, scope: !3790, file: !656, line: 197, type: !75)
!3803 = !DILocalVariable(name: "package", arg: 3, scope: !3790, file: !656, line: 197, type: !75)
!3804 = !DILocalVariable(name: "version", arg: 4, scope: !3790, file: !656, line: 198, type: !75)
!3805 = !DILocalVariable(name: "authors", arg: 5, scope: !3790, file: !656, line: 198, type: !3793)
!3806 = !DILocalVariable(name: "n_authors", scope: !3790, file: !656, line: 200, type: !56)
!3807 = !DILocalVariable(name: "authtab", scope: !3790, file: !656, line: 201, type: !3808)
!3808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !186)
!3809 = !DILocation(line: 196, column: 23, scope: !3790)
!3810 = !DILocation(line: 197, column: 29, scope: !3790)
!3811 = !DILocation(line: 197, column: 55, scope: !3790)
!3812 = !DILocation(line: 198, column: 29, scope: !3790)
!3813 = !DILocation(line: 198, column: 46, scope: !3790)
!3814 = !DILocation(line: 201, column: 3, scope: !3790)
!3815 = !DILocation(line: 201, column: 15, scope: !3790)
!3816 = !DILocation(line: 200, column: 10, scope: !3790)
!3817 = !DILocation(line: 205, column: 35, scope: !3818)
!3818 = !DILexicalBlockFile(scope: !3819, file: !656, discriminator: 1)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !656, line: 203, column: 3)
!3820 = distinct !DILexicalBlock(scope: !3790, file: !656, line: 203, column: 3)
!3821 = !DILocation(line: 205, column: 35, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !3819, file: !656, discriminator: 2)
!3823 = !DILocation(line: 205, column: 35, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !3819, file: !656, discriminator: 3)
!3825 = !DILocation(line: 205, column: 35, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3819, file: !656, discriminator: 4)
!3827 = !DILocation(line: 205, column: 14, scope: !3826)
!3828 = !DILocation(line: 205, column: 33, scope: !3826)
!3829 = !DILocation(line: 205, column: 67, scope: !3826)
!3830 = !DILocation(line: 203, column: 3, scope: !3831)
!3831 = !DILexicalBlockFile(scope: !3820, file: !656, discriminator: 1)
!3832 = !DILocation(line: 208, column: 3, scope: !3790)
!3833 = !DILocation(line: 210, column: 1, scope: !3790)
!3834 = distinct !DISubprogram(name: "version_etc", scope: !656, file: !656, line: 227, type: !3835, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !3837)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{null, !3648, !75, !75, !75, null}
!3837 = !{!3838, !3839, !3840, !3841, !3842}
!3838 = !DILocalVariable(name: "stream", arg: 1, scope: !3834, file: !656, line: 227, type: !3648)
!3839 = !DILocalVariable(name: "command_name", arg: 2, scope: !3834, file: !656, line: 228, type: !75)
!3840 = !DILocalVariable(name: "package", arg: 3, scope: !3834, file: !656, line: 228, type: !75)
!3841 = !DILocalVariable(name: "version", arg: 4, scope: !3834, file: !656, line: 229, type: !75)
!3842 = !DILocalVariable(name: "authors", scope: !3834, file: !656, line: 231, type: !3843)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3650, line: 80, baseType: !3844)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3845, line: 50, baseType: !3846)
!3845 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !653, line: 231, baseType: !3847)
!3847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3794, size: 192, elements: !3684)
!3848 = !DILocation(line: 227, column: 20, scope: !3834)
!3849 = !DILocation(line: 228, column: 26, scope: !3834)
!3850 = !DILocation(line: 228, column: 52, scope: !3834)
!3851 = !DILocation(line: 229, column: 26, scope: !3834)
!3852 = !DILocation(line: 231, column: 3, scope: !3834)
!3853 = !DILocation(line: 231, column: 11, scope: !3834)
!3854 = !DILocation(line: 233, column: 3, scope: !3834)
!3855 = !DILocation(line: 234, column: 3, scope: !3834)
!3856 = !DILocation(line: 235, column: 3, scope: !3834)
!3857 = !DILocation(line: 236, column: 1, scope: !3834)
!3858 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !656, file: !656, line: 239, type: !1408, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !652, variables: !144)
!3859 = !DILocation(line: 245, column: 3, scope: !3858)
!3860 = !DILocation(line: 245, column: 3, scope: !3861)
!3861 = !DILexicalBlockFile(scope: !3858, file: !656, discriminator: 1)
!3862 = !DILocation(line: 251, column: 3, scope: !3858)
!3863 = !DILocation(line: 251, column: 3, scope: !3861)
!3864 = !DILocation(line: 256, column: 3, scope: !3858)
!3865 = !DILocation(line: 256, column: 3, scope: !3861)
!3866 = !DILocation(line: 258, column: 1, scope: !3858)
!3867 = distinct !DISubprogram(name: "xnmalloc", scope: !50, file: !50, line: 105, type: !3868, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!54, !56, !56}
!3870 = !{!3871, !3872}
!3871 = !DILocalVariable(name: "n", arg: 1, scope: !3867, file: !50, line: 105, type: !56)
!3872 = !DILocalVariable(name: "s", arg: 2, scope: !3867, file: !50, line: 105, type: !56)
!3873 = !DILocation(line: 105, column: 18, scope: !3867)
!3874 = !DILocation(line: 105, column: 28, scope: !3867)
!3875 = !DILocation(line: 107, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3867, file: !50, line: 107, column: 7)
!3877 = !DILocation(line: 107, column: 7, scope: !3867)
!3878 = !DILocation(line: 108, column: 5, scope: !3876)
!3879 = !DILocation(line: 109, column: 21, scope: !3867)
!3880 = !DILocalVariable(name: "n", arg: 1, scope: !3881, file: !3882, line: 39, type: !56)
!3881 = distinct !DISubprogram(name: "xmalloc", scope: !3882, file: !3882, line: 39, type: !3883, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !3885)
!3882 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!54, !56}
!3885 = !{!3880, !3886}
!3886 = !DILocalVariable(name: "p", scope: !3881, file: !3882, line: 41, type: !54)
!3887 = !DILocation(line: 39, column: 17, scope: !3881, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 109, column: 10, scope: !3867)
!3889 = !DILocation(line: 41, column: 13, scope: !3881, inlinedAt: !3888)
!3890 = !DILocation(line: 41, column: 9, scope: !3881, inlinedAt: !3888)
!3891 = !DILocation(line: 42, column: 8, scope: !3892, inlinedAt: !3888)
!3892 = distinct !DILexicalBlock(scope: !3881, file: !3882, line: 42, column: 7)
!3893 = !DILocation(line: 42, column: 15, scope: !3894, inlinedAt: !3888)
!3894 = !DILexicalBlockFile(scope: !3892, file: !3882, discriminator: 1)
!3895 = !DILocation(line: 42, column: 10, scope: !3892, inlinedAt: !3888)
!3896 = !DILocation(line: 43, column: 5, scope: !3892, inlinedAt: !3888)
!3897 = !DILocation(line: 109, column: 3, scope: !3867)
!3898 = !DILocation(line: 39, column: 17, scope: !3881)
!3899 = !DILocation(line: 41, column: 13, scope: !3881)
!3900 = !DILocation(line: 41, column: 9, scope: !3881)
!3901 = !DILocation(line: 42, column: 8, scope: !3892)
!3902 = !DILocation(line: 42, column: 15, scope: !3894)
!3903 = !DILocation(line: 42, column: 10, scope: !3892)
!3904 = !DILocation(line: 43, column: 5, scope: !3892)
!3905 = !DILocation(line: 44, column: 3, scope: !3881)
!3906 = distinct !DISubprogram(name: "xnrealloc", scope: !50, file: !50, line: 118, type: !3907, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!54, !54, !56, !56}
!3909 = !{!3910, !3911, !3912}
!3910 = !DILocalVariable(name: "p", arg: 1, scope: !3906, file: !50, line: 118, type: !54)
!3911 = !DILocalVariable(name: "n", arg: 2, scope: !3906, file: !50, line: 118, type: !56)
!3912 = !DILocalVariable(name: "s", arg: 3, scope: !3906, file: !50, line: 118, type: !56)
!3913 = !DILocation(line: 118, column: 18, scope: !3906)
!3914 = !DILocation(line: 118, column: 28, scope: !3906)
!3915 = !DILocation(line: 118, column: 38, scope: !3906)
!3916 = !DILocation(line: 120, column: 7, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3906, file: !50, line: 120, column: 7)
!3918 = !DILocation(line: 120, column: 7, scope: !3906)
!3919 = !DILocation(line: 121, column: 5, scope: !3917)
!3920 = !DILocation(line: 122, column: 25, scope: !3906)
!3921 = !DILocalVariable(name: "p", arg: 1, scope: !3922, file: !3882, line: 51, type: !54)
!3922 = distinct !DISubprogram(name: "xrealloc", scope: !3882, file: !3882, line: 51, type: !3923, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!54, !54, !56}
!3925 = !{!3921, !3926}
!3926 = !DILocalVariable(name: "n", arg: 2, scope: !3922, file: !3882, line: 51, type: !56)
!3927 = !DILocation(line: 51, column: 17, scope: !3922, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 122, column: 10, scope: !3906)
!3929 = !DILocation(line: 51, column: 27, scope: !3922, inlinedAt: !3928)
!3930 = !DILocation(line: 53, column: 8, scope: !3931, inlinedAt: !3928)
!3931 = distinct !DILexicalBlock(scope: !3922, file: !3882, line: 53, column: 7)
!3932 = !DILocation(line: 53, column: 13, scope: !3933, inlinedAt: !3928)
!3933 = !DILexicalBlockFile(scope: !3931, file: !3882, discriminator: 1)
!3934 = !DILocation(line: 53, column: 10, scope: !3931, inlinedAt: !3928)
!3935 = !DILocation(line: 57, column: 7, scope: !3936, inlinedAt: !3928)
!3936 = distinct !DILexicalBlock(scope: !3931, file: !3882, line: 54, column: 5)
!3937 = !DILocation(line: 58, column: 7, scope: !3936, inlinedAt: !3928)
!3938 = !DILocation(line: 61, column: 7, scope: !3922, inlinedAt: !3928)
!3939 = !DILocation(line: 62, column: 8, scope: !3940, inlinedAt: !3928)
!3940 = distinct !DILexicalBlock(scope: !3922, file: !3882, line: 62, column: 7)
!3941 = !DILocation(line: 62, column: 13, scope: !3942, inlinedAt: !3928)
!3942 = !DILexicalBlockFile(scope: !3940, file: !3882, discriminator: 1)
!3943 = !DILocation(line: 62, column: 10, scope: !3940, inlinedAt: !3928)
!3944 = !DILocation(line: 63, column: 5, scope: !3940, inlinedAt: !3928)
!3945 = !DILocation(line: 122, column: 3, scope: !3906)
!3946 = !DILocation(line: 51, column: 17, scope: !3922)
!3947 = !DILocation(line: 51, column: 27, scope: !3922)
!3948 = !DILocation(line: 53, column: 8, scope: !3931)
!3949 = !DILocation(line: 53, column: 13, scope: !3933)
!3950 = !DILocation(line: 53, column: 10, scope: !3931)
!3951 = !DILocation(line: 57, column: 7, scope: !3936)
!3952 = !DILocation(line: 58, column: 7, scope: !3936)
!3953 = !DILocation(line: 61, column: 7, scope: !3922)
!3954 = !DILocation(line: 62, column: 8, scope: !3940)
!3955 = !DILocation(line: 62, column: 13, scope: !3942)
!3956 = !DILocation(line: 62, column: 10, scope: !3940)
!3957 = !DILocation(line: 63, column: 5, scope: !3940)
!3958 = !DILocation(line: 65, column: 1, scope: !3922)
!3959 = !DILocation(line: 180, column: 19, scope: !664)
!3960 = !DILocation(line: 180, column: 30, scope: !664)
!3961 = !DILocation(line: 180, column: 41, scope: !664)
!3962 = !DILocation(line: 182, column: 14, scope: !664)
!3963 = !DILocation(line: 182, column: 10, scope: !664)
!3964 = !DILocation(line: 184, column: 9, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !664, file: !50, line: 184, column: 7)
!3966 = !DILocation(line: 184, column: 7, scope: !664)
!3967 = !DILocation(line: 186, column: 13, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !50, line: 186, column: 11)
!3969 = distinct !DILexicalBlock(scope: !3965, file: !50, line: 185, column: 5)
!3970 = !DILocation(line: 186, column: 11, scope: !3969)
!3971 = !DILocation(line: 194, column: 30, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3968, file: !50, line: 187, column: 9)
!3973 = !DILocation(line: 195, column: 16, scope: !3972)
!3974 = !DILocation(line: 195, column: 13, scope: !3972)
!3975 = !DILocation(line: 196, column: 9, scope: !3972)
!3976 = !DILocation(line: 204, column: 69, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !50, line: 204, column: 11)
!3978 = distinct !DILexicalBlock(scope: !3965, file: !50, line: 199, column: 5)
!3979 = !DILocation(line: 205, column: 11, scope: !3977)
!3980 = !DILocation(line: 204, column: 11, scope: !3978)
!3981 = !DILocation(line: 206, column: 9, scope: !3977)
!3982 = !DILocation(line: 210, column: 7, scope: !664)
!3983 = !DILocation(line: 211, column: 25, scope: !664)
!3984 = !DILocation(line: 51, column: 17, scope: !3922, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 211, column: 10, scope: !664)
!3986 = !DILocation(line: 51, column: 27, scope: !3922, inlinedAt: !3985)
!3987 = !DILocation(line: 53, column: 10, scope: !3931, inlinedAt: !3985)
!3988 = !DILocation(line: 207, column: 14, scope: !3978)
!3989 = !DILocation(line: 207, column: 18, scope: !3978)
!3990 = !DILocation(line: 207, column: 9, scope: !3978)
!3991 = !DILocation(line: 53, column: 8, scope: !3931, inlinedAt: !3985)
!3992 = !DILocation(line: 57, column: 7, scope: !3936, inlinedAt: !3985)
!3993 = !DILocation(line: 58, column: 7, scope: !3936, inlinedAt: !3985)
!3994 = !DILocation(line: 61, column: 7, scope: !3922, inlinedAt: !3985)
!3995 = !DILocation(line: 62, column: 8, scope: !3940, inlinedAt: !3985)
!3996 = !DILocation(line: 62, column: 13, scope: !3942, inlinedAt: !3985)
!3997 = !DILocation(line: 62, column: 10, scope: !3940, inlinedAt: !3985)
!3998 = !DILocation(line: 63, column: 5, scope: !3940, inlinedAt: !3985)
!3999 = !DILocation(line: 211, column: 3, scope: !664)
!4000 = distinct !DISubprogram(name: "xcharalloc", scope: !50, file: !50, line: 220, type: !2711, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4001)
!4001 = !{!4002}
!4002 = !DILocalVariable(name: "n", arg: 1, scope: !4000, file: !50, line: 220, type: !56)
!4003 = !DILocation(line: 220, column: 20, scope: !4000)
!4004 = !DILocation(line: 39, column: 17, scope: !3881, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 222, column: 10, scope: !4000)
!4006 = !DILocation(line: 41, column: 13, scope: !3881, inlinedAt: !4005)
!4007 = !DILocation(line: 41, column: 9, scope: !3881, inlinedAt: !4005)
!4008 = !DILocation(line: 42, column: 8, scope: !3892, inlinedAt: !4005)
!4009 = !DILocation(line: 42, column: 15, scope: !3894, inlinedAt: !4005)
!4010 = !DILocation(line: 42, column: 10, scope: !3892, inlinedAt: !4005)
!4011 = !DILocation(line: 43, column: 5, scope: !3892, inlinedAt: !4005)
!4012 = !DILocation(line: 222, column: 3, scope: !4000)
!4013 = distinct !DISubprogram(name: "x2realloc", scope: !3882, file: !3882, line: 74, type: !4014, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!54, !54, !55}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "p", arg: 1, scope: !4013, file: !3882, line: 74, type: !54)
!4018 = !DILocalVariable(name: "pn", arg: 2, scope: !4013, file: !3882, line: 74, type: !55)
!4019 = !DILocation(line: 74, column: 18, scope: !4013)
!4020 = !DILocation(line: 74, column: 29, scope: !4013)
!4021 = !DILocation(line: 180, column: 19, scope: !664, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 76, column: 10, scope: !4013)
!4023 = !DILocation(line: 180, column: 30, scope: !664, inlinedAt: !4022)
!4024 = !DILocation(line: 180, column: 41, scope: !664, inlinedAt: !4022)
!4025 = !DILocation(line: 182, column: 14, scope: !664, inlinedAt: !4022)
!4026 = !DILocation(line: 182, column: 10, scope: !664, inlinedAt: !4022)
!4027 = !DILocation(line: 184, column: 9, scope: !3965, inlinedAt: !4022)
!4028 = !DILocation(line: 184, column: 7, scope: !664, inlinedAt: !4022)
!4029 = !DILocation(line: 186, column: 13, scope: !3968, inlinedAt: !4022)
!4030 = !DILocation(line: 186, column: 11, scope: !3969, inlinedAt: !4022)
!4031 = !DILocation(line: 210, column: 7, scope: !664, inlinedAt: !4022)
!4032 = !DILocation(line: 51, column: 17, scope: !3922, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 211, column: 10, scope: !664, inlinedAt: !4022)
!4034 = !DILocation(line: 51, column: 27, scope: !3922, inlinedAt: !4033)
!4035 = !DILocation(line: 53, column: 10, scope: !3931, inlinedAt: !4033)
!4036 = !DILocation(line: 205, column: 11, scope: !3977, inlinedAt: !4022)
!4037 = !DILocation(line: 204, column: 11, scope: !3978, inlinedAt: !4022)
!4038 = !DILocation(line: 206, column: 9, scope: !3977, inlinedAt: !4022)
!4039 = !DILocation(line: 207, column: 14, scope: !3978, inlinedAt: !4022)
!4040 = !DILocation(line: 207, column: 18, scope: !3978, inlinedAt: !4022)
!4041 = !DILocation(line: 207, column: 9, scope: !3978, inlinedAt: !4022)
!4042 = !DILocation(line: 53, column: 8, scope: !3931, inlinedAt: !4033)
!4043 = !DILocation(line: 57, column: 7, scope: !3936, inlinedAt: !4033)
!4044 = !DILocation(line: 58, column: 7, scope: !3936, inlinedAt: !4033)
!4045 = !DILocation(line: 61, column: 7, scope: !3922, inlinedAt: !4033)
!4046 = !DILocation(line: 62, column: 8, scope: !3940, inlinedAt: !4033)
!4047 = !DILocation(line: 62, column: 13, scope: !3942, inlinedAt: !4033)
!4048 = !DILocation(line: 62, column: 10, scope: !3940, inlinedAt: !4033)
!4049 = !DILocation(line: 63, column: 5, scope: !3940, inlinedAt: !4033)
!4050 = !DILocation(line: 76, column: 3, scope: !4013)
!4051 = distinct !DISubprogram(name: "xzalloc", scope: !3882, file: !3882, line: 84, type: !3883, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4052)
!4052 = !{!4053}
!4053 = !DILocalVariable(name: "s", arg: 1, scope: !4051, file: !3882, line: 84, type: !56)
!4054 = !DILocation(line: 84, column: 17, scope: !4051)
!4055 = !DILocation(line: 39, column: 17, scope: !3881, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 86, column: 18, scope: !4051)
!4057 = !DILocation(line: 41, column: 13, scope: !3881, inlinedAt: !4056)
!4058 = !DILocation(line: 41, column: 9, scope: !3881, inlinedAt: !4056)
!4059 = !DILocation(line: 42, column: 8, scope: !3892, inlinedAt: !4056)
!4060 = !DILocation(line: 42, column: 15, scope: !3894, inlinedAt: !4056)
!4061 = !DILocation(line: 42, column: 10, scope: !3892, inlinedAt: !4056)
!4062 = !DILocation(line: 43, column: 5, scope: !3892, inlinedAt: !4056)
!4063 = !DILocation(line: 86, column: 10, scope: !4051)
!4064 = !DILocation(line: 86, column: 3, scope: !4051)
!4065 = distinct !DISubprogram(name: "xcalloc", scope: !3882, file: !3882, line: 93, type: !3868, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4066)
!4066 = !{!4067, !4068, !4069}
!4067 = !DILocalVariable(name: "n", arg: 1, scope: !4065, file: !3882, line: 93, type: !56)
!4068 = !DILocalVariable(name: "s", arg: 2, scope: !4065, file: !3882, line: 93, type: !56)
!4069 = !DILocalVariable(name: "p", scope: !4065, file: !3882, line: 95, type: !54)
!4070 = !DILocation(line: 93, column: 17, scope: !4065)
!4071 = !DILocation(line: 93, column: 27, scope: !4065)
!4072 = !DILocation(line: 100, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4065, file: !3882, line: 100, column: 7)
!4074 = !DILocation(line: 101, column: 7, scope: !4073)
!4075 = !DILocation(line: 101, column: 18, scope: !4076)
!4076 = !DILexicalBlockFile(scope: !4073, file: !3882, discriminator: 1)
!4077 = !DILocation(line: 95, column: 9, scope: !4065)
!4078 = !DILocation(line: 101, column: 16, scope: !4076)
!4079 = !DILocation(line: 100, column: 7, scope: !4080)
!4080 = !DILexicalBlockFile(scope: !4065, file: !3882, discriminator: 1)
!4081 = !DILocation(line: 102, column: 5, scope: !4073)
!4082 = !DILocation(line: 103, column: 3, scope: !4065)
!4083 = distinct !DISubprogram(name: "xmemdup", scope: !3882, file: !3882, line: 111, type: !4084, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!54, !70, !56}
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "p", arg: 1, scope: !4083, file: !3882, line: 111, type: !70)
!4088 = !DILocalVariable(name: "s", arg: 2, scope: !4083, file: !3882, line: 111, type: !56)
!4089 = !DILocation(line: 111, column: 22, scope: !4083)
!4090 = !DILocation(line: 111, column: 32, scope: !4083)
!4091 = !DILocation(line: 39, column: 17, scope: !3881, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 113, column: 18, scope: !4083)
!4093 = !DILocation(line: 41, column: 13, scope: !3881, inlinedAt: !4092)
!4094 = !DILocation(line: 41, column: 9, scope: !3881, inlinedAt: !4092)
!4095 = !DILocation(line: 42, column: 8, scope: !3892, inlinedAt: !4092)
!4096 = !DILocation(line: 42, column: 15, scope: !3894, inlinedAt: !4092)
!4097 = !DILocation(line: 42, column: 10, scope: !3892, inlinedAt: !4092)
!4098 = !DILocation(line: 43, column: 5, scope: !3892, inlinedAt: !4092)
!4099 = !DILocation(line: 113, column: 10, scope: !4083)
!4100 = !DILocation(line: 113, column: 3, scope: !4083)
!4101 = distinct !DISubprogram(name: "xstrdup", scope: !3882, file: !3882, line: 119, type: !2916, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !4102)
!4102 = !{!4103}
!4103 = !DILocalVariable(name: "string", arg: 1, scope: !4101, file: !3882, line: 119, type: !75)
!4104 = !DILocation(line: 119, column: 22, scope: !4101)
!4105 = !DILocation(line: 121, column: 27, scope: !4101)
!4106 = !DILocation(line: 121, column: 43, scope: !4101)
!4107 = !DILocation(line: 111, column: 22, scope: !4083, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 121, column: 10, scope: !4109)
!4109 = !DILexicalBlockFile(scope: !4101, file: !3882, discriminator: 1)
!4110 = !DILocation(line: 111, column: 32, scope: !4083, inlinedAt: !4108)
!4111 = !DILocation(line: 39, column: 17, scope: !3881, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 113, column: 18, scope: !4083, inlinedAt: !4108)
!4113 = !DILocation(line: 41, column: 13, scope: !3881, inlinedAt: !4112)
!4114 = !DILocation(line: 41, column: 9, scope: !3881, inlinedAt: !4112)
!4115 = !DILocation(line: 42, column: 8, scope: !3892, inlinedAt: !4112)
!4116 = !DILocation(line: 42, column: 15, scope: !3894, inlinedAt: !4112)
!4117 = !DILocation(line: 42, column: 10, scope: !3892, inlinedAt: !4112)
!4118 = !DILocation(line: 43, column: 5, scope: !3892, inlinedAt: !4112)
!4119 = !DILocation(line: 113, column: 10, scope: !4083, inlinedAt: !4108)
!4120 = !DILocation(line: 121, column: 3, scope: !4101)
!4121 = distinct !DISubprogram(name: "xalloc_die", scope: !4122, file: !4122, line: 32, type: !1408, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !671, variables: !144)
!4122 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4123 = !DILocation(line: 34, column: 10, scope: !4121)
!4124 = !DILocation(line: 34, column: 33, scope: !4121)
!4125 = !DILocation(line: 34, column: 3, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !4121, file: !4122, discriminator: 1)
!4127 = !DILocation(line: 40, column: 3, scope: !4121)
!4128 = distinct !DISubprogram(name: "xgetgroups", scope: !4129, file: !4129, line: 31, type: !701, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !4130)
!4129 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4130 = !{!4131, !4132, !4133, !4134}
!4131 = !DILocalVariable(name: "username", arg: 1, scope: !4128, file: !4129, line: 31, type: !75)
!4132 = !DILocalVariable(name: "gid", arg: 2, scope: !4128, file: !4129, line: 31, type: !82)
!4133 = !DILocalVariable(name: "groups", arg: 3, scope: !4128, file: !4129, line: 31, type: !703)
!4134 = !DILocalVariable(name: "result", scope: !4128, file: !4129, line: 33, type: !69)
!4135 = !DILocation(line: 31, column: 25, scope: !4128)
!4136 = !DILocation(line: 31, column: 41, scope: !4128)
!4137 = !DILocation(line: 31, column: 54, scope: !4128)
!4138 = !DILocation(line: 33, column: 16, scope: !4128)
!4139 = !DILocation(line: 33, column: 7, scope: !4128)
!4140 = !DILocation(line: 34, column: 14, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4128, file: !4129, line: 34, column: 7)
!4142 = !DILocation(line: 34, column: 20, scope: !4141)
!4143 = !DILocation(line: 34, column: 23, scope: !4144)
!4144 = !DILexicalBlockFile(scope: !4141, file: !4129, discriminator: 1)
!4145 = !DILocation(line: 34, column: 29, scope: !4144)
!4146 = !DILocation(line: 34, column: 7, scope: !4147)
!4147 = !DILexicalBlockFile(scope: !4128, file: !4129, discriminator: 1)
!4148 = !DILocation(line: 35, column: 5, scope: !4141)
!4149 = !DILocation(line: 36, column: 3, scope: !4128)
!4150 = distinct !DISubprogram(name: "xstrtoul", scope: !4151, file: !4151, line: 88, type: !4152, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !4156)
!4151 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!4154, !75, !93, !69, !4155, !75}
!4154 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !27, line: 39, baseType: !26)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!4156 = !{!4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4169, !4170, !4173, !4174}
!4157 = !DILocalVariable(name: "s", arg: 1, scope: !4150, file: !4151, line: 88, type: !75)
!4158 = !DILocalVariable(name: "ptr", arg: 2, scope: !4150, file: !4151, line: 88, type: !93)
!4159 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4150, file: !4151, line: 88, type: !69)
!4160 = !DILocalVariable(name: "val", arg: 4, scope: !4150, file: !4151, line: 89, type: !4155)
!4161 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4150, file: !4151, line: 89, type: !75)
!4162 = !DILocalVariable(name: "t_ptr", scope: !4150, file: !4151, line: 91, type: !67)
!4163 = !DILocalVariable(name: "p", scope: !4150, file: !4151, line: 92, type: !93)
!4164 = !DILocalVariable(name: "tmp", scope: !4150, file: !4151, line: 93, type: !58)
!4165 = !DILocalVariable(name: "err", scope: !4150, file: !4151, line: 94, type: !4154)
!4166 = !DILocalVariable(name: "q", scope: !4167, file: !4151, line: 104, type: !75)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !4151, line: 103, column: 5)
!4168 = distinct !DILexicalBlock(scope: !4150, file: !4151, line: 102, column: 7)
!4169 = !DILocalVariable(name: "ch", scope: !4167, file: !4151, line: 105, type: !74)
!4170 = !DILocalVariable(name: "base", scope: !4171, file: !4151, line: 141, type: !69)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !4151, line: 140, column: 5)
!4172 = distinct !DILexicalBlock(scope: !4150, file: !4151, line: 139, column: 7)
!4173 = !DILocalVariable(name: "suffixes", scope: !4171, file: !4151, line: 142, type: !69)
!4174 = !DILocalVariable(name: "overflow", scope: !4171, file: !4151, line: 143, type: !4154)
!4175 = !DILocation(line: 88, column: 24, scope: !4150)
!4176 = !DILocation(line: 88, column: 34, scope: !4150)
!4177 = !DILocation(line: 88, column: 43, scope: !4150)
!4178 = !DILocation(line: 89, column: 24, scope: !4150)
!4179 = !DILocation(line: 89, column: 41, scope: !4150)
!4180 = !DILocation(line: 91, column: 3, scope: !4150)
!4181 = !DILocation(line: 94, column: 16, scope: !4150)
!4182 = !DILocation(line: 96, column: 3, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !4151, line: 96, column: 3)
!4184 = distinct !DILexicalBlock(scope: !4150, file: !4151, line: 96, column: 3)
!4185 = !DILocation(line: 96, column: 3, scope: !4186)
!4186 = !DILexicalBlockFile(scope: !4183, file: !4151, discriminator: 3)
!4187 = !DILocation(line: 98, column: 8, scope: !4150)
!4188 = !DILocation(line: 92, column: 10, scope: !4150)
!4189 = !DILocation(line: 100, column: 3, scope: !4150)
!4190 = !DILocation(line: 100, column: 9, scope: !4150)
!4191 = !DILocation(line: 104, column: 19, scope: !4167)
!4192 = !DILocation(line: 106, column: 14, scope: !4193)
!4193 = !DILexicalBlockFile(scope: !4167, file: !4151, discriminator: 1)
!4194 = !DILocation(line: 106, column: 7, scope: !4167)
!4195 = !DILocation(line: 105, column: 21, scope: !4167)
!4196 = !DILocation(line: 106, column: 7, scope: !4193)
!4197 = !DILocation(line: 107, column: 15, scope: !4167)
!4198 = distinct !{!4198, !4194, !4199}
!4199 = !DILocation(line: 107, column: 17, scope: !4167)
!4200 = !DILocation(line: 109, column: 9, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4167, file: !4151, line: 108, column: 11)
!4202 = !DILocation(line: 112, column: 9, scope: !4150)
!4203 = !DILocation(line: 93, column: 14, scope: !4150)
!4204 = !DILocation(line: 114, column: 7, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4150, file: !4151, line: 114, column: 7)
!4206 = !DILocation(line: 114, column: 10, scope: !4205)
!4207 = !DILocation(line: 114, column: 7, scope: !4150)
!4208 = !DILocation(line: 118, column: 11, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !4151, line: 118, column: 11)
!4210 = distinct !DILexicalBlock(scope: !4205, file: !4151, line: 115, column: 5)
!4211 = !DILocation(line: 118, column: 26, scope: !4209)
!4212 = !DILocation(line: 118, column: 29, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4209, file: !4151, discriminator: 1)
!4214 = !DILocation(line: 118, column: 33, scope: !4213)
!4215 = !DILocation(line: 118, column: 36, scope: !4216)
!4216 = !DILexicalBlockFile(scope: !4209, file: !4151, discriminator: 5)
!4217 = !DILocation(line: 118, column: 11, scope: !4218)
!4218 = !DILexicalBlockFile(scope: !4210, file: !4151, discriminator: 5)
!4219 = !DILocation(line: 123, column: 12, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4205, file: !4151, line: 123, column: 12)
!4221 = !DILocation(line: 123, column: 12, scope: !4205)
!4222 = !DILocation(line: 128, column: 5, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4220, file: !4151, line: 124, column: 5)
!4224 = !DILocation(line: 133, column: 8, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4150, file: !4151, line: 133, column: 7)
!4226 = !DILocation(line: 133, column: 7, scope: !4150)
!4227 = !DILocation(line: 135, column: 12, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4225, file: !4151, line: 134, column: 5)
!4229 = !DILocation(line: 136, column: 7, scope: !4228)
!4230 = !DILocation(line: 139, column: 7, scope: !4172)
!4231 = !DILocation(line: 139, column: 11, scope: !4172)
!4232 = !DILocation(line: 139, column: 7, scope: !4150)
!4233 = !DILocation(line: 141, column: 11, scope: !4171)
!4234 = !DILocation(line: 142, column: 11, scope: !4171)
!4235 = !DILocation(line: 145, column: 12, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !4237, file: !4151, discriminator: 3)
!4237 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 145, column: 11)
!4238 = !DILocation(line: 145, column: 11, scope: !4239)
!4239 = !DILexicalBlockFile(scope: !4171, file: !4151, discriminator: 3)
!4240 = !DILocation(line: 147, column: 16, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4237, file: !4151, line: 146, column: 9)
!4242 = !DILocation(line: 148, column: 22, scope: !4241)
!4243 = !DILocation(line: 148, column: 11, scope: !4241)
!4244 = !DILocation(line: 151, column: 7, scope: !4171)
!4245 = !DILocation(line: 163, column: 15, scope: !4246)
!4246 = !DILexicalBlockFile(scope: !4247, file: !4151, discriminator: 2)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !4151, line: 163, column: 15)
!4248 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 152, column: 9)
!4249 = !DILocation(line: 163, column: 15, scope: !4250)
!4250 = !DILexicalBlockFile(scope: !4248, file: !4151, discriminator: 2)
!4251 = !DILocation(line: 164, column: 21, scope: !4247)
!4252 = !DILocation(line: 164, column: 13, scope: !4247)
!4253 = !DILocation(line: 167, column: 21, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !4151, line: 167, column: 21)
!4255 = distinct !DILexicalBlock(scope: !4247, file: !4151, line: 165, column: 15)
!4256 = !DILocation(line: 167, column: 29, scope: !4254)
!4257 = !DILocation(line: 167, column: 21, scope: !4255)
!4258 = !DILocation(line: 175, column: 17, scope: !4255)
!4259 = !DILocation(line: 179, column: 7, scope: !4171)
!4260 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4261, file: !4151, line: 60, type: !69)
!4261 = distinct !DISubprogram(name: "bkm_scale", scope: !4151, file: !4151, line: 60, type: !4262, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !4264)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!4154, !4155, !69}
!4264 = !{!4265, !4260}
!4265 = !DILocalVariable(name: "x", arg: 1, scope: !4261, file: !4151, line: 60, type: !4155)
!4266 = !DILocation(line: 60, column: 31, scope: !4261, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 182, column: 22, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 180, column: 9)
!4269 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4267)
!4270 = distinct !DILexicalBlock(scope: !4261, file: !4151, line: 67, column: 7)
!4271 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4267)
!4272 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4267)
!4273 = !DILocation(line: 143, column: 20, scope: !4171)
!4274 = !DILocation(line: 183, column: 11, scope: !4268)
!4275 = !DILocation(line: 60, column: 31, scope: !4261, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 189, column: 22, scope: !4268)
!4277 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4276)
!4278 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4276)
!4279 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4276)
!4280 = !DILocation(line: 190, column: 11, scope: !4268)
!4281 = !DILocalVariable(name: "power", arg: 3, scope: !4282, file: !4151, line: 77, type: !69)
!4282 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4151, file: !4151, line: 77, type: !4283, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!4154, !4155, !69, !69}
!4285 = !{!4286, !4287, !4281, !4288}
!4286 = !DILocalVariable(name: "x", arg: 1, scope: !4282, file: !4151, line: 77, type: !4155)
!4287 = !DILocalVariable(name: "base", arg: 2, scope: !4282, file: !4151, line: 77, type: !69)
!4288 = !DILocalVariable(name: "err", scope: !4282, file: !4151, line: 79, type: !4154)
!4289 = !DILocation(line: 77, column: 50, scope: !4282, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 197, column: 22, scope: !4268)
!4291 = !DILocation(line: 79, column: 16, scope: !4282, inlinedAt: !4290)
!4292 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 81, column: 12, scope: !4282, inlinedAt: !4290)
!4294 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4293)
!4295 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4293)
!4296 = !DILocation(line: 81, column: 9, scope: !4282, inlinedAt: !4290)
!4297 = !DILocation(line: 77, column: 50, scope: !4282, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 202, column: 22, scope: !4268)
!4299 = !DILocation(line: 79, column: 16, scope: !4282, inlinedAt: !4298)
!4300 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 81, column: 12, scope: !4282, inlinedAt: !4298)
!4302 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4301)
!4303 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4301)
!4304 = !DILocation(line: 81, column: 9, scope: !4282, inlinedAt: !4298)
!4305 = !DILocation(line: 77, column: 50, scope: !4282, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 207, column: 22, scope: !4268)
!4307 = !DILocation(line: 79, column: 16, scope: !4282, inlinedAt: !4306)
!4308 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 81, column: 12, scope: !4282, inlinedAt: !4306)
!4310 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4309)
!4311 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4309)
!4312 = !DILocation(line: 77, column: 50, scope: !4282, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 212, column: 22, scope: !4268)
!4314 = !DILocation(line: 79, column: 16, scope: !4282, inlinedAt: !4313)
!4315 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 81, column: 12, scope: !4282, inlinedAt: !4313)
!4317 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4316)
!4318 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4316)
!4319 = !DILocation(line: 81, column: 9, scope: !4282, inlinedAt: !4313)
!4320 = !DILocation(line: 77, column: 50, scope: !4282, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 216, column: 22, scope: !4268)
!4322 = !DILocation(line: 79, column: 16, scope: !4282, inlinedAt: !4321)
!4323 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 81, column: 12, scope: !4282, inlinedAt: !4321)
!4325 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4324)
!4326 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4324)
!4327 = !DILocation(line: 81, column: 9, scope: !4282, inlinedAt: !4321)
!4328 = !DILocation(line: 77, column: 50, scope: !4282, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 221, column: 22, scope: !4268)
!4330 = !DILocation(line: 79, column: 16, scope: !4282, inlinedAt: !4329)
!4331 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 81, column: 12, scope: !4282, inlinedAt: !4329)
!4333 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4332)
!4334 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4332)
!4335 = !DILocation(line: 81, column: 9, scope: !4282, inlinedAt: !4329)
!4336 = !DILocation(line: 60, column: 31, scope: !4261, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 225, column: 22, scope: !4268)
!4338 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4337)
!4339 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4337)
!4340 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4337)
!4341 = !DILocation(line: 226, column: 11, scope: !4268)
!4342 = !DILocation(line: 77, column: 50, scope: !4282, inlinedAt: !4343)
!4343 = distinct !DILocation(line: 229, column: 22, scope: !4268)
!4344 = !DILocation(line: 79, column: 16, scope: !4282, inlinedAt: !4343)
!4345 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 81, column: 12, scope: !4282, inlinedAt: !4343)
!4347 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4346)
!4348 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4346)
!4349 = !DILocation(line: 81, column: 9, scope: !4282, inlinedAt: !4343)
!4350 = !DILocation(line: 77, column: 50, scope: !4282, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 233, column: 22, scope: !4268)
!4352 = !DILocation(line: 79, column: 16, scope: !4282, inlinedAt: !4351)
!4353 = !DILocation(line: 67, column: 39, scope: !4270, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 81, column: 12, scope: !4282, inlinedAt: !4351)
!4355 = !DILocation(line: 72, column: 6, scope: !4261, inlinedAt: !4354)
!4356 = !DILocation(line: 67, column: 7, scope: !4261, inlinedAt: !4354)
!4357 = !DILocation(line: 81, column: 9, scope: !4282, inlinedAt: !4351)
!4358 = !DILocation(line: 237, column: 16, scope: !4268)
!4359 = !DILocation(line: 238, column: 22, scope: !4268)
!4360 = !DILocation(line: 238, column: 11, scope: !4268)
!4361 = !DILocation(line: 241, column: 11, scope: !4171)
!4362 = !DILocation(line: 242, column: 10, scope: !4171)
!4363 = !DILocation(line: 243, column: 11, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4171, file: !4151, line: 243, column: 11)
!4365 = !DILocation(line: 244, column: 13, scope: !4364)
!4366 = !DILocation(line: 243, column: 11, scope: !4171)
!4367 = !DILocation(line: 247, column: 8, scope: !4150)
!4368 = !DILocation(line: 248, column: 3, scope: !4150)
!4369 = !DILocation(line: 249, column: 1, scope: !4150)
!4370 = distinct !DISubprogram(name: "rpl_calloc", scope: !4371, file: !4371, line: 42, type: !3868, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !679, variables: !4372)
!4371 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4372 = !{!4373, !4374, !4375, !4376}
!4373 = !DILocalVariable(name: "n", arg: 1, scope: !4370, file: !4371, line: 42, type: !56)
!4374 = !DILocalVariable(name: "s", arg: 2, scope: !4370, file: !4371, line: 42, type: !56)
!4375 = !DILocalVariable(name: "result", scope: !4370, file: !4371, line: 44, type: !54)
!4376 = !DILocalVariable(name: "bytes", scope: !4377, file: !4371, line: 56, type: !56)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !4371, line: 53, column: 5)
!4378 = distinct !DILexicalBlock(scope: !4370, file: !4371, line: 47, column: 7)
!4379 = !DILocation(line: 42, column: 20, scope: !4370)
!4380 = !DILocation(line: 42, column: 30, scope: !4370)
!4381 = !DILocation(line: 47, column: 9, scope: !4378)
!4382 = !DILocation(line: 47, column: 19, scope: !4383)
!4383 = !DILexicalBlockFile(scope: !4378, file: !4371, discriminator: 1)
!4384 = !DILocation(line: 47, column: 14, scope: !4378)
!4385 = !DILocation(line: 56, column: 24, scope: !4377)
!4386 = !DILocation(line: 56, column: 14, scope: !4377)
!4387 = !DILocation(line: 57, column: 17, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4377, file: !4371, line: 57, column: 11)
!4389 = !DILocation(line: 57, column: 21, scope: !4388)
!4390 = !DILocation(line: 57, column: 11, scope: !4377)
!4391 = !DILocation(line: 59, column: 11, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4388, file: !4371, line: 58, column: 9)
!4393 = !DILocation(line: 59, column: 17, scope: !4392)
!4394 = !DILocation(line: 65, column: 12, scope: !4370)
!4395 = !DILocation(line: 44, column: 9, scope: !4370)
!4396 = !DILocation(line: 72, column: 3, scope: !4370)
!4397 = !DILocation(line: 73, column: 1, scope: !4370)
!4398 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4399, file: !4399, line: 334, type: !4400, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !4414)
!4399 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!56, !4402, !75, !56, !4403}
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1684, line: 107, baseType: !4405)
!4405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1684, line: 95, baseType: !4406)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1684, line: 83, size: 64, elements: !4407)
!4407 = !{!4408, !4409}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4406, file: !1684, line: 85, baseType: !69, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4406, file: !1684, line: 94, baseType: !4410, size: 32, offset: 32)
!4410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4406, file: !1684, line: 86, size: 32, elements: !4411)
!4411 = !{!4412, !4413}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4410, file: !1684, line: 89, baseType: !81, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4410, file: !1684, line: 93, baseType: !1694, size: 32)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420, !4421}
!4415 = !DILocalVariable(name: "pwc", arg: 1, scope: !4398, file: !4399, line: 334, type: !4402)
!4416 = !DILocalVariable(name: "s", arg: 2, scope: !4398, file: !4399, line: 334, type: !75)
!4417 = !DILocalVariable(name: "n", arg: 3, scope: !4398, file: !4399, line: 334, type: !56)
!4418 = !DILocalVariable(name: "ps", arg: 4, scope: !4398, file: !4399, line: 334, type: !4403)
!4419 = !DILocalVariable(name: "ret", scope: !4398, file: !4399, line: 336, type: !56)
!4420 = !DILocalVariable(name: "wc", scope: !4398, file: !4399, line: 337, type: !1699)
!4421 = !DILocalVariable(name: "uc", scope: !4422, file: !4399, line: 398, type: !74)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !4399, line: 397, column: 5)
!4423 = distinct !DILexicalBlock(scope: !4398, file: !4399, line: 396, column: 7)
!4424 = !DILocation(line: 334, column: 23, scope: !4398)
!4425 = !DILocation(line: 334, column: 40, scope: !4398)
!4426 = !DILocation(line: 334, column: 50, scope: !4398)
!4427 = !DILocation(line: 334, column: 64, scope: !4398)
!4428 = !DILocation(line: 337, column: 3, scope: !4398)
!4429 = !DILocation(line: 353, column: 9, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4398, file: !4399, line: 353, column: 7)
!4431 = !DILocation(line: 353, column: 7, scope: !4398)
!4432 = !DILocation(line: 388, column: 9, scope: !4398)
!4433 = !DILocation(line: 336, column: 10, scope: !4398)
!4434 = !DILocation(line: 396, column: 19, scope: !4423)
!4435 = !DILocation(line: 396, column: 31, scope: !4436)
!4436 = !DILexicalBlockFile(scope: !4423, file: !4399, discriminator: 1)
!4437 = !DILocation(line: 396, column: 26, scope: !4423)
!4438 = !DILocation(line: 396, column: 41, scope: !4439)
!4439 = !DILexicalBlockFile(scope: !4423, file: !4399, discriminator: 2)
!4440 = !DILocation(line: 396, column: 7, scope: !4441)
!4441 = !DILexicalBlockFile(scope: !4398, file: !4399, discriminator: 2)
!4442 = !DILocation(line: 398, column: 26, scope: !4422)
!4443 = !DILocation(line: 398, column: 21, scope: !4422)
!4444 = !DILocation(line: 399, column: 14, scope: !4422)
!4445 = !DILocation(line: 399, column: 12, scope: !4422)
!4446 = !DILocation(line: 405, column: 1, scope: !4398)
!4447 = distinct !DISubprogram(name: "close_stream", scope: !4448, file: !4448, line: 56, type: !4449, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !684, variables: !4491)
!4448 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!69, !4451}
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3650, line: 49, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3652, line: 241, size: 1728, elements: !4454)
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4453, file: !3652, line: 242, baseType: !69, size: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4453, file: !3652, line: 247, baseType: !67, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4453, file: !3652, line: 248, baseType: !67, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4453, file: !3652, line: 249, baseType: !67, size: 64, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4453, file: !3652, line: 250, baseType: !67, size: 64, offset: 256)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4453, file: !3652, line: 251, baseType: !67, size: 64, offset: 320)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4453, file: !3652, line: 252, baseType: !67, size: 64, offset: 384)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4453, file: !3652, line: 253, baseType: !67, size: 64, offset: 448)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4453, file: !3652, line: 254, baseType: !67, size: 64, offset: 512)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4453, file: !3652, line: 256, baseType: !67, size: 64, offset: 576)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4453, file: !3652, line: 257, baseType: !67, size: 64, offset: 640)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4453, file: !3652, line: 258, baseType: !67, size: 64, offset: 704)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4453, file: !3652, line: 260, baseType: !4468, size: 64, offset: 768)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3652, line: 156, size: 192, elements: !4470)
!4470 = !{!4471, !4472, !4474}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4469, file: !3652, line: 157, baseType: !4468, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4469, file: !3652, line: 158, baseType: !4473, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4469, file: !3652, line: 162, baseType: !69, size: 32, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4453, file: !3652, line: 262, baseType: !4473, size: 64, offset: 832)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4453, file: !3652, line: 264, baseType: !69, size: 32, offset: 896)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4453, file: !3652, line: 268, baseType: !69, size: 32, offset: 928)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4453, file: !3652, line: 270, baseType: !3678, size: 64, offset: 960)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4453, file: !3652, line: 274, baseType: !84, size: 16, offset: 1024)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4453, file: !3652, line: 275, baseType: !3681, size: 8, offset: 1040)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4453, file: !3652, line: 276, baseType: !3683, size: 8, offset: 1048)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4453, file: !3652, line: 280, baseType: !3687, size: 64, offset: 1088)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4453, file: !3652, line: 289, baseType: !3690, size: 64, offset: 1152)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4453, file: !3652, line: 297, baseType: !54, size: 64, offset: 1216)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4453, file: !3652, line: 298, baseType: !54, size: 64, offset: 1280)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4453, file: !3652, line: 299, baseType: !54, size: 64, offset: 1344)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4453, file: !3652, line: 300, baseType: !54, size: 64, offset: 1408)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4453, file: !3652, line: 302, baseType: !56, size: 64, offset: 1472)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4453, file: !3652, line: 303, baseType: !69, size: 32, offset: 1536)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4453, file: !3652, line: 305, baseType: !3698, size: 160, offset: 1568)
!4491 = !{!4492, !4493, !4495, !4496}
!4492 = !DILocalVariable(name: "stream", arg: 1, scope: !4447, file: !4448, line: 56, type: !4451)
!4493 = !DILocalVariable(name: "some_pending", scope: !4447, file: !4448, line: 58, type: !4494)
!4494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!4495 = !DILocalVariable(name: "prev_fail", scope: !4447, file: !4448, line: 59, type: !4494)
!4496 = !DILocalVariable(name: "fclose_fail", scope: !4447, file: !4448, line: 60, type: !4494)
!4497 = !DILocation(line: 56, column: 21, scope: !4447)
!4498 = !DILocation(line: 58, column: 30, scope: !4447)
!4499 = !DILocalVariable(name: "__stream", arg: 1, scope: !4500, file: !4501, line: 132, type: !4451)
!4500 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4501, file: !4501, line: 132, type: !4449, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !684, variables: !4502)
!4501 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4502 = !{!4499}
!4503 = !DILocation(line: 132, column: 1, scope: !4500, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 59, column: 27, scope: !4447)
!4505 = !DILocation(line: 134, column: 10, scope: !4500, inlinedAt: !4504)
!4506 = !{!4507, !876, i64 0}
!4507 = !{!"_IO_FILE", !876, i64 0, !755, i64 8, !755, i64 16, !755, i64 24, !755, i64 32, !755, i64 40, !755, i64 48, !755, i64 56, !755, i64 64, !755, i64 72, !755, i64 80, !755, i64 88, !755, i64 96, !755, i64 104, !876, i64 112, !876, i64 116, !884, i64 120, !1301, i64 128, !756, i64 130, !756, i64 131, !755, i64 136, !884, i64 144, !755, i64 152, !755, i64 160, !755, i64 168, !755, i64 176, !884, i64 184, !876, i64 192, !756, i64 196}
!4508 = !DILocation(line: 59, column: 43, scope: !4447)
!4509 = !DILocation(line: 60, column: 29, scope: !4447)
!4510 = !DILocation(line: 60, column: 45, scope: !4447)
!4511 = !DILocation(line: 70, column: 17, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4447, file: !4448, line: 70, column: 7)
!4513 = !DILocation(line: 70, column: 33, scope: !4514)
!4514 = !DILexicalBlockFile(scope: !4512, file: !4448, discriminator: 1)
!4515 = !DILocation(line: 70, column: 53, scope: !4516)
!4516 = !DILexicalBlockFile(scope: !4512, file: !4448, discriminator: 3)
!4517 = !DILocation(line: 70, column: 7, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !4447, file: !4448, discriminator: 3)
!4519 = !DILocation(line: 72, column: 11, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4512, file: !4448, line: 71, column: 5)
!4521 = !DILocation(line: 73, column: 9, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4520, file: !4448, line: 72, column: 11)
!4523 = !DILocation(line: 73, column: 15, scope: !4522)
!4524 = !DILocation(line: 78, column: 1, scope: !4447)
!4525 = distinct !DISubprogram(name: "hard_locale", scope: !4526, file: !4526, line: 38, type: !4527, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !686, variables: !4529)
!4526 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!154, !69}
!4529 = !{!4530, !4531, !4532, !4533, !4540, !4541, !4543, !4544, !4546, !4547, !4549}
!4530 = !DILocalVariable(name: "category", arg: 1, scope: !4525, file: !4526, line: 38, type: !69)
!4531 = !DILocalVariable(name: "hard", scope: !4525, file: !4526, line: 40, type: !154)
!4532 = !DILocalVariable(name: "p", scope: !4525, file: !4526, line: 41, type: !75)
!4533 = !DILocalVariable(name: "__s1_len", scope: !4534, file: !4526, line: 47, type: !56)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !4526, line: 47, column: 15)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !4526, line: 47, column: 15)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !4526, line: 46, column: 9)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !4526, line: 45, column: 11)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !4526, line: 44, column: 5)
!4539 = distinct !DILexicalBlock(scope: !4525, file: !4526, line: 43, column: 7)
!4540 = !DILocalVariable(name: "__s2_len", scope: !4534, file: !4526, line: 47, type: !56)
!4541 = !DILocalVariable(name: "__s2", scope: !4542, file: !4526, line: 47, type: !72)
!4542 = distinct !DILexicalBlock(scope: !4534, file: !4526, line: 47, column: 15)
!4543 = !DILocalVariable(name: "__result", scope: !4542, file: !4526, line: 47, type: !69)
!4544 = !DILocalVariable(name: "__s1_len", scope: !4545, file: !4526, line: 47, type: !56)
!4545 = distinct !DILexicalBlock(scope: !4535, file: !4526, line: 47, column: 39)
!4546 = !DILocalVariable(name: "__s2_len", scope: !4545, file: !4526, line: 47, type: !56)
!4547 = !DILocalVariable(name: "__s2", scope: !4548, file: !4526, line: 47, type: !72)
!4548 = distinct !DILexicalBlock(scope: !4545, file: !4526, line: 47, column: 39)
!4549 = !DILocalVariable(name: "__result", scope: !4548, file: !4526, line: 47, type: !69)
!4550 = !DILocation(line: 38, column: 18, scope: !4525)
!4551 = !DILocation(line: 40, column: 8, scope: !4525)
!4552 = !DILocation(line: 41, column: 19, scope: !4525)
!4553 = !DILocation(line: 41, column: 15, scope: !4525)
!4554 = !DILocation(line: 43, column: 7, scope: !4539)
!4555 = !DILocation(line: 43, column: 7, scope: !4525)
!4556 = !DILocation(line: 47, column: 15, scope: !4534)
!4557 = !DILocation(line: 47, column: 15, scope: !4542)
!4558 = !DILocation(line: 47, column: 15, scope: !4559)
!4559 = !DILexicalBlockFile(scope: !4542, file: !4526, discriminator: 2)
!4560 = !DILocation(line: 47, column: 15, scope: !4561)
!4561 = !DILexicalBlockFile(scope: !4562, file: !4526, discriminator: 3)
!4562 = distinct !DILexicalBlock(scope: !4542, file: !4526, line: 47, column: 15)
!4563 = !DILocation(line: 47, column: 15, scope: !4564)
!4564 = !DILexicalBlockFile(scope: !4562, file: !4526, discriminator: 2)
!4565 = !DILocation(line: 47, column: 15, scope: !4566)
!4566 = !DILexicalBlockFile(scope: !4567, file: !4526, discriminator: 4)
!4567 = distinct !DILexicalBlock(scope: !4562, file: !4526, line: 47, column: 15)
!4568 = !DILocation(line: 47, column: 15, scope: !4569)
!4569 = !DILexicalBlockFile(scope: !4534, file: !4526, discriminator: 11)
!4570 = !DILocation(line: 47, column: 36, scope: !4571)
!4571 = !DILexicalBlockFile(scope: !4535, file: !4526, discriminator: 13)
!4572 = !DILocation(line: 47, column: 39, scope: !4545)
!4573 = !DILocation(line: 47, column: 39, scope: !4574)
!4574 = !DILexicalBlockFile(scope: !4545, file: !4526, discriminator: 26)
!4575 = !DILocation(line: 47, column: 59, scope: !4576)
!4576 = !DILexicalBlockFile(scope: !4535, file: !4526, discriminator: 27)
!4577 = !DILocation(line: 47, column: 15, scope: !4578)
!4578 = !DILexicalBlockFile(scope: !4536, file: !4526, discriminator: 27)
!4579 = !DILocation(line: 48, column: 13, scope: !4535)
!4580 = !DILocation(line: 71, column: 3, scope: !4525)
!4581 = distinct !DISubprogram(name: "umaxtostr", scope: !4582, file: !4582, line: 36, type: !4583, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !689, variables: !4585)
!4582 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!67, !692, !67}
!4585 = !{!4586, !4587, !4588}
!4586 = !DILocalVariable(name: "i", arg: 1, scope: !4581, file: !4582, line: 36, type: !692)
!4587 = !DILocalVariable(name: "buf", arg: 2, scope: !4581, file: !4582, line: 36, type: !67)
!4588 = !DILocalVariable(name: "p", scope: !4581, file: !4582, line: 38, type: !67)
!4589 = !DILocation(line: 36, column: 19, scope: !4581)
!4590 = !DILocation(line: 36, column: 28, scope: !4581)
!4591 = !DILocation(line: 38, column: 17, scope: !4581)
!4592 = !DILocation(line: 38, column: 9, scope: !4581)
!4593 = !DILocation(line: 39, column: 6, scope: !4581)
!4594 = !DILocation(line: 41, column: 7, scope: !4581)
!4595 = !DILocation(line: 52, column: 24, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !4582, line: 50, column: 5)
!4597 = distinct !DILexicalBlock(scope: !4581, file: !4582, line: 41, column: 7)
!4598 = !DILocation(line: 52, column: 16, scope: !4596)
!4599 = !DILocation(line: 52, column: 10, scope: !4596)
!4600 = !DILocation(line: 52, column: 14, scope: !4596)
!4601 = !DILocation(line: 53, column: 17, scope: !4596)
!4602 = !DILocation(line: 53, column: 24, scope: !4596)
!4603 = !DILocation(line: 52, column: 9, scope: !4604)
!4604 = !DILexicalBlockFile(scope: !4596, file: !4582, discriminator: 1)
!4605 = distinct !{!4605, !4606, !4607}
!4606 = !DILocation(line: 51, column: 7, scope: !4596)
!4607 = !DILocation(line: 53, column: 28, scope: !4596)
!4608 = !DILocation(line: 56, column: 3, scope: !4581)
!4609 = distinct !DISubprogram(name: "locale_charset", scope: !577, file: !577, line: 393, type: !4610, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !233, variables: !4612)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!75}
!4612 = !{!4613, !4614, !4615, !4620}
!4613 = !DILocalVariable(name: "codeset", scope: !4609, file: !577, line: 395, type: !75)
!4614 = !DILocalVariable(name: "aliases", scope: !4609, file: !577, line: 396, type: !75)
!4615 = !DILocalVariable(name: "__s1_len", scope: !4616, file: !577, line: 592, type: !56)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !577, line: 592, column: 9)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !577, line: 592, column: 9)
!4618 = distinct !DILexicalBlock(scope: !4619, file: !577, line: 589, column: 3)
!4619 = distinct !DILexicalBlock(scope: !4609, file: !577, line: 589, column: 3)
!4620 = !DILocalVariable(name: "__s2_len", scope: !4616, file: !577, line: 592, type: !56)
!4621 = !DILocalVariable(name: "buf1", scope: !4622, file: !577, line: 196, type: !4689)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !577, line: 194, column: 21)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !577, line: 193, column: 19)
!4624 = distinct !DILexicalBlock(scope: !4625, file: !577, line: 193, column: 19)
!4625 = distinct !DILexicalBlock(scope: !4626, file: !577, line: 188, column: 17)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !577, line: 181, column: 19)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !577, line: 177, column: 13)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !577, line: 173, column: 15)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !577, line: 161, column: 9)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !577, line: 157, column: 11)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !577, line: 130, column: 5)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !577, line: 129, column: 7)
!4633 = distinct !DISubprogram(name: "get_charset_aliases", scope: !577, file: !577, line: 124, type: !4610, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !233, variables: !4634)
!4634 = !{!4635, !4636, !4637, !4638, !4639, !4641, !4642, !4643, !4644, !4685, !4686, !4687, !4621, !4688, !4692, !4693, !4694}
!4635 = !DILocalVariable(name: "cp", scope: !4633, file: !577, line: 126, type: !75)
!4636 = !DILocalVariable(name: "dir", scope: !4631, file: !577, line: 132, type: !75)
!4637 = !DILocalVariable(name: "base", scope: !4631, file: !577, line: 133, type: !75)
!4638 = !DILocalVariable(name: "file_name", scope: !4631, file: !577, line: 134, type: !67)
!4639 = !DILocalVariable(name: "dir_len", scope: !4640, file: !577, line: 144, type: !56)
!4640 = distinct !DILexicalBlock(scope: !4631, file: !577, line: 143, column: 7)
!4641 = !DILocalVariable(name: "base_len", scope: !4640, file: !577, line: 145, type: !56)
!4642 = !DILocalVariable(name: "add_slash", scope: !4640, file: !577, line: 146, type: !69)
!4643 = !DILocalVariable(name: "fd", scope: !4629, file: !577, line: 162, type: !69)
!4644 = !DILocalVariable(name: "fp", scope: !4627, file: !577, line: 178, type: !4645)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3650, line: 49, baseType: !4647)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3652, line: 241, size: 1728, elements: !4648)
!4648 = !{!4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4647, file: !3652, line: 242, baseType: !69, size: 32)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4647, file: !3652, line: 247, baseType: !67, size: 64, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4647, file: !3652, line: 248, baseType: !67, size: 64, offset: 128)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4647, file: !3652, line: 249, baseType: !67, size: 64, offset: 192)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4647, file: !3652, line: 250, baseType: !67, size: 64, offset: 256)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4647, file: !3652, line: 251, baseType: !67, size: 64, offset: 320)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4647, file: !3652, line: 252, baseType: !67, size: 64, offset: 384)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4647, file: !3652, line: 253, baseType: !67, size: 64, offset: 448)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4647, file: !3652, line: 254, baseType: !67, size: 64, offset: 512)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4647, file: !3652, line: 256, baseType: !67, size: 64, offset: 576)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4647, file: !3652, line: 257, baseType: !67, size: 64, offset: 640)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4647, file: !3652, line: 258, baseType: !67, size: 64, offset: 704)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4647, file: !3652, line: 260, baseType: !4662, size: 64, offset: 768)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3652, line: 156, size: 192, elements: !4664)
!4664 = !{!4665, !4666, !4668}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4663, file: !3652, line: 157, baseType: !4662, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4663, file: !3652, line: 158, baseType: !4667, size: 64, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4663, file: !3652, line: 162, baseType: !69, size: 32, offset: 128)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4647, file: !3652, line: 262, baseType: !4667, size: 64, offset: 832)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4647, file: !3652, line: 264, baseType: !69, size: 32, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4647, file: !3652, line: 268, baseType: !69, size: 32, offset: 928)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4647, file: !3652, line: 270, baseType: !3678, size: 64, offset: 960)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4647, file: !3652, line: 274, baseType: !84, size: 16, offset: 1024)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4647, file: !3652, line: 275, baseType: !3681, size: 8, offset: 1040)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4647, file: !3652, line: 276, baseType: !3683, size: 8, offset: 1048)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4647, file: !3652, line: 280, baseType: !3687, size: 64, offset: 1088)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4647, file: !3652, line: 289, baseType: !3690, size: 64, offset: 1152)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4647, file: !3652, line: 297, baseType: !54, size: 64, offset: 1216)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4647, file: !3652, line: 298, baseType: !54, size: 64, offset: 1280)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4647, file: !3652, line: 299, baseType: !54, size: 64, offset: 1344)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4647, file: !3652, line: 300, baseType: !54, size: 64, offset: 1408)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4647, file: !3652, line: 302, baseType: !56, size: 64, offset: 1472)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4647, file: !3652, line: 303, baseType: !69, size: 32, offset: 1536)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4647, file: !3652, line: 305, baseType: !3698, size: 160, offset: 1568)
!4685 = !DILocalVariable(name: "res_ptr", scope: !4625, file: !577, line: 190, type: !67)
!4686 = !DILocalVariable(name: "res_size", scope: !4625, file: !577, line: 191, type: !56)
!4687 = !DILocalVariable(name: "c", scope: !4622, file: !577, line: 195, type: !69)
!4688 = !DILocalVariable(name: "buf2", scope: !4622, file: !577, line: 197, type: !4689)
!4689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 408, elements: !4690)
!4690 = !{!4691}
!4691 = !DISubrange(count: 51)
!4692 = !DILocalVariable(name: "l1", scope: !4622, file: !577, line: 198, type: !56)
!4693 = !DILocalVariable(name: "l2", scope: !4622, file: !577, line: 198, type: !56)
!4694 = !DILocalVariable(name: "old_res_ptr", scope: !4622, file: !577, line: 199, type: !67)
!4695 = !DILocation(line: 196, column: 28, scope: !4622, inlinedAt: !4696)
!4696 = distinct !DILocation(line: 589, column: 18, scope: !4619)
!4697 = !DILocation(line: 197, column: 28, scope: !4622, inlinedAt: !4696)
!4698 = !DILocation(line: 403, column: 13, scope: !4609)
!4699 = !DILocation(line: 395, column: 15, scope: !4609)
!4700 = !DILocation(line: 584, column: 15, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4609, file: !577, line: 584, column: 7)
!4702 = !DILocation(line: 584, column: 7, scope: !4609)
!4703 = !DILocation(line: 128, column: 8, scope: !4633, inlinedAt: !4696)
!4704 = !DILocation(line: 126, column: 15, scope: !4633, inlinedAt: !4696)
!4705 = !DILocation(line: 129, column: 10, scope: !4632, inlinedAt: !4696)
!4706 = !DILocation(line: 129, column: 7, scope: !4633, inlinedAt: !4696)
!4707 = !DILocation(line: 138, column: 13, scope: !4631, inlinedAt: !4696)
!4708 = !DILocation(line: 132, column: 19, scope: !4631, inlinedAt: !4696)
!4709 = !DILocation(line: 139, column: 15, scope: !4710, inlinedAt: !4696)
!4710 = distinct !DILexicalBlock(scope: !4631, file: !577, line: 139, column: 11)
!4711 = !DILocation(line: 139, column: 23, scope: !4710, inlinedAt: !4696)
!4712 = !DILocation(line: 139, column: 26, scope: !4713, inlinedAt: !4696)
!4713 = !DILexicalBlockFile(scope: !4710, file: !577, discriminator: 1)
!4714 = !DILocation(line: 139, column: 33, scope: !4713, inlinedAt: !4696)
!4715 = !DILocation(line: 139, column: 11, scope: !4716, inlinedAt: !4696)
!4716 = !DILexicalBlockFile(scope: !4631, file: !577, discriminator: 1)
!4717 = !DILocation(line: 140, column: 9, scope: !4710, inlinedAt: !4696)
!4718 = !DILocation(line: 144, column: 26, scope: !4640, inlinedAt: !4696)
!4719 = !DILocation(line: 144, column: 16, scope: !4640, inlinedAt: !4696)
!4720 = !DILocation(line: 145, column: 16, scope: !4640, inlinedAt: !4696)
!4721 = !DILocation(line: 146, column: 34, scope: !4640, inlinedAt: !4696)
!4722 = !DILocation(line: 146, column: 38, scope: !4640, inlinedAt: !4696)
!4723 = !DILocation(line: 146, column: 42, scope: !4724, inlinedAt: !4696)
!4724 = !DILexicalBlockFile(scope: !4640, file: !577, discriminator: 1)
!4725 = !DILocation(line: 146, column: 41, scope: !4724, inlinedAt: !4696)
!4726 = !DILocation(line: 147, column: 48, scope: !4640, inlinedAt: !4696)
!4727 = !DILocation(line: 147, column: 46, scope: !4640, inlinedAt: !4696)
!4728 = !DILocation(line: 147, column: 69, scope: !4640, inlinedAt: !4696)
!4729 = !DILocation(line: 147, column: 30, scope: !4640, inlinedAt: !4696)
!4730 = !DILocation(line: 134, column: 13, scope: !4631, inlinedAt: !4696)
!4731 = !DILocation(line: 148, column: 13, scope: !4640, inlinedAt: !4696)
!4732 = !DILocation(line: 150, column: 13, scope: !4733, inlinedAt: !4696)
!4733 = distinct !DILexicalBlock(scope: !4734, file: !577, line: 149, column: 11)
!4734 = distinct !DILexicalBlock(scope: !4640, file: !577, line: 148, column: 13)
!4735 = !DILocation(line: 151, column: 17, scope: !4733, inlinedAt: !4696)
!4736 = !DILocation(line: 152, column: 34, scope: !4737, inlinedAt: !4696)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !577, line: 151, column: 17)
!4738 = !DILocation(line: 153, column: 41, scope: !4733, inlinedAt: !4696)
!4739 = !DILocation(line: 153, column: 13, scope: !4733, inlinedAt: !4696)
!4740 = !DILocation(line: 157, column: 11, scope: !4631, inlinedAt: !4696)
!4741 = !DILocation(line: 171, column: 16, scope: !4629, inlinedAt: !4696)
!4742 = !DILocation(line: 162, column: 15, scope: !4629, inlinedAt: !4696)
!4743 = !DILocation(line: 173, column: 18, scope: !4628, inlinedAt: !4696)
!4744 = !DILocation(line: 173, column: 15, scope: !4629, inlinedAt: !4696)
!4745 = !DILocation(line: 180, column: 20, scope: !4627, inlinedAt: !4696)
!4746 = !DILocation(line: 178, column: 21, scope: !4627, inlinedAt: !4696)
!4747 = !DILocation(line: 181, column: 22, scope: !4626, inlinedAt: !4696)
!4748 = !DILocation(line: 181, column: 19, scope: !4627, inlinedAt: !4696)
!4749 = !DILocation(line: 190, column: 25, scope: !4625, inlinedAt: !4696)
!4750 = !DILocation(line: 184, column: 19, scope: !4751, inlinedAt: !4696)
!4751 = distinct !DILexicalBlock(scope: !4626, file: !577, line: 182, column: 17)
!4752 = !DILocation(line: 186, column: 17, scope: !4751, inlinedAt: !4696)
!4753 = !DILocation(line: 191, column: 26, scope: !4625, inlinedAt: !4696)
!4754 = !DILocation(line: 196, column: 23, scope: !4622, inlinedAt: !4696)
!4755 = !DILocation(line: 197, column: 23, scope: !4622, inlinedAt: !4696)
!4756 = !DILocalVariable(name: "__fp", arg: 1, scope: !4757, file: !4501, line: 63, type: !4645)
!4757 = distinct !DISubprogram(name: "getc_unlocked", scope: !4501, file: !4501, line: 63, type: !4758, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !233, variables: !4760)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!69, !4645}
!4760 = !{!4756}
!4761 = !DILocation(line: 63, column: 22, scope: !4757, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 201, column: 27, scope: !4622, inlinedAt: !4696)
!4763 = !DILocation(line: 65, column: 10, scope: !4757, inlinedAt: !4762)
!4764 = !{!4507, !755, i64 8}
!4765 = !{!4507, !755, i64 16}
!4766 = !{!"branch_weights", i32 2000, i32 1}
!4767 = !DILocation(line: 65, column: 10, scope: !4768, inlinedAt: !4762)
!4768 = !DILexicalBlockFile(scope: !4757, file: !4501, discriminator: 1)
!4769 = !DILocation(line: 65, column: 10, scope: !4770, inlinedAt: !4762)
!4770 = !DILexicalBlockFile(scope: !4757, file: !4501, discriminator: 2)
!4771 = !DILocation(line: 65, column: 10, scope: !4772, inlinedAt: !4762)
!4772 = !DILexicalBlockFile(scope: !4757, file: !4501, discriminator: 3)
!4773 = !DILocation(line: 195, column: 27, scope: !4622, inlinedAt: !4696)
!4774 = !DILocation(line: 202, column: 27, scope: !4622, inlinedAt: !4696)
!4775 = !DILocation(line: 63, column: 22, scope: !4757, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 210, column: 33, scope: !4777, inlinedAt: !4696)
!4777 = distinct !DILexicalBlock(scope: !4778, file: !577, line: 207, column: 25)
!4778 = distinct !DILexicalBlock(scope: !4622, file: !577, line: 206, column: 27)
!4779 = !DILocation(line: 65, column: 10, scope: !4757, inlinedAt: !4776)
!4780 = !DILocation(line: 65, column: 10, scope: !4768, inlinedAt: !4776)
!4781 = !DILocation(line: 65, column: 10, scope: !4770, inlinedAt: !4776)
!4782 = !DILocation(line: 65, column: 10, scope: !4772, inlinedAt: !4776)
!4783 = !DILocation(line: 210, column: 29, scope: !4784, inlinedAt: !4696)
!4784 = !DILexicalBlockFile(scope: !4777, file: !577, discriminator: 1)
!4785 = distinct !{!4785, !4786, !4787}
!4786 = !DILocation(line: 193, column: 19, scope: !4624)
!4787 = !DILocation(line: 241, column: 21, scope: !4624)
!4788 = !DILocation(line: 216, column: 23, scope: !4622, inlinedAt: !4696)
!4789 = !DILocation(line: 217, column: 27, scope: !4790, inlinedAt: !4696)
!4790 = distinct !DILexicalBlock(scope: !4622, file: !577, line: 217, column: 27)
!4791 = !DILocation(line: 217, column: 64, scope: !4790, inlinedAt: !4696)
!4792 = !DILocation(line: 217, column: 27, scope: !4622, inlinedAt: !4696)
!4793 = !DILocation(line: 219, column: 28, scope: !4622, inlinedAt: !4696)
!4794 = !DILocation(line: 198, column: 30, scope: !4622, inlinedAt: !4696)
!4795 = !DILocation(line: 220, column: 28, scope: !4622, inlinedAt: !4696)
!4796 = !DILocation(line: 198, column: 34, scope: !4622, inlinedAt: !4696)
!4797 = !DILocation(line: 199, column: 29, scope: !4622, inlinedAt: !4696)
!4798 = !DILocation(line: 222, column: 36, scope: !4799, inlinedAt: !4696)
!4799 = distinct !DILexicalBlock(scope: !4622, file: !577, line: 222, column: 27)
!4800 = !DILocation(line: 222, column: 27, scope: !4622, inlinedAt: !4696)
!4801 = !DILocation(line: 225, column: 63, scope: !4802, inlinedAt: !4696)
!4802 = distinct !DILexicalBlock(scope: !4799, file: !577, line: 223, column: 25)
!4803 = !DILocation(line: 225, column: 46, scope: !4802, inlinedAt: !4696)
!4804 = !DILocation(line: 226, column: 25, scope: !4802, inlinedAt: !4696)
!4805 = !DILocation(line: 229, column: 36, scope: !4806, inlinedAt: !4696)
!4806 = distinct !DILexicalBlock(scope: !4799, file: !577, line: 228, column: 25)
!4807 = !DILocation(line: 230, column: 73, scope: !4806, inlinedAt: !4696)
!4808 = !DILocation(line: 230, column: 46, scope: !4806, inlinedAt: !4696)
!4809 = !DILocation(line: 232, column: 35, scope: !4810, inlinedAt: !4696)
!4810 = distinct !DILexicalBlock(scope: !4622, file: !577, line: 232, column: 27)
!4811 = !DILocation(line: 232, column: 27, scope: !4622, inlinedAt: !4696)
!4812 = !DILocation(line: 236, column: 27, scope: !4813, inlinedAt: !4696)
!4813 = distinct !DILexicalBlock(scope: !4810, file: !577, line: 233, column: 25)
!4814 = !DILocation(line: 237, column: 27, scope: !4813, inlinedAt: !4696)
!4815 = !DILocation(line: 239, column: 39, scope: !4622, inlinedAt: !4696)
!4816 = !DILocation(line: 239, column: 50, scope: !4622, inlinedAt: !4696)
!4817 = !DILocation(line: 239, column: 61, scope: !4622, inlinedAt: !4696)
!4818 = !DILocalVariable(name: "__dest", arg: 1, scope: !4819, file: !4820, line: 107, type: !4823)
!4819 = distinct !DISubprogram(name: "strcpy", scope: !4820, file: !4820, line: 107, type: !4821, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !233, variables: !4825)
!4820 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!67, !4823, !4824}
!4823 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!4824 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!4825 = !{!4818, !4826}
!4826 = !DILocalVariable(name: "__src", arg: 2, scope: !4819, file: !4820, line: 107, type: !4824)
!4827 = !DILocation(line: 107, column: 1, scope: !4819, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 239, column: 23, scope: !4622, inlinedAt: !4696)
!4829 = !DILocation(line: 109, column: 49, scope: !4819, inlinedAt: !4828)
!4830 = !DILocation(line: 109, column: 10, scope: !4819, inlinedAt: !4828)
!4831 = !DILocation(line: 107, column: 1, scope: !4819, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 240, column: 23, scope: !4622, inlinedAt: !4696)
!4833 = !DILocation(line: 109, column: 49, scope: !4819, inlinedAt: !4832)
!4834 = !DILocation(line: 109, column: 10, scope: !4819, inlinedAt: !4832)
!4835 = !DILocation(line: 241, column: 21, scope: !4623, inlinedAt: !4696)
!4836 = !DILocation(line: 242, column: 19, scope: !4625, inlinedAt: !4696)
!4837 = !DILocation(line: 243, column: 32, scope: !4838, inlinedAt: !4696)
!4838 = distinct !DILexicalBlock(scope: !4625, file: !577, line: 243, column: 23)
!4839 = !DILocation(line: 243, column: 23, scope: !4625, inlinedAt: !4696)
!4840 = !DILocation(line: 247, column: 33, scope: !4841, inlinedAt: !4696)
!4841 = distinct !DILexicalBlock(scope: !4838, file: !577, line: 246, column: 21)
!4842 = !DILocation(line: 247, column: 45, scope: !4841, inlinedAt: !4696)
!4843 = !DILocation(line: 253, column: 11, scope: !4629, inlinedAt: !4696)
!4844 = !DILocation(line: 377, column: 23, scope: !4631, inlinedAt: !4696)
!4845 = !DILocation(line: 378, column: 5, scope: !4631, inlinedAt: !4696)
!4846 = !DILocation(line: 396, column: 15, scope: !4609)
!4847 = !DILocation(line: 590, column: 8, scope: !4618)
!4848 = !DILocation(line: 590, column: 17, scope: !4618)
!4849 = !DILocation(line: 589, column: 3, scope: !4850)
!4850 = !DILexicalBlockFile(scope: !4619, file: !577, discriminator: 1)
!4851 = !DILocation(line: 592, column: 9, scope: !4616)
!4852 = !DILocation(line: 592, column: 35, scope: !4617)
!4853 = !DILocation(line: 593, column: 9, scope: !4617)
!4854 = !DILocation(line: 593, column: 24, scope: !4855)
!4855 = !DILexicalBlockFile(scope: !4617, file: !577, discriminator: 1)
!4856 = !DILocation(line: 593, column: 31, scope: !4855)
!4857 = !DILocation(line: 593, column: 34, scope: !4858)
!4858 = !DILexicalBlockFile(scope: !4617, file: !577, discriminator: 2)
!4859 = !DILocation(line: 593, column: 45, scope: !4858)
!4860 = !DILocation(line: 592, column: 9, scope: !4861)
!4861 = !DILexicalBlockFile(scope: !4618, file: !577, discriminator: 1)
!4862 = !DILocation(line: 595, column: 29, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4617, file: !577, line: 594, column: 7)
!4864 = !DILocation(line: 595, column: 27, scope: !4863)
!4865 = !DILocation(line: 595, column: 46, scope: !4863)
!4866 = !DILocation(line: 596, column: 9, scope: !4863)
!4867 = !DILocation(line: 591, column: 19, scope: !4618)
!4868 = !DILocation(line: 591, column: 36, scope: !4618)
!4869 = !DILocation(line: 591, column: 16, scope: !4618)
!4870 = !DILocation(line: 591, column: 52, scope: !4861)
!4871 = !DILocation(line: 591, column: 69, scope: !4618)
!4872 = !DILocation(line: 591, column: 49, scope: !4618)
!4873 = distinct !{!4873, !4874, !4875}
!4874 = !DILocation(line: 589, column: 3, scope: !4619)
!4875 = !DILocation(line: 597, column: 7, scope: !4619)
!4876 = !DILocation(line: 602, column: 7, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4609, file: !577, line: 602, column: 7)
!4878 = !DILocation(line: 602, column: 18, scope: !4877)
!4879 = !DILocation(line: 602, column: 7, scope: !4609)
!4880 = !DILocation(line: 612, column: 3, scope: !4609)
!4881 = !DILocation(line: 66, column: 25, scope: !700)
!4882 = !DILocation(line: 66, column: 41, scope: !700)
!4883 = !DILocation(line: 66, column: 54, scope: !700)
!4884 = !DILocation(line: 68, column: 3, scope: !700)
!4885 = !DILocation(line: 81, column: 7, scope: !714)
!4886 = !DILocation(line: 81, column: 7, scope: !700)
!4887 = !DILocation(line: 68, column: 7, scope: !700)
!4888 = !DILocation(line: 84, column: 20, scope: !713)
!4889 = !DILocalVariable(name: "g", arg: 1, scope: !4890, file: !699, line: 43, type: !591)
!4890 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !699, file: !699, line: 43, type: !4891, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !695, variables: !4893)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!591, !591, !56}
!4893 = !{!4889, !4894}
!4894 = !DILocalVariable(name: "num", arg: 2, scope: !4890, file: !699, line: 43, type: !56)
!4895 = !DILocation(line: 43, column: 26, scope: !4890, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 86, column: 11, scope: !713)
!4897 = !DILocation(line: 43, column: 36, scope: !4890, inlinedAt: !4896)
!4898 = !DILocation(line: 51, column: 10, scope: !4890, inlinedAt: !4896)
!4899 = !DILocation(line: 87, column: 13, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !713, file: !699, line: 87, column: 11)
!4901 = !DILocation(line: 87, column: 11, scope: !713)
!4902 = !DILocation(line: 93, column: 31, scope: !712)
!4903 = !DILocation(line: 70, column: 10, scope: !700)
!4904 = !DILocation(line: 93, column: 15, scope: !712)
!4905 = !DILocation(line: 96, column: 16, scope: !712)
!4906 = !DILocation(line: 69, column: 7, scope: !700)
!4907 = !DILocation(line: 100, column: 18, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !712, file: !699, line: 100, column: 15)
!4909 = !DILocation(line: 100, column: 39, scope: !4910)
!4910 = !DILexicalBlockFile(scope: !4908, file: !699, discriminator: 1)
!4911 = !DILocation(line: 100, column: 22, scope: !4908)
!4912 = !DILocation(line: 101, column: 26, scope: !4908)
!4913 = !DILocation(line: 101, column: 13, scope: !4908)
!4914 = !DILocation(line: 103, column: 41, scope: !718)
!4915 = !DILocation(line: 43, column: 26, scope: !4890, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 103, column: 20, scope: !718)
!4917 = !DILocation(line: 43, column: 36, scope: !4890, inlinedAt: !4916)
!4918 = !DILocation(line: 45, column: 7, scope: !4919, inlinedAt: !4916)
!4919 = distinct !DILexicalBlock(scope: !4890, file: !699, line: 45, column: 7)
!4920 = !DILocation(line: 45, column: 7, scope: !4890, inlinedAt: !4916)
!4921 = !DILocation(line: 47, column: 7, scope: !4922, inlinedAt: !4916)
!4922 = distinct !DILexicalBlock(scope: !4919, file: !699, line: 46, column: 5)
!4923 = !DILocation(line: 47, column: 13, scope: !4922, inlinedAt: !4916)
!4924 = !DILocation(line: 103, column: 15, scope: !712)
!4925 = !DILocation(line: 51, column: 26, scope: !4890, inlinedAt: !4916)
!4926 = !DILocation(line: 51, column: 10, scope: !4890, inlinedAt: !4916)
!4927 = !DILocation(line: 103, column: 56, scope: !718)
!4928 = !DILocation(line: 105, column: 33, scope: !717)
!4929 = !DILocation(line: 105, column: 19, scope: !717)
!4930 = !DILocation(line: 106, column: 15, scope: !717)
!4931 = !DILocation(line: 107, column: 21, scope: !717)
!4932 = !DILocation(line: 112, column: 17, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !712, file: !699, line: 112, column: 15)
!4934 = !DILocation(line: 112, column: 15, scope: !712)
!4935 = !DILocation(line: 114, column: 23, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4933, file: !699, line: 113, column: 13)
!4937 = !DILocation(line: 117, column: 22, scope: !4936)
!4938 = !DILocation(line: 117, column: 15, scope: !4936)
!4939 = !DILocation(line: 126, column: 21, scope: !700)
!4940 = !DILocation(line: 124, column: 16, scope: !4941)
!4941 = !DILexicalBlockFile(scope: !700, file: !699, discriminator: 3)
!4942 = !DILocation(line: 131, column: 20, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !700, file: !699, line: 131, column: 7)
!4944 = !DILocation(line: 131, column: 7, scope: !700)
!4945 = !DILocation(line: 133, column: 11, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !699, line: 133, column: 11)
!4947 = distinct !DILexicalBlock(scope: !4943, file: !699, line: 132, column: 5)
!4948 = !DILocation(line: 133, column: 17, scope: !4946)
!4949 = !DILocation(line: 133, column: 27, scope: !4946)
!4950 = !DILocation(line: 43, column: 26, scope: !4890, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 133, column: 35, scope: !4952)
!4952 = !DILexicalBlockFile(scope: !4946, file: !699, discriminator: 1)
!4953 = !DILocation(line: 43, column: 36, scope: !4890, inlinedAt: !4951)
!4954 = !DILocation(line: 51, column: 10, scope: !4890, inlinedAt: !4951)
!4955 = !DILocation(line: 133, column: 33, scope: !4952)
!4956 = !DILocation(line: 133, column: 11, scope: !4957)
!4957 = !DILexicalBlockFile(scope: !4947, file: !699, discriminator: 1)
!4958 = !DILocation(line: 135, column: 19, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4946, file: !699, line: 134, column: 9)
!4960 = !DILocation(line: 136, column: 14, scope: !4959)
!4961 = !DILocation(line: 137, column: 22, scope: !4959)
!4962 = !DILocation(line: 137, column: 11, scope: !4959)
!4963 = !DILocation(line: 142, column: 20, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !700, file: !699, line: 142, column: 7)
!4965 = !DILocation(line: 142, column: 46, scope: !4966)
!4966 = !DILexicalBlockFile(scope: !4964, file: !699, discriminator: 2)
!4967 = !DILocation(line: 142, column: 25, scope: !4964)
!4968 = !DILocation(line: 143, column: 17, scope: !4964)
!4969 = !DILocation(line: 43, column: 26, scope: !4890, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 144, column: 7, scope: !700)
!4971 = !DILocation(line: 43, column: 36, scope: !4890, inlinedAt: !4970)
!4972 = !DILocation(line: 45, column: 7, scope: !4919, inlinedAt: !4970)
!4973 = !DILocation(line: 45, column: 7, scope: !4890, inlinedAt: !4970)
!4974 = !DILocation(line: 47, column: 7, scope: !4922, inlinedAt: !4970)
!4975 = !DILocation(line: 47, column: 13, scope: !4922, inlinedAt: !4970)
!4976 = !DILocation(line: 145, column: 7, scope: !700)
!4977 = !DILocation(line: 144, column: 31, scope: !700)
!4978 = !DILocation(line: 51, column: 26, scope: !4890, inlinedAt: !4970)
!4979 = !DILocation(line: 51, column: 10, scope: !4890, inlinedAt: !4970)
!4980 = !DILocation(line: 145, column: 9, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !700, file: !699, line: 145, column: 7)
!4982 = !DILocation(line: 150, column: 42, scope: !700)
!4983 = !DILocation(line: 150, column: 35, scope: !700)
!4984 = !DILocation(line: 151, column: 35, scope: !700)
!4985 = !DILocation(line: 150, column: 11, scope: !700)
!4986 = !DILocation(line: 153, column: 10, scope: !721)
!4987 = !DILocation(line: 153, column: 7, scope: !700)
!4988 = !DILocation(line: 156, column: 25, scope: !720)
!4989 = !DILocation(line: 156, column: 11, scope: !720)
!4990 = !DILocation(line: 157, column: 7, scope: !720)
!4991 = !DILocation(line: 158, column: 13, scope: !720)
!4992 = !DILocation(line: 162, column: 17, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !700, file: !699, line: 162, column: 7)
!4994 = !DILocation(line: 164, column: 10, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4993, file: !699, line: 163, column: 5)
!4996 = !DILocation(line: 165, column: 9, scope: !4995)
!4997 = !DILocation(line: 166, column: 5, scope: !4995)
!4998 = !DILocation(line: 167, column: 11, scope: !700)
!4999 = !DILocation(line: 185, column: 9, scope: !724)
!5000 = !DILocation(line: 185, column: 7, scope: !700)
!5001 = !DILocation(line: 187, column: 21, scope: !723)
!5002 = !DILocation(line: 187, column: 13, scope: !723)
!5003 = !DILocation(line: 189, column: 29, scope: !723)
!5004 = !DILocation(line: 189, column: 14, scope: !723)
!5005 = !DILocation(line: 188, column: 14, scope: !723)
!5006 = !DILocation(line: 191, column: 31, scope: !5007)
!5007 = !DILexicalBlockFile(scope: !5008, file: !699, discriminator: 1)
!5008 = distinct !DILexicalBlock(scope: !5009, file: !699, line: 191, column: 7)
!5009 = distinct !DILexicalBlock(scope: !723, file: !699, line: 191, column: 7)
!5010 = !DILocation(line: 191, column: 7, scope: !5011)
!5011 = !DILexicalBlockFile(scope: !5009, file: !699, discriminator: 1)
!5012 = !DILocation(line: 193, column: 15, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !699, line: 193, column: 15)
!5014 = distinct !DILexicalBlock(scope: !5008, file: !699, line: 192, column: 9)
!5015 = !DILocation(line: 193, column: 21, scope: !5013)
!5016 = !DILocation(line: 193, column: 39, scope: !5017)
!5017 = !DILexicalBlockFile(scope: !5013, file: !699, discriminator: 1)
!5018 = !DILocation(line: 193, column: 30, scope: !5013)
!5019 = !DILocation(line: 194, column: 15, scope: !5013)
!5020 = distinct !{!5020, !5021, !5022}
!5021 = !DILocation(line: 191, column: 7, scope: !5009)
!5022 = !DILocation(line: 197, column: 9, scope: !5009)
!5023 = !DILocation(line: 196, column: 14, scope: !5013)
!5024 = !DILocation(line: 196, column: 18, scope: !5013)
!5025 = !DILocation(line: 201, column: 1, scope: !700)
!5026 = distinct !DISubprogram(name: "rpl_fclose", scope: !5027, file: !5027, line: 56, type: !5028, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !730, variables: !5070)
!5027 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!69, !5030}
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3650, line: 49, baseType: !5032)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3652, line: 241, size: 1728, elements: !5033)
!5033 = !{!5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5032, file: !3652, line: 242, baseType: !69, size: 32)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5032, file: !3652, line: 247, baseType: !67, size: 64, offset: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5032, file: !3652, line: 248, baseType: !67, size: 64, offset: 128)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5032, file: !3652, line: 249, baseType: !67, size: 64, offset: 192)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5032, file: !3652, line: 250, baseType: !67, size: 64, offset: 256)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5032, file: !3652, line: 251, baseType: !67, size: 64, offset: 320)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5032, file: !3652, line: 252, baseType: !67, size: 64, offset: 384)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5032, file: !3652, line: 253, baseType: !67, size: 64, offset: 448)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5032, file: !3652, line: 254, baseType: !67, size: 64, offset: 512)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5032, file: !3652, line: 256, baseType: !67, size: 64, offset: 576)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5032, file: !3652, line: 257, baseType: !67, size: 64, offset: 640)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5032, file: !3652, line: 258, baseType: !67, size: 64, offset: 704)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5032, file: !3652, line: 260, baseType: !5047, size: 64, offset: 768)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3652, line: 156, size: 192, elements: !5049)
!5049 = !{!5050, !5051, !5053}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5048, file: !3652, line: 157, baseType: !5047, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5048, file: !3652, line: 158, baseType: !5052, size: 64, offset: 64)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5048, file: !3652, line: 162, baseType: !69, size: 32, offset: 128)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5032, file: !3652, line: 262, baseType: !5052, size: 64, offset: 832)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5032, file: !3652, line: 264, baseType: !69, size: 32, offset: 896)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5032, file: !3652, line: 268, baseType: !69, size: 32, offset: 928)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5032, file: !3652, line: 270, baseType: !3678, size: 64, offset: 960)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5032, file: !3652, line: 274, baseType: !84, size: 16, offset: 1024)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5032, file: !3652, line: 275, baseType: !3681, size: 8, offset: 1040)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5032, file: !3652, line: 276, baseType: !3683, size: 8, offset: 1048)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5032, file: !3652, line: 280, baseType: !3687, size: 64, offset: 1088)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5032, file: !3652, line: 289, baseType: !3690, size: 64, offset: 1152)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5032, file: !3652, line: 297, baseType: !54, size: 64, offset: 1216)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5032, file: !3652, line: 298, baseType: !54, size: 64, offset: 1280)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5032, file: !3652, line: 299, baseType: !54, size: 64, offset: 1344)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5032, file: !3652, line: 300, baseType: !54, size: 64, offset: 1408)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5032, file: !3652, line: 302, baseType: !56, size: 64, offset: 1472)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5032, file: !3652, line: 303, baseType: !69, size: 32, offset: 1536)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5032, file: !3652, line: 305, baseType: !3698, size: 160, offset: 1568)
!5070 = !{!5071, !5072, !5073, !5074}
!5071 = !DILocalVariable(name: "fp", arg: 1, scope: !5026, file: !5027, line: 56, type: !5030)
!5072 = !DILocalVariable(name: "saved_errno", scope: !5026, file: !5027, line: 58, type: !69)
!5073 = !DILocalVariable(name: "fd", scope: !5026, file: !5027, line: 59, type: !69)
!5074 = !DILocalVariable(name: "result", scope: !5026, file: !5027, line: 60, type: !69)
!5075 = !DILocation(line: 56, column: 19, scope: !5026)
!5076 = !DILocation(line: 58, column: 7, scope: !5026)
!5077 = !DILocation(line: 60, column: 7, scope: !5026)
!5078 = !DILocation(line: 63, column: 8, scope: !5026)
!5079 = !DILocation(line: 59, column: 7, scope: !5026)
!5080 = !DILocation(line: 64, column: 10, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5026, file: !5027, line: 64, column: 7)
!5082 = !DILocation(line: 64, column: 7, scope: !5026)
!5083 = !DILocation(line: 65, column: 12, scope: !5081)
!5084 = !DILocation(line: 65, column: 5, scope: !5081)
!5085 = !DILocation(line: 70, column: 9, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5026, file: !5027, line: 70, column: 7)
!5087 = !DILocation(line: 70, column: 23, scope: !5086)
!5088 = !DILocation(line: 70, column: 33, scope: !5089)
!5089 = !DILexicalBlockFile(scope: !5086, file: !5027, discriminator: 1)
!5090 = !DILocation(line: 70, column: 26, scope: !5091)
!5091 = !DILexicalBlockFile(scope: !5086, file: !5027, discriminator: 3)
!5092 = !DILocation(line: 70, column: 59, scope: !5089)
!5093 = !DILocation(line: 71, column: 7, scope: !5086)
!5094 = !DILocation(line: 71, column: 10, scope: !5089)
!5095 = !DILocation(line: 70, column: 7, scope: !5096)
!5096 = !DILexicalBlockFile(scope: !5026, file: !5027, discriminator: 2)
!5097 = !DILocation(line: 98, column: 12, scope: !5026)
!5098 = !DILocation(line: 103, column: 7, scope: !5026)
!5099 = !DILocation(line: 72, column: 19, scope: !5086)
!5100 = !DILocation(line: 103, column: 19, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5026, file: !5027, line: 103, column: 7)
!5102 = !DILocation(line: 105, column: 13, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5101, file: !5027, line: 104, column: 5)
!5104 = !DILocation(line: 107, column: 5, scope: !5103)
!5105 = !DILocation(line: 110, column: 1, scope: !5026)
!5106 = distinct !DISubprogram(name: "rpl_fflush", scope: !5107, file: !5107, line: 127, type: !5108, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !732, variables: !5150)
!5107 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!69, !5110}
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3650, line: 49, baseType: !5112)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3652, line: 241, size: 1728, elements: !5113)
!5113 = !{!5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5112, file: !3652, line: 242, baseType: !69, size: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5112, file: !3652, line: 247, baseType: !67, size: 64, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5112, file: !3652, line: 248, baseType: !67, size: 64, offset: 128)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5112, file: !3652, line: 249, baseType: !67, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5112, file: !3652, line: 250, baseType: !67, size: 64, offset: 256)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5112, file: !3652, line: 251, baseType: !67, size: 64, offset: 320)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5112, file: !3652, line: 252, baseType: !67, size: 64, offset: 384)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5112, file: !3652, line: 253, baseType: !67, size: 64, offset: 448)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5112, file: !3652, line: 254, baseType: !67, size: 64, offset: 512)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5112, file: !3652, line: 256, baseType: !67, size: 64, offset: 576)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5112, file: !3652, line: 257, baseType: !67, size: 64, offset: 640)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5112, file: !3652, line: 258, baseType: !67, size: 64, offset: 704)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5112, file: !3652, line: 260, baseType: !5127, size: 64, offset: 768)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3652, line: 156, size: 192, elements: !5129)
!5129 = !{!5130, !5131, !5133}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5128, file: !3652, line: 157, baseType: !5127, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5128, file: !3652, line: 158, baseType: !5132, size: 64, offset: 64)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5128, file: !3652, line: 162, baseType: !69, size: 32, offset: 128)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5112, file: !3652, line: 262, baseType: !5132, size: 64, offset: 832)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5112, file: !3652, line: 264, baseType: !69, size: 32, offset: 896)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5112, file: !3652, line: 268, baseType: !69, size: 32, offset: 928)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5112, file: !3652, line: 270, baseType: !3678, size: 64, offset: 960)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5112, file: !3652, line: 274, baseType: !84, size: 16, offset: 1024)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5112, file: !3652, line: 275, baseType: !3681, size: 8, offset: 1040)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5112, file: !3652, line: 276, baseType: !3683, size: 8, offset: 1048)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5112, file: !3652, line: 280, baseType: !3687, size: 64, offset: 1088)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5112, file: !3652, line: 289, baseType: !3690, size: 64, offset: 1152)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5112, file: !3652, line: 297, baseType: !54, size: 64, offset: 1216)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5112, file: !3652, line: 298, baseType: !54, size: 64, offset: 1280)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5112, file: !3652, line: 299, baseType: !54, size: 64, offset: 1344)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5112, file: !3652, line: 300, baseType: !54, size: 64, offset: 1408)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5112, file: !3652, line: 302, baseType: !56, size: 64, offset: 1472)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5112, file: !3652, line: 303, baseType: !69, size: 32, offset: 1536)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5112, file: !3652, line: 305, baseType: !3698, size: 160, offset: 1568)
!5150 = !{!5151}
!5151 = !DILocalVariable(name: "stream", arg: 1, scope: !5106, file: !5107, line: 127, type: !5110)
!5152 = !DILocation(line: 127, column: 19, scope: !5106)
!5153 = !DILocation(line: 148, column: 14, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5106, file: !5107, line: 148, column: 7)
!5155 = !DILocation(line: 148, column: 22, scope: !5154)
!5156 = !DILocation(line: 148, column: 27, scope: !5157)
!5157 = !DILexicalBlockFile(scope: !5154, file: !5107, discriminator: 1)
!5158 = !DILocation(line: 148, column: 7, scope: !5159)
!5159 = !DILexicalBlockFile(scope: !5106, file: !5107, discriminator: 1)
!5160 = !DILocation(line: 149, column: 12, scope: !5154)
!5161 = !DILocation(line: 149, column: 5, scope: !5154)
!5162 = !DILocalVariable(name: "fp", arg: 1, scope: !5163, file: !5107, line: 40, type: !5110)
!5163 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5107, file: !5107, line: 40, type: !5164, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !732, variables: !5166)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{null, !5110}
!5166 = !{!5162}
!5167 = !DILocation(line: 40, column: 48, scope: !5163, inlinedAt: !5168)
!5168 = distinct !DILocation(line: 153, column: 3, scope: !5106)
!5169 = !DILocation(line: 42, column: 11, scope: !5170, inlinedAt: !5168)
!5170 = distinct !DILexicalBlock(scope: !5163, file: !5107, line: 42, column: 7)
!5171 = !DILocation(line: 42, column: 18, scope: !5170, inlinedAt: !5168)
!5172 = !DILocation(line: 42, column: 7, scope: !5163, inlinedAt: !5168)
!5173 = !DILocation(line: 44, column: 5, scope: !5170, inlinedAt: !5168)
!5174 = !DILocation(line: 155, column: 10, scope: !5106)
!5175 = !DILocation(line: 155, column: 3, scope: !5106)
!5176 = !DILocation(line: 229, column: 1, scope: !5106)
!5177 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5178, file: !5178, line: 28, type: !5179, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !734, variables: !5222)
!5178 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!69, !5181, !5221, !69}
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3650, line: 49, baseType: !5183)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3652, line: 241, size: 1728, elements: !5184)
!5184 = !{!5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5183, file: !3652, line: 242, baseType: !69, size: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5183, file: !3652, line: 247, baseType: !67, size: 64, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5183, file: !3652, line: 248, baseType: !67, size: 64, offset: 128)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5183, file: !3652, line: 249, baseType: !67, size: 64, offset: 192)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5183, file: !3652, line: 250, baseType: !67, size: 64, offset: 256)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5183, file: !3652, line: 251, baseType: !67, size: 64, offset: 320)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5183, file: !3652, line: 252, baseType: !67, size: 64, offset: 384)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5183, file: !3652, line: 253, baseType: !67, size: 64, offset: 448)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5183, file: !3652, line: 254, baseType: !67, size: 64, offset: 512)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5183, file: !3652, line: 256, baseType: !67, size: 64, offset: 576)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5183, file: !3652, line: 257, baseType: !67, size: 64, offset: 640)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5183, file: !3652, line: 258, baseType: !67, size: 64, offset: 704)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5183, file: !3652, line: 260, baseType: !5198, size: 64, offset: 768)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3652, line: 156, size: 192, elements: !5200)
!5200 = !{!5201, !5202, !5204}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5199, file: !3652, line: 157, baseType: !5198, size: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5199, file: !3652, line: 158, baseType: !5203, size: 64, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5199, file: !3652, line: 162, baseType: !69, size: 32, offset: 128)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5183, file: !3652, line: 262, baseType: !5203, size: 64, offset: 832)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5183, file: !3652, line: 264, baseType: !69, size: 32, offset: 896)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5183, file: !3652, line: 268, baseType: !69, size: 32, offset: 928)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5183, file: !3652, line: 270, baseType: !3678, size: 64, offset: 960)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5183, file: !3652, line: 274, baseType: !84, size: 16, offset: 1024)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5183, file: !3652, line: 275, baseType: !3681, size: 8, offset: 1040)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5183, file: !3652, line: 276, baseType: !3683, size: 8, offset: 1048)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5183, file: !3652, line: 280, baseType: !3687, size: 64, offset: 1088)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5183, file: !3652, line: 289, baseType: !3690, size: 64, offset: 1152)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5183, file: !3652, line: 297, baseType: !54, size: 64, offset: 1216)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5183, file: !3652, line: 298, baseType: !54, size: 64, offset: 1280)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5183, file: !3652, line: 299, baseType: !54, size: 64, offset: 1344)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5183, file: !3652, line: 300, baseType: !54, size: 64, offset: 1408)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5183, file: !3652, line: 302, baseType: !56, size: 64, offset: 1472)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5183, file: !3652, line: 303, baseType: !69, size: 32, offset: 1536)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5183, file: !3652, line: 305, baseType: !3698, size: 160, offset: 1568)
!5221 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3650, line: 91, baseType: !3678)
!5222 = !{!5223, !5224, !5225, !5226}
!5223 = !DILocalVariable(name: "fp", arg: 1, scope: !5177, file: !5178, line: 28, type: !5181)
!5224 = !DILocalVariable(name: "offset", arg: 2, scope: !5177, file: !5178, line: 28, type: !5221)
!5225 = !DILocalVariable(name: "whence", arg: 3, scope: !5177, file: !5178, line: 28, type: !69)
!5226 = !DILocalVariable(name: "pos", scope: !5227, file: !5178, line: 116, type: !5221)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !5178, line: 112, column: 5)
!5228 = distinct !DILexicalBlock(scope: !5177, file: !5178, line: 51, column: 7)
!5229 = !DILocation(line: 28, column: 15, scope: !5177)
!5230 = !DILocation(line: 28, column: 25, scope: !5177)
!5231 = !DILocation(line: 28, column: 37, scope: !5177)
!5232 = !DILocation(line: 51, column: 11, scope: !5228)
!5233 = !DILocation(line: 51, column: 31, scope: !5228)
!5234 = !DILocation(line: 51, column: 24, scope: !5228)
!5235 = !DILocation(line: 52, column: 7, scope: !5228)
!5236 = !DILocation(line: 52, column: 14, scope: !5237)
!5237 = !DILexicalBlockFile(scope: !5228, file: !5178, discriminator: 1)
!5238 = !{!4507, !755, i64 40}
!5239 = !DILocation(line: 52, column: 35, scope: !5237)
!5240 = !{!4507, !755, i64 32}
!5241 = !DILocation(line: 52, column: 28, scope: !5237)
!5242 = !DILocation(line: 53, column: 7, scope: !5228)
!5243 = !DILocation(line: 53, column: 14, scope: !5237)
!5244 = !{!4507, !755, i64 72}
!5245 = !DILocation(line: 53, column: 28, scope: !5237)
!5246 = !DILocation(line: 51, column: 7, scope: !5247)
!5247 = !DILexicalBlockFile(scope: !5177, file: !5178, discriminator: 1)
!5248 = !DILocation(line: 116, column: 26, scope: !5227)
!5249 = !DILocation(line: 116, column: 19, scope: !5250)
!5250 = !DILexicalBlockFile(scope: !5227, file: !5178, discriminator: 1)
!5251 = !DILocation(line: 116, column: 13, scope: !5227)
!5252 = !DILocation(line: 117, column: 15, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5227, file: !5178, line: 117, column: 11)
!5254 = !DILocation(line: 117, column: 11, scope: !5227)
!5255 = !DILocation(line: 127, column: 11, scope: !5227)
!5256 = !DILocation(line: 127, column: 18, scope: !5227)
!5257 = !DILocation(line: 128, column: 11, scope: !5227)
!5258 = !DILocation(line: 128, column: 19, scope: !5227)
!5259 = !{!4507, !884, i64 144}
!5260 = !DILocation(line: 159, column: 7, scope: !5227)
!5261 = !DILocation(line: 161, column: 10, scope: !5177)
!5262 = !DILocation(line: 161, column: 3, scope: !5177)
!5263 = !DILocation(line: 162, column: 1, scope: !5177)
