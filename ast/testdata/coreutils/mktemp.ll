; ModuleID = 'coreutils-8.27/src/mktemp.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.randint_source = type { %struct.randread_source*, i64, i64 }
%struct.randread_source = type { %struct._IO_FILE*, void (i8*)*, i8*, %union.anon.21 }
%union.anon.21 = type { %struct.isaac }
%struct.isaac = type { i64, %struct.isaac_state, %union.anon.0 }
%struct.isaac_state = type { [256 x i64], i64, i64, i64 }
%union.anon.0 = type { [256 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.timezone = type { i32, i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Usage: %s [OPTION]... [TEMPLATE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [211 x i8] c"Create a temporary file or directory, safely, and print its name.\0ATEMPLATE must contain at least 3 consecutive 'X's in last component.\0AIf TEMPLATE is not specified, use tmp.XXXXXXXXXX, and --tmpdir is implied.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"Files are created u+rw, and directories u+rwx, minus umask restrictions.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [204 x i8] c"  -d, --directory     create a directory, not a file\0A  -u, --dry-run       do not create anything; merely print a name (unsafe)\0A  -q, --quiet         suppress diagnostics about file/dir-creation failure\0A\00", align 1
@.str.6 = private unnamed_addr constant [156 x i8] c"      --suffix=SUFF   append SUFF to TEMPLATE; SUFF must not contain a slash.\0A                        This option is implied if TEMPLATE does not end in X\0A\00", align 1
@.str.7 = private unnamed_addr constant [363 x i8] c"  -p DIR, --tmpdir[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not\0A                        specified, use $TMPDIR if set, else /tmp.  With\0A                        this option, TEMPLATE must not be an absolute name;\0A                        unlike with -t, TEMPLATE may contain slashes, but\0A                        mktemp creates only the final component\0A\00", align 1
@.str.8 = private unnamed_addr constant [225 x i8] c"  -t                  interpret TEMPLATE as a single file name component,\0A                        relative to a directory: $TMPDIR, if set; else the\0A                        directory specified via -p; else /tmp [deprecated]\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"dp:qtuV\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 2, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Eric Blake\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"too many templates\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"tmp.XXXXXXXXXX\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"with --suffix, template %s must end in X\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"invalid suffix %s, contains directory separator\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"too few X's in template %s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"invalid template, %s, contains directory separator\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"invalid template, %s; with --tmpdir, it may not be absolute\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"failed to create directory via template %s\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"failed to create file via template %s\00", align 1
@stdout_closed = internal unnamed_addr global i1 false, align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"dry-run\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), align 8, !dbg !68
@.str.30 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !73
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !78
@.str.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !81
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !88
@.str.53 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.65, i32 0, i32 0), i8* null], align 16, !dbg !95
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !137
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !144
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !155
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.69 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.70 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.71 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.72 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !162
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !169
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !157
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !171
@.str.2.77 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16, !dbg !177
@.str.80 = private unnamed_addr constant [35 x i8] c"! \22invalid KIND in __gen_tempname\22\00", align 1
@.str.1.81 = private unnamed_addr constant [15 x i8] c"lib/tempname.c\00", align 1
@__PRETTY_FUNCTION__.gen_tempname_len = private unnamed_addr constant [52 x i8] c"int gen_tempname_len(char *, int, int, int, size_t)\00", align 1
@switch.table = private unnamed_addr constant [3 x i32 (i8*, i8*)*] [i32 (i8*, i8*)* @try_file, i32 (i8*, i8*)* @try_dir, i32 (i8*, i8*)* @try_nocreate]
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !186
@.str.1.116 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.133 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !195
@.str.3.134 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.135 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.136 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.137 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.138 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.149 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1.150 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.151 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !543

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !700 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !704, metadata !705), !dbg !706
  %2 = icmp eq i32 %0, 0, !dbg !707
  br i1 %2, label %8, label %3, !dbg !709

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !710, !tbaa !713
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !710
  %6 = load i8*, i8** @program_name, align 8, !dbg !710, !tbaa !713
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !717
  br label %53, !dbg !719

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !721
  %10 = load i8*, i8** @program_name, align 8, !dbg !721, !tbaa !713
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !723
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !725
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !725, !tbaa !713
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !726
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !727
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !727, !tbaa !713
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !728
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !713
  %19 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %18) #11, !dbg !729
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !730
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !713
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #11, !dbg !731
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !732
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !732, !tbaa !713
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #11, !dbg !733
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !734
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !713
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #11, !dbg !735
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([225 x i8], [225 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !736
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !713
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #11, !dbg !737
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !738
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !713
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #11, !dbg !739
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !740
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !713
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36) #11, !dbg !741
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !31, metadata !705) #11, !dbg !742
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 0, metadata !31, metadata !705) #11, !dbg !742
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !744
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #11, !dbg !745
  %40 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !747
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !42, metadata !705) #11, !dbg !748
  %41 = icmp eq i8* %40, null, !dbg !749
  br i1 %41, label %48, label %42, !dbg !750

; <label>:42:                                     ; preds = %8
  %43 = tail call i32 @strncmp(i8* nonnull %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #13, !dbg !751
  %44 = icmp eq i32 %43, 0, !dbg !751
  br i1 %44, label %48, label %45, !dbg !753

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !755
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !757
  br label %48, !dbg !759

; <label>:48:                                     ; preds = %8, %42, %45
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !760
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !761
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !762
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #11, !dbg !763
  br label %53

; <label>:53:                                     ; preds = %48, %3
  tail call void @exit(i32 %0) #14, !dbg !764
  unreachable, !dbg !764
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !765 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !770, metadata !705), !dbg !809
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !771, metadata !705), !dbg !810
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !773, metadata !705), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !774, metadata !705), !dbg !812
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !778, metadata !705), !dbg !813
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !779, metadata !705), !dbg !814
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !780, metadata !705), !dbg !815
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !781, metadata !705), !dbg !816
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !782, metadata !705), !dbg !817
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !783, metadata !705), !dbg !818
  %3 = load i8*, i8** %1, align 8, !dbg !819, !tbaa !713
  tail call void @set_program_name(i8* %3) #11, !dbg !820
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !821
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !822
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !823
  %7 = tail call i32 @atexit(void ()* nonnull @maybe_close_stdout) #11, !dbg !824
  br label %9, !dbg !825

; <label>:8:                                      ; preds = %39
  br label %9, !dbg !811

; <label>:9:                                      ; preds = %8, %2
  %10 = phi i8 [ 0, %2 ], [ 1, %8 ]
  %11 = phi i8 [ 0, %2 ], [ %18, %8 ]
  %12 = phi i8 [ 0, %2 ], [ %26, %8 ]
  %13 = phi i8* [ null, %2 ], [ %37, %8 ]
  %14 = phi i8 [ 0, %2 ], [ %40, %8 ]
  %15 = phi i8* [ null, %2 ], [ %35, %8 ]
  br label %17, !dbg !811

; <label>:16:                                     ; preds = %39
  br label %17, !dbg !811

; <label>:17:                                     ; preds = %16, %9
  %18 = phi i8 [ %11, %9 ], [ 1, %16 ]
  %19 = phi i8 [ %12, %9 ], [ %26, %16 ]
  %20 = phi i8 [ %10, %9 ], [ %32, %16 ]
  %21 = phi i8* [ %13, %9 ], [ %37, %16 ]
  %22 = phi i8 [ %14, %9 ], [ %40, %16 ]
  %23 = phi i8* [ %15, %9 ], [ %35, %16 ]
  br label %25, !dbg !811

; <label>:24:                                     ; preds = %39
  br label %25, !dbg !811

; <label>:25:                                     ; preds = %24, %17
  %26 = phi i8 [ %19, %17 ], [ 1, %24 ]
  %27 = phi i8 [ %20, %17 ], [ %32, %24 ]
  %28 = phi i8* [ %21, %17 ], [ %37, %24 ]
  %29 = phi i8 [ %22, %17 ], [ %40, %24 ]
  %30 = phi i8* [ %23, %17 ], [ %35, %24 ]
  br label %31, !dbg !811

; <label>:31:                                     ; preds = %25, %42
  %32 = phi i8 [ %27, %25 ], [ 1, %42 ]
  %33 = phi i8* [ %28, %25 ], [ %37, %42 ]
  %34 = phi i8 [ %29, %25 ], [ %40, %42 ]
  %35 = phi i8* [ %30, %25 ], [ %43, %42 ]
  br label %36, !dbg !811

; <label>:36:                                     ; preds = %31, %44
  %37 = phi i8* [ %33, %31 ], [ %45, %44 ]
  %38 = phi i8 [ %34, %31 ], [ %40, %44 ]
  br label %39, !dbg !811

; <label>:39:                                     ; preds = %39, %36
  %40 = phi i8 [ %38, %36 ], [ 1, %39 ]
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !773, metadata !705), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !774, metadata !705), !dbg !812
  tail call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !778, metadata !705), !dbg !813
  tail call void @llvm.dbg.value(metadata i8 %32, i64 0, metadata !779, metadata !705), !dbg !814
  tail call void @llvm.dbg.value(metadata i8 %26, i64 0, metadata !782, metadata !705), !dbg !817
  tail call void @llvm.dbg.value(metadata i8 %18, i64 0, metadata !781, metadata !705), !dbg !816
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !780, metadata !705), !dbg !815
  %41 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !826
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !775, metadata !705), !dbg !828
  switch i32 %41, label %50 [
    i32 -1, label %51
    i32 100, label %16
    i32 112, label %42
    i32 113, label %39
    i32 116, label %8
    i32 117, label %24
    i32 128, label %44
    i32 -130, label %46
    i32 86, label %47
    i32 -131, label %47
  ], !dbg !829, !llvm.loop !830

; <label>:42:                                     ; preds = %39
  %43 = load i8*, i8** @optarg, align 8, !dbg !832, !tbaa !713
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !773, metadata !705), !dbg !811
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !779, metadata !705), !dbg !814
  br label %31, !dbg !835, !llvm.loop !830

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** @optarg, align 8, !dbg !836, !tbaa !713
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !778, metadata !705), !dbg !813
  br label %36, !dbg !837, !llvm.loop !830

; <label>:46:                                     ; preds = %39
  tail call void @usage(i32 0) #15, !dbg !838
  unreachable, !dbg !838

; <label>:47:                                     ; preds = %39, %39
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !839, !tbaa !713
  %49 = load i8*, i8** @Version, align 8, !dbg !839, !tbaa !713
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* null) #11, !dbg !839
  tail call void @exit(i32 0) #14, !dbg !840
  unreachable, !dbg !839

; <label>:50:                                     ; preds = %39
  tail call void @usage(i32 1) #15, !dbg !842
  unreachable, !dbg !842

; <label>:51:                                     ; preds = %39
  %52 = load i32, i32* @optind, align 4, !dbg !843, !tbaa !844
  %53 = sub nsw i32 %0, %52, !dbg !846
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !776, metadata !705), !dbg !847
  %54 = icmp ugt i32 %53, 1, !dbg !848
  br i1 %54, label %55, label %57, !dbg !850

; <label>:55:                                     ; preds = %51
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !851
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %56) #11, !dbg !853
  tail call void @usage(i32 1) #15, !dbg !855
  unreachable, !dbg !855

; <label>:57:                                     ; preds = %51
  %58 = icmp eq i32 %53, 0, !dbg !856
  br i1 %58, label %63, label %59, !dbg !858

; <label>:59:                                     ; preds = %57
  %60 = sext i32 %52 to i64, !dbg !859
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !859
  %62 = load i8*, i8** %61, align 8, !dbg !859, !tbaa !713
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !777, metadata !705), !dbg !861
  br label %63

; <label>:63:                                     ; preds = %57, %59
  %64 = phi i8 [ %32, %59 ], [ 1, %57 ]
  %65 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), %57 ]
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !777, metadata !705), !dbg !861
  tail call void @llvm.dbg.value(metadata i8 %64, i64 0, metadata !779, metadata !705), !dbg !814
  %66 = icmp eq i8* %37, null, !dbg !862
  br i1 %66, label %85, label %67, !dbg !863

; <label>:67:                                     ; preds = %63
  %68 = tail call i64 @strlen(i8* %65) #13, !dbg !864
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !787, metadata !705), !dbg !865
  %69 = icmp eq i64 %68, 0, !dbg !866
  br i1 %69, label %75, label %70, !dbg !868

; <label>:70:                                     ; preds = %67
  %71 = add i64 %68, -1, !dbg !869
  %72 = getelementptr inbounds i8, i8* %65, i64 %71, !dbg !871
  %73 = load i8, i8* %72, align 1, !dbg !871, !tbaa !872
  %74 = icmp eq i8 %73, 88, !dbg !873
  br i1 %74, label %78, label %75, !dbg !874

; <label>:75:                                     ; preds = %70, %67
  %76 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !876
  %77 = tail call i8* @quote(i8* %65) #11, !dbg !878
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %76, i8* %77) #11, !dbg !880
  unreachable, !dbg !876

; <label>:78:                                     ; preds = %70
  %79 = tail call i64 @strlen(i8* nonnull %37) #13, !dbg !882
  tail call void @llvm.dbg.value(metadata i64 %79, i64 0, metadata !785, metadata !705), !dbg !883
  %80 = add i64 %68, 1, !dbg !884
  %81 = add i64 %80, %79, !dbg !885
  tail call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !886, metadata !705) #11, !dbg !891
  %82 = tail call noalias i8* @xmalloc(i64 %81) #11, !dbg !893
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !786, metadata !705), !dbg !894
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* nonnull %65, i64 %68, i32 1, i1 false), !dbg !895
  %83 = getelementptr inbounds i8, i8* %82, i64 %68, !dbg !896
  %84 = add i64 %79, 1, !dbg !897
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* nonnull %37, i64 %84, i32 1, i1 false), !dbg !898
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !777, metadata !705), !dbg !861
  tail call void @llvm.dbg.value(metadata i8* %83, i64 0, metadata !778, metadata !705), !dbg !813
  br label %96, !dbg !899

; <label>:85:                                     ; preds = %63
  %86 = tail call noalias i8* @xstrdup(i8* %65) #11, !dbg !900
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !777, metadata !705), !dbg !861
  %87 = tail call i8* @strrchr(i8* %86, i32 88) #13, !dbg !902
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !778, metadata !705), !dbg !813
  %88 = icmp eq i8* %87, null, !dbg !903
  br i1 %88, label %89, label %91, !dbg !905

; <label>:89:                                     ; preds = %85
  %90 = tail call i8* @__rawmemchr(i8* %86, i32 0) #11, !dbg !906
  tail call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !778, metadata !705), !dbg !813
  br label %93, !dbg !907

; <label>:91:                                     ; preds = %85
  %92 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !908
  tail call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !778, metadata !705), !dbg !813
  br label %93

; <label>:93:                                     ; preds = %91, %89
  %94 = phi i8* [ %92, %91 ], [ %90, %89 ]
  tail call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !778, metadata !705), !dbg !813
  %95 = tail call i64 @strlen(i8* %94) #13, !dbg !909
  tail call void @llvm.dbg.value(metadata i64 %95, i64 0, metadata !785, metadata !705), !dbg !883
  br label %96

; <label>:96:                                     ; preds = %93, %78
  %97 = phi i64 [ %79, %78 ], [ %95, %93 ]
  %98 = phi i8* [ %83, %78 ], [ %94, %93 ]
  %99 = phi i8* [ %82, %78 ], [ %86, %93 ]
  tail call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !777, metadata !705), !dbg !861
  tail call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !778, metadata !705), !dbg !813
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !785, metadata !705), !dbg !883
  %100 = icmp eq i64 %97, 0, !dbg !910
  br i1 %100, label %107, label %101, !dbg !912

; <label>:101:                                    ; preds = %96
  %102 = tail call i8* @last_component(i8* %98) #13, !dbg !913
  %103 = icmp eq i8* %102, %98, !dbg !915
  br i1 %103, label %107, label %104, !dbg !916

; <label>:104:                                    ; preds = %101
  %105 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !917
  %106 = tail call i8* @quote(i8* %98) #11, !dbg !919
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %105, i8* %106) #11, !dbg !921
  unreachable, !dbg !917

; <label>:107:                                    ; preds = %101, %96
  %108 = ptrtoint i8* %98 to i64, !dbg !923
  %109 = ptrtoint i8* %99 to i64, !dbg !923
  %110 = sub i64 %108, %109, !dbg !923
  tail call void @llvm.dbg.value(metadata i8* %99, i64 0, metadata !924, metadata !705), !dbg !931
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !929, metadata !705), !dbg !933
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !930, metadata !705), !dbg !934
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !930, metadata !705), !dbg !934
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !929, metadata !705), !dbg !933
  %111 = icmp eq i64 %110, 0, !dbg !935
  br i1 %111, label %126, label %112, !dbg !939

; <label>:112:                                    ; preds = %107
  br label %113, !dbg !940

; <label>:113:                                    ; preds = %112, %120
  %114 = phi i64 [ %121, %120 ], [ 0, %112 ]
  %115 = phi i64 [ %116, %120 ], [ %110, %112 ]
  %116 = add i64 %115, -1, !dbg !940
  %117 = getelementptr inbounds i8, i8* %99, i64 %116, !dbg !942
  %118 = load i8, i8* %117, align 1, !dbg !942, !tbaa !872
  %119 = icmp eq i8 %118, 88, !dbg !943
  br i1 %119, label %120, label %123, !dbg !944

; <label>:120:                                    ; preds = %113
  %121 = add nuw i64 %114, 1, !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !930, metadata !705), !dbg !934
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !929, metadata !705), !dbg !933
  tail call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !930, metadata !705), !dbg !934
  tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !929, metadata !705), !dbg !933
  %122 = icmp eq i64 %116, 0, !dbg !935
  br i1 %122, label %123, label %113, !dbg !939, !llvm.loop !947

; <label>:123:                                    ; preds = %113, %120
  %124 = phi i64 [ %121, %120 ], [ %114, %113 ]
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !784, metadata !705), !dbg !950
  %125 = icmp ult i64 %124, 3, !dbg !951
  br i1 %125, label %126, label %129, !dbg !953

; <label>:126:                                    ; preds = %107, %123
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !954
  %128 = tail call i8* @quote(i8* %99) #11, !dbg !955
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %127, i8* %128) #11, !dbg !957
  unreachable, !dbg !954

; <label>:129:                                    ; preds = %123
  %130 = and i8 %64, 1, !dbg !959
  %131 = icmp eq i8 %130, 0, !dbg !959
  br i1 %131, label %175, label %132, !dbg !960

; <label>:132:                                    ; preds = %129
  %133 = icmp eq i8 %10, 0, !dbg !961
  br i1 %133, label %153, label %134, !dbg !962

; <label>:134:                                    ; preds = %132
  %135 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !963
  tail call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !790, metadata !705), !dbg !964
  %136 = icmp eq i8* %135, null, !dbg !965
  br i1 %136, label %140, label %137, !dbg !967

; <label>:137:                                    ; preds = %134
  %138 = load i8, i8* %135, align 1, !dbg !968, !tbaa !872
  %139 = icmp eq i8 %138, 0, !dbg !968
  br i1 %139, label %140, label %146, !dbg !970

; <label>:140:                                    ; preds = %137, %134
  %141 = icmp eq i8* %35, null, !dbg !972
  br i1 %141, label %145, label %142, !dbg !974

; <label>:142:                                    ; preds = %140
  %143 = load i8, i8* %35, align 1, !dbg !975, !tbaa !872
  %144 = icmp eq i8 %143, 0, !dbg !975
  br i1 %144, label %145, label %146, !dbg !977

; <label>:145:                                    ; preds = %142, %140
  br label %146

; <label>:146:                                    ; preds = %142, %137, %145
  %147 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %145 ], [ %135, %137 ], [ %35, %142 ]
  tail call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !772, metadata !705), !dbg !978
  %148 = tail call i8* @last_component(i8* %99) #13, !dbg !979
  %149 = icmp eq i8* %148, %99, !dbg !981
  br i1 %149, label %172, label %150, !dbg !982

; <label>:150:                                    ; preds = %146
  %151 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !983
  %152 = tail call i8* @quote(i8* %99) #11, !dbg !984
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %151, i8* %152) #11, !dbg !986
  unreachable, !dbg !983

; <label>:153:                                    ; preds = %132
  %154 = icmp eq i8* %35, null, !dbg !988
  br i1 %154, label %158, label %155, !dbg !989

; <label>:155:                                    ; preds = %153
  %156 = load i8, i8* %35, align 1, !dbg !990, !tbaa !872
  %157 = icmp eq i8 %156, 0, !dbg !990
  br i1 %157, label %158, label %165, !dbg !992

; <label>:158:                                    ; preds = %155, %153
  %159 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !994
  tail call void @llvm.dbg.value(metadata i8* %159, i64 0, metadata !795, metadata !705), !dbg !995
  %160 = icmp eq i8* %159, null, !dbg !996
  br i1 %160, label %165, label %161, !dbg !997

; <label>:161:                                    ; preds = %158
  %162 = load i8, i8* %159, align 1, !dbg !998, !tbaa !872
  %163 = icmp eq i8 %162, 0, !dbg !998
  %164 = select i1 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %159, !dbg !1000
  br label %165, !dbg !1000

; <label>:165:                                    ; preds = %161, %158, %155
  %166 = phi i8* [ %35, %155 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %158 ], [ %164, %161 ]
  tail call void @llvm.dbg.value(metadata i8* %166, i64 0, metadata !772, metadata !705), !dbg !978
  %167 = load i8, i8* %99, align 1, !dbg !1001, !tbaa !872
  %168 = icmp eq i8 %167, 47, !dbg !1001
  br i1 %168, label %169, label %172, !dbg !1003

; <label>:169:                                    ; preds = %165
  %170 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !1004
  %171 = tail call i8* @quote(i8* nonnull %99) #11, !dbg !1005
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %170, i8* %171) #11, !dbg !1007
  unreachable, !dbg !1004

; <label>:172:                                    ; preds = %146, %165
  %173 = phi i8* [ %166, %165 ], [ %147, %146 ]
  tail call void @llvm.dbg.value(metadata i8* %173, i64 0, metadata !772, metadata !705), !dbg !978
  %174 = tail call i8* @file_name_concat(i8* %173, i8* %99, i8** null) #11, !dbg !1009
  tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !786, metadata !705), !dbg !894
  tail call void @free(i8* %99) #11, !dbg !1010
  tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !777, metadata !705), !dbg !861
  br label %175, !dbg !1011

; <label>:175:                                    ; preds = %129, %172
  %176 = phi i8* [ %174, %172 ], [ %99, %129 ]
  tail call void @llvm.dbg.value(metadata i8* %176, i64 0, metadata !777, metadata !705), !dbg !861
  %177 = tail call noalias i8* @xstrdup(i8* %176) #11, !dbg !1012
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !786, metadata !705), !dbg !894
  %178 = icmp eq i8 %18, 0, !dbg !1013
  %179 = icmp ne i8 %26, 0
  %180 = trunc i64 %97 to i32
  br i1 %178, label %192, label %181, !dbg !1014

; <label>:181:                                    ; preds = %175
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !1015, metadata !705) #11, !dbg !1023
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !1020, metadata !705) #11, !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1021, metadata !705) #11, !dbg !1026
  tail call void @llvm.dbg.value(metadata i1 %179, i64 0, metadata !1022, metadata !1027) #11, !dbg !1028
  %182 = select i1 %179, i32 2, i32 1, !dbg !1029
  %183 = tail call i32 @gen_tempname_len(i8* %177, i32 %180, i32 0, i32 %182, i64 %124) #11, !dbg !1030
  tail call void @llvm.dbg.value(metadata i32 %183, i64 0, metadata !799, metadata !705), !dbg !1031
  %184 = icmp eq i32 %183, 0, !dbg !1032
  br i1 %184, label %211, label %185, !dbg !1034

; <label>:185:                                    ; preds = %181
  %186 = icmp eq i8 %40, 0, !dbg !1035
  br i1 %186, label %187, label %225, !dbg !1038

; <label>:187:                                    ; preds = %185
  %188 = tail call i32* @__errno_location() #1, !dbg !1039
  %189 = load i32, i32* %188, align 4, !dbg !1039, !tbaa !844
  %190 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !1040
  %191 = tail call i8* @quote(i8* %176) #11, !dbg !1042
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %189, i8* %190, i8* %191) #11, !dbg !1043
  br label %225, !dbg !1045

; <label>:192:                                    ; preds = %175
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !1046, metadata !705) #11, !dbg !1052
  tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !1049, metadata !705) #11, !dbg !1054
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1050, metadata !705) #11, !dbg !1055
  tail call void @llvm.dbg.value(metadata i1 %179, i64 0, metadata !1051, metadata !1027) #11, !dbg !1056
  %193 = select i1 %179, i32 2, i32 0, !dbg !1057
  %194 = tail call i32 @gen_tempname_len(i8* %177, i32 %180, i32 0, i32 %193, i64 %124) #11, !dbg !1058
  tail call void @llvm.dbg.value(metadata i32 %194, i64 0, metadata !802, metadata !705), !dbg !1059
  %195 = icmp slt i32 %194, 0, !dbg !1060
  br i1 %195, label %204, label %196, !dbg !1062

; <label>:196:                                    ; preds = %192
  br i1 %179, label %197, label %199, !dbg !1063

; <label>:197:                                    ; preds = %196
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !783, metadata !705), !dbg !818
  %198 = tail call i32 @puts(i8* %177), !dbg !1065
  br label %225, !dbg !1066

; <label>:199:                                    ; preds = %196
  %200 = tail call i32 @close(i32 %194) #11, !dbg !1067
  %201 = icmp eq i32 %200, 0, !dbg !1069
  br i1 %201, label %202, label %204, !dbg !1070

; <label>:202:                                    ; preds = %199
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !783, metadata !705), !dbg !818
  %203 = tail call i32 @puts(i8* %177), !dbg !1065
  br label %214, !dbg !1066

; <label>:204:                                    ; preds = %199, %192
  %205 = icmp eq i8 %40, 0, !dbg !1072
  br i1 %205, label %206, label %225, !dbg !1075

; <label>:206:                                    ; preds = %204
  %207 = tail call i32* @__errno_location() #1, !dbg !1076
  %208 = load i32, i32* %207, align 4, !dbg !1076, !tbaa !844
  %209 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !1077
  %210 = tail call i8* @quote(i8* %176) #11, !dbg !1079
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %208, i8* %209, i8* %210) #11, !dbg !1080
  br label %225, !dbg !1082

; <label>:211:                                    ; preds = %181
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !783, metadata !705), !dbg !818
  %212 = tail call i32 @puts(i8* %177), !dbg !1065
  %213 = icmp eq i8 %26, 0, !dbg !1083
  br i1 %213, label %214, label %225, !dbg !1066

; <label>:214:                                    ; preds = %202, %211
  store i1 true, i1* @stdout_closed, align 1
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1084, !tbaa !713
  %216 = tail call i32 @close_stream(%struct._IO_FILE* %215) #11, !dbg !1086
  %217 = icmp eq i32 %216, 0, !dbg !1087
  br i1 %217, label %225, label %218, !dbg !1088

; <label>:218:                                    ; preds = %214
  %219 = tail call i32* @__errno_location() #1, !dbg !1090
  %220 = load i32, i32* %219, align 4, !dbg !1090, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %220, i64 0, metadata !804, metadata !705), !dbg !1091
  %221 = tail call i32 @remove(i8* %177) #11, !dbg !1092
  %222 = icmp eq i8 %40, 0, !dbg !1093
  br i1 %222, label %223, label %225, !dbg !1095

; <label>:223:                                    ; preds = %218
  %224 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !1096
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %220, i8* %224) #11, !dbg !1097
  br label %225, !dbg !1099

; <label>:225:                                    ; preds = %206, %204, %187, %185, %197, %223, %218, %214, %211
  %226 = phi i32 [ 0, %211 ], [ 0, %214 ], [ 1, %218 ], [ 1, %223 ], [ 0, %197 ], [ 1, %185 ], [ 1, %187 ], [ 1, %204 ], [ 1, %206 ]
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !783, metadata !705), !dbg !818
  ret i32 %226, !dbg !1100
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @maybe_close_stdout() #6 !dbg !1101 {
  %1 = load i1, i1* @stdout_closed, align 1
  br i1 %1, label %3, label %2, !dbg !1104

; <label>:2:                                      ; preds = %0
  tail call void @close_stdout() #11, !dbg !1105
  br label %8, !dbg !1105

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1107, !tbaa !713
  %5 = tail call i32 @close_stream(%struct._IO_FILE* %4) #11, !dbg !1109
  %6 = icmp eq i32 %5, 0, !dbg !1110
  br i1 %6, label %8, label %7, !dbg !1111

; <label>:7:                                      ; preds = %3
  tail call void @_exit(i32 1) #14, !dbg !1112
  unreachable, !dbg !1112

; <label>:8:                                      ; preds = %3, %2
  ret void, !dbg !1113
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

declare i8* @__rawmemchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @remove(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !1114 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1172, metadata !705), !dbg !1177
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !1178
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1179, metadata !705), !dbg !1183
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1185
  %4 = load i32, i32* %3, align 8, !dbg !1185, !tbaa !1186
  %5 = and i32 %4, 32, !dbg !1185
  %6 = icmp eq i32 %5, 0, !dbg !1190
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !1191
  %8 = icmp ne i32 %7, 0, !dbg !1192
  br i1 %6, label %9, label %19, !dbg !1193

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !1195
  %11 = icmp ne i64 %2, 0, !dbg !1195
  %12 = or i1 %11, %10, !dbg !1195
  %13 = sext i1 %8 to i32, !dbg !1195
  br i1 %12, label %22, label %14, !dbg !1195

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !1197
  %16 = load i32, i32* %15, align 4, !dbg !1197, !tbaa !844
  %17 = icmp ne i32 %16, 9, !dbg !1199
  %18 = sext i1 %17 to i32, !dbg !1199
  br label %22, !dbg !1199

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !1201

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !1203
  store i32 0, i32* %21, align 4, !dbg !1205, !tbaa !844
  br label %22, !dbg !1203

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !1206
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1207 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1209, metadata !705), !dbg !1210
  store i8* %0, i8** @file_name, align 8, !dbg !1211, !tbaa !713
  ret void, !dbg !1212
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1213 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1217, metadata !1027), !dbg !1218
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1219, !tbaa !1220
  ret void, !dbg !1222
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() local_unnamed_addr #6 !dbg !1223 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1228, !tbaa !713
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1229
  %3 = icmp eq i32 %2, 0, !dbg !1230
  br i1 %3, label %21, label %4, !dbg !1231

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1232, !tbaa !1220, !range !1234
  %6 = icmp eq i8 %5, 0, !dbg !1232
  %7 = tail call i32* @__errno_location() #1, !dbg !1235
  br i1 %6, label %11, label %8, !dbg !1237

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1238, !tbaa !844
  %10 = icmp eq i32 %9, 32, !dbg !1240
  br i1 %10, label %21, label %11, !dbg !1241

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !1243
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1225, metadata !705), !dbg !1244
  %13 = load i8*, i8** @file_name, align 8, !dbg !1245, !tbaa !713
  %14 = icmp eq i8* %13, null, !dbg !1245
  %15 = load i32, i32* %7, align 4, !tbaa !844
  br i1 %14, label %18, label %16, !dbg !1246

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1247
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.36, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1249
  br label %19, !dbg !1251

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.37, i64 0, i64 0), i8* %12) #11, !dbg !1252
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1253, !tbaa !844
  tail call void @_exit(i32 %20) #14, !dbg !1254
  unreachable, !dbg !1254

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1255, !tbaa !713
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1257
  %24 = icmp eq i32 %23, 0, !dbg !1258
  br i1 %24, label %27, label %25, !dbg !1259

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1260, !tbaa !844
  tail call void @_exit(i32 %26) #14, !dbg !1261
  unreachable, !dbg !1261

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1262
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !1263 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1268, metadata !705), !dbg !1272
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1269, metadata !705), !dbg !1273
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1271, metadata !705), !dbg !1274
  br label %2, !dbg !1275

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1269, metadata !705), !dbg !1273
  %4 = load i8, i8* %3, align 1, !dbg !1276, !tbaa !872
  %5 = icmp eq i8 %4, 47, !dbg !1276
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1278
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1269, metadata !705), !dbg !1273
  br i1 %5, label %2, label %7, !dbg !1279, !llvm.loop !1280

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1274

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !1281
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !1271, metadata !705), !dbg !1274
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1270, metadata !705), !dbg !1285
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1269, metadata !705), !dbg !1273
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !1286

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !1288
  %15 = icmp eq i8 %14, 0, !dbg !1288
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1269, metadata !705), !dbg !1273
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1271, metadata !705), !dbg !1274
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !1292
  %17 = select i1 %15, i8 %12, i8 0, !dbg !1292
  br label %18, !dbg !1292

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1271, metadata !705), !dbg !1274
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1269, metadata !705), !dbg !1273
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1293
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1270, metadata !705), !dbg !1285
  %22 = load i8, i8* %21, align 1, !tbaa !872
  br label %8, !dbg !1295, !llvm.loop !1296

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !1299
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !1300 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1304, metadata !705), !dbg !1307
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1306, metadata !705), !dbg !1308
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !1309
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1305, metadata !705), !dbg !1311
  br label %3, !dbg !1312

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1305, metadata !705), !dbg !1311
  %5 = icmp ugt i64 %4, 1, !dbg !1313
  br i1 %5, label %6, label %11, !dbg !1316

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !1317
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1317
  %9 = load i8, i8* %8, align 1, !dbg !1317, !tbaa !872
  %10 = icmp eq i8 %9, 47, !dbg !1317
  br i1 %10, label %3, label %11, !dbg !1319, !llvm.loop !1321

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4, !dbg !1324
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1325 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1330, metadata !705), !dbg !1334
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1331, metadata !705), !dbg !1335
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1332, metadata !705), !dbg !1336
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #11, !dbg !1337
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1333, metadata !705), !dbg !1338
  %5 = icmp eq i8* %4, null, !dbg !1339
  br i1 %5, label %6, label %7, !dbg !1341

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !1342
  unreachable, !dbg !1342

; <label>:7:                                      ; preds = %3
  ret i8* %4, !dbg !1343
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1344 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1347, metadata !705), !dbg !1358
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1348, metadata !705), !dbg !1359
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1349, metadata !705), !dbg !1360
  %4 = tail call i8* @last_component(i8* %0) #13, !dbg !1361
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1350, metadata !705), !dbg !1362
  %5 = tail call i64 @base_len(i8* %4) #13, !dbg !1363
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1351, metadata !705), !dbg !1364
  %6 = ptrtoint i8* %4 to i64, !dbg !1365
  %7 = ptrtoint i8* %0 to i64, !dbg !1365
  %8 = sub i64 %6, %7, !dbg !1365
  %9 = add i64 %8, %5, !dbg !1366
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1352, metadata !705), !dbg !1367
  %10 = icmp eq i64 %5, 0, !dbg !1368
  br i1 %10, label %16, label %11, !dbg !1369

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1, !dbg !1370
  %13 = getelementptr inbounds i8, i8* %4, i64 %12, !dbg !1370
  %14 = load i8, i8* %13, align 1, !dbg !1370, !tbaa !872
  %15 = icmp ne i8 %14, 47, !dbg !1372
  br label %16

; <label>:16:                                     ; preds = %3, %11
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1353, metadata !705), !dbg !1373
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1374, metadata !705), !dbg !1379
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1374, metadata !705), !dbg !1379
  br label %18, !dbg !1381

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i8* [ %1, %16 ], [ %22, %18 ]
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1374, metadata !705), !dbg !1379
  %20 = load i8, i8* %19, align 1, !dbg !1383, !tbaa !872
  %21 = icmp eq i8 %20, 47, !dbg !1383
  %22 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1386
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1374, metadata !705), !dbg !1379
  br i1 %21, label %18, label %23, !dbg !1388, !llvm.loop !1390

; <label>:23:                                     ; preds = %18
  %24 = zext i1 %17 to i64, !dbg !1393
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1354, metadata !705), !dbg !1395
  %25 = tail call i64 @strlen(i8* %19) #13, !dbg !1396
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1355, metadata !705), !dbg !1397
  %26 = add i64 %9, 1, !dbg !1398
  %27 = add i64 %26, %24, !dbg !1399
  %28 = add i64 %27, %25, !dbg !1400
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !1401
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1356, metadata !705), !dbg !1402
  %30 = icmp eq i8* %29, null, !dbg !1403
  br i1 %30, label %44, label %31, !dbg !1405

; <label>:31:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1406, metadata !705) #11, !dbg !1416
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1414, metadata !705) #11, !dbg !1416
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1415, metadata !705) #11, !dbg !1416
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false) #11, !dbg !1418
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #11, !dbg !1419
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1357, metadata !705), !dbg !1420
  store i8 47, i8* %33, align 1, !dbg !1421, !tbaa !872
  %34 = getelementptr inbounds i8, i8* %33, i64 %24, !dbg !1422
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1357, metadata !705), !dbg !1420
  %35 = icmp eq i8** %2, null, !dbg !1423
  br i1 %35, label %41, label %36, !dbg !1425

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1, !dbg !1426, !tbaa !872
  %38 = icmp eq i8 %37, 47, !dbg !1426
  %39 = sext i1 %38 to i64, !dbg !1427
  %40 = getelementptr inbounds i8, i8* %34, i64 %39, !dbg !1427
  store i8* %40, i8** %2, align 8, !dbg !1429, !tbaa !713
  br label %41, !dbg !1430

; <label>:41:                                     ; preds = %31, %36
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1406, metadata !705) #11, !dbg !1431
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1414, metadata !705) #11, !dbg !1431
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1415, metadata !705) #11, !dbg !1431
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false) #11, !dbg !1433
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %19, i64 %25, i64 %42) #11, !dbg !1434
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1357, metadata !705), !dbg !1420
  store i8 0, i8* %43, align 1, !dbg !1435, !tbaa !872
  br label %44, !dbg !1436

; <label>:44:                                     ; preds = %23, %41
  %45 = phi i8* [ %29, %41 ], [ null, %23 ]
  ret i8* %45, !dbg !1437
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1438 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1440, metadata !705), !dbg !1443
  %2 = icmp eq i8* %0, null, !dbg !1444
  br i1 %2, label %3, label %6, !dbg !1446

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1447, !tbaa !713
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1449
  tail call void @abort() #14, !dbg !1450
  unreachable, !dbg !1450

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1451
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1441, metadata !705), !dbg !1452
  %8 = icmp ne i8* %7, null, !dbg !1453
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1454
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1456
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1442, metadata !705), !dbg !1457
  %11 = ptrtoint i8* %10 to i64, !dbg !1458
  %12 = ptrtoint i8* %0 to i64, !dbg !1458
  %13 = sub i64 %11, %12, !dbg !1458
  %14 = icmp sgt i64 %13, 6, !dbg !1460
  br i1 %14, label %15, label %24, !dbg !1461

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1462
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.54, i64 0, i64 0), i64 7) #13, !dbg !1462
  %18 = icmp eq i32 %17, 0, !dbg !1464
  br i1 %18, label %19, label %24, !dbg !1465

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1440, metadata !705), !dbg !1443
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.55, i64 0, i64 0), i64 3) #13, !dbg !1466
  %21 = icmp eq i32 %20, 0, !dbg !1469
  br i1 %21, label %22, label %24, !dbg !1470

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1471
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1440, metadata !705), !dbg !1443
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1473, !tbaa !713
  br label %24, !dbg !1474

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1440, metadata !705), !dbg !1443
  store i8* %25, i8** @program_name, align 8, !dbg !1475, !tbaa !713
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1476, !tbaa !713
  ret void, !dbg !1477
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1478 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1483, metadata !705), !dbg !1486
  %2 = tail call i32* @__errno_location() #1, !dbg !1487
  %3 = load i32, i32* %2, align 4, !dbg !1487, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1484, metadata !705), !dbg !1488
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1489
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1490
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1490
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1492
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1492
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1485, metadata !705), !dbg !1493
  store i32 %3, i32* %2, align 4, !dbg !1494, !tbaa !844
  ret %struct.quoting_options* %8, !dbg !1495
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !1496 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1502, metadata !705), !dbg !1503
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1504
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1504
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1505
  %5 = load i32, i32* %4, align 8, !dbg !1505, !tbaa !1507
  ret i32 %5, !dbg !1509
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1510 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1514, metadata !705), !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1515, metadata !705), !dbg !1517
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1518
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1518
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1519
  store i32 %1, i32* %5, align 8, !dbg !1521, !tbaa !1507
  ret void, !dbg !1522
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1523 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1527, metadata !705), !dbg !1535
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1528, metadata !705), !dbg !1536
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1529, metadata !705), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1530, metadata !705), !dbg !1538
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1539
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1539
  %6 = lshr i8 %1, 5, !dbg !1540
  %7 = zext i8 %6 to i64, !dbg !1540
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1542
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1531, metadata !705), !dbg !1543
  %9 = and i8 %1, 31, !dbg !1544
  %10 = zext i8 %9 to i32, !dbg !1545
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1533, metadata !705), !dbg !1546
  %11 = load i32, i32* %8, align 4, !dbg !1547, !tbaa !844
  %12 = lshr i32 %11, %10, !dbg !1548
  %13 = and i32 %12, 1, !dbg !1549
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1534, metadata !705), !dbg !1550
  %14 = and i32 %2, 1, !dbg !1551
  %15 = xor i32 %13, %14, !dbg !1552
  %16 = shl i32 %15, %10, !dbg !1553
  %17 = xor i32 %16, %11, !dbg !1554
  store i32 %17, i32* %8, align 4, !dbg !1554, !tbaa !844
  ret i32 %13, !dbg !1555
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1556 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1560, metadata !705), !dbg !1563
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1561, metadata !705), !dbg !1564
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1565
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1560, metadata !705), !dbg !1563
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1567
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1560, metadata !705), !dbg !1563
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1568
  %6 = load i32, i32* %5, align 4, !dbg !1568, !tbaa !1569
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1562, metadata !705), !dbg !1570
  store i32 %1, i32* %5, align 4, !dbg !1571, !tbaa !1569
  ret i32 %6, !dbg !1572
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1573 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1577, metadata !705), !dbg !1580
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1578, metadata !705), !dbg !1581
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1579, metadata !705), !dbg !1582
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1577, metadata !705), !dbg !1580
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1585
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1577, metadata !705), !dbg !1580
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1586
  store i32 10, i32* %6, align 8, !dbg !1587, !tbaa !1507
  %7 = icmp ne i8* %1, null, !dbg !1588
  %8 = icmp ne i8* %2, null, !dbg !1590
  %9 = and i1 %7, %8, !dbg !1592
  br i1 %9, label %11, label %10, !dbg !1592

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1593
  unreachable, !dbg !1593

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1594
  store i8* %1, i8** %12, align 8, !dbg !1595, !tbaa !1596
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1597
  store i8* %2, i8** %13, align 8, !dbg !1598, !tbaa !1599
  ret void, !dbg !1600
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1601 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1605, metadata !705), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1606, metadata !705), !dbg !1614
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1607, metadata !705), !dbg !1615
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1608, metadata !705), !dbg !1616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1609, metadata !705), !dbg !1617
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1618
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1618
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1610, metadata !705), !dbg !1619
  %8 = tail call i32* @__errno_location() #1, !dbg !1620
  %9 = load i32, i32* %8, align 4, !dbg !1620, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1611, metadata !705), !dbg !1621
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1622
  %11 = load i32, i32* %10, align 8, !dbg !1622, !tbaa !1507
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1623
  %13 = load i32, i32* %12, align 4, !dbg !1623, !tbaa !1569
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1624
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1625
  %16 = load i8*, i8** %15, align 8, !dbg !1625, !tbaa !1596
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1626
  %18 = load i8*, i8** %17, align 8, !dbg !1626, !tbaa !1599
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1627
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1612, metadata !705), !dbg !1628
  store i32 %9, i32* %8, align 4, !dbg !1629, !tbaa !844
  ret i64 %19, !dbg !1630
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1631 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1637, metadata !705), !dbg !1700
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1638, metadata !705), !dbg !1701
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1639, metadata !705), !dbg !1702
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1640, metadata !705), !dbg !1703
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1641, metadata !705), !dbg !1704
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1642, metadata !705), !dbg !1705
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1643, metadata !705), !dbg !1706
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1644, metadata !705), !dbg !1707
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1645, metadata !705), !dbg !1708
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1647, metadata !705), !dbg !1709
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1648, metadata !705), !dbg !1710
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1649, metadata !705), !dbg !1711
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1650, metadata !705), !dbg !1712
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1651, metadata !705), !dbg !1713
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1714
  %14 = icmp eq i64 %13, 1, !dbg !1715
  %15 = lshr i32 %5, 1, !dbg !1716
  %16 = trunc i32 %15 to i8, !dbg !1716
  %17 = and i8 %16, 1, !dbg !1716
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1653, metadata !705), !dbg !1716
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !705), !dbg !1717
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1655, metadata !705), !dbg !1718
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1656, metadata !705), !dbg !1719
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1720

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1638, metadata !705), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1656, metadata !705), !dbg !1719
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1655, metadata !705), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1653, metadata !705), !dbg !1716
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1640, metadata !705), !dbg !1703
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1651, metadata !705), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1650, metadata !705), !dbg !1712
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1649, metadata !705), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1648, metadata !705), !dbg !1710
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1645, metadata !705), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1644, metadata !705), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1641, metadata !705), !dbg !1704
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
  ], !dbg !1721

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1641, metadata !705), !dbg !1704
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1653, metadata !705), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1653, metadata !705), !dbg !1716
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1641, metadata !705), !dbg !1704
  br label %95, !dbg !1722

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1653, metadata !705), !dbg !1716
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1641, metadata !705), !dbg !1704
  %43 = and i8 %36, 1, !dbg !1724
  %44 = icmp eq i8 %43, 0, !dbg !1724
  br i1 %44, label %45, label %95, !dbg !1722

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1726
  br i1 %46, label %95, label %47, !dbg !1730

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1732, !tbaa !872
  br label %95, !dbg !1732

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.66, i64 0, i64 0), i32 %28), !dbg !1734
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1644, metadata !705), !dbg !1707
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), i32 %28), !dbg !1738
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1645, metadata !705), !dbg !1708
  br label %51, !dbg !1739

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1645, metadata !705), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1644, metadata !705), !dbg !1707
  %54 = and i8 %36, 1, !dbg !1740
  %55 = icmp eq i8 %54, 0, !dbg !1740
  br i1 %55, label %56, label %73, !dbg !1742

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1649, metadata !705), !dbg !1711
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1647, metadata !705), !dbg !1709
  %57 = load i8, i8* %52, align 1, !dbg !1743, !tbaa !872
  %58 = icmp eq i8 %57, 0, !dbg !1747
  br i1 %58, label %73, label %59, !dbg !1747

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1749

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1749
  br i1 %64, label %65, label %67, !dbg !1753

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1755
  store i8 %61, i8* %66, align 1, !dbg !1755, !tbaa !872
  br label %67, !dbg !1755

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1647, metadata !705), !dbg !1709
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1759
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1649, metadata !705), !dbg !1711
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1649, metadata !705), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1647, metadata !705), !dbg !1709
  %70 = load i8, i8* %69, align 1, !dbg !1743, !tbaa !872
  %71 = icmp eq i8 %70, 0, !dbg !1747
  br i1 %71, label %72, label %60, !dbg !1747, !llvm.loop !1761

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1709

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1651, metadata !705), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1649, metadata !705), !dbg !1711
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1764
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1650, metadata !705), !dbg !1712
  br label %95, !dbg !1765

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1651, metadata !705), !dbg !1713
  br label %77, !dbg !1766

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1651, metadata !705), !dbg !1713
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1653, metadata !705), !dbg !1716
  br label %79, !dbg !1767

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1653, metadata !705), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1651, metadata !705), !dbg !1713
  %82 = and i8 %81, 1, !dbg !1768
  %83 = icmp eq i8 %82, 0, !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1651, metadata !705), !dbg !1713
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1770
  br label %85, !dbg !1770

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1653, metadata !705), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1651, metadata !705), !dbg !1713
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1641, metadata !705), !dbg !1704
  %88 = and i8 %87, 1, !dbg !1771
  %89 = icmp eq i8 %88, 0, !dbg !1771
  br i1 %89, label %90, label %95, !dbg !1773

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1774
  br i1 %91, label %95, label %92, !dbg !1778

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1780, !tbaa !872
  br label %95, !dbg !1780

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1653, metadata !705), !dbg !1716
  br label %95, !dbg !1782

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1783
  unreachable, !dbg !1783

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1653, metadata !705), !dbg !1716
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1651, metadata !705), !dbg !1713
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1650, metadata !705), !dbg !1712
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1649, metadata !705), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1645, metadata !705), !dbg !1708
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1644, metadata !705), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1641, metadata !705), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1646, metadata !705), !dbg !1784
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
  br label %123, !dbg !1785

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1638, metadata !705), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1656, metadata !705), !dbg !1719
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1655, metadata !705), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1640, metadata !705), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1648, metadata !705), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1646, metadata !705), !dbg !1784
  %132 = icmp eq i64 %127, -1, !dbg !1786
  br i1 %132, label %135, label %133, !dbg !1788

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1789
  br i1 %134, label %597, label %139, !dbg !1791

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1793
  %137 = load i8, i8* %136, align 1, !dbg !1793, !tbaa !872
  %138 = icmp eq i8 %137, 0, !dbg !1795
  br i1 %138, label %597, label %139, !dbg !1791

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1662, metadata !705), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1663, metadata !705), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1664, metadata !705), !dbg !1798
  br i1 %109, label %140, label %155, !dbg !1799

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1801
  %142 = and i1 %110, %132, !dbg !1803
  br i1 %142, label %143, label %145, !dbg !1803

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1640, metadata !705), !dbg !1703
  br label %145, !dbg !1805

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1640, metadata !705), !dbg !1703
  %147 = icmp ugt i64 %141, %146, !dbg !1807
  br i1 %147, label %155, label %148, !dbg !1809

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1810
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1811
  %151 = icmp ne i32 %150, 0, !dbg !1812
  %152 = or i1 %151, %112, !dbg !1812
  %153 = xor i1 %151, true, !dbg !1812
  %154 = zext i1 %153 to i8, !dbg !1812
  br i1 %152, label %155, label %644, !dbg !1812

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1662, metadata !705), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1640, metadata !705), !dbg !1703
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1814
  %159 = load i8, i8* %158, align 1, !dbg !1814, !tbaa !872
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1657, metadata !705), !dbg !1815
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
  ], !dbg !1816

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1817

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1818

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1663, metadata !705), !dbg !1797
  %163 = and i8 %128, 1, !dbg !1823
  %164 = icmp eq i8 %163, 0, !dbg !1823
  %165 = and i1 %114, %164, !dbg !1826
  br i1 %165, label %166, label %182, !dbg !1826

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1828
  br i1 %167, label %168, label %170, !dbg !1833

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1835
  store i8 39, i8* %169, align 1, !dbg !1835, !tbaa !872
  br label %170, !dbg !1835

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1647, metadata !705), !dbg !1709
  %172 = icmp ult i64 %171, %131, !dbg !1839
  br i1 %172, label %173, label %175, !dbg !1843

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1845
  store i8 36, i8* %174, align 1, !dbg !1845, !tbaa !872
  br label %175, !dbg !1845

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1647, metadata !705), !dbg !1709
  %177 = icmp ult i64 %176, %131, !dbg !1849
  br i1 %177, label %178, label %180, !dbg !1853

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1855
  store i8 39, i8* %179, align 1, !dbg !1855, !tbaa !872
  br label %180, !dbg !1855

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1654, metadata !705), !dbg !1717
  br label %182, !dbg !1859

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1647, metadata !705), !dbg !1709
  %185 = icmp ult i64 %183, %131, !dbg !1861
  br i1 %185, label %186, label %188, !dbg !1865

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1867
  store i8 92, i8* %187, align 1, !dbg !1867, !tbaa !872
  br label %188, !dbg !1867

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1647, metadata !705), !dbg !1709
  br i1 %106, label %190, label %476, !dbg !1871

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1873
  %192 = icmp ult i64 %191, %156, !dbg !1875
  br i1 %192, label %193, label %476, !dbg !1876

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1877
  %195 = load i8, i8* %194, align 1, !dbg !1877, !tbaa !872
  %196 = add i8 %195, -48, !dbg !1879
  %197 = icmp ult i8 %196, 10, !dbg !1879
  br i1 %197, label %198, label %476, !dbg !1879

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1880
  br i1 %199, label %200, label %202, !dbg !1885

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1887
  store i8 48, i8* %201, align 1, !dbg !1887, !tbaa !872
  br label %202, !dbg !1887

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1647, metadata !705), !dbg !1709
  %204 = icmp ult i64 %203, %131, !dbg !1891
  br i1 %204, label %205, label %207, !dbg !1895

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1897
  store i8 48, i8* %206, align 1, !dbg !1897, !tbaa !872
  br label %207, !dbg !1897

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1647, metadata !705), !dbg !1709
  br label %476, !dbg !1901

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1902

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1903

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1904

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1906

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1908
  %215 = icmp ult i64 %214, %156, !dbg !1910
  br i1 %215, label %216, label %476, !dbg !1911

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1912
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1914
  %219 = load i8, i8* %218, align 1, !dbg !1914, !tbaa !872
  %220 = icmp eq i8 %219, 63, !dbg !1915
  br i1 %220, label %221, label %476, !dbg !1916

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1918
  %223 = load i8, i8* %222, align 1, !dbg !1918, !tbaa !872
  %224 = sext i8 %223 to i32, !dbg !1918
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
  ], !dbg !1919

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1920

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1657, metadata !705), !dbg !1815
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1646, metadata !705), !dbg !1784
  %227 = icmp ult i64 %125, %131, !dbg !1922
  br i1 %227, label %228, label %230, !dbg !1926

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1928
  store i8 63, i8* %229, align 1, !dbg !1928, !tbaa !872
  br label %230, !dbg !1928

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1647, metadata !705), !dbg !1709
  %232 = icmp ult i64 %231, %131, !dbg !1932
  br i1 %232, label %233, label %235, !dbg !1936

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1938
  store i8 34, i8* %234, align 1, !dbg !1938, !tbaa !872
  br label %235, !dbg !1938

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1647, metadata !705), !dbg !1709
  %237 = icmp ult i64 %236, %131, !dbg !1942
  br i1 %237, label %238, label %240, !dbg !1946

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1948
  store i8 34, i8* %239, align 1, !dbg !1948, !tbaa !872
  br label %240, !dbg !1948

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1647, metadata !705), !dbg !1709
  %242 = icmp ult i64 %241, %131, !dbg !1952
  br i1 %242, label %243, label %245, !dbg !1956

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1958
  store i8 63, i8* %244, align 1, !dbg !1958, !tbaa !872
  br label %245, !dbg !1958

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1647, metadata !705), !dbg !1709
  br label %476, !dbg !1962

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1661, metadata !705), !dbg !1963
  br label %257, !dbg !1964

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1661, metadata !705), !dbg !1963
  br label %257, !dbg !1965

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1661, metadata !705), !dbg !1963
  br label %255, !dbg !1966

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1661, metadata !705), !dbg !1963
  br label %255, !dbg !1967

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1661, metadata !705), !dbg !1963
  br label %257, !dbg !1968

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1661, metadata !705), !dbg !1963
  br i1 %114, label %253, label %254, !dbg !1969

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1970

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1973

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1661, metadata !705), !dbg !1963
  br i1 %118, label %257, label %644, !dbg !1975

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1661, metadata !705), !dbg !1963
  br i1 %105, label %503, label %476, !dbg !1977

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1978
  br i1 %260, label %261, label %266, !dbg !1980

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1981, !tbaa !872
  %263 = icmp ne i8 %262, 0, !dbg !1983
  %264 = icmp ne i64 %124, 0, !dbg !1984
  %265 = or i1 %264, %263, !dbg !1986
  br i1 %265, label %476, label %272, !dbg !1986

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1987
  %268 = icmp ne i64 %124, 0, !dbg !1984
  %269 = or i1 %268, %267, !dbg !1989
  br i1 %269, label %476, label %272, !dbg !1989

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1984
  br i1 %271, label %272, label %476, !dbg !1991

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1664, metadata !705), !dbg !1798
  br label %273, !dbg !1992

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1664, metadata !705), !dbg !1798
  br i1 %118, label %476, label %644, !dbg !1993

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1655, metadata !705), !dbg !1718
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1664, metadata !705), !dbg !1798
  br i1 %114, label %276, label %476, !dbg !1995

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1996

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1999
  %279 = icmp ne i64 %126, 0, !dbg !2001
  %280 = or i1 %279, %278, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1648, metadata !705), !dbg !1710
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1638, metadata !705), !dbg !1701
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2003
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1638, metadata !705), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1648, metadata !705), !dbg !1710
  %283 = icmp ult i64 %125, %282, !dbg !2004
  br i1 %283, label %284, label %286, !dbg !2008

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2010
  store i8 39, i8* %285, align 1, !dbg !2010, !tbaa !872
  br label %286, !dbg !2010

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1647, metadata !705), !dbg !1709
  %288 = icmp ult i64 %287, %282, !dbg !2014
  br i1 %288, label %289, label %291, !dbg !2018

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2020
  store i8 92, i8* %290, align 1, !dbg !2020, !tbaa !872
  br label %291, !dbg !2020

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1647, metadata !705), !dbg !1709
  %293 = icmp ult i64 %292, %282, !dbg !2024
  br i1 %293, label %294, label %296, !dbg !2028

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2030
  store i8 39, i8* %295, align 1, !dbg !2030, !tbaa !872
  br label %296, !dbg !2030

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !705), !dbg !1717
  br label %476, !dbg !2034

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2035

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1665, metadata !705), !dbg !2036
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2037
  %301 = load i16*, i16** %300, align 8, !dbg !2037, !tbaa !713
  %302 = zext i8 %159 to i64, !dbg !2037
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2037
  %304 = load i16, i16* %303, align 2, !dbg !2037, !tbaa !2039
  %305 = lshr i16 %304, 14, !dbg !2040
  %306 = trunc i16 %305 to i8, !dbg !2040
  %307 = and i8 %306, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1668, metadata !705), !dbg !2041
  br label %368, !dbg !2042

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2043
  store i64 0, i64* %10, align 8, !dbg !2044
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1665, metadata !705), !dbg !2036
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1668, metadata !705), !dbg !2041
  %309 = icmp eq i64 %156, -1, !dbg !2045
  br i1 %309, label %310, label %312, !dbg !2047, !llvm.loop !2048

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1640, metadata !705), !dbg !1703
  br label %312, !dbg !2052, !llvm.loop !2048

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2041

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1668, metadata !705), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1665, metadata !705), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1640, metadata !705), !dbg !1703
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2053
  %317 = add i64 %315, %124, !dbg !2054
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2055
  %319 = sub i64 %313, %317, !dbg !2056
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1669, metadata !2057), !dbg !2058
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1686, metadata !2057), !dbg !2059
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1689, metadata !705), !dbg !2061
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2062

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1665, metadata !705), !dbg !2036
  %322 = icmp ugt i64 %313, %317, !dbg !2063
  br i1 %322, label %323, label %351, !dbg !2066

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2067

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2067
  %328 = load i8, i8* %327, align 1, !dbg !2067, !tbaa !872
  %329 = icmp eq i8 %328, 0, !dbg !2069
  br i1 %329, label %348, label %330, !dbg !2070

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1665, metadata !705), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1665, metadata !705), !dbg !2036
  %332 = add i64 %331, %124, !dbg !2073
  %333 = icmp ult i64 %332, %313, !dbg !2063
  br i1 %333, label %324, label %348, !dbg !2066, !llvm.loop !2074

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2076
  %336 = and i1 %116, %335, !dbg !2080
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1690, metadata !705), !dbg !2081
  br i1 %336, label %337, label %355, !dbg !2080

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2082

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2082
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2083
  %342 = load i8, i8* %341, align 1, !dbg !2083, !tbaa !872
  %343 = sext i8 %342 to i32, !dbg !2083
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2084

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1690, metadata !705), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1690, metadata !705), !dbg !2081
  %346 = icmp ult i64 %345, %320, !dbg !2076
  br i1 %346, label %338, label %354, !dbg !2087, !llvm.loop !2089

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2041

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2041

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2041

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1668, metadata !705), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1665, metadata !705), !dbg !2036
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2092
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2093

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2093, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1686, metadata !705), !dbg !2059
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2095
  %358 = icmp eq i32 %357, 0, !dbg !2095
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1668, metadata !705), !dbg !2041
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2096
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1668, metadata !705), !dbg !2041
  %360 = add i64 %320, %315, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1665, metadata !705), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1668, metadata !705), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1665, metadata !705), !dbg !2036
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2092
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1669, metadata !2057), !dbg !2058
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2098
  %362 = icmp eq i32 %361, 0, !dbg !2099
  br i1 %362, label %314, label %363, !dbg !2100, !llvm.loop !2048

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2102

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2102
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1668, metadata !705), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1665, metadata !705), !dbg !2036
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2092
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2102
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1668, metadata !705), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1665, metadata !705), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1640, metadata !705), !dbg !1703
  %372 = and i8 %371, 1, !dbg !2103
  %373 = icmp ne i8 %372, 0, !dbg !2103
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1664, metadata !705), !dbg !1798
  %374 = icmp ult i64 %370, 2, !dbg !2104
  %375 = or i1 %373, %113, !dbg !2105
  %376 = and i1 %374, %375, !dbg !2107
  br i1 %376, label %476, label %377, !dbg !2107

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1697, metadata !705), !dbg !2109
  br label %379, !dbg !2110

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1663, metadata !705), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1662, metadata !705), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1657, metadata !705), !dbg !1815
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1646, metadata !705), !dbg !1784
  br i1 %375, label %432, label %386, !dbg !2111

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2116

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1663, metadata !705), !dbg !1797
  %388 = and i8 %382, 1, !dbg !2120
  %389 = icmp eq i8 %388, 0, !dbg !2120
  %390 = and i1 %114, %389, !dbg !2123
  br i1 %390, label %391, label %407, !dbg !2123

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2125
  br i1 %392, label %393, label %395, !dbg !2130

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2132
  store i8 39, i8* %394, align 1, !dbg !2132, !tbaa !872
  br label %395, !dbg !2132

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1647, metadata !705), !dbg !1709
  %397 = icmp ult i64 %396, %131, !dbg !2136
  br i1 %397, label %398, label %400, !dbg !2140

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2142
  store i8 36, i8* %399, align 1, !dbg !2142, !tbaa !872
  br label %400, !dbg !2142

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1647, metadata !705), !dbg !1709
  %402 = icmp ult i64 %401, %131, !dbg !2146
  br i1 %402, label %403, label %405, !dbg !2150

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2152
  store i8 39, i8* %404, align 1, !dbg !2152, !tbaa !872
  br label %405, !dbg !2152

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1654, metadata !705), !dbg !1717
  br label %407, !dbg !2156

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1647, metadata !705), !dbg !1709
  %410 = icmp ult i64 %408, %131, !dbg !2158
  br i1 %410, label %411, label %413, !dbg !2162

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2164
  store i8 92, i8* %412, align 1, !dbg !2164, !tbaa !872
  br label %413, !dbg !2164

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1647, metadata !705), !dbg !1709
  %415 = icmp ult i64 %414, %131, !dbg !2168
  br i1 %415, label %416, label %420, !dbg !2172

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2174
  %418 = or i8 %417, 48, !dbg !2174
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2174
  store i8 %418, i8* %419, align 1, !dbg !2174, !tbaa !872
  br label %420, !dbg !2174

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1647, metadata !705), !dbg !1709
  %422 = icmp ult i64 %421, %131, !dbg !2178
  br i1 %422, label %423, label %428, !dbg !2182

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2184
  %425 = and i8 %424, 7, !dbg !2184
  %426 = or i8 %425, 48, !dbg !2184
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2184
  store i8 %426, i8* %427, align 1, !dbg !2184, !tbaa !872
  br label %428, !dbg !2184

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1647, metadata !705), !dbg !1709
  %430 = and i8 %383, 7, !dbg !2188
  %431 = or i8 %430, 48, !dbg !2189
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1657, metadata !705), !dbg !1815
  br label %441, !dbg !2190

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2191
  %434 = icmp eq i8 %433, 0, !dbg !2191
  br i1 %434, label %441, label %435, !dbg !2193

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2194
  br i1 %436, label %437, label %439, !dbg !2199

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2201
  store i8 92, i8* %438, align 1, !dbg !2201, !tbaa !872
  br label %439, !dbg !2201

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1662, metadata !705), !dbg !1796
  br label %441, !dbg !2205

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1663, metadata !705), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1662, metadata !705), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1657, metadata !705), !dbg !1815
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1647, metadata !705), !dbg !1709
  %447 = add i64 %380, 1, !dbg !2206
  %448 = icmp ugt i64 %378, %447, !dbg !2208
  br i1 %448, label %449, label %541, !dbg !2209

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2210
  %451 = icmp ne i8 %450, 0, !dbg !2210
  %452 = and i8 %446, 1, !dbg !2214
  %453 = icmp eq i8 %452, 0, !dbg !2214
  %454 = and i1 %451, %453, !dbg !2210
  br i1 %454, label %455, label %466, !dbg !2210

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2216
  br i1 %456, label %457, label %459, !dbg !2221

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2223
  store i8 39, i8* %458, align 1, !dbg !2223, !tbaa !872
  br label %459, !dbg !2223

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1647, metadata !705), !dbg !1709
  %461 = icmp ult i64 %460, %131, !dbg !2227
  br i1 %461, label %462, label %464, !dbg !2231

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2233
  store i8 39, i8* %463, align 1, !dbg !2233, !tbaa !872
  br label %464, !dbg !2233

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !705), !dbg !1717
  br label %466, !dbg !2237

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1647, metadata !705), !dbg !1709
  %469 = icmp ult i64 %467, %131, !dbg !2239
  br i1 %469, label %470, label %472, !dbg !2243

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2245
  store i8 %444, i8* %471, align 1, !dbg !2245, !tbaa !872
  br label %472, !dbg !2245

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1646, metadata !705), !dbg !1784
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2249
  %475 = load i8, i8* %474, align 1, !dbg !2249, !tbaa !872
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1657, metadata !705), !dbg !1815
  br label %379, !dbg !2250, !llvm.loop !2252

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1638, metadata !705), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1664, metadata !705), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1663, metadata !705), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1662, metadata !705), !dbg !1796
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1657, metadata !705), !dbg !1815
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1655, metadata !705), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1640, metadata !705), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1648, metadata !705), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1646, metadata !705), !dbg !1784
  br i1 %107, label %488, label %487, !dbg !2255

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2257

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2258

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2259
  %491 = zext i8 %490 to i64, !dbg !2259
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2261
  %493 = load i32, i32* %492, align 4, !dbg !2261, !tbaa !844
  %494 = and i8 %483, 31, !dbg !2262
  %495 = zext i8 %494 to i32, !dbg !2263
  %496 = shl i32 1, %495, !dbg !2264
  %497 = and i32 %493, %496, !dbg !2264
  %498 = icmp eq i32 %497, 0, !dbg !2264
  %499 = icmp eq i8 %157, 0, !dbg !2265
  %500 = and i1 %499, %498, !dbg !2266
  br i1 %500, label %542, label %503, !dbg !2266

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2265
  br i1 %502, label %542, label %503, !dbg !2267

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1638, metadata !705), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1664, metadata !705), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1657, metadata !705), !dbg !1815
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1655, metadata !705), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1640, metadata !705), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1648, metadata !705), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1646, metadata !705), !dbg !1784
  br i1 %112, label %513, label %644, !dbg !2269

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1663, metadata !705), !dbg !1797
  %514 = and i8 %508, 1, !dbg !2272
  %515 = icmp eq i8 %514, 0, !dbg !2272
  %516 = and i1 %114, %515, !dbg !2275
  br i1 %516, label %517, label %533, !dbg !2275

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2277
  br i1 %518, label %519, label %521, !dbg !2282

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2284
  store i8 39, i8* %520, align 1, !dbg !2284, !tbaa !872
  br label %521, !dbg !2284

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1647, metadata !705), !dbg !1709
  %523 = icmp ult i64 %522, %512, !dbg !2288
  br i1 %523, label %524, label %526, !dbg !2292

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2294
  store i8 36, i8* %525, align 1, !dbg !2294, !tbaa !872
  br label %526, !dbg !2294

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1647, metadata !705), !dbg !1709
  %528 = icmp ult i64 %527, %512, !dbg !2298
  br i1 %528, label %529, label %531, !dbg !2302

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2304
  store i8 39, i8* %530, align 1, !dbg !2304, !tbaa !872
  br label %531, !dbg !2304

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1654, metadata !705), !dbg !1717
  br label %533, !dbg !2308

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1647, metadata !705), !dbg !1709
  %536 = icmp ult i64 %534, %512, !dbg !2310
  br i1 %536, label %537, label %539, !dbg !2314

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2316
  store i8 92, i8* %538, align 1, !dbg !2316, !tbaa !872
  br label %539, !dbg !2316

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1638, metadata !705), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1664, metadata !705), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1663, metadata !705), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1657, metadata !705), !dbg !1815
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1655, metadata !705), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1640, metadata !705), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1648, metadata !705), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1646, metadata !705), !dbg !1784
  br label %569, !dbg !2320

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1701

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1638, metadata !705), !dbg !1701
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1664, metadata !705), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1663, metadata !705), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1657, metadata !705), !dbg !1815
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1655, metadata !705), !dbg !1718
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1640, metadata !705), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1648, metadata !705), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1646, metadata !705), !dbg !1784
  %553 = and i8 %547, 1, !dbg !2320
  %554 = icmp ne i8 %553, 0, !dbg !2320
  %555 = and i8 %550, 1, !dbg !2324
  %556 = icmp eq i8 %555, 0, !dbg !2324
  %557 = and i1 %554, %556, !dbg !2320
  br i1 %557, label %558, label %569, !dbg !2320

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2326
  br i1 %559, label %560, label %562, !dbg !2331

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2333
  store i8 39, i8* %561, align 1, !dbg !2333, !tbaa !872
  br label %562, !dbg !2333

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1647, metadata !705), !dbg !1709
  %564 = icmp ult i64 %563, %552, !dbg !2337
  br i1 %564, label %565, label %567, !dbg !2341

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2343
  store i8 39, i8* %566, align 1, !dbg !2343, !tbaa !872
  br label %567, !dbg !2343

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1647, metadata !705), !dbg !1709
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1654, metadata !705), !dbg !1717
  br label %569, !dbg !2347

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1654, metadata !705), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1647, metadata !705), !dbg !1709
  %579 = icmp ult i64 %577, %570, !dbg !2349
  br i1 %579, label %580, label %582, !dbg !2353

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2355
  store i8 %572, i8* %581, align 1, !dbg !2355, !tbaa !872
  br label %582, !dbg !2355

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1647, metadata !705), !dbg !1709
  %584 = and i8 %571, 1, !dbg !2359
  %585 = icmp eq i8 %584, 0, !dbg !2359
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1656, metadata !705), !dbg !1719
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2361
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1656, metadata !705), !dbg !1719
  br label %587, !dbg !2362

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1646, metadata !705), !dbg !1784
  br label %123, !dbg !2365, !llvm.loop !2366

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2369
  %600 = and i1 %114, %599, !dbg !2371
  %601 = xor i1 %600, true, !dbg !2371
  %602 = or i1 %112, %601, !dbg !2371
  br i1 %602, label %603, label %648, !dbg !2371

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2372
  %605 = xor i1 %604, true, !dbg !2372
  %606 = and i8 %129, 1, !dbg !2374
  %607 = icmp eq i8 %606, 0, !dbg !2374
  %608 = or i1 %607, %605, !dbg !2372
  br i1 %608, label %618, label %609, !dbg !2372

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2376
  %611 = icmp eq i8 %610, 0, !dbg !2376
  br i1 %611, label %614, label %612, !dbg !2379

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2380
  br label %659, !dbg !2381

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2382
  %616 = icmp ne i64 %126, 0, !dbg !2384
  %617 = and i1 %616, %615, !dbg !2386
  br i1 %617, label %27, label %618, !dbg !2386

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2387
  %620 = and i1 %619, %112, !dbg !2389
  br i1 %620, label %621, label %638, !dbg !2389

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1649, metadata !705), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1647, metadata !705), !dbg !1709
  %622 = load i8, i8* %100, align 1, !dbg !2390, !tbaa !872
  %623 = icmp eq i8 %622, 0, !dbg !2394
  br i1 %623, label %638, label %624, !dbg !2394

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2396

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2396
  br i1 %629, label %630, label %632, !dbg !2400

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2402
  store i8 %626, i8* %631, align 1, !dbg !2402, !tbaa !872
  br label %632, !dbg !2402

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1647, metadata !705), !dbg !1709
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1649, metadata !705), !dbg !1711
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1649, metadata !705), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1647, metadata !705), !dbg !1709
  %635 = load i8, i8* %634, align 1, !dbg !2390, !tbaa !872
  %636 = icmp eq i8 %635, 0, !dbg !2394
  br i1 %636, label %637, label %625, !dbg !2394, !llvm.loop !2408

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1709

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1647, metadata !705), !dbg !1709
  %640 = icmp ult i64 %639, %131, !dbg !2411
  br i1 %640, label %641, label %659, !dbg !2413

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2414
  store i8 0, i8* %642, align 1, !dbg !2415, !tbaa !872
  br label %659, !dbg !2414

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1701

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1701

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1701

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1638, metadata !705), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1640, metadata !705), !dbg !1703
  %653 = icmp ne i32 %650, 2, !dbg !2416
  %654 = icmp eq i8 %104, 0, !dbg !2418
  %655 = or i1 %653, %654, !dbg !2420
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1641, metadata !705), !dbg !1704
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1641, metadata !705), !dbg !1704
  %657 = and i32 %5, -3, !dbg !2421
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2422
  br label %659, !dbg !2423

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2424
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2425 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2429, metadata !705), !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2430, metadata !705), !dbg !2434
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2435
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2431, metadata !705), !dbg !2436
  %4 = icmp eq i8* %3, %0, !dbg !2437
  br i1 %4, label %5, label %75, !dbg !2439

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2440
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2432, metadata !705), !dbg !2441
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2442, metadata !705), !dbg !2458
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2456, metadata !705), !dbg !2461
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2457, metadata !705), !dbg !2462
  %7 = load i8, i8* %6, align 1, !tbaa !872
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2463
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2463

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2466, metadata !705), !dbg !2480
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2478, metadata !705), !dbg !2484
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2479, metadata !705), !dbg !2485
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !872
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2486
  %15 = icmp eq i32 %14, 84, !dbg !2486
  br i1 %15, label %16, label %72, !dbg !2486

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2489, metadata !705), !dbg !2502
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2500, metadata !705), !dbg !2506
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2501, metadata !705), !dbg !2507
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !872
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2508
  %21 = icmp eq i32 %20, 70, !dbg !2508
  br i1 %21, label %22, label %72, !dbg !2508

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2511, metadata !705), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2521, metadata !705), !dbg !2527
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2522, metadata !705), !dbg !2528
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !872
  %25 = icmp eq i8 %24, 45, !dbg !2529
  br i1 %25, label %26, label %72, !dbg !2532

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2534, metadata !705), !dbg !2545
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2543, metadata !705), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2544, metadata !705), !dbg !2550
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !872
  %29 = icmp eq i8 %28, 56, !dbg !2551
  br i1 %29, label %30, label %72, !dbg !2554

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2556, metadata !705), !dbg !2566
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2564, metadata !705), !dbg !2570
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2565, metadata !705), !dbg !2571
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !872
  %33 = icmp eq i8 %32, 0, !dbg !2572
  br i1 %33, label %34, label %72, !dbg !2575

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2577, !tbaa !872
  %36 = icmp eq i8 %35, 96, !dbg !2578
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.70, i64 0, i64 0), !dbg !2577
  br label %75, !dbg !2579

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2466, metadata !705), !dbg !2580
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2478, metadata !705), !dbg !2584
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2479, metadata !705), !dbg !2585
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !872
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2586
  %43 = icmp eq i32 %42, 66, !dbg !2586
  br i1 %43, label %44, label %72, !dbg !2586

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2489, metadata !705), !dbg !2587
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2500, metadata !705), !dbg !2589
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2501, metadata !705), !dbg !2590
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !872
  %47 = icmp eq i8 %46, 49, !dbg !2591
  br i1 %47, label %48, label %72, !dbg !2593

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2511, metadata !705), !dbg !2595
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2521, metadata !705), !dbg !2597
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2522, metadata !705), !dbg !2598
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !872
  %51 = icmp eq i8 %50, 56, !dbg !2599
  br i1 %51, label %52, label %72, !dbg !2600

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2534, metadata !705), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2543, metadata !705), !dbg !2603
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2544, metadata !705), !dbg !2604
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !872
  %55 = icmp eq i8 %54, 48, !dbg !2605
  br i1 %55, label %56, label %72, !dbg !2606

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2556, metadata !705), !dbg !2607
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2564, metadata !705), !dbg !2609
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2565, metadata !705), !dbg !2610
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !872
  %59 = icmp eq i8 %58, 51, !dbg !2611
  br i1 %59, label %60, label %72, !dbg !2612

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2613, metadata !705), !dbg !2622
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2620, metadata !705), !dbg !2626
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2621, metadata !705), !dbg !2627
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !872
  %63 = icmp eq i8 %62, 48, !dbg !2628
  br i1 %63, label %64, label %72, !dbg !2631

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2633, metadata !705), !dbg !2641
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2639, metadata !705), !dbg !2645
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2640, metadata !705), !dbg !2646
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !872
  %67 = icmp eq i8 %66, 0, !dbg !2647
  br i1 %67, label %68, label %72, !dbg !2650

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2651, !tbaa !872
  %70 = icmp eq i8 %69, 96, !dbg !2652
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.71, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.72, i64 0, i64 0), !dbg !2651
  br label %75, !dbg !2653

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2654
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), !dbg !2655
  br label %75, !dbg !2656

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2657
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2658 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2662, metadata !705), !dbg !2665
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2663, metadata !705), !dbg !2666
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2664, metadata !705), !dbg !2667
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2668, metadata !705) #11, !dbg !2681
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2673, metadata !705) #11, !dbg !2683
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2674, metadata !705) #11, !dbg !2684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2675, metadata !705) #11, !dbg !2685
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2686
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2686
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2676, metadata !705) #11, !dbg !2687
  %6 = tail call i32* @__errno_location() #1, !dbg !2688
  %7 = load i32, i32* %6, align 4, !dbg !2688, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2677, metadata !705) #11, !dbg !2689
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2690
  %9 = load i32, i32* %8, align 4, !dbg !2690, !tbaa !1569
  %10 = or i32 %9, 1, !dbg !2691
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2678, metadata !705) #11, !dbg !2692
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2693
  %12 = load i32, i32* %11, align 8, !dbg !2693, !tbaa !1507
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2694
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2695
  %15 = load i8*, i8** %14, align 8, !dbg !2695, !tbaa !1596
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2696
  %17 = load i8*, i8** %16, align 8, !dbg !2696, !tbaa !1599
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !2697
  %19 = add i64 %18, 1, !dbg !2698
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2679, metadata !705) #11, !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2700, metadata !705) #11, !dbg !2703
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2705
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2680, metadata !705) #11, !dbg !2706
  %21 = load i32, i32* %11, align 8, !dbg !2707, !tbaa !1507
  %22 = load i8*, i8** %14, align 8, !dbg !2708, !tbaa !1596
  %23 = load i8*, i8** %16, align 8, !dbg !2709, !tbaa !1599
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !2710
  store i32 %7, i32* %6, align 4, !dbg !2711, !tbaa !844
  ret i8* %20, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2669 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2668, metadata !705), !dbg !2713
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2673, metadata !705), !dbg !2714
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2674, metadata !705), !dbg !2715
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2675, metadata !705), !dbg !2716
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2717
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2717
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2676, metadata !705), !dbg !2718
  %7 = tail call i32* @__errno_location() #1, !dbg !2719
  %8 = load i32, i32* %7, align 4, !dbg !2719, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2677, metadata !705), !dbg !2720
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2721
  %10 = load i32, i32* %9, align 4, !dbg !2721, !tbaa !1569
  %11 = icmp ne i64* %2, null, !dbg !2722
  %12 = xor i1 %11, true, !dbg !2722
  %13 = zext i1 %12 to i32, !dbg !2722
  %14 = or i32 %10, %13, !dbg !2723
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2678, metadata !705), !dbg !2724
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2725
  %16 = load i32, i32* %15, align 8, !dbg !2725, !tbaa !1507
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2726
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2727
  %19 = load i8*, i8** %18, align 8, !dbg !2727, !tbaa !1596
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2728
  %21 = load i8*, i8** %20, align 8, !dbg !2728, !tbaa !1599
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2729
  %23 = add i64 %22, 1, !dbg !2730
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2679, metadata !705), !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2700, metadata !705) #11, !dbg !2732
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2734
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2680, metadata !705), !dbg !2735
  %25 = load i32, i32* %15, align 8, !dbg !2736, !tbaa !1507
  %26 = load i8*, i8** %18, align 8, !dbg !2737, !tbaa !1596
  %27 = load i8*, i8** %20, align 8, !dbg !2738, !tbaa !1599
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2739
  store i32 %8, i32* %7, align 4, !dbg !2740, !tbaa !844
  br i1 %11, label %29, label %30, !dbg !2741

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2742, !tbaa !2744
  br label %30, !dbg !2745

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2747 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2751, !tbaa !713
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2749, metadata !705), !dbg !2752
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2750, metadata !705), !dbg !2753
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2750, metadata !705), !dbg !2753
  %2 = load i32, i32* @nslots, align 4, !dbg !2754, !tbaa !844
  %3 = icmp sgt i32 %2, 1, !dbg !2758
  br i1 %3, label %4, label %14, !dbg !2759

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2761

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2761
  %8 = load i8*, i8** %7, align 8, !dbg !2761, !tbaa !2762
  tail call void @free(i8* %8) #11, !dbg !2764
  %9 = add nuw i64 %6, 1, !dbg !2765
  %10 = load i32, i32* @nslots, align 4, !dbg !2754, !tbaa !844
  %11 = sext i32 %10 to i64, !dbg !2758
  %12 = icmp slt i64 %9, %11, !dbg !2758
  br i1 %12, label %5, label %13, !dbg !2759, !llvm.loop !2767

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2770

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2770
  %16 = load i8*, i8** %15, align 8, !dbg !2770, !tbaa !2762
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2772
  br i1 %17, label %19, label %18, !dbg !2773

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !2774
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2776, !tbaa !2777
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2778, !tbaa !2762
  br label %19, !dbg !2779

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2780
  br i1 %20, label %23, label %21, !dbg !2782

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2783
  tail call void @free(i8* %22) #11, !dbg !2785
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2786, !tbaa !713
  br label %23, !dbg !2787

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2788, !tbaa !844
  ret void, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2790 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2794, metadata !705), !dbg !2796
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2795, metadata !705), !dbg !2797
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2798
  ret i8* %3, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2800 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2804, metadata !705), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2805, metadata !705), !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2806, metadata !705), !dbg !2820
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2807, metadata !705), !dbg !2821
  %5 = tail call i32* @__errno_location() #1, !dbg !2822
  %6 = load i32, i32* %5, align 4, !dbg !2822, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2808, metadata !705), !dbg !2823
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2824, !tbaa !713
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2809, metadata !705), !dbg !2825
  %8 = icmp slt i32 %0, 0, !dbg !2826
  br i1 %8, label %9, label %10, !dbg !2828

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2829
  unreachable, !dbg !2829

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2830, !tbaa !844
  %12 = icmp sgt i32 %11, %0, !dbg !2831
  br i1 %12, label %34, label %13, !dbg !2832

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2833
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2834
  br i1 %15, label %16, label %17, !dbg !2836

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2837
  unreachable, !dbg !2837

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2838
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2838
  %20 = add nsw i32 %0, 1, !dbg !2840
  %21 = sext i32 %20 to i64, !dbg !2841
  %22 = shl nsw i64 %21, 4, !dbg !2842
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2843
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2843
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2809, metadata !705), !dbg !2825
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2844, !tbaa !713
  br i1 %14, label %25, label %26, !dbg !2845

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2846, !tbaa.struct !2848
  br label %26, !dbg !2849

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2850, !tbaa !844
  %28 = sext i32 %27 to i64, !dbg !2851
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2851
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2852
  %31 = sub nsw i32 %20, %27, !dbg !2853
  %32 = sext i32 %31 to i64, !dbg !2854
  %33 = shl nsw i64 %32, 4, !dbg !2855
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2852
  store i32 %20, i32* @nslots, align 4, !dbg !2856, !tbaa !844
  br label %34, !dbg !2857

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2809, metadata !705), !dbg !2825
  %36 = sext i32 %0 to i64, !dbg !2858
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2859
  %38 = load i64, i64* %37, align 8, !dbg !2859, !tbaa !2777
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2813, metadata !705), !dbg !2860
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2861
  %40 = load i8*, i8** %39, align 8, !dbg !2861, !tbaa !2762
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2815, metadata !705), !dbg !2862
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2863
  %42 = load i32, i32* %41, align 4, !dbg !2863, !tbaa !1569
  %43 = or i32 %42, 1, !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2816, metadata !705), !dbg !2865
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2866
  %45 = load i32, i32* %44, align 8, !dbg !2866, !tbaa !1507
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2867
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2868
  %48 = load i8*, i8** %47, align 8, !dbg !2868, !tbaa !1596
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2869
  %50 = load i8*, i8** %49, align 8, !dbg !2869, !tbaa !1599
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2870
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2817, metadata !705), !dbg !2871
  %52 = icmp ugt i64 %38, %51, !dbg !2872
  br i1 %52, label %63, label %53, !dbg !2874

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2813, metadata !705), !dbg !2860
  store i64 %54, i64* %37, align 8, !dbg !2877, !tbaa !2777
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2878
  br i1 %55, label %57, label %56, !dbg !2880

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2881
  br label %57, !dbg !2881

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2700, metadata !705) #11, !dbg !2882
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2815, metadata !705), !dbg !2862
  store i8* %58, i8** %39, align 8, !dbg !2885, !tbaa !2762
  %59 = load i32, i32* %44, align 8, !dbg !2886, !tbaa !1507
  %60 = load i8*, i8** %47, align 8, !dbg !2887, !tbaa !1596
  %61 = load i8*, i8** %49, align 8, !dbg !2888, !tbaa !1599
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2889
  br label %63, !dbg !2890

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2815, metadata !705), !dbg !2862
  store i32 %6, i32* %5, align 4, !dbg !2891, !tbaa !844
  ret i8* %64, !dbg !2892
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2893 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2897, metadata !705), !dbg !2900
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2898, metadata !705), !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2899, metadata !705), !dbg !2902
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2903
  ret i8* %4, !dbg !2904
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2905 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2907, metadata !705), !dbg !2908
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2794, metadata !705) #11, !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2795, metadata !705) #11, !dbg !2911
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2912
  ret i8* %2, !dbg !2913
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2914 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2918, metadata !705), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2919, metadata !705), !dbg !2921
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2897, metadata !705) #11, !dbg !2922
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2898, metadata !705) #11, !dbg !2924
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2899, metadata !705) #11, !dbg !2925
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2926
  ret i8* %3, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2928 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2936, metadata !2942), !dbg !2943
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2932, metadata !705), !dbg !2945
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2933, metadata !705), !dbg !2946
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2934, metadata !705), !dbg !2947
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2948
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !2948
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2935, metadata !2057), !dbg !2949
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2941, metadata !705) #11, !dbg !2950
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2951
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2951
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2936, metadata !705) #11, !dbg !2943
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2936, metadata !2952) #11, !dbg !2943
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2943
  %8 = icmp eq i32 %1, 10, !dbg !2953
  br i1 %8, label %9, label %10, !dbg !2955

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2956, !noalias !2957
  unreachable, !dbg !2956

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2936, metadata !2952) #11, !dbg !2943
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2960
  store i32 %1, i32* %11, align 8, !dbg !2960, !alias.scope !2957
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2960
  %13 = bitcast i32* %12 to i8*, !dbg !2960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !2960
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2961
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2935, metadata !2057), !dbg !2949
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2962
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !2963
  ret i8* %14, !dbg !2964
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2965 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2936, metadata !2942), !dbg !2974
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2969, metadata !705), !dbg !2976
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2970, metadata !705), !dbg !2977
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2971, metadata !705), !dbg !2978
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2972, metadata !705), !dbg !2979
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2980
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !2980
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2973, metadata !2057), !dbg !2981
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2941, metadata !705) #11, !dbg !2982
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2983
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2983
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2936, metadata !705) #11, !dbg !2974
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2936, metadata !2952) #11, !dbg !2974
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2974
  %9 = icmp eq i32 %1, 10, !dbg !2984
  br i1 %9, label %10, label %11, !dbg !2985

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2986, !noalias !2987
  unreachable, !dbg !2986

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2936, metadata !2952) #11, !dbg !2974
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2990
  store i32 %1, i32* %12, align 8, !dbg !2990, !alias.scope !2987
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2990
  %14 = bitcast i32* %13 to i8*, !dbg !2990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !2990
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2991
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2973, metadata !2057), !dbg !2981
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2992
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !2993
  ret i8* %15, !dbg !2994
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2995 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2936, metadata !2942), !dbg !3001
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2999, metadata !705), !dbg !3004
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3000, metadata !705), !dbg !3005
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2932, metadata !705) #11, !dbg !3006
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2933, metadata !705) #11, !dbg !3007
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2934, metadata !705) #11, !dbg !3008
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3009
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2935, metadata !2057) #11, !dbg !3010
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2941, metadata !705) #11, !dbg !3011
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3012
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3012
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2936, metadata !705) #11, !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2936, metadata !2952) #11, !dbg !3001
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3001
  %7 = icmp eq i32 %0, 10, !dbg !3013
  br i1 %7, label %8, label %9, !dbg !3014

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3015, !noalias !3016
  unreachable, !dbg !3015

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2936, metadata !2952) #11, !dbg !3001
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3019
  store i32 %0, i32* %10, align 8, !dbg !3019, !alias.scope !3016
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3019
  %12 = bitcast i32* %11 to i8*, !dbg !3019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3019
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3020
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2935, metadata !2057) #11, !dbg !3010
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3021
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3022
  ret i8* %13, !dbg !3023
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3024 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2936, metadata !2942), !dbg !3031
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3028, metadata !705), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3029, metadata !705), !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3030, metadata !705), !dbg !3036
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2969, metadata !705) #11, !dbg !3037
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2970, metadata !705) #11, !dbg !3038
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2971, metadata !705) #11, !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2972, metadata !705) #11, !dbg !3040
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3041
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3041
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2973, metadata !2057) #11, !dbg !3042
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2941, metadata !705) #11, !dbg !3043
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3044
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3044
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2936, metadata !705) #11, !dbg !3031
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2936, metadata !2952) #11, !dbg !3031
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3031
  %8 = icmp eq i32 %0, 10, !dbg !3045
  br i1 %8, label %9, label %10, !dbg !3046

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3047, !noalias !3048
  unreachable, !dbg !3047

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2936, metadata !2952) #11, !dbg !3031
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3051
  store i32 %0, i32* %11, align 8, !dbg !3051, !alias.scope !3048
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3051
  %13 = bitcast i32* %12 to i8*, !dbg !3051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3051
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3052
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2973, metadata !2057) #11, !dbg !3042
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3053
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3054
  ret i8* %14, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3056 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3060, metadata !705), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3061, metadata !705), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3062, metadata !705), !dbg !3066
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3067
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3068, !tbaa.struct !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3063, metadata !2057), !dbg !3070
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1527, metadata !705), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1528, metadata !705), !dbg !3073
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1529, metadata !705), !dbg !3074
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1530, metadata !705), !dbg !3075
  %6 = lshr i8 %2, 5, !dbg !3076
  %7 = zext i8 %6 to i64, !dbg !3076
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3077
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1531, metadata !705), !dbg !3078
  %9 = and i8 %2, 31, !dbg !3079
  %10 = zext i8 %9 to i32, !dbg !3080
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1533, metadata !705), !dbg !3081
  %11 = load i32, i32* %8, align 4, !dbg !3082, !tbaa !844
  %12 = lshr i32 %11, %10, !dbg !3083
  %13 = and i32 %12, 1, !dbg !3084
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1534, metadata !705), !dbg !3085
  %14 = xor i32 %13, 1, !dbg !3086
  %15 = shl i32 %14, %10, !dbg !3087
  %16 = xor i32 %15, %11, !dbg !3088
  store i32 %16, i32* %8, align 4, !dbg !3088, !tbaa !844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3063, metadata !2057), !dbg !3070
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3089
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3090
  ret i8* %17, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3092 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3096, metadata !705), !dbg !3098
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3097, metadata !705), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3060, metadata !705) #11, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3061, metadata !705) #11, !dbg !3102
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3062, metadata !705) #11, !dbg !3103
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3104
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3105, !tbaa.struct !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3063, metadata !2057) #11, !dbg !3106
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1527, metadata !705) #11, !dbg !3107
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1528, metadata !705) #11, !dbg !3109
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1529, metadata !705) #11, !dbg !3110
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1530, metadata !705) #11, !dbg !3111
  %5 = lshr i8 %1, 5, !dbg !3112
  %6 = zext i8 %5 to i64, !dbg !3112
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3113
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1531, metadata !705) #11, !dbg !3114
  %8 = and i8 %1, 31, !dbg !3115
  %9 = zext i8 %8 to i32, !dbg !3116
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1533, metadata !705) #11, !dbg !3117
  %10 = load i32, i32* %7, align 4, !dbg !3118, !tbaa !844
  %11 = lshr i32 %10, %9, !dbg !3119
  %12 = and i32 %11, 1, !dbg !3120
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1534, metadata !705) #11, !dbg !3121
  %13 = xor i32 %12, 1, !dbg !3122
  %14 = shl i32 %13, %9, !dbg !3123
  %15 = xor i32 %14, %10, !dbg !3124
  store i32 %15, i32* %7, align 4, !dbg !3124, !tbaa !844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3063, metadata !2057) #11, !dbg !3106
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3125
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3126
  ret i8* %16, !dbg !3127
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3128 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3130, metadata !705), !dbg !3131
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3096, metadata !705) #11, !dbg !3132
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3097, metadata !705) #11, !dbg !3134
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3060, metadata !705) #11, !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3061, metadata !705) #11, !dbg !3137
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3062, metadata !705) #11, !dbg !3138
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3139
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3140, !tbaa.struct !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3063, metadata !2057) #11, !dbg !3141
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1527, metadata !705) #11, !dbg !3142
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1528, metadata !705) #11, !dbg !3144
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1529, metadata !705) #11, !dbg !3145
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1530, metadata !705) #11, !dbg !3146
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3147
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1531, metadata !705) #11, !dbg !3148
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1533, metadata !705) #11, !dbg !3149
  %5 = load i32, i32* %4, align 4, !dbg !3150, !tbaa !844
  %6 = or i32 %5, 67108864, !dbg !3151
  store i32 %6, i32* %4, align 4, !dbg !3151, !tbaa !844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3063, metadata !2057) #11, !dbg !3141
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3152
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3153
  ret i8* %7, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3155 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3157, metadata !705), !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3158, metadata !705), !dbg !3160
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3060, metadata !705) #11, !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3061, metadata !705) #11, !dbg !3163
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3062, metadata !705) #11, !dbg !3164
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3165
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3166, !tbaa.struct !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3063, metadata !2057) #11, !dbg !3167
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1527, metadata !705) #11, !dbg !3168
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1528, metadata !705) #11, !dbg !3170
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1529, metadata !705) #11, !dbg !3171
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1530, metadata !705) #11, !dbg !3172
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3173
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1531, metadata !705) #11, !dbg !3174
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1533, metadata !705) #11, !dbg !3175
  %6 = load i32, i32* %5, align 4, !dbg !3176, !tbaa !844
  %7 = or i32 %6, 67108864, !dbg !3177
  store i32 %7, i32* %5, align 4, !dbg !3177, !tbaa !844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3063, metadata !2057) #11, !dbg !3167
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3178
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3179
  ret i8* %8, !dbg !3180
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3181 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2936, metadata !2942), !dbg !3187
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3183, metadata !705), !dbg !3189
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3184, metadata !705), !dbg !3190
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3185, metadata !705), !dbg !3191
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3192
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3192
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2941, metadata !705) #11, !dbg !3193
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3194
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3194
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2936, metadata !705) #11, !dbg !3187
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2936, metadata !2952) #11, !dbg !3187
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3187
  %9 = icmp eq i32 %1, 10, !dbg !3195
  br i1 %9, label %10, label %11, !dbg !3196

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3197, !noalias !3198
  unreachable, !dbg !3197

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2936, metadata !2952) #11, !dbg !3187
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3201
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3202
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3203
  store i32 %1, i32* %13, align 8, !dbg !3203
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3203
  %15 = bitcast i32* %14 to i8*, !dbg !3203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3203
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3186, metadata !2057), !dbg !3204
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1527, metadata !705), !dbg !3205
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1528, metadata !705), !dbg !3207
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1529, metadata !705), !dbg !3208
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1530, metadata !705), !dbg !3209
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3210
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1531, metadata !705), !dbg !3211
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1533, metadata !705), !dbg !3212
  %17 = load i32, i32* %16, align 4, !dbg !3213, !tbaa !844
  %18 = or i32 %17, 67108864, !dbg !3214
  store i32 %18, i32* %16, align 4, !dbg !3214, !tbaa !844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3186, metadata !2057), !dbg !3204
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3215
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3216
  ret i8* %19, !dbg !3217
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3218 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3222, metadata !705), !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3223, metadata !705), !dbg !3227
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3224, metadata !705), !dbg !3228
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3225, metadata !705), !dbg !3229
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3230, metadata !705) #11, !dbg !3240
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3235, metadata !705) #11, !dbg !3242
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3236, metadata !705) #11, !dbg !3243
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3237, metadata !705) #11, !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3238, metadata !705) #11, !dbg !3245
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3246
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3246
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3247, !tbaa.struct !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3239, metadata !2057) #11, !dbg !3248
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1577, metadata !705) #11, !dbg !3249
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1578, metadata !705) #11, !dbg !3251
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1579, metadata !705) #11, !dbg !3252
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1577, metadata !705) #11, !dbg !3249
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1577, metadata !705) #11, !dbg !3249
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3253
  store i32 10, i32* %7, align 8, !dbg !3254, !tbaa !1507
  %8 = icmp ne i8* %1, null, !dbg !3255
  %9 = icmp ne i8* %2, null, !dbg !3256
  %10 = and i1 %8, %9, !dbg !3257
  br i1 %10, label %12, label %11, !dbg !3257

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3258
  unreachable, !dbg !3258

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3259
  store i8* %1, i8** %13, align 8, !dbg !3260, !tbaa !1596
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3261
  store i8* %2, i8** %14, align 8, !dbg !3262, !tbaa !1599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3239, metadata !2057) #11, !dbg !3248
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3263
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3264
  ret i8* %15, !dbg !3265
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3231 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3230, metadata !705), !dbg !3266
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3235, metadata !705), !dbg !3267
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3236, metadata !705), !dbg !3268
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3237, metadata !705), !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3238, metadata !705), !dbg !3270
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3271
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3272, !tbaa.struct !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3239, metadata !2057), !dbg !3273
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1577, metadata !705) #11, !dbg !3274
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1578, metadata !705) #11, !dbg !3276
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1579, metadata !705) #11, !dbg !3277
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1577, metadata !705) #11, !dbg !3274
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1577, metadata !705) #11, !dbg !3274
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3278
  store i32 10, i32* %8, align 8, !dbg !3279, !tbaa !1507
  %9 = icmp ne i8* %1, null, !dbg !3280
  %10 = icmp ne i8* %2, null, !dbg !3281
  %11 = and i1 %9, %10, !dbg !3282
  br i1 %11, label %13, label %12, !dbg !3282

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3283
  unreachable, !dbg !3283

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3284
  store i8* %1, i8** %14, align 8, !dbg !3285, !tbaa !1596
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3286
  store i8* %2, i8** %15, align 8, !dbg !3287, !tbaa !1599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3239, metadata !2057), !dbg !3273
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3288
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3289
  ret i8* %16, !dbg !3290
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3291 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3295, metadata !705), !dbg !3298
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3296, metadata !705), !dbg !3299
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3297, metadata !705), !dbg !3300
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3222, metadata !705) #11, !dbg !3301
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3223, metadata !705) #11, !dbg !3303
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3224, metadata !705) #11, !dbg !3304
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3225, metadata !705) #11, !dbg !3305
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3230, metadata !705) #11, !dbg !3306
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !705) #11, !dbg !3308
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3236, metadata !705) #11, !dbg !3309
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3237, metadata !705) #11, !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3238, metadata !705) #11, !dbg !3311
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3312
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3313, !tbaa.struct !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3239, metadata !2057) #11, !dbg !3314
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1577, metadata !705) #11, !dbg !3315
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1578, metadata !705) #11, !dbg !3317
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1579, metadata !705) #11, !dbg !3318
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1577, metadata !705) #11, !dbg !3315
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1577, metadata !705) #11, !dbg !3315
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3319
  store i32 10, i32* %6, align 8, !dbg !3320, !tbaa !1507
  %7 = icmp ne i8* %0, null, !dbg !3321
  %8 = icmp ne i8* %1, null, !dbg !3322
  %9 = and i1 %7, %8, !dbg !3323
  br i1 %9, label %11, label %10, !dbg !3323

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3324
  unreachable, !dbg !3324

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3325
  store i8* %0, i8** %12, align 8, !dbg !3326, !tbaa !1596
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3327
  store i8* %1, i8** %13, align 8, !dbg !3328, !tbaa !1599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3239, metadata !2057) #11, !dbg !3314
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3329
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3330
  ret i8* %14, !dbg !3331
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3332 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3336, metadata !705), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3337, metadata !705), !dbg !3341
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3338, metadata !705), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3339, metadata !705), !dbg !3343
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3230, metadata !705) #11, !dbg !3344
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3235, metadata !705) #11, !dbg !3346
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3236, metadata !705) #11, !dbg !3347
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3237, metadata !705) #11, !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3238, metadata !705) #11, !dbg !3349
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3350
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3350
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3351, !tbaa.struct !3069
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3239, metadata !2057) #11, !dbg !3352
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1577, metadata !705) #11, !dbg !3353
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1578, metadata !705) #11, !dbg !3355
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1579, metadata !705) #11, !dbg !3356
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1577, metadata !705) #11, !dbg !3353
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1577, metadata !705) #11, !dbg !3353
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3357
  store i32 10, i32* %7, align 8, !dbg !3358, !tbaa !1507
  %8 = icmp ne i8* %0, null, !dbg !3359
  %9 = icmp ne i8* %1, null, !dbg !3360
  %10 = and i1 %8, %9, !dbg !3361
  br i1 %10, label %12, label %11, !dbg !3361

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3362
  unreachable, !dbg !3362

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3363
  store i8* %0, i8** %13, align 8, !dbg !3364, !tbaa !1596
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3365
  store i8* %1, i8** %14, align 8, !dbg !3366, !tbaa !1599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3239, metadata !2057) #11, !dbg !3352
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3367
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3368
  ret i8* %15, !dbg !3369
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3370 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3374, metadata !705), !dbg !3377
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3375, metadata !705), !dbg !3378
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3376, metadata !705), !dbg !3379
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3380
  ret i8* %4, !dbg !3381
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3382 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3386, metadata !705), !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3387, metadata !705), !dbg !3389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3374, metadata !705) #11, !dbg !3390
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3375, metadata !705) #11, !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3376, metadata !705) #11, !dbg !3393
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3394
  ret i8* %3, !dbg !3395
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3396 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3400, metadata !705), !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3401, metadata !705), !dbg !3403
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3374, metadata !705) #11, !dbg !3404
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3375, metadata !705) #11, !dbg !3406
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3376, metadata !705) #11, !dbg !3407
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3408
  ret i8* %3, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3410 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3412, metadata !705), !dbg !3413
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3400, metadata !705) #11, !dbg !3414
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3401, metadata !705) #11, !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3374, metadata !705) #11, !dbg !3417
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3375, metadata !705) #11, !dbg !3419
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3376, metadata !705) #11, !dbg !3420
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3421
  ret i8* %2, !dbg !3422
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @try_tempname_len(i8*, i32, i8*, i32 (i8*, i8*)* nocapture, i64) local_unnamed_addr #6 !dbg !3423 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3430, metadata !705), !dbg !3451
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3431, metadata !705), !dbg !3452
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3432, metadata !705), !dbg !3453
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, i64 0, metadata !3433, metadata !705), !dbg !3454
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3434, metadata !705), !dbg !3455
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3438, metadata !705), !dbg !3456
  %6 = tail call i32* @__errno_location() #1, !dbg !3457
  %7 = load i32, i32* %6, align 4, !dbg !3457, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3439, metadata !705), !dbg !3458
  tail call void @llvm.dbg.value(metadata i32 238328, i64 0, metadata !3444, metadata !705), !dbg !3459
  %8 = tail call i64 @strlen(i8* %0) #13, !dbg !3460
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3435, metadata !705), !dbg !3461
  %9 = sext i32 %1 to i64, !dbg !3462
  %10 = add i64 %9, %4, !dbg !3464
  %11 = icmp ult i64 %8, %10, !dbg !3465
  br i1 %11, label %51, label %12, !dbg !3466

; <label>:12:                                     ; preds = %5
  %13 = sub i64 %8, %10, !dbg !3467
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !3469
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3470, metadata !705) #11, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3475, metadata !705) #11, !dbg !3478
  %15 = tail call i64 @strspn(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.77, i64 0, i64 0)) #11, !dbg !3479
  %16 = icmp ult i64 %15, %4, !dbg !3480
  br i1 %16, label %51, label %17, !dbg !3481

; <label>:17:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3436, metadata !705), !dbg !3483
  %18 = tail call %struct.randint_source* @randint_all_new(i8* null, i64 %4) #11, !dbg !3484
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %18, i64 0, metadata !3440, metadata !705), !dbg !3485
  %19 = icmp eq %struct.randint_source* %18, null, !dbg !3486
  br i1 %19, label %54, label %20, !dbg !3488

; <label>:20:                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3437, metadata !705), !dbg !3489
  %21 = icmp eq i64 %4, 0
  br label %24, !dbg !3490

; <label>:22:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3437, metadata !705), !dbg !3489
  %23 = icmp ult i32 %43, 238328, !dbg !3492
  br i1 %23, label %24, label %44, !dbg !3490, !llvm.loop !3494

; <label>:24:                                     ; preds = %20, %22
  %25 = phi i32 [ 0, %20 ], [ %43, %22 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3445, metadata !705), !dbg !3497
  br i1 %21, label %36, label %26, !dbg !3498

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !3501

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %33, %27 ], [ 0, %26 ]
  %29 = tail call i64 @randint_genmax(%struct.randint_source* nonnull %18, i64 61) #11, !dbg !3501
  %30 = getelementptr inbounds [63 x i8], [63 x i8]* @letters, i64 0, i64 %29, !dbg !3503
  %31 = load i8, i8* %30, align 1, !dbg !3503, !tbaa !872
  %32 = getelementptr inbounds i8, i8* %14, i64 %28, !dbg !3504
  store i8 %31, i8* %32, align 1, !dbg !3505, !tbaa !872
  %33 = add nuw i64 %28, 1, !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3445, metadata !705), !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3445, metadata !705), !dbg !3497
  %34 = icmp eq i64 %33, %4, !dbg !3508
  br i1 %34, label %35, label %27, !dbg !3498, !llvm.loop !3510

; <label>:35:                                     ; preds = %27
  br label %36, !dbg !3513

; <label>:36:                                     ; preds = %35, %24
  %37 = tail call i32 %3(i8* %0, i8* %2) #11, !dbg !3513
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !3438, metadata !705), !dbg !3456
  %38 = icmp sgt i32 %37, -1, !dbg !3514
  br i1 %38, label %39, label %40, !dbg !3516

; <label>:39:                                     ; preds = %36
  store i32 %7, i32* %6, align 4, !dbg !3517, !tbaa !844
  br label %47, !dbg !3519

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %6, align 4, !dbg !3520, !tbaa !844
  %42 = icmp eq i32 %41, 17, !dbg !3522
  %43 = add nuw nsw i32 %25, 1, !dbg !3523
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3437, metadata !705), !dbg !3489
  br i1 %42, label %22, label %46

; <label>:44:                                     ; preds = %22
  %45 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #11, !dbg !3525
  br label %51, !dbg !3526

; <label>:46:                                     ; preds = %40
  br label %47, !dbg !3527

; <label>:47:                                     ; preds = %46, %39
  %48 = phi i32 [ %7, %39 ], [ %41, %46 ], !dbg !3528
  %49 = phi i32 [ %37, %39 ], [ -1, %46 ]
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !3449, metadata !705), !dbg !3527
  %50 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #11, !dbg !3529
  br label %51, !dbg !3530

; <label>:51:                                     ; preds = %12, %5, %44, %47
  %52 = phi i32 [ %48, %47 ], [ 17, %44 ], [ 22, %12 ], [ 22, %5 ]
  %53 = phi i32 [ %49, %47 ], [ -1, %44 ], [ -1, %12 ], [ -1, %5 ]
  store i32 %52, i32* %6, align 4, !tbaa !844
  br label %54, !dbg !3531

; <label>:54:                                     ; preds = %51, %17
  %55 = phi i32 [ -1, %17 ], [ %53, %51 ]
  ret i32 %55, !dbg !3531
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @gen_tempname_len(i8*, i32, i32, i32, i64) local_unnamed_addr #6 !dbg !3532 {
  %6 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !705), !dbg !3542
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3537, metadata !705), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3538, metadata !705), !dbg !3544
  store i32 %2, i32* %6, align 4, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3539, metadata !705), !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3540, metadata !705), !dbg !3546
  %7 = icmp ult i32 %3, 3, !dbg !3547
  br i1 %7, label %9, label %8, !dbg !3547

; <label>:8:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.81, i64 0, i64 0), i32 328, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #14, !dbg !3548
  unreachable, !dbg !3548

; <label>:9:                                      ; preds = %5
  %10 = sext i32 %3 to i64, !dbg !3547
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table, i64 0, i64 %10, !dbg !3547
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, i64 0, metadata !3541, metadata !705), !dbg !3552
  %13 = bitcast i32* %6 to i8*, !dbg !3553
  %14 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %13, i32 (i8*, i8*)* %12, i64 %4), !dbg !3554
  ret i32 %14, !dbg !3555
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_file(i8* nocapture readonly, i8* nocapture readonly) #6 !dbg !3556 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3558, metadata !705), !dbg !3561
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3559, metadata !705), !dbg !3562
  %3 = bitcast i8* %1 to i32*, !dbg !3563
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !3560, metadata !705), !dbg !3564
  %4 = load i32, i32* %3, align 4, !dbg !3565, !tbaa !844
  %5 = and i32 %4, -196, !dbg !3566
  %6 = or i32 %5, 194, !dbg !3567
  %7 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 %6, i32 384) #11, !dbg !3568
  ret i32 %7, !dbg !3569
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_dir(i8* nocapture readonly, i8* nocapture readnone) #6 !dbg !3570 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3572, metadata !705), !dbg !3574
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3573, metadata !705), !dbg !3575
  %3 = tail call i32 @mkdir(i8* %0, i32 448) #11, !dbg !3576
  ret i32 %3, !dbg !3577
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_nocreate(i8*, i8* nocapture readnone) #6 !dbg !3578 {
  %3 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3580, metadata !705), !dbg !3619
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3581, metadata !705), !dbg !3620
  %4 = bitcast %struct.stat* %3 to i8*, !dbg !3621
  call void @llvm.lifetime.start(i64 144, i8* nonnull %4) #11, !dbg !3621
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !3582, metadata !2057), !dbg !3622
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3623, metadata !705) #11, !dbg !3631
  tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !3630, metadata !705) #11, !dbg !3631
  %5 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %3) #11, !dbg !3634
  %6 = icmp eq i32 %5, 0, !dbg !3635
  %7 = tail call i32* @__errno_location() #1, !dbg !3636
  br i1 %6, label %8, label %9, !dbg !3637

; <label>:8:                                      ; preds = %2
  store i32 17, i32* %7, align 4, !dbg !3636, !tbaa !844
  br label %9, !dbg !3636

; <label>:9:                                      ; preds = %2, %8
  %10 = load i32, i32* %7, align 4, !dbg !3638, !tbaa !844
  %11 = icmp ne i32 %10, 2, !dbg !3638
  %12 = sext i1 %11 to i32, !dbg !3638
  call void @llvm.lifetime.end(i64 144, i8* nonnull %4) #11, !dbg !3639
  ret i32 %12, !dbg !3640
}

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @gen_tempname(i8*, i32, i32, i32) local_unnamed_addr #6 !dbg !3641 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3645, metadata !705), !dbg !3649
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3646, metadata !705), !dbg !3650
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3647, metadata !705), !dbg !3651
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3648, metadata !705), !dbg !3652
  %6 = bitcast i32* %5 to i8*, !dbg !3653
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3536, metadata !705) #11, !dbg !3653
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3537, metadata !705) #11, !dbg !3655
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3538, metadata !705) #11, !dbg !3656
  store i32 %2, i32* %5, align 4, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3539, metadata !705) #11, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !3540, metadata !705) #11, !dbg !3658
  %7 = icmp ult i32 %3, 3, !dbg !3659
  br i1 %7, label %9, label %8, !dbg !3659

; <label>:8:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.81, i64 0, i64 0), i32 328, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #14, !dbg !3660
  unreachable, !dbg !3660

; <label>:9:                                      ; preds = %4
  %10 = sext i32 %3 to i64, !dbg !3659
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table, i64 0, i64 %10, !dbg !3659
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %12, i64 0, metadata !3541, metadata !705) #11, !dbg !3661
  %13 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %6, i32 (i8*, i8*)* %12, i64 6) #11, !dbg !3662
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6), !dbg !3663
  ret i32 %13, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @try_tempname(i8*, i32, i8*, i32 (i8*, i8*)* nocapture) local_unnamed_addr #6 !dbg !3665 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3669, metadata !705), !dbg !3673
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3670, metadata !705), !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3671, metadata !705), !dbg !3675
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %3, i64 0, metadata !3672, metadata !705), !dbg !3676
  %5 = tail call i32 @try_tempname_len(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* %3, i64 6), !dbg !3677
  ret i32 %5, !dbg !3678
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3679 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3724, metadata !705), !dbg !3730
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3725, metadata !705), !dbg !3731
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3726, metadata !705), !dbg !3732
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3727, metadata !705), !dbg !3733
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3728, metadata !705), !dbg !3734
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3729, metadata !705), !dbg !3735
  %7 = icmp eq i8* %1, null, !dbg !3736
  br i1 %7, label %10, label %8, !dbg !3738

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3739
  br label %12, !dbg !3739

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3740
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i32 5) #11, !dbg !3741
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3742
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.85, i64 0, i64 0), i32 5) #11, !dbg !3744
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3745
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
  ], !dbg !3746

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3747
  unreachable, !dbg !3747

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.86, i64 0, i64 0), i32 5) #11, !dbg !3749
  %20 = load i8*, i8** %4, align 8, !dbg !3749, !tbaa !713
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3750
  br label %146, !dbg !3752

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.87, i64 0, i64 0), i32 5) #11, !dbg !3753
  %24 = load i8*, i8** %4, align 8, !dbg !3753, !tbaa !713
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3753
  %26 = load i8*, i8** %25, align 8, !dbg !3753, !tbaa !713
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3754
  br label %146, !dbg !3755

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.88, i64 0, i64 0), i32 5) #11, !dbg !3756
  %30 = load i8*, i8** %4, align 8, !dbg !3756, !tbaa !713
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3756
  %32 = load i8*, i8** %31, align 8, !dbg !3756, !tbaa !713
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3756
  %34 = load i8*, i8** %33, align 8, !dbg !3756, !tbaa !713
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3757
  br label %146, !dbg !3758

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.89, i64 0, i64 0), i32 5) #11, !dbg !3759
  %38 = load i8*, i8** %4, align 8, !dbg !3759, !tbaa !713
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3759
  %40 = load i8*, i8** %39, align 8, !dbg !3759, !tbaa !713
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3759
  %42 = load i8*, i8** %41, align 8, !dbg !3759, !tbaa !713
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3759
  %44 = load i8*, i8** %43, align 8, !dbg !3759, !tbaa !713
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3760
  br label %146, !dbg !3761

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.90, i64 0, i64 0), i32 5) #11, !dbg !3762
  %48 = load i8*, i8** %4, align 8, !dbg !3762, !tbaa !713
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3762
  %50 = load i8*, i8** %49, align 8, !dbg !3762, !tbaa !713
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3762
  %52 = load i8*, i8** %51, align 8, !dbg !3762, !tbaa !713
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3762
  %54 = load i8*, i8** %53, align 8, !dbg !3762, !tbaa !713
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3762
  %56 = load i8*, i8** %55, align 8, !dbg !3762, !tbaa !713
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3763
  br label %146, !dbg !3764

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.91, i64 0, i64 0), i32 5) #11, !dbg !3765
  %60 = load i8*, i8** %4, align 8, !dbg !3765, !tbaa !713
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3765
  %62 = load i8*, i8** %61, align 8, !dbg !3765, !tbaa !713
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3765
  %64 = load i8*, i8** %63, align 8, !dbg !3765, !tbaa !713
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3765
  %66 = load i8*, i8** %65, align 8, !dbg !3765, !tbaa !713
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3765
  %68 = load i8*, i8** %67, align 8, !dbg !3765, !tbaa !713
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3765
  %70 = load i8*, i8** %69, align 8, !dbg !3765, !tbaa !713
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3766
  br label %146, !dbg !3767

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.92, i64 0, i64 0), i32 5) #11, !dbg !3768
  %74 = load i8*, i8** %4, align 8, !dbg !3768, !tbaa !713
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3768
  %76 = load i8*, i8** %75, align 8, !dbg !3768, !tbaa !713
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3768
  %78 = load i8*, i8** %77, align 8, !dbg !3768, !tbaa !713
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3768
  %80 = load i8*, i8** %79, align 8, !dbg !3768, !tbaa !713
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3768
  %82 = load i8*, i8** %81, align 8, !dbg !3768, !tbaa !713
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3768
  %84 = load i8*, i8** %83, align 8, !dbg !3768, !tbaa !713
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3768
  %86 = load i8*, i8** %85, align 8, !dbg !3768, !tbaa !713
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3769
  br label %146, !dbg !3770

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.93, i64 0, i64 0), i32 5) #11, !dbg !3771
  %90 = load i8*, i8** %4, align 8, !dbg !3771, !tbaa !713
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3771
  %92 = load i8*, i8** %91, align 8, !dbg !3771, !tbaa !713
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3771
  %94 = load i8*, i8** %93, align 8, !dbg !3771, !tbaa !713
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3771
  %96 = load i8*, i8** %95, align 8, !dbg !3771, !tbaa !713
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3771
  %98 = load i8*, i8** %97, align 8, !dbg !3771, !tbaa !713
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3771
  %100 = load i8*, i8** %99, align 8, !dbg !3771, !tbaa !713
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3771
  %102 = load i8*, i8** %101, align 8, !dbg !3771, !tbaa !713
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3771
  %104 = load i8*, i8** %103, align 8, !dbg !3771, !tbaa !713
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3772
  br label %146, !dbg !3773

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.94, i64 0, i64 0), i32 5) #11, !dbg !3774
  %108 = load i8*, i8** %4, align 8, !dbg !3774, !tbaa !713
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3774
  %110 = load i8*, i8** %109, align 8, !dbg !3774, !tbaa !713
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3774
  %112 = load i8*, i8** %111, align 8, !dbg !3774, !tbaa !713
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3774
  %114 = load i8*, i8** %113, align 8, !dbg !3774, !tbaa !713
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3774
  %116 = load i8*, i8** %115, align 8, !dbg !3774, !tbaa !713
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3774
  %118 = load i8*, i8** %117, align 8, !dbg !3774, !tbaa !713
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3774
  %120 = load i8*, i8** %119, align 8, !dbg !3774, !tbaa !713
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3774
  %122 = load i8*, i8** %121, align 8, !dbg !3774, !tbaa !713
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3774
  %124 = load i8*, i8** %123, align 8, !dbg !3774, !tbaa !713
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3775
  br label %146, !dbg !3776

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.95, i64 0, i64 0), i32 5) #11, !dbg !3777
  %128 = load i8*, i8** %4, align 8, !dbg !3777, !tbaa !713
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3777
  %130 = load i8*, i8** %129, align 8, !dbg !3777, !tbaa !713
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3777
  %132 = load i8*, i8** %131, align 8, !dbg !3777, !tbaa !713
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3777
  %134 = load i8*, i8** %133, align 8, !dbg !3777, !tbaa !713
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3777
  %136 = load i8*, i8** %135, align 8, !dbg !3777, !tbaa !713
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3777
  %138 = load i8*, i8** %137, align 8, !dbg !3777, !tbaa !713
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3777
  %140 = load i8*, i8** %139, align 8, !dbg !3777, !tbaa !713
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3777
  %142 = load i8*, i8** %141, align 8, !dbg !3777, !tbaa !713
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3777
  %144 = load i8*, i8** %143, align 8, !dbg !3777, !tbaa !713
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3778
  br label %146, !dbg !3779

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3780
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3781 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3785, metadata !705), !dbg !3791
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3786, metadata !705), !dbg !3792
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3787, metadata !705), !dbg !3793
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3788, metadata !705), !dbg !3794
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3789, metadata !705), !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3790, metadata !705), !dbg !3796
  br label %6, !dbg !3797

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3790, metadata !705), !dbg !3796
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3799
  %9 = load i8*, i8** %8, align 8, !dbg !3799, !tbaa !713
  %10 = icmp eq i8* %9, null, !dbg !3802
  %11 = add i64 %7, 1, !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3790, metadata !705), !dbg !3796
  br i1 %10, label %12, label %6, !dbg !3802, !llvm.loop !3806

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3809
  ret void, !dbg !3810
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3811 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3822, metadata !705), !dbg !3830
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3823, metadata !705), !dbg !3831
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3824, metadata !705), !dbg !3832
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3825, metadata !705), !dbg !3833
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3826, metadata !705), !dbg !3834
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3835
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3835
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3828, metadata !705), !dbg !3836
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3827, metadata !705), !dbg !3837
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3838
  %12 = icmp ult i32 %11, 41, !dbg !3838
  br i1 %12, label %13, label %18, !dbg !3838

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3842
  %15 = sext i32 %11 to i64, !dbg !3842
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3842
  %17 = add i32 %11, 8, !dbg !3842
  store i32 %17, i32* %8, align 8, !dbg !3842
  br label %21, !dbg !3842

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3844
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3844
  store i8* %20, i8** %10, align 8, !dbg !3844
  br label %21, !dbg !3844

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3838
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3846
  %25 = load i8*, i8** %24, align 8, !dbg !3846
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3848
  store i8* %25, i8** %26, align 16, !dbg !3849, !tbaa !713
  %27 = icmp eq i8* %25, null, !dbg !3850
  br i1 %27, label %30, label %28, !dbg !3851

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %29 = icmp ult i32 %22, 41, !dbg !3838
  br i1 %29, label %35, label %32, !dbg !3838

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3853
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !3854
  ret void, !dbg !3854

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3844
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3844
  store i8* %34, i8** %10, align 8, !dbg !3844
  br label %40, !dbg !3844

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3842
  %37 = sext i32 %22 to i64, !dbg !3842
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3842
  %39 = add i32 %22, 8, !dbg !3842
  store i32 %39, i32* %8, align 8, !dbg !3842
  br label %40, !dbg !3842

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3838
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3846
  %44 = load i8*, i8** %43, align 8, !dbg !3846
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3848
  store i8* %44, i8** %45, align 8, !dbg !3849, !tbaa !713
  %46 = icmp eq i8* %44, null, !dbg !3850
  br i1 %46, label %30, label %47, !dbg !3851

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %48 = icmp ult i32 %41, 41, !dbg !3838
  br i1 %48, label %52, label %49, !dbg !3838

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3844
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3844
  store i8* %51, i8** %10, align 8, !dbg !3844
  br label %57, !dbg !3844

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3842
  %54 = sext i32 %41 to i64, !dbg !3842
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3842
  %56 = add i32 %41, 8, !dbg !3842
  store i32 %56, i32* %8, align 8, !dbg !3842
  br label %57, !dbg !3842

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3838
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3846
  %61 = load i8*, i8** %60, align 8, !dbg !3846
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3848
  store i8* %61, i8** %62, align 16, !dbg !3849, !tbaa !713
  %63 = icmp eq i8* %61, null, !dbg !3850
  br i1 %63, label %30, label %64, !dbg !3851

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %65 = icmp ult i32 %58, 41, !dbg !3838
  br i1 %65, label %69, label %66, !dbg !3838

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3844
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3844
  store i8* %68, i8** %10, align 8, !dbg !3844
  br label %74, !dbg !3844

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3842
  %71 = sext i32 %58 to i64, !dbg !3842
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3842
  %73 = add i32 %58, 8, !dbg !3842
  store i32 %73, i32* %8, align 8, !dbg !3842
  br label %74, !dbg !3842

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3838
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3846
  %78 = load i8*, i8** %77, align 8, !dbg !3846
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3848
  store i8* %78, i8** %79, align 8, !dbg !3849, !tbaa !713
  %80 = icmp eq i8* %78, null, !dbg !3850
  br i1 %80, label %30, label %81, !dbg !3851

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %82 = icmp ult i32 %75, 41, !dbg !3838
  br i1 %82, label %86, label %83, !dbg !3838

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3844
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3844
  store i8* %85, i8** %10, align 8, !dbg !3844
  br label %91, !dbg !3844

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3842
  %88 = sext i32 %75 to i64, !dbg !3842
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3842
  %90 = add i32 %75, 8, !dbg !3842
  store i32 %90, i32* %8, align 8, !dbg !3842
  br label %91, !dbg !3842

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3838
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3846
  %95 = load i8*, i8** %94, align 8, !dbg !3846
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3848
  store i8* %95, i8** %96, align 16, !dbg !3849, !tbaa !713
  %97 = icmp eq i8* %95, null, !dbg !3850
  br i1 %97, label %30, label %98, !dbg !3851

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %99 = icmp ult i32 %92, 41, !dbg !3838
  br i1 %99, label %103, label %100, !dbg !3838

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3844
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3844
  store i8* %102, i8** %10, align 8, !dbg !3844
  br label %108, !dbg !3844

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3842
  %105 = sext i32 %92 to i64, !dbg !3842
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3842
  %107 = add i32 %92, 8, !dbg !3842
  store i32 %107, i32* %8, align 8, !dbg !3842
  br label %108, !dbg !3842

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3846
  %111 = load i8*, i8** %110, align 8, !dbg !3846
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3848
  store i8* %111, i8** %112, align 8, !dbg !3849, !tbaa !713
  %113 = icmp eq i8* %111, null, !dbg !3850
  br i1 %113, label %30, label %114, !dbg !3851

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %115 = load i8*, i8** %10, align 8, !dbg !3844
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3844
  store i8* %116, i8** %10, align 8, !dbg !3844
  %117 = bitcast i8* %115 to i8**, !dbg !3846
  %118 = load i8*, i8** %117, align 8, !dbg !3846
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3848
  store i8* %118, i8** %119, align 16, !dbg !3849, !tbaa !713
  %120 = icmp eq i8* %118, null, !dbg !3850
  br i1 %120, label %30, label %121, !dbg !3851

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %122 = load i8*, i8** %10, align 8, !dbg !3844
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3844
  store i8* %123, i8** %10, align 8, !dbg !3844
  %124 = bitcast i8* %122 to i8**, !dbg !3846
  %125 = load i8*, i8** %124, align 8, !dbg !3846
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3848
  store i8* %125, i8** %126, align 8, !dbg !3849, !tbaa !713
  %127 = icmp eq i8* %125, null, !dbg !3850
  br i1 %127, label %30, label %128, !dbg !3851

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %129 = load i8*, i8** %10, align 8, !dbg !3844
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3844
  store i8* %130, i8** %10, align 8, !dbg !3844
  %131 = bitcast i8* %129 to i8**, !dbg !3846
  %132 = load i8*, i8** %131, align 8, !dbg !3846
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3848
  store i8* %132, i8** %133, align 16, !dbg !3849, !tbaa !713
  %134 = icmp eq i8* %132, null, !dbg !3850
  br i1 %134, label %30, label %135, !dbg !3851

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %136 = load i8*, i8** %10, align 8, !dbg !3844
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3844
  store i8* %137, i8** %10, align 8, !dbg !3844
  %138 = bitcast i8* %136 to i8**, !dbg !3846
  %139 = load i8*, i8** %138, align 8, !dbg !3846
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3848
  store i8* %139, i8** %140, align 8, !dbg !3849, !tbaa !713
  %141 = icmp eq i8* %139, null, !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3827, metadata !705), !dbg !3837
  %142 = select i1 %141, i64 9, i64 10, !dbg !3851
  br label %30, !dbg !3851
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3855 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3859, metadata !705), !dbg !3868
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3860, metadata !705), !dbg !3869
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3861, metadata !705), !dbg !3870
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3862, metadata !705), !dbg !3871
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3872
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !3872
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3863, metadata !705), !dbg !3873
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3874
  call void @llvm.va_start(i8* nonnull %6), !dbg !3874
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3875
  call void @llvm.va_end(i8* nonnull %6), !dbg !3876
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !3877
  ret void, !dbg !3877
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3878 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.98, i64 0, i64 0), i32 5) #11, !dbg !3879
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.99, i64 0, i64 0)) #11, !dbg !3880
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.100, i64 0, i64 0), i32 5) #11, !dbg !3882
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.101, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.102, i64 0, i64 0)) #11, !dbg !3883
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.103, i64 0, i64 0), i32 5) #11, !dbg !3884
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3884, !tbaa !713
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !3885
  ret void, !dbg !3886
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3887 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3891, metadata !705), !dbg !3893
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3892, metadata !705), !dbg !3894
  %3 = udiv i64 9223372036854775807, %1, !dbg !3895
  %4 = icmp ult i64 %3, %0, !dbg !3895
  br i1 %4, label %5, label %6, !dbg !3897

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3898
  unreachable, !dbg !3898

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3900, metadata !705) #11, !dbg !3907
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3909
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3906, metadata !705) #11, !dbg !3910
  %9 = icmp eq i8* %8, null, !dbg !3911
  %10 = icmp ne i64 %7, 0, !dbg !3913
  %11 = and i1 %10, %9, !dbg !3915
  br i1 %11, label %12, label %13, !dbg !3915

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3916
  unreachable, !dbg !3916

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3917
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3901 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3900, metadata !705), !dbg !3918
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3919
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3906, metadata !705), !dbg !3920
  %3 = icmp eq i8* %2, null, !dbg !3921
  %4 = icmp ne i64 %0, 0, !dbg !3922
  %5 = and i1 %4, %3, !dbg !3923
  br i1 %5, label %6, label %7, !dbg !3923

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3924
  unreachable, !dbg !3924

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3925
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3926 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3930, metadata !705), !dbg !3933
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3931, metadata !705), !dbg !3934
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3932, metadata !705), !dbg !3935
  %4 = udiv i64 9223372036854775807, %2, !dbg !3936
  %5 = icmp ult i64 %4, %1, !dbg !3936
  br i1 %5, label %6, label %7, !dbg !3938

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3939
  unreachable, !dbg !3939

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3940
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3941, metadata !705) #11, !dbg !3947
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3946, metadata !705) #11, !dbg !3949
  %9 = icmp eq i64 %8, 0, !dbg !3950
  %10 = icmp ne i8* %0, null, !dbg !3952
  %11 = and i1 %10, %9, !dbg !3954
  br i1 %11, label %12, label %13, !dbg !3954

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3955
  br label %19, !dbg !3957

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3958
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3941, metadata !705) #11, !dbg !3947
  %15 = icmp eq i8* %14, null, !dbg !3959
  %16 = icmp ne i64 %8, 0, !dbg !3961
  %17 = and i1 %16, %15, !dbg !3963
  br i1 %17, label %18, label %19, !dbg !3963

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3964
  unreachable, !dbg !3964

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3965
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3942 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3941, metadata !705), !dbg !3966
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3946, metadata !705), !dbg !3967
  %3 = icmp eq i64 %1, 0, !dbg !3968
  %4 = icmp ne i8* %0, null, !dbg !3969
  %5 = and i1 %4, %3, !dbg !3970
  br i1 %5, label %6, label %7, !dbg !3970

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3971
  br label %13, !dbg !3972

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3973
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3941, metadata !705), !dbg !3966
  %9 = icmp eq i8* %8, null, !dbg !3974
  %10 = icmp ne i64 %1, 0, !dbg !3975
  %11 = and i1 %10, %9, !dbg !3976
  br i1 %11, label %12, label %13, !dbg !3976

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3977
  unreachable, !dbg !3977

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3978
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !602 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !607, metadata !705), !dbg !3979
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !608, metadata !705), !dbg !3980
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !609, metadata !705), !dbg !3981
  %4 = load i64, i64* %1, align 8, !dbg !3982, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !610, metadata !705), !dbg !3983
  %5 = icmp eq i8* %0, null, !dbg !3984
  br i1 %5, label %6, label %13, !dbg !3986

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3987
  br i1 %7, label %8, label %17, !dbg !3990

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3991
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !610, metadata !705), !dbg !3983
  %10 = icmp ugt i64 %2, 128, !dbg !3993
  %11 = zext i1 %10 to i64, !dbg !3993
  %12 = add nuw nsw i64 %9, %11, !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !610, metadata !705), !dbg !3983
  br label %17, !dbg !3995

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3996
  %15 = icmp ugt i64 %14, %4, !dbg !3999
  br i1 %15, label %20, label %16, !dbg !4000

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4001
  unreachable, !dbg !4001

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !610, metadata !705), !dbg !3983
  store i64 %18, i64* %1, align 8, !dbg !4002, !tbaa !2744
  %19 = mul i64 %18, %2, !dbg !4003
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3941, metadata !705) #11, !dbg !4004
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3946, metadata !705) #11, !dbg !4006
  br label %27, !dbg !4007

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4008
  %22 = add i64 %4, 1, !dbg !4009
  %23 = add i64 %22, %21, !dbg !4010
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !610, metadata !705), !dbg !3983
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !610, metadata !705), !dbg !3983
  store i64 %23, i64* %1, align 8, !dbg !4002, !tbaa !2744
  %24 = mul i64 %23, %2, !dbg !4003
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3941, metadata !705) #11, !dbg !4004
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3946, metadata !705) #11, !dbg !4006
  %25 = icmp eq i64 %24, 0, !dbg !4011
  br i1 %25, label %26, label %27, !dbg !4007

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4012
  br label %34, !dbg !4013

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4014
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3941, metadata !705) #11, !dbg !4004
  %30 = icmp eq i8* %29, null, !dbg !4015
  %31 = icmp ne i64 %28, 0, !dbg !4016
  %32 = and i1 %31, %30, !dbg !4017
  br i1 %32, label %33, label %34, !dbg !4017

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4018
  unreachable, !dbg !4018

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4019
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4020 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4022, metadata !705), !dbg !4023
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3900, metadata !705) #11, !dbg !4024
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4026
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3906, metadata !705) #11, !dbg !4027
  %3 = icmp eq i8* %2, null, !dbg !4028
  %4 = icmp ne i64 %0, 0, !dbg !4029
  %5 = and i1 %4, %3, !dbg !4030
  br i1 %5, label %6, label %7, !dbg !4030

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4031
  unreachable, !dbg !4031

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4032
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4033 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4037, metadata !705), !dbg !4039
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4038, metadata !705), !dbg !4040
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !607, metadata !705) #11, !dbg !4041
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !608, metadata !705) #11, !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !609, metadata !705) #11, !dbg !4044
  %3 = load i64, i64* %1, align 8, !dbg !4045, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !610, metadata !705) #11, !dbg !4046
  %4 = icmp eq i8* %0, null, !dbg !4047
  br i1 %4, label %5, label %8, !dbg !4048

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4049
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !610, metadata !705) #11, !dbg !4046
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !610, metadata !705) #11, !dbg !4046
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !610, metadata !705) #11, !dbg !4046
  store i64 %7, i64* %1, align 8, !dbg !4051, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3941, metadata !705) #11, !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3946, metadata !705) #11, !dbg !4054
  br label %17, !dbg !4055

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4056
  br i1 %9, label %11, label %10, !dbg !4057

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4058
  unreachable, !dbg !4058

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4059
  %13 = add i64 %3, 1, !dbg !4060
  %14 = add i64 %13, %12, !dbg !4061
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !610, metadata !705) #11, !dbg !4046
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !610, metadata !705) #11, !dbg !4046
  store i64 %14, i64* %1, align 8, !dbg !4051, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3941, metadata !705) #11, !dbg !4052
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3946, metadata !705) #11, !dbg !4054
  %15 = icmp eq i64 %14, 0, !dbg !4062
  br i1 %15, label %16, label %17, !dbg !4055

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4063
  br label %24, !dbg !4064

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4065
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3941, metadata !705) #11, !dbg !4052
  %20 = icmp eq i8* %19, null, !dbg !4066
  %21 = icmp ne i64 %18, 0, !dbg !4067
  %22 = and i1 %21, %20, !dbg !4068
  br i1 %22, label %23, label %24, !dbg !4068

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4069
  unreachable, !dbg !4069

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4070
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4071 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4073, metadata !705), !dbg !4074
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3900, metadata !705) #11, !dbg !4075
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4077
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3906, metadata !705) #11, !dbg !4078
  %3 = icmp eq i8* %2, null, !dbg !4079
  %4 = icmp ne i64 %0, 0, !dbg !4080
  %5 = and i1 %4, %3, !dbg !4081
  br i1 %5, label %6, label %7, !dbg !4081

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4082
  unreachable, !dbg !4082

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4083
  ret i8* %2, !dbg !4084
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4085 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4087, metadata !705), !dbg !4090
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4088, metadata !705), !dbg !4091
  %3 = udiv i64 9223372036854775807, %1, !dbg !4092
  %4 = icmp ult i64 %3, %0, !dbg !4092
  br i1 %4, label %8, label %5, !dbg !4094

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4095
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4089, metadata !705), !dbg !4097
  %7 = icmp eq i8* %6, null, !dbg !4098
  br i1 %7, label %8, label %9, !dbg !4099

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4101
  unreachable, !dbg !4101

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4102
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4103 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4107, metadata !705), !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4108, metadata !705), !dbg !4110
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3900, metadata !705) #11, !dbg !4111
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4113
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3906, metadata !705) #11, !dbg !4114
  %4 = icmp eq i8* %3, null, !dbg !4115
  %5 = icmp ne i64 %1, 0, !dbg !4116
  %6 = and i1 %5, %4, !dbg !4117
  br i1 %6, label %7, label %8, !dbg !4117

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4118
  unreachable, !dbg !4118

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4119
  ret i8* %3, !dbg !4120
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4121 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4123, metadata !705), !dbg !4124
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4125
  %3 = add i64 %2, 1, !dbg !4126
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4107, metadata !705) #11, !dbg !4127
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4108, metadata !705) #11, !dbg !4130
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3900, metadata !705) #11, !dbg !4131
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4133
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3906, metadata !705) #11, !dbg !4134
  %5 = icmp eq i8* %4, null, !dbg !4135
  %6 = icmp ne i64 %3, 0, !dbg !4136
  %7 = and i1 %6, %5, !dbg !4137
  br i1 %7, label %8, label %9, !dbg !4137

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4138
  unreachable, !dbg !4138

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4139
  ret i8* %4, !dbg !4140
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4141 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4143, !tbaa !844
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.116, i64 0, i64 0), i32 5) #11, !dbg !4144
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %2) #11, !dbg !4145
  tail call void @abort() #14, !dbg !4147
  unreachable, !dbg !4147
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4148 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4151, metadata !705), !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4152, metadata !705), !dbg !4158
  %3 = icmp eq i64 %0, 0, !dbg !4159
  %4 = icmp eq i64 %1, 0, !dbg !4160
  %5 = or i1 %3, %4, !dbg !4162
  br i1 %5, label %12, label %6, !dbg !4162

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4154, metadata !705), !dbg !4164
  %8 = udiv i64 %7, %1, !dbg !4165
  %9 = icmp eq i64 %8, %0, !dbg !4167
  br i1 %9, label %12, label %10, !dbg !4168

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4169
  store i32 12, i32* %11, align 4, !dbg !4171, !tbaa !844
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4151, metadata !705), !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4152, metadata !705), !dbg !4158
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4172
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4153, metadata !705), !dbg !4173
  br label %16, !dbg !4174

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4175
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4176 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4221, metadata !705), !dbg !4225
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4222, metadata !705), !dbg !4226
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4224, metadata !705), !dbg !4227
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4228
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4223, metadata !705), !dbg !4229
  %3 = icmp slt i32 %2, 0, !dbg !4230
  br i1 %3, label %4, label %6, !dbg !4232

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4233
  br label %24, !dbg !4234

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4235
  %8 = icmp eq i32 %7, 0, !dbg !4235
  br i1 %8, label %13, label %9, !dbg !4237

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4238
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4240
  %12 = icmp eq i64 %11, -1, !dbg !4242
  br i1 %12, label %16, label %13, !dbg !4243

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4244
  %15 = icmp eq i32 %14, 0, !dbg !4244
  br i1 %15, label %16, label %18, !dbg !4245

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4222, metadata !705), !dbg !4226
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4247
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4224, metadata !705), !dbg !4227
  br label %24, !dbg !4248

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4249
  %20 = load i32, i32* %19, align 4, !dbg !4249, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4222, metadata !705), !dbg !4226
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4222, metadata !705), !dbg !4226
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4247
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4224, metadata !705), !dbg !4227
  %22 = icmp eq i32 %20, 0, !dbg !4250
  br i1 %22, label %24, label %23, !dbg !4248

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4252, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4224, metadata !705), !dbg !4227
  br label %24, !dbg !4254

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4255
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4256 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4301, metadata !705), !dbg !4302
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4303
  br i1 %2, label %6, label %3, !dbg !4305

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4306
  %5 = icmp eq i32 %4, 0, !dbg !4306
  br i1 %5, label %6, label %8, !dbg !4308

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4310
  br label %17, !dbg !4311

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4312, metadata !705) #11, !dbg !4317
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4319
  %10 = load i32, i32* %9, align 8, !dbg !4319, !tbaa !1186
  %11 = and i32 %10, 256, !dbg !4321
  %12 = icmp eq i32 %11, 0, !dbg !4321
  br i1 %12, label %15, label %13, !dbg !4322

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4323
  br label %15, !dbg !4323

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4324
  br label %17, !dbg !4325

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4326
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4327 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4373, metadata !705), !dbg !4379
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4374, metadata !705), !dbg !4380
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4375, metadata !705), !dbg !4381
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4382
  %5 = load i8*, i8** %4, align 8, !dbg !4382, !tbaa !4383
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4384
  %7 = load i8*, i8** %6, align 8, !dbg !4384, !tbaa !4385
  %8 = icmp eq i8* %5, %7, !dbg !4386
  br i1 %8, label %9, label %28, !dbg !4387

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4388
  %11 = load i8*, i8** %10, align 8, !dbg !4388, !tbaa !4390
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4391
  %13 = load i8*, i8** %12, align 8, !dbg !4391, !tbaa !4392
  %14 = icmp eq i8* %11, %13, !dbg !4393
  br i1 %14, label %15, label %28, !dbg !4394

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4395
  %17 = load i8*, i8** %16, align 8, !dbg !4395, !tbaa !4396
  %18 = icmp eq i8* %17, null, !dbg !4397
  br i1 %18, label %19, label %28, !dbg !4398

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4400
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4401
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4376, metadata !705), !dbg !4403
  %22 = icmp eq i64 %21, -1, !dbg !4404
  br i1 %22, label %30, label %23, !dbg !4406

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4407
  %25 = load i32, i32* %24, align 8, !dbg !4408, !tbaa !1186
  %26 = and i32 %25, -17, !dbg !4408
  store i32 %26, i32* %24, align 8, !dbg !4408, !tbaa !1186
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4409
  store i64 %21, i64* %27, align 8, !dbg !4410, !tbaa !4411
  br label %30, !dbg !4412

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4413
  br label %30, !dbg !4414

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4415
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4416 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4433, metadata !705), !dbg !4442
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4434, metadata !705), !dbg !4443
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4435, metadata !705), !dbg !4444
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4436, metadata !705), !dbg !4445
  %6 = bitcast i32* %5 to i8*, !dbg !4446
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !4446
  %7 = icmp eq i32* %0, null, !dbg !4447
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4433, metadata !705), !dbg !4442
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4449
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4433, metadata !705), !dbg !4442
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4450
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4437, metadata !705), !dbg !4451
  %10 = icmp ugt i64 %9, -3, !dbg !4452
  %11 = icmp ne i64 %2, 0, !dbg !4453
  %12 = and i1 %11, %10, !dbg !4455
  br i1 %12, label %13, label %18, !dbg !4455

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4456
  br i1 %14, label %18, label %15, !dbg !4458

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4460, !tbaa !872
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4439, metadata !705), !dbg !4461
  %17 = zext i8 %16 to i32, !dbg !4462
  store i32 %17, i32* %8, align 4, !dbg !4463, !tbaa !844
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !4464
  ret i64 %19, !dbg !4464
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4465 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4470, metadata !705), !dbg !4490
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4471, metadata !705), !dbg !4491
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4492
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4472, metadata !705), !dbg !4493
  %3 = icmp eq i8* %2, null, !dbg !4494
  br i1 %3, label %15, label %4, !dbg !4495

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4480, metadata !705), !dbg !4496
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4481, metadata !705), !dbg !4497
  %5 = load i8, i8* %2, align 1, !dbg !4498, !tbaa !872
  %6 = icmp eq i8 %5, 67, !dbg !4500
  br i1 %6, label %7, label %11, !dbg !4503

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4505
  %9 = load i8, i8* %8, align 1, !dbg !4505, !tbaa !872
  %10 = icmp eq i8 %9, 0, !dbg !4508
  br i1 %10, label %14, label %11, !dbg !4510

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4486, metadata !705), !dbg !4512
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0)) #11, !dbg !4513
  %13 = icmp eq i32 %12, 0, !dbg !4515
  br i1 %13, label %14, label %15, !dbg !4517

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4471, metadata !705), !dbg !4491
  br label %15, !dbg !4519

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4520
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4521 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4533, metadata !705), !dbg !4607
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4600, metadata !705), !dbg !4609
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4610
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4525, metadata !705), !dbg !4611
  %4 = icmp eq i8* %3, null, !dbg !4612
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.133, i64 0, i64 0), i8* %3, !dbg !4614
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4525, metadata !705), !dbg !4611
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4615, !tbaa !713
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4547, metadata !705) #11, !dbg !4616
  %7 = icmp eq i8* %6, null, !dbg !4617
  br i1 %7, label %8, label %127, !dbg !4618

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.134, i64 0, i64 0)) #11, !dbg !4619
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4548, metadata !705) #11, !dbg !4620
  %10 = icmp eq i8* %9, null, !dbg !4621
  br i1 %10, label %14, label %11, !dbg !4623

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4624, !tbaa !872
  %13 = icmp eq i8 %12, 0, !dbg !4626
  br i1 %13, label %14, label %15, !dbg !4627

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4629

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.135, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4548, metadata !705) #11, !dbg !4620
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4630
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4551, metadata !705) #11, !dbg !4631
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4553, metadata !705) #11, !dbg !4632
  %18 = icmp eq i64 %17, 0, !dbg !4633
  br i1 %18, label %24, label %19, !dbg !4634

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4635
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4635
  %22 = load i8, i8* %21, align 1, !dbg !4635, !tbaa !872
  %23 = icmp ne i8 %22, 47, !dbg !4637
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4638
  %27 = add i64 %17, 14, !dbg !4639
  %28 = add i64 %27, %26, !dbg !4640
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !4641
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4550, metadata !705) #11, !dbg !4642
  %30 = icmp eq i8* %29, null, !dbg !4643
  br i1 %30, label %125, label %31, !dbg !4643

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !4644
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4647

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4648, !tbaa !872
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4650
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.136, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4651
  br label %37, !dbg !4652

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4650
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.136, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !4651
  br label %37, !dbg !4652

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !4653
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4555, metadata !705) #11, !dbg !4654
  %39 = icmp slt i32 %38, 0, !dbg !4655
  br i1 %39, label %123, label %40, !dbg !4656

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.137, i64 0, i64 0)) #11, !dbg !4657
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4556, metadata !705) #11, !dbg !4658
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4659
  br i1 %42, label %48, label %43, !dbg !4660

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4661

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !4662
  br label %123, !dbg !4664

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4597, metadata !705) #11, !dbg !4661
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4598, metadata !705) #11, !dbg !4665
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !4666
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !4667
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4668, metadata !705) #11, !dbg !4673
  %53 = load i8*, i8** %46, align 8, !dbg !4675, !tbaa !4385
  %54 = load i8*, i8** %47, align 8, !dbg !4675, !tbaa !4383
  %55 = icmp ult i8* %53, %54, !dbg !4675
  br i1 %55, label %58, label %56, !dbg !4675, !prof !4676

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4677
  br label %62, !dbg !4677

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4679
  store i8* %59, i8** %46, align 8, !dbg !4679, !tbaa !4385
  %60 = load i8, i8* %53, align 1, !dbg !4679, !tbaa !872
  %61 = zext i8 %60 to i32, !dbg !4679
  br label %62, !dbg !4679

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4681
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4599, metadata !705) #11, !dbg !4683
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4684

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4685

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4668, metadata !705) #11, !dbg !4685
  %66 = load i8*, i8** %46, align 8, !dbg !4689, !tbaa !4385
  %67 = load i8*, i8** %47, align 8, !dbg !4689, !tbaa !4383
  %68 = icmp ult i8* %66, %67, !dbg !4689
  br i1 %68, label %71, label %69, !dbg !4689, !prof !4676

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !4690
  br label %75, !dbg !4690

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4691
  store i8* %72, i8** %46, align 8, !dbg !4691, !tbaa !4385
  %73 = load i8, i8* %66, align 1, !dbg !4691, !tbaa !872
  %74 = zext i8 %73 to i32, !dbg !4691
  br label %75, !dbg !4691

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4692
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4599, metadata !705) #11, !dbg !4683
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4693, !llvm.loop !4695

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !4698
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.138, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !4699
  %80 = icmp slt i32 %79, 2, !dbg !4701
  br i1 %80, label %115, label %81, !dbg !4702

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4703
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4604, metadata !705) #11, !dbg !4704
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4705
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4605, metadata !705) #11, !dbg !4706
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4606, metadata !705) #11, !dbg !4707
  %84 = icmp eq i64 %51, 0, !dbg !4708
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4710

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4598, metadata !705) #11, !dbg !4665
  %89 = add i64 %86, 2, !dbg !4711
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !4713
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4597, metadata !705) #11, !dbg !4661
  br label %95, !dbg !4714

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4715
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4598, metadata !705) #11, !dbg !4665
  %93 = add i64 %92, 1, !dbg !4717
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !4718
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4597, metadata !705) #11, !dbg !4661
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4597, metadata !705) #11, !dbg !4661
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4598, metadata !705) #11, !dbg !4665
  %98 = icmp eq i8* %97, null, !dbg !4719
  br i1 %98, label %99, label %100, !dbg !4721

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4598, metadata !705) #11, !dbg !4665
  call void @free(i8* %52) #11, !dbg !4722
  br label %116, !dbg !4724

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4725
  %102 = xor i64 %83, -1, !dbg !4726
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4726
  %104 = xor i64 %82, -1, !dbg !4727
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4727
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4728, metadata !705) #11, !dbg !4736
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4735, metadata !705) #11, !dbg !4736
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !4738
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !4739
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4728, metadata !705) #11, !dbg !4740
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4735, metadata !705) #11, !dbg !4740
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !4742
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !4743
  br label %111, !dbg !4744

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4661

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4597, metadata !705) #11, !dbg !4661
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4598, metadata !705) #11, !dbg !4665
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4744
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4744
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4661

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4661

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4597, metadata !705) #11, !dbg !4661
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4598, metadata !705) #11, !dbg !4665
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !4744
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !4744
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !4745
  %120 = icmp eq i64 %117, 0, !dbg !4746
  br i1 %120, label %123, label %121, !dbg !4748

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4749
  store i8 0, i8* %122, align 1, !dbg !4751, !tbaa !872
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4547, metadata !705) #11, !dbg !4616
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.133, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.133, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.133, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4547, metadata !705) #11, !dbg !4616
  call void @free(i8* %29) #11, !dbg !4752
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.133, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4547, metadata !705) #11, !dbg !4616
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4753, !tbaa !713
  br label %127, !dbg !4754

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4526, metadata !705), !dbg !4755
  %129 = load i8, i8* %128, align 1, !dbg !4756, !tbaa !872
  %130 = icmp eq i8 %129, 0, !dbg !4757
  br i1 %130, label %157, label %131, !dbg !4758

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4760

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !4760
  %136 = icmp eq i32 %135, 0, !dbg !4761
  br i1 %136, label %143, label %137, !dbg !4762

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4763
  br i1 %138, label %139, label %147, !dbg !4765

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4766
  %141 = load i8, i8* %140, align 1, !dbg !4766, !tbaa !872
  %142 = icmp eq i8 %141, 0, !dbg !4768
  br i1 %142, label %143, label %147, !dbg !4769

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4771
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4773
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4774
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4525, metadata !705), !dbg !4611
  br label %157, !dbg !4775

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4776
  %149 = add i64 %148, 1, !dbg !4777
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4778
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4526, metadata !705), !dbg !4755
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4779
  %152 = add i64 %151, 1, !dbg !4780
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4781
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4526, metadata !705), !dbg !4755
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4526, metadata !705), !dbg !4755
  %154 = load i8, i8* %153, align 1, !dbg !4756, !tbaa !872
  %155 = icmp eq i8 %154, 0, !dbg !4757
  br i1 %155, label %156, label %132, !dbg !4758, !llvm.loop !4782

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4611

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4525, metadata !705), !dbg !4611
  %159 = load i8, i8* %158, align 1, !dbg !4785, !tbaa !872
  %160 = icmp eq i8 %159, 0, !dbg !4787
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), i8* %158, !dbg !4788
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4525, metadata !705), !dbg !4611
  ret i8* %161, !dbg !4789
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.randint_source* @randint_new(%struct.randread_source*) local_unnamed_addr #6 !dbg !4790 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !4807, metadata !705), !dbg !4809
  %2 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !4810
  %3 = bitcast i8* %2 to %struct.randint_source*, !dbg !4810
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %3, i64 0, metadata !4808, metadata !705), !dbg !4811
  %4 = bitcast i8* %2 to %struct.randread_source**, !dbg !4812
  store %struct.randread_source* %0, %struct.randread_source** %4, align 8, !dbg !4813, !tbaa !4814
  %5 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !4816
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false), !dbg !4817
  ret %struct.randint_source* %3, !dbg !4818
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.randint_source* @randint_all_new(i8*, i64) local_unnamed_addr #6 !dbg !4819 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4823, metadata !705), !dbg !4826
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4824, metadata !705), !dbg !4827
  %3 = tail call %struct.randread_source* @randread_new(i8* %0, i64 %1) #11, !dbg !4828
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %3, i64 0, metadata !4825, metadata !705), !dbg !4829
  %4 = icmp eq %struct.randread_source* %3, null, !dbg !4830
  br i1 %4, label %10, label %5, !dbg !4830

; <label>:5:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %3, i64 0, metadata !4807, metadata !705) #11, !dbg !4831
  %6 = tail call noalias i8* @xmalloc(i64 24) #11, !dbg !4834
  %7 = bitcast i8* %6 to %struct.randint_source*, !dbg !4834
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %7, i64 0, metadata !4808, metadata !705) #11, !dbg !4835
  %8 = bitcast i8* %6 to %struct.randread_source**, !dbg !4836
  store %struct.randread_source* %3, %struct.randread_source** %8, align 8, !dbg !4837, !tbaa !4814
  %9 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !4838
  tail call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 8, i1 false) #11, !dbg !4839
  br label %10, !dbg !4840

; <label>:10:                                     ; preds = %2, %5
  %11 = phi %struct.randint_source* [ %7, %5 ], [ null, %2 ], !dbg !4841
  ret %struct.randint_source* %11, !dbg !4843
}

; Function Attrs: nounwind readonly sspstrong uwtable
define %struct.randread_source* @randint_get_source(%struct.randint_source* nocapture readonly) local_unnamed_addr #10 !dbg !4844 {
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4850, metadata !705), !dbg !4851
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4852
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4852, !tbaa !4814
  ret %struct.randread_source* %3, !dbg !4853
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @randint_genmax(%struct.randint_source* nocapture, i64) local_unnamed_addr #6 !dbg !4854 {
  %3 = alloca [8 x i8], align 1
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4858, metadata !705), !dbg !4877
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4859, metadata !705), !dbg !4878
  %4 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4879
  %5 = load %struct.randread_source*, %struct.randread_source** %4, align 8, !dbg !4879, !tbaa !4814
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %5, i64 0, metadata !4860, metadata !705), !dbg !4880
  %6 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 1, !dbg !4881
  %7 = load i64, i64* %6, align 8, !dbg !4881, !tbaa !4882
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4861, metadata !705), !dbg !4883
  %8 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 2, !dbg !4884
  %9 = load i64, i64* %8, align 8, !dbg !4884, !tbaa !4885
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4862, metadata !705), !dbg !4886
  %10 = add i64 %1, 1, !dbg !4887
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !4863, metadata !705), !dbg !4888
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %12, !dbg !4889

; <label>:12:                                     ; preds = %45, %2
  %13 = phi i64 [ %9, %2 ], [ %51, %45 ]
  %14 = phi i64 [ %7, %2 ], [ %49, %45 ]
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4861, metadata !705), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4862, metadata !705), !dbg !4886
  %15 = icmp ult i64 %13, %1, !dbg !4890
  br i1 %15, label %16, label %39, !dbg !4891

; <label>:16:                                     ; preds = %12
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4864, metadata !705), !dbg !4892
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4868, metadata !705), !dbg !4893
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #11, !dbg !4894
  call void @llvm.dbg.declare(metadata [8 x i8]* %3, metadata !4869, metadata !705), !dbg !4895
  br label %17, !dbg !4896, !llvm.loop !4897

; <label>:17:                                     ; preds = %17, %16
  %18 = phi i64 [ %13, %16 ], [ %21, %17 ]
  %19 = phi i64 [ 0, %16 ], [ %22, %17 ]
  call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4864, metadata !705), !dbg !4892
  call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4868, metadata !705), !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4899, metadata !705), !dbg !4904
  %20 = shl i64 %18, 8, !dbg !4907
  %21 = or i64 %20, 255, !dbg !4908
  call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4868, metadata !705), !dbg !4893
  %22 = add i64 %19, 1, !dbg !4909
  call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !4864, metadata !705), !dbg !4892
  %23 = icmp ult i64 %21, %1, !dbg !4910
  br i1 %23, label %17, label %24, !dbg !4911, !llvm.loop !4897

; <label>:24:                                     ; preds = %17
  call void @randread(%struct.randread_source* %5, i8* nonnull %11, i64 %22) #11, !dbg !4913
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4864, metadata !705), !dbg !4892
  br label %25, !dbg !4914, !llvm.loop !4915

; <label>:25:                                     ; preds = %25, %24
  %26 = phi i64 [ 0, %24 ], [ %36, %25 ]
  %27 = phi i64 [ %13, %24 ], [ %35, %25 ]
  %28 = phi i64 [ %14, %24 ], [ %33, %25 ]
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4861, metadata !705), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !4862, metadata !705), !dbg !4886
  call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !4864, metadata !705), !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4899, metadata !705), !dbg !4917
  %29 = shl i64 %28, 8, !dbg !4920
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %26, !dbg !4921
  %31 = load i8, i8* %30, align 1, !dbg !4921, !tbaa !872
  %32 = zext i8 %31 to i64, !dbg !4921
  %33 = or i64 %32, %29, !dbg !4922
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !4861, metadata !705), !dbg !4883
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !4899, metadata !705), !dbg !4923
  %34 = shl i64 %27, 8, !dbg !4925
  %35 = or i64 %34, 255, !dbg !4926
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !4862, metadata !705), !dbg !4886
  %36 = add i64 %26, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4864, metadata !705), !dbg !4892
  %37 = icmp ult i64 %35, %1, !dbg !4928
  br i1 %37, label %25, label %38, !dbg !4929, !llvm.loop !4915

; <label>:38:                                     ; preds = %25
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #11, !dbg !4931
  br label %39, !dbg !4932

; <label>:39:                                     ; preds = %38, %12
  %40 = phi i64 [ %35, %38 ], [ %13, %12 ]
  %41 = phi i64 [ %33, %38 ], [ %14, %12 ]
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !4861, metadata !705), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4862, metadata !705), !dbg !4886
  %42 = icmp eq i64 %40, %1, !dbg !4933
  br i1 %42, label %43, label %45, !dbg !4934

; <label>:43:                                     ; preds = %39
  %44 = bitcast i64* %6 to i8*, !dbg !4935
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 16, i32 8, i1 false), !dbg !4937
  br label %55, !dbg !4935

; <label>:45:                                     ; preds = %39
  %46 = sub i64 %40, %1, !dbg !4938
  call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !4871, metadata !705), !dbg !4939
  %47 = urem i64 %46, %10, !dbg !4940
  call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !4874, metadata !705), !dbg !4941
  %48 = sub i64 %40, %47, !dbg !4942
  call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !4875, metadata !705), !dbg !4943
  %49 = urem i64 %41, %10, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !4876, metadata !705), !dbg !4945
  %50 = icmp ugt i64 %41, %48, !dbg !4946
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !4861, metadata !705), !dbg !4883
  %51 = add i64 %47, -1, !dbg !4948
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4862, metadata !705), !dbg !4886
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !4861, metadata !705), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4862, metadata !705), !dbg !4886
  br i1 %50, label %12, label %52, !dbg !4949

; <label>:52:                                     ; preds = %45
  %53 = udiv i64 %41, %10, !dbg !4950
  store i64 %53, i64* %6, align 8, !dbg !4952, !tbaa !4882
  %54 = udiv i64 %46, %10, !dbg !4953
  store i64 %54, i64* %8, align 8, !dbg !4954, !tbaa !4885
  call void @llvm.dbg.value(metadata i64 %41, i64 0, metadata !4861, metadata !705), !dbg !4883
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4862, metadata !705), !dbg !4886
  br label %55

; <label>:55:                                     ; preds = %52, %43
  %56 = phi i64 [ %41, %43 ], [ %49, %52 ]
  ret i64 %56, !dbg !4955
}

; Function Attrs: nounwind sspstrong uwtable
define void @randint_free(%struct.randint_source* nocapture) local_unnamed_addr #6 !dbg !4956 {
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4960, metadata !705), !dbg !4961
  %2 = bitcast %struct.randint_source* %0 to i8*, !dbg !4962
  tail call void @free(i8* %2) #11, !dbg !4963
  ret void, !dbg !4964
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @randint_all_free(%struct.randint_source* nocapture) local_unnamed_addr #6 !dbg !4965 {
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4969, metadata !705), !dbg !4972
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0, !dbg !4973
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8, !dbg !4973, !tbaa !4814
  %4 = tail call i32 @randread_free(%struct.randread_source* %3) #11, !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4970, metadata !705), !dbg !4975
  %5 = tail call i32* @__errno_location() #1, !dbg !4976
  %6 = load i32, i32* %5, align 4, !dbg !4976, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4971, metadata !705), !dbg !4977
  tail call void @llvm.dbg.value(metadata %struct.randint_source* %0, i64 0, metadata !4960, metadata !705) #11, !dbg !4978
  %7 = bitcast %struct.randint_source* %0 to i8*, !dbg !4980
  tail call void @free(i8* %7) #11, !dbg !4981
  store i32 %6, i32* %5, align 4, !dbg !4982, !tbaa !844
  ret i32 %4, !dbg !4983
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.randread_source* @randread_new(i8*, i64) local_unnamed_addr #6 !dbg !4984 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5064, metadata !705), !dbg !5070
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5065, metadata !705), !dbg !5071
  %8 = icmp eq i64 %1, 0, !dbg !5072
  br i1 %8, label %9, label %17, !dbg !5073

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* null, i64 0, metadata !5074, metadata !705) #11, !dbg !5081
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5079, metadata !705) #11, !dbg !5083
  %10 = tail call noalias i8* @xmalloc(i64 4152) #11, !dbg !5084
  %11 = bitcast i8* %10 to %struct.randread_source*, !dbg !5084
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %11, i64 0, metadata !5080, metadata !705) #11, !dbg !5085
  %12 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !5086
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8, !dbg !5087, !tbaa !5088
  %13 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !5090
  %14 = bitcast i8* %13 to void (i8*)**, !dbg !5090
  store void (i8*)* @randread_error, void (i8*)** %14, align 8, !dbg !5091, !tbaa !5092
  %15 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !5093
  %16 = bitcast i8* %15 to i8**, !dbg !5093
  store i8* null, i8** %16, align 8, !dbg !5094, !tbaa !5095
  br label %96, !dbg !5096

; <label>:17:                                     ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* null, i64 0, metadata !5066, metadata !705), !dbg !5097
  %18 = icmp eq i8* %0, null, !dbg !5098
  br i1 %18, label %22, label %19, !dbg !5100

; <label>:19:                                     ; preds = %17
  %20 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.148, i64 0, i64 0)) #11, !dbg !5101
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, i64 0, metadata !5066, metadata !705), !dbg !5097
  %21 = icmp eq %struct._IO_FILE* %20, null, !dbg !5103
  br i1 %21, label %96, label %22, !dbg !5104

; <label>:22:                                     ; preds = %19, %17
  %23 = phi %struct._IO_FILE* [ %20, %19 ], [ null, %17 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, i64 0, metadata !5066, metadata !705), !dbg !5097
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, i64 0, metadata !5074, metadata !705) #11, !dbg !5105
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5079, metadata !705) #11, !dbg !5107
  %24 = tail call noalias i8* @xmalloc(i64 4152) #11, !dbg !5108
  %25 = bitcast i8* %24 to %struct.randread_source*, !dbg !5108
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %25, i64 0, metadata !5080, metadata !705) #11, !dbg !5109
  %26 = bitcast i8* %24 to %struct._IO_FILE**, !dbg !5110
  store %struct._IO_FILE* %23, %struct._IO_FILE** %26, align 8, !dbg !5111, !tbaa !5088
  %27 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !5112
  %28 = bitcast i8* %27 to void (i8*)**, !dbg !5112
  store void (i8*)* @randread_error, void (i8*)** %28, align 8, !dbg !5113, !tbaa !5092
  %29 = getelementptr inbounds i8, i8* %24, i64 16, !dbg !5114
  %30 = bitcast i8* %29 to i8**, !dbg !5114
  store i8* %0, i8** %30, align 8, !dbg !5115, !tbaa !5095
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %25, i64 0, metadata !5069, metadata !705), !dbg !5116
  %31 = icmp eq %struct._IO_FILE* %23, null, !dbg !5117
  %32 = getelementptr inbounds i8, i8* %24, i64 24
  br i1 %31, label %37, label %33, !dbg !5119

; <label>:33:                                     ; preds = %22
  %34 = icmp ult i64 %1, 4096, !dbg !5120
  %35 = select i1 %34, i64 %1, i64 4096, !dbg !5120
  %36 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %23, i8* %32, i32 0, i64 %35) #11, !dbg !5121
  br label %96, !dbg !5121

; <label>:37:                                     ; preds = %22
  %38 = bitcast i8* %32 to i64*, !dbg !5123
  store i64 0, i64* %38, align 8, !dbg !5125, !tbaa !5126
  %39 = getelementptr inbounds i8, i8* %24, i64 32, !dbg !5129
  %40 = bitcast i8* %39 to %struct.isaac_state*, !dbg !5129
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !5130, metadata !705) #11, !dbg !5172
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  %41 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.149, i64 0, i64 0), i32 0) #11, !dbg !5175
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !5142, metadata !705) #11, !dbg !5176
  %42 = icmp sgt i32 %41, -1, !dbg !5177
  br i1 %42, label %43, label %51, !dbg !5179

; <label>:43:                                     ; preds = %37
  %44 = icmp ult i64 %1, 2048, !dbg !5180
  %45 = select i1 %44, i64 %1, i64 2048, !dbg !5180
  %46 = tail call i64 @read(i32 %41, i8* %39, i64 %45) #11, !dbg !5182
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  %47 = icmp sgt i64 %46, 0, !dbg !5184
  %48 = tail call i32 @close(i32 %41) #11, !dbg !5185
  br i1 %47, label %49, label %51

; <label>:49:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  %50 = icmp ult i64 %46, 2048, !dbg !5186
  br i1 %50, label %51, label %95, !dbg !5187

; <label>:51:                                     ; preds = %49, %43, %37
  %52 = phi i64 [ %46, %49 ], [ 0, %43 ], [ 0, %37 ]
  %53 = bitcast %struct.timespec* %3 to i8*, !dbg !5188
  call void @llvm.lifetime.start(i64 16, i8* nonnull %53) #11, !dbg !5190
  %54 = sub nsw i64 2048, %52, !dbg !5188
  %55 = icmp ult i64 %54, 16, !dbg !5188
  %56 = select i1 %55, i64 %54, i64 16, !dbg !5188
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !5152, metadata !705) #11, !dbg !5190
  tail call void @llvm.dbg.value(metadata %struct.timespec* %3, i64 0, metadata !5143, metadata !2057) #11, !dbg !5190
  %57 = call i32 @gettimeofday(%struct.timespec* nonnull %3, %struct.timezone* null) #11, !dbg !5191
  %58 = getelementptr inbounds i8, i8* %39, i64 %52, !dbg !5191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* nonnull %53, i64 %56, i32 1, i1 false) #11, !dbg !5190
  %59 = add i64 %56, %52, !dbg !5191
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  call void @llvm.lifetime.end(i64 16, i8* nonnull %53) #11, !dbg !5186
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  %60 = icmp ult i64 %59, 2048, !dbg !5193
  br i1 %60, label %61, label %95, !dbg !5194

; <label>:61:                                     ; preds = %51
  %62 = bitcast i32* %4 to i8*, !dbg !5195
  call void @llvm.lifetime.start(i64 4, i8* nonnull %62), !dbg !5195
  %63 = sub i64 2048, %59, !dbg !5196
  %64 = icmp ult i64 %63, 4, !dbg !5196
  %65 = select i1 %64, i64 %63, i64 4, !dbg !5196
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !5158, metadata !705) #11, !dbg !5195
  %66 = tail call i32 @getpid() #11, !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !5153, metadata !705) #11, !dbg !5195
  store i32 %66, i32* %4, align 4, !dbg !5198
  %67 = getelementptr inbounds i8, i8* %39, i64 %59, !dbg !5198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* nonnull %62, i64 %65, i32 1, i1 false) #11, !dbg !5195
  %68 = add i64 %65, %59, !dbg !5198
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  call void @llvm.lifetime.end(i64 4, i8* nonnull %62), !dbg !5193
  tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  %69 = icmp ult i64 %68, 2048, !dbg !5200
  br i1 %69, label %70, label %95, !dbg !5201

; <label>:70:                                     ; preds = %61
  %71 = bitcast i32* %5 to i8*, !dbg !5202
  call void @llvm.lifetime.start(i64 4, i8* nonnull %71), !dbg !5202
  %72 = sub i64 2048, %68, !dbg !5203
  %73 = icmp ult i64 %72, 4, !dbg !5203
  %74 = select i1 %73, i64 %72, i64 4, !dbg !5203
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5162, metadata !705) #11, !dbg !5202
  %75 = tail call i32 @getppid() #11, !dbg !5205
  tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !5159, metadata !705) #11, !dbg !5202
  store i32 %75, i32* %5, align 4, !dbg !5205
  %76 = getelementptr inbounds i8, i8* %39, i64 %68, !dbg !5205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* nonnull %71, i64 %74, i32 1, i1 false) #11, !dbg !5202
  %77 = add i64 %74, %68, !dbg !5205
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  call void @llvm.lifetime.end(i64 4, i8* nonnull %71), !dbg !5200
  tail call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  %78 = icmp ult i64 %77, 2048, !dbg !5207
  br i1 %78, label %79, label %95, !dbg !5208

; <label>:79:                                     ; preds = %70
  %80 = bitcast i32* %6 to i8*, !dbg !5209
  call void @llvm.lifetime.start(i64 4, i8* nonnull %80), !dbg !5209
  %81 = sub i64 2048, %77, !dbg !5210
  %82 = icmp ult i64 %81, 4, !dbg !5210
  %83 = select i1 %82, i64 %81, i64 4, !dbg !5210
  tail call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5167, metadata !705) #11, !dbg !5209
  %84 = tail call i32 @getuid() #11, !dbg !5212
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !5163, metadata !705) #11, !dbg !5209
  store i32 %84, i32* %6, align 4, !dbg !5212
  %85 = getelementptr inbounds i8, i8* %39, i64 %77, !dbg !5212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* nonnull %80, i64 %83, i32 1, i1 false) #11, !dbg !5209
  %86 = add i64 %83, %77, !dbg !5212
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  call void @llvm.lifetime.end(i64 4, i8* nonnull %80), !dbg !5207
  tail call void @llvm.dbg.value(metadata i64 %86, i64 0, metadata !5138, metadata !705) #11, !dbg !5174
  %87 = icmp ult i64 %86, 2048, !dbg !5214
  br i1 %87, label %88, label %95, !dbg !5215

; <label>:88:                                     ; preds = %79
  %89 = bitcast i32* %7 to i8*, !dbg !5216
  call void @llvm.lifetime.start(i64 4, i8* nonnull %89), !dbg !5216
  %90 = sub i64 2048, %86, !dbg !5217
  %91 = icmp ult i64 %90, 4, !dbg !5217
  %92 = select i1 %91, i64 %90, i64 4, !dbg !5217
  tail call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5171, metadata !705) #11, !dbg !5216
  %93 = tail call i32 @getgid() #11, !dbg !5219
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !5168, metadata !705) #11, !dbg !5216
  store i32 %93, i32* %7, align 4, !dbg !5219
  %94 = getelementptr inbounds i8, i8* %39, i64 %86, !dbg !5219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* nonnull %89, i64 %92, i32 1, i1 false) #11, !dbg !5216
  call void @llvm.lifetime.end(i64 4, i8* nonnull %89), !dbg !5214
  br label %95, !dbg !5219

; <label>:95:                                     ; preds = %49, %51, %61, %70, %79, %88
  tail call void @isaac_seed(%struct.isaac_state* %40) #11, !dbg !5221
  br label %96

; <label>:96:                                     ; preds = %19, %95, %33, %9
  %97 = phi %struct.randread_source* [ %11, %9 ], [ null, %19 ], [ %25, %95 ], [ %25, %33 ]
  ret %struct.randread_source* %97, !dbg !5222
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @randread_error(i8*) #0 !dbg !5223 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5225, metadata !705), !dbg !5226
  %2 = icmp eq i8* %0, null, !dbg !5227
  br i1 %2, label %11, label %3, !dbg !5229

; <label>:3:                                      ; preds = %1
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !5230, !tbaa !844
  %5 = tail call i32* @__errno_location() #1, !dbg !5231
  %6 = load i32, i32* %5, align 4, !dbg !5231, !tbaa !844
  %7 = icmp eq i32 %6, 0, !dbg !5232
  %8 = select i1 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.150, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.151, i64 0, i64 0), !dbg !5233
  %9 = tail call i8* @dcgettext(i8* null, i8* %8, i32 5) #11, !dbg !5234
  %10 = tail call i8* @quote(i8* nonnull %0) #11, !dbg !5236
  tail call void (i32, i32, i8*, ...) @error(i32 %4, i32 %6, i8* %9, i8* %10) #11, !dbg !5237
  br label %11, !dbg !5237

; <label>:11:                                     ; preds = %1, %3
  tail call void @abort() #14, !dbg !5239
  unreachable, !dbg !5239
}

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @randread_set_handler(%struct.randread_source* nocapture, void (i8*)*) local_unnamed_addr #6 !dbg !5240 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !5244, metadata !705), !dbg !5246
  tail call void @llvm.dbg.value(metadata void (i8*)* %1, i64 0, metadata !5245, metadata !705), !dbg !5247
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1, !dbg !5248
  store void (i8*)* %1, void (i8*)** %3, align 8, !dbg !5249, !tbaa !5092
  ret void, !dbg !5250
}

; Function Attrs: nounwind sspstrong uwtable
define void @randread_set_handler_arg(%struct.randread_source* nocapture, i8*) local_unnamed_addr #6 !dbg !5251 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !5255, metadata !705), !dbg !5257
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5256, metadata !705), !dbg !5258
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2, !dbg !5259
  store i8* %1, i8** %3, align 8, !dbg !5260, !tbaa !5095
  ret void, !dbg !5261
}

; Function Attrs: nounwind sspstrong uwtable
define void @randread(%struct.randread_source*, i8*, i64) local_unnamed_addr #6 !dbg !5262 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !5266, metadata !705), !dbg !5269
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5267, metadata !705), !dbg !5270
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5268, metadata !705), !dbg !5271
  %4 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !5272
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !5272, !tbaa !5088
  %6 = icmp eq %struct._IO_FILE* %5, null, !dbg !5274
  br i1 %6, label %33, label %7, !dbg !5275

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !5276, metadata !705) #11, !dbg !5286
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5281, metadata !705) #11, !dbg !5288
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5282, metadata !705) #11, !dbg !5289
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5281, metadata !705) #11, !dbg !5288
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5282, metadata !705) #11, !dbg !5289
  %8 = tail call i64 @fread_unlocked(i8* %1, i64 1, i64 %2, %struct._IO_FILE* nonnull %5) #11, !dbg !5290
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5283, metadata !705) #11, !dbg !5291
  %9 = tail call i32* @__errno_location() #1, !dbg !5292
  %10 = sub i64 %2, %8, !dbg !5293
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !5282, metadata !705) #11, !dbg !5289
  %11 = icmp eq i64 %10, 0, !dbg !5294
  br i1 %11, label %69, label %12, !dbg !5296

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2
  br label %15, !dbg !5296

; <label>:15:                                     ; preds = %15, %12
  %16 = phi i64 [ %10, %12 ], [ %31, %15 ]
  %17 = phi i64 [ %8, %12 ], [ %30, %15 ]
  %18 = phi i8* [ %1, %12 ], [ %19, %15 ]
  %19 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !5297
  %20 = load i32, i32* %9, align 4, !dbg !5292, !tbaa !844
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !5298, !tbaa !5088
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, i64 0, metadata !5299, metadata !705) #11, !dbg !5304
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 0, !dbg !5306
  %23 = load i32, i32* %22, align 8, !dbg !5306, !tbaa !1186
  %24 = and i32 %23, 32, !dbg !5306
  %25 = icmp ne i32 %24, 0, !dbg !5298
  %26 = select i1 %25, i32 %20, i32 0, !dbg !5298
  store i32 %26, i32* %9, align 4, !dbg !5307, !tbaa !844
  %27 = load void (i8*)*, void (i8*)** %13, align 8, !dbg !5309, !tbaa !5092
  %28 = load i8*, i8** %14, align 8, !dbg !5310, !tbaa !5095
  tail call void %27(i8* %28) #11, !dbg !5311
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5281, metadata !705) #11, !dbg !5288
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !5282, metadata !705) #11, !dbg !5289
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !5290, !tbaa !5088
  %30 = tail call i64 @fread_unlocked(i8* %19, i64 1, i64 %16, %struct._IO_FILE* %29) #11, !dbg !5290
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5283, metadata !705) #11, !dbg !5291
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5285, metadata !705) #11, !dbg !5312
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5281, metadata !705) #11, !dbg !5288
  %31 = sub i64 %16, %30, !dbg !5293
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !5282, metadata !705) #11, !dbg !5289
  %32 = icmp eq i64 %31, 0, !dbg !5294
  br i1 %32, label %68, label %15, !dbg !5296

; <label>:33:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5313, metadata !705) #11, !dbg !5327
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5320, metadata !705) #11, !dbg !5329
  %34 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 0, !dbg !5330
  %35 = load i64, i64* %34, align 8, !dbg !5330, !tbaa !5126
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !5321, metadata !705) #11, !dbg !5331
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5313, metadata !705) #11, !dbg !5327
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !5321, metadata !705) #11, !dbg !5331
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5320, metadata !705) #11, !dbg !5329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5322, metadata !705) #11, !dbg !5332
  %36 = icmp ult i64 %35, %2, !dbg !5333
  %37 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 2
  %38 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 1
  %39 = bitcast %union.anon.0* %38 to i8*
  %40 = sub i64 0, %35
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  br i1 %36, label %42, label %49, !dbg !5335

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 1
  %44 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 0, i32 0, i64 0
  %45 = bitcast %union.anon.0* %37 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %41, i64 %35, i32 1, i1 false) #11, !dbg !5336
  %46 = getelementptr inbounds i8, i8* %1, i64 %35, !dbg !5337
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5313, metadata !705) #11, !dbg !5327
  %47 = sub i64 %2, %35, !dbg !5338
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !5320, metadata !705) #11, !dbg !5329
  %48 = bitcast i8* %46 to i64*, !dbg !5339
  tail call void @llvm.dbg.value(metadata i64* %48, i64 0, metadata !5324, metadata !705) #11, !dbg !5340
  br label %55, !dbg !5341

; <label>:49:                                     ; preds = %63, %33
  %50 = phi i64 [ %2, %33 ], [ %56, %63 ]
  %51 = phi i64 [ %35, %33 ], [ 2048, %63 ]
  %52 = phi i8* [ %1, %33 ], [ %64, %63 ]
  %53 = phi i8* [ %41, %33 ], [ %45, %63 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %50, i32 1, i1 false) #11, !dbg !5342
  %54 = sub i64 %51, %50, !dbg !5344
  br label %66, !dbg !5345

; <label>:55:                                     ; preds = %59, %42
  %56 = phi i64 [ %47, %42 ], [ %61, %59 ]
  %57 = phi i64* [ %48, %42 ], [ %60, %59 ]
  tail call void @llvm.dbg.value(metadata i64* %57, i64 0, metadata !5324, metadata !705) #11, !dbg !5340
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !5320, metadata !705) #11, !dbg !5329
  %58 = icmp ugt i64 %56, 2047, !dbg !5346
  br i1 %58, label %59, label %63, !dbg !5348

; <label>:59:                                     ; preds = %55
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %57) #11, !dbg !5349
  %60 = getelementptr inbounds i64, i64* %57, i64 256, !dbg !5351
  tail call void @llvm.dbg.value(metadata i64* %60, i64 0, metadata !5324, metadata !705) #11, !dbg !5340
  %61 = add i64 %56, -2048, !dbg !5352
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5320, metadata !705) #11, !dbg !5329
  %62 = icmp eq i64 %61, 0, !dbg !5353
  br i1 %62, label %65, label %55, !dbg !5355, !llvm.loop !5356

; <label>:63:                                     ; preds = %55
  %64 = bitcast i64* %57 to i8*, !dbg !5359
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !5313, metadata !705) #11, !dbg !5327
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !5313, metadata !705) #11, !dbg !5327
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %44) #11, !dbg !5360
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !5321, metadata !705) #11, !dbg !5331
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !5313, metadata !705) #11, !dbg !5327
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !5321, metadata !705) #11, !dbg !5331
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !5320, metadata !705) #11, !dbg !5329
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !5313, metadata !705) #11, !dbg !5327
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !5321, metadata !705) #11, !dbg !5331
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !5320, metadata !705) #11, !dbg !5329
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !5322, metadata !705) #11, !dbg !5332
  br label %49, !dbg !5342

; <label>:65:                                     ; preds = %59
  br label %66

; <label>:66:                                     ; preds = %65, %49
  %67 = phi i64 [ %54, %49 ], [ 0, %65 ]
  store i64 %67, i64* %34, align 8, !tbaa !5126
  tail call void @llvm.dbg.value(metadata i64 2048, i64 0, metadata !5321, metadata !705) #11, !dbg !5331
  br label %69

; <label>:68:                                     ; preds = %15
  br label %69, !dbg !5361

; <label>:69:                                     ; preds = %68, %7, %66
  ret void, !dbg !5361
}

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @randread_free(%struct.randread_source* nocapture) local_unnamed_addr #6 !dbg !5362 {
  tail call void @llvm.dbg.value(metadata %struct.randread_source* %0, i64 0, metadata !5366, metadata !705), !dbg !5368
  %2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0, !dbg !5369
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !5369, !tbaa !5088
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !5367, metadata !705), !dbg !5370
  %4 = bitcast %struct.randread_source* %0 to i8*, !dbg !5371
  tail call void @free(i8* %4) #11, !dbg !5372
  %5 = icmp eq %struct._IO_FILE* %3, null, !dbg !5373
  br i1 %5, label %8, label %6, !dbg !5373

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !5374
  br label %8, !dbg !5376

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ], !dbg !5377
  ret i32 %9, !dbg !5379
}

; Function Attrs: nounwind sspstrong uwtable
define void @isaac_refill(%struct.isaac_state*, i64* nocapture) local_unnamed_addr #6 !dbg !639 {
  tail call void @llvm.dbg.value(metadata %struct.isaac_state* %0, i64 0, metadata !656, metadata !705), !dbg !5380
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !657, metadata !705), !dbg !5381
  %3 = ptrtoint %struct.isaac_state* %0 to i64
  %4 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !5382
  %5 = load i64, i64* %4, align 8, !dbg !5382, !tbaa !5383
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !658, metadata !705), !dbg !5384
  %6 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 2, !dbg !5385
  %7 = load i64, i64* %6, align 8, !dbg !5385, !tbaa !5386
  %8 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 3, !dbg !5387
  %9 = load i64, i64* %8, align 8, !dbg !5388, !tbaa !5389
  %10 = add i64 %9, 1, !dbg !5388
  store i64 %10, i64* %8, align 8, !dbg !5388, !tbaa !5389
  %11 = add i64 %10, %7, !dbg !5390
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !659, metadata !705), !dbg !5391
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 0, !dbg !5392
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !660, metadata !705), !dbg !5393
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !661, metadata !705), !dbg !5394
  %13 = bitcast %struct.isaac_state* %0 to i8*
  %14 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 128
  %15 = ptrtoint i64* %14 to i64
  %16 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 4, !dbg !5395
  %17 = ptrtoint i64* %16 to i64
  %18 = icmp ugt i64 %15, %17, !dbg !5395
  %19 = select i1 %18, i64 %15, i64 %17, !dbg !5395
  %20 = inttoptr i64 %19 to i8*
  %21 = xor i64 %3, -1, !dbg !5395
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !5395
  %23 = ptrtoint i8* %22 to i64
  %24 = lshr i64 %23, 5, !dbg !5395
  %25 = shl nuw nsw i64 %24, 2, !dbg !5395
  %26 = add nuw nsw i64 %25, 4, !dbg !5395
  %27 = getelementptr i64, i64* %1, i64 %26, !dbg !5395
  br label %28, !dbg !5395, !llvm.loop !5396

; <label>:28:                                     ; preds = %28, %2
  %29 = phi i64* [ %1, %2 ], [ %112, %28 ]
  %30 = phi i64* [ %12, %2 ], [ %113, %28 ]
  %31 = phi i64 [ %11, %2 ], [ %110, %28 ]
  %32 = phi i64 [ %5, %2 ], [ %96, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !658, metadata !705), !dbg !5384
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !659, metadata !705), !dbg !5391
  tail call void @llvm.dbg.value(metadata i64* %30, i64 0, metadata !660, metadata !705), !dbg !5393
  tail call void @llvm.dbg.value(metadata i64* %29, i64 0, metadata !661, metadata !705), !dbg !5394
  %33 = shl i64 %32, 21, !dbg !5398
  %34 = xor i64 %32, -1, !dbg !5398
  %35 = xor i64 %33, %34, !dbg !5398
  %36 = getelementptr inbounds i64, i64* %30, i64 128, !dbg !5398
  %37 = load i64, i64* %36, align 8, !dbg !5398, !tbaa !2744
  %38 = add i64 %35, %37, !dbg !5398
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !658, metadata !705), !dbg !5384
  %39 = load i64, i64* %30, align 8, !dbg !5398, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !662, metadata !705), !dbg !5398
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5413
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !5406, metadata !705), !dbg !5415
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5416
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5417
  %40 = and i64 %39, 2040, !dbg !5418
  %41 = getelementptr inbounds i8, i8* %13, i64 %40, !dbg !5419
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !5411, metadata !705), !dbg !5420
  %42 = bitcast i8* %41 to i64*, !dbg !5421
  tail call void @llvm.dbg.value(metadata i64* %42, i64 0, metadata !5412, metadata !705), !dbg !5422
  %43 = load i64, i64* %42, align 8, !dbg !5423, !tbaa !2744
  %44 = add i64 %43, %31, !dbg !5398
  %45 = add i64 %44, %38, !dbg !5398
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !665, metadata !705), !dbg !5398
  store i64 %45, i64* %30, align 8, !dbg !5398, !tbaa !2744
  %46 = lshr i64 %45, 8, !dbg !5398
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5424
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !5406, metadata !705), !dbg !5427
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5428
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5429
  %47 = and i64 %46, 2040, !dbg !5430
  %48 = getelementptr inbounds i8, i8* %13, i64 %47, !dbg !5431
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !5411, metadata !705), !dbg !5432
  %49 = bitcast i8* %48 to i64*, !dbg !5433
  tail call void @llvm.dbg.value(metadata i64* %49, i64 0, metadata !5412, metadata !705), !dbg !5434
  %50 = load i64, i64* %49, align 8, !dbg !5435, !tbaa !2744
  %51 = add i64 %50, %39, !dbg !5398
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !659, metadata !705), !dbg !5391
  store i64 %51, i64* %29, align 8, !dbg !5398, !tbaa !2744
  %52 = lshr i64 %38, 5, !dbg !5436
  %53 = xor i64 %52, %38, !dbg !5436
  %54 = getelementptr inbounds i64, i64* %30, i64 129, !dbg !5436
  %55 = load i64, i64* %54, align 8, !dbg !5436, !tbaa !2744
  %56 = add i64 %55, %53, !dbg !5436
  tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !658, metadata !705), !dbg !5384
  %57 = getelementptr inbounds i64, i64* %30, i64 1, !dbg !5436
  %58 = load i64, i64* %57, align 8, !dbg !5436, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !666, metadata !705), !dbg !5436
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5437
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !5406, metadata !705), !dbg !5440
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5441
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5442
  %59 = and i64 %58, 2040, !dbg !5443
  %60 = getelementptr inbounds i8, i8* %13, i64 %59, !dbg !5444
  tail call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !5411, metadata !705), !dbg !5445
  %61 = bitcast i8* %60 to i64*, !dbg !5446
  tail call void @llvm.dbg.value(metadata i64* %61, i64 0, metadata !5412, metadata !705), !dbg !5447
  %62 = load i64, i64* %61, align 8, !dbg !5448, !tbaa !2744
  %63 = add i64 %56, %51, !dbg !5436
  %64 = add i64 %63, %62, !dbg !5436
  tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !668, metadata !705), !dbg !5436
  store i64 %64, i64* %57, align 8, !dbg !5436, !tbaa !2744
  %65 = lshr i64 %64, 8, !dbg !5436
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5449
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !5406, metadata !705), !dbg !5452
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5453
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5454
  %66 = and i64 %65, 2040, !dbg !5455
  %67 = getelementptr inbounds i8, i8* %13, i64 %66, !dbg !5456
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !5411, metadata !705), !dbg !5457
  %68 = bitcast i8* %67 to i64*, !dbg !5458
  tail call void @llvm.dbg.value(metadata i64* %68, i64 0, metadata !5412, metadata !705), !dbg !5459
  %69 = load i64, i64* %68, align 8, !dbg !5460, !tbaa !2744
  %70 = add i64 %69, %58, !dbg !5436
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !659, metadata !705), !dbg !5391
  %71 = getelementptr inbounds i64, i64* %29, i64 1, !dbg !5436
  store i64 %70, i64* %71, align 8, !dbg !5436, !tbaa !2744
  %72 = shl i64 %56, 12, !dbg !5461
  %73 = xor i64 %72, %56, !dbg !5461
  %74 = getelementptr inbounds i64, i64* %30, i64 130, !dbg !5461
  %75 = load i64, i64* %74, align 8, !dbg !5461, !tbaa !2744
  %76 = add i64 %75, %73, !dbg !5461
  tail call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !658, metadata !705), !dbg !5384
  %77 = getelementptr inbounds i64, i64* %30, i64 2, !dbg !5461
  %78 = load i64, i64* %77, align 8, !dbg !5461, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !669, metadata !705), !dbg !5461
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5462
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !5406, metadata !705), !dbg !5464
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5465
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5466
  %79 = and i64 %78, 2040, !dbg !5467
  %80 = getelementptr inbounds i8, i8* %13, i64 %79, !dbg !5468
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !5411, metadata !705), !dbg !5469
  %81 = bitcast i8* %80 to i64*, !dbg !5470
  tail call void @llvm.dbg.value(metadata i64* %81, i64 0, metadata !5412, metadata !705), !dbg !5471
  %82 = load i64, i64* %81, align 8, !dbg !5472, !tbaa !2744
  %83 = add i64 %76, %70, !dbg !5461
  %84 = add i64 %83, %82, !dbg !5461
  tail call void @llvm.dbg.value(metadata i64 %84, i64 0, metadata !671, metadata !705), !dbg !5461
  store i64 %84, i64* %77, align 8, !dbg !5461, !tbaa !2744
  %85 = lshr i64 %84, 8, !dbg !5461
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5473
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !5406, metadata !705), !dbg !5476
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5477
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5478
  %86 = and i64 %85, 2040, !dbg !5479
  %87 = getelementptr inbounds i8, i8* %13, i64 %86, !dbg !5480
  tail call void @llvm.dbg.value(metadata i8* %87, i64 0, metadata !5411, metadata !705), !dbg !5481
  %88 = bitcast i8* %87 to i64*, !dbg !5482
  tail call void @llvm.dbg.value(metadata i64* %88, i64 0, metadata !5412, metadata !705), !dbg !5483
  %89 = load i64, i64* %88, align 8, !dbg !5484, !tbaa !2744
  %90 = add i64 %89, %78, !dbg !5461
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !659, metadata !705), !dbg !5391
  %91 = getelementptr inbounds i64, i64* %29, i64 2, !dbg !5461
  store i64 %90, i64* %91, align 8, !dbg !5461, !tbaa !2744
  %92 = lshr i64 %76, 33, !dbg !5485
  %93 = xor i64 %92, %76, !dbg !5485
  %94 = getelementptr inbounds i64, i64* %30, i64 131, !dbg !5485
  %95 = load i64, i64* %94, align 8, !dbg !5485, !tbaa !2744
  %96 = add i64 %95, %93, !dbg !5485
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !658, metadata !705), !dbg !5384
  %97 = getelementptr inbounds i64, i64* %30, i64 3, !dbg !5485
  %98 = load i64, i64* %97, align 8, !dbg !5485, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !672, metadata !705), !dbg !5485
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5486
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !5406, metadata !705), !dbg !5489
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5490
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5491
  %99 = and i64 %98, 2040, !dbg !5492
  %100 = getelementptr inbounds i8, i8* %13, i64 %99, !dbg !5493
  tail call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !5411, metadata !705), !dbg !5494
  %101 = bitcast i8* %100 to i64*, !dbg !5495
  tail call void @llvm.dbg.value(metadata i64* %101, i64 0, metadata !5412, metadata !705), !dbg !5496
  %102 = load i64, i64* %101, align 8, !dbg !5497, !tbaa !2744
  %103 = add i64 %96, %90, !dbg !5485
  %104 = add i64 %103, %102, !dbg !5485
  tail call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !674, metadata !705), !dbg !5485
  store i64 %104, i64* %97, align 8, !dbg !5485, !tbaa !2744
  %105 = lshr i64 %104, 8, !dbg !5485
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5498
  tail call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !5406, metadata !705), !dbg !5501
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5502
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5503
  %106 = and i64 %105, 2040, !dbg !5504
  %107 = getelementptr inbounds i8, i8* %13, i64 %106, !dbg !5505
  tail call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !5411, metadata !705), !dbg !5506
  %108 = bitcast i8* %107 to i64*, !dbg !5507
  tail call void @llvm.dbg.value(metadata i64* %108, i64 0, metadata !5412, metadata !705), !dbg !5508
  %109 = load i64, i64* %108, align 8, !dbg !5509, !tbaa !2744
  %110 = add i64 %109, %98, !dbg !5485
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !659, metadata !705), !dbg !5391
  %111 = getelementptr inbounds i64, i64* %29, i64 3, !dbg !5485
  store i64 %110, i64* %111, align 8, !dbg !5485, !tbaa !2744
  %112 = getelementptr inbounds i64, i64* %29, i64 4, !dbg !5510
  tail call void @llvm.dbg.value(metadata i64* %112, i64 0, metadata !661, metadata !705), !dbg !5394
  %113 = getelementptr inbounds i64, i64* %30, i64 4, !dbg !5511
  tail call void @llvm.dbg.value(metadata i64* %113, i64 0, metadata !660, metadata !705), !dbg !5393
  %114 = icmp ult i64* %113, %14, !dbg !5512
  br i1 %114, label %28, label %115, !dbg !5513, !llvm.loop !5515

; <label>:115:                                    ; preds = %28
  %116 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %26, !dbg !5395
  %117 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 256
  br label %118, !dbg !5384

; <label>:118:                                    ; preds = %115, %118
  %119 = phi i64* [ %202, %118 ], [ %27, %115 ]
  %120 = phi i64* [ %203, %118 ], [ %116, %115 ]
  %121 = phi i64 [ %200, %118 ], [ %110, %115 ]
  %122 = phi i64 [ %186, %118 ], [ %96, %115 ]
  tail call void @llvm.dbg.value(metadata i64 %122, i64 0, metadata !658, metadata !705), !dbg !5384
  tail call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !659, metadata !705), !dbg !5391
  tail call void @llvm.dbg.value(metadata i64* %120, i64 0, metadata !660, metadata !705), !dbg !5393
  tail call void @llvm.dbg.value(metadata i64* %119, i64 0, metadata !661, metadata !705), !dbg !5394
  %123 = shl i64 %122, 21, !dbg !5518
  %124 = xor i64 %122, -1, !dbg !5518
  %125 = xor i64 %123, %124, !dbg !5518
  %126 = getelementptr inbounds i64, i64* %120, i64 -128, !dbg !5518
  %127 = load i64, i64* %126, align 8, !dbg !5518, !tbaa !2744
  %128 = add i64 %125, %127, !dbg !5518
  tail call void @llvm.dbg.value(metadata i64 %128, i64 0, metadata !658, metadata !705), !dbg !5384
  %129 = load i64, i64* %120, align 8, !dbg !5518, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !675, metadata !705), !dbg !5518
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5519
  tail call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !5406, metadata !705), !dbg !5521
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5522
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5523
  %130 = and i64 %129, 2040, !dbg !5524
  %131 = getelementptr inbounds i8, i8* %13, i64 %130, !dbg !5525
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !5411, metadata !705), !dbg !5526
  %132 = bitcast i8* %131 to i64*, !dbg !5527
  tail call void @llvm.dbg.value(metadata i64* %132, i64 0, metadata !5412, metadata !705), !dbg !5528
  %133 = load i64, i64* %132, align 8, !dbg !5529, !tbaa !2744
  %134 = add i64 %133, %121, !dbg !5518
  %135 = add i64 %134, %128, !dbg !5518
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !678, metadata !705), !dbg !5518
  store i64 %135, i64* %120, align 8, !dbg !5518, !tbaa !2744
  %136 = lshr i64 %135, 8, !dbg !5518
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5530
  tail call void @llvm.dbg.value(metadata i64 %136, i64 0, metadata !5406, metadata !705), !dbg !5533
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5534
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5535
  %137 = and i64 %136, 2040, !dbg !5536
  %138 = getelementptr inbounds i8, i8* %13, i64 %137, !dbg !5537
  tail call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !5411, metadata !705), !dbg !5538
  %139 = bitcast i8* %138 to i64*, !dbg !5539
  tail call void @llvm.dbg.value(metadata i64* %139, i64 0, metadata !5412, metadata !705), !dbg !5540
  %140 = load i64, i64* %139, align 8, !dbg !5541, !tbaa !2744
  %141 = add i64 %140, %129, !dbg !5518
  tail call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !659, metadata !705), !dbg !5391
  store i64 %141, i64* %119, align 8, !dbg !5518, !tbaa !2744
  %142 = lshr i64 %128, 5, !dbg !5542
  %143 = xor i64 %142, %128, !dbg !5542
  %144 = getelementptr inbounds i64, i64* %120, i64 -127, !dbg !5542
  %145 = load i64, i64* %144, align 8, !dbg !5542, !tbaa !2744
  %146 = add i64 %145, %143, !dbg !5542
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !658, metadata !705), !dbg !5384
  %147 = getelementptr inbounds i64, i64* %120, i64 1, !dbg !5542
  %148 = load i64, i64* %147, align 8, !dbg !5542, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !679, metadata !705), !dbg !5542
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5543
  tail call void @llvm.dbg.value(metadata i64 %148, i64 0, metadata !5406, metadata !705), !dbg !5546
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5547
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5548
  %149 = and i64 %148, 2040, !dbg !5549
  %150 = getelementptr inbounds i8, i8* %13, i64 %149, !dbg !5550
  tail call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5411, metadata !705), !dbg !5551
  %151 = bitcast i8* %150 to i64*, !dbg !5552
  tail call void @llvm.dbg.value(metadata i64* %151, i64 0, metadata !5412, metadata !705), !dbg !5553
  %152 = load i64, i64* %151, align 8, !dbg !5554, !tbaa !2744
  %153 = add i64 %146, %141, !dbg !5542
  %154 = add i64 %153, %152, !dbg !5542
  tail call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !681, metadata !705), !dbg !5542
  store i64 %154, i64* %147, align 8, !dbg !5542, !tbaa !2744
  %155 = lshr i64 %154, 8, !dbg !5542
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5555
  tail call void @llvm.dbg.value(metadata i64 %155, i64 0, metadata !5406, metadata !705), !dbg !5558
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5559
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5560
  %156 = and i64 %155, 2040, !dbg !5561
  %157 = getelementptr inbounds i8, i8* %13, i64 %156, !dbg !5562
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !5411, metadata !705), !dbg !5563
  %158 = bitcast i8* %157 to i64*, !dbg !5564
  tail call void @llvm.dbg.value(metadata i64* %158, i64 0, metadata !5412, metadata !705), !dbg !5565
  %159 = load i64, i64* %158, align 8, !dbg !5566, !tbaa !2744
  %160 = add i64 %159, %148, !dbg !5542
  tail call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !659, metadata !705), !dbg !5391
  %161 = getelementptr inbounds i64, i64* %119, i64 1, !dbg !5542
  store i64 %160, i64* %161, align 8, !dbg !5542, !tbaa !2744
  %162 = shl i64 %146, 12, !dbg !5567
  %163 = xor i64 %162, %146, !dbg !5567
  %164 = getelementptr inbounds i64, i64* %120, i64 -126, !dbg !5567
  %165 = load i64, i64* %164, align 8, !dbg !5567, !tbaa !2744
  %166 = add i64 %165, %163, !dbg !5567
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !658, metadata !705), !dbg !5384
  %167 = getelementptr inbounds i64, i64* %120, i64 2, !dbg !5567
  %168 = load i64, i64* %167, align 8, !dbg !5567, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !682, metadata !705), !dbg !5567
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5568
  tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !5406, metadata !705), !dbg !5570
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5571
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5572
  %169 = and i64 %168, 2040, !dbg !5573
  %170 = getelementptr inbounds i8, i8* %13, i64 %169, !dbg !5574
  tail call void @llvm.dbg.value(metadata i8* %170, i64 0, metadata !5411, metadata !705), !dbg !5575
  %171 = bitcast i8* %170 to i64*, !dbg !5576
  tail call void @llvm.dbg.value(metadata i64* %171, i64 0, metadata !5412, metadata !705), !dbg !5577
  %172 = load i64, i64* %171, align 8, !dbg !5578, !tbaa !2744
  %173 = add i64 %166, %160, !dbg !5567
  %174 = add i64 %173, %172, !dbg !5567
  tail call void @llvm.dbg.value(metadata i64 %174, i64 0, metadata !684, metadata !705), !dbg !5567
  store i64 %174, i64* %167, align 8, !dbg !5567, !tbaa !2744
  %175 = lshr i64 %174, 8, !dbg !5567
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5579
  tail call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !5406, metadata !705), !dbg !5582
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5583
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5584
  %176 = and i64 %175, 2040, !dbg !5585
  %177 = getelementptr inbounds i8, i8* %13, i64 %176, !dbg !5586
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !5411, metadata !705), !dbg !5587
  %178 = bitcast i8* %177 to i64*, !dbg !5588
  tail call void @llvm.dbg.value(metadata i64* %178, i64 0, metadata !5412, metadata !705), !dbg !5589
  %179 = load i64, i64* %178, align 8, !dbg !5590, !tbaa !2744
  %180 = add i64 %179, %168, !dbg !5567
  tail call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !659, metadata !705), !dbg !5391
  %181 = getelementptr inbounds i64, i64* %119, i64 2, !dbg !5567
  store i64 %180, i64* %181, align 8, !dbg !5567, !tbaa !2744
  %182 = lshr i64 %166, 33, !dbg !5591
  %183 = xor i64 %182, %166, !dbg !5591
  %184 = getelementptr inbounds i64, i64* %120, i64 -125, !dbg !5591
  %185 = load i64, i64* %184, align 8, !dbg !5591, !tbaa !2744
  %186 = add i64 %185, %183, !dbg !5591
  tail call void @llvm.dbg.value(metadata i64 %186, i64 0, metadata !658, metadata !705), !dbg !5384
  %187 = getelementptr inbounds i64, i64* %120, i64 3, !dbg !5591
  %188 = load i64, i64* %187, align 8, !dbg !5591, !tbaa !2744
  tail call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !685, metadata !705), !dbg !5591
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5592
  tail call void @llvm.dbg.value(metadata i64 %188, i64 0, metadata !5406, metadata !705), !dbg !5595
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5596
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5597
  %189 = and i64 %188, 2040, !dbg !5598
  %190 = getelementptr inbounds i8, i8* %13, i64 %189, !dbg !5599
  tail call void @llvm.dbg.value(metadata i8* %190, i64 0, metadata !5411, metadata !705), !dbg !5600
  %191 = bitcast i8* %190 to i64*, !dbg !5601
  tail call void @llvm.dbg.value(metadata i64* %191, i64 0, metadata !5412, metadata !705), !dbg !5602
  %192 = load i64, i64* %191, align 8, !dbg !5603, !tbaa !2744
  %193 = add i64 %186, %180, !dbg !5591
  %194 = add i64 %193, %192, !dbg !5591
  tail call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !687, metadata !705), !dbg !5591
  store i64 %194, i64* %187, align 8, !dbg !5591, !tbaa !2744
  %195 = lshr i64 %194, 8, !dbg !5591
  tail call void @llvm.dbg.value(metadata i64* %12, i64 0, metadata !5399, metadata !705), !dbg !5604
  tail call void @llvm.dbg.value(metadata i64 %195, i64 0, metadata !5406, metadata !705), !dbg !5607
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5407, metadata !705), !dbg !5608
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5410, metadata !705), !dbg !5609
  %196 = and i64 %195, 2040, !dbg !5610
  %197 = getelementptr inbounds i8, i8* %13, i64 %196, !dbg !5611
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !5411, metadata !705), !dbg !5612
  %198 = bitcast i8* %197 to i64*, !dbg !5613
  tail call void @llvm.dbg.value(metadata i64* %198, i64 0, metadata !5412, metadata !705), !dbg !5614
  %199 = load i64, i64* %198, align 8, !dbg !5615, !tbaa !2744
  %200 = add i64 %199, %188, !dbg !5591
  tail call void @llvm.dbg.value(metadata i64 %200, i64 0, metadata !659, metadata !705), !dbg !5391
  %201 = getelementptr inbounds i64, i64* %119, i64 3, !dbg !5591
  store i64 %200, i64* %201, align 8, !dbg !5591, !tbaa !2744
  %202 = getelementptr inbounds i64, i64* %119, i64 4, !dbg !5616
  tail call void @llvm.dbg.value(metadata i64* %202, i64 0, metadata !661, metadata !705), !dbg !5394
  %203 = getelementptr inbounds i64, i64* %120, i64 4, !dbg !5617
  tail call void @llvm.dbg.value(metadata i64* %203, i64 0, metadata !660, metadata !705), !dbg !5393
  %204 = icmp ult i64* %203, %117, !dbg !5618
  br i1 %204, label %118, label %205, !dbg !5619, !llvm.loop !5515

; <label>:205:                                    ; preds = %118
  store i64 %186, i64* %4, align 8, !dbg !5621, !tbaa !5383
  store i64 %200, i64* %6, align 8, !dbg !5622, !tbaa !5386
  ret void, !dbg !5623
}

; Function Attrs: nounwind sspstrong uwtable
define void @isaac_seed(%struct.isaac_state* nocapture) local_unnamed_addr #6 !dbg !5624 {
  tail call void @llvm.dbg.value(metadata %struct.isaac_state* %0, i64 0, metadata !5628, metadata !705), !dbg !5641
  tail call void @llvm.dbg.value(metadata i64 7240739780546808700, i64 0, metadata !5629, metadata !705), !dbg !5642
  tail call void @llvm.dbg.value(metadata i64 -5046086420515862430, i64 0, metadata !5630, metadata !705), !dbg !5643
  tail call void @llvm.dbg.value(metadata i64 -8354558816804203872, i64 0, metadata !5631, metadata !705), !dbg !5644
  tail call void @llvm.dbg.value(metadata i64 -5576812576440232668, i64 0, metadata !5632, metadata !705), !dbg !5645
  tail call void @llvm.dbg.value(metadata i64 -9011610652101975858, i64 0, metadata !5633, metadata !705), !dbg !5646
  tail call void @llvm.dbg.value(metadata i64 5259722845879046933, i64 0, metadata !5634, metadata !705), !dbg !5647
  tail call void @llvm.dbg.value(metadata i64 -5865837416287532563, i64 0, metadata !5635, metadata !705), !dbg !5648
  tail call void @llvm.dbg.value(metadata i64 -7424904924229222229, i64 0, metadata !5636, metadata !705), !dbg !5649
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5637, metadata !705), !dbg !5650
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5637, metadata !705), !dbg !5650
  tail call void @llvm.dbg.value(metadata i64 -7424904924229222229, i64 0, metadata !5636, metadata !705), !dbg !5649
  tail call void @llvm.dbg.value(metadata i64 -5865837416287532563, i64 0, metadata !5635, metadata !705), !dbg !5648
  tail call void @llvm.dbg.value(metadata i64 5259722845879046933, i64 0, metadata !5634, metadata !705), !dbg !5647
  tail call void @llvm.dbg.value(metadata i64 -9011610652101975858, i64 0, metadata !5633, metadata !705), !dbg !5646
  tail call void @llvm.dbg.value(metadata i64 -5576812576440232668, i64 0, metadata !5632, metadata !705), !dbg !5645
  tail call void @llvm.dbg.value(metadata i64 -8354558816804203872, i64 0, metadata !5631, metadata !705), !dbg !5644
  tail call void @llvm.dbg.value(metadata i64 -5046086420515862430, i64 0, metadata !5630, metadata !705), !dbg !5643
  tail call void @llvm.dbg.value(metadata i64 7240739780546808700, i64 0, metadata !5629, metadata !705), !dbg !5642
  br label %2, !dbg !5651

; <label>:2:                                      ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %75, %2 ]
  %4 = phi i64 [ -7424904924229222229, %1 ], [ %71, %2 ]
  %5 = phi i64 [ -5865837416287532563, %1 ], [ %74, %2 ]
  %6 = phi i64 [ 5259722845879046933, %1 ], [ %70, %2 ]
  %7 = phi i64 [ -9011610652101975858, %1 ], [ %73, %2 ]
  %8 = phi i64 [ -5576812576440232668, %1 ], [ %69, %2 ]
  %9 = phi i64 [ -8354558816804203872, %1 ], [ %65, %2 ]
  %10 = phi i64 [ -5046086420515862430, %1 ], [ %61, %2 ]
  %11 = phi i64 [ 7240739780546808700, %1 ], [ %57, %2 ]
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %3, !dbg !5654
  %13 = load i64, i64* %12, align 8, !dbg !5654, !tbaa !2744
  %14 = add i64 %13, %11, !dbg !5654
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5629, metadata !705), !dbg !5642
  %15 = or i64 %3, 1, !dbg !5654
  %16 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %15, !dbg !5654
  %17 = load i64, i64* %16, align 8, !dbg !5654, !tbaa !2744
  %18 = add i64 %17, %10, !dbg !5654
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !5630, metadata !705), !dbg !5643
  %19 = or i64 %3, 2, !dbg !5654
  %20 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %19, !dbg !5654
  %21 = load i64, i64* %20, align 8, !dbg !5654, !tbaa !2744
  %22 = add i64 %21, %9, !dbg !5654
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !5631, metadata !705), !dbg !5644
  %23 = or i64 %3, 3, !dbg !5654
  %24 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %23, !dbg !5654
  %25 = load i64, i64* %24, align 8, !dbg !5654, !tbaa !2744
  %26 = add i64 %25, %8, !dbg !5654
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !5632, metadata !705), !dbg !5645
  %27 = or i64 %3, 4, !dbg !5654
  %28 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %27, !dbg !5654
  %29 = load i64, i64* %28, align 8, !dbg !5654, !tbaa !2744
  %30 = add i64 %29, %7, !dbg !5654
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !5633, metadata !705), !dbg !5646
  %31 = or i64 %3, 5, !dbg !5654
  %32 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %31, !dbg !5654
  %33 = load i64, i64* %32, align 8, !dbg !5654, !tbaa !2744
  %34 = add i64 %33, %6, !dbg !5654
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !5634, metadata !705), !dbg !5647
  %35 = or i64 %3, 6, !dbg !5654
  %36 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %35, !dbg !5654
  %37 = load i64, i64* %36, align 8, !dbg !5654, !tbaa !2744
  %38 = add i64 %37, %5, !dbg !5654
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !5635, metadata !705), !dbg !5648
  %39 = or i64 %3, 7, !dbg !5654
  %40 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %39, !dbg !5654
  %41 = load i64, i64* %40, align 8, !dbg !5654, !tbaa !2744
  %42 = add i64 %41, %4, !dbg !5654
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !5636, metadata !705), !dbg !5649
  %43 = sub i64 %14, %30, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !5629, metadata !705), !dbg !5642
  %44 = lshr i64 %42, 9, !dbg !5658
  %45 = xor i64 %44, %34, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !5634, metadata !705), !dbg !5647
  %46 = add i64 %42, %43, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !5636, metadata !705), !dbg !5649
  %47 = sub i64 %18, %45, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %47, i64 0, metadata !5630, metadata !705), !dbg !5643
  %48 = shl i64 %43, 9, !dbg !5658
  %49 = xor i64 %38, %48, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !5635, metadata !705), !dbg !5648
  %50 = add i64 %47, %43, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !5629, metadata !705), !dbg !5642
  %51 = sub i64 %22, %49, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5631, metadata !705), !dbg !5644
  %52 = lshr i64 %47, 23, !dbg !5658
  %53 = xor i64 %52, %46, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !5636, metadata !705), !dbg !5649
  %54 = add i64 %47, %51, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !5630, metadata !705), !dbg !5643
  %55 = sub i64 %26, %53, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !5632, metadata !705), !dbg !5645
  %56 = shl i64 %51, 15, !dbg !5658
  %57 = xor i64 %50, %56, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !5629, metadata !705), !dbg !5642
  %58 = add i64 %55, %51, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !5631, metadata !705), !dbg !5644
  %59 = sub i64 %30, %57, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !5633, metadata !705), !dbg !5646
  %60 = lshr i64 %55, 14, !dbg !5658
  %61 = xor i64 %60, %54, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5630, metadata !705), !dbg !5643
  %62 = add i64 %55, %59, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !5632, metadata !705), !dbg !5645
  %63 = sub i64 %45, %61, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !5634, metadata !705), !dbg !5647
  %64 = shl i64 %59, 20, !dbg !5658
  %65 = xor i64 %58, %64, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !5631, metadata !705), !dbg !5644
  %66 = add i64 %63, %59, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %66, i64 0, metadata !5633, metadata !705), !dbg !5646
  %67 = sub i64 %49, %65, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !5635, metadata !705), !dbg !5648
  %68 = lshr i64 %63, 17, !dbg !5658
  %69 = xor i64 %68, %62, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !5632, metadata !705), !dbg !5645
  %70 = add i64 %63, %67, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5634, metadata !705), !dbg !5647
  %71 = sub i64 %53, %69, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !5636, metadata !705), !dbg !5649
  %72 = shl i64 %67, 14, !dbg !5658
  %73 = xor i64 %66, %72, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5633, metadata !705), !dbg !5646
  %74 = add i64 %71, %67, !dbg !5658
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5635, metadata !705), !dbg !5648
  store i64 %57, i64* %12, align 8, !dbg !5654, !tbaa !2744
  store i64 %61, i64* %16, align 8, !dbg !5654, !tbaa !2744
  store i64 %65, i64* %20, align 8, !dbg !5654, !tbaa !2744
  store i64 %69, i64* %24, align 8, !dbg !5654, !tbaa !2744
  store i64 %73, i64* %28, align 8, !dbg !5654, !tbaa !2744
  store i64 %70, i64* %32, align 8, !dbg !5654, !tbaa !2744
  store i64 %74, i64* %36, align 8, !dbg !5654, !tbaa !2744
  store i64 %71, i64* %40, align 8, !dbg !5654, !tbaa !2744
  %75 = add nuw nsw i64 %3, 8, !dbg !5661
  tail call void @llvm.dbg.value(metadata i64 %71, i64 0, metadata !5636, metadata !705), !dbg !5649
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !5635, metadata !705), !dbg !5648
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !5634, metadata !705), !dbg !5647
  tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !5633, metadata !705), !dbg !5646
  tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !5632, metadata !705), !dbg !5645
  tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !5631, metadata !705), !dbg !5644
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !5630, metadata !705), !dbg !5643
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !5629, metadata !705), !dbg !5642
  %76 = icmp slt i64 %75, 256, !dbg !5663
  br i1 %76, label %2, label %77, !dbg !5651, !llvm.loop !5665

; <label>:77:                                     ; preds = %2
  br label %78, !dbg !5667

; <label>:78:                                     ; preds = %77, %78
  %79 = phi i64 [ %151, %78 ], [ 0, %77 ]
  %80 = phi i64 [ %147, %78 ], [ %71, %77 ]
  %81 = phi i64 [ %150, %78 ], [ %74, %77 ]
  %82 = phi i64 [ %146, %78 ], [ %70, %77 ]
  %83 = phi i64 [ %149, %78 ], [ %73, %77 ]
  %84 = phi i64 [ %145, %78 ], [ %69, %77 ]
  %85 = phi i64 [ %141, %78 ], [ %65, %77 ]
  %86 = phi i64 [ %137, %78 ], [ %61, %77 ]
  %87 = phi i64 [ %133, %78 ], [ %57, %77 ]
  %88 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %79, !dbg !5667
  %89 = load i64, i64* %88, align 8, !dbg !5667, !tbaa !2744
  %90 = add i64 %89, %87, !dbg !5667
  tail call void @llvm.dbg.value(metadata i64 %90, i64 0, metadata !5629, metadata !705), !dbg !5642
  %91 = or i64 %79, 1, !dbg !5667
  %92 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %91, !dbg !5667
  %93 = load i64, i64* %92, align 8, !dbg !5667, !tbaa !2744
  %94 = add i64 %93, %86, !dbg !5667
  tail call void @llvm.dbg.value(metadata i64 %94, i64 0, metadata !5630, metadata !705), !dbg !5643
  %95 = or i64 %79, 2, !dbg !5667
  %96 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %95, !dbg !5667
  %97 = load i64, i64* %96, align 8, !dbg !5667, !tbaa !2744
  %98 = add i64 %97, %85, !dbg !5667
  tail call void @llvm.dbg.value(metadata i64 %98, i64 0, metadata !5631, metadata !705), !dbg !5644
  %99 = or i64 %79, 3, !dbg !5667
  %100 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %99, !dbg !5667
  %101 = load i64, i64* %100, align 8, !dbg !5667, !tbaa !2744
  %102 = add i64 %101, %84, !dbg !5667
  tail call void @llvm.dbg.value(metadata i64 %102, i64 0, metadata !5632, metadata !705), !dbg !5645
  %103 = or i64 %79, 4, !dbg !5667
  %104 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %103, !dbg !5667
  %105 = load i64, i64* %104, align 8, !dbg !5667, !tbaa !2744
  %106 = add i64 %105, %83, !dbg !5667
  tail call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !5633, metadata !705), !dbg !5646
  %107 = or i64 %79, 5, !dbg !5667
  %108 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %107, !dbg !5667
  %109 = load i64, i64* %108, align 8, !dbg !5667, !tbaa !2744
  %110 = add i64 %109, %82, !dbg !5667
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !5634, metadata !705), !dbg !5647
  %111 = or i64 %79, 6, !dbg !5667
  %112 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %111, !dbg !5667
  %113 = load i64, i64* %112, align 8, !dbg !5667, !tbaa !2744
  %114 = add i64 %113, %81, !dbg !5667
  tail call void @llvm.dbg.value(metadata i64 %114, i64 0, metadata !5635, metadata !705), !dbg !5648
  %115 = or i64 %79, 7, !dbg !5667
  %116 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %115, !dbg !5667
  %117 = load i64, i64* %116, align 8, !dbg !5667, !tbaa !2744
  %118 = add i64 %117, %80, !dbg !5667
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !5636, metadata !705), !dbg !5649
  %119 = sub i64 %90, %106, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %119, i64 0, metadata !5629, metadata !705), !dbg !5642
  %120 = lshr i64 %118, 9, !dbg !5672
  %121 = xor i64 %120, %110, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %121, i64 0, metadata !5634, metadata !705), !dbg !5647
  %122 = add i64 %118, %119, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %122, i64 0, metadata !5636, metadata !705), !dbg !5649
  %123 = sub i64 %94, %121, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !5630, metadata !705), !dbg !5643
  %124 = shl i64 %119, 9, !dbg !5672
  %125 = xor i64 %114, %124, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !5635, metadata !705), !dbg !5648
  %126 = add i64 %123, %119, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !5629, metadata !705), !dbg !5642
  %127 = sub i64 %98, %125, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !5631, metadata !705), !dbg !5644
  %128 = lshr i64 %123, 23, !dbg !5672
  %129 = xor i64 %128, %122, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %129, i64 0, metadata !5636, metadata !705), !dbg !5649
  %130 = add i64 %123, %127, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !5630, metadata !705), !dbg !5643
  %131 = sub i64 %102, %129, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !5632, metadata !705), !dbg !5645
  %132 = shl i64 %127, 15, !dbg !5672
  %133 = xor i64 %126, %132, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !5629, metadata !705), !dbg !5642
  %134 = add i64 %131, %127, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !5631, metadata !705), !dbg !5644
  %135 = sub i64 %106, %133, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !5633, metadata !705), !dbg !5646
  %136 = lshr i64 %131, 14, !dbg !5672
  %137 = xor i64 %136, %130, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !5630, metadata !705), !dbg !5643
  %138 = add i64 %131, %135, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !5632, metadata !705), !dbg !5645
  %139 = sub i64 %121, %137, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !5634, metadata !705), !dbg !5647
  %140 = shl i64 %135, 20, !dbg !5672
  %141 = xor i64 %134, %140, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !5631, metadata !705), !dbg !5644
  %142 = add i64 %139, %135, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %142, i64 0, metadata !5633, metadata !705), !dbg !5646
  %143 = sub i64 %125, %141, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !5635, metadata !705), !dbg !5648
  %144 = lshr i64 %139, 17, !dbg !5672
  %145 = xor i64 %144, %138, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !5632, metadata !705), !dbg !5645
  %146 = add i64 %139, %143, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !5634, metadata !705), !dbg !5647
  %147 = sub i64 %129, %145, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !5636, metadata !705), !dbg !5649
  %148 = shl i64 %143, 14, !dbg !5672
  %149 = xor i64 %142, %148, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !5633, metadata !705), !dbg !5646
  %150 = add i64 %147, %143, !dbg !5672
  tail call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !5635, metadata !705), !dbg !5648
  store i64 %133, i64* %88, align 8, !dbg !5667, !tbaa !2744
  store i64 %137, i64* %92, align 8, !dbg !5667, !tbaa !2744
  store i64 %141, i64* %96, align 8, !dbg !5667, !tbaa !2744
  store i64 %145, i64* %100, align 8, !dbg !5667, !tbaa !2744
  store i64 %149, i64* %104, align 8, !dbg !5667, !tbaa !2744
  store i64 %146, i64* %108, align 8, !dbg !5667, !tbaa !2744
  store i64 %150, i64* %112, align 8, !dbg !5667, !tbaa !2744
  store i64 %147, i64* %116, align 8, !dbg !5667, !tbaa !2744
  %151 = add nuw nsw i64 %79, 8, !dbg !5675
  tail call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !5636, metadata !705), !dbg !5649
  tail call void @llvm.dbg.value(metadata i64 %150, i64 0, metadata !5635, metadata !705), !dbg !5648
  tail call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !5634, metadata !705), !dbg !5647
  tail call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !5633, metadata !705), !dbg !5646
  tail call void @llvm.dbg.value(metadata i64 %145, i64 0, metadata !5632, metadata !705), !dbg !5645
  tail call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !5631, metadata !705), !dbg !5644
  tail call void @llvm.dbg.value(metadata i64 %137, i64 0, metadata !5630, metadata !705), !dbg !5643
  tail call void @llvm.dbg.value(metadata i64 %133, i64 0, metadata !5629, metadata !705), !dbg !5642
  %152 = icmp slt i64 %151, 256, !dbg !5677
  br i1 %152, label %78, label %153, !dbg !5679, !llvm.loop !5681

; <label>:153:                                    ; preds = %78
  %154 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1, !dbg !5683
  %155 = bitcast i64* %154 to i8*, !dbg !5684
  call void @llvm.memset.p0i8.i64(i8* %155, i8 0, i64 24, i32 8, i1 false), !dbg !5685
  ret void, !dbg !5684
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !5686 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5731, metadata !705), !dbg !5746
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5732, metadata !705), !dbg !5747
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !5748
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !5733, metadata !705), !dbg !5749
  %4 = icmp eq %struct._IO_FILE* %3, null, !dbg !5750
  br i1 %4, label %25, label %5, !dbg !5751

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #11, !dbg !5752
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !5734, metadata !705), !dbg !5753
  %7 = icmp ult i32 %6, 3, !dbg !5754
  br i1 %7, label %8, label %25, !dbg !5754

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #11, !dbg !5755
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !5737, metadata !705), !dbg !5756
  %10 = icmp slt i32 %9, 0, !dbg !5757
  br i1 %10, label %11, label %15, !dbg !5758

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1, !dbg !5759
  %13 = load i32, i32* %12, align 4, !dbg !5759, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !5740, metadata !705), !dbg !5760
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !5761
  store i32 %13, i32* %12, align 4, !dbg !5762, !tbaa !844
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11, !dbg !5763
  %17 = icmp eq i32 %16, 0, !dbg !5764
  br i1 %17, label %18, label %21, !dbg !5765

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #11, !dbg !5766
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !5733, metadata !705), !dbg !5749
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !5768
  br i1 %20, label %21, label %25, !dbg !5769

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1, !dbg !5771
  %23 = load i32, i32* %22, align 4, !dbg !5771, !tbaa !844
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !5743, metadata !705), !dbg !5772
  %24 = tail call i32 @close(i32 %9) #11, !dbg !5773
  store i32 %23, i32* %22, align 4, !dbg !5774, !tbaa !844
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26, !dbg !5775
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !5776 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5781, metadata !705), !dbg !5782
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11, !dbg !5783
  ret i32 %2, !dbg !5784
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !545 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !553, metadata !705), !dbg !5785
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !554, metadata !705), !dbg !5786
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5787
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11, !dbg !5787
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !555, metadata !705), !dbg !5788
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !568, metadata !705), !dbg !5789
  call void @llvm.va_start(i8* nonnull %4), !dbg !5790
  %5 = icmp eq i32 %1, 1030, !dbg !5791
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !5791

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5792

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5793
  %12 = load i8*, i8** %11, align 16, !dbg !5793
  %13 = sext i32 %7 to i64, !dbg !5793
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5793
  %15 = add i32 %7, 8, !dbg !5793
  store i32 %15, i32* %6, align 16, !dbg !5793
  br label %20, !dbg !5793

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5795
  %18 = load i8*, i8** %17, align 8, !dbg !5795
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5795
  store i8* %19, i8** %17, align 8, !dbg !5795
  br label %20, !dbg !5795

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5797
  %23 = load i32, i32* %22, align 4, !dbg !5797
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !569, metadata !705), !dbg !5799
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5800, !tbaa !844
  %25 = icmp sgt i32 %24, -1, !dbg !5802
  br i1 %25, label %26, label %39, !dbg !5803

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11, !dbg !5804
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !568, metadata !705), !dbg !5789
  %28 = icmp sgt i32 %27, -1, !dbg !5806
  br i1 %28, label %36, label %29, !dbg !5808

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !5809
  %31 = load i32, i32* %30, align 4, !dbg !5809, !tbaa !844
  %32 = icmp eq i32 %31, 22, !dbg !5811
  br i1 %32, label %33, label %36, !dbg !5812

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5814
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !568, metadata !705), !dbg !5789
  %35 = icmp slt i32 %34, 0, !dbg !5816
  br i1 %35, label %75, label %36, !dbg !5818

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !568, metadata !705), !dbg !5789
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !844
  br label %42, !dbg !5819

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5820
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !568, metadata !705), !dbg !5789
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !5821
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !568, metadata !705), !dbg !5789
  %45 = icmp sgt i32 %44, -1, !dbg !5823
  %46 = icmp eq i32 %43, -1, !dbg !5824
  %47 = and i1 %45, %46, !dbg !5825
  br i1 %47, label %48, label %75, !dbg !5825

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11, !dbg !5826
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !572, metadata !705), !dbg !5827
  %50 = icmp slt i32 %49, 0, !dbg !5828
  br i1 %50, label %55, label %51, !dbg !5829

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !5830
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #11, !dbg !5832
  %54 = icmp eq i32 %53, -1, !dbg !5833
  br i1 %54, label %55, label %75, !dbg !5834

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !5836
  %57 = load i32, i32* %56, align 4, !dbg !5836, !tbaa !844
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !575, metadata !705), !dbg !5837
  %58 = call i32 @close(i32 %44) #11, !dbg !5838
  store i32 %57, i32* %56, align 4, !dbg !5839, !tbaa !844
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !568, metadata !705), !dbg !5789
  br label %75, !dbg !5840

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !5841

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5842
  %62 = load i8*, i8** %61, align 16, !dbg !5842
  %63 = sext i32 %7 to i64, !dbg !5842
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !5842
  %65 = add i32 %7, 8, !dbg !5842
  store i32 %65, i32* %6, align 16, !dbg !5842
  br label %70, !dbg !5842

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5844
  %68 = load i8*, i8** %67, align 8, !dbg !5844
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !5844
  store i8* %69, i8** %67, align 8, !dbg !5844
  br label %70, !dbg !5844

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !5846
  %73 = load i8*, i8** %72, align 8, !dbg !5846
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !578, metadata !705), !dbg !5848
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #11, !dbg !5849
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !568, metadata !705), !dbg !5789
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !568, metadata !705), !dbg !5789
  call void @llvm.va_end(i8* nonnull %4), !dbg !5850
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11, !dbg !5851
  ret i32 %76, !dbg !5852
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

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
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !70, !580, !75, !582, !83, !585, !588, !90, !97, !179, !590, !188, !597, !614, !616, !618, !620, !622, !624, !627, !197, !630, !632, !634, !691, !693, !549}
!llvm.ident = !{!695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695, !695}
!llvm.module.flags = !{!696, !697, !698, !699}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 48, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19)
!3 = !DIFile(filename: "src/mktemp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{}
!5 = !{!6, !8, !9, !12, !14, !17}
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
!19 = !{!20, !23, !0, !54}
!20 = !DIGlobalVariableExpression(var: !21)
!21 = distinct !DIGlobalVariable(name: "stdout_closed", scope: !2, file: !3, line: 130, type: !22, isLocal: true, isDefinition: true)
!22 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!23 = !DIGlobalVariableExpression(var: !24)
!24 = distinct !DIGlobalVariable(name: "infomap", scope: !25, file: !26, line: 632, type: !51, isLocal: true, isDefinition: true)
!25 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !26, file: !26, line: 630, type: !27, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !29)
!26 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!27 = !DISubroutineType(types: !28)
!28 = !{null, !17}
!29 = !{!30, !31, !32, !39, !41, !42, !43, !46, !47, !49}
!30 = !DILocalVariable(name: "program", arg: 1, scope: !25, file: !26, line: 630, type: !17)
!31 = !DILocalVariable(name: "node", scope: !25, file: !26, line: 642, type: !17)
!32 = !DILocalVariable(name: "map_prog", scope: !25, file: !26, line: 643, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !25, file: !26, line: 632, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !35, file: !26, line: 632, baseType: !17, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !35, file: !26, line: 632, baseType: !17, size: 64, offset: 64)
!39 = !DILocalVariable(name: "__s1_len", scope: !40, file: !26, line: 645, type: !9)
!40 = distinct !DILexicalBlock(scope: !25, file: !26, line: 645, column: 33)
!41 = !DILocalVariable(name: "__s2_len", scope: !40, file: !26, line: 645, type: !9)
!42 = !DILocalVariable(name: "lc_messages", scope: !25, file: !26, line: 655, type: !17)
!43 = !DILocalVariable(name: "__s1_len", scope: !44, file: !26, line: 656, type: !9)
!44 = distinct !DILexicalBlock(scope: !45, file: !26, line: 656, column: 22)
!45 = distinct !DILexicalBlock(scope: !25, file: !26, line: 656, column: 7)
!46 = !DILocalVariable(name: "__s2_len", scope: !44, file: !26, line: 656, type: !9)
!47 = !DILocalVariable(name: "__s2", scope: !48, file: !26, line: 656, type: !14)
!48 = distinct !DILexicalBlock(scope: !44, file: !26, line: 656, column: 22)
!49 = !DILocalVariable(name: "__result", scope: !48, file: !26, line: 656, type: !50)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 896, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 7)
!54 = !DIGlobalVariableExpression(var: !55)
!55 = distinct !DIGlobalVariable(name: "default_template", scope: !2, file: !3, line: 39, type: !17, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 2048, elements: !66)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !59, line: 104, size: 256, elements: !60)
!59 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!60 = !{!61, !62, !63, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !59, line: 106, baseType: !17, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !58, file: !59, line: 109, baseType: !50, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !58, file: !59, line: 110, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !58, file: !59, line: 111, baseType: !50, size: 32, offset: 192)
!66 = !{!67}
!67 = !DISubrange(count: 8)
!68 = !DIGlobalVariableExpression(var: !69)
!69 = distinct !DIGlobalVariable(name: "Version", scope: !70, file: !71, line: 2, type: !17, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !72)
!71 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !{!68}
!73 = !DIGlobalVariableExpression(var: !74)
!74 = distinct !DIGlobalVariable(name: "file_name", scope: !75, file: !80, line: 36, type: !17, isLocal: true, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !77)
!76 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !{!73, !78}
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !75, file: !80, line: 46, type: !22, isLocal: true, isDefinition: true)
!80 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !DIGlobalVariableExpression(var: !82)
!82 = distinct !DIGlobalVariable(name: "exit_failure", scope: !83, file: !86, line: 24, type: !87, isLocal: false, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !85)
!84 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!85 = !{!81}
!86 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "program_name", scope: !90, file: !94, line: 33, type: !17, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !93)
!91 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!92 = !{!8, !6}
!93 = !{!88}
!94 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !97, file: !139, line: 77, type: !173, isLocal: false, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !99, retainedTypes: !134, globals: !136)
!98 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!100, !114, !119}
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !101, line: 32, size: 32, elements: !102)
!101 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!103 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!104 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!105 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!106 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!107 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!108 = !DIEnumerator(name: "c_quoting_style", value: 5)
!109 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!110 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!111 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!112 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!113 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !101, line: 242, size: 32, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!117 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!118 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !120, line: 46, size: 32, elements: !121)
!120 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!122 = !DIEnumerator(name: "_ISupper", value: 256)
!123 = !DIEnumerator(name: "_ISlower", value: 512)
!124 = !DIEnumerator(name: "_ISalpha", value: 1024)
!125 = !DIEnumerator(name: "_ISdigit", value: 2048)
!126 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!127 = !DIEnumerator(name: "_ISspace", value: 8192)
!128 = !DIEnumerator(name: "_ISprint", value: 16384)
!129 = !DIEnumerator(name: "_ISgraph", value: 32768)
!130 = !DIEnumerator(name: "_ISblank", value: 1)
!131 = !DIEnumerator(name: "_IScntrl", value: 2)
!132 = !DIEnumerator(name: "_ISpunct", value: 4)
!133 = !DIEnumerator(name: "_ISalnum", value: 8)
!134 = !{!50, !135, !9, !6}
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !{!95, !137, !144, !155, !157, !162, !169, !171}
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !97, file: !139, line: 93, type: !140, isLocal: false, isDefinition: true)
!139 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 320, elements: !142)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!142 = !{!143}
!143 = !DISubrange(count: 10)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !97, file: !139, line: 1043, type: !146, isLocal: false, isDefinition: true)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !139, line: 57, size: 448, elements: !147)
!147 = !{!148, !149, !150, !153, !154}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !146, file: !139, line: 60, baseType: !100, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !139, line: 63, baseType: !50, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !146, file: !139, line: 67, baseType: !151, size: 256, offset: 64)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !66)
!152 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !146, file: !139, line: 70, baseType: !17, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !146, file: !139, line: 73, baseType: !17, size: 64, offset: 384)
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !97, file: !139, line: 108, type: !146, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "slot0", scope: !97, file: !139, line: 834, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 256)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "slotvec", scope: !97, file: !139, line: 837, type: !164, isLocal: true, isDefinition: true)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !139, line: 826, size: 128, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !165, file: !139, line: 828, baseType: !9, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !165, file: !139, line: 829, baseType: !6, size: 64, offset: 64)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "nslots", scope: !97, file: !139, line: 835, type: !50, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "slotvec0", scope: !97, file: !139, line: 836, type: !165, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 704, elements: !175)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!175 = !{!176}
!176 = !DISubrange(count: 11)
!177 = !DIGlobalVariableExpression(var: !178)
!178 = distinct !DIGlobalVariable(name: "letters", scope: !179, file: !182, line: 185, type: !183, isLocal: true, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !181)
!180 = !DIFile(filename: "./lib/tempname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !{!177}
!182 = !DIFile(filename: "lib/tempname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 504, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 63)
!186 = !DIGlobalVariableExpression(var: !187)
!187 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !188, file: !191, line: 26, type: !192, isLocal: false, isDefinition: true)
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !190)
!189 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!190 = !{!186}
!191 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 47)
!195 = !DIGlobalVariableExpression(var: !196)
!196 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !197, file: !541, line: 120, type: !542, isLocal: true, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !199, retainedTypes: !538, globals: !540)
!198 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!199 = !{!200}
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !201, line: 41, size: 32, elements: !202)
!201 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!203 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!204 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!205 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!206 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!207 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!208 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!209 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!210 = !DIEnumerator(name: "DAY_1", value: 131079)
!211 = !DIEnumerator(name: "DAY_2", value: 131080)
!212 = !DIEnumerator(name: "DAY_3", value: 131081)
!213 = !DIEnumerator(name: "DAY_4", value: 131082)
!214 = !DIEnumerator(name: "DAY_5", value: 131083)
!215 = !DIEnumerator(name: "DAY_6", value: 131084)
!216 = !DIEnumerator(name: "DAY_7", value: 131085)
!217 = !DIEnumerator(name: "ABMON_1", value: 131086)
!218 = !DIEnumerator(name: "ABMON_2", value: 131087)
!219 = !DIEnumerator(name: "ABMON_3", value: 131088)
!220 = !DIEnumerator(name: "ABMON_4", value: 131089)
!221 = !DIEnumerator(name: "ABMON_5", value: 131090)
!222 = !DIEnumerator(name: "ABMON_6", value: 131091)
!223 = !DIEnumerator(name: "ABMON_7", value: 131092)
!224 = !DIEnumerator(name: "ABMON_8", value: 131093)
!225 = !DIEnumerator(name: "ABMON_9", value: 131094)
!226 = !DIEnumerator(name: "ABMON_10", value: 131095)
!227 = !DIEnumerator(name: "ABMON_11", value: 131096)
!228 = !DIEnumerator(name: "ABMON_12", value: 131097)
!229 = !DIEnumerator(name: "MON_1", value: 131098)
!230 = !DIEnumerator(name: "MON_2", value: 131099)
!231 = !DIEnumerator(name: "MON_3", value: 131100)
!232 = !DIEnumerator(name: "MON_4", value: 131101)
!233 = !DIEnumerator(name: "MON_5", value: 131102)
!234 = !DIEnumerator(name: "MON_6", value: 131103)
!235 = !DIEnumerator(name: "MON_7", value: 131104)
!236 = !DIEnumerator(name: "MON_8", value: 131105)
!237 = !DIEnumerator(name: "MON_9", value: 131106)
!238 = !DIEnumerator(name: "MON_10", value: 131107)
!239 = !DIEnumerator(name: "MON_11", value: 131108)
!240 = !DIEnumerator(name: "MON_12", value: 131109)
!241 = !DIEnumerator(name: "AM_STR", value: 131110)
!242 = !DIEnumerator(name: "PM_STR", value: 131111)
!243 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!244 = !DIEnumerator(name: "D_FMT", value: 131113)
!245 = !DIEnumerator(name: "T_FMT", value: 131114)
!246 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!247 = !DIEnumerator(name: "ERA", value: 131116)
!248 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!249 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!250 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!251 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!252 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!253 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!254 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!255 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!256 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!257 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!258 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!259 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!260 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!261 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!262 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!263 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!264 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!265 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!266 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!267 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!268 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!269 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!270 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!271 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!272 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!273 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!274 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!275 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!276 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!277 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!278 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!279 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!280 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!281 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!282 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!283 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!284 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!285 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!286 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!287 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!288 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!289 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!290 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!291 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!292 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!293 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!294 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!295 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!296 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!297 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!298 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!299 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!300 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!301 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!302 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!303 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!304 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!305 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!306 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!307 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!308 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!309 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!310 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!311 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!312 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!313 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!314 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!315 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!316 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!317 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!318 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!319 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!320 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!321 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!322 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!323 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!324 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!325 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!326 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!327 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!328 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!329 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!330 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!331 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!332 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!333 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!334 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!335 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!336 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!337 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!338 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!339 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!340 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!341 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!342 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!343 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!344 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!345 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!346 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!347 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!348 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!349 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!350 = !DIEnumerator(name: "CODESET", value: 14)
!351 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!352 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!353 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!354 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!355 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!356 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!357 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!358 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!359 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!360 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!361 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!362 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!363 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!364 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!365 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!366 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!377 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!378 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!379 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!380 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!381 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!382 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!383 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!384 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!385 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!386 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!387 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!388 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!397 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!398 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!399 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!400 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!401 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!402 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!403 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!404 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!405 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!406 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!407 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!408 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!409 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!410 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!411 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!412 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!413 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!414 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!415 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!416 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!417 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!418 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!419 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!422 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!423 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!424 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!425 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!426 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!427 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!428 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!429 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!430 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!431 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!432 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!433 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!434 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!435 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!436 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!437 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!438 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!439 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!440 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!441 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!442 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!443 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!444 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!445 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!446 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!447 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!448 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!449 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!450 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!451 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!452 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!453 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!454 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!455 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!456 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!461 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!462 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!465 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!466 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!467 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!468 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!469 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!470 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!471 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!472 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!473 = !DIEnumerator(name: "THOUSEP", value: 65537)
!474 = !DIEnumerator(name: "__GROUPING", value: 65538)
!475 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!476 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!477 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!478 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!479 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!480 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!481 = !DIEnumerator(name: "__YESSTR", value: 327682)
!482 = !DIEnumerator(name: "__NOSTR", value: 327683)
!483 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!484 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!485 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!486 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!487 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!488 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!489 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!490 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!491 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!492 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!493 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!494 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!495 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!496 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!497 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!498 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!499 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!500 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!501 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!502 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!503 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!504 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!505 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!506 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!507 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!508 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!509 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!510 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!511 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!512 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!513 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!514 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!515 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!516 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!517 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!518 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!519 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!520 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!521 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!522 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!523 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!524 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!525 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!526 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!527 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!528 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!529 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!530 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!531 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!536 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!537 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!538 = !{!8, !6, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!540 = !{!195}
!541 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!543 = !DIGlobalVariableExpression(var: !544)
!544 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !545, file: !546, line: 335, type: !50, isLocal: true, isDefinition: true)
!545 = distinct !DISubprogram(name: "rpl_fcntl", scope: !546, file: !546, line: 272, type: !547, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !549, variables: !552)
!546 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!547 = !DISubroutineType(types: !548)
!548 = !{!50, !50, !50, null}
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !551)
!550 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!551 = !{!543}
!552 = !{!553, !554, !555, !568, !569, !572, !575, !578}
!553 = !DILocalVariable(name: "fd", arg: 1, scope: !545, file: !546, line: 272, type: !50)
!554 = !DILocalVariable(name: "action", arg: 2, scope: !545, file: !546, line: 272, type: !50)
!555 = !DILocalVariable(name: "arg", scope: !545, file: !546, line: 274, type: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !557, line: 30, baseType: !558)
!557 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !550, line: 274, baseType: !559)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 192, elements: !566)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !550, line: 274, size: 192, elements: !561)
!561 = !{!562, !563, !564, !565}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !560, file: !550, line: 274, baseType: !152, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !560, file: !550, line: 274, baseType: !152, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !560, file: !550, line: 274, baseType: !8, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !560, file: !550, line: 274, baseType: !8, size: 64, offset: 128)
!566 = !{!567}
!567 = !DISubrange(count: 1)
!568 = !DILocalVariable(name: "result", scope: !545, file: !546, line: 275, type: !50)
!569 = !DILocalVariable(name: "target", scope: !570, file: !546, line: 322, type: !50)
!570 = distinct !DILexicalBlock(scope: !571, file: !546, line: 321, column: 7)
!571 = distinct !DILexicalBlock(scope: !545, file: !546, line: 278, column: 5)
!572 = !DILocalVariable(name: "flags", scope: !573, file: !546, line: 359, type: !50)
!573 = distinct !DILexicalBlock(scope: !574, file: !546, line: 358, column: 11)
!574 = distinct !DILexicalBlock(scope: !570, file: !546, line: 357, column: 13)
!575 = !DILocalVariable(name: "saved_errno", scope: !576, file: !546, line: 362, type: !50)
!576 = distinct !DILexicalBlock(scope: !577, file: !546, line: 361, column: 15)
!577 = distinct !DILexicalBlock(scope: !573, file: !546, line: 360, column: 17)
!578 = !DILocalVariable(name: "p", scope: !579, file: !546, line: 404, type: !8)
!579 = distinct !DILexicalBlock(scope: !571, file: !546, line: 402, column: 7)
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!581 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !584)
!583 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!6}
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !587)
!586 = !DIFile(filename: "./lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!8}
!588 = distinct !DICompileUnit(language: DW_LANG_C99, file: !589, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !587)
!589 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !592, retainedTypes: !587)
!591 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!592 = !{!593}
!593 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !594, line: 41, size: 32, elements: !595)
!594 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = !{!596}
!596 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !599, retainedTypes: !613)
!598 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = !{!600}
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !602, file: !601, line: 192, size: 32, elements: !611)
!601 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DISubprogram(name: "x2nrealloc", scope: !601, file: !601, line: 180, type: !603, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !606)
!603 = !DISubroutineType(types: !604)
!604 = !{!8, !8, !605, !9}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!606 = !{!607, !608, !609, !610}
!607 = !DILocalVariable(name: "p", arg: 1, scope: !602, file: !601, line: 180, type: !8)
!608 = !DILocalVariable(name: "pn", arg: 2, scope: !602, file: !601, line: 180, type: !605)
!609 = !DILocalVariable(name: "s", arg: 3, scope: !602, file: !601, line: 180, type: !9)
!610 = !DILocalVariable(name: "n", scope: !602, file: !601, line: 182, type: !9)
!611 = !{!612}
!612 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!613 = !{!9, !6, !8}
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!615 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = distinct !DICompileUnit(language: DW_LANG_C99, file: !617, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !587)
!617 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!618 = distinct !DICompileUnit(language: DW_LANG_C99, file: !619, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!619 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !587)
!621 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !587)
!623 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !626)
!625 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = !{!9}
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !629)
!628 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = !{!9, !12, !14, !17}
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!631 = !DIFile(filename: "./lib/randint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!633 = !DIFile(filename: "./lib/randread.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!634 = distinct !DICompileUnit(language: DW_LANG_C99, file: !635, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !636, retainedTypes: !690)
!635 = !DIFile(filename: "./lib/rand-isaac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!636 = !{!637}
!637 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !639, file: !638, line: 107, size: 32, elements: !688)
!638 = !DIFile(filename: "lib/rand-isaac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = distinct !DISubprogram(name: "isaac_refill", scope: !638, file: !638, line: 97, type: !640, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !655)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !642, !654}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !644, line: 56, size: 16576, elements: !645)
!644 = !DIFile(filename: "./lib/rand-isaac.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!645 = !{!646, !651, !652, !653}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !643, file: !644, line: 58, baseType: !647, size: 16384)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 16384, elements: !160)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "isaac_word", file: !644, line: 44, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !650, line: 82, baseType: !11)
!650 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!651 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !643, file: !644, line: 59, baseType: !648, size: 64, offset: 16384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !643, file: !644, line: 59, baseType: !648, size: 64, offset: 16448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !643, file: !644, line: 59, baseType: !648, size: 64, offset: 16512)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !665, !666, !668, !669, !671, !672, !674, !675, !678, !679, !681, !682, !684, !685, !687}
!656 = !DILocalVariable(name: "s", arg: 1, scope: !639, file: !638, line: 97, type: !642)
!657 = !DILocalVariable(name: "result", arg: 2, scope: !639, file: !638, line: 97, type: !654)
!658 = !DILocalVariable(name: "a", scope: !639, file: !638, line: 100, type: !648)
!659 = !DILocalVariable(name: "b", scope: !639, file: !638, line: 101, type: !648)
!660 = !DILocalVariable(name: "m", scope: !639, file: !638, line: 104, type: !654)
!661 = !DILocalVariable(name: "r", scope: !639, file: !638, line: 105, type: !654)
!662 = !DILocalVariable(name: "x", scope: !663, file: !638, line: 125, type: !648)
!663 = distinct !DILexicalBlock(scope: !664, file: !638, line: 125, column: 7)
!664 = distinct !DILexicalBlock(scope: !639, file: !638, line: 124, column: 5)
!665 = !DILocalVariable(name: "y", scope: !663, file: !638, line: 125, type: !648)
!666 = !DILocalVariable(name: "x", scope: !667, file: !638, line: 126, type: !648)
!667 = distinct !DILexicalBlock(scope: !664, file: !638, line: 126, column: 7)
!668 = !DILocalVariable(name: "y", scope: !667, file: !638, line: 126, type: !648)
!669 = !DILocalVariable(name: "x", scope: !670, file: !638, line: 127, type: !648)
!670 = distinct !DILexicalBlock(scope: !664, file: !638, line: 127, column: 7)
!671 = !DILocalVariable(name: "y", scope: !670, file: !638, line: 127, type: !648)
!672 = !DILocalVariable(name: "x", scope: !673, file: !638, line: 128, type: !648)
!673 = distinct !DILexicalBlock(scope: !664, file: !638, line: 128, column: 7)
!674 = !DILocalVariable(name: "y", scope: !673, file: !638, line: 128, type: !648)
!675 = !DILocalVariable(name: "x", scope: !676, file: !638, line: 135, type: !648)
!676 = distinct !DILexicalBlock(scope: !677, file: !638, line: 135, column: 7)
!677 = distinct !DILexicalBlock(scope: !639, file: !638, line: 134, column: 5)
!678 = !DILocalVariable(name: "y", scope: !676, file: !638, line: 135, type: !648)
!679 = !DILocalVariable(name: "x", scope: !680, file: !638, line: 136, type: !648)
!680 = distinct !DILexicalBlock(scope: !677, file: !638, line: 136, column: 7)
!681 = !DILocalVariable(name: "y", scope: !680, file: !638, line: 136, type: !648)
!682 = !DILocalVariable(name: "x", scope: !683, file: !638, line: 137, type: !648)
!683 = distinct !DILexicalBlock(scope: !677, file: !638, line: 137, column: 7)
!684 = !DILocalVariable(name: "y", scope: !683, file: !638, line: 137, type: !648)
!685 = !DILocalVariable(name: "x", scope: !686, file: !638, line: 138, type: !648)
!686 = distinct !DILexicalBlock(scope: !677, file: !638, line: 138, column: 7)
!687 = !DILocalVariable(name: "y", scope: !686, file: !638, line: 138, type: !648)
!688 = !{!689}
!689 = !DIEnumerator(name: "HALF", value: 128)
!690 = !{!648}
!691 = distinct !DICompileUnit(language: DW_LANG_C99, file: !692, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!692 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!693 = distinct !DICompileUnit(language: DW_LANG_C99, file: !694, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!694 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!696 = !{i32 2, !"Dwarf Version", i32 4}
!697 = !{i32 2, !"Debug Info Version", i32 3}
!698 = !{i32 1, !"PIC Level", i32 2}
!699 = !{i32 1, !"PIE Level", i32 2}
!700 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 61, type: !701, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !50}
!703 = !{!704}
!704 = !DILocalVariable(name: "status", arg: 1, scope: !700, file: !3, line: 61, type: !50)
!705 = !DIExpression()
!706 = !DILocation(line: 61, column: 12, scope: !700)
!707 = !DILocation(line: 63, column: 14, scope: !708)
!708 = distinct !DILexicalBlock(scope: !700, file: !3, line: 63, column: 7)
!709 = !DILocation(line: 63, column: 7, scope: !700)
!710 = !DILocation(line: 64, column: 5, scope: !711)
!711 = !DILexicalBlockFile(scope: !712, file: !3, discriminator: 1)
!712 = distinct !DILexicalBlock(scope: !708, file: !3, line: 64, column: 5)
!713 = !{!714, !714, i64 0}
!714 = !{!"any pointer", !715, i64 0}
!715 = !{!"omnipotent char", !716, i64 0}
!716 = !{!"Simple C/C++ TBAA"}
!717 = !DILocation(line: 64, column: 5, scope: !718)
!718 = !DILexicalBlockFile(scope: !712, file: !3, discriminator: 3)
!719 = !DILocation(line: 64, column: 5, scope: !720)
!720 = !DILexicalBlockFile(scope: !712, file: !3, discriminator: 2)
!721 = !DILocation(line: 67, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !708, file: !3, line: 66, column: 5)
!723 = !DILocation(line: 67, column: 7, scope: !724)
!724 = !DILexicalBlockFile(scope: !722, file: !3, discriminator: 1)
!725 = !DILocation(line: 68, column: 7, scope: !722)
!726 = !DILocation(line: 68, column: 7, scope: !724)
!727 = !DILocation(line: 73, column: 7, scope: !722)
!728 = !DILocation(line: 73, column: 7, scope: !724)
!729 = !DILocation(line: 76, column: 7, scope: !722)
!730 = !DILocation(line: 77, column: 7, scope: !722)
!731 = !DILocation(line: 77, column: 7, scope: !724)
!732 = !DILocation(line: 82, column: 7, scope: !722)
!733 = !DILocation(line: 82, column: 7, scope: !724)
!734 = !DILocation(line: 86, column: 7, scope: !722)
!735 = !DILocation(line: 86, column: 7, scope: !724)
!736 = !DILocation(line: 93, column: 7, scope: !722)
!737 = !DILocation(line: 93, column: 7, scope: !724)
!738 = !DILocation(line: 98, column: 7, scope: !722)
!739 = !DILocation(line: 98, column: 7, scope: !724)
!740 = !DILocation(line: 99, column: 7, scope: !722)
!741 = !DILocation(line: 99, column: 7, scope: !724)
!742 = !DILocation(line: 642, column: 15, scope: !25, inlinedAt: !743)
!743 = distinct !DILocation(line: 100, column: 7, scope: !722)
!744 = !DILocation(line: 651, column: 3, scope: !25, inlinedAt: !743)
!745 = !DILocation(line: 651, column: 3, scope: !746, inlinedAt: !743)
!746 = !DILexicalBlockFile(scope: !25, file: !26, discriminator: 1)
!747 = !DILocation(line: 655, column: 29, scope: !25, inlinedAt: !743)
!748 = !DILocation(line: 655, column: 15, scope: !25, inlinedAt: !743)
!749 = !DILocation(line: 656, column: 7, scope: !45, inlinedAt: !743)
!750 = !DILocation(line: 656, column: 19, scope: !45, inlinedAt: !743)
!751 = !DILocation(line: 656, column: 22, scope: !752, inlinedAt: !743)
!752 = !DILexicalBlockFile(scope: !45, file: !26, discriminator: 16)
!753 = !DILocation(line: 656, column: 7, scope: !754, inlinedAt: !743)
!754 = !DILexicalBlockFile(scope: !25, file: !26, discriminator: 16)
!755 = !DILocation(line: 662, column: 7, scope: !756, inlinedAt: !743)
!756 = distinct !DILexicalBlock(scope: !45, file: !26, line: 657, column: 5)
!757 = !DILocation(line: 662, column: 7, scope: !758, inlinedAt: !743)
!758 = !DILexicalBlockFile(scope: !756, file: !26, discriminator: 1)
!759 = !DILocation(line: 664, column: 5, scope: !756, inlinedAt: !743)
!760 = !DILocation(line: 665, column: 3, scope: !25, inlinedAt: !743)
!761 = !DILocation(line: 665, column: 3, scope: !746, inlinedAt: !743)
!762 = !DILocation(line: 667, column: 3, scope: !25, inlinedAt: !743)
!763 = !DILocation(line: 667, column: 3, scope: !746, inlinedAt: !743)
!764 = !DILocation(line: 103, column: 3, scope: !700)
!765 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 146, type: !766, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !769)
!766 = !DISubroutineType(types: !767)
!767 = !{!50, !50, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !790, !795, !799, !802, !804}
!770 = !DILocalVariable(name: "argc", arg: 1, scope: !765, file: !3, line: 146, type: !50)
!771 = !DILocalVariable(name: "argv", arg: 2, scope: !765, file: !3, line: 146, type: !768)
!772 = !DILocalVariable(name: "dest_dir", scope: !765, file: !3, line: 148, type: !17)
!773 = !DILocalVariable(name: "dest_dir_arg", scope: !765, file: !3, line: 149, type: !17)
!774 = !DILocalVariable(name: "suppress_file_err", scope: !765, file: !3, line: 150, type: !22)
!775 = !DILocalVariable(name: "c", scope: !765, file: !3, line: 151, type: !50)
!776 = !DILocalVariable(name: "n_args", scope: !765, file: !3, line: 152, type: !152)
!777 = !DILocalVariable(name: "template", scope: !765, file: !3, line: 153, type: !6)
!778 = !DILocalVariable(name: "suffix", scope: !765, file: !3, line: 154, type: !6)
!779 = !DILocalVariable(name: "use_dest_dir", scope: !765, file: !3, line: 155, type: !22)
!780 = !DILocalVariable(name: "deprecated_t_option", scope: !765, file: !3, line: 156, type: !22)
!781 = !DILocalVariable(name: "create_directory", scope: !765, file: !3, line: 157, type: !22)
!782 = !DILocalVariable(name: "dry_run", scope: !765, file: !3, line: 158, type: !22)
!783 = !DILocalVariable(name: "status", scope: !765, file: !3, line: 159, type: !50)
!784 = !DILocalVariable(name: "x_count", scope: !765, file: !3, line: 160, type: !9)
!785 = !DILocalVariable(name: "suffix_len", scope: !765, file: !3, line: 161, type: !9)
!786 = !DILocalVariable(name: "dest_name", scope: !765, file: !3, line: 162, type: !6)
!787 = !DILocalVariable(name: "len", scope: !788, file: !3, line: 227, type: !9)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 226, column: 5)
!789 = distinct !DILexicalBlock(scope: !765, file: !3, line: 225, column: 7)
!790 = !DILocalVariable(name: "env", scope: !791, file: !3, line: 267, type: !6)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 266, column: 9)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 265, column: 11)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 264, column: 5)
!794 = distinct !DILexicalBlock(scope: !765, file: !3, line: 263, column: 7)
!795 = !DILocalVariable(name: "env", scope: !796, file: !3, line: 286, type: !6)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 285, column: 13)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 282, column: 15)
!798 = distinct !DILexicalBlock(scope: !792, file: !3, line: 281, column: 9)
!799 = !DILocalVariable(name: "err", scope: !800, file: !3, line: 308, type: !50)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 307, column: 5)
!801 = distinct !DILexicalBlock(scope: !765, file: !3, line: 306, column: 7)
!802 = !DILocalVariable(name: "fd", scope: !803, file: !3, line: 319, type: !50)
!803 = distinct !DILexicalBlock(scope: !801, file: !3, line: 318, column: 5)
!804 = !DILocalVariable(name: "saved_errno", scope: !805, file: !3, line: 336, type: !50)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 335, column: 9)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 334, column: 11)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 330, column: 5)
!808 = distinct !DILexicalBlock(scope: !765, file: !3, line: 329, column: 7)
!809 = !DILocation(line: 146, column: 11, scope: !765)
!810 = !DILocation(line: 146, column: 24, scope: !765)
!811 = !DILocation(line: 149, column: 15, scope: !765)
!812 = !DILocation(line: 150, column: 8, scope: !765)
!813 = !DILocation(line: 154, column: 9, scope: !765)
!814 = !DILocation(line: 155, column: 8, scope: !765)
!815 = !DILocation(line: 156, column: 8, scope: !765)
!816 = !DILocation(line: 157, column: 8, scope: !765)
!817 = !DILocation(line: 158, column: 8, scope: !765)
!818 = !DILocation(line: 159, column: 7, scope: !765)
!819 = !DILocation(line: 165, column: 21, scope: !765)
!820 = !DILocation(line: 165, column: 3, scope: !765)
!821 = !DILocation(line: 166, column: 3, scope: !765)
!822 = !DILocation(line: 167, column: 3, scope: !765)
!823 = !DILocation(line: 168, column: 3, scope: !765)
!824 = !DILocation(line: 170, column: 3, scope: !765)
!825 = !DILocation(line: 172, column: 3, scope: !765)
!826 = !DILocation(line: 172, column: 15, scope: !827)
!827 = !DILexicalBlockFile(scope: !765, file: !3, discriminator: 1)
!828 = !DILocation(line: 151, column: 7, scope: !765)
!829 = !DILocation(line: 172, column: 3, scope: !827)
!830 = distinct !{!830, !825, !831}
!831 = !DILocation(line: 206, column: 5, scope: !765)
!832 = !DILocation(line: 180, column: 26, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 175, column: 9)
!834 = distinct !DILexicalBlock(scope: !765, file: !3, line: 173, column: 5)
!835 = !DILocation(line: 182, column: 11, scope: !833)
!836 = !DILocation(line: 195, column: 20, scope: !833)
!837 = !DILocation(line: 196, column: 11, scope: !833)
!838 = !DILocation(line: 198, column: 9, scope: !833)
!839 = !DILocation(line: 202, column: 9, scope: !833)
!840 = !DILocation(line: 202, column: 9, scope: !841)
!841 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 1)
!842 = !DILocation(line: 204, column: 11, scope: !833)
!843 = !DILocation(line: 208, column: 19, scope: !765)
!844 = !{!845, !845, i64 0}
!845 = !{!"int", !715, i64 0}
!846 = !DILocation(line: 208, column: 17, scope: !765)
!847 = !DILocation(line: 152, column: 16, scope: !765)
!848 = !DILocation(line: 209, column: 9, scope: !849)
!849 = distinct !DILexicalBlock(scope: !765, file: !3, line: 209, column: 7)
!850 = !DILocation(line: 209, column: 7, scope: !765)
!851 = !DILocation(line: 211, column: 20, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !3, line: 210, column: 5)
!853 = !DILocation(line: 211, column: 7, scope: !854)
!854 = !DILexicalBlockFile(scope: !852, file: !3, discriminator: 1)
!855 = !DILocation(line: 212, column: 7, scope: !852)
!856 = !DILocation(line: 215, column: 14, scope: !857)
!857 = distinct !DILexicalBlock(scope: !765, file: !3, line: 215, column: 7)
!858 = !DILocation(line: 215, column: 7, scope: !765)
!859 = !DILocation(line: 222, column: 18, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 221, column: 5)
!861 = !DILocation(line: 153, column: 9, scope: !765)
!862 = !DILocation(line: 225, column: 7, scope: !789)
!863 = !DILocation(line: 225, column: 7, scope: !765)
!864 = !DILocation(line: 227, column: 20, scope: !788)
!865 = !DILocation(line: 227, column: 14, scope: !788)
!866 = !DILocation(line: 228, column: 12, scope: !867)
!867 = distinct !DILexicalBlock(scope: !788, file: !3, line: 228, column: 11)
!868 = !DILocation(line: 228, column: 16, scope: !867)
!869 = !DILocation(line: 228, column: 32, scope: !870)
!870 = !DILexicalBlockFile(scope: !867, file: !3, discriminator: 1)
!871 = !DILocation(line: 228, column: 19, scope: !870)
!872 = !{!715, !715, i64 0}
!873 = !DILocation(line: 228, column: 37, scope: !870)
!874 = !DILocation(line: 228, column: 11, scope: !875)
!875 = !DILexicalBlockFile(scope: !788, file: !3, discriminator: 1)
!876 = !DILocation(line: 230, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !867, file: !3, line: 229, column: 9)
!878 = !DILocation(line: 230, column: 11, scope: !879)
!879 = !DILexicalBlockFile(scope: !877, file: !3, discriminator: 1)
!880 = !DILocation(line: 230, column: 11, scope: !881)
!881 = !DILexicalBlockFile(scope: !877, file: !3, discriminator: 2)
!882 = !DILocation(line: 234, column: 20, scope: !788)
!883 = !DILocation(line: 161, column: 10, scope: !765)
!884 = !DILocation(line: 235, column: 35, scope: !788)
!885 = !DILocation(line: 235, column: 48, scope: !788)
!886 = !DILocalVariable(name: "n", arg: 1, scope: !887, file: !601, line: 220, type: !9)
!887 = distinct !DISubprogram(name: "xcharalloc", scope: !601, file: !601, line: 220, type: !888, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{!6, !9}
!890 = !{!886}
!891 = !DILocation(line: 220, column: 20, scope: !887, inlinedAt: !892)
!892 = distinct !DILocation(line: 235, column: 19, scope: !788)
!893 = !DILocation(line: 222, column: 10, scope: !887, inlinedAt: !892)
!894 = !DILocation(line: 162, column: 9, scope: !765)
!895 = !DILocation(line: 236, column: 7, scope: !788)
!896 = !DILocation(line: 237, column: 25, scope: !788)
!897 = !DILocation(line: 237, column: 51, scope: !788)
!898 = !DILocation(line: 237, column: 7, scope: !788)
!899 = !DILocation(line: 240, column: 5, scope: !788)
!900 = !DILocation(line: 243, column: 18, scope: !901)
!901 = distinct !DILexicalBlock(scope: !789, file: !3, line: 242, column: 5)
!902 = !DILocation(line: 244, column: 16, scope: !901)
!903 = !DILocation(line: 245, column: 12, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 245, column: 11)
!905 = !DILocation(line: 245, column: 11, scope: !901)
!906 = !DILocation(line: 246, column: 18, scope: !904)
!907 = !DILocation(line: 246, column: 9, scope: !904)
!908 = !DILocation(line: 248, column: 15, scope: !904)
!909 = !DILocation(line: 249, column: 20, scope: !901)
!910 = !DILocation(line: 253, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !765, file: !3, line: 253, column: 7)
!912 = !DILocation(line: 253, column: 18, scope: !911)
!913 = !DILocation(line: 253, column: 21, scope: !914)
!914 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 1)
!915 = !DILocation(line: 253, column: 45, scope: !914)
!916 = !DILocation(line: 253, column: 7, scope: !827)
!917 = !DILocation(line: 255, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !911, file: !3, line: 254, column: 5)
!919 = !DILocation(line: 255, column: 7, scope: !920)
!920 = !DILexicalBlockFile(scope: !918, file: !3, discriminator: 1)
!921 = !DILocation(line: 255, column: 7, scope: !922)
!922 = !DILexicalBlockFile(scope: !918, file: !3, discriminator: 2)
!923 = !DILocation(line: 259, column: 53, scope: !765)
!924 = !DILocalVariable(name: "s", arg: 1, scope: !925, file: !3, line: 107, type: !17)
!925 = distinct !DISubprogram(name: "count_consecutive_X_s", scope: !3, file: !3, line: 107, type: !926, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!9, !17, !9}
!928 = !{!924, !929, !930}
!929 = !DILocalVariable(name: "len", arg: 2, scope: !925, file: !3, line: 107, type: !9)
!930 = !DILocalVariable(name: "n", scope: !925, file: !3, line: 109, type: !9)
!931 = !DILocation(line: 107, column: 36, scope: !925, inlinedAt: !932)
!932 = distinct !DILocation(line: 259, column: 13, scope: !765)
!933 = !DILocation(line: 107, column: 46, scope: !925, inlinedAt: !932)
!934 = !DILocation(line: 109, column: 10, scope: !925, inlinedAt: !932)
!935 = !DILocation(line: 110, column: 11, scope: !936, inlinedAt: !932)
!936 = !DILexicalBlockFile(scope: !937, file: !3, discriminator: 1)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 110, column: 3)
!938 = distinct !DILexicalBlock(scope: !925, file: !3, line: 110, column: 3)
!939 = !DILocation(line: 110, column: 15, scope: !936, inlinedAt: !932)
!940 = !DILocation(line: 110, column: 23, scope: !941, inlinedAt: !932)
!941 = !DILexicalBlockFile(scope: !937, file: !3, discriminator: 2)
!942 = !DILocation(line: 110, column: 18, scope: !941, inlinedAt: !932)
!943 = !DILocation(line: 110, column: 27, scope: !941, inlinedAt: !932)
!944 = !DILocation(line: 110, column: 3, scope: !945, inlinedAt: !932)
!945 = !DILexicalBlockFile(scope: !938, file: !3, discriminator: 3)
!946 = !DILocation(line: 111, column: 5, scope: !937, inlinedAt: !932)
!947 = distinct !{!947, !948, !949}
!948 = !DILocation(line: 110, column: 3, scope: !938)
!949 = !DILocation(line: 111, column: 7, scope: !938)
!950 = !DILocation(line: 160, column: 10, scope: !765)
!951 = !DILocation(line: 260, column: 15, scope: !952)
!952 = distinct !DILexicalBlock(scope: !765, file: !3, line: 260, column: 7)
!953 = !DILocation(line: 260, column: 7, scope: !765)
!954 = !DILocation(line: 261, column: 5, scope: !952)
!955 = !DILocation(line: 261, column: 5, scope: !956)
!956 = !DILexicalBlockFile(scope: !952, file: !3, discriminator: 1)
!957 = !DILocation(line: 261, column: 5, scope: !958)
!958 = !DILexicalBlockFile(scope: !952, file: !3, discriminator: 2)
!959 = !DILocation(line: 263, column: 7, scope: !794)
!960 = !DILocation(line: 263, column: 7, scope: !765)
!961 = !DILocation(line: 265, column: 11, scope: !792)
!962 = !DILocation(line: 265, column: 11, scope: !793)
!963 = !DILocation(line: 267, column: 23, scope: !791)
!964 = !DILocation(line: 267, column: 17, scope: !791)
!965 = !DILocation(line: 268, column: 15, scope: !966)
!966 = distinct !DILexicalBlock(scope: !791, file: !3, line: 268, column: 15)
!967 = !DILocation(line: 268, column: 19, scope: !966)
!968 = !DILocation(line: 268, column: 22, scope: !969)
!969 = !DILexicalBlockFile(scope: !966, file: !3, discriminator: 1)
!970 = !DILocation(line: 268, column: 15, scope: !971)
!971 = !DILexicalBlockFile(scope: !791, file: !3, discriminator: 1)
!972 = !DILocation(line: 270, column: 20, scope: !973)
!973 = distinct !DILexicalBlock(scope: !966, file: !3, line: 270, column: 20)
!974 = !DILocation(line: 270, column: 33, scope: !973)
!975 = !DILocation(line: 270, column: 36, scope: !976)
!976 = !DILexicalBlockFile(scope: !973, file: !3, discriminator: 1)
!977 = !DILocation(line: 270, column: 20, scope: !969)
!978 = !DILocation(line: 148, column: 15, scope: !765)
!979 = !DILocation(line: 275, column: 15, scope: !980)
!980 = distinct !DILexicalBlock(scope: !791, file: !3, line: 275, column: 15)
!981 = !DILocation(line: 275, column: 41, scope: !980)
!982 = !DILocation(line: 275, column: 15, scope: !791)
!983 = !DILocation(line: 276, column: 13, scope: !980)
!984 = !DILocation(line: 276, column: 13, scope: !985)
!985 = !DILexicalBlockFile(scope: !980, file: !3, discriminator: 1)
!986 = !DILocation(line: 276, column: 13, scope: !987)
!987 = !DILexicalBlockFile(scope: !980, file: !3, discriminator: 2)
!988 = !DILocation(line: 282, column: 15, scope: !797)
!989 = !DILocation(line: 282, column: 28, scope: !797)
!990 = !DILocation(line: 282, column: 31, scope: !991)
!991 = !DILexicalBlockFile(scope: !797, file: !3, discriminator: 1)
!992 = !DILocation(line: 282, column: 15, scope: !993)
!993 = !DILexicalBlockFile(scope: !798, file: !3, discriminator: 1)
!994 = !DILocation(line: 286, column: 27, scope: !796)
!995 = !DILocation(line: 286, column: 21, scope: !796)
!996 = !DILocation(line: 287, column: 27, scope: !796)
!997 = !DILocation(line: 287, column: 31, scope: !796)
!998 = !DILocation(line: 287, column: 34, scope: !999)
!999 = !DILexicalBlockFile(scope: !796, file: !3, discriminator: 1)
!1000 = !DILocation(line: 287, column: 27, scope: !999)
!1001 = !DILocation(line: 289, column: 15, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !798, file: !3, line: 289, column: 15)
!1003 = !DILocation(line: 289, column: 15, scope: !798)
!1004 = !DILocation(line: 290, column: 13, scope: !1002)
!1005 = !DILocation(line: 290, column: 13, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1002, file: !3, discriminator: 1)
!1007 = !DILocation(line: 290, column: 13, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1002, file: !3, discriminator: 2)
!1009 = !DILocation(line: 296, column: 19, scope: !793)
!1010 = !DILocation(line: 297, column: 7, scope: !793)
!1011 = !DILocation(line: 300, column: 5, scope: !793)
!1012 = !DILocation(line: 304, column: 15, scope: !765)
!1013 = !DILocation(line: 306, column: 7, scope: !801)
!1014 = !DILocation(line: 306, column: 7, scope: !765)
!1015 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1016, file: !3, line: 123, type: !6)
!1016 = distinct !DISubprogram(name: "mkdtemp_len", scope: !3, file: !3, line: 123, type: !1017, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1019)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!50, !6, !9, !9, !22}
!1019 = !{!1015, !1020, !1021, !1022}
!1020 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1016, file: !3, line: 123, type: !9)
!1021 = !DILocalVariable(name: "x_len", arg: 3, scope: !1016, file: !3, line: 123, type: !9)
!1022 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1016, file: !3, line: 123, type: !22)
!1023 = !DILocation(line: 123, column: 20, scope: !1016, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 308, column: 17, scope: !800)
!1025 = !DILocation(line: 123, column: 33, scope: !1016, inlinedAt: !1024)
!1026 = !DILocation(line: 123, column: 50, scope: !1016, inlinedAt: !1024)
!1027 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1028 = !DILocation(line: 123, column: 62, scope: !1016, inlinedAt: !1024)
!1029 = !DILocation(line: 125, column: 47, scope: !1016, inlinedAt: !1024)
!1030 = !DILocation(line: 125, column: 10, scope: !1016, inlinedAt: !1024)
!1031 = !DILocation(line: 308, column: 11, scope: !800)
!1032 = !DILocation(line: 309, column: 15, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !800, file: !3, line: 309, column: 11)
!1034 = !DILocation(line: 309, column: 11, scope: !800)
!1035 = !DILocation(line: 311, column: 16, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 311, column: 15)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 310, column: 9)
!1038 = !DILocation(line: 311, column: 15, scope: !1037)
!1039 = !DILocation(line: 312, column: 23, scope: !1036)
!1040 = !DILocation(line: 312, column: 30, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1036, file: !3, discriminator: 1)
!1042 = !DILocation(line: 313, column: 20, scope: !1036)
!1043 = !DILocation(line: 312, column: 13, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1036, file: !3, discriminator: 2)
!1045 = !DILocation(line: 312, column: 13, scope: !1036)
!1046 = !DILocalVariable(name: "tmpl", arg: 1, scope: !1047, file: !3, line: 116, type: !6)
!1047 = distinct !DISubprogram(name: "mkstemp_len", scope: !3, file: !3, line: 116, type: !1017, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1048)
!1048 = !{!1046, !1049, !1050, !1051}
!1049 = !DILocalVariable(name: "suff_len", arg: 2, scope: !1047, file: !3, line: 116, type: !9)
!1050 = !DILocalVariable(name: "x_len", arg: 3, scope: !1047, file: !3, line: 116, type: !9)
!1051 = !DILocalVariable(name: "dry_run", arg: 4, scope: !1047, file: !3, line: 116, type: !22)
!1052 = !DILocation(line: 116, column: 20, scope: !1047, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 319, column: 16, scope: !803)
!1054 = !DILocation(line: 116, column: 33, scope: !1047, inlinedAt: !1053)
!1055 = !DILocation(line: 116, column: 50, scope: !1047, inlinedAt: !1053)
!1056 = !DILocation(line: 116, column: 62, scope: !1047, inlinedAt: !1053)
!1057 = !DILocation(line: 118, column: 47, scope: !1047, inlinedAt: !1053)
!1058 = !DILocation(line: 118, column: 10, scope: !1047, inlinedAt: !1053)
!1059 = !DILocation(line: 319, column: 11, scope: !803)
!1060 = !DILocation(line: 320, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !803, file: !3, line: 320, column: 11)
!1062 = !DILocation(line: 320, column: 18, scope: !1061)
!1063 = !DILocation(line: 320, column: 31, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1061, file: !3, discriminator: 1)
!1065 = !DILocation(line: 331, column: 7, scope: !807)
!1066 = !DILocation(line: 334, column: 20, scope: !806)
!1067 = !DILocation(line: 320, column: 34, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1061, file: !3, discriminator: 2)
!1069 = !DILocation(line: 320, column: 45, scope: !1068)
!1070 = !DILocation(line: 320, column: 11, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !803, file: !3, discriminator: 2)
!1072 = !DILocation(line: 322, column: 16, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 322, column: 15)
!1074 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 321, column: 9)
!1075 = !DILocation(line: 322, column: 15, scope: !1074)
!1076 = !DILocation(line: 323, column: 23, scope: !1073)
!1077 = !DILocation(line: 323, column: 30, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1073, file: !3, discriminator: 1)
!1079 = !DILocation(line: 324, column: 20, scope: !1073)
!1080 = !DILocation(line: 323, column: 13, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1073, file: !3, discriminator: 2)
!1082 = !DILocation(line: 323, column: 13, scope: !1073)
!1083 = !DILocation(line: 334, column: 12, scope: !806)
!1084 = !DILocation(line: 334, column: 62, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !806, file: !3, discriminator: 1)
!1086 = !DILocation(line: 334, column: 48, scope: !1085)
!1087 = !DILocation(line: 334, column: 70, scope: !1085)
!1088 = !DILocation(line: 334, column: 11, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !807, file: !3, discriminator: 1)
!1090 = !DILocation(line: 336, column: 29, scope: !805)
!1091 = !DILocation(line: 336, column: 15, scope: !805)
!1092 = !DILocation(line: 337, column: 11, scope: !805)
!1093 = !DILocation(line: 338, column: 16, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !805, file: !3, line: 338, column: 15)
!1095 = !DILocation(line: 338, column: 15, scope: !805)
!1096 = !DILocation(line: 339, column: 36, scope: !1094)
!1097 = !DILocation(line: 339, column: 13, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1094, file: !3, discriminator: 1)
!1099 = !DILocation(line: 339, column: 13, scope: !1094)
!1100 = !DILocation(line: 350, column: 1, scope: !765)
!1101 = distinct !DISubprogram(name: "maybe_close_stdout", scope: !3, file: !3, line: 137, type: !1102, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null}
!1104 = !DILocation(line: 139, column: 7, scope: !1101)
!1105 = !DILocation(line: 140, column: 5, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 139, column: 7)
!1107 = !DILocation(line: 141, column: 26, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 141, column: 12)
!1109 = !DILocation(line: 141, column: 12, scope: !1108)
!1110 = !DILocation(line: 141, column: 34, scope: !1108)
!1111 = !DILocation(line: 141, column: 12, scope: !1106)
!1112 = !DILocation(line: 142, column: 5, scope: !1108)
!1113 = !DILocation(line: 143, column: 1, scope: !1101)
!1114 = distinct !DISubprogram(name: "close_stream", scope: !1115, file: !1115, line: 56, type: !1116, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !1171)
!1115 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!50, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1120, line: 49, baseType: !1121)
!1120 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1122, line: 241, size: 1728, elements: !1123)
!1122 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1144, !1145, !1146, !1147, !1151, !1152, !1154, !1156, !1159, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1121, file: !1122, line: 242, baseType: !50, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1121, file: !1122, line: 247, baseType: !6, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1121, file: !1122, line: 248, baseType: !6, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1121, file: !1122, line: 249, baseType: !6, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1121, file: !1122, line: 250, baseType: !6, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1121, file: !1122, line: 251, baseType: !6, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1121, file: !1122, line: 252, baseType: !6, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1121, file: !1122, line: 253, baseType: !6, size: 64, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1121, file: !1122, line: 254, baseType: !6, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1121, file: !1122, line: 256, baseType: !6, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1121, file: !1122, line: 257, baseType: !6, size: 64, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1121, file: !1122, line: 258, baseType: !6, size: 64, offset: 704)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1121, file: !1122, line: 260, baseType: !1137, size: 64, offset: 768)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1122, line: 156, size: 192, elements: !1139)
!1139 = !{!1140, !1141, !1143}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1138, file: !1122, line: 157, baseType: !1137, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1138, file: !1122, line: 158, baseType: !1142, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1138, file: !1122, line: 162, baseType: !50, size: 32, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1121, file: !1122, line: 262, baseType: !1142, size: 64, offset: 832)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1121, file: !1122, line: 264, baseType: !50, size: 32, offset: 896)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1121, file: !1122, line: 268, baseType: !50, size: 32, offset: 928)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1121, file: !1122, line: 270, baseType: !1148, size: 64, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1149, line: 140, baseType: !1150)
!1149 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1150 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1121, file: !1122, line: 274, baseType: !135, size: 16, offset: 1024)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1121, file: !1122, line: 275, baseType: !1153, size: 8, offset: 1040)
!1153 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1121, file: !1122, line: 276, baseType: !1155, size: 8, offset: 1048)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !566)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1121, file: !1122, line: 280, baseType: !1157, size: 64, offset: 1088)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1122, line: 150, baseType: null)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1121, file: !1122, line: 289, baseType: !1160, size: 64, offset: 1152)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1149, line: 141, baseType: !1150)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1121, file: !1122, line: 297, baseType: !8, size: 64, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1121, file: !1122, line: 298, baseType: !8, size: 64, offset: 1280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1121, file: !1122, line: 299, baseType: !8, size: 64, offset: 1344)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1121, file: !1122, line: 300, baseType: !8, size: 64, offset: 1408)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1121, file: !1122, line: 302, baseType: !9, size: 64, offset: 1472)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1121, file: !1122, line: 303, baseType: !50, size: 32, offset: 1536)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1121, file: !1122, line: 305, baseType: !1168, size: 160, offset: 1568)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 20)
!1171 = !{!1172, !1173, !1175, !1176}
!1172 = !DILocalVariable(name: "stream", arg: 1, scope: !1114, file: !1115, line: 56, type: !1118)
!1173 = !DILocalVariable(name: "some_pending", scope: !1114, file: !1115, line: 58, type: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1175 = !DILocalVariable(name: "prev_fail", scope: !1114, file: !1115, line: 59, type: !1174)
!1176 = !DILocalVariable(name: "fclose_fail", scope: !1114, file: !1115, line: 60, type: !1174)
!1177 = !DILocation(line: 56, column: 21, scope: !1114)
!1178 = !DILocation(line: 58, column: 30, scope: !1114)
!1179 = !DILocalVariable(name: "__stream", arg: 1, scope: !1180, file: !1181, line: 132, type: !1118)
!1180 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1181, file: !1181, line: 132, type: !1116, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !580, variables: !1182)
!1181 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1182 = !{!1179}
!1183 = !DILocation(line: 132, column: 1, scope: !1180, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 59, column: 27, scope: !1114)
!1185 = !DILocation(line: 134, column: 10, scope: !1180, inlinedAt: !1184)
!1186 = !{!1187, !845, i64 0}
!1187 = !{!"_IO_FILE", !845, i64 0, !714, i64 8, !714, i64 16, !714, i64 24, !714, i64 32, !714, i64 40, !714, i64 48, !714, i64 56, !714, i64 64, !714, i64 72, !714, i64 80, !714, i64 88, !714, i64 96, !714, i64 104, !845, i64 112, !845, i64 116, !1188, i64 120, !1189, i64 128, !715, i64 130, !715, i64 131, !714, i64 136, !1188, i64 144, !714, i64 152, !714, i64 160, !714, i64 168, !714, i64 176, !1188, i64 184, !845, i64 192, !715, i64 196}
!1188 = !{!"long", !715, i64 0}
!1189 = !{!"short", !715, i64 0}
!1190 = !DILocation(line: 59, column: 43, scope: !1114)
!1191 = !DILocation(line: 60, column: 29, scope: !1114)
!1192 = !DILocation(line: 60, column: 45, scope: !1114)
!1193 = !DILocation(line: 70, column: 17, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1114, file: !1115, line: 70, column: 7)
!1195 = !DILocation(line: 70, column: 33, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1194, file: !1115, discriminator: 1)
!1197 = !DILocation(line: 70, column: 53, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1194, file: !1115, discriminator: 3)
!1199 = !DILocation(line: 70, column: 7, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1114, file: !1115, discriminator: 3)
!1201 = !DILocation(line: 72, column: 11, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1194, file: !1115, line: 71, column: 5)
!1203 = !DILocation(line: 73, column: 9, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !1115, line: 72, column: 11)
!1205 = !DILocation(line: 73, column: 15, scope: !1204)
!1206 = !DILocation(line: 78, column: 1, scope: !1114)
!1207 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !80, file: !80, line: 41, type: !27, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !75, variables: !1208)
!1208 = !{!1209}
!1209 = !DILocalVariable(name: "file", arg: 1, scope: !1207, file: !80, line: 41, type: !17)
!1210 = !DILocation(line: 41, column: 41, scope: !1207)
!1211 = !DILocation(line: 43, column: 13, scope: !1207)
!1212 = !DILocation(line: 44, column: 1, scope: !1207)
!1213 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !80, file: !80, line: 78, type: !1214, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !75, variables: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !22}
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "ignore", arg: 1, scope: !1213, file: !80, line: 78, type: !22)
!1218 = !DILocation(line: 78, column: 37, scope: !1213)
!1219 = !DILocation(line: 80, column: 16, scope: !1213)
!1220 = !{!1221, !1221, i64 0}
!1221 = !{!"_Bool", !715, i64 0}
!1222 = !DILocation(line: 81, column: 1, scope: !1213)
!1223 = distinct !DISubprogram(name: "close_stdout", scope: !80, file: !80, line: 107, type: !1102, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !75, variables: !1224)
!1224 = !{!1225}
!1225 = !DILocalVariable(name: "write_error", scope: !1226, file: !80, line: 112, type: !17)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !80, line: 111, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !80, line: 109, column: 7)
!1228 = !DILocation(line: 109, column: 21, scope: !1227)
!1229 = !DILocation(line: 109, column: 7, scope: !1227)
!1230 = !DILocation(line: 109, column: 29, scope: !1227)
!1231 = !DILocation(line: 110, column: 7, scope: !1227)
!1232 = !DILocation(line: 110, column: 12, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1227, file: !80, discriminator: 1)
!1234 = !{i8 0, i8 2}
!1235 = !DILocation(line: 114, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1226, file: !80, line: 113, column: 11)
!1237 = !DILocation(line: 110, column: 25, scope: !1233)
!1238 = !DILocation(line: 110, column: 28, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1227, file: !80, discriminator: 2)
!1240 = !DILocation(line: 110, column: 34, scope: !1239)
!1241 = !DILocation(line: 109, column: 7, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1223, file: !80, discriminator: 1)
!1243 = !DILocation(line: 112, column: 33, scope: !1226)
!1244 = !DILocation(line: 112, column: 19, scope: !1226)
!1245 = !DILocation(line: 113, column: 11, scope: !1236)
!1246 = !DILocation(line: 113, column: 11, scope: !1226)
!1247 = !DILocation(line: 114, column: 36, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1236, file: !80, discriminator: 1)
!1249 = !DILocation(line: 114, column: 9, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1236, file: !80, discriminator: 2)
!1251 = !DILocation(line: 114, column: 9, scope: !1236)
!1252 = !DILocation(line: 117, column: 9, scope: !1248)
!1253 = !DILocation(line: 119, column: 14, scope: !1226)
!1254 = !DILocation(line: 119, column: 7, scope: !1226)
!1255 = !DILocation(line: 122, column: 22, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1223, file: !80, line: 122, column: 8)
!1257 = !DILocation(line: 122, column: 8, scope: !1256)
!1258 = !DILocation(line: 122, column: 30, scope: !1256)
!1259 = !DILocation(line: 122, column: 8, scope: !1223)
!1260 = !DILocation(line: 123, column: 13, scope: !1256)
!1261 = !DILocation(line: 123, column: 6, scope: !1256)
!1262 = !DILocation(line: 124, column: 1, scope: !1223)
!1263 = distinct !DISubprogram(name: "last_component", scope: !1264, file: !1264, line: 30, type: !1265, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !1267)
!1264 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!6, !17}
!1267 = !{!1268, !1269, !1270, !1271}
!1268 = !DILocalVariable(name: "name", arg: 1, scope: !1263, file: !1264, line: 30, type: !17)
!1269 = !DILocalVariable(name: "base", scope: !1263, file: !1264, line: 32, type: !17)
!1270 = !DILocalVariable(name: "p", scope: !1263, file: !1264, line: 33, type: !17)
!1271 = !DILocalVariable(name: "saw_slash", scope: !1263, file: !1264, line: 34, type: !22)
!1272 = !DILocation(line: 30, column: 29, scope: !1263)
!1273 = !DILocation(line: 32, column: 15, scope: !1263)
!1274 = !DILocation(line: 34, column: 8, scope: !1263)
!1275 = !DILocation(line: 36, column: 3, scope: !1263)
!1276 = !DILocation(line: 36, column: 10, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1263, file: !1264, discriminator: 1)
!1278 = !DILocation(line: 37, column: 9, scope: !1263)
!1279 = !DILocation(line: 36, column: 3, scope: !1277)
!1280 = distinct !{!1280, !1275, !1278}
!1281 = !DILocation(line: 39, column: 18, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1283, file: !1264, discriminator: 1)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !1264, line: 39, column: 3)
!1284 = distinct !DILexicalBlock(scope: !1263, file: !1264, line: 39, column: 3)
!1285 = !DILocation(line: 33, column: 15, scope: !1263)
!1286 = !DILocation(line: 39, column: 3, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1284, file: !1264, discriminator: 1)
!1288 = !DILocation(line: 43, column: 16, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !1264, line: 43, column: 16)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !1264, line: 41, column: 11)
!1291 = distinct !DILexicalBlock(scope: !1283, file: !1264, line: 40, column: 5)
!1292 = !DILocation(line: 43, column: 16, scope: !1290)
!1293 = !DILocation(line: 39, column: 23, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1283, file: !1264, discriminator: 2)
!1295 = !DILocation(line: 39, column: 3, scope: !1294)
!1296 = distinct !{!1296, !1297, !1298}
!1297 = !DILocation(line: 39, column: 3, scope: !1284)
!1298 = !DILocation(line: 48, column: 5, scope: !1284)
!1299 = !DILocation(line: 50, column: 3, scope: !1263)
!1300 = distinct !DISubprogram(name: "base_len", scope: !1264, file: !1264, line: 58, type: !1301, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!9, !17}
!1303 = !{!1304, !1305, !1306}
!1304 = !DILocalVariable(name: "name", arg: 1, scope: !1300, file: !1264, line: 58, type: !17)
!1305 = !DILocalVariable(name: "len", scope: !1300, file: !1264, line: 60, type: !9)
!1306 = !DILocalVariable(name: "prefix_len", scope: !1300, file: !1264, line: 61, type: !9)
!1307 = !DILocation(line: 58, column: 23, scope: !1300)
!1308 = !DILocation(line: 61, column: 10, scope: !1300)
!1309 = !DILocation(line: 63, column: 14, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1300, file: !1264, line: 63, column: 3)
!1311 = !DILocation(line: 60, column: 10, scope: !1300)
!1312 = !DILocation(line: 63, column: 8, scope: !1310)
!1313 = !DILocation(line: 63, column: 32, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1315, file: !1264, discriminator: 1)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !1264, line: 63, column: 3)
!1316 = !DILocation(line: 63, column: 38, scope: !1314)
!1317 = !DILocation(line: 63, column: 41, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1315, file: !1264, discriminator: 2)
!1319 = !DILocation(line: 63, column: 3, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1310, file: !1264, discriminator: 3)
!1321 = distinct !{!1321, !1322, !1323}
!1322 = !DILocation(line: 63, column: 3, scope: !1310)
!1323 = !DILocation(line: 64, column: 5, scope: !1310)
!1324 = !DILocation(line: 74, column: 3, scope: !1300)
!1325 = distinct !DISubprogram(name: "file_name_concat", scope: !1326, file: !1326, line: 35, type: !1327, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !585, variables: !1329)
!1326 = !DIFile(filename: "lib/filenamecat.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!6, !17, !17, !768}
!1329 = !{!1330, !1331, !1332, !1333}
!1330 = !DILocalVariable(name: "dir", arg: 1, scope: !1325, file: !1326, line: 35, type: !17)
!1331 = !DILocalVariable(name: "abase", arg: 2, scope: !1325, file: !1326, line: 35, type: !17)
!1332 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1325, file: !1326, line: 35, type: !768)
!1333 = !DILocalVariable(name: "p", scope: !1325, file: !1326, line: 37, type: !6)
!1334 = !DILocation(line: 35, column: 31, scope: !1325)
!1335 = !DILocation(line: 35, column: 48, scope: !1325)
!1336 = !DILocation(line: 35, column: 62, scope: !1325)
!1337 = !DILocation(line: 37, column: 13, scope: !1325)
!1338 = !DILocation(line: 37, column: 9, scope: !1325)
!1339 = !DILocation(line: 38, column: 9, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1325, file: !1326, line: 38, column: 7)
!1341 = !DILocation(line: 38, column: 7, scope: !1325)
!1342 = !DILocation(line: 39, column: 5, scope: !1340)
!1343 = !DILocation(line: 40, column: 3, scope: !1325)
!1344 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1345, file: !1345, line: 61, type: !1327, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !1346)
!1345 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1347 = !DILocalVariable(name: "dir", arg: 1, scope: !1344, file: !1345, line: 61, type: !17)
!1348 = !DILocalVariable(name: "abase", arg: 2, scope: !1344, file: !1345, line: 61, type: !17)
!1349 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1344, file: !1345, line: 61, type: !768)
!1350 = !DILocalVariable(name: "dirbase", scope: !1344, file: !1345, line: 63, type: !17)
!1351 = !DILocalVariable(name: "dirbaselen", scope: !1344, file: !1345, line: 64, type: !9)
!1352 = !DILocalVariable(name: "dirlen", scope: !1344, file: !1345, line: 65, type: !9)
!1353 = !DILocalVariable(name: "needs_separator", scope: !1344, file: !1345, line: 66, type: !9)
!1354 = !DILocalVariable(name: "base", scope: !1344, file: !1345, line: 68, type: !17)
!1355 = !DILocalVariable(name: "baselen", scope: !1344, file: !1345, line: 69, type: !9)
!1356 = !DILocalVariable(name: "p_concat", scope: !1344, file: !1345, line: 71, type: !6)
!1357 = !DILocalVariable(name: "p", scope: !1344, file: !1345, line: 72, type: !6)
!1358 = !DILocation(line: 61, column: 32, scope: !1344)
!1359 = !DILocation(line: 61, column: 49, scope: !1344)
!1360 = !DILocation(line: 61, column: 63, scope: !1344)
!1361 = !DILocation(line: 63, column: 25, scope: !1344)
!1362 = !DILocation(line: 63, column: 15, scope: !1344)
!1363 = !DILocation(line: 64, column: 23, scope: !1344)
!1364 = !DILocation(line: 64, column: 10, scope: !1344)
!1365 = !DILocation(line: 65, column: 27, scope: !1344)
!1366 = !DILocation(line: 65, column: 33, scope: !1344)
!1367 = !DILocation(line: 65, column: 10, scope: !1344)
!1368 = !DILocation(line: 66, column: 29, scope: !1344)
!1369 = !DILocation(line: 66, column: 40, scope: !1344)
!1370 = !DILocation(line: 66, column: 45, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1344, file: !1345, discriminator: 1)
!1372 = !DILocation(line: 66, column: 43, scope: !1371)
!1373 = !DILocation(line: 66, column: 10, scope: !1344)
!1374 = !DILocalVariable(name: "f", arg: 1, scope: !1375, file: !1345, line: 38, type: !17)
!1375 = distinct !DISubprogram(name: "longest_relative_suffix", scope: !1345, file: !1345, line: 38, type: !1376, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!17, !17}
!1378 = !{!1374}
!1379 = !DILocation(line: 38, column: 38, scope: !1375, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 68, column: 22, scope: !1344)
!1381 = !DILocation(line: 40, column: 8, scope: !1382, inlinedAt: !1380)
!1382 = distinct !DILexicalBlock(scope: !1375, file: !1345, line: 40, column: 3)
!1383 = !DILocation(line: 40, column: 41, scope: !1384, inlinedAt: !1380)
!1384 = !DILexicalBlockFile(scope: !1385, file: !1345, discriminator: 1)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !1345, line: 40, column: 3)
!1386 = !DILocation(line: 40, column: 56, scope: !1387, inlinedAt: !1380)
!1387 = !DILexicalBlockFile(scope: !1385, file: !1345, discriminator: 2)
!1388 = !DILocation(line: 40, column: 3, scope: !1389, inlinedAt: !1380)
!1389 = !DILexicalBlockFile(scope: !1382, file: !1345, discriminator: 1)
!1390 = distinct !{!1390, !1391, !1392}
!1391 = !DILocation(line: 40, column: 3, scope: !1382)
!1392 = !DILocation(line: 41, column: 5, scope: !1382)
!1393 = !DILocation(line: 66, column: 28, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1344, file: !1345, discriminator: 2)
!1395 = !DILocation(line: 68, column: 15, scope: !1344)
!1396 = !DILocation(line: 69, column: 20, scope: !1344)
!1397 = !DILocation(line: 69, column: 10, scope: !1344)
!1398 = !DILocation(line: 71, column: 35, scope: !1344)
!1399 = !DILocation(line: 71, column: 53, scope: !1344)
!1400 = !DILocation(line: 71, column: 63, scope: !1344)
!1401 = !DILocation(line: 71, column: 20, scope: !1344)
!1402 = !DILocation(line: 71, column: 9, scope: !1344)
!1403 = !DILocation(line: 74, column: 16, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1344, file: !1345, line: 74, column: 7)
!1405 = !DILocation(line: 74, column: 7, scope: !1344)
!1406 = !DILocalVariable(name: "__dest", arg: 1, scope: !1407, file: !1408, line: 64, type: !1411)
!1407 = distinct !DISubprogram(name: "mempcpy", scope: !1408, file: !1408, line: 64, type: !1409, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !588, variables: !1413)
!1408 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!8, !1411, !1412, !9}
!1411 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1412 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!1413 = !{!1406, !1414, !1415}
!1414 = !DILocalVariable(name: "__src", arg: 2, scope: !1407, file: !1408, line: 64, type: !1412)
!1415 = !DILocalVariable(name: "__len", arg: 3, scope: !1407, file: !1408, line: 64, type: !9)
!1416 = !DILocation(line: 64, column: 1, scope: !1407, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 77, column: 7, scope: !1344)
!1418 = !DILocation(line: 67, column: 57, scope: !1407, inlinedAt: !1417)
!1419 = !DILocation(line: 67, column: 10, scope: !1407, inlinedAt: !1417)
!1420 = !DILocation(line: 72, column: 9, scope: !1344)
!1421 = !DILocation(line: 78, column: 6, scope: !1344)
!1422 = !DILocation(line: 79, column: 5, scope: !1344)
!1423 = !DILocation(line: 81, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1344, file: !1345, line: 81, column: 7)
!1425 = !DILocation(line: 81, column: 7, scope: !1344)
!1426 = !DILocation(line: 82, column: 27, scope: !1424)
!1427 = !DILocation(line: 82, column: 25, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1424, file: !1345, discriminator: 2)
!1429 = !DILocation(line: 82, column: 21, scope: !1428)
!1430 = !DILocation(line: 82, column: 5, scope: !1428)
!1431 = !DILocation(line: 64, column: 1, scope: !1407, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 84, column: 7, scope: !1344)
!1433 = !DILocation(line: 67, column: 57, scope: !1407, inlinedAt: !1432)
!1434 = !DILocation(line: 67, column: 10, scope: !1407, inlinedAt: !1432)
!1435 = !DILocation(line: 85, column: 6, scope: !1344)
!1436 = !DILocation(line: 87, column: 3, scope: !1344)
!1437 = !DILocation(line: 88, column: 1, scope: !1344)
!1438 = distinct !DISubprogram(name: "set_program_name", scope: !94, file: !94, line: 39, type: !27, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !90, variables: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DILocalVariable(name: "argv0", arg: 1, scope: !1438, file: !94, line: 39, type: !17)
!1441 = !DILocalVariable(name: "slash", scope: !1438, file: !94, line: 46, type: !17)
!1442 = !DILocalVariable(name: "base", scope: !1438, file: !94, line: 47, type: !17)
!1443 = !DILocation(line: 39, column: 31, scope: !1438)
!1444 = !DILocation(line: 51, column: 13, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1438, file: !94, line: 51, column: 7)
!1446 = !DILocation(line: 51, column: 7, scope: !1438)
!1447 = !DILocation(line: 55, column: 14, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !94, line: 52, column: 5)
!1449 = !DILocation(line: 54, column: 7, scope: !1448)
!1450 = !DILocation(line: 56, column: 7, scope: !1448)
!1451 = !DILocation(line: 59, column: 11, scope: !1438)
!1452 = !DILocation(line: 46, column: 15, scope: !1438)
!1453 = !DILocation(line: 60, column: 17, scope: !1438)
!1454 = !DILocation(line: 60, column: 33, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1438, file: !94, discriminator: 1)
!1456 = !DILocation(line: 60, column: 11, scope: !1438)
!1457 = !DILocation(line: 47, column: 15, scope: !1438)
!1458 = !DILocation(line: 61, column: 12, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1438, file: !94, line: 61, column: 7)
!1460 = !DILocation(line: 61, column: 20, scope: !1459)
!1461 = !DILocation(line: 61, column: 25, scope: !1459)
!1462 = !DILocation(line: 61, column: 28, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1459, file: !94, discriminator: 1)
!1464 = !DILocation(line: 61, column: 61, scope: !1463)
!1465 = !DILocation(line: 61, column: 7, scope: !1455)
!1466 = !DILocation(line: 64, column: 11, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !94, line: 64, column: 11)
!1468 = distinct !DILexicalBlock(scope: !1459, file: !94, line: 62, column: 5)
!1469 = !DILocation(line: 64, column: 36, scope: !1467)
!1470 = !DILocation(line: 64, column: 11, scope: !1468)
!1471 = !DILocation(line: 66, column: 24, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !94, line: 65, column: 9)
!1473 = !DILocation(line: 70, column: 41, scope: !1472)
!1474 = !DILocation(line: 72, column: 9, scope: !1472)
!1475 = !DILocation(line: 84, column: 16, scope: !1438)
!1476 = !DILocation(line: 90, column: 27, scope: !1438)
!1477 = !DILocation(line: 92, column: 1, scope: !1438)
!1478 = distinct !DISubprogram(name: "clone_quoting_options", scope: !139, file: !139, line: 114, type: !1479, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1482)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1481, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1482 = !{!1483, !1484, !1485}
!1483 = !DILocalVariable(name: "o", arg: 1, scope: !1478, file: !139, line: 114, type: !1481)
!1484 = !DILocalVariable(name: "e", scope: !1478, file: !139, line: 116, type: !50)
!1485 = !DILocalVariable(name: "p", scope: !1478, file: !139, line: 117, type: !1481)
!1486 = !DILocation(line: 114, column: 48, scope: !1478)
!1487 = !DILocation(line: 116, column: 11, scope: !1478)
!1488 = !DILocation(line: 116, column: 7, scope: !1478)
!1489 = !DILocation(line: 117, column: 40, scope: !1478)
!1490 = !DILocation(line: 117, column: 40, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1478, file: !139, discriminator: 3)
!1492 = !DILocation(line: 117, column: 31, scope: !1491)
!1493 = !DILocation(line: 117, column: 27, scope: !1478)
!1494 = !DILocation(line: 119, column: 9, scope: !1478)
!1495 = !DILocation(line: 120, column: 3, scope: !1478)
!1496 = distinct !DISubprogram(name: "get_quoting_style", scope: !139, file: !139, line: 125, type: !1497, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1501)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!100, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1501 = !{!1502}
!1502 = !DILocalVariable(name: "o", arg: 1, scope: !1496, file: !139, line: 125, type: !1499)
!1503 = !DILocation(line: 125, column: 50, scope: !1496)
!1504 = !DILocation(line: 127, column: 11, scope: !1496)
!1505 = !DILocation(line: 127, column: 46, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1496, file: !139, discriminator: 3)
!1507 = !{!1508, !715, i64 0}
!1508 = !{!"quoting_options", !715, i64 0, !845, i64 4, !715, i64 8, !714, i64 40, !714, i64 48}
!1509 = !DILocation(line: 127, column: 3, scope: !1506)
!1510 = distinct !DISubprogram(name: "set_quoting_style", scope: !139, file: !139, line: 133, type: !1511, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !1481, !100}
!1513 = !{!1514, !1515}
!1514 = !DILocalVariable(name: "o", arg: 1, scope: !1510, file: !139, line: 133, type: !1481)
!1515 = !DILocalVariable(name: "s", arg: 2, scope: !1510, file: !139, line: 133, type: !100)
!1516 = !DILocation(line: 133, column: 44, scope: !1510)
!1517 = !DILocation(line: 133, column: 66, scope: !1510)
!1518 = !DILocation(line: 135, column: 4, scope: !1510)
!1519 = !DILocation(line: 135, column: 39, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1510, file: !139, discriminator: 3)
!1521 = !DILocation(line: 135, column: 45, scope: !1520)
!1522 = !DILocation(line: 136, column: 1, scope: !1510)
!1523 = distinct !DISubprogram(name: "set_char_quoting", scope: !139, file: !139, line: 144, type: !1524, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!50, !1481, !7, !50}
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1533, !1534}
!1527 = !DILocalVariable(name: "o", arg: 1, scope: !1523, file: !139, line: 144, type: !1481)
!1528 = !DILocalVariable(name: "c", arg: 2, scope: !1523, file: !139, line: 144, type: !7)
!1529 = !DILocalVariable(name: "i", arg: 3, scope: !1523, file: !139, line: 144, type: !50)
!1530 = !DILocalVariable(name: "uc", scope: !1523, file: !139, line: 146, type: !16)
!1531 = !DILocalVariable(name: "p", scope: !1523, file: !139, line: 147, type: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1533 = !DILocalVariable(name: "shift", scope: !1523, file: !139, line: 149, type: !50)
!1534 = !DILocalVariable(name: "r", scope: !1523, file: !139, line: 150, type: !50)
!1535 = !DILocation(line: 144, column: 43, scope: !1523)
!1536 = !DILocation(line: 144, column: 51, scope: !1523)
!1537 = !DILocation(line: 144, column: 58, scope: !1523)
!1538 = !DILocation(line: 146, column: 17, scope: !1523)
!1539 = !DILocation(line: 148, column: 6, scope: !1523)
!1540 = !DILocation(line: 148, column: 62, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1523, file: !139, discriminator: 3)
!1542 = !DILocation(line: 148, column: 57, scope: !1541)
!1543 = !DILocation(line: 147, column: 17, scope: !1523)
!1544 = !DILocation(line: 149, column: 18, scope: !1523)
!1545 = !DILocation(line: 149, column: 15, scope: !1523)
!1546 = !DILocation(line: 149, column: 7, scope: !1523)
!1547 = !DILocation(line: 150, column: 12, scope: !1523)
!1548 = !DILocation(line: 150, column: 15, scope: !1523)
!1549 = !DILocation(line: 150, column: 25, scope: !1523)
!1550 = !DILocation(line: 150, column: 7, scope: !1523)
!1551 = !DILocation(line: 151, column: 13, scope: !1523)
!1552 = !DILocation(line: 151, column: 18, scope: !1523)
!1553 = !DILocation(line: 151, column: 23, scope: !1523)
!1554 = !DILocation(line: 151, column: 6, scope: !1523)
!1555 = !DILocation(line: 152, column: 3, scope: !1523)
!1556 = distinct !DISubprogram(name: "set_quoting_flags", scope: !139, file: !139, line: 160, type: !1557, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1559)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!50, !1481, !50}
!1559 = !{!1560, !1561, !1562}
!1560 = !DILocalVariable(name: "o", arg: 1, scope: !1556, file: !139, line: 160, type: !1481)
!1561 = !DILocalVariable(name: "i", arg: 2, scope: !1556, file: !139, line: 160, type: !50)
!1562 = !DILocalVariable(name: "r", scope: !1556, file: !139, line: 162, type: !50)
!1563 = !DILocation(line: 160, column: 44, scope: !1556)
!1564 = !DILocation(line: 160, column: 51, scope: !1556)
!1565 = !DILocation(line: 163, column: 8, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1556, file: !139, line: 163, column: 7)
!1567 = !DILocation(line: 163, column: 7, scope: !1556)
!1568 = !DILocation(line: 165, column: 10, scope: !1556)
!1569 = !{!1508, !845, i64 4}
!1570 = !DILocation(line: 162, column: 7, scope: !1556)
!1571 = !DILocation(line: 166, column: 12, scope: !1556)
!1572 = !DILocation(line: 167, column: 3, scope: !1556)
!1573 = distinct !DISubprogram(name: "set_custom_quoting", scope: !139, file: !139, line: 171, type: !1574, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1576)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1481, !17, !17}
!1576 = !{!1577, !1578, !1579}
!1577 = !DILocalVariable(name: "o", arg: 1, scope: !1573, file: !139, line: 171, type: !1481)
!1578 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1573, file: !139, line: 172, type: !17)
!1579 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1573, file: !139, line: 172, type: !17)
!1580 = !DILocation(line: 171, column: 45, scope: !1573)
!1581 = !DILocation(line: 172, column: 33, scope: !1573)
!1582 = !DILocation(line: 172, column: 57, scope: !1573)
!1583 = !DILocation(line: 174, column: 8, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1573, file: !139, line: 174, column: 7)
!1585 = !DILocation(line: 174, column: 7, scope: !1573)
!1586 = !DILocation(line: 176, column: 6, scope: !1573)
!1587 = !DILocation(line: 176, column: 12, scope: !1573)
!1588 = !DILocation(line: 177, column: 8, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1573, file: !139, line: 177, column: 7)
!1590 = !DILocation(line: 177, column: 23, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1589, file: !139, discriminator: 1)
!1592 = !DILocation(line: 177, column: 19, scope: !1589)
!1593 = !DILocation(line: 178, column: 5, scope: !1589)
!1594 = !DILocation(line: 179, column: 6, scope: !1573)
!1595 = !DILocation(line: 179, column: 17, scope: !1573)
!1596 = !{!1508, !714, i64 40}
!1597 = !DILocation(line: 180, column: 6, scope: !1573)
!1598 = !DILocation(line: 180, column: 18, scope: !1573)
!1599 = !{!1508, !714, i64 48}
!1600 = !DILocation(line: 181, column: 1, scope: !1573)
!1601 = distinct !DISubprogram(name: "quotearg_buffer", scope: !139, file: !139, line: 776, type: !1602, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!9, !6, !9, !17, !9, !1499}
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1605 = !DILocalVariable(name: "buffer", arg: 1, scope: !1601, file: !139, line: 776, type: !6)
!1606 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1601, file: !139, line: 776, type: !9)
!1607 = !DILocalVariable(name: "arg", arg: 3, scope: !1601, file: !139, line: 777, type: !17)
!1608 = !DILocalVariable(name: "argsize", arg: 4, scope: !1601, file: !139, line: 777, type: !9)
!1609 = !DILocalVariable(name: "o", arg: 5, scope: !1601, file: !139, line: 778, type: !1499)
!1610 = !DILocalVariable(name: "p", scope: !1601, file: !139, line: 780, type: !1499)
!1611 = !DILocalVariable(name: "e", scope: !1601, file: !139, line: 781, type: !50)
!1612 = !DILocalVariable(name: "r", scope: !1601, file: !139, line: 782, type: !9)
!1613 = !DILocation(line: 776, column: 24, scope: !1601)
!1614 = !DILocation(line: 776, column: 39, scope: !1601)
!1615 = !DILocation(line: 777, column: 30, scope: !1601)
!1616 = !DILocation(line: 777, column: 42, scope: !1601)
!1617 = !DILocation(line: 778, column: 48, scope: !1601)
!1618 = !DILocation(line: 780, column: 37, scope: !1601)
!1619 = !DILocation(line: 780, column: 33, scope: !1601)
!1620 = !DILocation(line: 781, column: 11, scope: !1601)
!1621 = !DILocation(line: 781, column: 7, scope: !1601)
!1622 = !DILocation(line: 783, column: 43, scope: !1601)
!1623 = !DILocation(line: 783, column: 53, scope: !1601)
!1624 = !DILocation(line: 783, column: 60, scope: !1601)
!1625 = !DILocation(line: 784, column: 43, scope: !1601)
!1626 = !DILocation(line: 784, column: 58, scope: !1601)
!1627 = !DILocation(line: 782, column: 14, scope: !1601)
!1628 = !DILocation(line: 782, column: 10, scope: !1601)
!1629 = !DILocation(line: 785, column: 9, scope: !1601)
!1630 = !DILocation(line: 786, column: 3, scope: !1601)
!1631 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !139, file: !139, line: 248, type: !1632, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1636)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!9, !6, !9, !17, !9, !100, !50, !1634, !17, !17}
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1661, !1662, !1663, !1664, !1665, !1668, !1669, !1686, !1689, !1690, !1697}
!1637 = !DILocalVariable(name: "buffer", arg: 1, scope: !1631, file: !139, line: 248, type: !6)
!1638 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1631, file: !139, line: 248, type: !9)
!1639 = !DILocalVariable(name: "arg", arg: 3, scope: !1631, file: !139, line: 249, type: !17)
!1640 = !DILocalVariable(name: "argsize", arg: 4, scope: !1631, file: !139, line: 249, type: !9)
!1641 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1631, file: !139, line: 250, type: !100)
!1642 = !DILocalVariable(name: "flags", arg: 6, scope: !1631, file: !139, line: 250, type: !50)
!1643 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1631, file: !139, line: 251, type: !1634)
!1644 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1631, file: !139, line: 252, type: !17)
!1645 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1631, file: !139, line: 253, type: !17)
!1646 = !DILocalVariable(name: "i", scope: !1631, file: !139, line: 255, type: !9)
!1647 = !DILocalVariable(name: "len", scope: !1631, file: !139, line: 256, type: !9)
!1648 = !DILocalVariable(name: "orig_buffersize", scope: !1631, file: !139, line: 257, type: !9)
!1649 = !DILocalVariable(name: "quote_string", scope: !1631, file: !139, line: 258, type: !17)
!1650 = !DILocalVariable(name: "quote_string_len", scope: !1631, file: !139, line: 259, type: !9)
!1651 = !DILocalVariable(name: "backslash_escapes", scope: !1631, file: !139, line: 260, type: !22)
!1652 = !DILocalVariable(name: "unibyte_locale", scope: !1631, file: !139, line: 261, type: !22)
!1653 = !DILocalVariable(name: "elide_outer_quotes", scope: !1631, file: !139, line: 262, type: !22)
!1654 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1631, file: !139, line: 263, type: !22)
!1655 = !DILocalVariable(name: "encountered_single_quote", scope: !1631, file: !139, line: 264, type: !22)
!1656 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1631, file: !139, line: 265, type: !22)
!1657 = !DILocalVariable(name: "c", scope: !1658, file: !139, line: 394, type: !16)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !139, line: 393, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !139, line: 392, column: 3)
!1660 = distinct !DILexicalBlock(scope: !1631, file: !139, line: 392, column: 3)
!1661 = !DILocalVariable(name: "esc", scope: !1658, file: !139, line: 395, type: !16)
!1662 = !DILocalVariable(name: "is_right_quote", scope: !1658, file: !139, line: 396, type: !22)
!1663 = !DILocalVariable(name: "escaping", scope: !1658, file: !139, line: 397, type: !22)
!1664 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1658, file: !139, line: 398, type: !22)
!1665 = !DILocalVariable(name: "m", scope: !1666, file: !139, line: 602, type: !9)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 600, column: 11)
!1667 = distinct !DILexicalBlock(scope: !1658, file: !139, line: 418, column: 9)
!1668 = !DILocalVariable(name: "printable", scope: !1666, file: !139, line: 604, type: !22)
!1669 = !DILocalVariable(name: "mbstate", scope: !1670, file: !139, line: 613, type: !1672)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !139, line: 612, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !139, line: 606, column: 17)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1673, line: 107, baseType: !1674)
!1673 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1673, line: 95, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1673, line: 83, size: 64, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1675, file: !1673, line: 85, baseType: !50, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1675, file: !1673, line: 94, baseType: !1679, size: 32, offset: 32)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !1673, line: 86, size: 32, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1679, file: !1673, line: 89, baseType: !152, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1679, file: !1673, line: 93, baseType: !1683, size: 32)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1684)
!1684 = !{!1685}
!1685 = !DISubrange(count: 4)
!1686 = !DILocalVariable(name: "w", scope: !1687, file: !139, line: 623, type: !1688)
!1687 = distinct !DILexicalBlock(scope: !1670, file: !139, line: 622, column: 19)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !10, line: 90, baseType: !50)
!1689 = !DILocalVariable(name: "bytes", scope: !1687, file: !139, line: 624, type: !9)
!1690 = !DILocalVariable(name: "j", scope: !1691, file: !139, line: 649, type: !9)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !139, line: 648, column: 27)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !139, line: 646, column: 29)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !139, line: 641, column: 23)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !139, line: 633, column: 30)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !139, line: 628, column: 30)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !139, line: 626, column: 25)
!1697 = !DILocalVariable(name: "ilim", scope: !1698, file: !139, line: 676, type: !9)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !139, line: 673, column: 15)
!1699 = distinct !DILexicalBlock(scope: !1666, file: !139, line: 672, column: 17)
!1700 = !DILocation(line: 248, column: 33, scope: !1631)
!1701 = !DILocation(line: 248, column: 48, scope: !1631)
!1702 = !DILocation(line: 249, column: 39, scope: !1631)
!1703 = !DILocation(line: 249, column: 51, scope: !1631)
!1704 = !DILocation(line: 250, column: 46, scope: !1631)
!1705 = !DILocation(line: 250, column: 65, scope: !1631)
!1706 = !DILocation(line: 251, column: 47, scope: !1631)
!1707 = !DILocation(line: 252, column: 39, scope: !1631)
!1708 = !DILocation(line: 253, column: 39, scope: !1631)
!1709 = !DILocation(line: 256, column: 10, scope: !1631)
!1710 = !DILocation(line: 257, column: 10, scope: !1631)
!1711 = !DILocation(line: 258, column: 15, scope: !1631)
!1712 = !DILocation(line: 259, column: 10, scope: !1631)
!1713 = !DILocation(line: 260, column: 8, scope: !1631)
!1714 = !DILocation(line: 261, column: 25, scope: !1631)
!1715 = !DILocation(line: 261, column: 36, scope: !1631)
!1716 = !DILocation(line: 262, column: 8, scope: !1631)
!1717 = !DILocation(line: 263, column: 8, scope: !1631)
!1718 = !DILocation(line: 264, column: 8, scope: !1631)
!1719 = !DILocation(line: 265, column: 8, scope: !1631)
!1720 = !DILocation(line: 265, column: 3, scope: !1631)
!1721 = !DILocation(line: 308, column: 3, scope: !1631)
!1722 = !DILocation(line: 315, column: 11, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1631, file: !139, line: 309, column: 5)
!1724 = !DILocation(line: 315, column: 12, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1723, file: !139, line: 315, column: 11)
!1726 = !DILocation(line: 316, column: 9, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1728, file: !139, discriminator: 1)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !139, line: 316, column: 9)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !139, line: 316, column: 9)
!1730 = !DILocation(line: 316, column: 9, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1729, file: !139, discriminator: 1)
!1732 = !DILocation(line: 316, column: 9, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1728, file: !139, discriminator: 2)
!1734 = !DILocation(line: 354, column: 26, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !139, line: 332, column: 11)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !139, line: 331, column: 13)
!1737 = distinct !DILexicalBlock(scope: !1723, file: !139, line: 330, column: 7)
!1738 = !DILocation(line: 355, column: 27, scope: !1735)
!1739 = !DILocation(line: 356, column: 11, scope: !1735)
!1740 = !DILocation(line: 357, column: 14, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !139, line: 357, column: 13)
!1742 = !DILocation(line: 357, column: 13, scope: !1737)
!1743 = !DILocation(line: 358, column: 43, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1745, file: !139, discriminator: 1)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !139, line: 358, column: 11)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !139, line: 358, column: 11)
!1747 = !DILocation(line: 358, column: 11, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1746, file: !139, discriminator: 1)
!1749 = !DILocation(line: 359, column: 13, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1751, file: !139, discriminator: 1)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !139, line: 359, column: 13)
!1752 = distinct !DILexicalBlock(scope: !1745, file: !139, line: 359, column: 13)
!1753 = !DILocation(line: 359, column: 13, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1752, file: !139, discriminator: 1)
!1755 = !DILocation(line: 359, column: 13, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1751, file: !139, discriminator: 2)
!1757 = !DILocation(line: 359, column: 13, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1752, file: !139, discriminator: 3)
!1759 = !DILocation(line: 358, column: 70, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1745, file: !139, discriminator: 2)
!1761 = distinct !{!1761, !1762, !1763}
!1762 = !DILocation(line: 358, column: 11, scope: !1746)
!1763 = !DILocation(line: 359, column: 13, scope: !1746)
!1764 = !DILocation(line: 362, column: 28, scope: !1737)
!1765 = !DILocation(line: 364, column: 7, scope: !1723)
!1766 = !DILocation(line: 367, column: 7, scope: !1723)
!1767 = !DILocation(line: 370, column: 7, scope: !1723)
!1768 = !DILocation(line: 373, column: 12, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1723, file: !139, line: 373, column: 11)
!1770 = !DILocation(line: 373, column: 11, scope: !1723)
!1771 = !DILocation(line: 378, column: 12, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1723, file: !139, line: 378, column: 11)
!1773 = !DILocation(line: 378, column: 11, scope: !1723)
!1774 = !DILocation(line: 379, column: 9, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1776, file: !139, discriminator: 1)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !139, line: 379, column: 9)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !139, line: 379, column: 9)
!1778 = !DILocation(line: 379, column: 9, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1777, file: !139, discriminator: 1)
!1780 = !DILocation(line: 379, column: 9, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1776, file: !139, discriminator: 2)
!1782 = !DILocation(line: 386, column: 7, scope: !1723)
!1783 = !DILocation(line: 389, column: 7, scope: !1723)
!1784 = !DILocation(line: 255, column: 10, scope: !1631)
!1785 = !DILocation(line: 392, column: 8, scope: !1660)
!1786 = !DILocation(line: 392, column: 27, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1659, file: !139, discriminator: 1)
!1788 = !DILocation(line: 392, column: 19, scope: !1787)
!1789 = !DILocation(line: 392, column: 60, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1659, file: !139, discriminator: 3)
!1791 = !DILocation(line: 392, column: 3, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1660, file: !139, discriminator: 4)
!1793 = !DILocation(line: 392, column: 41, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1659, file: !139, discriminator: 2)
!1795 = !DILocation(line: 392, column: 48, scope: !1794)
!1796 = !DILocation(line: 396, column: 12, scope: !1658)
!1797 = !DILocation(line: 397, column: 12, scope: !1658)
!1798 = !DILocation(line: 398, column: 12, scope: !1658)
!1799 = !DILocation(line: 401, column: 11, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1658, file: !139, line: 400, column: 11)
!1801 = !DILocation(line: 403, column: 17, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1800, file: !139, discriminator: 1)
!1803 = !DILocation(line: 404, column: 39, scope: !1800)
!1804 = !DILocation(line: 408, column: 32, scope: !1800)
!1805 = !DILocation(line: 404, column: 19, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1800, file: !139, discriminator: 2)
!1807 = !DILocation(line: 404, column: 15, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1800, file: !139, discriminator: 4)
!1809 = !DILocation(line: 409, column: 11, scope: !1800)
!1810 = !DILocation(line: 409, column: 26, scope: !1802)
!1811 = !DILocation(line: 409, column: 14, scope: !1802)
!1812 = !DILocation(line: 400, column: 11, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1658, file: !139, discriminator: 1)
!1814 = !DILocation(line: 416, column: 11, scope: !1658)
!1815 = !DILocation(line: 394, column: 21, scope: !1658)
!1816 = !DILocation(line: 417, column: 7, scope: !1658)
!1817 = !DILocation(line: 420, column: 15, scope: !1667)
!1818 = !DILocation(line: 422, column: 15, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1820, file: !139, discriminator: 1)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !139, line: 422, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !139, line: 421, column: 13)
!1822 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 420, column: 15)
!1823 = !DILocation(line: 422, column: 15, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1825, file: !139, discriminator: 4)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !139, line: 422, column: 15)
!1826 = !DILocation(line: 422, column: 15, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !1825, file: !139, discriminator: 3)
!1828 = !DILocation(line: 422, column: 15, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1830, file: !139, discriminator: 6)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !139, line: 422, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !139, line: 422, column: 15)
!1832 = distinct !DILexicalBlock(scope: !1825, file: !139, line: 422, column: 15)
!1833 = !DILocation(line: 422, column: 15, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1831, file: !139, discriminator: 6)
!1835 = !DILocation(line: 422, column: 15, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1830, file: !139, discriminator: 7)
!1837 = !DILocation(line: 422, column: 15, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1831, file: !139, discriminator: 8)
!1839 = !DILocation(line: 422, column: 15, scope: !1840)
!1840 = !DILexicalBlockFile(scope: !1841, file: !139, discriminator: 11)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !139, line: 422, column: 15)
!1842 = distinct !DILexicalBlock(scope: !1832, file: !139, line: 422, column: 15)
!1843 = !DILocation(line: 422, column: 15, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1842, file: !139, discriminator: 11)
!1845 = !DILocation(line: 422, column: 15, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1841, file: !139, discriminator: 12)
!1847 = !DILocation(line: 422, column: 15, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1842, file: !139, discriminator: 13)
!1849 = !DILocation(line: 422, column: 15, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1851, file: !139, discriminator: 16)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !139, line: 422, column: 15)
!1852 = distinct !DILexicalBlock(scope: !1832, file: !139, line: 422, column: 15)
!1853 = !DILocation(line: 422, column: 15, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1852, file: !139, discriminator: 16)
!1855 = !DILocation(line: 422, column: 15, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1851, file: !139, discriminator: 17)
!1857 = !DILocation(line: 422, column: 15, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1852, file: !139, discriminator: 18)
!1859 = !DILocation(line: 422, column: 15, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1832, file: !139, discriminator: 20)
!1861 = !DILocation(line: 422, column: 15, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1863, file: !139, discriminator: 22)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !139, line: 422, column: 15)
!1864 = distinct !DILexicalBlock(scope: !1820, file: !139, line: 422, column: 15)
!1865 = !DILocation(line: 422, column: 15, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1864, file: !139, discriminator: 22)
!1867 = !DILocation(line: 422, column: 15, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !1863, file: !139, discriminator: 23)
!1869 = !DILocation(line: 422, column: 15, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1864, file: !139, discriminator: 24)
!1871 = !DILocation(line: 430, column: 19, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1821, file: !139, line: 429, column: 19)
!1873 = !DILocation(line: 430, column: 24, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1872, file: !139, discriminator: 1)
!1875 = !DILocation(line: 430, column: 28, scope: !1874)
!1876 = !DILocation(line: 430, column: 38, scope: !1874)
!1877 = !DILocation(line: 430, column: 48, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1872, file: !139, discriminator: 2)
!1879 = !DILocation(line: 430, column: 59, scope: !1878)
!1880 = !DILocation(line: 432, column: 19, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1882, file: !139, discriminator: 1)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !139, line: 432, column: 19)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !139, line: 432, column: 19)
!1884 = distinct !DILexicalBlock(scope: !1872, file: !139, line: 431, column: 17)
!1885 = !DILocation(line: 432, column: 19, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1883, file: !139, discriminator: 1)
!1887 = !DILocation(line: 432, column: 19, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1882, file: !139, discriminator: 2)
!1889 = !DILocation(line: 432, column: 19, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1883, file: !139, discriminator: 3)
!1891 = !DILocation(line: 433, column: 19, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1893, file: !139, discriminator: 1)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !139, line: 433, column: 19)
!1894 = distinct !DILexicalBlock(scope: !1884, file: !139, line: 433, column: 19)
!1895 = !DILocation(line: 433, column: 19, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1894, file: !139, discriminator: 1)
!1897 = !DILocation(line: 433, column: 19, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1893, file: !139, discriminator: 2)
!1899 = !DILocation(line: 433, column: 19, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1894, file: !139, discriminator: 3)
!1901 = !DILocation(line: 434, column: 17, scope: !1884)
!1902 = !DILocation(line: 441, column: 20, scope: !1822)
!1903 = !DILocation(line: 446, column: 11, scope: !1667)
!1904 = !DILocation(line: 449, column: 19, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 447, column: 13)
!1906 = !DILocation(line: 455, column: 19, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1905, file: !139, line: 454, column: 19)
!1908 = !DILocation(line: 455, column: 24, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1907, file: !139, discriminator: 1)
!1910 = !DILocation(line: 455, column: 28, scope: !1909)
!1911 = !DILocation(line: 455, column: 38, scope: !1909)
!1912 = !DILocation(line: 455, column: 47, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1907, file: !139, discriminator: 2)
!1914 = !DILocation(line: 455, column: 41, scope: !1913)
!1915 = !DILocation(line: 455, column: 52, scope: !1913)
!1916 = !DILocation(line: 454, column: 19, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1905, file: !139, discriminator: 1)
!1918 = !DILocation(line: 456, column: 25, scope: !1907)
!1919 = !DILocation(line: 456, column: 17, scope: !1907)
!1920 = !DILocation(line: 463, column: 25, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1907, file: !139, line: 457, column: 19)
!1922 = !DILocation(line: 467, column: 21, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1924, file: !139, discriminator: 1)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !139, line: 467, column: 21)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !139, line: 467, column: 21)
!1926 = !DILocation(line: 467, column: 21, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1925, file: !139, discriminator: 1)
!1928 = !DILocation(line: 467, column: 21, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1924, file: !139, discriminator: 2)
!1930 = !DILocation(line: 467, column: 21, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1925, file: !139, discriminator: 3)
!1932 = !DILocation(line: 468, column: 21, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1934, file: !139, discriminator: 1)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !139, line: 468, column: 21)
!1935 = distinct !DILexicalBlock(scope: !1921, file: !139, line: 468, column: 21)
!1936 = !DILocation(line: 468, column: 21, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1935, file: !139, discriminator: 1)
!1938 = !DILocation(line: 468, column: 21, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1934, file: !139, discriminator: 2)
!1940 = !DILocation(line: 468, column: 21, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1935, file: !139, discriminator: 3)
!1942 = !DILocation(line: 469, column: 21, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1944, file: !139, discriminator: 1)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !139, line: 469, column: 21)
!1945 = distinct !DILexicalBlock(scope: !1921, file: !139, line: 469, column: 21)
!1946 = !DILocation(line: 469, column: 21, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1945, file: !139, discriminator: 1)
!1948 = !DILocation(line: 469, column: 21, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1944, file: !139, discriminator: 2)
!1950 = !DILocation(line: 469, column: 21, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1945, file: !139, discriminator: 3)
!1952 = !DILocation(line: 470, column: 21, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !139, discriminator: 1)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !139, line: 470, column: 21)
!1955 = distinct !DILexicalBlock(scope: !1921, file: !139, line: 470, column: 21)
!1956 = !DILocation(line: 470, column: 21, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1955, file: !139, discriminator: 1)
!1958 = !DILocation(line: 470, column: 21, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1954, file: !139, discriminator: 2)
!1960 = !DILocation(line: 470, column: 21, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1955, file: !139, discriminator: 3)
!1962 = !DILocation(line: 471, column: 21, scope: !1921)
!1963 = !DILocation(line: 395, column: 21, scope: !1658)
!1964 = !DILocation(line: 484, column: 31, scope: !1667)
!1965 = !DILocation(line: 485, column: 31, scope: !1667)
!1966 = !DILocation(line: 487, column: 31, scope: !1667)
!1967 = !DILocation(line: 488, column: 31, scope: !1667)
!1968 = !DILocation(line: 489, column: 31, scope: !1667)
!1969 = !DILocation(line: 492, column: 15, scope: !1667)
!1970 = !DILocation(line: 494, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !139, line: 493, column: 13)
!1972 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 492, column: 15)
!1973 = !DILocation(line: 501, column: 33, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 501, column: 15)
!1975 = !DILocation(line: 506, column: 15, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 505, column: 15)
!1977 = !DILocation(line: 510, column: 15, scope: !1667)
!1978 = !DILocation(line: 518, column: 26, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 518, column: 15)
!1980 = !DILocation(line: 518, column: 15, scope: !1667)
!1981 = !DILocation(line: 518, column: 40, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1979, file: !139, discriminator: 1)
!1983 = !DILocation(line: 518, column: 47, scope: !1982)
!1984 = !DILocation(line: 522, column: 17, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 522, column: 15)
!1986 = !DILocation(line: 518, column: 18, scope: !1982)
!1987 = !DILocation(line: 518, column: 65, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1979, file: !139, discriminator: 2)
!1989 = !DILocation(line: 518, column: 15, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1667, file: !139, discriminator: 2)
!1991 = !DILocation(line: 522, column: 15, scope: !1667)
!1992 = !DILocation(line: 526, column: 11, scope: !1667)
!1993 = !DILocation(line: 541, column: 15, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 540, column: 15)
!1995 = !DILocation(line: 548, column: 15, scope: !1667)
!1996 = !DILocation(line: 550, column: 19, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !139, line: 549, column: 13)
!1998 = distinct !DILexicalBlock(scope: !1667, file: !139, line: 548, column: 15)
!1999 = !DILocation(line: 553, column: 19, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !139, line: 553, column: 19)
!2001 = !DILocation(line: 553, column: 35, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !2000, file: !139, discriminator: 1)
!2003 = !DILocation(line: 553, column: 30, scope: !2000)
!2004 = !DILocation(line: 562, column: 15, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2006, file: !139, discriminator: 1)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !139, line: 562, column: 15)
!2007 = distinct !DILexicalBlock(scope: !1997, file: !139, line: 562, column: 15)
!2008 = !DILocation(line: 562, column: 15, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2007, file: !139, discriminator: 1)
!2010 = !DILocation(line: 562, column: 15, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2006, file: !139, discriminator: 2)
!2012 = !DILocation(line: 562, column: 15, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2007, file: !139, discriminator: 3)
!2014 = !DILocation(line: 563, column: 15, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2016, file: !139, discriminator: 1)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !139, line: 563, column: 15)
!2017 = distinct !DILexicalBlock(scope: !1997, file: !139, line: 563, column: 15)
!2018 = !DILocation(line: 563, column: 15, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2017, file: !139, discriminator: 1)
!2020 = !DILocation(line: 563, column: 15, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2016, file: !139, discriminator: 2)
!2022 = !DILocation(line: 563, column: 15, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2017, file: !139, discriminator: 3)
!2024 = !DILocation(line: 564, column: 15, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2026, file: !139, discriminator: 1)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !139, line: 564, column: 15)
!2027 = distinct !DILexicalBlock(scope: !1997, file: !139, line: 564, column: 15)
!2028 = !DILocation(line: 564, column: 15, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2027, file: !139, discriminator: 1)
!2030 = !DILocation(line: 564, column: 15, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2026, file: !139, discriminator: 2)
!2032 = !DILocation(line: 564, column: 15, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2027, file: !139, discriminator: 3)
!2034 = !DILocation(line: 566, column: 13, scope: !1997)
!2035 = !DILocation(line: 606, column: 17, scope: !1666)
!2036 = !DILocation(line: 602, column: 20, scope: !1666)
!2037 = !DILocation(line: 609, column: 29, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1671, file: !139, line: 607, column: 15)
!2039 = !{!1189, !1189, i64 0}
!2040 = !DILocation(line: 609, column: 27, scope: !2038)
!2041 = !DILocation(line: 604, column: 18, scope: !1666)
!2042 = !DILocation(line: 610, column: 15, scope: !2038)
!2043 = !DILocation(line: 613, column: 17, scope: !1670)
!2044 = !DILocation(line: 614, column: 17, scope: !1670)
!2045 = !DILocation(line: 618, column: 29, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1670, file: !139, line: 618, column: 21)
!2047 = !DILocation(line: 618, column: 21, scope: !1670)
!2048 = distinct !{!2048, !2049, !2050}
!2049 = !DILocation(line: 621, column: 17, scope: !1670)
!2050 = !DILocation(line: 667, column: 44, scope: !1670)
!2051 = !DILocation(line: 619, column: 29, scope: !2046)
!2052 = !DILocation(line: 619, column: 19, scope: !2046)
!2053 = !DILocation(line: 623, column: 21, scope: !1687)
!2054 = !DILocation(line: 624, column: 56, scope: !1687)
!2055 = !DILocation(line: 624, column: 50, scope: !1687)
!2056 = !DILocation(line: 625, column: 53, scope: !1687)
!2057 = !DIExpression(DW_OP_deref)
!2058 = !DILocation(line: 613, column: 27, scope: !1670)
!2059 = !DILocation(line: 623, column: 29, scope: !1687)
!2060 = !DILocation(line: 624, column: 36, scope: !1687)
!2061 = !DILocation(line: 624, column: 28, scope: !1687)
!2062 = !DILocation(line: 626, column: 25, scope: !1687)
!2063 = !DILocation(line: 636, column: 38, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2065, file: !139, discriminator: 1)
!2065 = distinct !DILexicalBlock(scope: !1694, file: !139, line: 634, column: 23)
!2066 = !DILocation(line: 636, column: 48, scope: !2064)
!2067 = !DILocation(line: 636, column: 51, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2065, file: !139, discriminator: 2)
!2069 = !DILocation(line: 636, column: 48, scope: !2068)
!2070 = !DILocation(line: 636, column: 25, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2065, file: !139, discriminator: 3)
!2072 = !DILocation(line: 637, column: 28, scope: !2065)
!2073 = !DILocation(line: 636, column: 34, scope: !2064)
!2074 = distinct !{!2074, !2075, !2072}
!2075 = !DILocation(line: 636, column: 25, scope: !2065)
!2076 = !DILocation(line: 650, column: 43, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2078, file: !139, discriminator: 1)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !139, line: 650, column: 29)
!2079 = distinct !DILexicalBlock(scope: !1691, file: !139, line: 650, column: 29)
!2080 = !DILocation(line: 647, column: 29, scope: !1692)
!2081 = !DILocation(line: 649, column: 36, scope: !1691)
!2082 = !DILocation(line: 651, column: 49, scope: !2078)
!2083 = !DILocation(line: 651, column: 39, scope: !2078)
!2084 = !DILocation(line: 651, column: 31, scope: !2078)
!2085 = !DILocation(line: 650, column: 53, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2078, file: !139, discriminator: 2)
!2087 = !DILocation(line: 650, column: 29, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2079, file: !139, discriminator: 1)
!2089 = distinct !{!2089, !2090, !2091}
!2090 = !DILocation(line: 650, column: 29, scope: !2079)
!2091 = !DILocation(line: 659, column: 33, scope: !2079)
!2092 = !DILocation(line: 666, column: 19, scope: !1670)
!2093 = !DILocation(line: 662, column: 41, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1693, file: !139, line: 662, column: 29)
!2095 = !DILocation(line: 662, column: 31, scope: !2094)
!2096 = !DILocation(line: 662, column: 29, scope: !1693)
!2097 = !DILocation(line: 664, column: 27, scope: !1693)
!2098 = !DILocation(line: 667, column: 26, scope: !1670)
!2099 = !DILocation(line: 667, column: 24, scope: !1670)
!2100 = !DILocation(line: 666, column: 19, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !1687, file: !139, discriminator: 3)
!2102 = !DILocation(line: 668, column: 15, scope: !1671)
!2103 = !DILocation(line: 670, column: 40, scope: !1666)
!2104 = !DILocation(line: 672, column: 19, scope: !1699)
!2105 = !DILocation(line: 672, column: 45, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !1699, file: !139, discriminator: 1)
!2107 = !DILocation(line: 672, column: 23, scope: !1699)
!2108 = !DILocation(line: 676, column: 33, scope: !1698)
!2109 = !DILocation(line: 676, column: 24, scope: !1698)
!2110 = !DILocation(line: 678, column: 17, scope: !1698)
!2111 = !DILocation(line: 680, column: 43, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !139, line: 680, column: 25)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !139, line: 679, column: 19)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !139, line: 678, column: 17)
!2115 = distinct !DILexicalBlock(scope: !1698, file: !139, line: 678, column: 17)
!2116 = !DILocation(line: 682, column: 25, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2118, file: !139, discriminator: 1)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !139, line: 682, column: 25)
!2119 = distinct !DILexicalBlock(scope: !2112, file: !139, line: 681, column: 23)
!2120 = !DILocation(line: 682, column: 25, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2122, file: !139, discriminator: 4)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !139, line: 682, column: 25)
!2123 = !DILocation(line: 682, column: 25, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2122, file: !139, discriminator: 3)
!2125 = !DILocation(line: 682, column: 25, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2127, file: !139, discriminator: 6)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !139, line: 682, column: 25)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !139, line: 682, column: 25)
!2129 = distinct !DILexicalBlock(scope: !2122, file: !139, line: 682, column: 25)
!2130 = !DILocation(line: 682, column: 25, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2128, file: !139, discriminator: 6)
!2132 = !DILocation(line: 682, column: 25, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2127, file: !139, discriminator: 7)
!2134 = !DILocation(line: 682, column: 25, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2128, file: !139, discriminator: 8)
!2136 = !DILocation(line: 682, column: 25, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2138, file: !139, discriminator: 11)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !139, line: 682, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2129, file: !139, line: 682, column: 25)
!2140 = !DILocation(line: 682, column: 25, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2139, file: !139, discriminator: 11)
!2142 = !DILocation(line: 682, column: 25, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2138, file: !139, discriminator: 12)
!2144 = !DILocation(line: 682, column: 25, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2139, file: !139, discriminator: 13)
!2146 = !DILocation(line: 682, column: 25, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2148, file: !139, discriminator: 16)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !139, line: 682, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2129, file: !139, line: 682, column: 25)
!2150 = !DILocation(line: 682, column: 25, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2149, file: !139, discriminator: 16)
!2152 = !DILocation(line: 682, column: 25, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2148, file: !139, discriminator: 17)
!2154 = !DILocation(line: 682, column: 25, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2149, file: !139, discriminator: 18)
!2156 = !DILocation(line: 682, column: 25, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2129, file: !139, discriminator: 20)
!2158 = !DILocation(line: 682, column: 25, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !139, discriminator: 22)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !139, line: 682, column: 25)
!2161 = distinct !DILexicalBlock(scope: !2118, file: !139, line: 682, column: 25)
!2162 = !DILocation(line: 682, column: 25, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2161, file: !139, discriminator: 22)
!2164 = !DILocation(line: 682, column: 25, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2160, file: !139, discriminator: 23)
!2166 = !DILocation(line: 682, column: 25, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2161, file: !139, discriminator: 24)
!2168 = !DILocation(line: 683, column: 25, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2170, file: !139, discriminator: 1)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !139, line: 683, column: 25)
!2171 = distinct !DILexicalBlock(scope: !2119, file: !139, line: 683, column: 25)
!2172 = !DILocation(line: 683, column: 25, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2171, file: !139, discriminator: 1)
!2174 = !DILocation(line: 683, column: 25, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2170, file: !139, discriminator: 2)
!2176 = !DILocation(line: 683, column: 25, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2171, file: !139, discriminator: 3)
!2178 = !DILocation(line: 684, column: 25, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2180, file: !139, discriminator: 1)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !139, line: 684, column: 25)
!2181 = distinct !DILexicalBlock(scope: !2119, file: !139, line: 684, column: 25)
!2182 = !DILocation(line: 684, column: 25, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2181, file: !139, discriminator: 1)
!2184 = !DILocation(line: 684, column: 25, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2180, file: !139, discriminator: 2)
!2186 = !DILocation(line: 684, column: 25, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2181, file: !139, discriminator: 3)
!2188 = !DILocation(line: 685, column: 38, scope: !2119)
!2189 = !DILocation(line: 685, column: 33, scope: !2119)
!2190 = !DILocation(line: 686, column: 23, scope: !2119)
!2191 = !DILocation(line: 687, column: 30, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2112, file: !139, line: 687, column: 30)
!2193 = !DILocation(line: 687, column: 30, scope: !2112)
!2194 = !DILocation(line: 689, column: 25, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2196, file: !139, discriminator: 1)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !139, line: 689, column: 25)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !139, line: 689, column: 25)
!2198 = distinct !DILexicalBlock(scope: !2192, file: !139, line: 688, column: 23)
!2199 = !DILocation(line: 689, column: 25, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2197, file: !139, discriminator: 1)
!2201 = !DILocation(line: 689, column: 25, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2196, file: !139, discriminator: 2)
!2203 = !DILocation(line: 689, column: 25, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2197, file: !139, discriminator: 3)
!2205 = !DILocation(line: 691, column: 23, scope: !2198)
!2206 = !DILocation(line: 692, column: 35, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2113, file: !139, line: 692, column: 25)
!2208 = !DILocation(line: 692, column: 30, scope: !2207)
!2209 = !DILocation(line: 692, column: 25, scope: !2113)
!2210 = !DILocation(line: 694, column: 21, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2212, file: !139, discriminator: 1)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !139, line: 694, column: 21)
!2213 = distinct !DILexicalBlock(scope: !2113, file: !139, line: 694, column: 21)
!2214 = !DILocation(line: 694, column: 21, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2212, file: !139, discriminator: 2)
!2216 = !DILocation(line: 694, column: 21, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2218, file: !139, discriminator: 4)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !139, line: 694, column: 21)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !139, line: 694, column: 21)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !139, line: 694, column: 21)
!2221 = !DILocation(line: 694, column: 21, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2219, file: !139, discriminator: 4)
!2223 = !DILocation(line: 694, column: 21, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2218, file: !139, discriminator: 5)
!2225 = !DILocation(line: 694, column: 21, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2219, file: !139, discriminator: 6)
!2227 = !DILocation(line: 694, column: 21, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2229, file: !139, discriminator: 9)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !139, line: 694, column: 21)
!2230 = distinct !DILexicalBlock(scope: !2220, file: !139, line: 694, column: 21)
!2231 = !DILocation(line: 694, column: 21, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2230, file: !139, discriminator: 9)
!2233 = !DILocation(line: 694, column: 21, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2229, file: !139, discriminator: 10)
!2235 = !DILocation(line: 694, column: 21, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2230, file: !139, discriminator: 11)
!2237 = !DILocation(line: 694, column: 21, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2220, file: !139, discriminator: 13)
!2239 = !DILocation(line: 695, column: 21, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2241, file: !139, discriminator: 1)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !139, line: 695, column: 21)
!2242 = distinct !DILexicalBlock(scope: !2113, file: !139, line: 695, column: 21)
!2243 = !DILocation(line: 695, column: 21, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2242, file: !139, discriminator: 1)
!2245 = !DILocation(line: 695, column: 21, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2241, file: !139, discriminator: 2)
!2247 = !DILocation(line: 695, column: 21, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2242, file: !139, discriminator: 3)
!2249 = !DILocation(line: 696, column: 25, scope: !2113)
!2250 = !DILocation(line: 678, column: 17, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2114, file: !139, discriminator: 1)
!2252 = distinct !{!2252, !2253, !2254}
!2253 = !DILocation(line: 678, column: 17, scope: !2115)
!2254 = !DILocation(line: 697, column: 19, scope: !2115)
!2255 = !DILocation(line: 704, column: 34, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !1658, file: !139, line: 704, column: 11)
!2257 = !DILocation(line: 706, column: 14, scope: !2256)
!2258 = !DILocation(line: 707, column: 14, scope: !2256)
!2259 = !DILocation(line: 707, column: 35, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2256, file: !139, discriminator: 1)
!2261 = !DILocation(line: 707, column: 17, scope: !2260)
!2262 = !DILocation(line: 707, column: 53, scope: !2260)
!2263 = !DILocation(line: 707, column: 47, scope: !2260)
!2264 = !DILocation(line: 707, column: 65, scope: !2260)
!2265 = !DILocation(line: 708, column: 15, scope: !2260)
!2266 = !DILocation(line: 708, column: 11, scope: !2256)
!2267 = !DILocation(line: 704, column: 11, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !1658, file: !139, discriminator: 2)
!2269 = !DILocation(line: 712, column: 7, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2271, file: !139, discriminator: 1)
!2271 = distinct !DILexicalBlock(scope: !1658, file: !139, line: 712, column: 7)
!2272 = !DILocation(line: 712, column: 7, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2274, file: !139, discriminator: 4)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !139, line: 712, column: 7)
!2275 = !DILocation(line: 712, column: 7, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2274, file: !139, discriminator: 3)
!2277 = !DILocation(line: 712, column: 7, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2279, file: !139, discriminator: 6)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !139, line: 712, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !139, line: 712, column: 7)
!2281 = distinct !DILexicalBlock(scope: !2274, file: !139, line: 712, column: 7)
!2282 = !DILocation(line: 712, column: 7, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2280, file: !139, discriminator: 6)
!2284 = !DILocation(line: 712, column: 7, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2279, file: !139, discriminator: 7)
!2286 = !DILocation(line: 712, column: 7, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2280, file: !139, discriminator: 8)
!2288 = !DILocation(line: 712, column: 7, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2290, file: !139, discriminator: 11)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !139, line: 712, column: 7)
!2291 = distinct !DILexicalBlock(scope: !2281, file: !139, line: 712, column: 7)
!2292 = !DILocation(line: 712, column: 7, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2291, file: !139, discriminator: 11)
!2294 = !DILocation(line: 712, column: 7, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2290, file: !139, discriminator: 12)
!2296 = !DILocation(line: 712, column: 7, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2291, file: !139, discriminator: 13)
!2298 = !DILocation(line: 712, column: 7, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2300, file: !139, discriminator: 16)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !139, line: 712, column: 7)
!2301 = distinct !DILexicalBlock(scope: !2281, file: !139, line: 712, column: 7)
!2302 = !DILocation(line: 712, column: 7, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2301, file: !139, discriminator: 16)
!2304 = !DILocation(line: 712, column: 7, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2300, file: !139, discriminator: 17)
!2306 = !DILocation(line: 712, column: 7, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2301, file: !139, discriminator: 18)
!2308 = !DILocation(line: 712, column: 7, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2281, file: !139, discriminator: 20)
!2310 = !DILocation(line: 712, column: 7, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2312, file: !139, discriminator: 22)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !139, line: 712, column: 7)
!2313 = distinct !DILexicalBlock(scope: !2271, file: !139, line: 712, column: 7)
!2314 = !DILocation(line: 712, column: 7, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2313, file: !139, discriminator: 22)
!2316 = !DILocation(line: 712, column: 7, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2312, file: !139, discriminator: 23)
!2318 = !DILocation(line: 712, column: 7, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2313, file: !139, discriminator: 24)
!2320 = !DILocation(line: 715, column: 7, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2322, file: !139, discriminator: 1)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !139, line: 715, column: 7)
!2323 = distinct !DILexicalBlock(scope: !1658, file: !139, line: 715, column: 7)
!2324 = !DILocation(line: 715, column: 7, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2322, file: !139, discriminator: 2)
!2326 = !DILocation(line: 715, column: 7, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !139, discriminator: 4)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !139, line: 715, column: 7)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !139, line: 715, column: 7)
!2330 = distinct !DILexicalBlock(scope: !2322, file: !139, line: 715, column: 7)
!2331 = !DILocation(line: 715, column: 7, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2329, file: !139, discriminator: 4)
!2333 = !DILocation(line: 715, column: 7, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2328, file: !139, discriminator: 5)
!2335 = !DILocation(line: 715, column: 7, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2329, file: !139, discriminator: 6)
!2337 = !DILocation(line: 715, column: 7, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2339, file: !139, discriminator: 9)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !139, line: 715, column: 7)
!2340 = distinct !DILexicalBlock(scope: !2330, file: !139, line: 715, column: 7)
!2341 = !DILocation(line: 715, column: 7, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2340, file: !139, discriminator: 9)
!2343 = !DILocation(line: 715, column: 7, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2339, file: !139, discriminator: 10)
!2345 = !DILocation(line: 715, column: 7, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2340, file: !139, discriminator: 11)
!2347 = !DILocation(line: 715, column: 7, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2330, file: !139, discriminator: 13)
!2349 = !DILocation(line: 716, column: 7, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2351, file: !139, discriminator: 1)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !139, line: 716, column: 7)
!2352 = distinct !DILexicalBlock(scope: !1658, file: !139, line: 716, column: 7)
!2353 = !DILocation(line: 716, column: 7, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !2352, file: !139, discriminator: 1)
!2355 = !DILocation(line: 716, column: 7, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2351, file: !139, discriminator: 2)
!2357 = !DILocation(line: 716, column: 7, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2352, file: !139, discriminator: 3)
!2359 = !DILocation(line: 718, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !1658, file: !139, line: 718, column: 11)
!2361 = !DILocation(line: 718, column: 11, scope: !1658)
!2362 = !DILocation(line: 720, column: 5, scope: !1659)
!2363 = !DILocation(line: 392, column: 75, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !1659, file: !139, discriminator: 5)
!2365 = !DILocation(line: 392, column: 3, scope: !2364)
!2366 = distinct !{!2366, !2367, !2368}
!2367 = !DILocation(line: 392, column: 3, scope: !1660)
!2368 = !DILocation(line: 720, column: 5, scope: !1660)
!2369 = !DILocation(line: 722, column: 11, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !1631, file: !139, line: 722, column: 7)
!2371 = !DILocation(line: 722, column: 16, scope: !2370)
!2372 = !DILocation(line: 730, column: 51, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !1631, file: !139, line: 730, column: 7)
!2374 = !DILocation(line: 731, column: 10, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2373, file: !139, discriminator: 1)
!2376 = !DILocation(line: 733, column: 11, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !139, line: 733, column: 11)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !139, line: 732, column: 5)
!2379 = !DILocation(line: 733, column: 11, scope: !2378)
!2380 = !DILocation(line: 734, column: 16, scope: !2377)
!2381 = !DILocation(line: 734, column: 9, scope: !2377)
!2382 = !DILocation(line: 738, column: 18, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !139, line: 738, column: 16)
!2384 = !DILocation(line: 738, column: 32, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2383, file: !139, discriminator: 1)
!2386 = !DILocation(line: 738, column: 29, scope: !2383)
!2387 = !DILocation(line: 747, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !1631, file: !139, line: 747, column: 7)
!2389 = !DILocation(line: 747, column: 20, scope: !2388)
!2390 = !DILocation(line: 748, column: 12, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2392, file: !139, discriminator: 1)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !139, line: 748, column: 5)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !139, line: 748, column: 5)
!2394 = !DILocation(line: 748, column: 5, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2393, file: !139, discriminator: 1)
!2396 = !DILocation(line: 749, column: 7, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2398, file: !139, discriminator: 1)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !139, line: 749, column: 7)
!2399 = distinct !DILexicalBlock(scope: !2392, file: !139, line: 749, column: 7)
!2400 = !DILocation(line: 749, column: 7, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2399, file: !139, discriminator: 1)
!2402 = !DILocation(line: 749, column: 7, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2398, file: !139, discriminator: 2)
!2404 = !DILocation(line: 749, column: 7, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2399, file: !139, discriminator: 3)
!2406 = !DILocation(line: 748, column: 39, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2392, file: !139, discriminator: 2)
!2408 = distinct !{!2408, !2409, !2410}
!2409 = !DILocation(line: 748, column: 5, scope: !2393)
!2410 = !DILocation(line: 749, column: 7, scope: !2393)
!2411 = !DILocation(line: 751, column: 11, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !1631, file: !139, line: 751, column: 7)
!2413 = !DILocation(line: 751, column: 7, scope: !1631)
!2414 = !DILocation(line: 752, column: 5, scope: !2412)
!2415 = !DILocation(line: 752, column: 17, scope: !2412)
!2416 = !DILocation(line: 758, column: 21, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !1631, file: !139, line: 758, column: 7)
!2418 = !DILocation(line: 758, column: 54, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2417, file: !139, discriminator: 1)
!2420 = !DILocation(line: 758, column: 51, scope: !2417)
!2421 = !DILocation(line: 762, column: 42, scope: !1631)
!2422 = !DILocation(line: 760, column: 10, scope: !1631)
!2423 = !DILocation(line: 760, column: 3, scope: !1631)
!2424 = !DILocation(line: 764, column: 1, scope: !1631)
!2425 = distinct !DISubprogram(name: "gettext_quote", scope: !139, file: !139, line: 199, type: !2426, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!17, !17, !100}
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DILocalVariable(name: "msgid", arg: 1, scope: !2425, file: !139, line: 199, type: !17)
!2430 = !DILocalVariable(name: "s", arg: 2, scope: !2425, file: !139, line: 199, type: !100)
!2431 = !DILocalVariable(name: "translation", scope: !2425, file: !139, line: 201, type: !17)
!2432 = !DILocalVariable(name: "locale_code", scope: !2425, file: !139, line: 202, type: !17)
!2433 = !DILocation(line: 199, column: 28, scope: !2425)
!2434 = !DILocation(line: 199, column: 54, scope: !2425)
!2435 = !DILocation(line: 201, column: 29, scope: !2425)
!2436 = !DILocation(line: 201, column: 15, scope: !2425)
!2437 = !DILocation(line: 204, column: 19, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2425, file: !139, line: 204, column: 7)
!2439 = !DILocation(line: 204, column: 7, scope: !2425)
!2440 = !DILocation(line: 225, column: 17, scope: !2425)
!2441 = !DILocation(line: 202, column: 15, scope: !2425)
!2442 = !DILocalVariable(name: "s2", arg: 2, scope: !2443, file: !2444, line: 160, type: !17)
!2443 = distinct !DISubprogram(name: "strcaseeq0", scope: !2444, file: !2444, line: 160, type: !2445, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2447)
!2444 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!50, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!2447 = !{!2448, !2442, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457}
!2448 = !DILocalVariable(name: "s1", arg: 1, scope: !2443, file: !2444, line: 160, type: !17)
!2449 = !DILocalVariable(name: "s20", arg: 3, scope: !2443, file: !2444, line: 160, type: !7)
!2450 = !DILocalVariable(name: "s21", arg: 4, scope: !2443, file: !2444, line: 160, type: !7)
!2451 = !DILocalVariable(name: "s22", arg: 5, scope: !2443, file: !2444, line: 160, type: !7)
!2452 = !DILocalVariable(name: "s23", arg: 6, scope: !2443, file: !2444, line: 160, type: !7)
!2453 = !DILocalVariable(name: "s24", arg: 7, scope: !2443, file: !2444, line: 160, type: !7)
!2454 = !DILocalVariable(name: "s25", arg: 8, scope: !2443, file: !2444, line: 160, type: !7)
!2455 = !DILocalVariable(name: "s26", arg: 9, scope: !2443, file: !2444, line: 160, type: !7)
!2456 = !DILocalVariable(name: "s27", arg: 10, scope: !2443, file: !2444, line: 160, type: !7)
!2457 = !DILocalVariable(name: "s28", arg: 11, scope: !2443, file: !2444, line: 160, type: !7)
!2458 = !DILocation(line: 160, column: 41, scope: !2443, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 226, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2425, file: !139, line: 226, column: 7)
!2461 = !DILocation(line: 160, column: 120, scope: !2443, inlinedAt: !2459)
!2462 = !DILocation(line: 160, column: 130, scope: !2443, inlinedAt: !2459)
!2463 = !DILocation(line: 162, column: 7, scope: !2464, inlinedAt: !2459)
!2464 = !DILexicalBlockFile(scope: !2465, file: !2444, discriminator: 1)
!2465 = distinct !DILexicalBlock(scope: !2443, file: !2444, line: 162, column: 7)
!2466 = !DILocalVariable(name: "s2", arg: 2, scope: !2467, file: !2444, line: 146, type: !17)
!2467 = distinct !DISubprogram(name: "strcaseeq1", scope: !2444, file: !2444, line: 146, type: !2468, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!50, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!2470 = !{!2471, !2466, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2471 = !DILocalVariable(name: "s1", arg: 1, scope: !2467, file: !2444, line: 146, type: !17)
!2472 = !DILocalVariable(name: "s21", arg: 3, scope: !2467, file: !2444, line: 146, type: !7)
!2473 = !DILocalVariable(name: "s22", arg: 4, scope: !2467, file: !2444, line: 146, type: !7)
!2474 = !DILocalVariable(name: "s23", arg: 5, scope: !2467, file: !2444, line: 146, type: !7)
!2475 = !DILocalVariable(name: "s24", arg: 6, scope: !2467, file: !2444, line: 146, type: !7)
!2476 = !DILocalVariable(name: "s25", arg: 7, scope: !2467, file: !2444, line: 146, type: !7)
!2477 = !DILocalVariable(name: "s26", arg: 8, scope: !2467, file: !2444, line: 146, type: !7)
!2478 = !DILocalVariable(name: "s27", arg: 9, scope: !2467, file: !2444, line: 146, type: !7)
!2479 = !DILocalVariable(name: "s28", arg: 10, scope: !2467, file: !2444, line: 146, type: !7)
!2480 = !DILocation(line: 146, column: 41, scope: !2467, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 167, column: 16, scope: !2482, inlinedAt: !2459)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !2444, line: 164, column: 11)
!2483 = distinct !DILexicalBlock(scope: !2465, file: !2444, line: 163, column: 5)
!2484 = !DILocation(line: 146, column: 110, scope: !2467, inlinedAt: !2481)
!2485 = !DILocation(line: 146, column: 120, scope: !2467, inlinedAt: !2481)
!2486 = !DILocation(line: 148, column: 7, scope: !2487, inlinedAt: !2481)
!2487 = !DILexicalBlockFile(scope: !2488, file: !2444, discriminator: 1)
!2488 = distinct !DILexicalBlock(scope: !2467, file: !2444, line: 148, column: 7)
!2489 = !DILocalVariable(name: "s2", arg: 2, scope: !2490, file: !2444, line: 132, type: !17)
!2490 = distinct !DISubprogram(name: "strcaseeq2", scope: !2444, file: !2444, line: 132, type: !2491, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!50, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!2493 = !{!2494, !2489, !2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2494 = !DILocalVariable(name: "s1", arg: 1, scope: !2490, file: !2444, line: 132, type: !17)
!2495 = !DILocalVariable(name: "s22", arg: 3, scope: !2490, file: !2444, line: 132, type: !7)
!2496 = !DILocalVariable(name: "s23", arg: 4, scope: !2490, file: !2444, line: 132, type: !7)
!2497 = !DILocalVariable(name: "s24", arg: 5, scope: !2490, file: !2444, line: 132, type: !7)
!2498 = !DILocalVariable(name: "s25", arg: 6, scope: !2490, file: !2444, line: 132, type: !7)
!2499 = !DILocalVariable(name: "s26", arg: 7, scope: !2490, file: !2444, line: 132, type: !7)
!2500 = !DILocalVariable(name: "s27", arg: 8, scope: !2490, file: !2444, line: 132, type: !7)
!2501 = !DILocalVariable(name: "s28", arg: 9, scope: !2490, file: !2444, line: 132, type: !7)
!2502 = !DILocation(line: 132, column: 41, scope: !2490, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 153, column: 16, scope: !2504, inlinedAt: !2481)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !2444, line: 150, column: 11)
!2505 = distinct !DILexicalBlock(scope: !2488, file: !2444, line: 149, column: 5)
!2506 = !DILocation(line: 132, column: 100, scope: !2490, inlinedAt: !2503)
!2507 = !DILocation(line: 132, column: 110, scope: !2490, inlinedAt: !2503)
!2508 = !DILocation(line: 134, column: 7, scope: !2509, inlinedAt: !2503)
!2509 = !DILexicalBlockFile(scope: !2510, file: !2444, discriminator: 1)
!2510 = distinct !DILexicalBlock(scope: !2490, file: !2444, line: 134, column: 7)
!2511 = !DILocalVariable(name: "s2", arg: 2, scope: !2512, file: !2444, line: 118, type: !17)
!2512 = distinct !DISubprogram(name: "strcaseeq3", scope: !2444, file: !2444, line: 118, type: !2513, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!50, !17, !17, !7, !7, !7, !7, !7, !7}
!2515 = !{!2516, !2511, !2517, !2518, !2519, !2520, !2521, !2522}
!2516 = !DILocalVariable(name: "s1", arg: 1, scope: !2512, file: !2444, line: 118, type: !17)
!2517 = !DILocalVariable(name: "s23", arg: 3, scope: !2512, file: !2444, line: 118, type: !7)
!2518 = !DILocalVariable(name: "s24", arg: 4, scope: !2512, file: !2444, line: 118, type: !7)
!2519 = !DILocalVariable(name: "s25", arg: 5, scope: !2512, file: !2444, line: 118, type: !7)
!2520 = !DILocalVariable(name: "s26", arg: 6, scope: !2512, file: !2444, line: 118, type: !7)
!2521 = !DILocalVariable(name: "s27", arg: 7, scope: !2512, file: !2444, line: 118, type: !7)
!2522 = !DILocalVariable(name: "s28", arg: 8, scope: !2512, file: !2444, line: 118, type: !7)
!2523 = !DILocation(line: 118, column: 41, scope: !2512, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 139, column: 16, scope: !2525, inlinedAt: !2503)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !2444, line: 136, column: 11)
!2526 = distinct !DILexicalBlock(scope: !2510, file: !2444, line: 135, column: 5)
!2527 = !DILocation(line: 118, column: 90, scope: !2512, inlinedAt: !2524)
!2528 = !DILocation(line: 118, column: 100, scope: !2512, inlinedAt: !2524)
!2529 = !DILocation(line: 120, column: 7, scope: !2530, inlinedAt: !2524)
!2530 = !DILexicalBlockFile(scope: !2531, file: !2444, discriminator: 2)
!2531 = distinct !DILexicalBlock(scope: !2512, file: !2444, line: 120, column: 7)
!2532 = !DILocation(line: 120, column: 7, scope: !2533, inlinedAt: !2524)
!2533 = !DILexicalBlockFile(scope: !2512, file: !2444, discriminator: 2)
!2534 = !DILocalVariable(name: "s2", arg: 2, scope: !2535, file: !2444, line: 104, type: !17)
!2535 = distinct !DISubprogram(name: "strcaseeq4", scope: !2444, file: !2444, line: 104, type: !2536, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!50, !17, !17, !7, !7, !7, !7, !7}
!2538 = !{!2539, !2534, !2540, !2541, !2542, !2543, !2544}
!2539 = !DILocalVariable(name: "s1", arg: 1, scope: !2535, file: !2444, line: 104, type: !17)
!2540 = !DILocalVariable(name: "s24", arg: 3, scope: !2535, file: !2444, line: 104, type: !7)
!2541 = !DILocalVariable(name: "s25", arg: 4, scope: !2535, file: !2444, line: 104, type: !7)
!2542 = !DILocalVariable(name: "s26", arg: 5, scope: !2535, file: !2444, line: 104, type: !7)
!2543 = !DILocalVariable(name: "s27", arg: 6, scope: !2535, file: !2444, line: 104, type: !7)
!2544 = !DILocalVariable(name: "s28", arg: 7, scope: !2535, file: !2444, line: 104, type: !7)
!2545 = !DILocation(line: 104, column: 41, scope: !2535, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 125, column: 16, scope: !2547, inlinedAt: !2524)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !2444, line: 122, column: 11)
!2548 = distinct !DILexicalBlock(scope: !2531, file: !2444, line: 121, column: 5)
!2549 = !DILocation(line: 104, column: 80, scope: !2535, inlinedAt: !2546)
!2550 = !DILocation(line: 104, column: 90, scope: !2535, inlinedAt: !2546)
!2551 = !DILocation(line: 106, column: 7, scope: !2552, inlinedAt: !2546)
!2552 = !DILexicalBlockFile(scope: !2553, file: !2444, discriminator: 2)
!2553 = distinct !DILexicalBlock(scope: !2535, file: !2444, line: 106, column: 7)
!2554 = !DILocation(line: 106, column: 7, scope: !2555, inlinedAt: !2546)
!2555 = !DILexicalBlockFile(scope: !2535, file: !2444, discriminator: 2)
!2556 = !DILocalVariable(name: "s2", arg: 2, scope: !2557, file: !2444, line: 90, type: !17)
!2557 = distinct !DISubprogram(name: "strcaseeq5", scope: !2444, file: !2444, line: 90, type: !2558, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!50, !17, !17, !7, !7, !7, !7}
!2560 = !{!2561, !2556, !2562, !2563, !2564, !2565}
!2561 = !DILocalVariable(name: "s1", arg: 1, scope: !2557, file: !2444, line: 90, type: !17)
!2562 = !DILocalVariable(name: "s25", arg: 3, scope: !2557, file: !2444, line: 90, type: !7)
!2563 = !DILocalVariable(name: "s26", arg: 4, scope: !2557, file: !2444, line: 90, type: !7)
!2564 = !DILocalVariable(name: "s27", arg: 5, scope: !2557, file: !2444, line: 90, type: !7)
!2565 = !DILocalVariable(name: "s28", arg: 6, scope: !2557, file: !2444, line: 90, type: !7)
!2566 = !DILocation(line: 90, column: 41, scope: !2557, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 111, column: 16, scope: !2568, inlinedAt: !2546)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !2444, line: 108, column: 11)
!2569 = distinct !DILexicalBlock(scope: !2553, file: !2444, line: 107, column: 5)
!2570 = !DILocation(line: 90, column: 70, scope: !2557, inlinedAt: !2567)
!2571 = !DILocation(line: 90, column: 80, scope: !2557, inlinedAt: !2567)
!2572 = !DILocation(line: 92, column: 7, scope: !2573, inlinedAt: !2567)
!2573 = !DILexicalBlockFile(scope: !2574, file: !2444, discriminator: 2)
!2574 = distinct !DILexicalBlock(scope: !2557, file: !2444, line: 92, column: 7)
!2575 = !DILocation(line: 92, column: 7, scope: !2576, inlinedAt: !2567)
!2576 = !DILexicalBlockFile(scope: !2557, file: !2444, discriminator: 2)
!2577 = !DILocation(line: 227, column: 12, scope: !2460)
!2578 = !DILocation(line: 227, column: 21, scope: !2460)
!2579 = !DILocation(line: 227, column: 5, scope: !2460)
!2580 = !DILocation(line: 146, column: 41, scope: !2467, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 167, column: 16, scope: !2482, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 228, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2425, file: !139, line: 228, column: 7)
!2584 = !DILocation(line: 146, column: 110, scope: !2467, inlinedAt: !2581)
!2585 = !DILocation(line: 146, column: 120, scope: !2467, inlinedAt: !2581)
!2586 = !DILocation(line: 148, column: 7, scope: !2487, inlinedAt: !2581)
!2587 = !DILocation(line: 132, column: 41, scope: !2490, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 153, column: 16, scope: !2504, inlinedAt: !2581)
!2589 = !DILocation(line: 132, column: 100, scope: !2490, inlinedAt: !2588)
!2590 = !DILocation(line: 132, column: 110, scope: !2490, inlinedAt: !2588)
!2591 = !DILocation(line: 134, column: 7, scope: !2592, inlinedAt: !2588)
!2592 = !DILexicalBlockFile(scope: !2510, file: !2444, discriminator: 2)
!2593 = !DILocation(line: 134, column: 7, scope: !2594, inlinedAt: !2588)
!2594 = !DILexicalBlockFile(scope: !2490, file: !2444, discriminator: 2)
!2595 = !DILocation(line: 118, column: 41, scope: !2512, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 139, column: 16, scope: !2525, inlinedAt: !2588)
!2597 = !DILocation(line: 118, column: 90, scope: !2512, inlinedAt: !2596)
!2598 = !DILocation(line: 118, column: 100, scope: !2512, inlinedAt: !2596)
!2599 = !DILocation(line: 120, column: 7, scope: !2530, inlinedAt: !2596)
!2600 = !DILocation(line: 120, column: 7, scope: !2533, inlinedAt: !2596)
!2601 = !DILocation(line: 104, column: 41, scope: !2535, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 125, column: 16, scope: !2547, inlinedAt: !2596)
!2603 = !DILocation(line: 104, column: 80, scope: !2535, inlinedAt: !2602)
!2604 = !DILocation(line: 104, column: 90, scope: !2535, inlinedAt: !2602)
!2605 = !DILocation(line: 106, column: 7, scope: !2552, inlinedAt: !2602)
!2606 = !DILocation(line: 106, column: 7, scope: !2555, inlinedAt: !2602)
!2607 = !DILocation(line: 90, column: 41, scope: !2557, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 111, column: 16, scope: !2568, inlinedAt: !2602)
!2609 = !DILocation(line: 90, column: 70, scope: !2557, inlinedAt: !2608)
!2610 = !DILocation(line: 90, column: 80, scope: !2557, inlinedAt: !2608)
!2611 = !DILocation(line: 92, column: 7, scope: !2573, inlinedAt: !2608)
!2612 = !DILocation(line: 92, column: 7, scope: !2576, inlinedAt: !2608)
!2613 = !DILocalVariable(name: "s2", arg: 2, scope: !2614, file: !2444, line: 76, type: !17)
!2614 = distinct !DISubprogram(name: "strcaseeq6", scope: !2444, file: !2444, line: 76, type: !2615, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!50, !17, !17, !7, !7, !7}
!2617 = !{!2618, !2613, !2619, !2620, !2621}
!2618 = !DILocalVariable(name: "s1", arg: 1, scope: !2614, file: !2444, line: 76, type: !17)
!2619 = !DILocalVariable(name: "s26", arg: 3, scope: !2614, file: !2444, line: 76, type: !7)
!2620 = !DILocalVariable(name: "s27", arg: 4, scope: !2614, file: !2444, line: 76, type: !7)
!2621 = !DILocalVariable(name: "s28", arg: 5, scope: !2614, file: !2444, line: 76, type: !7)
!2622 = !DILocation(line: 76, column: 41, scope: !2614, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 97, column: 16, scope: !2624, inlinedAt: !2608)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !2444, line: 94, column: 11)
!2625 = distinct !DILexicalBlock(scope: !2574, file: !2444, line: 93, column: 5)
!2626 = !DILocation(line: 76, column: 60, scope: !2614, inlinedAt: !2623)
!2627 = !DILocation(line: 76, column: 70, scope: !2614, inlinedAt: !2623)
!2628 = !DILocation(line: 78, column: 7, scope: !2629, inlinedAt: !2623)
!2629 = !DILexicalBlockFile(scope: !2630, file: !2444, discriminator: 2)
!2630 = distinct !DILexicalBlock(scope: !2614, file: !2444, line: 78, column: 7)
!2631 = !DILocation(line: 78, column: 7, scope: !2632, inlinedAt: !2623)
!2632 = !DILexicalBlockFile(scope: !2614, file: !2444, discriminator: 2)
!2633 = !DILocalVariable(name: "s2", arg: 2, scope: !2634, file: !2444, line: 62, type: !17)
!2634 = distinct !DISubprogram(name: "strcaseeq7", scope: !2444, file: !2444, line: 62, type: !2635, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!50, !17, !17, !7, !7}
!2637 = !{!2638, !2633, !2639, !2640}
!2638 = !DILocalVariable(name: "s1", arg: 1, scope: !2634, file: !2444, line: 62, type: !17)
!2639 = !DILocalVariable(name: "s27", arg: 3, scope: !2634, file: !2444, line: 62, type: !7)
!2640 = !DILocalVariable(name: "s28", arg: 4, scope: !2634, file: !2444, line: 62, type: !7)
!2641 = !DILocation(line: 62, column: 41, scope: !2634, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 83, column: 16, scope: !2643, inlinedAt: !2623)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !2444, line: 80, column: 11)
!2644 = distinct !DILexicalBlock(scope: !2630, file: !2444, line: 79, column: 5)
!2645 = !DILocation(line: 62, column: 50, scope: !2634, inlinedAt: !2642)
!2646 = !DILocation(line: 62, column: 60, scope: !2634, inlinedAt: !2642)
!2647 = !DILocation(line: 64, column: 7, scope: !2648, inlinedAt: !2642)
!2648 = !DILexicalBlockFile(scope: !2649, file: !2444, discriminator: 2)
!2649 = distinct !DILexicalBlock(scope: !2634, file: !2444, line: 64, column: 7)
!2650 = !DILocation(line: 228, column: 7, scope: !2425)
!2651 = !DILocation(line: 229, column: 12, scope: !2583)
!2652 = !DILocation(line: 229, column: 21, scope: !2583)
!2653 = !DILocation(line: 229, column: 5, scope: !2583)
!2654 = !DILocation(line: 231, column: 13, scope: !2425)
!2655 = !DILocation(line: 231, column: 11, scope: !2425)
!2656 = !DILocation(line: 231, column: 3, scope: !2425)
!2657 = !DILocation(line: 232, column: 1, scope: !2425)
!2658 = distinct !DISubprogram(name: "quotearg_alloc", scope: !139, file: !139, line: 791, type: !2659, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!6, !17, !9, !1499}
!2661 = !{!2662, !2663, !2664}
!2662 = !DILocalVariable(name: "arg", arg: 1, scope: !2658, file: !139, line: 791, type: !17)
!2663 = !DILocalVariable(name: "argsize", arg: 2, scope: !2658, file: !139, line: 791, type: !9)
!2664 = !DILocalVariable(name: "o", arg: 3, scope: !2658, file: !139, line: 792, type: !1499)
!2665 = !DILocation(line: 791, column: 29, scope: !2658)
!2666 = !DILocation(line: 791, column: 41, scope: !2658)
!2667 = !DILocation(line: 792, column: 47, scope: !2658)
!2668 = !DILocalVariable(name: "arg", arg: 1, scope: !2669, file: !139, line: 804, type: !17)
!2669 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !139, file: !139, line: 804, type: !2670, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!6, !17, !9, !605, !1499}
!2672 = !{!2668, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2673 = !DILocalVariable(name: "argsize", arg: 2, scope: !2669, file: !139, line: 804, type: !9)
!2674 = !DILocalVariable(name: "size", arg: 3, scope: !2669, file: !139, line: 804, type: !605)
!2675 = !DILocalVariable(name: "o", arg: 4, scope: !2669, file: !139, line: 805, type: !1499)
!2676 = !DILocalVariable(name: "p", scope: !2669, file: !139, line: 807, type: !1499)
!2677 = !DILocalVariable(name: "e", scope: !2669, file: !139, line: 808, type: !50)
!2678 = !DILocalVariable(name: "flags", scope: !2669, file: !139, line: 810, type: !50)
!2679 = !DILocalVariable(name: "bufsize", scope: !2669, file: !139, line: 811, type: !9)
!2680 = !DILocalVariable(name: "buf", scope: !2669, file: !139, line: 815, type: !6)
!2681 = !DILocation(line: 804, column: 33, scope: !2669, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 794, column: 10, scope: !2658)
!2683 = !DILocation(line: 804, column: 45, scope: !2669, inlinedAt: !2682)
!2684 = !DILocation(line: 804, column: 62, scope: !2669, inlinedAt: !2682)
!2685 = !DILocation(line: 805, column: 51, scope: !2669, inlinedAt: !2682)
!2686 = !DILocation(line: 807, column: 37, scope: !2669, inlinedAt: !2682)
!2687 = !DILocation(line: 807, column: 33, scope: !2669, inlinedAt: !2682)
!2688 = !DILocation(line: 808, column: 11, scope: !2669, inlinedAt: !2682)
!2689 = !DILocation(line: 808, column: 7, scope: !2669, inlinedAt: !2682)
!2690 = !DILocation(line: 810, column: 18, scope: !2669, inlinedAt: !2682)
!2691 = !DILocation(line: 810, column: 24, scope: !2669, inlinedAt: !2682)
!2692 = !DILocation(line: 810, column: 7, scope: !2669, inlinedAt: !2682)
!2693 = !DILocation(line: 811, column: 69, scope: !2669, inlinedAt: !2682)
!2694 = !DILocation(line: 812, column: 53, scope: !2669, inlinedAt: !2682)
!2695 = !DILocation(line: 813, column: 49, scope: !2669, inlinedAt: !2682)
!2696 = !DILocation(line: 814, column: 49, scope: !2669, inlinedAt: !2682)
!2697 = !DILocation(line: 811, column: 20, scope: !2669, inlinedAt: !2682)
!2698 = !DILocation(line: 814, column: 62, scope: !2669, inlinedAt: !2682)
!2699 = !DILocation(line: 811, column: 10, scope: !2669, inlinedAt: !2682)
!2700 = !DILocalVariable(name: "n", arg: 1, scope: !2701, file: !601, line: 220, type: !9)
!2701 = distinct !DISubprogram(name: "xcharalloc", scope: !601, file: !601, line: 220, type: !888, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2702)
!2702 = !{!2700}
!2703 = !DILocation(line: 220, column: 20, scope: !2701, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 815, column: 15, scope: !2669, inlinedAt: !2682)
!2705 = !DILocation(line: 222, column: 10, scope: !2701, inlinedAt: !2704)
!2706 = !DILocation(line: 815, column: 9, scope: !2669, inlinedAt: !2682)
!2707 = !DILocation(line: 816, column: 60, scope: !2669, inlinedAt: !2682)
!2708 = !DILocation(line: 818, column: 32, scope: !2669, inlinedAt: !2682)
!2709 = !DILocation(line: 818, column: 47, scope: !2669, inlinedAt: !2682)
!2710 = !DILocation(line: 816, column: 3, scope: !2669, inlinedAt: !2682)
!2711 = !DILocation(line: 819, column: 9, scope: !2669, inlinedAt: !2682)
!2712 = !DILocation(line: 794, column: 3, scope: !2658)
!2713 = !DILocation(line: 804, column: 33, scope: !2669)
!2714 = !DILocation(line: 804, column: 45, scope: !2669)
!2715 = !DILocation(line: 804, column: 62, scope: !2669)
!2716 = !DILocation(line: 805, column: 51, scope: !2669)
!2717 = !DILocation(line: 807, column: 37, scope: !2669)
!2718 = !DILocation(line: 807, column: 33, scope: !2669)
!2719 = !DILocation(line: 808, column: 11, scope: !2669)
!2720 = !DILocation(line: 808, column: 7, scope: !2669)
!2721 = !DILocation(line: 810, column: 18, scope: !2669)
!2722 = !DILocation(line: 810, column: 27, scope: !2669)
!2723 = !DILocation(line: 810, column: 24, scope: !2669)
!2724 = !DILocation(line: 810, column: 7, scope: !2669)
!2725 = !DILocation(line: 811, column: 69, scope: !2669)
!2726 = !DILocation(line: 812, column: 53, scope: !2669)
!2727 = !DILocation(line: 813, column: 49, scope: !2669)
!2728 = !DILocation(line: 814, column: 49, scope: !2669)
!2729 = !DILocation(line: 811, column: 20, scope: !2669)
!2730 = !DILocation(line: 814, column: 62, scope: !2669)
!2731 = !DILocation(line: 811, column: 10, scope: !2669)
!2732 = !DILocation(line: 220, column: 20, scope: !2701, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 815, column: 15, scope: !2669)
!2734 = !DILocation(line: 222, column: 10, scope: !2701, inlinedAt: !2733)
!2735 = !DILocation(line: 815, column: 9, scope: !2669)
!2736 = !DILocation(line: 816, column: 60, scope: !2669)
!2737 = !DILocation(line: 818, column: 32, scope: !2669)
!2738 = !DILocation(line: 818, column: 47, scope: !2669)
!2739 = !DILocation(line: 816, column: 3, scope: !2669)
!2740 = !DILocation(line: 819, column: 9, scope: !2669)
!2741 = !DILocation(line: 820, column: 7, scope: !2669)
!2742 = !DILocation(line: 821, column: 11, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2669, file: !139, line: 820, column: 7)
!2744 = !{!1188, !1188, i64 0}
!2745 = !DILocation(line: 821, column: 5, scope: !2743)
!2746 = !DILocation(line: 822, column: 3, scope: !2669)
!2747 = distinct !DISubprogram(name: "quotearg_free", scope: !139, file: !139, line: 840, type: !1102, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2748)
!2748 = !{!2749, !2750}
!2749 = !DILocalVariable(name: "sv", scope: !2747, file: !139, line: 842, type: !164)
!2750 = !DILocalVariable(name: "i", scope: !2747, file: !139, line: 843, type: !50)
!2751 = !DILocation(line: 842, column: 24, scope: !2747)
!2752 = !DILocation(line: 842, column: 19, scope: !2747)
!2753 = !DILocation(line: 843, column: 7, scope: !2747)
!2754 = !DILocation(line: 844, column: 19, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2756, file: !139, discriminator: 1)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !139, line: 844, column: 3)
!2757 = distinct !DILexicalBlock(scope: !2747, file: !139, line: 844, column: 3)
!2758 = !DILocation(line: 844, column: 17, scope: !2755)
!2759 = !DILocation(line: 844, column: 3, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2757, file: !139, discriminator: 1)
!2761 = !DILocation(line: 845, column: 17, scope: !2756)
!2762 = !{!2763, !714, i64 8}
!2763 = !{!"slotvec", !1188, i64 0, !714, i64 8}
!2764 = !DILocation(line: 845, column: 5, scope: !2756)
!2765 = !DILocation(line: 844, column: 28, scope: !2766)
!2766 = !DILexicalBlockFile(scope: !2756, file: !139, discriminator: 2)
!2767 = distinct !{!2767, !2768, !2769}
!2768 = !DILocation(line: 844, column: 3, scope: !2757)
!2769 = !DILocation(line: 845, column: 20, scope: !2757)
!2770 = !DILocation(line: 846, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2747, file: !139, line: 846, column: 7)
!2772 = !DILocation(line: 846, column: 17, scope: !2771)
!2773 = !DILocation(line: 846, column: 7, scope: !2747)
!2774 = !DILocation(line: 848, column: 7, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !139, line: 847, column: 5)
!2776 = !DILocation(line: 849, column: 21, scope: !2775)
!2777 = !{!2763, !1188, i64 0}
!2778 = !DILocation(line: 850, column: 20, scope: !2775)
!2779 = !DILocation(line: 851, column: 5, scope: !2775)
!2780 = !DILocation(line: 852, column: 10, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2747, file: !139, line: 852, column: 7)
!2782 = !DILocation(line: 852, column: 7, scope: !2747)
!2783 = !DILocation(line: 854, column: 13, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2781, file: !139, line: 853, column: 5)
!2785 = !DILocation(line: 854, column: 7, scope: !2784)
!2786 = !DILocation(line: 855, column: 15, scope: !2784)
!2787 = !DILocation(line: 856, column: 5, scope: !2784)
!2788 = !DILocation(line: 857, column: 10, scope: !2747)
!2789 = !DILocation(line: 858, column: 1, scope: !2747)
!2790 = distinct !DISubprogram(name: "quotearg_n", scope: !139, file: !139, line: 922, type: !2791, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!6, !50, !17}
!2793 = !{!2794, !2795}
!2794 = !DILocalVariable(name: "n", arg: 1, scope: !2790, file: !139, line: 922, type: !50)
!2795 = !DILocalVariable(name: "arg", arg: 2, scope: !2790, file: !139, line: 922, type: !17)
!2796 = !DILocation(line: 922, column: 17, scope: !2790)
!2797 = !DILocation(line: 922, column: 32, scope: !2790)
!2798 = !DILocation(line: 924, column: 10, scope: !2790)
!2799 = !DILocation(line: 924, column: 3, scope: !2790)
!2800 = distinct !DISubprogram(name: "quotearg_n_options", scope: !139, file: !139, line: 869, type: !2801, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!6, !50, !17, !9, !1499}
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809, !2810, !2813, !2815, !2816, !2817}
!2804 = !DILocalVariable(name: "n", arg: 1, scope: !2800, file: !139, line: 869, type: !50)
!2805 = !DILocalVariable(name: "arg", arg: 2, scope: !2800, file: !139, line: 869, type: !17)
!2806 = !DILocalVariable(name: "argsize", arg: 3, scope: !2800, file: !139, line: 869, type: !9)
!2807 = !DILocalVariable(name: "options", arg: 4, scope: !2800, file: !139, line: 870, type: !1499)
!2808 = !DILocalVariable(name: "e", scope: !2800, file: !139, line: 872, type: !50)
!2809 = !DILocalVariable(name: "sv", scope: !2800, file: !139, line: 874, type: !164)
!2810 = !DILocalVariable(name: "preallocated", scope: !2811, file: !139, line: 881, type: !22)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !139, line: 880, column: 5)
!2812 = distinct !DILexicalBlock(scope: !2800, file: !139, line: 879, column: 7)
!2813 = !DILocalVariable(name: "size", scope: !2814, file: !139, line: 894, type: !9)
!2814 = distinct !DILexicalBlock(scope: !2800, file: !139, line: 893, column: 3)
!2815 = !DILocalVariable(name: "val", scope: !2814, file: !139, line: 895, type: !6)
!2816 = !DILocalVariable(name: "flags", scope: !2814, file: !139, line: 897, type: !50)
!2817 = !DILocalVariable(name: "qsize", scope: !2814, file: !139, line: 898, type: !9)
!2818 = !DILocation(line: 869, column: 25, scope: !2800)
!2819 = !DILocation(line: 869, column: 40, scope: !2800)
!2820 = !DILocation(line: 869, column: 52, scope: !2800)
!2821 = !DILocation(line: 870, column: 51, scope: !2800)
!2822 = !DILocation(line: 872, column: 11, scope: !2800)
!2823 = !DILocation(line: 872, column: 7, scope: !2800)
!2824 = !DILocation(line: 874, column: 24, scope: !2800)
!2825 = !DILocation(line: 874, column: 19, scope: !2800)
!2826 = !DILocation(line: 876, column: 9, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2800, file: !139, line: 876, column: 7)
!2828 = !DILocation(line: 876, column: 7, scope: !2800)
!2829 = !DILocation(line: 877, column: 5, scope: !2827)
!2830 = !DILocation(line: 879, column: 7, scope: !2812)
!2831 = !DILocation(line: 879, column: 14, scope: !2812)
!2832 = !DILocation(line: 879, column: 7, scope: !2800)
!2833 = !DILocation(line: 881, column: 31, scope: !2811)
!2834 = !DILocation(line: 883, column: 67, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2811, file: !139, line: 883, column: 11)
!2836 = !DILocation(line: 883, column: 11, scope: !2811)
!2837 = !DILocation(line: 884, column: 9, scope: !2835)
!2838 = !DILocation(line: 886, column: 32, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2811, file: !139, discriminator: 3)
!2840 = !DILocation(line: 886, column: 61, scope: !2839)
!2841 = !DILocation(line: 886, column: 58, scope: !2839)
!2842 = !DILocation(line: 886, column: 66, scope: !2839)
!2843 = !DILocation(line: 886, column: 22, scope: !2839)
!2844 = !DILocation(line: 886, column: 15, scope: !2839)
!2845 = !DILocation(line: 887, column: 11, scope: !2811)
!2846 = !DILocation(line: 888, column: 15, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2811, file: !139, line: 887, column: 11)
!2848 = !{i64 0, i64 8, !2744, i64 8, i64 8, !713}
!2849 = !DILocation(line: 888, column: 9, scope: !2847)
!2850 = !DILocation(line: 889, column: 20, scope: !2811)
!2851 = !DILocation(line: 889, column: 18, scope: !2811)
!2852 = !DILocation(line: 889, column: 7, scope: !2811)
!2853 = !DILocation(line: 889, column: 38, scope: !2811)
!2854 = !DILocation(line: 889, column: 31, scope: !2811)
!2855 = !DILocation(line: 889, column: 48, scope: !2811)
!2856 = !DILocation(line: 890, column: 14, scope: !2811)
!2857 = !DILocation(line: 891, column: 5, scope: !2811)
!2858 = !DILocation(line: 894, column: 19, scope: !2814)
!2859 = !DILocation(line: 894, column: 25, scope: !2814)
!2860 = !DILocation(line: 894, column: 12, scope: !2814)
!2861 = !DILocation(line: 895, column: 23, scope: !2814)
!2862 = !DILocation(line: 895, column: 11, scope: !2814)
!2863 = !DILocation(line: 897, column: 26, scope: !2814)
!2864 = !DILocation(line: 897, column: 32, scope: !2814)
!2865 = !DILocation(line: 897, column: 9, scope: !2814)
!2866 = !DILocation(line: 899, column: 55, scope: !2814)
!2867 = !DILocation(line: 900, column: 46, scope: !2814)
!2868 = !DILocation(line: 901, column: 55, scope: !2814)
!2869 = !DILocation(line: 902, column: 55, scope: !2814)
!2870 = !DILocation(line: 898, column: 20, scope: !2814)
!2871 = !DILocation(line: 898, column: 12, scope: !2814)
!2872 = !DILocation(line: 904, column: 14, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2814, file: !139, line: 904, column: 9)
!2874 = !DILocation(line: 904, column: 9, scope: !2814)
!2875 = !DILocation(line: 906, column: 35, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !139, line: 905, column: 7)
!2877 = !DILocation(line: 906, column: 20, scope: !2876)
!2878 = !DILocation(line: 907, column: 17, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !139, line: 907, column: 13)
!2880 = !DILocation(line: 907, column: 13, scope: !2876)
!2881 = !DILocation(line: 908, column: 11, scope: !2879)
!2882 = !DILocation(line: 220, column: 20, scope: !2701, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 909, column: 27, scope: !2876)
!2884 = !DILocation(line: 222, column: 10, scope: !2701, inlinedAt: !2883)
!2885 = !DILocation(line: 909, column: 19, scope: !2876)
!2886 = !DILocation(line: 910, column: 69, scope: !2876)
!2887 = !DILocation(line: 912, column: 44, scope: !2876)
!2888 = !DILocation(line: 913, column: 44, scope: !2876)
!2889 = !DILocation(line: 910, column: 9, scope: !2876)
!2890 = !DILocation(line: 914, column: 7, scope: !2876)
!2891 = !DILocation(line: 916, column: 11, scope: !2814)
!2892 = !DILocation(line: 917, column: 5, scope: !2814)
!2893 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !139, file: !139, line: 928, type: !2894, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!6, !50, !17, !9}
!2896 = !{!2897, !2898, !2899}
!2897 = !DILocalVariable(name: "n", arg: 1, scope: !2893, file: !139, line: 928, type: !50)
!2898 = !DILocalVariable(name: "arg", arg: 2, scope: !2893, file: !139, line: 928, type: !17)
!2899 = !DILocalVariable(name: "argsize", arg: 3, scope: !2893, file: !139, line: 928, type: !9)
!2900 = !DILocation(line: 928, column: 21, scope: !2893)
!2901 = !DILocation(line: 928, column: 36, scope: !2893)
!2902 = !DILocation(line: 928, column: 48, scope: !2893)
!2903 = !DILocation(line: 930, column: 10, scope: !2893)
!2904 = !DILocation(line: 930, column: 3, scope: !2893)
!2905 = distinct !DISubprogram(name: "quotearg", scope: !139, file: !139, line: 934, type: !1265, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2906)
!2906 = !{!2907}
!2907 = !DILocalVariable(name: "arg", arg: 1, scope: !2905, file: !139, line: 934, type: !17)
!2908 = !DILocation(line: 934, column: 23, scope: !2905)
!2909 = !DILocation(line: 922, column: 17, scope: !2790, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 936, column: 10, scope: !2905)
!2911 = !DILocation(line: 922, column: 32, scope: !2790, inlinedAt: !2910)
!2912 = !DILocation(line: 924, column: 10, scope: !2790, inlinedAt: !2910)
!2913 = !DILocation(line: 936, column: 3, scope: !2905)
!2914 = distinct !DISubprogram(name: "quotearg_mem", scope: !139, file: !139, line: 940, type: !2915, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!6, !17, !9}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "arg", arg: 1, scope: !2914, file: !139, line: 940, type: !17)
!2919 = !DILocalVariable(name: "argsize", arg: 2, scope: !2914, file: !139, line: 940, type: !9)
!2920 = !DILocation(line: 940, column: 27, scope: !2914)
!2921 = !DILocation(line: 940, column: 39, scope: !2914)
!2922 = !DILocation(line: 928, column: 21, scope: !2893, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 942, column: 10, scope: !2914)
!2924 = !DILocation(line: 928, column: 36, scope: !2893, inlinedAt: !2923)
!2925 = !DILocation(line: 928, column: 48, scope: !2893, inlinedAt: !2923)
!2926 = !DILocation(line: 930, column: 10, scope: !2893, inlinedAt: !2923)
!2927 = !DILocation(line: 942, column: 3, scope: !2914)
!2928 = distinct !DISubprogram(name: "quotearg_n_style", scope: !139, file: !139, line: 946, type: !2929, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!6, !50, !100, !17}
!2931 = !{!2932, !2933, !2934, !2935}
!2932 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !139, line: 946, type: !50)
!2933 = !DILocalVariable(name: "s", arg: 2, scope: !2928, file: !139, line: 946, type: !100)
!2934 = !DILocalVariable(name: "arg", arg: 3, scope: !2928, file: !139, line: 946, type: !17)
!2935 = !DILocalVariable(name: "o", scope: !2928, file: !139, line: 948, type: !1500)
!2936 = !DILocalVariable(name: "o", scope: !2937, file: !139, line: 187, type: !146)
!2937 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !139, file: !139, line: 185, type: !2938, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!146, !100}
!2940 = !{!2941, !2936}
!2941 = !DILocalVariable(name: "style", arg: 1, scope: !2937, file: !139, line: 185, type: !100)
!2942 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2943 = !DILocation(line: 187, column: 26, scope: !2937, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 948, column: 36, scope: !2928)
!2945 = !DILocation(line: 946, column: 23, scope: !2928)
!2946 = !DILocation(line: 946, column: 45, scope: !2928)
!2947 = !DILocation(line: 946, column: 60, scope: !2928)
!2948 = !DILocation(line: 948, column: 3, scope: !2928)
!2949 = !DILocation(line: 948, column: 32, scope: !2928)
!2950 = !DILocation(line: 185, column: 48, scope: !2937, inlinedAt: !2944)
!2951 = !DILocation(line: 187, column: 3, scope: !2937, inlinedAt: !2944)
!2952 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2953 = !DILocation(line: 188, column: 13, scope: !2954, inlinedAt: !2944)
!2954 = distinct !DILexicalBlock(scope: !2937, file: !139, line: 188, column: 7)
!2955 = !DILocation(line: 188, column: 7, scope: !2937, inlinedAt: !2944)
!2956 = !DILocation(line: 189, column: 5, scope: !2954, inlinedAt: !2944)
!2957 = !{!2958}
!2958 = distinct !{!2958, !2959, !"quoting_options_from_style: argument 0"}
!2959 = distinct !{!2959, !"quoting_options_from_style"}
!2960 = !DILocation(line: 191, column: 10, scope: !2937, inlinedAt: !2944)
!2961 = !DILocation(line: 192, column: 1, scope: !2937, inlinedAt: !2944)
!2962 = !DILocation(line: 949, column: 10, scope: !2928)
!2963 = !DILocation(line: 950, column: 1, scope: !2928)
!2964 = !DILocation(line: 949, column: 3, scope: !2928)
!2965 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !139, file: !139, line: 953, type: !2966, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!6, !50, !100, !17, !9}
!2968 = !{!2969, !2970, !2971, !2972, !2973}
!2969 = !DILocalVariable(name: "n", arg: 1, scope: !2965, file: !139, line: 953, type: !50)
!2970 = !DILocalVariable(name: "s", arg: 2, scope: !2965, file: !139, line: 953, type: !100)
!2971 = !DILocalVariable(name: "arg", arg: 3, scope: !2965, file: !139, line: 954, type: !17)
!2972 = !DILocalVariable(name: "argsize", arg: 4, scope: !2965, file: !139, line: 954, type: !9)
!2973 = !DILocalVariable(name: "o", scope: !2965, file: !139, line: 956, type: !1500)
!2974 = !DILocation(line: 187, column: 26, scope: !2937, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 956, column: 36, scope: !2965)
!2976 = !DILocation(line: 953, column: 27, scope: !2965)
!2977 = !DILocation(line: 953, column: 49, scope: !2965)
!2978 = !DILocation(line: 954, column: 35, scope: !2965)
!2979 = !DILocation(line: 954, column: 47, scope: !2965)
!2980 = !DILocation(line: 956, column: 3, scope: !2965)
!2981 = !DILocation(line: 956, column: 32, scope: !2965)
!2982 = !DILocation(line: 185, column: 48, scope: !2937, inlinedAt: !2975)
!2983 = !DILocation(line: 187, column: 3, scope: !2937, inlinedAt: !2975)
!2984 = !DILocation(line: 188, column: 13, scope: !2954, inlinedAt: !2975)
!2985 = !DILocation(line: 188, column: 7, scope: !2937, inlinedAt: !2975)
!2986 = !DILocation(line: 189, column: 5, scope: !2954, inlinedAt: !2975)
!2987 = !{!2988}
!2988 = distinct !{!2988, !2989, !"quoting_options_from_style: argument 0"}
!2989 = distinct !{!2989, !"quoting_options_from_style"}
!2990 = !DILocation(line: 191, column: 10, scope: !2937, inlinedAt: !2975)
!2991 = !DILocation(line: 192, column: 1, scope: !2937, inlinedAt: !2975)
!2992 = !DILocation(line: 957, column: 10, scope: !2965)
!2993 = !DILocation(line: 958, column: 1, scope: !2965)
!2994 = !DILocation(line: 957, column: 3, scope: !2965)
!2995 = distinct !DISubprogram(name: "quotearg_style", scope: !139, file: !139, line: 961, type: !2996, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!6, !100, !17}
!2998 = !{!2999, !3000}
!2999 = !DILocalVariable(name: "s", arg: 1, scope: !2995, file: !139, line: 961, type: !100)
!3000 = !DILocalVariable(name: "arg", arg: 2, scope: !2995, file: !139, line: 961, type: !17)
!3001 = !DILocation(line: 187, column: 26, scope: !2937, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 948, column: 36, scope: !2928, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 963, column: 10, scope: !2995)
!3004 = !DILocation(line: 961, column: 36, scope: !2995)
!3005 = !DILocation(line: 961, column: 51, scope: !2995)
!3006 = !DILocation(line: 946, column: 23, scope: !2928, inlinedAt: !3003)
!3007 = !DILocation(line: 946, column: 45, scope: !2928, inlinedAt: !3003)
!3008 = !DILocation(line: 946, column: 60, scope: !2928, inlinedAt: !3003)
!3009 = !DILocation(line: 948, column: 3, scope: !2928, inlinedAt: !3003)
!3010 = !DILocation(line: 948, column: 32, scope: !2928, inlinedAt: !3003)
!3011 = !DILocation(line: 185, column: 48, scope: !2937, inlinedAt: !3002)
!3012 = !DILocation(line: 187, column: 3, scope: !2937, inlinedAt: !3002)
!3013 = !DILocation(line: 188, column: 13, scope: !2954, inlinedAt: !3002)
!3014 = !DILocation(line: 188, column: 7, scope: !2937, inlinedAt: !3002)
!3015 = !DILocation(line: 189, column: 5, scope: !2954, inlinedAt: !3002)
!3016 = !{!3017}
!3017 = distinct !{!3017, !3018, !"quoting_options_from_style: argument 0"}
!3018 = distinct !{!3018, !"quoting_options_from_style"}
!3019 = !DILocation(line: 191, column: 10, scope: !2937, inlinedAt: !3002)
!3020 = !DILocation(line: 192, column: 1, scope: !2937, inlinedAt: !3002)
!3021 = !DILocation(line: 949, column: 10, scope: !2928, inlinedAt: !3003)
!3022 = !DILocation(line: 950, column: 1, scope: !2928, inlinedAt: !3003)
!3023 = !DILocation(line: 963, column: 3, scope: !2995)
!3024 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !139, file: !139, line: 967, type: !3025, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!6, !100, !17, !9}
!3027 = !{!3028, !3029, !3030}
!3028 = !DILocalVariable(name: "s", arg: 1, scope: !3024, file: !139, line: 967, type: !100)
!3029 = !DILocalVariable(name: "arg", arg: 2, scope: !3024, file: !139, line: 967, type: !17)
!3030 = !DILocalVariable(name: "argsize", arg: 3, scope: !3024, file: !139, line: 967, type: !9)
!3031 = !DILocation(line: 187, column: 26, scope: !2937, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 956, column: 36, scope: !2965, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 969, column: 10, scope: !3024)
!3034 = !DILocation(line: 967, column: 40, scope: !3024)
!3035 = !DILocation(line: 967, column: 55, scope: !3024)
!3036 = !DILocation(line: 967, column: 67, scope: !3024)
!3037 = !DILocation(line: 953, column: 27, scope: !2965, inlinedAt: !3033)
!3038 = !DILocation(line: 953, column: 49, scope: !2965, inlinedAt: !3033)
!3039 = !DILocation(line: 954, column: 35, scope: !2965, inlinedAt: !3033)
!3040 = !DILocation(line: 954, column: 47, scope: !2965, inlinedAt: !3033)
!3041 = !DILocation(line: 956, column: 3, scope: !2965, inlinedAt: !3033)
!3042 = !DILocation(line: 956, column: 32, scope: !2965, inlinedAt: !3033)
!3043 = !DILocation(line: 185, column: 48, scope: !2937, inlinedAt: !3032)
!3044 = !DILocation(line: 187, column: 3, scope: !2937, inlinedAt: !3032)
!3045 = !DILocation(line: 188, column: 13, scope: !2954, inlinedAt: !3032)
!3046 = !DILocation(line: 188, column: 7, scope: !2937, inlinedAt: !3032)
!3047 = !DILocation(line: 189, column: 5, scope: !2954, inlinedAt: !3032)
!3048 = !{!3049}
!3049 = distinct !{!3049, !3050, !"quoting_options_from_style: argument 0"}
!3050 = distinct !{!3050, !"quoting_options_from_style"}
!3051 = !DILocation(line: 191, column: 10, scope: !2937, inlinedAt: !3032)
!3052 = !DILocation(line: 192, column: 1, scope: !2937, inlinedAt: !3032)
!3053 = !DILocation(line: 957, column: 10, scope: !2965, inlinedAt: !3033)
!3054 = !DILocation(line: 958, column: 1, scope: !2965, inlinedAt: !3033)
!3055 = !DILocation(line: 969, column: 3, scope: !3024)
!3056 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !139, file: !139, line: 973, type: !3057, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!6, !17, !9, !7}
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DILocalVariable(name: "arg", arg: 1, scope: !3056, file: !139, line: 973, type: !17)
!3061 = !DILocalVariable(name: "argsize", arg: 2, scope: !3056, file: !139, line: 973, type: !9)
!3062 = !DILocalVariable(name: "ch", arg: 3, scope: !3056, file: !139, line: 973, type: !7)
!3063 = !DILocalVariable(name: "options", scope: !3056, file: !139, line: 975, type: !146)
!3064 = !DILocation(line: 973, column: 32, scope: !3056)
!3065 = !DILocation(line: 973, column: 44, scope: !3056)
!3066 = !DILocation(line: 973, column: 58, scope: !3056)
!3067 = !DILocation(line: 975, column: 3, scope: !3056)
!3068 = !DILocation(line: 976, column: 13, scope: !3056)
!3069 = !{i64 0, i64 4, !872, i64 4, i64 4, !844, i64 8, i64 32, !872, i64 40, i64 8, !713, i64 48, i64 8, !713}
!3070 = !DILocation(line: 975, column: 26, scope: !3056)
!3071 = !DILocation(line: 144, column: 43, scope: !1523, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 977, column: 3, scope: !3056)
!3073 = !DILocation(line: 144, column: 51, scope: !1523, inlinedAt: !3072)
!3074 = !DILocation(line: 144, column: 58, scope: !1523, inlinedAt: !3072)
!3075 = !DILocation(line: 146, column: 17, scope: !1523, inlinedAt: !3072)
!3076 = !DILocation(line: 148, column: 62, scope: !1541, inlinedAt: !3072)
!3077 = !DILocation(line: 148, column: 57, scope: !1541, inlinedAt: !3072)
!3078 = !DILocation(line: 147, column: 17, scope: !1523, inlinedAt: !3072)
!3079 = !DILocation(line: 149, column: 18, scope: !1523, inlinedAt: !3072)
!3080 = !DILocation(line: 149, column: 15, scope: !1523, inlinedAt: !3072)
!3081 = !DILocation(line: 149, column: 7, scope: !1523, inlinedAt: !3072)
!3082 = !DILocation(line: 150, column: 12, scope: !1523, inlinedAt: !3072)
!3083 = !DILocation(line: 150, column: 15, scope: !1523, inlinedAt: !3072)
!3084 = !DILocation(line: 150, column: 25, scope: !1523, inlinedAt: !3072)
!3085 = !DILocation(line: 150, column: 7, scope: !1523, inlinedAt: !3072)
!3086 = !DILocation(line: 151, column: 18, scope: !1523, inlinedAt: !3072)
!3087 = !DILocation(line: 151, column: 23, scope: !1523, inlinedAt: !3072)
!3088 = !DILocation(line: 151, column: 6, scope: !1523, inlinedAt: !3072)
!3089 = !DILocation(line: 978, column: 10, scope: !3056)
!3090 = !DILocation(line: 979, column: 1, scope: !3056)
!3091 = !DILocation(line: 978, column: 3, scope: !3056)
!3092 = distinct !DISubprogram(name: "quotearg_char", scope: !139, file: !139, line: 982, type: !3093, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!6, !17, !7}
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "arg", arg: 1, scope: !3092, file: !139, line: 982, type: !17)
!3097 = !DILocalVariable(name: "ch", arg: 2, scope: !3092, file: !139, line: 982, type: !7)
!3098 = !DILocation(line: 982, column: 28, scope: !3092)
!3099 = !DILocation(line: 982, column: 38, scope: !3092)
!3100 = !DILocation(line: 973, column: 32, scope: !3056, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 984, column: 10, scope: !3092)
!3102 = !DILocation(line: 973, column: 44, scope: !3056, inlinedAt: !3101)
!3103 = !DILocation(line: 973, column: 58, scope: !3056, inlinedAt: !3101)
!3104 = !DILocation(line: 975, column: 3, scope: !3056, inlinedAt: !3101)
!3105 = !DILocation(line: 976, column: 13, scope: !3056, inlinedAt: !3101)
!3106 = !DILocation(line: 975, column: 26, scope: !3056, inlinedAt: !3101)
!3107 = !DILocation(line: 144, column: 43, scope: !1523, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 977, column: 3, scope: !3056, inlinedAt: !3101)
!3109 = !DILocation(line: 144, column: 51, scope: !1523, inlinedAt: !3108)
!3110 = !DILocation(line: 144, column: 58, scope: !1523, inlinedAt: !3108)
!3111 = !DILocation(line: 146, column: 17, scope: !1523, inlinedAt: !3108)
!3112 = !DILocation(line: 148, column: 62, scope: !1541, inlinedAt: !3108)
!3113 = !DILocation(line: 148, column: 57, scope: !1541, inlinedAt: !3108)
!3114 = !DILocation(line: 147, column: 17, scope: !1523, inlinedAt: !3108)
!3115 = !DILocation(line: 149, column: 18, scope: !1523, inlinedAt: !3108)
!3116 = !DILocation(line: 149, column: 15, scope: !1523, inlinedAt: !3108)
!3117 = !DILocation(line: 149, column: 7, scope: !1523, inlinedAt: !3108)
!3118 = !DILocation(line: 150, column: 12, scope: !1523, inlinedAt: !3108)
!3119 = !DILocation(line: 150, column: 15, scope: !1523, inlinedAt: !3108)
!3120 = !DILocation(line: 150, column: 25, scope: !1523, inlinedAt: !3108)
!3121 = !DILocation(line: 150, column: 7, scope: !1523, inlinedAt: !3108)
!3122 = !DILocation(line: 151, column: 18, scope: !1523, inlinedAt: !3108)
!3123 = !DILocation(line: 151, column: 23, scope: !1523, inlinedAt: !3108)
!3124 = !DILocation(line: 151, column: 6, scope: !1523, inlinedAt: !3108)
!3125 = !DILocation(line: 978, column: 10, scope: !3056, inlinedAt: !3101)
!3126 = !DILocation(line: 979, column: 1, scope: !3056, inlinedAt: !3101)
!3127 = !DILocation(line: 984, column: 3, scope: !3092)
!3128 = distinct !DISubprogram(name: "quotearg_colon", scope: !139, file: !139, line: 988, type: !1265, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3129)
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "arg", arg: 1, scope: !3128, file: !139, line: 988, type: !17)
!3131 = !DILocation(line: 988, column: 29, scope: !3128)
!3132 = !DILocation(line: 982, column: 28, scope: !3092, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 990, column: 10, scope: !3128)
!3134 = !DILocation(line: 982, column: 38, scope: !3092, inlinedAt: !3133)
!3135 = !DILocation(line: 973, column: 32, scope: !3056, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 984, column: 10, scope: !3092, inlinedAt: !3133)
!3137 = !DILocation(line: 973, column: 44, scope: !3056, inlinedAt: !3136)
!3138 = !DILocation(line: 973, column: 58, scope: !3056, inlinedAt: !3136)
!3139 = !DILocation(line: 975, column: 3, scope: !3056, inlinedAt: !3136)
!3140 = !DILocation(line: 976, column: 13, scope: !3056, inlinedAt: !3136)
!3141 = !DILocation(line: 975, column: 26, scope: !3056, inlinedAt: !3136)
!3142 = !DILocation(line: 144, column: 43, scope: !1523, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 977, column: 3, scope: !3056, inlinedAt: !3136)
!3144 = !DILocation(line: 144, column: 51, scope: !1523, inlinedAt: !3143)
!3145 = !DILocation(line: 144, column: 58, scope: !1523, inlinedAt: !3143)
!3146 = !DILocation(line: 146, column: 17, scope: !1523, inlinedAt: !3143)
!3147 = !DILocation(line: 148, column: 57, scope: !1541, inlinedAt: !3143)
!3148 = !DILocation(line: 147, column: 17, scope: !1523, inlinedAt: !3143)
!3149 = !DILocation(line: 149, column: 7, scope: !1523, inlinedAt: !3143)
!3150 = !DILocation(line: 150, column: 12, scope: !1523, inlinedAt: !3143)
!3151 = !DILocation(line: 151, column: 6, scope: !1523, inlinedAt: !3143)
!3152 = !DILocation(line: 978, column: 10, scope: !3056, inlinedAt: !3136)
!3153 = !DILocation(line: 979, column: 1, scope: !3056, inlinedAt: !3136)
!3154 = !DILocation(line: 990, column: 3, scope: !3128)
!3155 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !139, file: !139, line: 994, type: !2915, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3156)
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "arg", arg: 1, scope: !3155, file: !139, line: 994, type: !17)
!3158 = !DILocalVariable(name: "argsize", arg: 2, scope: !3155, file: !139, line: 994, type: !9)
!3159 = !DILocation(line: 994, column: 33, scope: !3155)
!3160 = !DILocation(line: 994, column: 45, scope: !3155)
!3161 = !DILocation(line: 973, column: 32, scope: !3056, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 996, column: 10, scope: !3155)
!3163 = !DILocation(line: 973, column: 44, scope: !3056, inlinedAt: !3162)
!3164 = !DILocation(line: 973, column: 58, scope: !3056, inlinedAt: !3162)
!3165 = !DILocation(line: 975, column: 3, scope: !3056, inlinedAt: !3162)
!3166 = !DILocation(line: 976, column: 13, scope: !3056, inlinedAt: !3162)
!3167 = !DILocation(line: 975, column: 26, scope: !3056, inlinedAt: !3162)
!3168 = !DILocation(line: 144, column: 43, scope: !1523, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 977, column: 3, scope: !3056, inlinedAt: !3162)
!3170 = !DILocation(line: 144, column: 51, scope: !1523, inlinedAt: !3169)
!3171 = !DILocation(line: 144, column: 58, scope: !1523, inlinedAt: !3169)
!3172 = !DILocation(line: 146, column: 17, scope: !1523, inlinedAt: !3169)
!3173 = !DILocation(line: 148, column: 57, scope: !1541, inlinedAt: !3169)
!3174 = !DILocation(line: 147, column: 17, scope: !1523, inlinedAt: !3169)
!3175 = !DILocation(line: 149, column: 7, scope: !1523, inlinedAt: !3169)
!3176 = !DILocation(line: 150, column: 12, scope: !1523, inlinedAt: !3169)
!3177 = !DILocation(line: 151, column: 6, scope: !1523, inlinedAt: !3169)
!3178 = !DILocation(line: 978, column: 10, scope: !3056, inlinedAt: !3162)
!3179 = !DILocation(line: 979, column: 1, scope: !3056, inlinedAt: !3162)
!3180 = !DILocation(line: 996, column: 3, scope: !3155)
!3181 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !139, file: !139, line: 1000, type: !2929, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3182)
!3182 = !{!3183, !3184, !3185, !3186}
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !139, line: 1000, type: !50)
!3184 = !DILocalVariable(name: "s", arg: 2, scope: !3181, file: !139, line: 1000, type: !100)
!3185 = !DILocalVariable(name: "arg", arg: 3, scope: !3181, file: !139, line: 1000, type: !17)
!3186 = !DILocalVariable(name: "options", scope: !3181, file: !139, line: 1002, type: !146)
!3187 = !DILocation(line: 187, column: 26, scope: !2937, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1003, column: 13, scope: !3181)
!3189 = !DILocation(line: 1000, column: 29, scope: !3181)
!3190 = !DILocation(line: 1000, column: 51, scope: !3181)
!3191 = !DILocation(line: 1000, column: 66, scope: !3181)
!3192 = !DILocation(line: 1002, column: 3, scope: !3181)
!3193 = !DILocation(line: 185, column: 48, scope: !2937, inlinedAt: !3188)
!3194 = !DILocation(line: 187, column: 3, scope: !2937, inlinedAt: !3188)
!3195 = !DILocation(line: 188, column: 13, scope: !2954, inlinedAt: !3188)
!3196 = !DILocation(line: 188, column: 7, scope: !2937, inlinedAt: !3188)
!3197 = !DILocation(line: 189, column: 5, scope: !2954, inlinedAt: !3188)
!3198 = !{!3199}
!3199 = distinct !{!3199, !3200, !"quoting_options_from_style: argument 0"}
!3200 = distinct !{!3200, !"quoting_options_from_style"}
!3201 = !DILocation(line: 191, column: 10, scope: !2937, inlinedAt: !3188)
!3202 = !DILocation(line: 192, column: 1, scope: !2937, inlinedAt: !3188)
!3203 = !DILocation(line: 1003, column: 13, scope: !3181)
!3204 = !DILocation(line: 1002, column: 26, scope: !3181)
!3205 = !DILocation(line: 144, column: 43, scope: !1523, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 1004, column: 3, scope: !3181)
!3207 = !DILocation(line: 144, column: 51, scope: !1523, inlinedAt: !3206)
!3208 = !DILocation(line: 144, column: 58, scope: !1523, inlinedAt: !3206)
!3209 = !DILocation(line: 146, column: 17, scope: !1523, inlinedAt: !3206)
!3210 = !DILocation(line: 148, column: 57, scope: !1541, inlinedAt: !3206)
!3211 = !DILocation(line: 147, column: 17, scope: !1523, inlinedAt: !3206)
!3212 = !DILocation(line: 149, column: 7, scope: !1523, inlinedAt: !3206)
!3213 = !DILocation(line: 150, column: 12, scope: !1523, inlinedAt: !3206)
!3214 = !DILocation(line: 151, column: 6, scope: !1523, inlinedAt: !3206)
!3215 = !DILocation(line: 1005, column: 10, scope: !3181)
!3216 = !DILocation(line: 1006, column: 1, scope: !3181)
!3217 = !DILocation(line: 1005, column: 3, scope: !3181)
!3218 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !139, file: !139, line: 1009, type: !3219, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!6, !50, !17, !17, !17}
!3221 = !{!3222, !3223, !3224, !3225}
!3222 = !DILocalVariable(name: "n", arg: 1, scope: !3218, file: !139, line: 1009, type: !50)
!3223 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3218, file: !139, line: 1009, type: !17)
!3224 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3218, file: !139, line: 1010, type: !17)
!3225 = !DILocalVariable(name: "arg", arg: 4, scope: !3218, file: !139, line: 1010, type: !17)
!3226 = !DILocation(line: 1009, column: 24, scope: !3218)
!3227 = !DILocation(line: 1009, column: 39, scope: !3218)
!3228 = !DILocation(line: 1010, column: 32, scope: !3218)
!3229 = !DILocation(line: 1010, column: 57, scope: !3218)
!3230 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !139, line: 1017, type: !50)
!3231 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !139, file: !139, line: 1017, type: !3232, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3234)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!6, !50, !17, !17, !17, !9}
!3234 = !{!3230, !3235, !3236, !3237, !3238, !3239}
!3235 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3231, file: !139, line: 1017, type: !17)
!3236 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3231, file: !139, line: 1018, type: !17)
!3237 = !DILocalVariable(name: "arg", arg: 4, scope: !3231, file: !139, line: 1019, type: !17)
!3238 = !DILocalVariable(name: "argsize", arg: 5, scope: !3231, file: !139, line: 1019, type: !9)
!3239 = !DILocalVariable(name: "o", scope: !3231, file: !139, line: 1021, type: !146)
!3240 = !DILocation(line: 1017, column: 28, scope: !3231, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 1012, column: 10, scope: !3218)
!3242 = !DILocation(line: 1017, column: 43, scope: !3231, inlinedAt: !3241)
!3243 = !DILocation(line: 1018, column: 36, scope: !3231, inlinedAt: !3241)
!3244 = !DILocation(line: 1019, column: 36, scope: !3231, inlinedAt: !3241)
!3245 = !DILocation(line: 1019, column: 48, scope: !3231, inlinedAt: !3241)
!3246 = !DILocation(line: 1021, column: 3, scope: !3231, inlinedAt: !3241)
!3247 = !DILocation(line: 1021, column: 30, scope: !3231, inlinedAt: !3241)
!3248 = !DILocation(line: 1021, column: 26, scope: !3231, inlinedAt: !3241)
!3249 = !DILocation(line: 171, column: 45, scope: !1573, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 1022, column: 3, scope: !3231, inlinedAt: !3241)
!3251 = !DILocation(line: 172, column: 33, scope: !1573, inlinedAt: !3250)
!3252 = !DILocation(line: 172, column: 57, scope: !1573, inlinedAt: !3250)
!3253 = !DILocation(line: 176, column: 6, scope: !1573, inlinedAt: !3250)
!3254 = !DILocation(line: 176, column: 12, scope: !1573, inlinedAt: !3250)
!3255 = !DILocation(line: 177, column: 8, scope: !1589, inlinedAt: !3250)
!3256 = !DILocation(line: 177, column: 23, scope: !1591, inlinedAt: !3250)
!3257 = !DILocation(line: 177, column: 19, scope: !1589, inlinedAt: !3250)
!3258 = !DILocation(line: 178, column: 5, scope: !1589, inlinedAt: !3250)
!3259 = !DILocation(line: 179, column: 6, scope: !1573, inlinedAt: !3250)
!3260 = !DILocation(line: 179, column: 17, scope: !1573, inlinedAt: !3250)
!3261 = !DILocation(line: 180, column: 6, scope: !1573, inlinedAt: !3250)
!3262 = !DILocation(line: 180, column: 18, scope: !1573, inlinedAt: !3250)
!3263 = !DILocation(line: 1023, column: 10, scope: !3231, inlinedAt: !3241)
!3264 = !DILocation(line: 1024, column: 1, scope: !3231, inlinedAt: !3241)
!3265 = !DILocation(line: 1012, column: 3, scope: !3218)
!3266 = !DILocation(line: 1017, column: 28, scope: !3231)
!3267 = !DILocation(line: 1017, column: 43, scope: !3231)
!3268 = !DILocation(line: 1018, column: 36, scope: !3231)
!3269 = !DILocation(line: 1019, column: 36, scope: !3231)
!3270 = !DILocation(line: 1019, column: 48, scope: !3231)
!3271 = !DILocation(line: 1021, column: 3, scope: !3231)
!3272 = !DILocation(line: 1021, column: 30, scope: !3231)
!3273 = !DILocation(line: 1021, column: 26, scope: !3231)
!3274 = !DILocation(line: 171, column: 45, scope: !1573, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 1022, column: 3, scope: !3231)
!3276 = !DILocation(line: 172, column: 33, scope: !1573, inlinedAt: !3275)
!3277 = !DILocation(line: 172, column: 57, scope: !1573, inlinedAt: !3275)
!3278 = !DILocation(line: 176, column: 6, scope: !1573, inlinedAt: !3275)
!3279 = !DILocation(line: 176, column: 12, scope: !1573, inlinedAt: !3275)
!3280 = !DILocation(line: 177, column: 8, scope: !1589, inlinedAt: !3275)
!3281 = !DILocation(line: 177, column: 23, scope: !1591, inlinedAt: !3275)
!3282 = !DILocation(line: 177, column: 19, scope: !1589, inlinedAt: !3275)
!3283 = !DILocation(line: 178, column: 5, scope: !1589, inlinedAt: !3275)
!3284 = !DILocation(line: 179, column: 6, scope: !1573, inlinedAt: !3275)
!3285 = !DILocation(line: 179, column: 17, scope: !1573, inlinedAt: !3275)
!3286 = !DILocation(line: 180, column: 6, scope: !1573, inlinedAt: !3275)
!3287 = !DILocation(line: 180, column: 18, scope: !1573, inlinedAt: !3275)
!3288 = !DILocation(line: 1023, column: 10, scope: !3231)
!3289 = !DILocation(line: 1024, column: 1, scope: !3231)
!3290 = !DILocation(line: 1023, column: 3, scope: !3231)
!3291 = distinct !DISubprogram(name: "quotearg_custom", scope: !139, file: !139, line: 1027, type: !3292, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!6, !17, !17, !17}
!3294 = !{!3295, !3296, !3297}
!3295 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3291, file: !139, line: 1027, type: !17)
!3296 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3291, file: !139, line: 1027, type: !17)
!3297 = !DILocalVariable(name: "arg", arg: 3, scope: !3291, file: !139, line: 1028, type: !17)
!3298 = !DILocation(line: 1027, column: 30, scope: !3291)
!3299 = !DILocation(line: 1027, column: 54, scope: !3291)
!3300 = !DILocation(line: 1028, column: 30, scope: !3291)
!3301 = !DILocation(line: 1009, column: 24, scope: !3218, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 1030, column: 10, scope: !3291)
!3303 = !DILocation(line: 1009, column: 39, scope: !3218, inlinedAt: !3302)
!3304 = !DILocation(line: 1010, column: 32, scope: !3218, inlinedAt: !3302)
!3305 = !DILocation(line: 1010, column: 57, scope: !3218, inlinedAt: !3302)
!3306 = !DILocation(line: 1017, column: 28, scope: !3231, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 1012, column: 10, scope: !3218, inlinedAt: !3302)
!3308 = !DILocation(line: 1017, column: 43, scope: !3231, inlinedAt: !3307)
!3309 = !DILocation(line: 1018, column: 36, scope: !3231, inlinedAt: !3307)
!3310 = !DILocation(line: 1019, column: 36, scope: !3231, inlinedAt: !3307)
!3311 = !DILocation(line: 1019, column: 48, scope: !3231, inlinedAt: !3307)
!3312 = !DILocation(line: 1021, column: 3, scope: !3231, inlinedAt: !3307)
!3313 = !DILocation(line: 1021, column: 30, scope: !3231, inlinedAt: !3307)
!3314 = !DILocation(line: 1021, column: 26, scope: !3231, inlinedAt: !3307)
!3315 = !DILocation(line: 171, column: 45, scope: !1573, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 1022, column: 3, scope: !3231, inlinedAt: !3307)
!3317 = !DILocation(line: 172, column: 33, scope: !1573, inlinedAt: !3316)
!3318 = !DILocation(line: 172, column: 57, scope: !1573, inlinedAt: !3316)
!3319 = !DILocation(line: 176, column: 6, scope: !1573, inlinedAt: !3316)
!3320 = !DILocation(line: 176, column: 12, scope: !1573, inlinedAt: !3316)
!3321 = !DILocation(line: 177, column: 8, scope: !1589, inlinedAt: !3316)
!3322 = !DILocation(line: 177, column: 23, scope: !1591, inlinedAt: !3316)
!3323 = !DILocation(line: 177, column: 19, scope: !1589, inlinedAt: !3316)
!3324 = !DILocation(line: 178, column: 5, scope: !1589, inlinedAt: !3316)
!3325 = !DILocation(line: 179, column: 6, scope: !1573, inlinedAt: !3316)
!3326 = !DILocation(line: 179, column: 17, scope: !1573, inlinedAt: !3316)
!3327 = !DILocation(line: 180, column: 6, scope: !1573, inlinedAt: !3316)
!3328 = !DILocation(line: 180, column: 18, scope: !1573, inlinedAt: !3316)
!3329 = !DILocation(line: 1023, column: 10, scope: !3231, inlinedAt: !3307)
!3330 = !DILocation(line: 1024, column: 1, scope: !3231, inlinedAt: !3307)
!3331 = !DILocation(line: 1030, column: 3, scope: !3291)
!3332 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !139, file: !139, line: 1034, type: !3333, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!6, !17, !17, !17, !9}
!3335 = !{!3336, !3337, !3338, !3339}
!3336 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3332, file: !139, line: 1034, type: !17)
!3337 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3332, file: !139, line: 1034, type: !17)
!3338 = !DILocalVariable(name: "arg", arg: 3, scope: !3332, file: !139, line: 1035, type: !17)
!3339 = !DILocalVariable(name: "argsize", arg: 4, scope: !3332, file: !139, line: 1035, type: !9)
!3340 = !DILocation(line: 1034, column: 34, scope: !3332)
!3341 = !DILocation(line: 1034, column: 58, scope: !3332)
!3342 = !DILocation(line: 1035, column: 34, scope: !3332)
!3343 = !DILocation(line: 1035, column: 46, scope: !3332)
!3344 = !DILocation(line: 1017, column: 28, scope: !3231, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 1037, column: 10, scope: !3332)
!3346 = !DILocation(line: 1017, column: 43, scope: !3231, inlinedAt: !3345)
!3347 = !DILocation(line: 1018, column: 36, scope: !3231, inlinedAt: !3345)
!3348 = !DILocation(line: 1019, column: 36, scope: !3231, inlinedAt: !3345)
!3349 = !DILocation(line: 1019, column: 48, scope: !3231, inlinedAt: !3345)
!3350 = !DILocation(line: 1021, column: 3, scope: !3231, inlinedAt: !3345)
!3351 = !DILocation(line: 1021, column: 30, scope: !3231, inlinedAt: !3345)
!3352 = !DILocation(line: 1021, column: 26, scope: !3231, inlinedAt: !3345)
!3353 = !DILocation(line: 171, column: 45, scope: !1573, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1022, column: 3, scope: !3231, inlinedAt: !3345)
!3355 = !DILocation(line: 172, column: 33, scope: !1573, inlinedAt: !3354)
!3356 = !DILocation(line: 172, column: 57, scope: !1573, inlinedAt: !3354)
!3357 = !DILocation(line: 176, column: 6, scope: !1573, inlinedAt: !3354)
!3358 = !DILocation(line: 176, column: 12, scope: !1573, inlinedAt: !3354)
!3359 = !DILocation(line: 177, column: 8, scope: !1589, inlinedAt: !3354)
!3360 = !DILocation(line: 177, column: 23, scope: !1591, inlinedAt: !3354)
!3361 = !DILocation(line: 177, column: 19, scope: !1589, inlinedAt: !3354)
!3362 = !DILocation(line: 178, column: 5, scope: !1589, inlinedAt: !3354)
!3363 = !DILocation(line: 179, column: 6, scope: !1573, inlinedAt: !3354)
!3364 = !DILocation(line: 179, column: 17, scope: !1573, inlinedAt: !3354)
!3365 = !DILocation(line: 180, column: 6, scope: !1573, inlinedAt: !3354)
!3366 = !DILocation(line: 180, column: 18, scope: !1573, inlinedAt: !3354)
!3367 = !DILocation(line: 1023, column: 10, scope: !3231, inlinedAt: !3345)
!3368 = !DILocation(line: 1024, column: 1, scope: !3231, inlinedAt: !3345)
!3369 = !DILocation(line: 1037, column: 3, scope: !3332)
!3370 = distinct !DISubprogram(name: "quote_n_mem", scope: !139, file: !139, line: 1052, type: !3371, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!17, !50, !17, !9}
!3373 = !{!3374, !3375, !3376}
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3370, file: !139, line: 1052, type: !50)
!3375 = !DILocalVariable(name: "arg", arg: 2, scope: !3370, file: !139, line: 1052, type: !17)
!3376 = !DILocalVariable(name: "argsize", arg: 3, scope: !3370, file: !139, line: 1052, type: !9)
!3377 = !DILocation(line: 1052, column: 18, scope: !3370)
!3378 = !DILocation(line: 1052, column: 33, scope: !3370)
!3379 = !DILocation(line: 1052, column: 45, scope: !3370)
!3380 = !DILocation(line: 1054, column: 10, scope: !3370)
!3381 = !DILocation(line: 1054, column: 3, scope: !3370)
!3382 = distinct !DISubprogram(name: "quote_mem", scope: !139, file: !139, line: 1058, type: !3383, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!17, !17, !9}
!3385 = !{!3386, !3387}
!3386 = !DILocalVariable(name: "arg", arg: 1, scope: !3382, file: !139, line: 1058, type: !17)
!3387 = !DILocalVariable(name: "argsize", arg: 2, scope: !3382, file: !139, line: 1058, type: !9)
!3388 = !DILocation(line: 1058, column: 24, scope: !3382)
!3389 = !DILocation(line: 1058, column: 36, scope: !3382)
!3390 = !DILocation(line: 1052, column: 18, scope: !3370, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 1060, column: 10, scope: !3382)
!3392 = !DILocation(line: 1052, column: 33, scope: !3370, inlinedAt: !3391)
!3393 = !DILocation(line: 1052, column: 45, scope: !3370, inlinedAt: !3391)
!3394 = !DILocation(line: 1054, column: 10, scope: !3370, inlinedAt: !3391)
!3395 = !DILocation(line: 1060, column: 3, scope: !3382)
!3396 = distinct !DISubprogram(name: "quote_n", scope: !139, file: !139, line: 1064, type: !3397, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!17, !50, !17}
!3399 = !{!3400, !3401}
!3400 = !DILocalVariable(name: "n", arg: 1, scope: !3396, file: !139, line: 1064, type: !50)
!3401 = !DILocalVariable(name: "arg", arg: 2, scope: !3396, file: !139, line: 1064, type: !17)
!3402 = !DILocation(line: 1064, column: 14, scope: !3396)
!3403 = !DILocation(line: 1064, column: 29, scope: !3396)
!3404 = !DILocation(line: 1052, column: 18, scope: !3370, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1066, column: 10, scope: !3396)
!3406 = !DILocation(line: 1052, column: 33, scope: !3370, inlinedAt: !3405)
!3407 = !DILocation(line: 1052, column: 45, scope: !3370, inlinedAt: !3405)
!3408 = !DILocation(line: 1054, column: 10, scope: !3370, inlinedAt: !3405)
!3409 = !DILocation(line: 1066, column: 3, scope: !3396)
!3410 = distinct !DISubprogram(name: "quote", scope: !139, file: !139, line: 1070, type: !1376, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !3411)
!3411 = !{!3412}
!3412 = !DILocalVariable(name: "arg", arg: 1, scope: !3410, file: !139, line: 1070, type: !17)
!3413 = !DILocation(line: 1070, column: 20, scope: !3410)
!3414 = !DILocation(line: 1064, column: 14, scope: !3396, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1072, column: 10, scope: !3410)
!3416 = !DILocation(line: 1064, column: 29, scope: !3396, inlinedAt: !3415)
!3417 = !DILocation(line: 1052, column: 18, scope: !3370, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 1066, column: 10, scope: !3396, inlinedAt: !3415)
!3419 = !DILocation(line: 1052, column: 33, scope: !3370, inlinedAt: !3418)
!3420 = !DILocation(line: 1052, column: 45, scope: !3370, inlinedAt: !3418)
!3421 = !DILocation(line: 1054, column: 10, scope: !3370, inlinedAt: !3418)
!3422 = !DILocation(line: 1072, column: 3, scope: !3410)
!3423 = distinct !DISubprogram(name: "try_tempname_len", scope: !182, file: !182, line: 189, type: !3424, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3429)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!50, !6, !50, !8, !3426, !9}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!50, !6, !8}
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3444, !3445, !3449}
!3430 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3423, file: !182, line: 189, type: !6)
!3431 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3423, file: !182, line: 189, type: !50)
!3432 = !DILocalVariable(name: "args", arg: 3, scope: !3423, file: !182, line: 189, type: !8)
!3433 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3423, file: !182, line: 190, type: !3426)
!3434 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3423, file: !182, line: 190, type: !9)
!3435 = !DILocalVariable(name: "len", scope: !3423, file: !182, line: 192, type: !9)
!3436 = !DILocalVariable(name: "XXXXXX", scope: !3423, file: !182, line: 193, type: !6)
!3437 = !DILocalVariable(name: "count", scope: !3423, file: !182, line: 194, type: !152)
!3438 = !DILocalVariable(name: "fd", scope: !3423, file: !182, line: 195, type: !50)
!3439 = !DILocalVariable(name: "save_errno", scope: !3423, file: !182, line: 196, type: !50)
!3440 = !DILocalVariable(name: "rand_src", scope: !3423, file: !182, line: 197, type: !3441)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !3443, line: 33, flags: DIFlagFwdDecl)
!3443 = !DIFile(filename: "./lib/randint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3444 = !DILocalVariable(name: "attempts", scope: !3423, file: !182, line: 213, type: !152)
!3445 = !DILocalVariable(name: "i", scope: !3446, file: !182, line: 235, type: !9)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !182, line: 234, column: 5)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !182, line: 233, column: 3)
!3448 = distinct !DILexicalBlock(scope: !3423, file: !182, line: 233, column: 3)
!3449 = !DILocalVariable(name: "saved_errno", scope: !3450, file: !182, line: 261, type: !50)
!3450 = distinct !DILexicalBlock(scope: !3423, file: !182, line: 260, column: 3)
!3451 = !DILocation(line: 189, column: 25, scope: !3423)
!3452 = !DILocation(line: 189, column: 35, scope: !3423)
!3453 = !DILocation(line: 189, column: 52, scope: !3423)
!3454 = !DILocation(line: 190, column: 25, scope: !3423)
!3455 = !DILocation(line: 190, column: 59, scope: !3423)
!3456 = !DILocation(line: 195, column: 7, scope: !3423)
!3457 = !DILocation(line: 196, column: 20, scope: !3423)
!3458 = !DILocation(line: 196, column: 7, scope: !3423)
!3459 = !DILocation(line: 213, column: 16, scope: !3423)
!3460 = !DILocation(line: 216, column: 9, scope: !3423)
!3461 = !DILocation(line: 192, column: 10, scope: !3423)
!3462 = !DILocation(line: 217, column: 28, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3423, file: !182, line: 217, column: 7)
!3464 = !DILocation(line: 217, column: 26, scope: !3463)
!3465 = !DILocation(line: 217, column: 11, scope: !3463)
!3466 = !DILocation(line: 218, column: 7, scope: !3463)
!3467 = !DILocation(line: 218, column: 53, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !3463, file: !182, discriminator: 1)
!3469 = !DILocation(line: 218, column: 29, scope: !3468)
!3470 = !DILocalVariable(name: "s", arg: 1, scope: !3471, file: !182, line: 179, type: !17)
!3471 = distinct !DISubprogram(name: "check_x_suffix", scope: !182, file: !182, line: 179, type: !3472, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!22, !17, !9}
!3474 = !{!3470, !3475}
!3475 = !DILocalVariable(name: "len", arg: 2, scope: !3471, file: !182, line: 179, type: !9)
!3476 = !DILocation(line: 179, column: 29, scope: !3471, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 218, column: 12, scope: !3468)
!3478 = !DILocation(line: 179, column: 39, scope: !3471, inlinedAt: !3477)
!3479 = !DILocation(line: 181, column: 17, scope: !3471, inlinedAt: !3477)
!3480 = !DILocation(line: 181, column: 14, scope: !3471, inlinedAt: !3477)
!3481 = !DILocation(line: 217, column: 7, scope: !3482)
!3482 = !DILexicalBlockFile(scope: !3423, file: !182, discriminator: 1)
!3483 = !DILocation(line: 193, column: 9, scope: !3423)
!3484 = !DILocation(line: 229, column: 14, scope: !3423)
!3485 = !DILocation(line: 197, column: 26, scope: !3423)
!3486 = !DILocation(line: 230, column: 9, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3423, file: !182, line: 230, column: 7)
!3488 = !DILocation(line: 230, column: 7, scope: !3423)
!3489 = !DILocation(line: 194, column: 16, scope: !3423)
!3490 = !DILocation(line: 233, column: 3, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3448, file: !182, discriminator: 1)
!3492 = !DILocation(line: 233, column: 25, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3447, file: !182, discriminator: 1)
!3494 = distinct !{!3494, !3495, !3496}
!3495 = !DILocation(line: 233, column: 3, scope: !3448)
!3496 = !DILocation(line: 251, column: 5, scope: !3448)
!3497 = !DILocation(line: 235, column: 14, scope: !3446)
!3498 = !DILocation(line: 237, column: 7, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3500, file: !182, discriminator: 1)
!3500 = distinct !DILexicalBlock(scope: !3446, file: !182, line: 237, column: 7)
!3501 = !DILocation(line: 238, column: 29, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3500, file: !182, line: 237, column: 7)
!3503 = !DILocation(line: 238, column: 21, scope: !3502)
!3504 = !DILocation(line: 238, column: 9, scope: !3502)
!3505 = !DILocation(line: 238, column: 19, scope: !3502)
!3506 = !DILocation(line: 237, column: 38, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3502, file: !182, discriminator: 2)
!3508 = !DILocation(line: 237, column: 21, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3502, file: !182, discriminator: 1)
!3510 = distinct !{!3510, !3511, !3512}
!3511 = !DILocation(line: 237, column: 7, scope: !3500)
!3512 = !DILocation(line: 238, column: 74, scope: !3500)
!3513 = !DILocation(line: 240, column: 12, scope: !3446)
!3514 = !DILocation(line: 241, column: 14, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3446, file: !182, line: 241, column: 11)
!3516 = !DILocation(line: 241, column: 11, scope: !3446)
!3517 = !DILocation(line: 243, column: 11, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3515, file: !182, line: 242, column: 9)
!3519 = !DILocation(line: 244, column: 11, scope: !3518)
!3520 = !DILocation(line: 246, column: 16, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3515, file: !182, line: 246, column: 16)
!3522 = !DILocation(line: 246, column: 22, scope: !3521)
!3523 = !DILocation(line: 233, column: 37, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3447, file: !182, discriminator: 2)
!3525 = !DILocation(line: 253, column: 3, scope: !3423)
!3526 = !DILocation(line: 257, column: 3, scope: !3423)
!3527 = !DILocation(line: 261, column: 9, scope: !3450)
!3528 = !DILocation(line: 261, column: 23, scope: !3450)
!3529 = !DILocation(line: 262, column: 5, scope: !3450)
!3530 = !DILocation(line: 265, column: 3, scope: !3423)
!3531 = !DILocation(line: 266, column: 1, scope: !3423)
!3532 = distinct !DISubprogram(name: "gen_tempname_len", scope: !182, file: !182, line: 308, type: !3533, isLocal: false, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!50, !6, !50, !50, !50, !9}
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541}
!3536 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3532, file: !182, line: 308, type: !6)
!3537 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3532, file: !182, line: 308, type: !50)
!3538 = !DILocalVariable(name: "flags", arg: 3, scope: !3532, file: !182, line: 308, type: !50)
!3539 = !DILocalVariable(name: "kind", arg: 4, scope: !3532, file: !182, line: 308, type: !50)
!3540 = !DILocalVariable(name: "x_suffix_len", arg: 5, scope: !3532, file: !182, line: 309, type: !9)
!3541 = !DILocalVariable(name: "tryfunc", scope: !3532, file: !182, line: 311, type: !3426)
!3542 = !DILocation(line: 308, column: 25, scope: !3532)
!3543 = !DILocation(line: 308, column: 35, scope: !3532)
!3544 = !DILocation(line: 308, column: 50, scope: !3532)
!3545 = !DILocation(line: 308, column: 61, scope: !3532)
!3546 = !DILocation(line: 309, column: 26, scope: !3532)
!3547 = !DILocation(line: 313, column: 3, scope: !3532)
!3548 = !DILocation(line: 328, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !182, line: 328, column: 7)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !182, line: 328, column: 7)
!3551 = distinct !DILexicalBlock(scope: !3532, file: !182, line: 314, column: 5)
!3552 = !DILocation(line: 311, column: 9, scope: !3532)
!3553 = !DILocation(line: 331, column: 45, scope: !3532)
!3554 = !DILocation(line: 331, column: 10, scope: !3532)
!3555 = !DILocation(line: 331, column: 3, scope: !3532)
!3556 = distinct !DISubprogram(name: "try_file", scope: !182, file: !182, line: 269, type: !3427, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3556, file: !182, line: 269, type: !6)
!3559 = !DILocalVariable(name: "flags", arg: 2, scope: !3556, file: !182, line: 269, type: !8)
!3560 = !DILocalVariable(name: "openflags", scope: !3556, file: !182, line: 271, type: !64)
!3561 = !DILocation(line: 269, column: 17, scope: !3556)
!3562 = !DILocation(line: 269, column: 29, scope: !3556)
!3563 = !DILocation(line: 271, column: 20, scope: !3556)
!3564 = !DILocation(line: 271, column: 8, scope: !3556)
!3565 = !DILocation(line: 273, column: 19, scope: !3556)
!3566 = !DILocation(line: 273, column: 30, scope: !3556)
!3567 = !DILocation(line: 274, column: 37, scope: !3556)
!3568 = !DILocation(line: 272, column: 10, scope: !3556)
!3569 = !DILocation(line: 272, column: 3, scope: !3556)
!3570 = distinct !DISubprogram(name: "try_dir", scope: !182, file: !182, line: 278, type: !3427, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3571)
!3571 = !{!3572, !3573}
!3572 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3570, file: !182, line: 278, type: !6)
!3573 = !DILocalVariable(name: "flags", arg: 2, scope: !3570, file: !182, line: 278, type: !8)
!3574 = !DILocation(line: 278, column: 16, scope: !3570)
!3575 = !DILocation(line: 278, column: 28, scope: !3570)
!3576 = !DILocation(line: 280, column: 10, scope: !3570)
!3577 = !DILocation(line: 280, column: 3, scope: !3570)
!3578 = distinct !DISubprogram(name: "try_nocreate", scope: !182, file: !182, line: 284, type: !3427, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3579)
!3579 = !{!3580, !3581, !3582}
!3580 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3578, file: !182, line: 284, type: !6)
!3581 = !DILocalVariable(name: "flags", arg: 2, scope: !3578, file: !182, line: 284, type: !8)
!3582 = !DILocalVariable(name: "st", scope: !3578, file: !182, line: 286, type: !3583)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3584, line: 46, size: 1152, elements: !3585)
!3584 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3585 = !{!3586, !3588, !3590, !3592, !3594, !3596, !3598, !3599, !3600, !3601, !3603, !3605, !3613, !3614, !3615}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3583, file: !3584, line: 48, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1149, line: 133, baseType: !11)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3583, file: !3584, line: 53, baseType: !3589, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1149, line: 136, baseType: !11)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3583, file: !3584, line: 61, baseType: !3591, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1149, line: 139, baseType: !11)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3583, file: !3584, line: 62, baseType: !3593, size: 32, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1149, line: 138, baseType: !152)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3583, file: !3584, line: 64, baseType: !3595, size: 32, offset: 224)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1149, line: 134, baseType: !152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3583, file: !3584, line: 65, baseType: !3597, size: 32, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1149, line: 135, baseType: !152)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3583, file: !3584, line: 67, baseType: !50, size: 32, offset: 288)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3583, file: !3584, line: 69, baseType: !3587, size: 64, offset: 320)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3583, file: !3584, line: 74, baseType: !1148, size: 64, offset: 384)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3583, file: !3584, line: 78, baseType: !3602, size: 64, offset: 448)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1149, line: 162, baseType: !1150)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3583, file: !3584, line: 80, baseType: !3604, size: 64, offset: 512)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1149, line: 167, baseType: !1150)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3583, file: !3584, line: 91, baseType: !3606, size: 128, offset: 576)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3607, line: 8, size: 128, elements: !3608)
!3607 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3608 = !{!3609, !3611}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3606, file: !3607, line: 10, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1149, line: 148, baseType: !1150)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3606, file: !3607, line: 11, baseType: !3612, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1149, line: 184, baseType: !1150)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3583, file: !3584, line: 92, baseType: !3606, size: 128, offset: 704)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3583, file: !3584, line: 93, baseType: !3606, size: 128, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3583, file: !3584, line: 106, baseType: !3616, size: 192, offset: 960)
!3616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3612, size: 192, elements: !3617)
!3617 = !{!3618}
!3618 = !DISubrange(count: 3)
!3619 = !DILocation(line: 284, column: 21, scope: !3578)
!3620 = !DILocation(line: 284, column: 33, scope: !3578)
!3621 = !DILocation(line: 286, column: 3, scope: !3578)
!3622 = !DILocation(line: 286, column: 17, scope: !3578)
!3623 = !DILocalVariable(name: "__path", arg: 1, scope: !3624, file: !3625, line: 456, type: !17)
!3624 = distinct !DISubprogram(name: "lstat", scope: !3625, file: !3625, line: 456, type: !3626, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3629)
!3625 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!50, !17, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3629 = !{!3623, !3630}
!3630 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3624, file: !3625, line: 456, type: !3628)
!3631 = !DILocation(line: 456, column: 1, scope: !3624, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 288, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3578, file: !182, line: 288, column: 7)
!3634 = !DILocation(line: 458, column: 10, scope: !3624, inlinedAt: !3632)
!3635 = !DILocation(line: 288, column: 41, scope: !3633)
!3636 = !DILocation(line: 289, column: 5, scope: !3633)
!3637 = !DILocation(line: 288, column: 7, scope: !3578)
!3638 = !DILocation(line: 290, column: 10, scope: !3578)
!3639 = !DILocation(line: 291, column: 1, scope: !3578)
!3640 = !DILocation(line: 290, column: 3, scope: !3578)
!3641 = distinct !DISubprogram(name: "gen_tempname", scope: !182, file: !182, line: 335, type: !3642, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!50, !6, !50, !50, !50}
!3644 = !{!3645, !3646, !3647, !3648}
!3645 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3641, file: !182, line: 335, type: !6)
!3646 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3641, file: !182, line: 335, type: !50)
!3647 = !DILocalVariable(name: "flags", arg: 3, scope: !3641, file: !182, line: 335, type: !50)
!3648 = !DILocalVariable(name: "kind", arg: 4, scope: !3641, file: !182, line: 335, type: !50)
!3649 = !DILocation(line: 335, column: 23, scope: !3641)
!3650 = !DILocation(line: 335, column: 33, scope: !3641)
!3651 = !DILocation(line: 335, column: 48, scope: !3641)
!3652 = !DILocation(line: 335, column: 59, scope: !3641)
!3653 = !DILocation(line: 308, column: 25, scope: !3532, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 337, column: 10, scope: !3641)
!3655 = !DILocation(line: 308, column: 35, scope: !3532, inlinedAt: !3654)
!3656 = !DILocation(line: 308, column: 50, scope: !3532, inlinedAt: !3654)
!3657 = !DILocation(line: 308, column: 61, scope: !3532, inlinedAt: !3654)
!3658 = !DILocation(line: 309, column: 26, scope: !3532, inlinedAt: !3654)
!3659 = !DILocation(line: 313, column: 3, scope: !3532, inlinedAt: !3654)
!3660 = !DILocation(line: 328, column: 7, scope: !3549, inlinedAt: !3654)
!3661 = !DILocation(line: 311, column: 9, scope: !3532, inlinedAt: !3654)
!3662 = !DILocation(line: 331, column: 10, scope: !3532, inlinedAt: !3654)
!3663 = !DILocation(line: 331, column: 3, scope: !3532, inlinedAt: !3654)
!3664 = !DILocation(line: 337, column: 3, scope: !3641)
!3665 = distinct !DISubprogram(name: "try_tempname", scope: !182, file: !182, line: 341, type: !3666, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !179, variables: !3668)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!50, !6, !50, !8, !3426}
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3665, file: !182, line: 341, type: !6)
!3670 = !DILocalVariable(name: "suffixlen", arg: 2, scope: !3665, file: !182, line: 341, type: !50)
!3671 = !DILocalVariable(name: "args", arg: 3, scope: !3665, file: !182, line: 341, type: !8)
!3672 = !DILocalVariable(name: "tryfunc", arg: 4, scope: !3665, file: !182, line: 342, type: !3426)
!3673 = !DILocation(line: 341, column: 23, scope: !3665)
!3674 = !DILocation(line: 341, column: 33, scope: !3665)
!3675 = !DILocation(line: 341, column: 50, scope: !3665)
!3676 = !DILocation(line: 342, column: 23, scope: !3665)
!3677 = !DILocation(line: 344, column: 10, scope: !3665)
!3678 = !DILocation(line: 344, column: 3, scope: !3665)
!3679 = distinct !DISubprogram(name: "version_etc_arn", scope: !594, file: !594, line: 62, type: !3680, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !3723)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !3682, !17, !17, !17, !3722, !9}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1120, line: 49, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1122, line: 241, size: 1728, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3684, file: !1122, line: 242, baseType: !50, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3684, file: !1122, line: 247, baseType: !6, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3684, file: !1122, line: 248, baseType: !6, size: 64, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3684, file: !1122, line: 249, baseType: !6, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3684, file: !1122, line: 250, baseType: !6, size: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3684, file: !1122, line: 251, baseType: !6, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3684, file: !1122, line: 252, baseType: !6, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3684, file: !1122, line: 253, baseType: !6, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3684, file: !1122, line: 254, baseType: !6, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3684, file: !1122, line: 256, baseType: !6, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3684, file: !1122, line: 257, baseType: !6, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3684, file: !1122, line: 258, baseType: !6, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3684, file: !1122, line: 260, baseType: !3699, size: 64, offset: 768)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1122, line: 156, size: 192, elements: !3701)
!3701 = !{!3702, !3703, !3705}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3700, file: !1122, line: 157, baseType: !3699, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3700, file: !1122, line: 158, baseType: !3704, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3700, file: !1122, line: 162, baseType: !50, size: 32, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3684, file: !1122, line: 262, baseType: !3704, size: 64, offset: 832)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3684, file: !1122, line: 264, baseType: !50, size: 32, offset: 896)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3684, file: !1122, line: 268, baseType: !50, size: 32, offset: 928)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3684, file: !1122, line: 270, baseType: !1148, size: 64, offset: 960)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3684, file: !1122, line: 274, baseType: !135, size: 16, offset: 1024)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3684, file: !1122, line: 275, baseType: !1153, size: 8, offset: 1040)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3684, file: !1122, line: 276, baseType: !1155, size: 8, offset: 1048)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3684, file: !1122, line: 280, baseType: !1157, size: 64, offset: 1088)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3684, file: !1122, line: 289, baseType: !1160, size: 64, offset: 1152)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3684, file: !1122, line: 297, baseType: !8, size: 64, offset: 1216)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3684, file: !1122, line: 298, baseType: !8, size: 64, offset: 1280)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3684, file: !1122, line: 299, baseType: !8, size: 64, offset: 1344)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3684, file: !1122, line: 300, baseType: !8, size: 64, offset: 1408)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3684, file: !1122, line: 302, baseType: !9, size: 64, offset: 1472)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3684, file: !1122, line: 303, baseType: !50, size: 32, offset: 1536)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3684, file: !1122, line: 305, baseType: !1168, size: 160, offset: 1568)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729}
!3724 = !DILocalVariable(name: "stream", arg: 1, scope: !3679, file: !594, line: 62, type: !3682)
!3725 = !DILocalVariable(name: "command_name", arg: 2, scope: !3679, file: !594, line: 63, type: !17)
!3726 = !DILocalVariable(name: "package", arg: 3, scope: !3679, file: !594, line: 63, type: !17)
!3727 = !DILocalVariable(name: "version", arg: 4, scope: !3679, file: !594, line: 64, type: !17)
!3728 = !DILocalVariable(name: "authors", arg: 5, scope: !3679, file: !594, line: 65, type: !3722)
!3729 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3679, file: !594, line: 65, type: !9)
!3730 = !DILocation(line: 62, column: 24, scope: !3679)
!3731 = !DILocation(line: 63, column: 30, scope: !3679)
!3732 = !DILocation(line: 63, column: 56, scope: !3679)
!3733 = !DILocation(line: 64, column: 30, scope: !3679)
!3734 = !DILocation(line: 65, column: 39, scope: !3679)
!3735 = !DILocation(line: 65, column: 55, scope: !3679)
!3736 = !DILocation(line: 67, column: 7, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3679, file: !594, line: 67, column: 7)
!3738 = !DILocation(line: 67, column: 7, scope: !3679)
!3739 = !DILocation(line: 68, column: 5, scope: !3737)
!3740 = !DILocation(line: 70, column: 5, scope: !3737)
!3741 = !DILocation(line: 84, column: 3, scope: !3679)
!3742 = !DILocation(line: 84, column: 3, scope: !3743)
!3743 = !DILexicalBlockFile(scope: !3679, file: !594, discriminator: 1)
!3744 = !DILocation(line: 86, column: 3, scope: !3679)
!3745 = !DILocation(line: 86, column: 3, scope: !3743)
!3746 = !DILocation(line: 95, column: 3, scope: !3679)
!3747 = !DILocation(line: 99, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3679, file: !594, line: 96, column: 5)
!3749 = !DILocation(line: 102, column: 7, scope: !3748)
!3750 = !DILocation(line: 102, column: 7, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3748, file: !594, discriminator: 1)
!3752 = !DILocation(line: 103, column: 7, scope: !3748)
!3753 = !DILocation(line: 106, column: 7, scope: !3748)
!3754 = !DILocation(line: 106, column: 7, scope: !3751)
!3755 = !DILocation(line: 107, column: 7, scope: !3748)
!3756 = !DILocation(line: 110, column: 7, scope: !3748)
!3757 = !DILocation(line: 110, column: 7, scope: !3751)
!3758 = !DILocation(line: 112, column: 7, scope: !3748)
!3759 = !DILocation(line: 117, column: 7, scope: !3748)
!3760 = !DILocation(line: 117, column: 7, scope: !3751)
!3761 = !DILocation(line: 119, column: 7, scope: !3748)
!3762 = !DILocation(line: 124, column: 7, scope: !3748)
!3763 = !DILocation(line: 124, column: 7, scope: !3751)
!3764 = !DILocation(line: 126, column: 7, scope: !3748)
!3765 = !DILocation(line: 131, column: 7, scope: !3748)
!3766 = !DILocation(line: 131, column: 7, scope: !3751)
!3767 = !DILocation(line: 134, column: 7, scope: !3748)
!3768 = !DILocation(line: 139, column: 7, scope: !3748)
!3769 = !DILocation(line: 139, column: 7, scope: !3751)
!3770 = !DILocation(line: 142, column: 7, scope: !3748)
!3771 = !DILocation(line: 147, column: 7, scope: !3748)
!3772 = !DILocation(line: 147, column: 7, scope: !3751)
!3773 = !DILocation(line: 151, column: 7, scope: !3748)
!3774 = !DILocation(line: 156, column: 7, scope: !3748)
!3775 = !DILocation(line: 156, column: 7, scope: !3751)
!3776 = !DILocation(line: 160, column: 7, scope: !3748)
!3777 = !DILocation(line: 167, column: 7, scope: !3748)
!3778 = !DILocation(line: 167, column: 7, scope: !3751)
!3779 = !DILocation(line: 171, column: 7, scope: !3748)
!3780 = !DILocation(line: 173, column: 1, scope: !3679)
!3781 = distinct !DISubprogram(name: "version_etc_ar", scope: !594, file: !594, line: 180, type: !3782, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3682, !17, !17, !17, !3722}
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790}
!3785 = !DILocalVariable(name: "stream", arg: 1, scope: !3781, file: !594, line: 180, type: !3682)
!3786 = !DILocalVariable(name: "command_name", arg: 2, scope: !3781, file: !594, line: 181, type: !17)
!3787 = !DILocalVariable(name: "package", arg: 3, scope: !3781, file: !594, line: 181, type: !17)
!3788 = !DILocalVariable(name: "version", arg: 4, scope: !3781, file: !594, line: 182, type: !17)
!3789 = !DILocalVariable(name: "authors", arg: 5, scope: !3781, file: !594, line: 182, type: !3722)
!3790 = !DILocalVariable(name: "n_authors", scope: !3781, file: !594, line: 184, type: !9)
!3791 = !DILocation(line: 180, column: 23, scope: !3781)
!3792 = !DILocation(line: 181, column: 29, scope: !3781)
!3793 = !DILocation(line: 181, column: 55, scope: !3781)
!3794 = !DILocation(line: 182, column: 29, scope: !3781)
!3795 = !DILocation(line: 182, column: 59, scope: !3781)
!3796 = !DILocation(line: 184, column: 10, scope: !3781)
!3797 = !DILocation(line: 186, column: 8, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3781, file: !594, line: 186, column: 3)
!3799 = !DILocation(line: 186, column: 23, scope: !3800)
!3800 = !DILexicalBlockFile(scope: !3801, file: !594, discriminator: 1)
!3801 = distinct !DILexicalBlock(scope: !3798, file: !594, line: 186, column: 3)
!3802 = !DILocation(line: 186, column: 3, scope: !3803)
!3803 = !DILexicalBlockFile(scope: !3798, file: !594, discriminator: 1)
!3804 = !DILocation(line: 186, column: 52, scope: !3805)
!3805 = !DILexicalBlockFile(scope: !3801, file: !594, discriminator: 3)
!3806 = distinct !{!3806, !3807, !3808}
!3807 = !DILocation(line: 186, column: 3, scope: !3798)
!3808 = !DILocation(line: 187, column: 5, scope: !3798)
!3809 = !DILocation(line: 188, column: 3, scope: !3781)
!3810 = !DILocation(line: 189, column: 1, scope: !3781)
!3811 = distinct !DISubprogram(name: "version_etc_va", scope: !594, file: !594, line: 196, type: !3812, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !3821)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3682, !17, !17, !17, !3814}
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !591, line: 189, size: 192, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3820}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3815, file: !591, line: 189, baseType: !152, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3815, file: !591, line: 189, baseType: !152, size: 32, offset: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3815, file: !591, line: 189, baseType: !8, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3815, file: !591, line: 189, baseType: !8, size: 64, offset: 128)
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828}
!3822 = !DILocalVariable(name: "stream", arg: 1, scope: !3811, file: !594, line: 196, type: !3682)
!3823 = !DILocalVariable(name: "command_name", arg: 2, scope: !3811, file: !594, line: 197, type: !17)
!3824 = !DILocalVariable(name: "package", arg: 3, scope: !3811, file: !594, line: 197, type: !17)
!3825 = !DILocalVariable(name: "version", arg: 4, scope: !3811, file: !594, line: 198, type: !17)
!3826 = !DILocalVariable(name: "authors", arg: 5, scope: !3811, file: !594, line: 198, type: !3814)
!3827 = !DILocalVariable(name: "n_authors", scope: !3811, file: !594, line: 200, type: !9)
!3828 = !DILocalVariable(name: "authtab", scope: !3811, file: !594, line: 201, type: !3829)
!3829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !142)
!3830 = !DILocation(line: 196, column: 23, scope: !3811)
!3831 = !DILocation(line: 197, column: 29, scope: !3811)
!3832 = !DILocation(line: 197, column: 55, scope: !3811)
!3833 = !DILocation(line: 198, column: 29, scope: !3811)
!3834 = !DILocation(line: 198, column: 46, scope: !3811)
!3835 = !DILocation(line: 201, column: 3, scope: !3811)
!3836 = !DILocation(line: 201, column: 15, scope: !3811)
!3837 = !DILocation(line: 200, column: 10, scope: !3811)
!3838 = !DILocation(line: 205, column: 35, scope: !3839)
!3839 = !DILexicalBlockFile(scope: !3840, file: !594, discriminator: 1)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !594, line: 203, column: 3)
!3841 = distinct !DILexicalBlock(scope: !3811, file: !594, line: 203, column: 3)
!3842 = !DILocation(line: 205, column: 35, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !3840, file: !594, discriminator: 2)
!3844 = !DILocation(line: 205, column: 35, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3840, file: !594, discriminator: 3)
!3846 = !DILocation(line: 205, column: 35, scope: !3847)
!3847 = !DILexicalBlockFile(scope: !3840, file: !594, discriminator: 4)
!3848 = !DILocation(line: 205, column: 14, scope: !3847)
!3849 = !DILocation(line: 205, column: 33, scope: !3847)
!3850 = !DILocation(line: 205, column: 67, scope: !3847)
!3851 = !DILocation(line: 203, column: 3, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3841, file: !594, discriminator: 1)
!3853 = !DILocation(line: 208, column: 3, scope: !3811)
!3854 = !DILocation(line: 210, column: 1, scope: !3811)
!3855 = distinct !DISubprogram(name: "version_etc", scope: !594, file: !594, line: 227, type: !3856, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !3682, !17, !17, !17, null}
!3858 = !{!3859, !3860, !3861, !3862, !3863}
!3859 = !DILocalVariable(name: "stream", arg: 1, scope: !3855, file: !594, line: 227, type: !3682)
!3860 = !DILocalVariable(name: "command_name", arg: 2, scope: !3855, file: !594, line: 228, type: !17)
!3861 = !DILocalVariable(name: "package", arg: 3, scope: !3855, file: !594, line: 228, type: !17)
!3862 = !DILocalVariable(name: "version", arg: 4, scope: !3855, file: !594, line: 229, type: !17)
!3863 = !DILocalVariable(name: "authors", scope: !3855, file: !594, line: 231, type: !3864)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1120, line: 80, baseType: !3865)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !557, line: 50, baseType: !3866)
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !591, line: 231, baseType: !3867)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3815, size: 192, elements: !566)
!3868 = !DILocation(line: 227, column: 20, scope: !3855)
!3869 = !DILocation(line: 228, column: 26, scope: !3855)
!3870 = !DILocation(line: 228, column: 52, scope: !3855)
!3871 = !DILocation(line: 229, column: 26, scope: !3855)
!3872 = !DILocation(line: 231, column: 3, scope: !3855)
!3873 = !DILocation(line: 231, column: 11, scope: !3855)
!3874 = !DILocation(line: 233, column: 3, scope: !3855)
!3875 = !DILocation(line: 234, column: 3, scope: !3855)
!3876 = !DILocation(line: 235, column: 3, scope: !3855)
!3877 = !DILocation(line: 236, column: 1, scope: !3855)
!3878 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !594, file: !594, line: 239, type: !1102, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !590, variables: !4)
!3879 = !DILocation(line: 245, column: 3, scope: !3878)
!3880 = !DILocation(line: 245, column: 3, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !3878, file: !594, discriminator: 1)
!3882 = !DILocation(line: 251, column: 3, scope: !3878)
!3883 = !DILocation(line: 251, column: 3, scope: !3881)
!3884 = !DILocation(line: 256, column: 3, scope: !3878)
!3885 = !DILocation(line: 256, column: 3, scope: !3881)
!3886 = !DILocation(line: 258, column: 1, scope: !3878)
!3887 = distinct !DISubprogram(name: "xnmalloc", scope: !601, file: !601, line: 105, type: !3888, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!8, !9, !9}
!3890 = !{!3891, !3892}
!3891 = !DILocalVariable(name: "n", arg: 1, scope: !3887, file: !601, line: 105, type: !9)
!3892 = !DILocalVariable(name: "s", arg: 2, scope: !3887, file: !601, line: 105, type: !9)
!3893 = !DILocation(line: 105, column: 18, scope: !3887)
!3894 = !DILocation(line: 105, column: 28, scope: !3887)
!3895 = !DILocation(line: 107, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3887, file: !601, line: 107, column: 7)
!3897 = !DILocation(line: 107, column: 7, scope: !3887)
!3898 = !DILocation(line: 108, column: 5, scope: !3896)
!3899 = !DILocation(line: 109, column: 21, scope: !3887)
!3900 = !DILocalVariable(name: "n", arg: 1, scope: !3901, file: !3902, line: 39, type: !9)
!3901 = distinct !DISubprogram(name: "xmalloc", scope: !3902, file: !3902, line: 39, type: !3903, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3905)
!3902 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!8, !9}
!3905 = !{!3900, !3906}
!3906 = !DILocalVariable(name: "p", scope: !3901, file: !3902, line: 41, type: !8)
!3907 = !DILocation(line: 39, column: 17, scope: !3901, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 109, column: 10, scope: !3887)
!3909 = !DILocation(line: 41, column: 13, scope: !3901, inlinedAt: !3908)
!3910 = !DILocation(line: 41, column: 9, scope: !3901, inlinedAt: !3908)
!3911 = !DILocation(line: 42, column: 8, scope: !3912, inlinedAt: !3908)
!3912 = distinct !DILexicalBlock(scope: !3901, file: !3902, line: 42, column: 7)
!3913 = !DILocation(line: 42, column: 15, scope: !3914, inlinedAt: !3908)
!3914 = !DILexicalBlockFile(scope: !3912, file: !3902, discriminator: 1)
!3915 = !DILocation(line: 42, column: 10, scope: !3912, inlinedAt: !3908)
!3916 = !DILocation(line: 43, column: 5, scope: !3912, inlinedAt: !3908)
!3917 = !DILocation(line: 109, column: 3, scope: !3887)
!3918 = !DILocation(line: 39, column: 17, scope: !3901)
!3919 = !DILocation(line: 41, column: 13, scope: !3901)
!3920 = !DILocation(line: 41, column: 9, scope: !3901)
!3921 = !DILocation(line: 42, column: 8, scope: !3912)
!3922 = !DILocation(line: 42, column: 15, scope: !3914)
!3923 = !DILocation(line: 42, column: 10, scope: !3912)
!3924 = !DILocation(line: 43, column: 5, scope: !3912)
!3925 = !DILocation(line: 44, column: 3, scope: !3901)
!3926 = distinct !DISubprogram(name: "xnrealloc", scope: !601, file: !601, line: 118, type: !3927, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3929)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!8, !8, !9, !9}
!3929 = !{!3930, !3931, !3932}
!3930 = !DILocalVariable(name: "p", arg: 1, scope: !3926, file: !601, line: 118, type: !8)
!3931 = !DILocalVariable(name: "n", arg: 2, scope: !3926, file: !601, line: 118, type: !9)
!3932 = !DILocalVariable(name: "s", arg: 3, scope: !3926, file: !601, line: 118, type: !9)
!3933 = !DILocation(line: 118, column: 18, scope: !3926)
!3934 = !DILocation(line: 118, column: 28, scope: !3926)
!3935 = !DILocation(line: 118, column: 38, scope: !3926)
!3936 = !DILocation(line: 120, column: 7, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3926, file: !601, line: 120, column: 7)
!3938 = !DILocation(line: 120, column: 7, scope: !3926)
!3939 = !DILocation(line: 121, column: 5, scope: !3937)
!3940 = !DILocation(line: 122, column: 25, scope: !3926)
!3941 = !DILocalVariable(name: "p", arg: 1, scope: !3942, file: !3902, line: 51, type: !8)
!3942 = distinct !DISubprogram(name: "xrealloc", scope: !3902, file: !3902, line: 51, type: !3943, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!8, !8, !9}
!3945 = !{!3941, !3946}
!3946 = !DILocalVariable(name: "n", arg: 2, scope: !3942, file: !3902, line: 51, type: !9)
!3947 = !DILocation(line: 51, column: 17, scope: !3942, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 122, column: 10, scope: !3926)
!3949 = !DILocation(line: 51, column: 27, scope: !3942, inlinedAt: !3948)
!3950 = !DILocation(line: 53, column: 8, scope: !3951, inlinedAt: !3948)
!3951 = distinct !DILexicalBlock(scope: !3942, file: !3902, line: 53, column: 7)
!3952 = !DILocation(line: 53, column: 13, scope: !3953, inlinedAt: !3948)
!3953 = !DILexicalBlockFile(scope: !3951, file: !3902, discriminator: 1)
!3954 = !DILocation(line: 53, column: 10, scope: !3951, inlinedAt: !3948)
!3955 = !DILocation(line: 57, column: 7, scope: !3956, inlinedAt: !3948)
!3956 = distinct !DILexicalBlock(scope: !3951, file: !3902, line: 54, column: 5)
!3957 = !DILocation(line: 58, column: 7, scope: !3956, inlinedAt: !3948)
!3958 = !DILocation(line: 61, column: 7, scope: !3942, inlinedAt: !3948)
!3959 = !DILocation(line: 62, column: 8, scope: !3960, inlinedAt: !3948)
!3960 = distinct !DILexicalBlock(scope: !3942, file: !3902, line: 62, column: 7)
!3961 = !DILocation(line: 62, column: 13, scope: !3962, inlinedAt: !3948)
!3962 = !DILexicalBlockFile(scope: !3960, file: !3902, discriminator: 1)
!3963 = !DILocation(line: 62, column: 10, scope: !3960, inlinedAt: !3948)
!3964 = !DILocation(line: 63, column: 5, scope: !3960, inlinedAt: !3948)
!3965 = !DILocation(line: 122, column: 3, scope: !3926)
!3966 = !DILocation(line: 51, column: 17, scope: !3942)
!3967 = !DILocation(line: 51, column: 27, scope: !3942)
!3968 = !DILocation(line: 53, column: 8, scope: !3951)
!3969 = !DILocation(line: 53, column: 13, scope: !3953)
!3970 = !DILocation(line: 53, column: 10, scope: !3951)
!3971 = !DILocation(line: 57, column: 7, scope: !3956)
!3972 = !DILocation(line: 58, column: 7, scope: !3956)
!3973 = !DILocation(line: 61, column: 7, scope: !3942)
!3974 = !DILocation(line: 62, column: 8, scope: !3960)
!3975 = !DILocation(line: 62, column: 13, scope: !3962)
!3976 = !DILocation(line: 62, column: 10, scope: !3960)
!3977 = !DILocation(line: 63, column: 5, scope: !3960)
!3978 = !DILocation(line: 65, column: 1, scope: !3942)
!3979 = !DILocation(line: 180, column: 19, scope: !602)
!3980 = !DILocation(line: 180, column: 30, scope: !602)
!3981 = !DILocation(line: 180, column: 41, scope: !602)
!3982 = !DILocation(line: 182, column: 14, scope: !602)
!3983 = !DILocation(line: 182, column: 10, scope: !602)
!3984 = !DILocation(line: 184, column: 9, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !602, file: !601, line: 184, column: 7)
!3986 = !DILocation(line: 184, column: 7, scope: !602)
!3987 = !DILocation(line: 186, column: 13, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !601, line: 186, column: 11)
!3989 = distinct !DILexicalBlock(scope: !3985, file: !601, line: 185, column: 5)
!3990 = !DILocation(line: 186, column: 11, scope: !3989)
!3991 = !DILocation(line: 194, column: 30, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3988, file: !601, line: 187, column: 9)
!3993 = !DILocation(line: 195, column: 16, scope: !3992)
!3994 = !DILocation(line: 195, column: 13, scope: !3992)
!3995 = !DILocation(line: 196, column: 9, scope: !3992)
!3996 = !DILocation(line: 204, column: 69, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !601, line: 204, column: 11)
!3998 = distinct !DILexicalBlock(scope: !3985, file: !601, line: 199, column: 5)
!3999 = !DILocation(line: 205, column: 11, scope: !3997)
!4000 = !DILocation(line: 204, column: 11, scope: !3998)
!4001 = !DILocation(line: 206, column: 9, scope: !3997)
!4002 = !DILocation(line: 210, column: 7, scope: !602)
!4003 = !DILocation(line: 211, column: 25, scope: !602)
!4004 = !DILocation(line: 51, column: 17, scope: !3942, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 211, column: 10, scope: !602)
!4006 = !DILocation(line: 51, column: 27, scope: !3942, inlinedAt: !4005)
!4007 = !DILocation(line: 53, column: 10, scope: !3951, inlinedAt: !4005)
!4008 = !DILocation(line: 207, column: 14, scope: !3998)
!4009 = !DILocation(line: 207, column: 18, scope: !3998)
!4010 = !DILocation(line: 207, column: 9, scope: !3998)
!4011 = !DILocation(line: 53, column: 8, scope: !3951, inlinedAt: !4005)
!4012 = !DILocation(line: 57, column: 7, scope: !3956, inlinedAt: !4005)
!4013 = !DILocation(line: 58, column: 7, scope: !3956, inlinedAt: !4005)
!4014 = !DILocation(line: 61, column: 7, scope: !3942, inlinedAt: !4005)
!4015 = !DILocation(line: 62, column: 8, scope: !3960, inlinedAt: !4005)
!4016 = !DILocation(line: 62, column: 13, scope: !3962, inlinedAt: !4005)
!4017 = !DILocation(line: 62, column: 10, scope: !3960, inlinedAt: !4005)
!4018 = !DILocation(line: 63, column: 5, scope: !3960, inlinedAt: !4005)
!4019 = !DILocation(line: 211, column: 3, scope: !602)
!4020 = distinct !DISubprogram(name: "xcharalloc", scope: !601, file: !601, line: 220, type: !888, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4021)
!4021 = !{!4022}
!4022 = !DILocalVariable(name: "n", arg: 1, scope: !4020, file: !601, line: 220, type: !9)
!4023 = !DILocation(line: 220, column: 20, scope: !4020)
!4024 = !DILocation(line: 39, column: 17, scope: !3901, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 222, column: 10, scope: !4020)
!4026 = !DILocation(line: 41, column: 13, scope: !3901, inlinedAt: !4025)
!4027 = !DILocation(line: 41, column: 9, scope: !3901, inlinedAt: !4025)
!4028 = !DILocation(line: 42, column: 8, scope: !3912, inlinedAt: !4025)
!4029 = !DILocation(line: 42, column: 15, scope: !3914, inlinedAt: !4025)
!4030 = !DILocation(line: 42, column: 10, scope: !3912, inlinedAt: !4025)
!4031 = !DILocation(line: 43, column: 5, scope: !3912, inlinedAt: !4025)
!4032 = !DILocation(line: 222, column: 3, scope: !4020)
!4033 = distinct !DISubprogram(name: "x2realloc", scope: !3902, file: !3902, line: 74, type: !4034, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!8, !8, !605}
!4036 = !{!4037, !4038}
!4037 = !DILocalVariable(name: "p", arg: 1, scope: !4033, file: !3902, line: 74, type: !8)
!4038 = !DILocalVariable(name: "pn", arg: 2, scope: !4033, file: !3902, line: 74, type: !605)
!4039 = !DILocation(line: 74, column: 18, scope: !4033)
!4040 = !DILocation(line: 74, column: 29, scope: !4033)
!4041 = !DILocation(line: 180, column: 19, scope: !602, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 76, column: 10, scope: !4033)
!4043 = !DILocation(line: 180, column: 30, scope: !602, inlinedAt: !4042)
!4044 = !DILocation(line: 180, column: 41, scope: !602, inlinedAt: !4042)
!4045 = !DILocation(line: 182, column: 14, scope: !602, inlinedAt: !4042)
!4046 = !DILocation(line: 182, column: 10, scope: !602, inlinedAt: !4042)
!4047 = !DILocation(line: 184, column: 9, scope: !3985, inlinedAt: !4042)
!4048 = !DILocation(line: 184, column: 7, scope: !602, inlinedAt: !4042)
!4049 = !DILocation(line: 186, column: 13, scope: !3988, inlinedAt: !4042)
!4050 = !DILocation(line: 186, column: 11, scope: !3989, inlinedAt: !4042)
!4051 = !DILocation(line: 210, column: 7, scope: !602, inlinedAt: !4042)
!4052 = !DILocation(line: 51, column: 17, scope: !3942, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 211, column: 10, scope: !602, inlinedAt: !4042)
!4054 = !DILocation(line: 51, column: 27, scope: !3942, inlinedAt: !4053)
!4055 = !DILocation(line: 53, column: 10, scope: !3951, inlinedAt: !4053)
!4056 = !DILocation(line: 205, column: 11, scope: !3997, inlinedAt: !4042)
!4057 = !DILocation(line: 204, column: 11, scope: !3998, inlinedAt: !4042)
!4058 = !DILocation(line: 206, column: 9, scope: !3997, inlinedAt: !4042)
!4059 = !DILocation(line: 207, column: 14, scope: !3998, inlinedAt: !4042)
!4060 = !DILocation(line: 207, column: 18, scope: !3998, inlinedAt: !4042)
!4061 = !DILocation(line: 207, column: 9, scope: !3998, inlinedAt: !4042)
!4062 = !DILocation(line: 53, column: 8, scope: !3951, inlinedAt: !4053)
!4063 = !DILocation(line: 57, column: 7, scope: !3956, inlinedAt: !4053)
!4064 = !DILocation(line: 58, column: 7, scope: !3956, inlinedAt: !4053)
!4065 = !DILocation(line: 61, column: 7, scope: !3942, inlinedAt: !4053)
!4066 = !DILocation(line: 62, column: 8, scope: !3960, inlinedAt: !4053)
!4067 = !DILocation(line: 62, column: 13, scope: !3962, inlinedAt: !4053)
!4068 = !DILocation(line: 62, column: 10, scope: !3960, inlinedAt: !4053)
!4069 = !DILocation(line: 63, column: 5, scope: !3960, inlinedAt: !4053)
!4070 = !DILocation(line: 76, column: 3, scope: !4033)
!4071 = distinct !DISubprogram(name: "xzalloc", scope: !3902, file: !3902, line: 84, type: !3903, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4072)
!4072 = !{!4073}
!4073 = !DILocalVariable(name: "s", arg: 1, scope: !4071, file: !3902, line: 84, type: !9)
!4074 = !DILocation(line: 84, column: 17, scope: !4071)
!4075 = !DILocation(line: 39, column: 17, scope: !3901, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 86, column: 18, scope: !4071)
!4077 = !DILocation(line: 41, column: 13, scope: !3901, inlinedAt: !4076)
!4078 = !DILocation(line: 41, column: 9, scope: !3901, inlinedAt: !4076)
!4079 = !DILocation(line: 42, column: 8, scope: !3912, inlinedAt: !4076)
!4080 = !DILocation(line: 42, column: 15, scope: !3914, inlinedAt: !4076)
!4081 = !DILocation(line: 42, column: 10, scope: !3912, inlinedAt: !4076)
!4082 = !DILocation(line: 43, column: 5, scope: !3912, inlinedAt: !4076)
!4083 = !DILocation(line: 86, column: 10, scope: !4071)
!4084 = !DILocation(line: 86, column: 3, scope: !4071)
!4085 = distinct !DISubprogram(name: "xcalloc", scope: !3902, file: !3902, line: 93, type: !3888, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4086)
!4086 = !{!4087, !4088, !4089}
!4087 = !DILocalVariable(name: "n", arg: 1, scope: !4085, file: !3902, line: 93, type: !9)
!4088 = !DILocalVariable(name: "s", arg: 2, scope: !4085, file: !3902, line: 93, type: !9)
!4089 = !DILocalVariable(name: "p", scope: !4085, file: !3902, line: 95, type: !8)
!4090 = !DILocation(line: 93, column: 17, scope: !4085)
!4091 = !DILocation(line: 93, column: 27, scope: !4085)
!4092 = !DILocation(line: 100, column: 7, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4085, file: !3902, line: 100, column: 7)
!4094 = !DILocation(line: 101, column: 7, scope: !4093)
!4095 = !DILocation(line: 101, column: 18, scope: !4096)
!4096 = !DILexicalBlockFile(scope: !4093, file: !3902, discriminator: 1)
!4097 = !DILocation(line: 95, column: 9, scope: !4085)
!4098 = !DILocation(line: 101, column: 16, scope: !4096)
!4099 = !DILocation(line: 100, column: 7, scope: !4100)
!4100 = !DILexicalBlockFile(scope: !4085, file: !3902, discriminator: 1)
!4101 = !DILocation(line: 102, column: 5, scope: !4093)
!4102 = !DILocation(line: 103, column: 3, scope: !4085)
!4103 = distinct !DISubprogram(name: "xmemdup", scope: !3902, file: !3902, line: 111, type: !4104, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!8, !12, !9}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "p", arg: 1, scope: !4103, file: !3902, line: 111, type: !12)
!4108 = !DILocalVariable(name: "s", arg: 2, scope: !4103, file: !3902, line: 111, type: !9)
!4109 = !DILocation(line: 111, column: 22, scope: !4103)
!4110 = !DILocation(line: 111, column: 32, scope: !4103)
!4111 = !DILocation(line: 39, column: 17, scope: !3901, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 113, column: 18, scope: !4103)
!4113 = !DILocation(line: 41, column: 13, scope: !3901, inlinedAt: !4112)
!4114 = !DILocation(line: 41, column: 9, scope: !3901, inlinedAt: !4112)
!4115 = !DILocation(line: 42, column: 8, scope: !3912, inlinedAt: !4112)
!4116 = !DILocation(line: 42, column: 15, scope: !3914, inlinedAt: !4112)
!4117 = !DILocation(line: 42, column: 10, scope: !3912, inlinedAt: !4112)
!4118 = !DILocation(line: 43, column: 5, scope: !3912, inlinedAt: !4112)
!4119 = !DILocation(line: 113, column: 10, scope: !4103)
!4120 = !DILocation(line: 113, column: 3, scope: !4103)
!4121 = distinct !DISubprogram(name: "xstrdup", scope: !3902, file: !3902, line: 119, type: !1265, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !597, variables: !4122)
!4122 = !{!4123}
!4123 = !DILocalVariable(name: "string", arg: 1, scope: !4121, file: !3902, line: 119, type: !17)
!4124 = !DILocation(line: 119, column: 22, scope: !4121)
!4125 = !DILocation(line: 121, column: 27, scope: !4121)
!4126 = !DILocation(line: 121, column: 43, scope: !4121)
!4127 = !DILocation(line: 111, column: 22, scope: !4103, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 121, column: 10, scope: !4129)
!4129 = !DILexicalBlockFile(scope: !4121, file: !3902, discriminator: 1)
!4130 = !DILocation(line: 111, column: 32, scope: !4103, inlinedAt: !4128)
!4131 = !DILocation(line: 39, column: 17, scope: !3901, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 113, column: 18, scope: !4103, inlinedAt: !4128)
!4133 = !DILocation(line: 41, column: 13, scope: !3901, inlinedAt: !4132)
!4134 = !DILocation(line: 41, column: 9, scope: !3901, inlinedAt: !4132)
!4135 = !DILocation(line: 42, column: 8, scope: !3912, inlinedAt: !4132)
!4136 = !DILocation(line: 42, column: 15, scope: !3914, inlinedAt: !4132)
!4137 = !DILocation(line: 42, column: 10, scope: !3912, inlinedAt: !4132)
!4138 = !DILocation(line: 43, column: 5, scope: !3912, inlinedAt: !4132)
!4139 = !DILocation(line: 113, column: 10, scope: !4103, inlinedAt: !4128)
!4140 = !DILocation(line: 121, column: 3, scope: !4121)
!4141 = distinct !DISubprogram(name: "xalloc_die", scope: !4142, file: !4142, line: 32, type: !1102, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !614, variables: !4)
!4142 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4143 = !DILocation(line: 34, column: 10, scope: !4141)
!4144 = !DILocation(line: 34, column: 33, scope: !4141)
!4145 = !DILocation(line: 34, column: 3, scope: !4146)
!4146 = !DILexicalBlockFile(scope: !4141, file: !4142, discriminator: 1)
!4147 = !DILocation(line: 40, column: 3, scope: !4141)
!4148 = distinct !DISubprogram(name: "rpl_calloc", scope: !4149, file: !4149, line: 42, type: !3888, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !616, variables: !4150)
!4149 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4150 = !{!4151, !4152, !4153, !4154}
!4151 = !DILocalVariable(name: "n", arg: 1, scope: !4148, file: !4149, line: 42, type: !9)
!4152 = !DILocalVariable(name: "s", arg: 2, scope: !4148, file: !4149, line: 42, type: !9)
!4153 = !DILocalVariable(name: "result", scope: !4148, file: !4149, line: 44, type: !8)
!4154 = !DILocalVariable(name: "bytes", scope: !4155, file: !4149, line: 56, type: !9)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !4149, line: 53, column: 5)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !4149, line: 47, column: 7)
!4157 = !DILocation(line: 42, column: 20, scope: !4148)
!4158 = !DILocation(line: 42, column: 30, scope: !4148)
!4159 = !DILocation(line: 47, column: 9, scope: !4156)
!4160 = !DILocation(line: 47, column: 19, scope: !4161)
!4161 = !DILexicalBlockFile(scope: !4156, file: !4149, discriminator: 1)
!4162 = !DILocation(line: 47, column: 14, scope: !4156)
!4163 = !DILocation(line: 56, column: 24, scope: !4155)
!4164 = !DILocation(line: 56, column: 14, scope: !4155)
!4165 = !DILocation(line: 57, column: 17, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4155, file: !4149, line: 57, column: 11)
!4167 = !DILocation(line: 57, column: 21, scope: !4166)
!4168 = !DILocation(line: 57, column: 11, scope: !4155)
!4169 = !DILocation(line: 59, column: 11, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4166, file: !4149, line: 58, column: 9)
!4171 = !DILocation(line: 59, column: 17, scope: !4170)
!4172 = !DILocation(line: 65, column: 12, scope: !4148)
!4173 = !DILocation(line: 44, column: 9, scope: !4148)
!4174 = !DILocation(line: 72, column: 3, scope: !4148)
!4175 = !DILocation(line: 73, column: 1, scope: !4148)
!4176 = distinct !DISubprogram(name: "rpl_fclose", scope: !4177, file: !4177, line: 56, type: !4178, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !618, variables: !4220)
!4177 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!50, !4180}
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1120, line: 49, baseType: !4182)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1122, line: 241, size: 1728, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4182, file: !1122, line: 242, baseType: !50, size: 32)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4182, file: !1122, line: 247, baseType: !6, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4182, file: !1122, line: 248, baseType: !6, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4182, file: !1122, line: 249, baseType: !6, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4182, file: !1122, line: 250, baseType: !6, size: 64, offset: 256)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4182, file: !1122, line: 251, baseType: !6, size: 64, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4182, file: !1122, line: 252, baseType: !6, size: 64, offset: 384)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4182, file: !1122, line: 253, baseType: !6, size: 64, offset: 448)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4182, file: !1122, line: 254, baseType: !6, size: 64, offset: 512)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4182, file: !1122, line: 256, baseType: !6, size: 64, offset: 576)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4182, file: !1122, line: 257, baseType: !6, size: 64, offset: 640)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4182, file: !1122, line: 258, baseType: !6, size: 64, offset: 704)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4182, file: !1122, line: 260, baseType: !4197, size: 64, offset: 768)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1122, line: 156, size: 192, elements: !4199)
!4199 = !{!4200, !4201, !4203}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4198, file: !1122, line: 157, baseType: !4197, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4198, file: !1122, line: 158, baseType: !4202, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4198, file: !1122, line: 162, baseType: !50, size: 32, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4182, file: !1122, line: 262, baseType: !4202, size: 64, offset: 832)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4182, file: !1122, line: 264, baseType: !50, size: 32, offset: 896)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4182, file: !1122, line: 268, baseType: !50, size: 32, offset: 928)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4182, file: !1122, line: 270, baseType: !1148, size: 64, offset: 960)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4182, file: !1122, line: 274, baseType: !135, size: 16, offset: 1024)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4182, file: !1122, line: 275, baseType: !1153, size: 8, offset: 1040)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4182, file: !1122, line: 276, baseType: !1155, size: 8, offset: 1048)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4182, file: !1122, line: 280, baseType: !1157, size: 64, offset: 1088)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4182, file: !1122, line: 289, baseType: !1160, size: 64, offset: 1152)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4182, file: !1122, line: 297, baseType: !8, size: 64, offset: 1216)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4182, file: !1122, line: 298, baseType: !8, size: 64, offset: 1280)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4182, file: !1122, line: 299, baseType: !8, size: 64, offset: 1344)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4182, file: !1122, line: 300, baseType: !8, size: 64, offset: 1408)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4182, file: !1122, line: 302, baseType: !9, size: 64, offset: 1472)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4182, file: !1122, line: 303, baseType: !50, size: 32, offset: 1536)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4182, file: !1122, line: 305, baseType: !1168, size: 160, offset: 1568)
!4220 = !{!4221, !4222, !4223, !4224}
!4221 = !DILocalVariable(name: "fp", arg: 1, scope: !4176, file: !4177, line: 56, type: !4180)
!4222 = !DILocalVariable(name: "saved_errno", scope: !4176, file: !4177, line: 58, type: !50)
!4223 = !DILocalVariable(name: "fd", scope: !4176, file: !4177, line: 59, type: !50)
!4224 = !DILocalVariable(name: "result", scope: !4176, file: !4177, line: 60, type: !50)
!4225 = !DILocation(line: 56, column: 19, scope: !4176)
!4226 = !DILocation(line: 58, column: 7, scope: !4176)
!4227 = !DILocation(line: 60, column: 7, scope: !4176)
!4228 = !DILocation(line: 63, column: 8, scope: !4176)
!4229 = !DILocation(line: 59, column: 7, scope: !4176)
!4230 = !DILocation(line: 64, column: 10, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4176, file: !4177, line: 64, column: 7)
!4232 = !DILocation(line: 64, column: 7, scope: !4176)
!4233 = !DILocation(line: 65, column: 12, scope: !4231)
!4234 = !DILocation(line: 65, column: 5, scope: !4231)
!4235 = !DILocation(line: 70, column: 9, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4176, file: !4177, line: 70, column: 7)
!4237 = !DILocation(line: 70, column: 23, scope: !4236)
!4238 = !DILocation(line: 70, column: 33, scope: !4239)
!4239 = !DILexicalBlockFile(scope: !4236, file: !4177, discriminator: 1)
!4240 = !DILocation(line: 70, column: 26, scope: !4241)
!4241 = !DILexicalBlockFile(scope: !4236, file: !4177, discriminator: 3)
!4242 = !DILocation(line: 70, column: 59, scope: !4239)
!4243 = !DILocation(line: 71, column: 7, scope: !4236)
!4244 = !DILocation(line: 71, column: 10, scope: !4239)
!4245 = !DILocation(line: 70, column: 7, scope: !4246)
!4246 = !DILexicalBlockFile(scope: !4176, file: !4177, discriminator: 2)
!4247 = !DILocation(line: 98, column: 12, scope: !4176)
!4248 = !DILocation(line: 103, column: 7, scope: !4176)
!4249 = !DILocation(line: 72, column: 19, scope: !4236)
!4250 = !DILocation(line: 103, column: 19, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4176, file: !4177, line: 103, column: 7)
!4252 = !DILocation(line: 105, column: 13, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4251, file: !4177, line: 104, column: 5)
!4254 = !DILocation(line: 107, column: 5, scope: !4253)
!4255 = !DILocation(line: 110, column: 1, scope: !4176)
!4256 = distinct !DISubprogram(name: "rpl_fflush", scope: !4257, file: !4257, line: 127, type: !4258, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4300)
!4257 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!50, !4260}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1120, line: 49, baseType: !4262)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1122, line: 241, size: 1728, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4262, file: !1122, line: 242, baseType: !50, size: 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4262, file: !1122, line: 247, baseType: !6, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4262, file: !1122, line: 248, baseType: !6, size: 64, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4262, file: !1122, line: 249, baseType: !6, size: 64, offset: 192)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4262, file: !1122, line: 250, baseType: !6, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4262, file: !1122, line: 251, baseType: !6, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4262, file: !1122, line: 252, baseType: !6, size: 64, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4262, file: !1122, line: 253, baseType: !6, size: 64, offset: 448)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4262, file: !1122, line: 254, baseType: !6, size: 64, offset: 512)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4262, file: !1122, line: 256, baseType: !6, size: 64, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4262, file: !1122, line: 257, baseType: !6, size: 64, offset: 640)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4262, file: !1122, line: 258, baseType: !6, size: 64, offset: 704)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4262, file: !1122, line: 260, baseType: !4277, size: 64, offset: 768)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1122, line: 156, size: 192, elements: !4279)
!4279 = !{!4280, !4281, !4283}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4278, file: !1122, line: 157, baseType: !4277, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4278, file: !1122, line: 158, baseType: !4282, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4278, file: !1122, line: 162, baseType: !50, size: 32, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4262, file: !1122, line: 262, baseType: !4282, size: 64, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4262, file: !1122, line: 264, baseType: !50, size: 32, offset: 896)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4262, file: !1122, line: 268, baseType: !50, size: 32, offset: 928)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4262, file: !1122, line: 270, baseType: !1148, size: 64, offset: 960)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4262, file: !1122, line: 274, baseType: !135, size: 16, offset: 1024)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4262, file: !1122, line: 275, baseType: !1153, size: 8, offset: 1040)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4262, file: !1122, line: 276, baseType: !1155, size: 8, offset: 1048)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4262, file: !1122, line: 280, baseType: !1157, size: 64, offset: 1088)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4262, file: !1122, line: 289, baseType: !1160, size: 64, offset: 1152)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4262, file: !1122, line: 297, baseType: !8, size: 64, offset: 1216)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4262, file: !1122, line: 298, baseType: !8, size: 64, offset: 1280)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4262, file: !1122, line: 299, baseType: !8, size: 64, offset: 1344)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4262, file: !1122, line: 300, baseType: !8, size: 64, offset: 1408)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4262, file: !1122, line: 302, baseType: !9, size: 64, offset: 1472)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4262, file: !1122, line: 303, baseType: !50, size: 32, offset: 1536)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4262, file: !1122, line: 305, baseType: !1168, size: 160, offset: 1568)
!4300 = !{!4301}
!4301 = !DILocalVariable(name: "stream", arg: 1, scope: !4256, file: !4257, line: 127, type: !4260)
!4302 = !DILocation(line: 127, column: 19, scope: !4256)
!4303 = !DILocation(line: 148, column: 14, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4256, file: !4257, line: 148, column: 7)
!4305 = !DILocation(line: 148, column: 22, scope: !4304)
!4306 = !DILocation(line: 148, column: 27, scope: !4307)
!4307 = !DILexicalBlockFile(scope: !4304, file: !4257, discriminator: 1)
!4308 = !DILocation(line: 148, column: 7, scope: !4309)
!4309 = !DILexicalBlockFile(scope: !4256, file: !4257, discriminator: 1)
!4310 = !DILocation(line: 149, column: 12, scope: !4304)
!4311 = !DILocation(line: 149, column: 5, scope: !4304)
!4312 = !DILocalVariable(name: "fp", arg: 1, scope: !4313, file: !4257, line: 40, type: !4260)
!4313 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4257, file: !4257, line: 40, type: !4314, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !620, variables: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !4260}
!4316 = !{!4312}
!4317 = !DILocation(line: 40, column: 48, scope: !4313, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 153, column: 3, scope: !4256)
!4319 = !DILocation(line: 42, column: 11, scope: !4320, inlinedAt: !4318)
!4320 = distinct !DILexicalBlock(scope: !4313, file: !4257, line: 42, column: 7)
!4321 = !DILocation(line: 42, column: 18, scope: !4320, inlinedAt: !4318)
!4322 = !DILocation(line: 42, column: 7, scope: !4313, inlinedAt: !4318)
!4323 = !DILocation(line: 44, column: 5, scope: !4320, inlinedAt: !4318)
!4324 = !DILocation(line: 155, column: 10, scope: !4256)
!4325 = !DILocation(line: 155, column: 3, scope: !4256)
!4326 = !DILocation(line: 229, column: 1, scope: !4256)
!4327 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4328, file: !4328, line: 28, type: !4329, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !4372)
!4328 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!50, !4331, !4371, !50}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1120, line: 49, baseType: !4333)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1122, line: 241, size: 1728, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4333, file: !1122, line: 242, baseType: !50, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4333, file: !1122, line: 247, baseType: !6, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4333, file: !1122, line: 248, baseType: !6, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4333, file: !1122, line: 249, baseType: !6, size: 64, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4333, file: !1122, line: 250, baseType: !6, size: 64, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4333, file: !1122, line: 251, baseType: !6, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4333, file: !1122, line: 252, baseType: !6, size: 64, offset: 384)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4333, file: !1122, line: 253, baseType: !6, size: 64, offset: 448)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4333, file: !1122, line: 254, baseType: !6, size: 64, offset: 512)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4333, file: !1122, line: 256, baseType: !6, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4333, file: !1122, line: 257, baseType: !6, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4333, file: !1122, line: 258, baseType: !6, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4333, file: !1122, line: 260, baseType: !4348, size: 64, offset: 768)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1122, line: 156, size: 192, elements: !4350)
!4350 = !{!4351, !4352, !4354}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4349, file: !1122, line: 157, baseType: !4348, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4349, file: !1122, line: 158, baseType: !4353, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4349, file: !1122, line: 162, baseType: !50, size: 32, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4333, file: !1122, line: 262, baseType: !4353, size: 64, offset: 832)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4333, file: !1122, line: 264, baseType: !50, size: 32, offset: 896)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4333, file: !1122, line: 268, baseType: !50, size: 32, offset: 928)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4333, file: !1122, line: 270, baseType: !1148, size: 64, offset: 960)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4333, file: !1122, line: 274, baseType: !135, size: 16, offset: 1024)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4333, file: !1122, line: 275, baseType: !1153, size: 8, offset: 1040)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4333, file: !1122, line: 276, baseType: !1155, size: 8, offset: 1048)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4333, file: !1122, line: 280, baseType: !1157, size: 64, offset: 1088)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4333, file: !1122, line: 289, baseType: !1160, size: 64, offset: 1152)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4333, file: !1122, line: 297, baseType: !8, size: 64, offset: 1216)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4333, file: !1122, line: 298, baseType: !8, size: 64, offset: 1280)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4333, file: !1122, line: 299, baseType: !8, size: 64, offset: 1344)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4333, file: !1122, line: 300, baseType: !8, size: 64, offset: 1408)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4333, file: !1122, line: 302, baseType: !9, size: 64, offset: 1472)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4333, file: !1122, line: 303, baseType: !50, size: 32, offset: 1536)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4333, file: !1122, line: 305, baseType: !1168, size: 160, offset: 1568)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1120, line: 91, baseType: !1148)
!4372 = !{!4373, !4374, !4375, !4376}
!4373 = !DILocalVariable(name: "fp", arg: 1, scope: !4327, file: !4328, line: 28, type: !4331)
!4374 = !DILocalVariable(name: "offset", arg: 2, scope: !4327, file: !4328, line: 28, type: !4371)
!4375 = !DILocalVariable(name: "whence", arg: 3, scope: !4327, file: !4328, line: 28, type: !50)
!4376 = !DILocalVariable(name: "pos", scope: !4377, file: !4328, line: 116, type: !4371)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !4328, line: 112, column: 5)
!4378 = distinct !DILexicalBlock(scope: !4327, file: !4328, line: 51, column: 7)
!4379 = !DILocation(line: 28, column: 15, scope: !4327)
!4380 = !DILocation(line: 28, column: 25, scope: !4327)
!4381 = !DILocation(line: 28, column: 37, scope: !4327)
!4382 = !DILocation(line: 51, column: 11, scope: !4378)
!4383 = !{!1187, !714, i64 16}
!4384 = !DILocation(line: 51, column: 31, scope: !4378)
!4385 = !{!1187, !714, i64 8}
!4386 = !DILocation(line: 51, column: 24, scope: !4378)
!4387 = !DILocation(line: 52, column: 7, scope: !4378)
!4388 = !DILocation(line: 52, column: 14, scope: !4389)
!4389 = !DILexicalBlockFile(scope: !4378, file: !4328, discriminator: 1)
!4390 = !{!1187, !714, i64 40}
!4391 = !DILocation(line: 52, column: 35, scope: !4389)
!4392 = !{!1187, !714, i64 32}
!4393 = !DILocation(line: 52, column: 28, scope: !4389)
!4394 = !DILocation(line: 53, column: 7, scope: !4378)
!4395 = !DILocation(line: 53, column: 14, scope: !4389)
!4396 = !{!1187, !714, i64 72}
!4397 = !DILocation(line: 53, column: 28, scope: !4389)
!4398 = !DILocation(line: 51, column: 7, scope: !4399)
!4399 = !DILexicalBlockFile(scope: !4327, file: !4328, discriminator: 1)
!4400 = !DILocation(line: 116, column: 26, scope: !4377)
!4401 = !DILocation(line: 116, column: 19, scope: !4402)
!4402 = !DILexicalBlockFile(scope: !4377, file: !4328, discriminator: 1)
!4403 = !DILocation(line: 116, column: 13, scope: !4377)
!4404 = !DILocation(line: 117, column: 15, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4377, file: !4328, line: 117, column: 11)
!4406 = !DILocation(line: 117, column: 11, scope: !4377)
!4407 = !DILocation(line: 127, column: 11, scope: !4377)
!4408 = !DILocation(line: 127, column: 18, scope: !4377)
!4409 = !DILocation(line: 128, column: 11, scope: !4377)
!4410 = !DILocation(line: 128, column: 19, scope: !4377)
!4411 = !{!1187, !1188, i64 144}
!4412 = !DILocation(line: 159, column: 7, scope: !4377)
!4413 = !DILocation(line: 161, column: 10, scope: !4327)
!4414 = !DILocation(line: 161, column: 3, scope: !4327)
!4415 = !DILocation(line: 162, column: 1, scope: !4327)
!4416 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4417, file: !4417, line: 334, type: !4418, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !4432)
!4417 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!9, !4420, !17, !9, !4421}
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1673, line: 107, baseType: !4423)
!4423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1673, line: 95, baseType: !4424)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1673, line: 83, size: 64, elements: !4425)
!4425 = !{!4426, !4427}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4424, file: !1673, line: 85, baseType: !50, size: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4424, file: !1673, line: 94, baseType: !4428, size: 32, offset: 32)
!4428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4424, file: !1673, line: 86, size: 32, elements: !4429)
!4429 = !{!4430, !4431}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4428, file: !1673, line: 89, baseType: !152, size: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4428, file: !1673, line: 93, baseType: !1683, size: 32)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439}
!4433 = !DILocalVariable(name: "pwc", arg: 1, scope: !4416, file: !4417, line: 334, type: !4420)
!4434 = !DILocalVariable(name: "s", arg: 2, scope: !4416, file: !4417, line: 334, type: !17)
!4435 = !DILocalVariable(name: "n", arg: 3, scope: !4416, file: !4417, line: 334, type: !9)
!4436 = !DILocalVariable(name: "ps", arg: 4, scope: !4416, file: !4417, line: 334, type: !4421)
!4437 = !DILocalVariable(name: "ret", scope: !4416, file: !4417, line: 336, type: !9)
!4438 = !DILocalVariable(name: "wc", scope: !4416, file: !4417, line: 337, type: !1688)
!4439 = !DILocalVariable(name: "uc", scope: !4440, file: !4417, line: 398, type: !16)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !4417, line: 397, column: 5)
!4441 = distinct !DILexicalBlock(scope: !4416, file: !4417, line: 396, column: 7)
!4442 = !DILocation(line: 334, column: 23, scope: !4416)
!4443 = !DILocation(line: 334, column: 40, scope: !4416)
!4444 = !DILocation(line: 334, column: 50, scope: !4416)
!4445 = !DILocation(line: 334, column: 64, scope: !4416)
!4446 = !DILocation(line: 337, column: 3, scope: !4416)
!4447 = !DILocation(line: 353, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4416, file: !4417, line: 353, column: 7)
!4449 = !DILocation(line: 353, column: 7, scope: !4416)
!4450 = !DILocation(line: 388, column: 9, scope: !4416)
!4451 = !DILocation(line: 336, column: 10, scope: !4416)
!4452 = !DILocation(line: 396, column: 19, scope: !4441)
!4453 = !DILocation(line: 396, column: 31, scope: !4454)
!4454 = !DILexicalBlockFile(scope: !4441, file: !4417, discriminator: 1)
!4455 = !DILocation(line: 396, column: 26, scope: !4441)
!4456 = !DILocation(line: 396, column: 41, scope: !4457)
!4457 = !DILexicalBlockFile(scope: !4441, file: !4417, discriminator: 2)
!4458 = !DILocation(line: 396, column: 7, scope: !4459)
!4459 = !DILexicalBlockFile(scope: !4416, file: !4417, discriminator: 2)
!4460 = !DILocation(line: 398, column: 26, scope: !4440)
!4461 = !DILocation(line: 398, column: 21, scope: !4440)
!4462 = !DILocation(line: 399, column: 14, scope: !4440)
!4463 = !DILocation(line: 399, column: 12, scope: !4440)
!4464 = !DILocation(line: 405, column: 1, scope: !4416)
!4465 = distinct !DISubprogram(name: "hard_locale", scope: !4466, file: !4466, line: 38, type: !4467, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !4469)
!4466 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!22, !50}
!4469 = !{!4470, !4471, !4472, !4473, !4480, !4481, !4483, !4484, !4486, !4487, !4489}
!4470 = !DILocalVariable(name: "category", arg: 1, scope: !4465, file: !4466, line: 38, type: !50)
!4471 = !DILocalVariable(name: "hard", scope: !4465, file: !4466, line: 40, type: !22)
!4472 = !DILocalVariable(name: "p", scope: !4465, file: !4466, line: 41, type: !17)
!4473 = !DILocalVariable(name: "__s1_len", scope: !4474, file: !4466, line: 47, type: !9)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !4466, line: 47, column: 15)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !4466, line: 47, column: 15)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !4466, line: 46, column: 9)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !4466, line: 45, column: 11)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !4466, line: 44, column: 5)
!4479 = distinct !DILexicalBlock(scope: !4465, file: !4466, line: 43, column: 7)
!4480 = !DILocalVariable(name: "__s2_len", scope: !4474, file: !4466, line: 47, type: !9)
!4481 = !DILocalVariable(name: "__s2", scope: !4482, file: !4466, line: 47, type: !14)
!4482 = distinct !DILexicalBlock(scope: !4474, file: !4466, line: 47, column: 15)
!4483 = !DILocalVariable(name: "__result", scope: !4482, file: !4466, line: 47, type: !50)
!4484 = !DILocalVariable(name: "__s1_len", scope: !4485, file: !4466, line: 47, type: !9)
!4485 = distinct !DILexicalBlock(scope: !4475, file: !4466, line: 47, column: 39)
!4486 = !DILocalVariable(name: "__s2_len", scope: !4485, file: !4466, line: 47, type: !9)
!4487 = !DILocalVariable(name: "__s2", scope: !4488, file: !4466, line: 47, type: !14)
!4488 = distinct !DILexicalBlock(scope: !4485, file: !4466, line: 47, column: 39)
!4489 = !DILocalVariable(name: "__result", scope: !4488, file: !4466, line: 47, type: !50)
!4490 = !DILocation(line: 38, column: 18, scope: !4465)
!4491 = !DILocation(line: 40, column: 8, scope: !4465)
!4492 = !DILocation(line: 41, column: 19, scope: !4465)
!4493 = !DILocation(line: 41, column: 15, scope: !4465)
!4494 = !DILocation(line: 43, column: 7, scope: !4479)
!4495 = !DILocation(line: 43, column: 7, scope: !4465)
!4496 = !DILocation(line: 47, column: 15, scope: !4474)
!4497 = !DILocation(line: 47, column: 15, scope: !4482)
!4498 = !DILocation(line: 47, column: 15, scope: !4499)
!4499 = !DILexicalBlockFile(scope: !4482, file: !4466, discriminator: 2)
!4500 = !DILocation(line: 47, column: 15, scope: !4501)
!4501 = !DILexicalBlockFile(scope: !4502, file: !4466, discriminator: 3)
!4502 = distinct !DILexicalBlock(scope: !4482, file: !4466, line: 47, column: 15)
!4503 = !DILocation(line: 47, column: 15, scope: !4504)
!4504 = !DILexicalBlockFile(scope: !4502, file: !4466, discriminator: 2)
!4505 = !DILocation(line: 47, column: 15, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !4507, file: !4466, discriminator: 4)
!4507 = distinct !DILexicalBlock(scope: !4502, file: !4466, line: 47, column: 15)
!4508 = !DILocation(line: 47, column: 15, scope: !4509)
!4509 = !DILexicalBlockFile(scope: !4474, file: !4466, discriminator: 11)
!4510 = !DILocation(line: 47, column: 36, scope: !4511)
!4511 = !DILexicalBlockFile(scope: !4475, file: !4466, discriminator: 13)
!4512 = !DILocation(line: 47, column: 39, scope: !4485)
!4513 = !DILocation(line: 47, column: 39, scope: !4514)
!4514 = !DILexicalBlockFile(scope: !4485, file: !4466, discriminator: 26)
!4515 = !DILocation(line: 47, column: 59, scope: !4516)
!4516 = !DILexicalBlockFile(scope: !4475, file: !4466, discriminator: 27)
!4517 = !DILocation(line: 47, column: 15, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !4476, file: !4466, discriminator: 27)
!4519 = !DILocation(line: 48, column: 13, scope: !4475)
!4520 = !DILocation(line: 71, column: 3, scope: !4465)
!4521 = distinct !DISubprogram(name: "locale_charset", scope: !541, file: !541, line: 393, type: !4522, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !4524)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!17}
!4524 = !{!4525, !4526, !4527, !4532}
!4525 = !DILocalVariable(name: "codeset", scope: !4521, file: !541, line: 395, type: !17)
!4526 = !DILocalVariable(name: "aliases", scope: !4521, file: !541, line: 396, type: !17)
!4527 = !DILocalVariable(name: "__s1_len", scope: !4528, file: !541, line: 592, type: !9)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !541, line: 592, column: 9)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !541, line: 592, column: 9)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !541, line: 589, column: 3)
!4531 = distinct !DILexicalBlock(scope: !4521, file: !541, line: 589, column: 3)
!4532 = !DILocalVariable(name: "__s2_len", scope: !4528, file: !541, line: 592, type: !9)
!4533 = !DILocalVariable(name: "buf1", scope: !4534, file: !541, line: 196, type: !4601)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !541, line: 194, column: 21)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !541, line: 193, column: 19)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !541, line: 193, column: 19)
!4537 = distinct !DILexicalBlock(scope: !4538, file: !541, line: 188, column: 17)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !541, line: 181, column: 19)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !541, line: 177, column: 13)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !541, line: 173, column: 15)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !541, line: 161, column: 9)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !541, line: 157, column: 11)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !541, line: 130, column: 5)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !541, line: 129, column: 7)
!4545 = distinct !DISubprogram(name: "get_charset_aliases", scope: !541, file: !541, line: 124, type: !4522, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !4546)
!4546 = !{!4547, !4548, !4549, !4550, !4551, !4553, !4554, !4555, !4556, !4597, !4598, !4599, !4533, !4600, !4604, !4605, !4606}
!4547 = !DILocalVariable(name: "cp", scope: !4545, file: !541, line: 126, type: !17)
!4548 = !DILocalVariable(name: "dir", scope: !4543, file: !541, line: 132, type: !17)
!4549 = !DILocalVariable(name: "base", scope: !4543, file: !541, line: 133, type: !17)
!4550 = !DILocalVariable(name: "file_name", scope: !4543, file: !541, line: 134, type: !6)
!4551 = !DILocalVariable(name: "dir_len", scope: !4552, file: !541, line: 144, type: !9)
!4552 = distinct !DILexicalBlock(scope: !4543, file: !541, line: 143, column: 7)
!4553 = !DILocalVariable(name: "base_len", scope: !4552, file: !541, line: 145, type: !9)
!4554 = !DILocalVariable(name: "add_slash", scope: !4552, file: !541, line: 146, type: !50)
!4555 = !DILocalVariable(name: "fd", scope: !4541, file: !541, line: 162, type: !50)
!4556 = !DILocalVariable(name: "fp", scope: !4539, file: !541, line: 178, type: !4557)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1120, line: 49, baseType: !4559)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1122, line: 241, size: 1728, elements: !4560)
!4560 = !{!4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4559, file: !1122, line: 242, baseType: !50, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4559, file: !1122, line: 247, baseType: !6, size: 64, offset: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4559, file: !1122, line: 248, baseType: !6, size: 64, offset: 128)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4559, file: !1122, line: 249, baseType: !6, size: 64, offset: 192)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4559, file: !1122, line: 250, baseType: !6, size: 64, offset: 256)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4559, file: !1122, line: 251, baseType: !6, size: 64, offset: 320)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4559, file: !1122, line: 252, baseType: !6, size: 64, offset: 384)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4559, file: !1122, line: 253, baseType: !6, size: 64, offset: 448)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4559, file: !1122, line: 254, baseType: !6, size: 64, offset: 512)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4559, file: !1122, line: 256, baseType: !6, size: 64, offset: 576)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4559, file: !1122, line: 257, baseType: !6, size: 64, offset: 640)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4559, file: !1122, line: 258, baseType: !6, size: 64, offset: 704)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4559, file: !1122, line: 260, baseType: !4574, size: 64, offset: 768)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1122, line: 156, size: 192, elements: !4576)
!4576 = !{!4577, !4578, !4580}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4575, file: !1122, line: 157, baseType: !4574, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4575, file: !1122, line: 158, baseType: !4579, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4575, file: !1122, line: 162, baseType: !50, size: 32, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4559, file: !1122, line: 262, baseType: !4579, size: 64, offset: 832)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4559, file: !1122, line: 264, baseType: !50, size: 32, offset: 896)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4559, file: !1122, line: 268, baseType: !50, size: 32, offset: 928)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4559, file: !1122, line: 270, baseType: !1148, size: 64, offset: 960)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4559, file: !1122, line: 274, baseType: !135, size: 16, offset: 1024)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4559, file: !1122, line: 275, baseType: !1153, size: 8, offset: 1040)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4559, file: !1122, line: 276, baseType: !1155, size: 8, offset: 1048)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4559, file: !1122, line: 280, baseType: !1157, size: 64, offset: 1088)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4559, file: !1122, line: 289, baseType: !1160, size: 64, offset: 1152)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4559, file: !1122, line: 297, baseType: !8, size: 64, offset: 1216)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4559, file: !1122, line: 298, baseType: !8, size: 64, offset: 1280)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4559, file: !1122, line: 299, baseType: !8, size: 64, offset: 1344)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4559, file: !1122, line: 300, baseType: !8, size: 64, offset: 1408)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4559, file: !1122, line: 302, baseType: !9, size: 64, offset: 1472)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4559, file: !1122, line: 303, baseType: !50, size: 32, offset: 1536)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4559, file: !1122, line: 305, baseType: !1168, size: 160, offset: 1568)
!4597 = !DILocalVariable(name: "res_ptr", scope: !4537, file: !541, line: 190, type: !6)
!4598 = !DILocalVariable(name: "res_size", scope: !4537, file: !541, line: 191, type: !9)
!4599 = !DILocalVariable(name: "c", scope: !4534, file: !541, line: 195, type: !50)
!4600 = !DILocalVariable(name: "buf2", scope: !4534, file: !541, line: 197, type: !4601)
!4601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 408, elements: !4602)
!4602 = !{!4603}
!4603 = !DISubrange(count: 51)
!4604 = !DILocalVariable(name: "l1", scope: !4534, file: !541, line: 198, type: !9)
!4605 = !DILocalVariable(name: "l2", scope: !4534, file: !541, line: 198, type: !9)
!4606 = !DILocalVariable(name: "old_res_ptr", scope: !4534, file: !541, line: 199, type: !6)
!4607 = !DILocation(line: 196, column: 28, scope: !4534, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 589, column: 18, scope: !4531)
!4609 = !DILocation(line: 197, column: 28, scope: !4534, inlinedAt: !4608)
!4610 = !DILocation(line: 403, column: 13, scope: !4521)
!4611 = !DILocation(line: 395, column: 15, scope: !4521)
!4612 = !DILocation(line: 584, column: 15, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4521, file: !541, line: 584, column: 7)
!4614 = !DILocation(line: 584, column: 7, scope: !4521)
!4615 = !DILocation(line: 128, column: 8, scope: !4545, inlinedAt: !4608)
!4616 = !DILocation(line: 126, column: 15, scope: !4545, inlinedAt: !4608)
!4617 = !DILocation(line: 129, column: 10, scope: !4544, inlinedAt: !4608)
!4618 = !DILocation(line: 129, column: 7, scope: !4545, inlinedAt: !4608)
!4619 = !DILocation(line: 138, column: 13, scope: !4543, inlinedAt: !4608)
!4620 = !DILocation(line: 132, column: 19, scope: !4543, inlinedAt: !4608)
!4621 = !DILocation(line: 139, column: 15, scope: !4622, inlinedAt: !4608)
!4622 = distinct !DILexicalBlock(scope: !4543, file: !541, line: 139, column: 11)
!4623 = !DILocation(line: 139, column: 23, scope: !4622, inlinedAt: !4608)
!4624 = !DILocation(line: 139, column: 26, scope: !4625, inlinedAt: !4608)
!4625 = !DILexicalBlockFile(scope: !4622, file: !541, discriminator: 1)
!4626 = !DILocation(line: 139, column: 33, scope: !4625, inlinedAt: !4608)
!4627 = !DILocation(line: 139, column: 11, scope: !4628, inlinedAt: !4608)
!4628 = !DILexicalBlockFile(scope: !4543, file: !541, discriminator: 1)
!4629 = !DILocation(line: 140, column: 9, scope: !4622, inlinedAt: !4608)
!4630 = !DILocation(line: 144, column: 26, scope: !4552, inlinedAt: !4608)
!4631 = !DILocation(line: 144, column: 16, scope: !4552, inlinedAt: !4608)
!4632 = !DILocation(line: 145, column: 16, scope: !4552, inlinedAt: !4608)
!4633 = !DILocation(line: 146, column: 34, scope: !4552, inlinedAt: !4608)
!4634 = !DILocation(line: 146, column: 38, scope: !4552, inlinedAt: !4608)
!4635 = !DILocation(line: 146, column: 42, scope: !4636, inlinedAt: !4608)
!4636 = !DILexicalBlockFile(scope: !4552, file: !541, discriminator: 1)
!4637 = !DILocation(line: 146, column: 41, scope: !4636, inlinedAt: !4608)
!4638 = !DILocation(line: 147, column: 48, scope: !4552, inlinedAt: !4608)
!4639 = !DILocation(line: 147, column: 46, scope: !4552, inlinedAt: !4608)
!4640 = !DILocation(line: 147, column: 69, scope: !4552, inlinedAt: !4608)
!4641 = !DILocation(line: 147, column: 30, scope: !4552, inlinedAt: !4608)
!4642 = !DILocation(line: 134, column: 13, scope: !4543, inlinedAt: !4608)
!4643 = !DILocation(line: 148, column: 13, scope: !4552, inlinedAt: !4608)
!4644 = !DILocation(line: 150, column: 13, scope: !4645, inlinedAt: !4608)
!4645 = distinct !DILexicalBlock(scope: !4646, file: !541, line: 149, column: 11)
!4646 = distinct !DILexicalBlock(scope: !4552, file: !541, line: 148, column: 13)
!4647 = !DILocation(line: 151, column: 17, scope: !4645, inlinedAt: !4608)
!4648 = !DILocation(line: 152, column: 34, scope: !4649, inlinedAt: !4608)
!4649 = distinct !DILexicalBlock(scope: !4645, file: !541, line: 151, column: 17)
!4650 = !DILocation(line: 153, column: 41, scope: !4645, inlinedAt: !4608)
!4651 = !DILocation(line: 153, column: 13, scope: !4645, inlinedAt: !4608)
!4652 = !DILocation(line: 157, column: 11, scope: !4543, inlinedAt: !4608)
!4653 = !DILocation(line: 171, column: 16, scope: !4541, inlinedAt: !4608)
!4654 = !DILocation(line: 162, column: 15, scope: !4541, inlinedAt: !4608)
!4655 = !DILocation(line: 173, column: 18, scope: !4540, inlinedAt: !4608)
!4656 = !DILocation(line: 173, column: 15, scope: !4541, inlinedAt: !4608)
!4657 = !DILocation(line: 180, column: 20, scope: !4539, inlinedAt: !4608)
!4658 = !DILocation(line: 178, column: 21, scope: !4539, inlinedAt: !4608)
!4659 = !DILocation(line: 181, column: 22, scope: !4538, inlinedAt: !4608)
!4660 = !DILocation(line: 181, column: 19, scope: !4539, inlinedAt: !4608)
!4661 = !DILocation(line: 190, column: 25, scope: !4537, inlinedAt: !4608)
!4662 = !DILocation(line: 184, column: 19, scope: !4663, inlinedAt: !4608)
!4663 = distinct !DILexicalBlock(scope: !4538, file: !541, line: 182, column: 17)
!4664 = !DILocation(line: 186, column: 17, scope: !4663, inlinedAt: !4608)
!4665 = !DILocation(line: 191, column: 26, scope: !4537, inlinedAt: !4608)
!4666 = !DILocation(line: 196, column: 23, scope: !4534, inlinedAt: !4608)
!4667 = !DILocation(line: 197, column: 23, scope: !4534, inlinedAt: !4608)
!4668 = !DILocalVariable(name: "__fp", arg: 1, scope: !4669, file: !1181, line: 63, type: !4557)
!4669 = distinct !DISubprogram(name: "getc_unlocked", scope: !1181, file: !1181, line: 63, type: !4670, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !4672)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!50, !4557}
!4672 = !{!4668}
!4673 = !DILocation(line: 63, column: 22, scope: !4669, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 201, column: 27, scope: !4534, inlinedAt: !4608)
!4675 = !DILocation(line: 65, column: 10, scope: !4669, inlinedAt: !4674)
!4676 = !{!"branch_weights", i32 2000, i32 1}
!4677 = !DILocation(line: 65, column: 10, scope: !4678, inlinedAt: !4674)
!4678 = !DILexicalBlockFile(scope: !4669, file: !1181, discriminator: 1)
!4679 = !DILocation(line: 65, column: 10, scope: !4680, inlinedAt: !4674)
!4680 = !DILexicalBlockFile(scope: !4669, file: !1181, discriminator: 2)
!4681 = !DILocation(line: 65, column: 10, scope: !4682, inlinedAt: !4674)
!4682 = !DILexicalBlockFile(scope: !4669, file: !1181, discriminator: 3)
!4683 = !DILocation(line: 195, column: 27, scope: !4534, inlinedAt: !4608)
!4684 = !DILocation(line: 202, column: 27, scope: !4534, inlinedAt: !4608)
!4685 = !DILocation(line: 63, column: 22, scope: !4669, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 210, column: 33, scope: !4687, inlinedAt: !4608)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !541, line: 207, column: 25)
!4688 = distinct !DILexicalBlock(scope: !4534, file: !541, line: 206, column: 27)
!4689 = !DILocation(line: 65, column: 10, scope: !4669, inlinedAt: !4686)
!4690 = !DILocation(line: 65, column: 10, scope: !4678, inlinedAt: !4686)
!4691 = !DILocation(line: 65, column: 10, scope: !4680, inlinedAt: !4686)
!4692 = !DILocation(line: 65, column: 10, scope: !4682, inlinedAt: !4686)
!4693 = !DILocation(line: 210, column: 29, scope: !4694, inlinedAt: !4608)
!4694 = !DILexicalBlockFile(scope: !4687, file: !541, discriminator: 1)
!4695 = distinct !{!4695, !4696, !4697}
!4696 = !DILocation(line: 193, column: 19, scope: !4536)
!4697 = !DILocation(line: 241, column: 21, scope: !4536)
!4698 = !DILocation(line: 216, column: 23, scope: !4534, inlinedAt: !4608)
!4699 = !DILocation(line: 217, column: 27, scope: !4700, inlinedAt: !4608)
!4700 = distinct !DILexicalBlock(scope: !4534, file: !541, line: 217, column: 27)
!4701 = !DILocation(line: 217, column: 64, scope: !4700, inlinedAt: !4608)
!4702 = !DILocation(line: 217, column: 27, scope: !4534, inlinedAt: !4608)
!4703 = !DILocation(line: 219, column: 28, scope: !4534, inlinedAt: !4608)
!4704 = !DILocation(line: 198, column: 30, scope: !4534, inlinedAt: !4608)
!4705 = !DILocation(line: 220, column: 28, scope: !4534, inlinedAt: !4608)
!4706 = !DILocation(line: 198, column: 34, scope: !4534, inlinedAt: !4608)
!4707 = !DILocation(line: 199, column: 29, scope: !4534, inlinedAt: !4608)
!4708 = !DILocation(line: 222, column: 36, scope: !4709, inlinedAt: !4608)
!4709 = distinct !DILexicalBlock(scope: !4534, file: !541, line: 222, column: 27)
!4710 = !DILocation(line: 222, column: 27, scope: !4534, inlinedAt: !4608)
!4711 = !DILocation(line: 225, column: 63, scope: !4712, inlinedAt: !4608)
!4712 = distinct !DILexicalBlock(scope: !4709, file: !541, line: 223, column: 25)
!4713 = !DILocation(line: 225, column: 46, scope: !4712, inlinedAt: !4608)
!4714 = !DILocation(line: 226, column: 25, scope: !4712, inlinedAt: !4608)
!4715 = !DILocation(line: 229, column: 36, scope: !4716, inlinedAt: !4608)
!4716 = distinct !DILexicalBlock(scope: !4709, file: !541, line: 228, column: 25)
!4717 = !DILocation(line: 230, column: 73, scope: !4716, inlinedAt: !4608)
!4718 = !DILocation(line: 230, column: 46, scope: !4716, inlinedAt: !4608)
!4719 = !DILocation(line: 232, column: 35, scope: !4720, inlinedAt: !4608)
!4720 = distinct !DILexicalBlock(scope: !4534, file: !541, line: 232, column: 27)
!4721 = !DILocation(line: 232, column: 27, scope: !4534, inlinedAt: !4608)
!4722 = !DILocation(line: 236, column: 27, scope: !4723, inlinedAt: !4608)
!4723 = distinct !DILexicalBlock(scope: !4720, file: !541, line: 233, column: 25)
!4724 = !DILocation(line: 237, column: 27, scope: !4723, inlinedAt: !4608)
!4725 = !DILocation(line: 239, column: 39, scope: !4534, inlinedAt: !4608)
!4726 = !DILocation(line: 239, column: 50, scope: !4534, inlinedAt: !4608)
!4727 = !DILocation(line: 239, column: 61, scope: !4534, inlinedAt: !4608)
!4728 = !DILocalVariable(name: "__dest", arg: 1, scope: !4729, file: !1408, line: 107, type: !4732)
!4729 = distinct !DISubprogram(name: "strcpy", scope: !1408, file: !1408, line: 107, type: !4730, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !4734)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!6, !4732, !4733}
!4732 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!4733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!4734 = !{!4728, !4735}
!4735 = !DILocalVariable(name: "__src", arg: 2, scope: !4729, file: !1408, line: 107, type: !4733)
!4736 = !DILocation(line: 107, column: 1, scope: !4729, inlinedAt: !4737)
!4737 = distinct !DILocation(line: 239, column: 23, scope: !4534, inlinedAt: !4608)
!4738 = !DILocation(line: 109, column: 49, scope: !4729, inlinedAt: !4737)
!4739 = !DILocation(line: 109, column: 10, scope: !4729, inlinedAt: !4737)
!4740 = !DILocation(line: 107, column: 1, scope: !4729, inlinedAt: !4741)
!4741 = distinct !DILocation(line: 240, column: 23, scope: !4534, inlinedAt: !4608)
!4742 = !DILocation(line: 109, column: 49, scope: !4729, inlinedAt: !4741)
!4743 = !DILocation(line: 109, column: 10, scope: !4729, inlinedAt: !4741)
!4744 = !DILocation(line: 241, column: 21, scope: !4535, inlinedAt: !4608)
!4745 = !DILocation(line: 242, column: 19, scope: !4537, inlinedAt: !4608)
!4746 = !DILocation(line: 243, column: 32, scope: !4747, inlinedAt: !4608)
!4747 = distinct !DILexicalBlock(scope: !4537, file: !541, line: 243, column: 23)
!4748 = !DILocation(line: 243, column: 23, scope: !4537, inlinedAt: !4608)
!4749 = !DILocation(line: 247, column: 33, scope: !4750, inlinedAt: !4608)
!4750 = distinct !DILexicalBlock(scope: !4747, file: !541, line: 246, column: 21)
!4751 = !DILocation(line: 247, column: 45, scope: !4750, inlinedAt: !4608)
!4752 = !DILocation(line: 253, column: 11, scope: !4541, inlinedAt: !4608)
!4753 = !DILocation(line: 377, column: 23, scope: !4543, inlinedAt: !4608)
!4754 = !DILocation(line: 378, column: 5, scope: !4543, inlinedAt: !4608)
!4755 = !DILocation(line: 396, column: 15, scope: !4521)
!4756 = !DILocation(line: 590, column: 8, scope: !4530)
!4757 = !DILocation(line: 590, column: 17, scope: !4530)
!4758 = !DILocation(line: 589, column: 3, scope: !4759)
!4759 = !DILexicalBlockFile(scope: !4531, file: !541, discriminator: 1)
!4760 = !DILocation(line: 592, column: 9, scope: !4528)
!4761 = !DILocation(line: 592, column: 35, scope: !4529)
!4762 = !DILocation(line: 593, column: 9, scope: !4529)
!4763 = !DILocation(line: 593, column: 24, scope: !4764)
!4764 = !DILexicalBlockFile(scope: !4529, file: !541, discriminator: 1)
!4765 = !DILocation(line: 593, column: 31, scope: !4764)
!4766 = !DILocation(line: 593, column: 34, scope: !4767)
!4767 = !DILexicalBlockFile(scope: !4529, file: !541, discriminator: 2)
!4768 = !DILocation(line: 593, column: 45, scope: !4767)
!4769 = !DILocation(line: 592, column: 9, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4530, file: !541, discriminator: 1)
!4771 = !DILocation(line: 595, column: 29, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4529, file: !541, line: 594, column: 7)
!4773 = !DILocation(line: 595, column: 27, scope: !4772)
!4774 = !DILocation(line: 595, column: 46, scope: !4772)
!4775 = !DILocation(line: 596, column: 9, scope: !4772)
!4776 = !DILocation(line: 591, column: 19, scope: !4530)
!4777 = !DILocation(line: 591, column: 36, scope: !4530)
!4778 = !DILocation(line: 591, column: 16, scope: !4530)
!4779 = !DILocation(line: 591, column: 52, scope: !4770)
!4780 = !DILocation(line: 591, column: 69, scope: !4530)
!4781 = !DILocation(line: 591, column: 49, scope: !4530)
!4782 = distinct !{!4782, !4783, !4784}
!4783 = !DILocation(line: 589, column: 3, scope: !4531)
!4784 = !DILocation(line: 597, column: 7, scope: !4531)
!4785 = !DILocation(line: 602, column: 7, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4521, file: !541, line: 602, column: 7)
!4787 = !DILocation(line: 602, column: 18, scope: !4786)
!4788 = !DILocation(line: 602, column: 7, scope: !4521)
!4789 = !DILocation(line: 612, column: 3, scope: !4521)
!4790 = distinct !DISubprogram(name: "randint_new", scope: !4791, file: !4791, line: 71, type: !4792, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4806)
!4791 = !DIFile(filename: "lib/randint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!4794, !4798}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randint_source", file: !4791, line: 54, size: 192, elements: !4796)
!4796 = !{!4797, !4801, !4805}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4795, file: !4791, line: 57, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !4800, line: 25, flags: DIFlagFwdDecl)
!4800 = !DIFile(filename: "./lib/randread.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "randnum", scope: !4795, file: !4791, line: 64, baseType: !4802, size: 64, offset: 64)
!4802 = !DIDerivedType(tag: DW_TAG_typedef, name: "randint", file: !3443, line: 30, baseType: !4803)
!4803 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !650, line: 136, baseType: !4804)
!4804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1149, line: 62, baseType: !11)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "randmax", scope: !4795, file: !4791, line: 65, baseType: !4802, size: 64, offset: 128)
!4806 = !{!4807, !4808}
!4807 = !DILocalVariable(name: "source", arg: 1, scope: !4790, file: !4791, line: 71, type: !4798)
!4808 = !DILocalVariable(name: "s", scope: !4790, file: !4791, line: 73, type: !4794)
!4809 = !DILocation(line: 71, column: 38, scope: !4790)
!4810 = !DILocation(line: 73, column: 30, scope: !4790)
!4811 = !DILocation(line: 73, column: 26, scope: !4790)
!4812 = !DILocation(line: 74, column: 6, scope: !4790)
!4813 = !DILocation(line: 74, column: 13, scope: !4790)
!4814 = !{!4815, !714, i64 0}
!4815 = !{!"randint_source", !714, i64 0, !1188, i64 8, !1188, i64 16}
!4816 = !DILocation(line: 75, column: 6, scope: !4790)
!4817 = !DILocation(line: 75, column: 14, scope: !4790)
!4818 = !DILocation(line: 76, column: 3, scope: !4790)
!4819 = distinct !DISubprogram(name: "randint_all_new", scope: !4791, file: !4791, line: 84, type: !4820, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4822)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!4794, !17, !9}
!4822 = !{!4823, !4824, !4825}
!4823 = !DILocalVariable(name: "name", arg: 1, scope: !4819, file: !4791, line: 84, type: !17)
!4824 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4819, file: !4791, line: 84, type: !9)
!4825 = !DILocalVariable(name: "source", scope: !4819, file: !4791, line: 86, type: !4798)
!4826 = !DILocation(line: 84, column: 30, scope: !4819)
!4827 = !DILocation(line: 84, column: 43, scope: !4819)
!4828 = !DILocation(line: 86, column: 36, scope: !4819)
!4829 = !DILocation(line: 86, column: 27, scope: !4819)
!4830 = !DILocation(line: 87, column: 11, scope: !4819)
!4831 = !DILocation(line: 71, column: 38, scope: !4790, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 87, column: 20, scope: !4833)
!4833 = !DILexicalBlockFile(scope: !4819, file: !4791, discriminator: 1)
!4834 = !DILocation(line: 73, column: 30, scope: !4790, inlinedAt: !4832)
!4835 = !DILocation(line: 73, column: 26, scope: !4790, inlinedAt: !4832)
!4836 = !DILocation(line: 74, column: 6, scope: !4790, inlinedAt: !4832)
!4837 = !DILocation(line: 74, column: 13, scope: !4790, inlinedAt: !4832)
!4838 = !DILocation(line: 75, column: 6, scope: !4790, inlinedAt: !4832)
!4839 = !DILocation(line: 75, column: 14, scope: !4790, inlinedAt: !4832)
!4840 = !DILocation(line: 87, column: 11, scope: !4833)
!4841 = !DILocation(line: 87, column: 11, scope: !4842)
!4842 = !DILexicalBlockFile(scope: !4819, file: !4791, discriminator: 3)
!4843 = !DILocation(line: 87, column: 3, scope: !4842)
!4844 = distinct !DISubprogram(name: "randint_get_source", scope: !4791, file: !4791, line: 93, type: !4845, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4849)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!4798, !4847}
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4795)
!4849 = !{!4850}
!4850 = !DILocalVariable(name: "s", arg: 1, scope: !4844, file: !4791, line: 93, type: !4847)
!4851 = !DILocation(line: 93, column: 50, scope: !4844)
!4852 = !DILocation(line: 95, column: 13, scope: !4844)
!4853 = !DILocation(line: 95, column: 3, scope: !4844)
!4854 = distinct !DISubprogram(name: "randint_genmax", scope: !4791, file: !4791, line: 121, type: !4855, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4857)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!4802, !4794, !4802}
!4857 = !{!4858, !4859, !4860, !4861, !4862, !4863, !4864, !4868, !4869, !4871, !4874, !4875, !4876}
!4858 = !DILocalVariable(name: "s", arg: 1, scope: !4854, file: !4791, line: 121, type: !4794)
!4859 = !DILocalVariable(name: "genmax", arg: 2, scope: !4854, file: !4791, line: 121, type: !4802)
!4860 = !DILocalVariable(name: "source", scope: !4854, file: !4791, line: 123, type: !4798)
!4861 = !DILocalVariable(name: "randnum", scope: !4854, file: !4791, line: 124, type: !4802)
!4862 = !DILocalVariable(name: "randmax", scope: !4854, file: !4791, line: 125, type: !4802)
!4863 = !DILocalVariable(name: "choices", scope: !4854, file: !4791, line: 126, type: !4802)
!4864 = !DILocalVariable(name: "i", scope: !4865, file: !4791, line: 135, type: !9)
!4865 = distinct !DILexicalBlock(scope: !4866, file: !4791, line: 131, column: 9)
!4866 = distinct !DILexicalBlock(scope: !4867, file: !4791, line: 130, column: 11)
!4867 = distinct !DILexicalBlock(scope: !4854, file: !4791, line: 129, column: 5)
!4868 = !DILocalVariable(name: "rmax", scope: !4865, file: !4791, line: 136, type: !4802)
!4869 = !DILocalVariable(name: "buf", scope: !4865, file: !4791, line: 137, type: !4870)
!4870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !66)
!4871 = !DILocalVariable(name: "excess_choices", scope: !4872, file: !4791, line: 183, type: !4802)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !4791, line: 172, column: 9)
!4873 = distinct !DILexicalBlock(scope: !4867, file: !4791, line: 166, column: 11)
!4874 = !DILocalVariable(name: "unusable_choices", scope: !4872, file: !4791, line: 184, type: !4802)
!4875 = !DILocalVariable(name: "last_usable_choice", scope: !4872, file: !4791, line: 185, type: !4802)
!4876 = !DILocalVariable(name: "reduced_randnum", scope: !4872, file: !4791, line: 186, type: !4802)
!4877 = !DILocation(line: 121, column: 40, scope: !4854)
!4878 = !DILocation(line: 121, column: 51, scope: !4854)
!4879 = !DILocation(line: 123, column: 39, scope: !4854)
!4880 = !DILocation(line: 123, column: 27, scope: !4854)
!4881 = !DILocation(line: 124, column: 24, scope: !4854)
!4882 = !{!4815, !1188, i64 8}
!4883 = !DILocation(line: 124, column: 11, scope: !4854)
!4884 = !DILocation(line: 125, column: 24, scope: !4854)
!4885 = !{!4815, !1188, i64 16}
!4886 = !DILocation(line: 125, column: 11, scope: !4854)
!4887 = !DILocation(line: 126, column: 28, scope: !4854)
!4888 = !DILocation(line: 126, column: 11, scope: !4854)
!4889 = !DILocation(line: 128, column: 3, scope: !4854)
!4890 = !DILocation(line: 130, column: 19, scope: !4866)
!4891 = !DILocation(line: 130, column: 11, scope: !4867)
!4892 = !DILocation(line: 135, column: 18, scope: !4865)
!4893 = !DILocation(line: 136, column: 19, scope: !4865)
!4894 = !DILocation(line: 137, column: 11, scope: !4865)
!4895 = !DILocation(line: 137, column: 25, scope: !4865)
!4896 = !DILocation(line: 139, column: 11, scope: !4865)
!4897 = distinct !{!4897, !4896, !4898}
!4898 = !DILocation(line: 144, column: 31, scope: !4865)
!4899 = !DILocalVariable(name: "x", arg: 1, scope: !4900, file: !4791, line: 104, type: !4802)
!4900 = distinct !DISubprogram(name: "shift_left", scope: !4791, file: !4791, line: 104, type: !4901, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4903)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!4802, !4802}
!4903 = !{!4899}
!4904 = !DILocation(line: 104, column: 43, scope: !4900, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 141, column: 22, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4865, file: !4791, line: 140, column: 13)
!4907 = !DILocation(line: 106, column: 29, scope: !4900, inlinedAt: !4905)
!4908 = !DILocation(line: 141, column: 40, scope: !4906)
!4909 = !DILocation(line: 142, column: 16, scope: !4906)
!4910 = !DILocation(line: 144, column: 23, scope: !4865)
!4911 = !DILocation(line: 143, column: 13, scope: !4912)
!4912 = !DILexicalBlockFile(scope: !4906, file: !4791, discriminator: 1)
!4913 = !DILocation(line: 146, column: 11, scope: !4865)
!4914 = !DILocation(line: 157, column: 11, scope: !4865)
!4915 = distinct !{!4915, !4914, !4916}
!4916 = !DILocation(line: 163, column: 34, scope: !4865)
!4917 = !DILocation(line: 104, column: 43, scope: !4900, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 159, column: 25, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4865, file: !4791, line: 158, column: 13)
!4920 = !DILocation(line: 106, column: 29, scope: !4900, inlinedAt: !4918)
!4921 = !DILocation(line: 159, column: 48, scope: !4919)
!4922 = !DILocation(line: 159, column: 46, scope: !4919)
!4923 = !DILocation(line: 104, column: 43, scope: !4900, inlinedAt: !4924)
!4924 = distinct !DILocation(line: 160, column: 25, scope: !4919)
!4925 = !DILocation(line: 106, column: 29, scope: !4900, inlinedAt: !4924)
!4926 = !DILocation(line: 160, column: 46, scope: !4919)
!4927 = !DILocation(line: 161, column: 16, scope: !4919)
!4928 = !DILocation(line: 163, column: 26, scope: !4865)
!4929 = !DILocation(line: 162, column: 13, scope: !4930)
!4930 = !DILexicalBlockFile(scope: !4919, file: !4791, discriminator: 1)
!4931 = !DILocation(line: 164, column: 9, scope: !4866)
!4932 = !DILocation(line: 164, column: 9, scope: !4865)
!4933 = !DILocation(line: 166, column: 19, scope: !4873)
!4934 = !DILocation(line: 166, column: 11, scope: !4867)
!4935 = !DILocation(line: 169, column: 11, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4873, file: !4791, line: 167, column: 9)
!4937 = !DILocation(line: 168, column: 22, scope: !4936)
!4938 = !DILocation(line: 183, column: 44, scope: !4872)
!4939 = !DILocation(line: 183, column: 19, scope: !4872)
!4940 = !DILocation(line: 184, column: 53, scope: !4872)
!4941 = !DILocation(line: 184, column: 19, scope: !4872)
!4942 = !DILocation(line: 185, column: 48, scope: !4872)
!4943 = !DILocation(line: 185, column: 19, scope: !4872)
!4944 = !DILocation(line: 186, column: 45, scope: !4872)
!4945 = !DILocation(line: 186, column: 19, scope: !4872)
!4946 = !DILocation(line: 188, column: 23, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4872, file: !4791, line: 188, column: 15)
!4948 = !DILocation(line: 198, column: 38, scope: !4872)
!4949 = !DILocation(line: 188, column: 15, scope: !4872)
!4950 = !DILocation(line: 190, column: 36, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4947, file: !4791, line: 189, column: 13)
!4952 = !DILocation(line: 190, column: 26, scope: !4951)
!4953 = !DILocation(line: 191, column: 43, scope: !4951)
!4954 = !DILocation(line: 191, column: 26, scope: !4951)
!4955 = !DILocation(line: 201, column: 1, scope: !4854)
!4956 = distinct !DISubprogram(name: "randint_free", scope: !4791, file: !4791, line: 206, type: !4957, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4959)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{null, !4794}
!4959 = !{!4960}
!4960 = !DILocalVariable(name: "s", arg: 1, scope: !4956, file: !4791, line: 206, type: !4794)
!4961 = !DILocation(line: 206, column: 38, scope: !4956)
!4962 = !DILocation(line: 208, column: 3, scope: !4956)
!4963 = !DILocation(line: 209, column: 3, scope: !4956)
!4964 = !DILocation(line: 210, column: 1, scope: !4956)
!4965 = distinct !DISubprogram(name: "randint_all_free", scope: !4791, file: !4791, line: 216, type: !4966, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !4968)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!50, !4794}
!4968 = !{!4969, !4970, !4971}
!4969 = !DILocalVariable(name: "s", arg: 1, scope: !4965, file: !4791, line: 216, type: !4794)
!4970 = !DILocalVariable(name: "r", scope: !4965, file: !4791, line: 218, type: !50)
!4971 = !DILocalVariable(name: "e", scope: !4965, file: !4791, line: 219, type: !50)
!4972 = !DILocation(line: 216, column: 42, scope: !4965)
!4973 = !DILocation(line: 218, column: 29, scope: !4965)
!4974 = !DILocation(line: 218, column: 11, scope: !4965)
!4975 = !DILocation(line: 218, column: 7, scope: !4965)
!4976 = !DILocation(line: 219, column: 11, scope: !4965)
!4977 = !DILocation(line: 219, column: 7, scope: !4965)
!4978 = !DILocation(line: 206, column: 38, scope: !4956, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 220, column: 3, scope: !4965)
!4980 = !DILocation(line: 208, column: 3, scope: !4956, inlinedAt: !4979)
!4981 = !DILocation(line: 209, column: 3, scope: !4956, inlinedAt: !4979)
!4982 = !DILocation(line: 221, column: 9, scope: !4965)
!4983 = !DILocation(line: 222, column: 3, scope: !4965)
!4984 = distinct !DISubprogram(name: "randread_new", scope: !4985, file: !4985, line: 204, type: !4986, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5063)
!4985 = !DIFile(filename: "lib/randread.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!4988, !17, !9}
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randread_source", file: !4985, line: 79, size: 33216, elements: !4990)
!4990 = !{!4991, !5032, !5036, !5037}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4989, file: !4985, line: 83, baseType: !4992, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1120, line: 49, baseType: !4994)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1122, line: 241, size: 1728, elements: !4995)
!4995 = !{!4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4994, file: !1122, line: 242, baseType: !50, size: 32)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4994, file: !1122, line: 247, baseType: !6, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4994, file: !1122, line: 248, baseType: !6, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4994, file: !1122, line: 249, baseType: !6, size: 64, offset: 192)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4994, file: !1122, line: 250, baseType: !6, size: 64, offset: 256)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4994, file: !1122, line: 251, baseType: !6, size: 64, offset: 320)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4994, file: !1122, line: 252, baseType: !6, size: 64, offset: 384)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4994, file: !1122, line: 253, baseType: !6, size: 64, offset: 448)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4994, file: !1122, line: 254, baseType: !6, size: 64, offset: 512)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4994, file: !1122, line: 256, baseType: !6, size: 64, offset: 576)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4994, file: !1122, line: 257, baseType: !6, size: 64, offset: 640)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4994, file: !1122, line: 258, baseType: !6, size: 64, offset: 704)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4994, file: !1122, line: 260, baseType: !5009, size: 64, offset: 768)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1122, line: 156, size: 192, elements: !5011)
!5011 = !{!5012, !5013, !5015}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5010, file: !1122, line: 157, baseType: !5009, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5010, file: !1122, line: 158, baseType: !5014, size: 64, offset: 64)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5010, file: !1122, line: 162, baseType: !50, size: 32, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4994, file: !1122, line: 262, baseType: !5014, size: 64, offset: 832)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4994, file: !1122, line: 264, baseType: !50, size: 32, offset: 896)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4994, file: !1122, line: 268, baseType: !50, size: 32, offset: 928)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4994, file: !1122, line: 270, baseType: !1148, size: 64, offset: 960)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4994, file: !1122, line: 274, baseType: !135, size: 16, offset: 1024)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4994, file: !1122, line: 275, baseType: !1153, size: 8, offset: 1040)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4994, file: !1122, line: 276, baseType: !1155, size: 8, offset: 1048)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4994, file: !1122, line: 280, baseType: !1157, size: 64, offset: 1088)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4994, file: !1122, line: 289, baseType: !1160, size: 64, offset: 1152)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4994, file: !1122, line: 297, baseType: !8, size: 64, offset: 1216)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4994, file: !1122, line: 298, baseType: !8, size: 64, offset: 1280)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4994, file: !1122, line: 299, baseType: !8, size: 64, offset: 1344)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4994, file: !1122, line: 300, baseType: !8, size: 64, offset: 1408)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4994, file: !1122, line: 302, baseType: !9, size: 64, offset: 1472)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4994, file: !1122, line: 303, baseType: !50, size: 32, offset: 1536)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4994, file: !1122, line: 305, baseType: !1168, size: 160, offset: 1568)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4989, file: !4985, line: 90, baseType: !5033, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{null, !12}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "handler_arg", scope: !4989, file: !4985, line: 91, baseType: !12, size: 64, offset: 128)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4989, file: !4985, line: 117, baseType: !5038, size: 33024, offset: 192)
!5038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4989, file: !4985, line: 96, size: 33024, elements: !5039)
!5039 = !{!5040, !5044}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !5038, file: !4985, line: 99, baseType: !5041, size: 32768)
!5041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !5042)
!5042 = !{!5043}
!5043 = !DISubrange(count: 4096)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "isaac", scope: !5038, file: !4985, line: 116, baseType: !5045, size: 33024)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac", file: !4985, line: 102, size: 33024, elements: !5046)
!5046 = !{!5047, !5048, !5055}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !5045, file: !4985, line: 105, baseType: !9, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5045, file: !4985, line: 108, baseType: !5049, size: 16576, offset: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isaac_state", file: !644, line: 56, size: 16576, elements: !5050)
!5050 = !{!5051, !5052, !5053, !5054}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !5049, file: !644, line: 58, baseType: !647, size: 16384)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !5049, file: !644, line: 59, baseType: !648, size: 64, offset: 16384)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5049, file: !644, line: 59, baseType: !648, size: 64, offset: 16448)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !5049, file: !644, line: 59, baseType: !648, size: 64, offset: 16512)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5045, file: !4985, line: 115, baseType: !5056, size: 16384, offset: 16640)
!5056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5045, file: !4985, line: 111, size: 16384, elements: !5057)
!5057 = !{!5058, !5059}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !5056, file: !4985, line: 113, baseType: !647, size: 16384)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5056, file: !4985, line: 114, baseType: !5060, size: 16384)
!5060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 16384, elements: !5061)
!5061 = !{!5062}
!5062 = !DISubrange(count: 2048)
!5063 = !{!5064, !5065, !5066, !5069}
!5064 = !DILocalVariable(name: "name", arg: 1, scope: !4984, file: !4985, line: 204, type: !17)
!5065 = !DILocalVariable(name: "bytes_bound", arg: 2, scope: !4984, file: !4985, line: 204, type: !9)
!5066 = !DILocalVariable(name: "source", scope: !5067, file: !4985, line: 210, type: !4992)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !4985, line: 209, column: 5)
!5068 = distinct !DILexicalBlock(scope: !4984, file: !4985, line: 206, column: 7)
!5069 = !DILocalVariable(name: "s", scope: !5067, file: !4985, line: 211, type: !4988)
!5070 = !DILocation(line: 204, column: 27, scope: !4984)
!5071 = !DILocation(line: 204, column: 40, scope: !4984)
!5072 = !DILocation(line: 206, column: 19, scope: !5068)
!5073 = !DILocation(line: 206, column: 7, scope: !4984)
!5074 = !DILocalVariable(name: "source", arg: 1, scope: !5075, file: !4985, line: 137, type: !4992)
!5075 = distinct !DISubprogram(name: "simple_new", scope: !4985, file: !4985, line: 137, type: !5076, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5078)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!4988, !4992, !12}
!5078 = !{!5074, !5079, !5080}
!5079 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !5075, file: !4985, line: 137, type: !12)
!5080 = !DILocalVariable(name: "s", scope: !5075, file: !4985, line: 139, type: !4988)
!5081 = !DILocation(line: 137, column: 19, scope: !5075, inlinedAt: !5082)
!5082 = distinct !DILocation(line: 207, column: 12, scope: !5068)
!5083 = !DILocation(line: 137, column: 39, scope: !5075, inlinedAt: !5082)
!5084 = !DILocation(line: 139, column: 31, scope: !5075, inlinedAt: !5082)
!5085 = !DILocation(line: 139, column: 27, scope: !5075, inlinedAt: !5082)
!5086 = !DILocation(line: 140, column: 6, scope: !5075, inlinedAt: !5082)
!5087 = !DILocation(line: 140, column: 13, scope: !5075, inlinedAt: !5082)
!5088 = !{!5089, !714, i64 0}
!5089 = !{!"randread_source", !714, i64 0, !714, i64 8, !714, i64 16, !715, i64 24}
!5090 = !DILocation(line: 141, column: 6, scope: !5075, inlinedAt: !5082)
!5091 = !DILocation(line: 141, column: 14, scope: !5075, inlinedAt: !5082)
!5092 = !{!5089, !714, i64 8}
!5093 = !DILocation(line: 142, column: 6, scope: !5075, inlinedAt: !5082)
!5094 = !DILocation(line: 142, column: 18, scope: !5075, inlinedAt: !5082)
!5095 = !{!5089, !714, i64 16}
!5096 = !DILocation(line: 207, column: 5, scope: !5068)
!5097 = !DILocation(line: 210, column: 13, scope: !5067)
!5098 = !DILocation(line: 213, column: 11, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5067, file: !4985, line: 213, column: 11)
!5100 = !DILocation(line: 213, column: 11, scope: !5067)
!5101 = !DILocation(line: 214, column: 25, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5099, file: !4985, line: 214, column: 13)
!5103 = !DILocation(line: 214, column: 23, scope: !5102)
!5104 = !DILocation(line: 214, column: 13, scope: !5099)
!5105 = !DILocation(line: 137, column: 19, scope: !5075, inlinedAt: !5106)
!5106 = distinct !DILocation(line: 217, column: 11, scope: !5067)
!5107 = !DILocation(line: 137, column: 39, scope: !5075, inlinedAt: !5106)
!5108 = !DILocation(line: 139, column: 31, scope: !5075, inlinedAt: !5106)
!5109 = !DILocation(line: 139, column: 27, scope: !5075, inlinedAt: !5106)
!5110 = !DILocation(line: 140, column: 6, scope: !5075, inlinedAt: !5106)
!5111 = !DILocation(line: 140, column: 13, scope: !5075, inlinedAt: !5106)
!5112 = !DILocation(line: 141, column: 6, scope: !5075, inlinedAt: !5106)
!5113 = !DILocation(line: 141, column: 14, scope: !5075, inlinedAt: !5106)
!5114 = !DILocation(line: 142, column: 6, scope: !5075, inlinedAt: !5106)
!5115 = !DILocation(line: 142, column: 18, scope: !5075, inlinedAt: !5106)
!5116 = !DILocation(line: 211, column: 31, scope: !5067)
!5117 = !DILocation(line: 219, column: 11, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5067, file: !4985, line: 219, column: 11)
!5119 = !DILocation(line: 219, column: 11, scope: !5067)
!5120 = !DILocation(line: 220, column: 44, scope: !5118)
!5121 = !DILocation(line: 220, column: 9, scope: !5122)
!5122 = !DILexicalBlockFile(scope: !5118, file: !4985, discriminator: 3)
!5123 = !DILocation(line: 223, column: 24, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5118, file: !4985, line: 222, column: 9)
!5125 = !DILocation(line: 223, column: 33, scope: !5124)
!5126 = !{!5127, !1188, i64 0}
!5127 = !{!"isaac", !1188, i64 0, !5128, i64 8, !715, i64 2080}
!5128 = !{!"isaac_state", !715, i64 0, !1188, i64 2048, !1188, i64 2056, !1188, i64 2064}
!5129 = !DILocation(line: 224, column: 35, scope: !5124)
!5130 = !DILocalVariable(name: "bufsize", arg: 2, scope: !5131, file: !4985, line: 151, type: !9)
!5131 = distinct !DISubprogram(name: "get_nonce", scope: !4985, file: !4985, line: 151, type: !5132, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5134)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{null, !8, !9, !9}
!5134 = !{!5135, !5130, !5136, !5137, !5138, !5142, !5143, !5152, !5153, !5158, !5159, !5162, !5163, !5167, !5168, !5171}
!5135 = !DILocalVariable(name: "buffer", arg: 1, scope: !5131, file: !4985, line: 151, type: !8)
!5136 = !DILocalVariable(name: "bytes_bound", arg: 3, scope: !5131, file: !4985, line: 151, type: !9)
!5137 = !DILocalVariable(name: "buf", scope: !5131, file: !4985, line: 153, type: !6)
!5138 = !DILocalVariable(name: "seeded", scope: !5131, file: !4985, line: 154, type: !5139)
!5139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !5140, line: 109, baseType: !5141)
!5140 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1149, line: 181, baseType: !1150)
!5142 = !DILocalVariable(name: "fd", scope: !5131, file: !4985, line: 157, type: !50)
!5143 = !DILocalVariable(name: "v", scope: !5144, file: !4985, line: 177, type: !5146)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !4985, line: 177, column: 3)
!5145 = distinct !DILexicalBlock(scope: !5131, file: !4985, line: 177, column: 3)
!5146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !5147, line: 8, size: 128, elements: !5148)
!5147 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5146, file: !5147, line: 10, baseType: !3610, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !5146, file: !5147, line: 11, baseType: !5151, size: 64, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !1149, line: 150, baseType: !1150)
!5152 = !DILocalVariable(name: "nbytes", scope: !5144, file: !4985, line: 177, type: !9)
!5153 = !DILocalVariable(name: "v", scope: !5154, file: !4985, line: 178, type: !5156)
!5154 = distinct !DILexicalBlock(scope: !5155, file: !4985, line: 178, column: 3)
!5155 = distinct !DILexicalBlock(scope: !5131, file: !4985, line: 178, column: 3)
!5156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !5140, line: 98, baseType: !5157)
!5157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !1149, line: 142, baseType: !50)
!5158 = !DILocalVariable(name: "nbytes", scope: !5154, file: !4985, line: 178, type: !9)
!5159 = !DILocalVariable(name: "v", scope: !5160, file: !4985, line: 179, type: !5156)
!5160 = distinct !DILexicalBlock(scope: !5161, file: !4985, line: 179, column: 3)
!5161 = distinct !DILexicalBlock(scope: !5131, file: !4985, line: 179, column: 3)
!5162 = !DILocalVariable(name: "nbytes", scope: !5160, file: !4985, line: 179, type: !9)
!5163 = !DILocalVariable(name: "v", scope: !5164, file: !4985, line: 180, type: !5166)
!5164 = distinct !DILexicalBlock(scope: !5165, file: !4985, line: 180, column: 3)
!5165 = distinct !DILexicalBlock(scope: !5131, file: !4985, line: 180, column: 3)
!5166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !5140, line: 80, baseType: !3595)
!5167 = !DILocalVariable(name: "nbytes", scope: !5164, file: !4985, line: 180, type: !9)
!5168 = !DILocalVariable(name: "v", scope: !5169, file: !4985, line: 181, type: !5166)
!5169 = distinct !DILexicalBlock(scope: !5170, file: !4985, line: 181, column: 3)
!5170 = distinct !DILexicalBlock(scope: !5131, file: !4985, line: 181, column: 3)
!5171 = !DILocalVariable(name: "nbytes", scope: !5169, file: !4985, line: 181, type: !9)
!5172 = !DILocation(line: 151, column: 33, scope: !5131, inlinedAt: !5173)
!5173 = distinct !DILocation(line: 224, column: 11, scope: !5124)
!5174 = !DILocation(line: 154, column: 11, scope: !5131, inlinedAt: !5173)
!5175 = !DILocation(line: 157, column: 12, scope: !5131, inlinedAt: !5173)
!5176 = !DILocation(line: 157, column: 7, scope: !5131, inlinedAt: !5173)
!5177 = !DILocation(line: 158, column: 9, scope: !5178, inlinedAt: !5173)
!5178 = distinct !DILexicalBlock(scope: !5131, file: !4985, line: 158, column: 7)
!5179 = !DILocation(line: 158, column: 7, scope: !5131, inlinedAt: !5173)
!5180 = !DILocation(line: 160, column: 31, scope: !5181, inlinedAt: !5173)
!5181 = distinct !DILexicalBlock(scope: !5178, file: !4985, line: 159, column: 5)
!5182 = !DILocation(line: 160, column: 16, scope: !5183, inlinedAt: !5173)
!5183 = !DILexicalBlockFile(scope: !5181, file: !4985, discriminator: 3)
!5184 = !DILocation(line: 161, column: 11, scope: !5181, inlinedAt: !5173)
!5185 = !DILocation(line: 163, column: 7, scope: !5181, inlinedAt: !5173)
!5186 = !DILocation(line: 177, column: 3, scope: !5145, inlinedAt: !5173)
!5187 = !DILocation(line: 177, column: 3, scope: !5131, inlinedAt: !5173)
!5188 = !DILocation(line: 177, column: 3, scope: !5189, inlinedAt: !5173)
!5189 = !DILexicalBlockFile(scope: !5144, file: !4985, discriminator: 1)
!5190 = !DILocation(line: 177, column: 3, scope: !5144, inlinedAt: !5173)
!5191 = !DILocation(line: 177, column: 3, scope: !5192, inlinedAt: !5173)
!5192 = !DILexicalBlockFile(scope: !5144, file: !4985, discriminator: 4)
!5193 = !DILocation(line: 178, column: 3, scope: !5155, inlinedAt: !5173)
!5194 = !DILocation(line: 178, column: 3, scope: !5131, inlinedAt: !5173)
!5195 = !DILocation(line: 178, column: 3, scope: !5154, inlinedAt: !5173)
!5196 = !DILocation(line: 178, column: 3, scope: !5197, inlinedAt: !5173)
!5197 = !DILexicalBlockFile(scope: !5154, file: !4985, discriminator: 1)
!5198 = !DILocation(line: 178, column: 3, scope: !5199, inlinedAt: !5173)
!5199 = !DILexicalBlockFile(scope: !5154, file: !4985, discriminator: 4)
!5200 = !DILocation(line: 179, column: 3, scope: !5161, inlinedAt: !5173)
!5201 = !DILocation(line: 179, column: 3, scope: !5131, inlinedAt: !5173)
!5202 = !DILocation(line: 179, column: 3, scope: !5160, inlinedAt: !5173)
!5203 = !DILocation(line: 179, column: 3, scope: !5204, inlinedAt: !5173)
!5204 = !DILexicalBlockFile(scope: !5160, file: !4985, discriminator: 1)
!5205 = !DILocation(line: 179, column: 3, scope: !5206, inlinedAt: !5173)
!5206 = !DILexicalBlockFile(scope: !5160, file: !4985, discriminator: 4)
!5207 = !DILocation(line: 180, column: 3, scope: !5165, inlinedAt: !5173)
!5208 = !DILocation(line: 180, column: 3, scope: !5131, inlinedAt: !5173)
!5209 = !DILocation(line: 180, column: 3, scope: !5164, inlinedAt: !5173)
!5210 = !DILocation(line: 180, column: 3, scope: !5211, inlinedAt: !5173)
!5211 = !DILexicalBlockFile(scope: !5164, file: !4985, discriminator: 1)
!5212 = !DILocation(line: 180, column: 3, scope: !5213, inlinedAt: !5173)
!5213 = !DILexicalBlockFile(scope: !5164, file: !4985, discriminator: 4)
!5214 = !DILocation(line: 181, column: 3, scope: !5170, inlinedAt: !5173)
!5215 = !DILocation(line: 181, column: 3, scope: !5131, inlinedAt: !5173)
!5216 = !DILocation(line: 181, column: 3, scope: !5169, inlinedAt: !5173)
!5217 = !DILocation(line: 181, column: 3, scope: !5218, inlinedAt: !5173)
!5218 = !DILexicalBlockFile(scope: !5169, file: !4985, discriminator: 1)
!5219 = !DILocation(line: 181, column: 3, scope: !5220, inlinedAt: !5173)
!5220 = !DILexicalBlockFile(scope: !5169, file: !4985, discriminator: 4)
!5221 = !DILocation(line: 226, column: 11, scope: !5124)
!5222 = !DILocation(line: 231, column: 1, scope: !4984)
!5223 = distinct !DISubprogram(name: "randread_error", scope: !4985, file: !4985, line: 124, type: !5034, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !632, variables: !5224)
!5224 = !{!5225}
!5225 = !DILocalVariable(name: "file_name", arg: 1, scope: !5223, file: !4985, line: 124, type: !12)
!5226 = !DILocation(line: 124, column: 29, scope: !5223)
!5227 = !DILocation(line: 126, column: 7, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5223, file: !4985, line: 126, column: 7)
!5229 = !DILocation(line: 126, column: 7, scope: !5223)
!5230 = !DILocation(line: 127, column: 12, scope: !5228)
!5231 = !DILocation(line: 127, column: 26, scope: !5228)
!5232 = !DILocation(line: 128, column: 18, scope: !5228)
!5233 = !DILocation(line: 128, column: 12, scope: !5228)
!5234 = !DILocation(line: 128, column: 48, scope: !5235)
!5235 = !DILexicalBlockFile(scope: !5228, file: !4985, discriminator: 2)
!5236 = !DILocation(line: 129, column: 12, scope: !5228)
!5237 = !DILocation(line: 127, column: 5, scope: !5238)
!5238 = !DILexicalBlockFile(scope: !5228, file: !4985, discriminator: 1)
!5239 = !DILocation(line: 130, column: 3, scope: !5223)
!5240 = distinct !DISubprogram(name: "randread_set_handler", scope: !4985, file: !4985, line: 242, type: !5241, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5243)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{null, !4988, !5033}
!5243 = !{!5244, !5245}
!5244 = !DILocalVariable(name: "s", arg: 1, scope: !5240, file: !4985, line: 242, type: !4988)
!5245 = !DILocalVariable(name: "handler", arg: 2, scope: !5240, file: !4985, line: 242, type: !5033)
!5246 = !DILocation(line: 242, column: 47, scope: !5240)
!5247 = !DILocation(line: 242, column: 57, scope: !5240)
!5248 = !DILocation(line: 244, column: 6, scope: !5240)
!5249 = !DILocation(line: 244, column: 14, scope: !5240)
!5250 = !DILocation(line: 245, column: 1, scope: !5240)
!5251 = distinct !DISubprogram(name: "randread_set_handler_arg", scope: !4985, file: !4985, line: 248, type: !5252, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5254)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !4988, !12}
!5254 = !{!5255, !5256}
!5255 = !DILocalVariable(name: "s", arg: 1, scope: !5251, file: !4985, line: 248, type: !4988)
!5256 = !DILocalVariable(name: "handler_arg", arg: 2, scope: !5251, file: !4985, line: 248, type: !12)
!5257 = !DILocation(line: 248, column: 51, scope: !5251)
!5258 = !DILocation(line: 248, column: 66, scope: !5251)
!5259 = !DILocation(line: 250, column: 6, scope: !5251)
!5260 = !DILocation(line: 250, column: 18, scope: !5251)
!5261 = !DILocation(line: 251, column: 1, scope: !5251)
!5262 = distinct !DISubprogram(name: "randread", scope: !4985, file: !4985, line: 326, type: !5263, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5265)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{null, !4988, !8, !9}
!5265 = !{!5266, !5267, !5268}
!5266 = !DILocalVariable(name: "s", arg: 1, scope: !5262, file: !4985, line: 326, type: !4988)
!5267 = !DILocalVariable(name: "buf", arg: 2, scope: !5262, file: !4985, line: 326, type: !8)
!5268 = !DILocalVariable(name: "size", arg: 3, scope: !5262, file: !4985, line: 326, type: !9)
!5269 = !DILocation(line: 326, column: 35, scope: !5262)
!5270 = !DILocation(line: 326, column: 44, scope: !5262)
!5271 = !DILocation(line: 326, column: 56, scope: !5262)
!5272 = !DILocation(line: 328, column: 10, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5262, file: !4985, line: 328, column: 7)
!5274 = !DILocation(line: 328, column: 7, scope: !5273)
!5275 = !DILocation(line: 328, column: 7, scope: !5262)
!5276 = !DILocalVariable(name: "s", arg: 1, scope: !5277, file: !4985, line: 258, type: !4988)
!5277 = distinct !DISubprogram(name: "readsource", scope: !4985, file: !4985, line: 258, type: !5278, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5280)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{null, !4988, !539, !9}
!5280 = !{!5276, !5281, !5282, !5283, !5285}
!5281 = !DILocalVariable(name: "p", arg: 2, scope: !5277, file: !4985, line: 258, type: !539)
!5282 = !DILocalVariable(name: "size", arg: 3, scope: !5277, file: !4985, line: 258, type: !9)
!5283 = !DILocalVariable(name: "inbytes", scope: !5284, file: !4985, line: 262, type: !9)
!5284 = distinct !DILexicalBlock(scope: !5277, file: !4985, line: 261, column: 5)
!5285 = !DILocalVariable(name: "fread_errno", scope: !5284, file: !4985, line: 263, type: !50)
!5286 = !DILocation(line: 258, column: 37, scope: !5277, inlinedAt: !5287)
!5287 = distinct !DILocation(line: 329, column: 5, scope: !5273)
!5288 = !DILocation(line: 258, column: 55, scope: !5277, inlinedAt: !5287)
!5289 = !DILocation(line: 258, column: 65, scope: !5277, inlinedAt: !5287)
!5290 = !DILocation(line: 262, column: 24, scope: !5284, inlinedAt: !5287)
!5291 = !DILocation(line: 262, column: 14, scope: !5284, inlinedAt: !5287)
!5292 = !DILocation(line: 263, column: 25, scope: !5284, inlinedAt: !5287)
!5293 = !DILocation(line: 265, column: 12, scope: !5284, inlinedAt: !5287)
!5294 = !DILocation(line: 266, column: 16, scope: !5295, inlinedAt: !5287)
!5295 = distinct !DILexicalBlock(scope: !5284, file: !4985, line: 266, column: 11)
!5296 = !DILocation(line: 266, column: 11, scope: !5284, inlinedAt: !5287)
!5297 = !DILocation(line: 264, column: 9, scope: !5284, inlinedAt: !5287)
!5298 = !DILocation(line: 268, column: 16, scope: !5284, inlinedAt: !5287)
!5299 = !DILocalVariable(name: "__stream", arg: 1, scope: !5300, file: !1181, line: 132, type: !4992)
!5300 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1181, file: !1181, line: 132, type: !5301, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5303)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!50, !4992}
!5303 = !{!5299}
!5304 = !DILocation(line: 132, column: 1, scope: !5300, inlinedAt: !5305)
!5305 = distinct !DILocation(line: 268, column: 16, scope: !5284, inlinedAt: !5287)
!5306 = !DILocation(line: 134, column: 10, scope: !5300, inlinedAt: !5305)
!5307 = !DILocation(line: 268, column: 13, scope: !5308, inlinedAt: !5287)
!5308 = !DILexicalBlockFile(scope: !5284, file: !4985, discriminator: 3)
!5309 = !DILocation(line: 269, column: 10, scope: !5284, inlinedAt: !5287)
!5310 = !DILocation(line: 269, column: 22, scope: !5284, inlinedAt: !5287)
!5311 = !DILocation(line: 269, column: 7, scope: !5284, inlinedAt: !5287)
!5312 = !DILocation(line: 263, column: 11, scope: !5284, inlinedAt: !5287)
!5313 = !DILocalVariable(name: "p", arg: 2, scope: !5314, file: !4985, line: 278, type: !8)
!5314 = distinct !DISubprogram(name: "readisaac", scope: !4985, file: !4985, line: 278, type: !5315, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5318)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !5317, !8, !9}
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5318 = !{!5319, !5313, !5320, !5321, !5322, !5324}
!5319 = !DILocalVariable(name: "isaac", arg: 1, scope: !5314, file: !4985, line: 278, type: !5317)
!5320 = !DILocalVariable(name: "size", arg: 3, scope: !5314, file: !4985, line: 278, type: !9)
!5321 = !DILocalVariable(name: "inbytes", scope: !5314, file: !4985, line: 280, type: !9)
!5322 = !DILocalVariable(name: "char_p", scope: !5323, file: !4985, line: 284, type: !6)
!5323 = distinct !DILexicalBlock(scope: !5314, file: !4985, line: 283, column: 5)
!5324 = !DILocalVariable(name: "wp", scope: !5325, file: !4985, line: 301, type: !654)
!5325 = distinct !DILexicalBlock(scope: !5326, file: !4985, line: 300, column: 9)
!5326 = distinct !DILexicalBlock(scope: !5323, file: !4985, line: 299, column: 11)
!5327 = !DILocation(line: 278, column: 39, scope: !5314, inlinedAt: !5328)
!5328 = distinct !DILocation(line: 331, column: 5, scope: !5273)
!5329 = !DILocation(line: 278, column: 49, scope: !5314, inlinedAt: !5328)
!5330 = !DILocation(line: 280, column: 27, scope: !5314, inlinedAt: !5328)
!5331 = !DILocation(line: 280, column: 10, scope: !5314, inlinedAt: !5328)
!5332 = !DILocation(line: 284, column: 13, scope: !5323, inlinedAt: !5328)
!5333 = !DILocation(line: 286, column: 16, scope: !5334, inlinedAt: !5328)
!5334 = distinct !DILexicalBlock(scope: !5323, file: !4985, line: 286, column: 11)
!5335 = !DILocation(line: 286, column: 11, scope: !5323, inlinedAt: !5328)
!5336 = !DILocation(line: 293, column: 7, scope: !5323, inlinedAt: !5328)
!5337 = !DILocation(line: 294, column: 18, scope: !5323, inlinedAt: !5328)
!5338 = !DILocation(line: 295, column: 12, scope: !5323, inlinedAt: !5328)
!5339 = !DILocation(line: 301, column: 28, scope: !5325, inlinedAt: !5328)
!5340 = !DILocation(line: 301, column: 23, scope: !5325, inlinedAt: !5328)
!5341 = !DILocation(line: 302, column: 11, scope: !5325, inlinedAt: !5328)
!5342 = !DILocation(line: 288, column: 11, scope: !5343, inlinedAt: !5328)
!5343 = distinct !DILexicalBlock(scope: !5334, file: !4985, line: 287, column: 9)
!5344 = !DILocation(line: 289, column: 37, scope: !5343, inlinedAt: !5328)
!5345 = !DILocation(line: 290, column: 11, scope: !5343, inlinedAt: !5328)
!5346 = !DILocation(line: 302, column: 30, scope: !5347, inlinedAt: !5328)
!5347 = !DILexicalBlockFile(scope: !5325, file: !4985, discriminator: 1)
!5348 = !DILocation(line: 302, column: 11, scope: !5347, inlinedAt: !5328)
!5349 = !DILocation(line: 304, column: 15, scope: !5350, inlinedAt: !5328)
!5350 = distinct !DILexicalBlock(scope: !5325, file: !4985, line: 303, column: 13)
!5351 = !DILocation(line: 305, column: 18, scope: !5350, inlinedAt: !5328)
!5352 = !DILocation(line: 306, column: 20, scope: !5350, inlinedAt: !5328)
!5353 = !DILocation(line: 307, column: 24, scope: !5354, inlinedAt: !5328)
!5354 = distinct !DILexicalBlock(scope: !5350, file: !4985, line: 307, column: 19)
!5355 = !DILocation(line: 307, column: 19, scope: !5350, inlinedAt: !5328)
!5356 = distinct !{!5356, !5357, !5358}
!5357 = !DILocation(line: 302, column: 11, scope: !5325)
!5358 = !DILocation(line: 312, column: 13, scope: !5325)
!5359 = !DILocation(line: 313, column: 15, scope: !5325, inlinedAt: !5328)
!5360 = !DILocation(line: 316, column: 7, scope: !5323, inlinedAt: !5328)
!5361 = !DILocation(line: 332, column: 1, scope: !5262)
!5362 = distinct !DISubprogram(name: "randread_free", scope: !4985, file: !4985, line: 341, type: !5363, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !5365)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!50, !4988}
!5365 = !{!5366, !5367}
!5366 = !DILocalVariable(name: "s", arg: 1, scope: !5362, file: !4985, line: 341, type: !4988)
!5367 = !DILocalVariable(name: "source", scope: !5362, file: !4985, line: 343, type: !4992)
!5368 = !DILocation(line: 341, column: 40, scope: !5362)
!5369 = !DILocation(line: 343, column: 21, scope: !5362)
!5370 = !DILocation(line: 343, column: 9, scope: !5362)
!5371 = !DILocation(line: 344, column: 3, scope: !5362)
!5372 = !DILocation(line: 345, column: 3, scope: !5362)
!5373 = !DILocation(line: 346, column: 11, scope: !5362)
!5374 = !DILocation(line: 346, column: 20, scope: !5375)
!5375 = !DILexicalBlockFile(scope: !5362, file: !4985, discriminator: 1)
!5376 = !DILocation(line: 346, column: 11, scope: !5375)
!5377 = !DILocation(line: 346, column: 11, scope: !5378)
!5378 = !DILexicalBlockFile(scope: !5362, file: !4985, discriminator: 3)
!5379 = !DILocation(line: 346, column: 3, scope: !5378)
!5380 = !DILocation(line: 97, column: 35, scope: !639)
!5381 = !DILocation(line: 97, column: 49, scope: !639)
!5382 = !DILocation(line: 100, column: 21, scope: !639)
!5383 = !{!5128, !1188, i64 2048}
!5384 = !DILocation(line: 100, column: 14, scope: !639)
!5385 = !DILocation(line: 101, column: 21, scope: !639)
!5386 = !{!5128, !1188, i64 2056}
!5387 = !DILocation(line: 101, column: 31, scope: !639)
!5388 = !DILocation(line: 101, column: 26, scope: !639)
!5389 = !{!5128, !1188, i64 2064}
!5390 = !DILocation(line: 101, column: 23, scope: !639)
!5391 = !DILocation(line: 101, column: 14, scope: !639)
!5392 = !DILocation(line: 104, column: 19, scope: !639)
!5393 = !DILocation(line: 104, column: 15, scope: !639)
!5394 = !DILocation(line: 105, column: 15, scope: !639)
!5395 = !DILocation(line: 123, column: 3, scope: !639)
!5396 = distinct !{!5396, !5395, !5397}
!5397 = !DILocation(line: 131, column: 32, scope: !639)
!5398 = !DILocation(line: 125, column: 7, scope: !663)
!5399 = !DILocalVariable(name: "m", arg: 1, scope: !5400, file: !638, line: 75, type: !5403)
!5400 = distinct !DISubprogram(name: "ind", scope: !638, file: !638, line: 75, type: !5401, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !5405)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!648, !5403, !648}
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!5405 = !{!5399, !5406, !5407, !5410, !5411, !5412}
!5406 = !DILocalVariable(name: "x", arg: 2, scope: !5400, file: !638, line: 75, type: !648)
!5407 = !DILocalVariable(name: "void_m", scope: !5408, file: !638, line: 82, type: !12)
!5408 = distinct !DILexicalBlock(scope: !5409, file: !638, line: 78, column: 5)
!5409 = distinct !DILexicalBlock(scope: !5400, file: !638, line: 77, column: 7)
!5410 = !DILocalVariable(name: "base_p", scope: !5408, file: !638, line: 83, type: !17)
!5411 = !DILocalVariable(name: "word_p", scope: !5408, file: !638, line: 84, type: !12)
!5412 = !DILocalVariable(name: "p", scope: !5408, file: !638, line: 85, type: !5403)
!5413 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5414)
!5414 = distinct !DILocation(line: 125, column: 7, scope: !663)
!5415 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5414)
!5416 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5414)
!5417 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5414)
!5418 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5414)
!5419 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5414)
!5420 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5414)
!5421 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5414)
!5422 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5414)
!5423 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5414)
!5424 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5425)
!5425 = distinct !DILocation(line: 125, column: 7, scope: !5426)
!5426 = !DILexicalBlockFile(scope: !663, file: !638, discriminator: 1)
!5427 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5425)
!5428 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5425)
!5429 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5425)
!5430 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5425)
!5431 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5425)
!5432 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5425)
!5433 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5425)
!5434 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5425)
!5435 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5425)
!5436 = !DILocation(line: 126, column: 7, scope: !667)
!5437 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5438)
!5438 = distinct !DILocation(line: 126, column: 7, scope: !5439)
!5439 = !DILexicalBlockFile(scope: !667, file: !638, discriminator: 1)
!5440 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5438)
!5441 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5438)
!5442 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5438)
!5443 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5438)
!5444 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5438)
!5445 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5438)
!5446 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5438)
!5447 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5438)
!5448 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5438)
!5449 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5450)
!5450 = distinct !DILocation(line: 126, column: 7, scope: !5451)
!5451 = !DILexicalBlockFile(scope: !667, file: !638, discriminator: 2)
!5452 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5450)
!5453 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5450)
!5454 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5450)
!5455 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5450)
!5456 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5450)
!5457 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5450)
!5458 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5450)
!5459 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5450)
!5460 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5450)
!5461 = !DILocation(line: 127, column: 7, scope: !670)
!5462 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5463)
!5463 = distinct !DILocation(line: 127, column: 7, scope: !670)
!5464 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5463)
!5465 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5463)
!5466 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5463)
!5467 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5463)
!5468 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5463)
!5469 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5463)
!5470 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5463)
!5471 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5463)
!5472 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5463)
!5473 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5474)
!5474 = distinct !DILocation(line: 127, column: 7, scope: !5475)
!5475 = !DILexicalBlockFile(scope: !670, file: !638, discriminator: 1)
!5476 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5474)
!5477 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5474)
!5478 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5474)
!5479 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5474)
!5480 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5474)
!5481 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5474)
!5482 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5474)
!5483 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5474)
!5484 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5474)
!5485 = !DILocation(line: 128, column: 7, scope: !673)
!5486 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5487)
!5487 = distinct !DILocation(line: 128, column: 7, scope: !5488)
!5488 = !DILexicalBlockFile(scope: !673, file: !638, discriminator: 1)
!5489 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5487)
!5490 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5487)
!5491 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5487)
!5492 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5487)
!5493 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5487)
!5494 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5487)
!5495 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5487)
!5496 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5487)
!5497 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5487)
!5498 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5499)
!5499 = distinct !DILocation(line: 128, column: 7, scope: !5500)
!5500 = !DILexicalBlockFile(scope: !673, file: !638, discriminator: 2)
!5501 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5499)
!5502 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5499)
!5503 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5499)
!5504 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5499)
!5505 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5499)
!5506 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5499)
!5507 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5499)
!5508 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5499)
!5509 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5499)
!5510 = !DILocation(line: 129, column: 9, scope: !664)
!5511 = !DILocation(line: 131, column: 13, scope: !639)
!5512 = !DILocation(line: 131, column: 19, scope: !639)
!5513 = !DILocation(line: 130, column: 5, scope: !5514)
!5514 = !DILexicalBlockFile(scope: !664, file: !638, discriminator: 1)
!5515 = distinct !{!5515, !5516, !5517}
!5516 = !DILocation(line: 133, column: 3, scope: !639)
!5517 = !DILocation(line: 141, column: 39, scope: !639)
!5518 = !DILocation(line: 135, column: 7, scope: !676)
!5519 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5520)
!5520 = distinct !DILocation(line: 135, column: 7, scope: !676)
!5521 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5520)
!5522 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5520)
!5523 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5520)
!5524 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5520)
!5525 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5520)
!5526 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5520)
!5527 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5520)
!5528 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5520)
!5529 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5520)
!5530 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5531)
!5531 = distinct !DILocation(line: 135, column: 7, scope: !5532)
!5532 = !DILexicalBlockFile(scope: !676, file: !638, discriminator: 1)
!5533 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5531)
!5534 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5531)
!5535 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5531)
!5536 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5531)
!5537 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5531)
!5538 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5531)
!5539 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5531)
!5540 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5531)
!5541 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5531)
!5542 = !DILocation(line: 136, column: 7, scope: !680)
!5543 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5544)
!5544 = distinct !DILocation(line: 136, column: 7, scope: !5545)
!5545 = !DILexicalBlockFile(scope: !680, file: !638, discriminator: 1)
!5546 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5544)
!5547 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5544)
!5548 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5544)
!5549 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5544)
!5550 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5544)
!5551 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5544)
!5552 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5544)
!5553 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5544)
!5554 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5544)
!5555 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5556)
!5556 = distinct !DILocation(line: 136, column: 7, scope: !5557)
!5557 = !DILexicalBlockFile(scope: !680, file: !638, discriminator: 2)
!5558 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5556)
!5559 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5556)
!5560 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5556)
!5561 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5556)
!5562 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5556)
!5563 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5556)
!5564 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5556)
!5565 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5556)
!5566 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5556)
!5567 = !DILocation(line: 137, column: 7, scope: !683)
!5568 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5569)
!5569 = distinct !DILocation(line: 137, column: 7, scope: !683)
!5570 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5569)
!5571 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5569)
!5572 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5569)
!5573 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5569)
!5574 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5569)
!5575 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5569)
!5576 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5569)
!5577 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5569)
!5578 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5569)
!5579 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5580)
!5580 = distinct !DILocation(line: 137, column: 7, scope: !5581)
!5581 = !DILexicalBlockFile(scope: !683, file: !638, discriminator: 1)
!5582 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5580)
!5583 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5580)
!5584 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5580)
!5585 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5580)
!5586 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5580)
!5587 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5580)
!5588 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5580)
!5589 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5580)
!5590 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5580)
!5591 = !DILocation(line: 138, column: 7, scope: !686)
!5592 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5593)
!5593 = distinct !DILocation(line: 138, column: 7, scope: !5594)
!5594 = !DILexicalBlockFile(scope: !686, file: !638, discriminator: 1)
!5595 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5593)
!5596 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5593)
!5597 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5593)
!5598 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5593)
!5599 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5593)
!5600 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5593)
!5601 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5593)
!5602 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5593)
!5603 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5593)
!5604 = !DILocation(line: 75, column: 24, scope: !5400, inlinedAt: !5605)
!5605 = distinct !DILocation(line: 138, column: 7, scope: !5606)
!5606 = !DILexicalBlockFile(scope: !686, file: !638, discriminator: 2)
!5607 = !DILocation(line: 75, column: 38, scope: !5400, inlinedAt: !5605)
!5608 = !DILocation(line: 82, column: 19, scope: !5408, inlinedAt: !5605)
!5609 = !DILocation(line: 83, column: 19, scope: !5408, inlinedAt: !5605)
!5610 = !DILocation(line: 84, column: 40, scope: !5408, inlinedAt: !5605)
!5611 = !DILocation(line: 84, column: 35, scope: !5408, inlinedAt: !5605)
!5612 = !DILocation(line: 84, column: 19, scope: !5408, inlinedAt: !5605)
!5613 = !DILocation(line: 85, column: 29, scope: !5408, inlinedAt: !5605)
!5614 = !DILocation(line: 85, column: 25, scope: !5408, inlinedAt: !5605)
!5615 = !DILocation(line: 86, column: 14, scope: !5408, inlinedAt: !5605)
!5616 = !DILocation(line: 139, column: 9, scope: !677)
!5617 = !DILocation(line: 141, column: 13, scope: !639)
!5618 = !DILocation(line: 141, column: 19, scope: !639)
!5619 = !DILocation(line: 140, column: 5, scope: !5620)
!5620 = !DILexicalBlockFile(scope: !677, file: !638, discriminator: 1)
!5621 = !DILocation(line: 143, column: 8, scope: !639)
!5622 = !DILocation(line: 144, column: 8, scope: !639)
!5623 = !DILocation(line: 145, column: 1, scope: !639)
!5624 = distinct !DISubprogram(name: "isaac_seed", scope: !638, file: !638, line: 255, type: !5625, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !5627)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{null, !642}
!5627 = !{!5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5639}
!5628 = !DILocalVariable(name: "s", arg: 1, scope: !5624, file: !638, line: 255, type: !642)
!5629 = !DILocalVariable(name: "a", scope: !5624, file: !638, line: 257, type: !648)
!5630 = !DILocalVariable(name: "b", scope: !5624, file: !638, line: 258, type: !648)
!5631 = !DILocalVariable(name: "c", scope: !5624, file: !638, line: 259, type: !648)
!5632 = !DILocalVariable(name: "d", scope: !5624, file: !638, line: 260, type: !648)
!5633 = !DILocalVariable(name: "e", scope: !5624, file: !638, line: 261, type: !648)
!5634 = !DILocalVariable(name: "f", scope: !5624, file: !638, line: 262, type: !648)
!5635 = !DILocalVariable(name: "g", scope: !5624, file: !638, line: 263, type: !648)
!5636 = !DILocalVariable(name: "h", scope: !5624, file: !638, line: 264, type: !648)
!5637 = !DILocalVariable(name: "i", scope: !5638, file: !638, line: 276, type: !50)
!5638 = distinct !DILexicalBlock(scope: !5624, file: !638, line: 276, column: 3)
!5639 = !DILocalVariable(name: "i", scope: !5640, file: !638, line: 277, type: !50)
!5640 = distinct !DILexicalBlock(scope: !5624, file: !638, line: 277, column: 3)
!5641 = !DILocation(line: 255, column: 33, scope: !5624)
!5642 = !DILocation(line: 257, column: 14, scope: !5624)
!5643 = !DILocation(line: 258, column: 14, scope: !5624)
!5644 = !DILocation(line: 259, column: 14, scope: !5624)
!5645 = !DILocation(line: 260, column: 14, scope: !5624)
!5646 = !DILocation(line: 261, column: 14, scope: !5624)
!5647 = !DILocation(line: 262, column: 14, scope: !5624)
!5648 = !DILocation(line: 263, column: 14, scope: !5624)
!5649 = !DILocation(line: 264, column: 14, scope: !5624)
!5650 = !DILocation(line: 276, column: 3, scope: !5638)
!5651 = !DILocation(line: 276, column: 3, scope: !5652)
!5652 = !DILexicalBlockFile(scope: !5653, file: !638, discriminator: 1)
!5653 = distinct !DILexicalBlock(scope: !5638, file: !638, line: 276, column: 3)
!5654 = !DILocation(line: 276, column: 3, scope: !5655)
!5655 = !DILexicalBlockFile(scope: !5656, file: !638, discriminator: 2)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !638, line: 276, column: 3)
!5657 = distinct !DILexicalBlock(scope: !5653, file: !638, line: 276, column: 3)
!5658 = !DILocation(line: 276, column: 3, scope: !5659)
!5659 = !DILexicalBlockFile(scope: !5660, file: !638, discriminator: 2)
!5660 = distinct !DILexicalBlock(scope: !5656, file: !638, line: 276, column: 3)
!5661 = !DILocation(line: 276, column: 3, scope: !5662)
!5662 = !DILexicalBlockFile(scope: !5657, file: !638, discriminator: 3)
!5663 = !DILocation(line: 276, column: 3, scope: !5664)
!5664 = !DILexicalBlockFile(scope: !5657, file: !638, discriminator: 1)
!5665 = distinct !{!5665, !5666, !5666}
!5666 = !DILocation(line: 276, column: 3, scope: !5653)
!5667 = !DILocation(line: 277, column: 3, scope: !5668)
!5668 = !DILexicalBlockFile(scope: !5669, file: !638, discriminator: 2)
!5669 = distinct !DILexicalBlock(scope: !5670, file: !638, line: 277, column: 3)
!5670 = distinct !DILexicalBlock(scope: !5671, file: !638, line: 277, column: 3)
!5671 = distinct !DILexicalBlock(scope: !5640, file: !638, line: 277, column: 3)
!5672 = !DILocation(line: 277, column: 3, scope: !5673)
!5673 = !DILexicalBlockFile(scope: !5674, file: !638, discriminator: 2)
!5674 = distinct !DILexicalBlock(scope: !5669, file: !638, line: 277, column: 3)
!5675 = !DILocation(line: 277, column: 3, scope: !5676)
!5676 = !DILexicalBlockFile(scope: !5670, file: !638, discriminator: 3)
!5677 = !DILocation(line: 277, column: 3, scope: !5678)
!5678 = !DILexicalBlockFile(scope: !5670, file: !638, discriminator: 1)
!5679 = !DILocation(line: 277, column: 3, scope: !5680)
!5680 = !DILexicalBlockFile(scope: !5671, file: !638, discriminator: 1)
!5681 = distinct !{!5681, !5682, !5682}
!5682 = !DILocation(line: 277, column: 3, scope: !5671)
!5683 = !DILocation(line: 279, column: 6, scope: !5624)
!5684 = !DILocation(line: 280, column: 1, scope: !5624)
!5685 = !DILocation(line: 279, column: 15, scope: !5624)
!5686 = distinct !DISubprogram(name: "fopen_safer", scope: !5687, file: !5687, line: 31, type: !5688, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !691, variables: !5730)
!5687 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!5690, !17, !17}
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1120, line: 49, baseType: !5692)
!5692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1122, line: 241, size: 1728, elements: !5693)
!5693 = !{!5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5705, !5706, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5692, file: !1122, line: 242, baseType: !50, size: 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5692, file: !1122, line: 247, baseType: !6, size: 64, offset: 64)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5692, file: !1122, line: 248, baseType: !6, size: 64, offset: 128)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5692, file: !1122, line: 249, baseType: !6, size: 64, offset: 192)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5692, file: !1122, line: 250, baseType: !6, size: 64, offset: 256)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5692, file: !1122, line: 251, baseType: !6, size: 64, offset: 320)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5692, file: !1122, line: 252, baseType: !6, size: 64, offset: 384)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5692, file: !1122, line: 253, baseType: !6, size: 64, offset: 448)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5692, file: !1122, line: 254, baseType: !6, size: 64, offset: 512)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5692, file: !1122, line: 256, baseType: !6, size: 64, offset: 576)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5692, file: !1122, line: 257, baseType: !6, size: 64, offset: 640)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5692, file: !1122, line: 258, baseType: !6, size: 64, offset: 704)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5692, file: !1122, line: 260, baseType: !5707, size: 64, offset: 768)
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1122, line: 156, size: 192, elements: !5709)
!5709 = !{!5710, !5711, !5713}
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5708, file: !1122, line: 157, baseType: !5707, size: 64)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5708, file: !1122, line: 158, baseType: !5712, size: 64, offset: 64)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5692, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5708, file: !1122, line: 162, baseType: !50, size: 32, offset: 128)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5692, file: !1122, line: 262, baseType: !5712, size: 64, offset: 832)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5692, file: !1122, line: 264, baseType: !50, size: 32, offset: 896)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5692, file: !1122, line: 268, baseType: !50, size: 32, offset: 928)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5692, file: !1122, line: 270, baseType: !1148, size: 64, offset: 960)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5692, file: !1122, line: 274, baseType: !135, size: 16, offset: 1024)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5692, file: !1122, line: 275, baseType: !1153, size: 8, offset: 1040)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5692, file: !1122, line: 276, baseType: !1155, size: 8, offset: 1048)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5692, file: !1122, line: 280, baseType: !1157, size: 64, offset: 1088)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5692, file: !1122, line: 289, baseType: !1160, size: 64, offset: 1152)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5692, file: !1122, line: 297, baseType: !8, size: 64, offset: 1216)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5692, file: !1122, line: 298, baseType: !8, size: 64, offset: 1280)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5692, file: !1122, line: 299, baseType: !8, size: 64, offset: 1344)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5692, file: !1122, line: 300, baseType: !8, size: 64, offset: 1408)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5692, file: !1122, line: 302, baseType: !9, size: 64, offset: 1472)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5692, file: !1122, line: 303, baseType: !50, size: 32, offset: 1536)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5692, file: !1122, line: 305, baseType: !1168, size: 160, offset: 1568)
!5730 = !{!5731, !5732, !5733, !5734, !5737, !5740, !5743}
!5731 = !DILocalVariable(name: "file", arg: 1, scope: !5686, file: !5687, line: 31, type: !17)
!5732 = !DILocalVariable(name: "mode", arg: 2, scope: !5686, file: !5687, line: 31, type: !17)
!5733 = !DILocalVariable(name: "fp", scope: !5686, file: !5687, line: 33, type: !5690)
!5734 = !DILocalVariable(name: "fd", scope: !5735, file: !5687, line: 37, type: !50)
!5735 = distinct !DILexicalBlock(scope: !5736, file: !5687, line: 36, column: 5)
!5736 = distinct !DILexicalBlock(scope: !5686, file: !5687, line: 35, column: 7)
!5737 = !DILocalVariable(name: "f", scope: !5738, file: !5687, line: 41, type: !50)
!5738 = distinct !DILexicalBlock(scope: !5739, file: !5687, line: 40, column: 9)
!5739 = distinct !DILexicalBlock(scope: !5735, file: !5687, line: 39, column: 11)
!5740 = !DILocalVariable(name: "e", scope: !5741, file: !5687, line: 45, type: !50)
!5741 = distinct !DILexicalBlock(scope: !5742, file: !5687, line: 44, column: 13)
!5742 = distinct !DILexicalBlock(scope: !5738, file: !5687, line: 43, column: 15)
!5743 = !DILocalVariable(name: "e", scope: !5744, file: !5687, line: 54, type: !50)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !5687, line: 53, column: 13)
!5745 = distinct !DILexicalBlock(scope: !5738, file: !5687, line: 51, column: 15)
!5746 = !DILocation(line: 31, column: 26, scope: !5686)
!5747 = !DILocation(line: 31, column: 44, scope: !5686)
!5748 = !DILocation(line: 33, column: 14, scope: !5686)
!5749 = !DILocation(line: 33, column: 9, scope: !5686)
!5750 = !DILocation(line: 35, column: 7, scope: !5736)
!5751 = !DILocation(line: 35, column: 7, scope: !5686)
!5752 = !DILocation(line: 37, column: 16, scope: !5735)
!5753 = !DILocation(line: 37, column: 11, scope: !5735)
!5754 = !DILocation(line: 39, column: 19, scope: !5739)
!5755 = !DILocation(line: 41, column: 19, scope: !5738)
!5756 = !DILocation(line: 41, column: 15, scope: !5738)
!5757 = !DILocation(line: 43, column: 17, scope: !5742)
!5758 = !DILocation(line: 43, column: 15, scope: !5738)
!5759 = !DILocation(line: 45, column: 23, scope: !5741)
!5760 = !DILocation(line: 45, column: 19, scope: !5741)
!5761 = !DILocation(line: 46, column: 15, scope: !5741)
!5762 = !DILocation(line: 47, column: 21, scope: !5741)
!5763 = !DILocation(line: 51, column: 15, scope: !5745)
!5764 = !DILocation(line: 51, column: 27, scope: !5745)
!5765 = !DILocation(line: 52, column: 15, scope: !5745)
!5766 = !DILocation(line: 52, column: 26, scope: !5767)
!5767 = !DILexicalBlockFile(scope: !5745, file: !5687, discriminator: 1)
!5768 = !DILocation(line: 52, column: 24, scope: !5767)
!5769 = !DILocation(line: 51, column: 15, scope: !5770)
!5770 = !DILexicalBlockFile(scope: !5738, file: !5687, discriminator: 1)
!5771 = !DILocation(line: 54, column: 23, scope: !5744)
!5772 = !DILocation(line: 54, column: 19, scope: !5744)
!5773 = !DILocation(line: 55, column: 15, scope: !5744)
!5774 = !DILocation(line: 56, column: 21, scope: !5744)
!5775 = !DILocation(line: 63, column: 1, scope: !5686)
!5776 = distinct !DISubprogram(name: "dup_safer", scope: !5777, file: !5777, line: 31, type: !5778, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !693, variables: !5780)
!5777 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!50, !50}
!5780 = !{!5781}
!5781 = !DILocalVariable(name: "fd", arg: 1, scope: !5776, file: !5777, line: 31, type: !50)
!5782 = !DILocation(line: 31, column: 16, scope: !5776)
!5783 = !DILocation(line: 33, column: 10, scope: !5776)
!5784 = !DILocation(line: 33, column: 3, scope: !5776)
!5785 = !DILocation(line: 272, column: 16, scope: !545)
!5786 = !DILocation(line: 272, column: 24, scope: !545)
!5787 = !DILocation(line: 274, column: 3, scope: !545)
!5788 = !DILocation(line: 274, column: 11, scope: !545)
!5789 = !DILocation(line: 275, column: 7, scope: !545)
!5790 = !DILocation(line: 276, column: 3, scope: !545)
!5791 = !DILocation(line: 277, column: 3, scope: !545)
!5792 = !DILocation(line: 322, column: 22, scope: !570)
!5793 = !DILocation(line: 322, column: 22, scope: !5794)
!5794 = !DILexicalBlockFile(scope: !570, file: !546, discriminator: 1)
!5795 = !DILocation(line: 322, column: 22, scope: !5796)
!5796 = !DILexicalBlockFile(scope: !570, file: !546, discriminator: 2)
!5797 = !DILocation(line: 322, column: 22, scope: !5798)
!5798 = !DILexicalBlockFile(scope: !570, file: !546, discriminator: 3)
!5799 = !DILocation(line: 322, column: 13, scope: !570)
!5800 = !DILocation(line: 336, column: 18, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !570, file: !546, line: 336, column: 13)
!5802 = !DILocation(line: 336, column: 15, scope: !5801)
!5803 = !DILocation(line: 336, column: 13, scope: !570)
!5804 = !DILocation(line: 338, column: 22, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5801, file: !546, line: 337, column: 11)
!5806 = !DILocation(line: 339, column: 19, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5805, file: !546, line: 339, column: 17)
!5808 = !DILocation(line: 339, column: 29, scope: !5807)
!5809 = !DILocation(line: 339, column: 32, scope: !5810)
!5810 = !DILexicalBlockFile(scope: !5807, file: !546, discriminator: 1)
!5811 = !DILocation(line: 339, column: 38, scope: !5810)
!5812 = !DILocation(line: 339, column: 17, scope: !5813)
!5813 = !DILexicalBlockFile(scope: !5805, file: !546, discriminator: 1)
!5814 = !DILocation(line: 349, column: 26, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5807, file: !546, line: 348, column: 15)
!5816 = !DILocation(line: 350, column: 28, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5815, file: !546, line: 350, column: 21)
!5818 = !DILocation(line: 350, column: 21, scope: !5815)
!5819 = !DILocation(line: 354, column: 11, scope: !5805)
!5820 = !DILocation(line: 356, column: 20, scope: !5801)
!5821 = !DILocation(line: 357, column: 28, scope: !5822)
!5822 = !DILexicalBlockFile(scope: !574, file: !546, discriminator: 1)
!5823 = !DILocation(line: 357, column: 15, scope: !574)
!5824 = !DILocation(line: 357, column: 47, scope: !5822)
!5825 = !DILocation(line: 357, column: 25, scope: !574)
!5826 = !DILocation(line: 359, column: 25, scope: !573)
!5827 = !DILocation(line: 359, column: 17, scope: !573)
!5828 = !DILocation(line: 360, column: 23, scope: !577)
!5829 = !DILocation(line: 360, column: 27, scope: !577)
!5830 = !DILocation(line: 360, column: 60, scope: !5831)
!5831 = !DILexicalBlockFile(scope: !577, file: !546, discriminator: 1)
!5832 = !DILocation(line: 360, column: 30, scope: !5831)
!5833 = !DILocation(line: 360, column: 74, scope: !5831)
!5834 = !DILocation(line: 360, column: 17, scope: !5835)
!5835 = !DILexicalBlockFile(scope: !573, file: !546, discriminator: 1)
!5836 = !DILocation(line: 362, column: 35, scope: !576)
!5837 = !DILocation(line: 362, column: 21, scope: !576)
!5838 = !DILocation(line: 363, column: 17, scope: !576)
!5839 = !DILocation(line: 364, column: 23, scope: !576)
!5840 = !DILocation(line: 366, column: 15, scope: !576)
!5841 = !DILocation(line: 404, column: 19, scope: !579)
!5842 = !DILocation(line: 404, column: 19, scope: !5843)
!5843 = !DILexicalBlockFile(scope: !579, file: !546, discriminator: 1)
!5844 = !DILocation(line: 404, column: 19, scope: !5845)
!5845 = !DILexicalBlockFile(scope: !579, file: !546, discriminator: 2)
!5846 = !DILocation(line: 404, column: 19, scope: !5847)
!5847 = !DILexicalBlockFile(scope: !579, file: !546, discriminator: 3)
!5848 = !DILocation(line: 404, column: 15, scope: !579)
!5849 = !DILocation(line: 405, column: 18, scope: !579)
!5850 = !DILocation(line: 412, column: 3, scope: !545)
!5851 = !DILocation(line: 414, column: 1, scope: !545)
!5852 = !DILocation(line: 413, column: 3, scope: !545)
