; ModuleID = 'coreutils-8.27/src/mkdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.mkdir_options = type { i32 (i8*, i8*, i8*)*, i32, i32, i32, i8, i8* }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.savewd = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Create the DIRECTORY(ies), if they do not already exist.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [207 x i8] c"  -m, --mode=MODE   set file mode (as in chmod), not a=rwx - umask\0A  -p, --parents     no error if existing, make parent directories as needed\0A  -v, --verbose     print a message for each created directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [258 x i8] c"  -Z                   set SELinux security context of each created directory\0A                         to the default type\0A      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\0A                         or SMACK security context to CTX\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pm:vZ\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"created directory %s\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), align 8, !dbg !102
@.str.20 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !108
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !113
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !117
@.str.41 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.42 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1
@.str.2.43 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1
@.str.3.44 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !124
@.str.53 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.59, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.60, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.65, i32 0, i32 0), i8* null], align 16, !dbg !131
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !159
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !166
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !178
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.69 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.70 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.71 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.72 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !185
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !192
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !180
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !194
@.str.5.81 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.82 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1.83 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1
@.str.3.85 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1
@.str.4.86 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.90 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.92 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.93 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.94 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.95 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.96 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.97 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.98 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.99 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.100 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.101 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.102 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.105 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.109 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.110 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !200
@.str.1.121 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.136 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !209
@.str.3.137 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.138 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.139 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.140 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.141 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.142 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !557

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !712 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !716, metadata !717), !dbg !718
  %2 = icmp eq i32 %0, 0, !dbg !719
  br i1 %2, label %8, label %3, !dbg !721

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !722, !tbaa !725
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !722
  %6 = load i8*, i8** @program_name, align 8, !dbg !722, !tbaa !725
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9, !dbg !729
  br label %45, !dbg !731

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !733
  %10 = load i8*, i8** @program_name, align 8, !dbg !733, !tbaa !725
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9, !dbg !735
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !737
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !725
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9, !dbg !738
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #9, !dbg !739
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !725
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9, !dbg !744
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !746
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !725
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9, !dbg !747
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !748
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !725
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9, !dbg !749
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !750
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !725
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9, !dbg !751
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #9, !dbg !752
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !725
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9, !dbg !753
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !70, metadata !717) #9, !dbg !754
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !70, metadata !717) #9, !dbg !754
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !756
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !757
  %32 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !759
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !81, metadata !717) #9, !dbg !760
  %33 = icmp eq i8* %32, null, !dbg !761
  br i1 %33, label %40, label %34, !dbg !762

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #14, !dbg !763
  %36 = icmp eq i32 %35, 0, !dbg !763
  br i1 %36, label %40, label %37, !dbg !765

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 5) #9, !dbg !767
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !769
  br label %40, !dbg !771

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #9, !dbg !772
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !773
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #9, !dbg !774
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !775
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #15, !dbg !776
  unreachable, !dbg !776
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !777 {
  %3 = alloca %struct.mkdir_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !782, metadata !717), !dbg !811
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !783, metadata !717), !dbg !812
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !784, metadata !717), !dbg !813
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !786, metadata !717), !dbg !814
  %4 = bitcast %struct.mkdir_options* %3 to i8*, !dbg !815
  call void @llvm.lifetime.start(i64 32, i8* nonnull %4) #9, !dbg !815
  %5 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 0, !dbg !816
  store i32 (i8*, i8*, i8*)* null, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !817, !tbaa !818
  %6 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 2, !dbg !822
  store i32 511, i32* %6, align 4, !dbg !823, !tbaa !824
  %7 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 3, !dbg !825
  store i32 0, i32* %7, align 8, !dbg !826, !tbaa !827
  %8 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 5, !dbg !828
  store i8* null, i8** %8, align 8, !dbg !829, !tbaa !830
  %9 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 4, !dbg !831
  store i8 0, i8* %9, align 4, !dbg !832, !tbaa !833
  %10 = load i8*, i8** %1, align 8, !dbg !834, !tbaa !725
  tail call void @set_program_name(i8* %10) #9, !dbg !835
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !836
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !837
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !838
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !839
  br label %15, !dbg !840

; <label>:15:                                     ; preds = %23, %2
  %16 = phi i32 (i8*, i8*, i8*)* [ %19, %23 ], [ null, %2 ]
  %17 = phi i8* [ %24, %23 ], [ null, %2 ]
  br label %18, !dbg !813

; <label>:18:                                     ; preds = %22, %15
  %19 = phi i32 (i8*, i8*, i8*)* [ @make_ancestor, %22 ], [ %16, %15 ]
  br label %20, !dbg !813

; <label>:20:                                     ; preds = %32, %18
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !784, metadata !717), !dbg !813
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !786, metadata !717), !dbg !814
  %21 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !785, metadata !717), !dbg !843
  switch i32 %21, label %37 [
    i32 -1, label %38
    i32 112, label %22
    i32 109, label %23
    i32 118, label %25
    i32 90, label %27
    i32 -130, label %33
    i32 -131, label %34
  ], !dbg !844

; <label>:22:                                     ; preds = %20
  store i32 (i8*, i8*, i8*)* @make_ancestor, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !845, !tbaa !818
  br label %18, !dbg !848, !llvm.loop !849

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** @optarg, align 8, !dbg !851, !tbaa !725
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !784, metadata !717), !dbg !813
  br label %15, !dbg !852, !llvm.loop !849

; <label>:25:                                     ; preds = %20
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #9, !dbg !853
  store i8* %26, i8** %8, align 8, !dbg !854, !tbaa !830
  br label %32, !dbg !855

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** @optarg, align 8, !tbaa !725
  %29 = icmp eq i8* %28, null, !dbg !856
  br i1 %29, label %32, label %30, !dbg !860

; <label>:30:                                     ; preds = %27
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !861
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31) #9, !dbg !863
  br label %32, !dbg !864

; <label>:32:                                     ; preds = %30, %25, %27
  br label %20, !dbg !813, !llvm.loop !849

; <label>:33:                                     ; preds = %20
  tail call void @usage(i32 0) #16, !dbg !865
  unreachable, !dbg !865

; <label>:34:                                     ; preds = %20
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !866, !tbaa !725
  %36 = load i8*, i8** @Version, align 8, !dbg !866, !tbaa !725
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #9, !dbg !866
  tail call void @exit(i32 0) #15, !dbg !867
  unreachable, !dbg !866

; <label>:37:                                     ; preds = %20
  tail call void @usage(i32 1) #16, !dbg !869
  unreachable, !dbg !869

; <label>:38:                                     ; preds = %20
  %39 = load i32, i32* @optind, align 4, !dbg !870, !tbaa !872
  %40 = icmp eq i32 %39, %0, !dbg !873
  br i1 %40, label %41, label %43, !dbg !874

; <label>:41:                                     ; preds = %38
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #9, !dbg !875
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %42) #9, !dbg !877
  tail call void @usage(i32 1) #16, !dbg !879
  unreachable, !dbg !879

; <label>:43:                                     ; preds = %38
  %44 = icmp ne i32 (i8*, i8*, i8*)* %19, null, !dbg !880
  %45 = icmp ne i8* %17, null, !dbg !881
  %46 = or i1 %45, %44, !dbg !883
  br i1 %46, label %47, label %61, !dbg !883

; <label>:47:                                     ; preds = %43
  %48 = tail call i32 @umask(i32 0) #9, !dbg !884
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !802, metadata !717), !dbg !885
  %49 = tail call i32 @umask(i32 %48) #9, !dbg !886
  %50 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 1, !dbg !887
  store i32 %48, i32* %50, align 8, !dbg !888, !tbaa !889
  br i1 %45, label %51, label %60, !dbg !890

; <label>:51:                                     ; preds = %47
  %52 = tail call %struct.mode_change* @mode_compile(i8* nonnull %17) #9, !dbg !891
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %52, i64 0, metadata !805, metadata !717), !dbg !892
  %53 = icmp eq %struct.mode_change* %52, null, !dbg !893
  br i1 %53, label %54, label %57, !dbg !895

; <label>:54:                                     ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 5) #9, !dbg !896
  %56 = tail call i8* @quote(i8* nonnull %17) #9, !dbg !897
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %55, i8* %56) #9, !dbg !899
  unreachable, !dbg !896

; <label>:57:                                     ; preds = %51
  %58 = call i32 @mode_adjust(i32 511, i1 zeroext true, i32 %48, %struct.mode_change* nonnull %52, i32* nonnull %7) #9, !dbg !901
  store i32 %58, i32* %6, align 4, !dbg !902, !tbaa !824
  %59 = bitcast %struct.mode_change* %52 to i8*, !dbg !903
  call void @free(i8* %59) #9, !dbg !904
  br label %61, !dbg !905

; <label>:60:                                     ; preds = %47
  store i32 511, i32* %6, align 4, !dbg !906, !tbaa !824
  br label %61

; <label>:61:                                     ; preds = %57, %60, %43
  %62 = load i32, i32* @optind, align 4, !dbg !907, !tbaa !872
  %63 = sub nsw i32 %0, %62, !dbg !908
  %64 = sext i32 %62 to i64, !dbg !909
  %65 = getelementptr inbounds i8*, i8** %1, i64 %64, !dbg !909
  %66 = call i32 @savewd_process_files(i32 %63, i8** %65, i32 (i8*, %struct.savewd*, i8*)* nonnull @process_dir, i8* nonnull %4) #9, !dbg !910
  call void @llvm.lifetime.end(i64 32, i8* nonnull %4) #9, !dbg !911
  ret i32 %66, !dbg !912
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @make_ancestor(i8*, i8* nocapture readonly, i8* nocapture readonly) #6 !dbg !913 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !915, metadata !717), !dbg !927
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !916, metadata !717), !dbg !928
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !917, metadata !717), !dbg !929
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !930
  %5 = load i8, i8* %4, align 4, !dbg !930, !tbaa !833, !range !932
  %6 = icmp eq i8 %5, 0, !dbg !930
  br i1 %6, label %9, label %7, !dbg !933

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !934, metadata !717) #9, !dbg !941
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !940, metadata !717) #9, !dbg !944
  %8 = tail call i32* @__errno_location() #1, !dbg !945
  store i32 95, i32* %8, align 4, !dbg !946, !tbaa !872
  br label %9, !dbg !947

; <label>:9:                                      ; preds = %7, %3
  tail call void @llvm.dbg.value(metadata i32 192, i64 0, metadata !921, metadata !717), !dbg !949
  %10 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !950
  %11 = bitcast i8* %10 to i32*, !dbg !950
  %12 = load i32, i32* %11, align 8, !dbg !950, !tbaa !889
  %13 = and i32 %12, 192, !dbg !951
  %14 = icmp eq i32 %13, 0, !dbg !952
  br i1 %14, label %15, label %17, !dbg !953

; <label>:15:                                     ; preds = %9
  %16 = tail call i32 @mkdir(i8* %1, i32 511) #9, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !923, metadata !717), !dbg !955
  br label %25

; <label>:17:                                     ; preds = %9
  %18 = and i32 %12, -193, !dbg !956
  %19 = tail call i32 @umask(i32 %18) #9, !dbg !958
  %20 = tail call i32 @mkdir(i8* %1, i32 511) #9, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !923, metadata !717), !dbg !955
  %21 = tail call i32* @__errno_location() #1, !dbg !959
  %22 = load i32, i32* %21, align 4, !dbg !959, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !924, metadata !717), !dbg !960
  %23 = load i32, i32* %11, align 8, !dbg !961, !tbaa !889
  %24 = tail call i32 @umask(i32 %23) #9, !dbg !962
  store i32 %22, i32* %21, align 4, !dbg !963, !tbaa !872
  br label %25, !dbg !964

; <label>:25:                                     ; preds = %15, %17
  %26 = phi i32 [ %20, %17 ], [ %16, %15 ]
  %27 = icmp eq i32 %26, 0, !dbg !965
  br i1 %27, label %28, label %39, !dbg !967

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %11, align 8, !dbg !968, !tbaa !889
  %30 = lshr i32 %29, 8, !dbg !970
  %31 = and i32 %30, 1, !dbg !970
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !923, metadata !717), !dbg !955
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !971, metadata !717) #9, !dbg !978
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !976, metadata !717) #9, !dbg !980
  %32 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !981
  %33 = bitcast i8* %32 to i8**, !dbg !981
  %34 = load i8*, i8** %33, align 8, !dbg !981, !tbaa !830
  %35 = icmp eq i8* %34, null, !dbg !983
  br i1 %35, label %39, label %36, !dbg !984

; <label>:36:                                     ; preds = %28
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !985, !tbaa !725
  %38 = tail call i8* @quotearg_style(i32 4, i8* %0) #9, !dbg !986
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %37, i8* nonnull %34, i8* %38) #9, !dbg !987
  br label %39, !dbg !989

; <label>:39:                                     ; preds = %36, %28, %25
  %40 = phi i32 [ %26, %25 ], [ %31, %28 ], [ %31, %36 ]
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !923, metadata !717), !dbg !955
  ret i32 %40, !dbg !990
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @process_dir(i8*, %struct.savewd*, i8*) #6 !dbg !991 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !996, metadata !717), !dbg !1001
  tail call void @llvm.dbg.value(metadata %struct.savewd* %1, i64 0, metadata !997, metadata !717), !dbg !1002
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !998, metadata !717), !dbg !1003
  %4 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !1004
  %5 = load i8, i8* %4, align 4, !dbg !1004, !tbaa !833, !range !932
  %6 = icmp ne i8 %5, 0, !dbg !1004
  %7 = bitcast i8* %2 to i32 (i8*, i8*, i8*)**
  %8 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !tbaa !818
  %9 = icmp eq i32 (i8*, i8*, i8*)* %8, null, !dbg !1006
  %10 = and i1 %6, %9, !dbg !1009
  br i1 %10, label %11, label %13, !dbg !1009

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !934, metadata !717) #9, !dbg !1010
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !940, metadata !717) #9, !dbg !1013
  %12 = tail call i32* @__errno_location() #1, !dbg !1014
  store i32 95, i32* %12, align 4, !dbg !1015, !tbaa !872
  br label %13, !dbg !1016

; <label>:13:                                     ; preds = %3, %11
  %14 = phi i32 (i8*, i8*, i8*)* [ null, %11 ], [ %8, %3 ], !dbg !1018
  %15 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1019
  %16 = bitcast i8* %15 to i32*, !dbg !1019
  %17 = load i32, i32* %16, align 4, !dbg !1019, !tbaa !824
  %18 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1020
  %19 = bitcast i8* %18 to i32*, !dbg !1020
  %20 = load i32, i32* %19, align 8, !dbg !1020, !tbaa !827
  %21 = tail call zeroext i1 @make_dir_parents(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* %14, i8* nonnull %2, i32 %17, void (i8*, i8*)* nonnull @announce_mkdir, i32 %20, i32 -1, i32 -1, i1 zeroext true) #9, !dbg !1021
  %22 = xor i1 %21, true, !dbg !1021
  %23 = zext i1 %22 to i32, !dbg !1021
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !1000, metadata !717), !dbg !1022
  br i1 %21, label %24, label %32, !dbg !1023

; <label>:24:                                     ; preds = %13
  %25 = load i8, i8* %4, align 4, !dbg !1025, !tbaa !833, !range !932
  %26 = icmp eq i8 %25, 0, !dbg !1025
  br i1 %26, label %32, label %27, !dbg !1027

; <label>:27:                                     ; preds = %24
  %28 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %7, align 8, !dbg !1028, !tbaa !818
  %29 = icmp eq i32 (i8*, i8*, i8*)* %28, null, !dbg !1029
  br i1 %29, label %32, label %30, !dbg !1030

; <label>:30:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1032, metadata !717) #9, !dbg !1039
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1037, metadata !1044) #9, !dbg !1045
  tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1038, metadata !1044) #9, !dbg !1046
  %31 = tail call i32* @__errno_location() #1, !dbg !1047
  store i32 95, i32* %31, align 4, !dbg !1048, !tbaa !872
  br label %32, !dbg !1049

; <label>:32:                                     ; preds = %30, %27, %24, %13
  ret i32 %23, !dbg !1051
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal void @announce_mkdir(i8*, i8* nocapture readonly) #6 !dbg !972 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !971, metadata !717), !dbg !1052
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !976, metadata !717), !dbg !1053
  %3 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1054
  %4 = bitcast i8* %3 to i8**, !dbg !1054
  %5 = load i8*, i8** %4, align 8, !dbg !1054, !tbaa !830
  %6 = icmp eq i8* %5, null, !dbg !1055
  br i1 %6, label %10, label %7, !dbg !1056

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1057, !tbaa !725
  %9 = tail call i8* @quotearg_style(i32 4, i8* %0) #9, !dbg !1058
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %8, i8* nonnull %5, i8* %9) #9, !dbg !1059
  br label %10, !dbg !1060

; <label>:10:                                     ; preds = %2, %7
  ret void, !dbg !1061
}

; Function Attrs: nounwind
declare i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @prog_fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #6 !dbg !1062 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1118, metadata !717), !dbg !1131
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1119, metadata !717), !dbg !1132
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1133
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9, !dbg !1133
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1120, metadata !717), !dbg !1134
  %5 = load i8*, i8** @program_name, align 8, !dbg !1135, !tbaa !725
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0) #9, !dbg !1135
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %0) #9, !dbg !1136
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1137
  call void @llvm.va_start(i8* nonnull %4), !dbg !1137
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1138, metadata !717) #9, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1147, metadata !717) #9, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, i64 0, metadata !1148, metadata !717) #9, !dbg !1152
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #9, !dbg !1153
  call void @llvm.va_end(i8* nonnull %4), !dbg !1154
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1155, metadata !717) #9, !dbg !1162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1161, metadata !717) #9, !dbg !1164
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1165
  %11 = load i8*, i8** %10, align 8, !dbg !1165, !tbaa !1166
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1165
  %13 = load i8*, i8** %12, align 8, !dbg !1165, !tbaa !1170
  %14 = icmp ult i8* %11, %13, !dbg !1165
  br i1 %14, label %17, label %15, !dbg !1165, !prof !1171

; <label>:15:                                     ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #9, !dbg !1172
  br label %19, !dbg !1172

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1174
  store i8* %18, i8** %10, align 8, !dbg !1174, !tbaa !1166
  store i8 10, i8* %11, align 1, !dbg !1174, !tbaa !1176
  br label %19, !dbg !1174

; <label>:19:                                     ; preds = %15, %17
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9, !dbg !1177
  ret void, !dbg !1177
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1178 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1180, metadata !717), !dbg !1181
  store i8* %0, i8** @file_name, align 8, !dbg !1182, !tbaa !725
  ret void, !dbg !1183
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1184 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1188, metadata !1044), !dbg !1189
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1190, !tbaa !1191
  ret void, !dbg !1192
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1193 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1198, !tbaa !725
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !1199
  %3 = icmp eq i32 %2, 0, !dbg !1200
  br i1 %3, label %21, label %4, !dbg !1201

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1202, !tbaa !1191, !range !932
  %6 = icmp eq i8 %5, 0, !dbg !1202
  %7 = tail call i32* @__errno_location() #1, !dbg !1204
  br i1 %6, label %11, label %8, !dbg !1206

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1207, !tbaa !872
  %10 = icmp eq i32 %9, 32, !dbg !1209
  br i1 %10, label %21, label %11, !dbg !1210

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #9, !dbg !1212
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1195, metadata !717), !dbg !1213
  %13 = load i8*, i8** @file_name, align 8, !dbg !1214, !tbaa !725
  %14 = icmp eq i8* %13, null, !dbg !1214
  %15 = load i32, i32* %7, align 4, !tbaa !872
  br i1 %14, label %18, label %16, !dbg !1215

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !1216
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.24, i64 0, i64 0), i8* %17, i8* %12) #9, !dbg !1218
  br label %19, !dbg !1220

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.25, i64 0, i64 0), i8* %12) #9, !dbg !1221
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1222, !tbaa !872
  tail call void @_exit(i32 %20) #15, !dbg !1223
  unreachable, !dbg !1223

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1224, !tbaa !725
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9, !dbg !1226
  %24 = icmp eq i32 %23, 0, !dbg !1227
  br i1 %24, label %27, label %25, !dbg !1228

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1229, !tbaa !872
  tail call void @_exit(i32 %26) #15, !dbg !1230
  unreachable, !dbg !1230

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1231
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @make_dir_parents(i8*, %struct.savewd*, i32 (i8*, i8*, i8*)*, i8*, i32, void (i8*, i8*)* nocapture, i32, i32, i32, i1 zeroext) local_unnamed_addr #6 !dbg !1232 {
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1239, metadata !717), !dbg !1309
  tail call void @llvm.dbg.value(metadata %struct.savewd* %1, i64 0, metadata !1240, metadata !717), !dbg !1310
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, i64 0, metadata !1241, metadata !717), !dbg !1311
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1242, metadata !717), !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1243, metadata !717), !dbg !1313
  tail call void @llvm.dbg.value(metadata void (i8*, i8*)* %5, i64 0, metadata !1244, metadata !717), !dbg !1314
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1245, metadata !717), !dbg !1315
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1246, metadata !717), !dbg !1316
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1247, metadata !717), !dbg !1317
  %13 = zext i1 %9 to i8
  tail call void @llvm.dbg.value(metadata i1 %9, i64 0, metadata !1248, metadata !1044), !dbg !1318
  %14 = load i8, i8* %0, align 1, !dbg !1319, !tbaa !1176
  %15 = icmp eq i8 %14, 47, !dbg !1319
  br i1 %15, label %24, label %16, !dbg !1319

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata %struct.savewd* %1, i64 0, metadata !1320, metadata !717), !dbg !1327
  %17 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 0, !dbg !1330
  %18 = load i32, i32* %17, align 4, !dbg !1330, !tbaa !1331
  %19 = icmp eq i32 %18, 4, !dbg !1333
  br i1 %19, label %20, label %24, !dbg !1334

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 1, i32 0, !dbg !1335
  %22 = load i32, i32* %21, align 4, !dbg !1335, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1249, metadata !717), !dbg !1337
  %23 = icmp eq i32 %22, 0, !dbg !1338
  br i1 %23, label %24, label %116, !dbg !1339

; <label>:24:                                     ; preds = %16, %10, %20
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1250, metadata !717), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1254, metadata !717), !dbg !1341
  %25 = icmp ne i32 (i8*, i8*, i8*)* %2, null, !dbg !1342
  br i1 %25, label %26, label %34, !dbg !1344

; <label>:26:                                     ; preds = %24
  %27 = tail call i64 @mkancesdirs(i8* %0, %struct.savewd* %1, i32 (i8*, i8*, i8*)* nonnull %2, i8* %3) #9, !dbg !1345
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1250, metadata !717), !dbg !1340
  %28 = icmp slt i64 %27, 0, !dbg !1347
  br i1 %28, label %29, label %34, !dbg !1349

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i64 %27, -1, !dbg !1350
  br i1 %30, label %31, label %120, !dbg !1353

; <label>:31:                                     ; preds = %29
  %32 = tail call i32* @__errno_location() #1, !dbg !1354
  %33 = load i32, i32* %32, align 4, !dbg !1354, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !1249, metadata !717), !dbg !1337
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !1249, metadata !717), !dbg !1337
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1250, metadata !717), !dbg !1340
  br label %116

; <label>:34:                                     ; preds = %26, %24
  %35 = phi i64 [ 0, %24 ], [ %27, %26 ]
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !1249, metadata !717), !dbg !1337
  tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1250, metadata !717), !dbg !1340
  %36 = and i32 %8, %7, !dbg !1355
  %37 = icmp eq i32 %36, -1, !dbg !1355
  %38 = and i32 %6, 3072, !dbg !1356
  %39 = and i32 %4, 512, !dbg !1357
  %40 = or i32 %38, %39, !dbg !1358
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1259, metadata !717), !dbg !1359
  br i1 %37, label %43, label %41, !dbg !1360

; <label>:41:                                     ; preds = %34
  %42 = and i32 %4, -64, !dbg !1361
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1259, metadata !717), !dbg !1359
  br label %47, !dbg !1363

; <label>:43:                                     ; preds = %34
  %44 = icmp eq i32 %40, 0, !dbg !1364
  %45 = and i32 %4, -19, !dbg !1365
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !1259, metadata !717), !dbg !1359
  %46 = select i1 %44, i32 %4, i32 %45, !dbg !1367
  br label %47, !dbg !1367

; <label>:47:                                     ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !1259, metadata !717), !dbg !1359
  %49 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !1368
  %50 = tail call i32 @mkdir(i8* %49, i32 %48) #9, !dbg !1369
  %51 = icmp eq i32 %50, 0, !dbg !1370
  br i1 %51, label %52, label %59, !dbg !1371

; <label>:52:                                     ; preds = %47
  %53 = and i32 %4, 511, !dbg !1372
  %54 = and i32 %53, %6, !dbg !1373
  tail call void %5(i8* %0, i8* %3) #9, !dbg !1374
  %55 = or i32 %40, %54, !dbg !1375
  %56 = icmp eq i32 %55, 0, !dbg !1375
  %57 = and i1 %56, %37, !dbg !1375
  %58 = zext i1 %57 to i8, !dbg !1376
  tail call void @llvm.dbg.value(metadata i8 %58, i64 0, metadata !1248, metadata !717), !dbg !1318
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !1254, metadata !717), !dbg !1341
  br label %62, !dbg !1377

; <label>:59:                                     ; preds = %47
  %60 = tail call i32* @__errno_location() #1, !dbg !1378
  %61 = load i32, i32* %60, align 4, !dbg !1378, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !1249, metadata !717), !dbg !1337
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1259, metadata !717), !dbg !1359
  br label %62

; <label>:62:                                     ; preds = %59, %52
  %63 = phi i32 [ 3, %52 ], [ 2, %59 ]
  %64 = phi i32 [ %48, %52 ], [ -1, %59 ]
  %65 = phi i32 [ 0, %52 ], [ %61, %59 ]
  %66 = phi i8 [ %58, %52 ], [ %13, %59 ]
  tail call void @llvm.dbg.value(metadata i8 %66, i64 0, metadata !1248, metadata !717), !dbg !1318
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !1249, metadata !717), !dbg !1337
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !1259, metadata !717), !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !1254, metadata !717), !dbg !1341
  %67 = icmp eq i8 %66, 0, !dbg !1380
  br i1 %67, label %84, label %68, !dbg !1381

; <label>:68:                                     ; preds = %62
  %69 = bitcast %struct.stat* %11 to i8*, !dbg !1382
  call void @llvm.lifetime.start(i64 144, i8* nonnull %69) #9, !dbg !1382
  %70 = icmp eq i32 %65, 0, !dbg !1383
  br i1 %70, label %82, label %71, !dbg !1385

; <label>:71:                                     ; preds = %68
  %72 = icmp ne i32 %65, 2, !dbg !1386
  %73 = and i1 %25, %72, !dbg !1388
  br i1 %73, label %74, label %83, !dbg !1388

; <label>:74:                                     ; preds = %71
  tail call void @llvm.dbg.value(metadata %struct.stat* %11, i64 0, metadata !1263, metadata !1389), !dbg !1390
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1391, metadata !717) #9, !dbg !1399
  tail call void @llvm.dbg.value(metadata %struct.stat* %11, i64 0, metadata !1398, metadata !717) #9, !dbg !1399
  %75 = call i32 @__xstat(i32 1, i8* nonnull %49, %struct.stat* nonnull %11) #9, !dbg !1401
  %76 = icmp eq i32 %75, 0, !dbg !1402
  br i1 %76, label %77, label %83, !dbg !1403

; <label>:77:                                     ; preds = %74
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 3, !dbg !1404
  %79 = load i32, i32* %78, align 8, !dbg !1404, !tbaa !1405
  %80 = and i32 %79, 61440, !dbg !1404
  %81 = icmp eq i32 %80, 16384, !dbg !1404
  br i1 %81, label %82, label %83, !dbg !1408

; <label>:82:                                     ; preds = %77, %68
  call void @llvm.lifetime.end(i64 144, i8* nonnull %69) #9, !dbg !1410
  br label %120

; <label>:83:                                     ; preds = %71, %74, %77
  call void @llvm.lifetime.end(i64 144, i8* nonnull %69) #9, !dbg !1410
  br label %116

; <label>:84:                                     ; preds = %62
  %85 = bitcast [2 x i32]* %12 to i8*, !dbg !1411
  call void @llvm.lifetime.start(i64 8, i8* nonnull %85) #9, !dbg !1411
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %12, metadata !1299, metadata !717), !dbg !1412
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !1413
  %87 = call i32 @savewd_chdir(%struct.savewd* %1, i8* %49, i32 %63, i32* nonnull %86) #9, !dbg !1414
  call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !1304, metadata !717), !dbg !1415
  %88 = icmp slt i32 %87, -1, !dbg !1416
  br i1 %88, label %89, label %90, !dbg !1417

; <label>:89:                                     ; preds = %84
  call void @llvm.lifetime.end(i64 8, i8* nonnull %85) #9, !dbg !1418
  br label %120

; <label>:90:                                     ; preds = %84
  %91 = icmp eq i32 %87, 0, !dbg !1419
  %92 = select i1 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8* %49, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !1308, metadata !717), !dbg !1421
  %93 = load i32, i32* %86, align 4, !dbg !1422, !tbaa !872
  %94 = call i32 @dirchownmod(i32 %93, i8* %92, i32 %64, i32 %7, i32 %8, i32 %4, i32 %6) #9, !dbg !1424
  %95 = icmp eq i32 %94, 0, !dbg !1425
  br i1 %95, label %114, label %96, !dbg !1426

; <label>:96:                                     ; preds = %90
  %97 = icmp eq i32 %65, 0, !dbg !1427
  br i1 %97, label %98, label %100, !dbg !1429

; <label>:98:                                     ; preds = %96
  %99 = tail call i32* @__errno_location() #1, !dbg !1430
  br label %107, !dbg !1429

; <label>:100:                                    ; preds = %96
  %101 = icmp ne i32 %65, 2, !dbg !1432
  %102 = and i1 %25, %101, !dbg !1434
  br i1 %102, label %103, label %113, !dbg !1434

; <label>:103:                                    ; preds = %100
  %104 = tail call i32* @__errno_location() #1, !dbg !1435
  %105 = load i32, i32* %104, align 4, !dbg !1435, !tbaa !872
  %106 = icmp eq i32 %105, 20, !dbg !1436
  br i1 %106, label %113, label %107, !dbg !1437

; <label>:107:                                    ; preds = %98, %103
  %108 = phi i32* [ %99, %98 ], [ %104, %103 ], !dbg !1430
  %109 = load i32, i32* %108, align 4, !dbg !1430, !tbaa !872
  %110 = select i1 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.42, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2.43, i64 0, i64 0), !dbg !1439
  %111 = call i8* @dcgettext(i8* null, i8* %110, i32 5) #9, !dbg !1439
  %112 = call i8* @quote(i8* %0) #9, !dbg !1440
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %109, i8* %111, i8* %112) #9, !dbg !1441
  br label %114, !dbg !1443

; <label>:113:                                    ; preds = %103, %100
  call void @llvm.lifetime.end(i64 8, i8* nonnull %85) #9, !dbg !1418
  br label %116

; <label>:114:                                    ; preds = %107, %90
  %115 = phi i1 [ false, %107 ], [ true, %90 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %85) #9, !dbg !1418
  br label %120

; <label>:116:                                    ; preds = %31, %83, %113, %20
  %117 = phi i32 [ %22, %20 ], [ %65, %113 ], [ %65, %83 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !1249, metadata !717), !dbg !1337
  %118 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.44, i64 0, i64 0), i32 5) #9, !dbg !1444
  %119 = call i8* @quote(i8* %0) #9, !dbg !1445
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %117, i8* %118, i8* %119) #9, !dbg !1447
  br label %120, !dbg !1448

; <label>:120:                                    ; preds = %89, %82, %114, %29, %116
  %121 = phi i1 [ false, %116 ], [ true, %29 ], [ true, %89 ], [ true, %82 ], [ %115, %114 ]
  ret i1 %121, !dbg !1449
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #6 !dbg !1450 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1462, metadata !717), !dbg !1486
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1464, metadata !717), !dbg !1487
  %2 = load i8, i8* %0, align 1, !dbg !1488, !tbaa !1176
  %3 = and i8 %2, -8, !dbg !1489
  %4 = icmp eq i8 %3, 48, !dbg !1489
  br i1 %4, label %6, label %5, !dbg !1489, !llvm.loop !1490

; <label>:5:                                      ; preds = %1
  br label %41, !dbg !1493

; <label>:6:                                      ; preds = %1
  br label %7, !dbg !1494

; <label>:7:                                      ; preds = %6, %17
  %8 = phi i8 [ %18, %17 ], [ %2, %6 ], !dbg !1495
  %9 = phi i32 [ %15, %17 ], [ 0, %6 ]
  %10 = phi i8* [ %12, %17 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1465, metadata !717), !dbg !1494
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1466, metadata !717), !dbg !1497
  %11 = shl i32 %9, 3, !dbg !1498
  %12 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1499
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1465, metadata !717), !dbg !1494
  %13 = sext i8 %8 to i32, !dbg !1495
  %14 = add i32 %11, -48, !dbg !1500
  %15 = add i32 %14, %13, !dbg !1501
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1466, metadata !717), !dbg !1497
  %16 = icmp ugt i32 %15, 4095, !dbg !1502
  br i1 %16, label %158, label %17, !dbg !1504

; <label>:17:                                     ; preds = %7
  %18 = load i8, i8* %12, align 1, !dbg !1505, !tbaa !1176
  %19 = and i8 %18, -8, !dbg !1506
  %20 = icmp eq i8 %19, 48, !dbg !1506
  br i1 %20, label %7, label %21, !dbg !1506, !llvm.loop !1490

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i8 %18, 0, !dbg !1507
  br i1 %22, label %23, label %159, !dbg !1509

; <label>:23:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1469, metadata !717), !dbg !1510
  %24 = ptrtoint i8* %12 to i64, !dbg !1511
  %25 = ptrtoint i8* %0 to i64, !dbg !1511
  %26 = sub i64 %24, %25, !dbg !1511
  %27 = icmp slt i64 %26, 5, !dbg !1512
  %28 = and i32 %15, 3072, !dbg !1513
  %29 = or i32 %28, 1023, !dbg !1514
  %30 = select i1 %27, i32 %29, i32 4095, !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1470, metadata !717), !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1517, metadata !717) #9, !dbg !1524
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1522, metadata !717) #9, !dbg !1526
  %31 = tail call noalias i8* @xmalloc(i64 32) #9, !dbg !1527
  %32 = bitcast i8* %31 to %struct.mode_change*, !dbg !1527
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %32, i64 0, metadata !1523, metadata !717) #9, !dbg !1528
  store i8 61, i8* %31, align 4, !dbg !1529, !tbaa !1530
  %33 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1532
  store i8 1, i8* %33, align 1, !dbg !1533, !tbaa !1534
  %34 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !1535
  %35 = bitcast i8* %34 to i32*, !dbg !1535
  store i32 4095, i32* %35, align 4, !dbg !1536, !tbaa !1537
  %36 = getelementptr inbounds i8, i8* %31, i64 8, !dbg !1538
  %37 = bitcast i8* %36 to i32*, !dbg !1538
  store i32 %15, i32* %37, align 4, !dbg !1539, !tbaa !1540
  %38 = getelementptr inbounds i8, i8* %31, i64 12, !dbg !1541
  %39 = bitcast i8* %38 to i32*, !dbg !1541
  store i32 %30, i32* %39, align 4, !dbg !1542, !tbaa !1543
  %40 = getelementptr inbounds i8, i8* %31, i64 17, !dbg !1544
  store i8 0, i8* %40, align 1, !dbg !1545, !tbaa !1534
  br label %159, !dbg !1546

; <label>:41:                                     ; preds = %5, %46
  %42 = phi i8 [ %50, %46 ], [ %2, %5 ], !dbg !1547
  %43 = phi i8* [ %49, %46 ], [ %0, %5 ]
  %44 = phi i64 [ %48, %46 ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1471, metadata !717), !dbg !1493
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1465, metadata !717), !dbg !1494
  switch i8 %42, label %45 [
    i8 0, label %51
    i8 61, label %46
    i8 43, label %46
    i8 45, label %46
  ], !dbg !1551

; <label>:45:                                     ; preds = %41
  br label %46, !dbg !1553

; <label>:46:                                     ; preds = %41, %41, %41, %45
  %47 = phi i64 [ 0, %45 ], [ 1, %41 ], [ 1, %41 ], [ 1, %41 ]
  %48 = add i64 %47, %44, !dbg !1555
  tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1471, metadata !717), !dbg !1493
  %49 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1557
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1465, metadata !717), !dbg !1494
  %50 = load i8, i8* %49, align 1, !tbaa !1176
  br label %41, !dbg !1558, !llvm.loop !1559

; <label>:51:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !1562, metadata !717) #9, !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !1567, metadata !717) #9, !dbg !1570
  %52 = icmp ugt i64 %44, 576460752303423487, !dbg !1571
  br i1 %52, label %53, label %54, !dbg !1573

; <label>:53:                                     ; preds = %51
  tail call void @xalloc_die() #15, !dbg !1574
  unreachable, !dbg !1574

; <label>:54:                                     ; preds = %51
  %55 = shl i64 %44, 4, !dbg !1575
  %56 = tail call noalias i8* @xmalloc(i64 %55) #9, !dbg !1576
  %57 = bitcast i8* %56 to %struct.mode_change*, !dbg !1577
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %57, i64 0, metadata !1463, metadata !717), !dbg !1578
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1465, metadata !717), !dbg !1494
  br label %58, !dbg !1579

; <label>:58:                                     ; preds = %150, %54
  %59 = phi i8* [ %0, %54 ], [ %151, %150 ]
  %60 = phi i64 [ 0, %54 ], [ %135, %150 ]
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1464, metadata !717), !dbg !1487
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1465, metadata !717), !dbg !1494
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1473, metadata !717), !dbg !1580
  br label %61, !dbg !1581

; <label>:61:                                     ; preds = %70, %58
  %62 = phi i8* [ %59, %58 ], [ %73, %70 ]
  %63 = phi i32 [ 0, %58 ], [ %72, %70 ]
  tail call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !1473, metadata !717), !dbg !1580
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1465, metadata !717), !dbg !1494
  %64 = load i8, i8* %62, align 1, !dbg !1582, !tbaa !1176
  %65 = sext i8 %64 to i32, !dbg !1582
  switch i32 %65, label %156 [
    i32 117, label %67
    i32 103, label %70
    i32 111, label %68
    i32 97, label %69
    i32 61, label %66
    i32 43, label %66
    i32 45, label %66
  ], !dbg !1585, !llvm.loop !1586

; <label>:66:                                     ; preds = %61, %61, %61
  br label %74, !dbg !1487

; <label>:67:                                     ; preds = %61
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1473, metadata !717), !dbg !1580
  br label %70, !dbg !1589

; <label>:68:                                     ; preds = %61
  br label %70, !dbg !1591

; <label>:69:                                     ; preds = %61
  br label %70, !dbg !1592

; <label>:70:                                     ; preds = %61, %67, %68, %69
  %71 = phi i32 [ 2496, %67 ], [ 519, %68 ], [ 4095, %69 ], [ 1080, %61 ]
  %72 = or i32 %71, %63
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1473, metadata !717), !dbg !1580
  %73 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1593
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !1465, metadata !717), !dbg !1494
  br label %61, !dbg !1595, !llvm.loop !1596

; <label>:74:                                     ; preds = %149, %66
  %75 = phi i8 [ %64, %66 ], [ %148, %149 ], !dbg !1599
  %76 = phi i8* [ %62, %66 ], [ %130, %149 ]
  %77 = phi i32 [ %63, %66 ], [ %131, %149 ]
  %78 = phi i64 [ %60, %66 ], [ %135, %149 ]
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !1464, metadata !717), !dbg !1487
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1473, metadata !717), !dbg !1580
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !1465, metadata !717), !dbg !1494
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1600
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !1465, metadata !717), !dbg !1494
  tail call void @llvm.dbg.value(metadata i8 %75, i64 0, metadata !1477, metadata !717), !dbg !1601
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1480, metadata !717), !dbg !1602
  tail call void @llvm.dbg.value(metadata i8 3, i64 0, metadata !1481, metadata !717), !dbg !1603
  %80 = load i8, i8* %79, align 1, !dbg !1604, !tbaa !1176
  %81 = sext i8 %80 to i32, !dbg !1604
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
  ], !dbg !1605, !llvm.loop !1606

; <label>:82:                                     ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  br label %84, !dbg !1609

; <label>:83:                                     ; preds = %74
  br label %107, !dbg !1603

; <label>:84:                                     ; preds = %82, %94
  %85 = phi i8 [ %95, %94 ], [ %80, %82 ], !dbg !1610
  %86 = phi i8* [ %89, %94 ], [ %79, %82 ]
  %87 = phi i32 [ %92, %94 ], [ 0, %82 ]
  tail call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !1483, metadata !717), !dbg !1609
  tail call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !1465, metadata !717), !dbg !1494
  %88 = shl i32 %87, 3, !dbg !1612
  %89 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1613
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1465, metadata !717), !dbg !1494
  %90 = sext i8 %85 to i32, !dbg !1610
  %91 = add i32 %88, -48, !dbg !1614
  %92 = add i32 %91, %90, !dbg !1615
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !1483, metadata !717), !dbg !1609
  %93 = icmp ugt i32 %92, 4095, !dbg !1616
  br i1 %93, label %154, label %94, !dbg !1618

; <label>:94:                                     ; preds = %84
  %95 = load i8, i8* %89, align 1, !dbg !1619, !tbaa !1176
  %96 = and i8 %95, -8, !dbg !1620
  %97 = icmp eq i8 %96, 48, !dbg !1620
  br i1 %97, label %84, label %98, !dbg !1620, !llvm.loop !1606

; <label>:98:                                     ; preds = %94
  %99 = icmp eq i32 %77, 0, !dbg !1621
  br i1 %99, label %100, label %155, !dbg !1623

; <label>:100:                                    ; preds = %98
  switch i8 %95, label %155 [
    i8 0, label %129
    i8 44, label %129
  ], !dbg !1624

; <label>:101:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 448, i64 0, metadata !1479, metadata !717), !dbg !1626
  %102 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1627
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !1465, metadata !717), !dbg !1494
  br label %129, !dbg !1628

; <label>:103:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 56, i64 0, metadata !1479, metadata !717), !dbg !1626
  %104 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1629
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1465, metadata !717), !dbg !1494
  br label %129, !dbg !1630

; <label>:105:                                    ; preds = %74
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !1479, metadata !717), !dbg !1626
  %106 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !1631
  tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !1465, metadata !717), !dbg !1494
  br label %129, !dbg !1632

; <label>:107:                                    ; preds = %83, %123
  %108 = phi i8 [ %127, %123 ], [ %80, %83 ], !dbg !1633
  %109 = phi i8* [ %126, %123 ], [ %79, %83 ]
  %110 = phi i32 [ %124, %123 ], [ 0, %83 ]
  %111 = phi i8 [ %125, %123 ], [ 1, %83 ]
  tail call void @llvm.dbg.value(metadata i8 %111, i64 0, metadata !1481, metadata !717), !dbg !1603
  tail call void @llvm.dbg.value(metadata i32 %110, i64 0, metadata !1479, metadata !717), !dbg !1626
  tail call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !1465, metadata !717), !dbg !1494
  %112 = sext i8 %108 to i32, !dbg !1633
  switch i32 %112, label %128 [
    i32 114, label %113
    i32 119, label %115
    i32 120, label %117
    i32 88, label %123
    i32 115, label %119
    i32 116, label %121
  ], !dbg !1636

; <label>:113:                                    ; preds = %107
  %114 = or i32 %110, 292, !dbg !1637
  tail call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !1479, metadata !717), !dbg !1626
  br label %123, !dbg !1639

; <label>:115:                                    ; preds = %107
  %116 = or i32 %110, 146, !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !1479, metadata !717), !dbg !1626
  br label %123, !dbg !1641

; <label>:117:                                    ; preds = %107
  %118 = or i32 %110, 73, !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !1479, metadata !717), !dbg !1626
  br label %123, !dbg !1643

; <label>:119:                                    ; preds = %107
  %120 = or i32 %110, 3072, !dbg !1644
  tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !1479, metadata !717), !dbg !1626
  br label %123, !dbg !1645

; <label>:121:                                    ; preds = %107
  %122 = or i32 %110, 512, !dbg !1646
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !1479, metadata !717), !dbg !1626
  br label %123, !dbg !1647

; <label>:123:                                    ; preds = %107, %113, %115, %117, %119, %121
  %124 = phi i32 [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %110, %107 ]
  %125 = phi i8 [ %111, %121 ], [ %111, %119 ], [ %111, %117 ], [ %111, %115 ], [ %111, %113 ], [ 2, %107 ]
  tail call void @llvm.dbg.value(metadata i8 %125, i64 0, metadata !1481, metadata !717), !dbg !1603
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !1479, metadata !717), !dbg !1626
  %126 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !1648
  tail call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !1465, metadata !717), !dbg !1494
  %127 = load i8, i8* %126, align 1, !tbaa !1176
  br label %107, !dbg !1650, !llvm.loop !1651

; <label>:128:                                    ; preds = %107
  br label %129, !dbg !1603

; <label>:129:                                    ; preds = %128, %100, %100, %105, %103, %101
  %130 = phi i8* [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %89, %100 ], [ %89, %100 ], [ %109, %128 ]
  %131 = phi i32 [ %77, %105 ], [ %77, %103 ], [ %77, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ %77, %128 ]
  %132 = phi i32 [ 7, %105 ], [ 56, %103 ], [ 448, %101 ], [ %92, %100 ], [ %92, %100 ], [ %110, %128 ]
  %133 = phi i32 [ 0, %105 ], [ 0, %103 ], [ 0, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ 0, %128 ]
  %134 = phi i8 [ 3, %105 ], [ 3, %103 ], [ 3, %101 ], [ 1, %100 ], [ 1, %100 ], [ %111, %128 ]
  tail call void @llvm.dbg.value(metadata i8 %134, i64 0, metadata !1481, metadata !717), !dbg !1603
  tail call void @llvm.dbg.value(metadata i32 %133, i64 0, metadata !1480, metadata !717), !dbg !1602
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !1479, metadata !717), !dbg !1626
  tail call void @llvm.dbg.value(metadata i32 %131, i64 0, metadata !1473, metadata !717), !dbg !1580
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1465, metadata !717), !dbg !1494
  %135 = add i64 %78, 1, !dbg !1654
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !1464, metadata !717), !dbg !1487
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 0, !dbg !1655
  store i8 %75, i8* %136, align 4, !dbg !1656, !tbaa !1530
  %137 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 1, !dbg !1657
  store i8 %134, i8* %137, align 1, !dbg !1658, !tbaa !1534
  %138 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 2, !dbg !1659
  store i32 %131, i32* %138, align 4, !dbg !1660, !tbaa !1537
  %139 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 3, !dbg !1661
  store i32 %132, i32* %139, align 4, !dbg !1662, !tbaa !1540
  %140 = icmp eq i32 %133, 0, !dbg !1663
  br i1 %140, label %141, label %145, !dbg !1663

; <label>:141:                                    ; preds = %129
  %142 = icmp eq i32 %131, 0, !dbg !1664
  %143 = select i1 %142, i32 -1, i32 %131, !dbg !1664
  %144 = and i32 %143, %132, !dbg !1664
  br label %145, !dbg !1664

; <label>:145:                                    ; preds = %129, %141
  %146 = phi i32 [ %133, %129 ], [ %144, %141 ], !dbg !1666
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 4, !dbg !1668
  store i32 %146, i32* %147, align 4, !dbg !1669, !tbaa !1543
  tail call void @llvm.dbg.value(metadata i64 %78, i64 0, metadata !1464, metadata !717), !dbg !1487
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1473, metadata !717), !dbg !1580
  tail call void @llvm.dbg.value(metadata i8* %89, i64 0, metadata !1465, metadata !717), !dbg !1494
  %148 = load i8, i8* %130, align 1, !dbg !1670, !tbaa !1176
  switch i8 %148, label %155 [
    i8 61, label %149
    i8 43, label %149
    i8 45, label %149
    i8 44, label %150
    i8 0, label %152
  ], !dbg !1671

; <label>:149:                                    ; preds = %145, %145, %145
  br label %74, !dbg !1487

; <label>:150:                                    ; preds = %145
  tail call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !1479, metadata !717), !dbg !1626
  tail call void @llvm.dbg.value(metadata i64 %135, i64 0, metadata !1464, metadata !717), !dbg !1487
  tail call void @llvm.dbg.value(metadata i8* %130, i64 0, metadata !1465, metadata !717), !dbg !1494
  %151 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !1672
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1465, metadata !717), !dbg !1494
  br label %58, !dbg !1674, !llvm.loop !1675

; <label>:152:                                    ; preds = %145
  %153 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %135, i32 1, !dbg !1678
  store i8 0, i8* %153, align 1, !dbg !1681, !tbaa !1534
  br label %159, !dbg !1682

; <label>:154:                                    ; preds = %84
  br label %157, !dbg !1683

; <label>:155:                                    ; preds = %145, %100, %98
  br label %157, !dbg !1683

; <label>:156:                                    ; preds = %61
  br label %157, !dbg !1683

; <label>:157:                                    ; preds = %156, %155, %154
  tail call void @free(i8* %56) #9, !dbg !1683
  br label %159, !dbg !1684

; <label>:158:                                    ; preds = %7
  br label %159, !dbg !1685

; <label>:159:                                    ; preds = %158, %23, %21, %157, %152
  %160 = phi %struct.mode_change* [ null, %157 ], [ %57, %152 ], [ %32, %23 ], [ null, %21 ], [ null, %158 ]
  ret %struct.mode_change* %160, !dbg !1685
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #6 !dbg !1686 {
  %2 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1688, metadata !717), !dbg !1711
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1712
  call void @llvm.lifetime.start(i64 144, i8* nonnull %3) #9, !dbg !1712
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1689, metadata !1389), !dbg !1713
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1714, metadata !717) #9, !dbg !1721
  tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1720, metadata !717) #9, !dbg !1721
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #9, !dbg !1724
  %5 = icmp eq i32 %4, 0, !dbg !1725
  br i1 %5, label %6, label %19, !dbg !1726

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3, !dbg !1727
  %8 = load i32, i32* %7, align 8, !dbg !1727, !tbaa !1405
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !1517, metadata !717) #9, !dbg !1728
  call void @llvm.dbg.value(metadata i32 4095, i64 0, metadata !1522, metadata !717) #9, !dbg !1730
  %9 = call noalias i8* @xmalloc(i64 32) #9, !dbg !1731
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1731
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, i64 0, metadata !1523, metadata !717) #9, !dbg !1732
  store i8 61, i8* %9, align 4, !dbg !1733, !tbaa !1530
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1734
  store i8 1, i8* %11, align 1, !dbg !1735, !tbaa !1534
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1736
  %13 = bitcast i8* %12 to i32*, !dbg !1736
  store i32 4095, i32* %13, align 4, !dbg !1737, !tbaa !1537
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1738
  %15 = bitcast i8* %14 to i32*, !dbg !1738
  store i32 %8, i32* %15, align 4, !dbg !1739, !tbaa !1540
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1740
  %17 = bitcast i8* %16 to i32*, !dbg !1740
  store i32 4095, i32* %17, align 4, !dbg !1741, !tbaa !1543
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1742
  store i8 0, i8* %18, align 1, !dbg !1743, !tbaa !1534
  br label %19, !dbg !1744

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %3) #9, !dbg !1745
  ret %struct.mode_change* %20, !dbg !1745
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #6 !dbg !1746 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1753, metadata !717), !dbg !1769
  tail call void @llvm.dbg.value(metadata i1 %1, i64 0, metadata !1754, metadata !1044), !dbg !1770
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1755, metadata !717), !dbg !1771
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1756, metadata !717), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1757, metadata !717), !dbg !1773
  %6 = and i32 %0, 4095, !dbg !1774
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1758, metadata !717), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1759, metadata !717), !dbg !1776
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %3, i64 0, metadata !1756, metadata !717), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1758, metadata !717), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1759, metadata !717), !dbg !1776
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1777
  %8 = load i8, i8* %7, align 1, !dbg !1777, !tbaa !1534
  %9 = icmp eq i8 %8, 0, !dbg !1779
  br i1 %9, label %83, label %10, !dbg !1780

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = xor i32 %11, -1
  %14 = zext i1 %1 to i32
  br label %15, !dbg !1780

; <label>:15:                                     ; preds = %10, %75
  %16 = phi i8 [ %8, %10 ], [ %80, %75 ]
  %17 = phi %struct.mode_change* [ %3, %10 ], [ %78, %75 ]
  %18 = phi i32 [ %6, %10 ], [ %77, %75 ]
  %19 = phi i32 [ 0, %10 ], [ %76, %75 ]
  %20 = sext i8 %16 to i32, !dbg !1782
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 2, !dbg !1783
  %22 = load i32, i32* %21, align 4, !dbg !1783, !tbaa !1537
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !1760, metadata !717), !dbg !1784
  %23 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 4, !dbg !1785
  %24 = load i32, i32* %23, align 4, !dbg !1785, !tbaa !1543
  %25 = xor i32 %24, -1, !dbg !1786
  %26 = and i32 %11, %25, !dbg !1787
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !1764, metadata !717), !dbg !1788
  %27 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 3, !dbg !1789
  %28 = load i32, i32* %27, align 4, !dbg !1789, !tbaa !1540
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1765, metadata !717), !dbg !1790
  switch i32 %20, label %49 [
    i32 2, label %43
    i32 3, label %29
  ], !dbg !1791

; <label>:29:                                     ; preds = %15
  %30 = and i32 %28, %18, !dbg !1792
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !1765, metadata !717), !dbg !1790
  %31 = and i32 %30, 292, !dbg !1794
  %32 = icmp ne i32 %31, 0, !dbg !1795
  %33 = select i1 %32, i32 292, i32 0, !dbg !1795
  %34 = and i32 %30, 146, !dbg !1796
  %35 = icmp ne i32 %34, 0, !dbg !1797
  %36 = select i1 %35, i32 146, i32 0, !dbg !1797
  %37 = and i32 %30, 73, !dbg !1798
  %38 = icmp ne i32 %37, 0, !dbg !1799
  %39 = select i1 %38, i32 73, i32 0, !dbg !1799
  %40 = or i32 %36, %30, !dbg !1800
  %41 = or i32 %40, %33, !dbg !1801
  %42 = or i32 %41, %39, !dbg !1802
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1765, metadata !717), !dbg !1790
  br label %49, !dbg !1803

; <label>:43:                                     ; preds = %15
  %44 = and i32 %18, 73, !dbg !1804
  %45 = or i32 %44, %14, !dbg !1806
  %46 = icmp eq i32 %45, 0, !dbg !1806
  %47 = or i32 %28, 73, !dbg !1807
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !1765, metadata !717), !dbg !1790
  %48 = select i1 %46, i32 %28, i32 %47, !dbg !1808
  br label %49, !dbg !1808

; <label>:49:                                     ; preds = %43, %15, %29
  %50 = phi i32 [ %28, %15 ], [ %42, %29 ], [ %48, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1765, metadata !717), !dbg !1790
  %51 = icmp ne i32 %22, 0, !dbg !1809
  %52 = select i1 %51, i32 %22, i32 %12, !dbg !1809
  %53 = or i32 %24, %13, !dbg !1810
  %54 = and i32 %52, %53, !dbg !1812
  %55 = and i32 %54, %50, !dbg !1813
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !1765, metadata !717), !dbg !1790
  %56 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 0, !dbg !1814
  %57 = load i8, i8* %56, align 4, !dbg !1814, !tbaa !1530
  %58 = sext i8 %57 to i32, !dbg !1815
  switch i32 %58, label %75 [
    i32 61, label %59
    i32 43, label %68
    i32 45, label %71
  ], !dbg !1816

; <label>:59:                                     ; preds = %49
  %60 = xor i32 %22, -1, !dbg !1817
  %61 = select i1 %51, i32 %60, i32 0, !dbg !1819
  %62 = or i32 %61, %26, !dbg !1820
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !1766, metadata !717), !dbg !1822
  %63 = and i32 %62, 4095, !dbg !1823
  %64 = xor i32 %63, 4095, !dbg !1823
  %65 = or i32 %64, %19, !dbg !1824
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !1759, metadata !717), !dbg !1776
  %66 = and i32 %62, %18, !dbg !1825
  %67 = or i32 %55, %66, !dbg !1826
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !1758, metadata !717), !dbg !1775
  br label %75

; <label>:68:                                     ; preds = %49
  %69 = or i32 %55, %19, !dbg !1827
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !1759, metadata !717), !dbg !1776
  %70 = or i32 %55, %18, !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !1758, metadata !717), !dbg !1775
  br label %75, !dbg !1829

; <label>:71:                                     ; preds = %49
  %72 = or i32 %55, %19, !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1759, metadata !717), !dbg !1776
  %73 = xor i32 %55, -1, !dbg !1831
  %74 = and i32 %18, %73, !dbg !1832
  tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !1758, metadata !717), !dbg !1775
  br label %75, !dbg !1833

; <label>:75:                                     ; preds = %49, %71, %68, %59
  %76 = phi i32 [ %19, %49 ], [ %72, %71 ], [ %69, %68 ], [ %65, %59 ]
  %77 = phi i32 [ %18, %49 ], [ %74, %71 ], [ %70, %68 ], [ %67, %59 ]
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1758, metadata !717), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1759, metadata !717), !dbg !1776
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 1, !dbg !1834
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %78, i64 0, metadata !1756, metadata !717), !dbg !1772
  tail call void @llvm.dbg.value(metadata %struct.mode_change* %78, i64 0, metadata !1756, metadata !717), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1758, metadata !717), !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !1759, metadata !717), !dbg !1776
  %79 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 1, i32 1, !dbg !1777
  %80 = load i8, i8* %79, align 1, !dbg !1777, !tbaa !1534
  %81 = icmp eq i8 %80, 0, !dbg !1779
  br i1 %81, label %82, label %15, !dbg !1780, !llvm.loop !1836

; <label>:82:                                     ; preds = %75
  br label %83, !dbg !1839

; <label>:83:                                     ; preds = %82, %5
  %84 = phi i32 [ 0, %5 ], [ %76, %82 ]
  %85 = phi i32 [ %6, %5 ], [ %77, %82 ]
  %86 = icmp eq i32* %4, null, !dbg !1839
  br i1 %86, label %88, label %87, !dbg !1841

; <label>:87:                                     ; preds = %83
  store i32 %84, i32* %4, align 4, !dbg !1842, !tbaa !872
  br label %88, !dbg !1843

; <label>:88:                                     ; preds = %83, %87
  ret i32 %85, !dbg !1844
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1845 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1847, metadata !717), !dbg !1850
  %2 = icmp eq i8* %0, null, !dbg !1851
  br i1 %2, label %3, label %6, !dbg !1853

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1854, !tbaa !725
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !1856
  tail call void @abort() #15, !dbg !1857
  unreachable, !dbg !1857

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1858
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1848, metadata !717), !dbg !1859
  %8 = icmp ne i8* %7, null, !dbg !1860
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1861
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1863
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1849, metadata !717), !dbg !1864
  %11 = ptrtoint i8* %10 to i64, !dbg !1865
  %12 = ptrtoint i8* %0 to i64, !dbg !1865
  %13 = sub i64 %11, %12, !dbg !1865
  %14 = icmp sgt i64 %13, 6, !dbg !1867
  br i1 %14, label %15, label %24, !dbg !1868

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1869
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.54, i64 0, i64 0), i64 7) #14, !dbg !1869
  %18 = icmp eq i32 %17, 0, !dbg !1871
  br i1 %18, label %19, label %24, !dbg !1872

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1847, metadata !717), !dbg !1850
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.55, i64 0, i64 0), i64 3) #14, !dbg !1873
  %21 = icmp eq i32 %20, 0, !dbg !1876
  br i1 %21, label %22, label %24, !dbg !1877

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1878
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1847, metadata !717), !dbg !1850
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1880, !tbaa !725
  br label %24, !dbg !1881

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1847, metadata !717), !dbg !1850
  store i8* %25, i8** @program_name, align 8, !dbg !1882, !tbaa !725
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1883, !tbaa !725
  ret void, !dbg !1884
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1885 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1890, metadata !717), !dbg !1893
  %2 = tail call i32* @__errno_location() #1, !dbg !1894
  %3 = load i32, i32* %2, align 4, !dbg !1894, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1891, metadata !717), !dbg !1895
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1896
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1897
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1897
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1899
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1899
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1892, metadata !717), !dbg !1900
  store i32 %3, i32* %2, align 4, !dbg !1901, !tbaa !872
  ret %struct.quoting_options* %8, !dbg !1902
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1903 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1909, metadata !717), !dbg !1910
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1911
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1911
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1912
  %5 = load i32, i32* %4, align 8, !dbg !1912, !tbaa !1914
  ret i32 %5, !dbg !1916
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1917 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1921, metadata !717), !dbg !1923
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1922, metadata !717), !dbg !1924
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1925
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1925
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1926
  store i32 %1, i32* %5, align 8, !dbg !1928, !tbaa !1914
  ret void, !dbg !1929
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1930 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1934, metadata !717), !dbg !1942
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1935, metadata !717), !dbg !1943
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1936, metadata !717), !dbg !1944
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1937, metadata !717), !dbg !1945
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1946
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1946
  %6 = lshr i8 %1, 5, !dbg !1947
  %7 = zext i8 %6 to i64, !dbg !1947
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1949
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1938, metadata !717), !dbg !1950
  %9 = and i8 %1, 31, !dbg !1951
  %10 = zext i8 %9 to i32, !dbg !1952
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1940, metadata !717), !dbg !1953
  %11 = load i32, i32* %8, align 4, !dbg !1954, !tbaa !872
  %12 = lshr i32 %11, %10, !dbg !1955
  %13 = and i32 %12, 1, !dbg !1956
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1941, metadata !717), !dbg !1957
  %14 = and i32 %2, 1, !dbg !1958
  %15 = xor i32 %13, %14, !dbg !1959
  %16 = shl i32 %15, %10, !dbg !1960
  %17 = xor i32 %16, %11, !dbg !1961
  store i32 %17, i32* %8, align 4, !dbg !1961, !tbaa !872
  ret i32 %13, !dbg !1962
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1963 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1967, metadata !717), !dbg !1970
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1968, metadata !717), !dbg !1971
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1967, metadata !717), !dbg !1970
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1974
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1967, metadata !717), !dbg !1970
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1975
  %6 = load i32, i32* %5, align 4, !dbg !1975, !tbaa !1976
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1969, metadata !717), !dbg !1977
  store i32 %1, i32* %5, align 4, !dbg !1978, !tbaa !1976
  ret i32 %6, !dbg !1979
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1980 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1984, metadata !717), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1985, metadata !717), !dbg !1988
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1986, metadata !717), !dbg !1989
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1990
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1984, metadata !717), !dbg !1987
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1992
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1984, metadata !717), !dbg !1987
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1993
  store i32 10, i32* %6, align 8, !dbg !1994, !tbaa !1914
  %7 = icmp ne i8* %1, null, !dbg !1995
  %8 = icmp ne i8* %2, null, !dbg !1997
  %9 = and i1 %7, %8, !dbg !1999
  br i1 %9, label %11, label %10, !dbg !1999

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2000
  unreachable, !dbg !2000

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2001
  store i8* %1, i8** %12, align 8, !dbg !2002, !tbaa !2003
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2004
  store i8* %2, i8** %13, align 8, !dbg !2005, !tbaa !2006
  ret void, !dbg !2007
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2008 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2012, metadata !717), !dbg !2020
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2013, metadata !717), !dbg !2021
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2014, metadata !717), !dbg !2022
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2015, metadata !717), !dbg !2023
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2016, metadata !717), !dbg !2024
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2025
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2025
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2017, metadata !717), !dbg !2026
  %8 = tail call i32* @__errno_location() #1, !dbg !2027
  %9 = load i32, i32* %8, align 4, !dbg !2027, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2018, metadata !717), !dbg !2028
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2029
  %11 = load i32, i32* %10, align 8, !dbg !2029, !tbaa !1914
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2030
  %13 = load i32, i32* %12, align 4, !dbg !2030, !tbaa !1976
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2031
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2032
  %16 = load i8*, i8** %15, align 8, !dbg !2032, !tbaa !2003
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2033
  %18 = load i8*, i8** %17, align 8, !dbg !2033, !tbaa !2006
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2034
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2019, metadata !717), !dbg !2035
  store i32 %9, i32* %8, align 4, !dbg !2036, !tbaa !872
  ret i64 %19, !dbg !2037
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2038 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.savewd*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2044, metadata !717), !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2045, metadata !717), !dbg !2108
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2046, metadata !717), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2047, metadata !717), !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2048, metadata !717), !dbg !2111
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2049, metadata !717), !dbg !2112
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2050, metadata !717), !dbg !2113
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2051, metadata !717), !dbg !2114
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2052, metadata !717), !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2054, metadata !717), !dbg !2116
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2055, metadata !717), !dbg !2117
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2056, metadata !717), !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2057, metadata !717), !dbg !2119
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2058, metadata !717), !dbg !2120
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !2121
  %14 = icmp eq i64 %13, 1, !dbg !2122
  %15 = lshr i32 %5, 1, !dbg !2123
  %16 = trunc i32 %15 to i8, !dbg !2123
  %17 = and i8 %16, 1, !dbg !2123
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2060, metadata !717), !dbg !2123
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2061, metadata !717), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2062, metadata !717), !dbg !2125
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2063, metadata !717), !dbg !2126
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2127

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2045, metadata !717), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2063, metadata !717), !dbg !2126
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2062, metadata !717), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2060, metadata !717), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2047, metadata !717), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2058, metadata !717), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2057, metadata !717), !dbg !2119
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2056, metadata !717), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2055, metadata !717), !dbg !2117
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2052, metadata !717), !dbg !2115
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2051, metadata !717), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2048, metadata !717), !dbg !2111
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
  ], !dbg !2128

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2048, metadata !717), !dbg !2111
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2060, metadata !717), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2060, metadata !717), !dbg !2123
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2048, metadata !717), !dbg !2111
  br label %95, !dbg !2129

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2060, metadata !717), !dbg !2123
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2048, metadata !717), !dbg !2111
  %43 = and i8 %36, 1, !dbg !2131
  %44 = icmp eq i8 %43, 0, !dbg !2131
  br i1 %44, label %45, label %95, !dbg !2129

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2133
  br i1 %46, label %95, label %47, !dbg !2137

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2139, !tbaa !1176
  br label %95, !dbg !2139

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.66, i64 0, i64 0), i32 %28), !dbg !2141
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2051, metadata !717), !dbg !2114
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), i32 %28), !dbg !2145
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2052, metadata !717), !dbg !2115
  br label %51, !dbg !2146

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2052, metadata !717), !dbg !2115
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2051, metadata !717), !dbg !2114
  %54 = and i8 %36, 1, !dbg !2147
  %55 = icmp eq i8 %54, 0, !dbg !2147
  br i1 %55, label %56, label %73, !dbg !2149

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2056, metadata !717), !dbg !2118
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2054, metadata !717), !dbg !2116
  %57 = load i8, i8* %52, align 1, !dbg !2150, !tbaa !1176
  %58 = icmp eq i8 %57, 0, !dbg !2154
  br i1 %58, label %73, label %59, !dbg !2154

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2156

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2156
  br i1 %64, label %65, label %67, !dbg !2160

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2162
  store i8 %61, i8* %66, align 1, !dbg !2162, !tbaa !1176
  br label %67, !dbg !2162

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2054, metadata !717), !dbg !2116
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2166
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2056, metadata !717), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2056, metadata !717), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2054, metadata !717), !dbg !2116
  %70 = load i8, i8* %69, align 1, !dbg !2150, !tbaa !1176
  %71 = icmp eq i8 %70, 0, !dbg !2154
  br i1 %71, label %72, label %60, !dbg !2154, !llvm.loop !2168

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2116

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2058, metadata !717), !dbg !2120
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2056, metadata !717), !dbg !2118
  %75 = call i64 @strlen(i8* %53) #14, !dbg !2171
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2057, metadata !717), !dbg !2119
  br label %95, !dbg !2172

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2058, metadata !717), !dbg !2120
  br label %77, !dbg !2173

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2058, metadata !717), !dbg !2120
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2060, metadata !717), !dbg !2123
  br label %79, !dbg !2174

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2060, metadata !717), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2058, metadata !717), !dbg !2120
  %82 = and i8 %81, 1, !dbg !2175
  %83 = icmp eq i8 %82, 0, !dbg !2175
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2058, metadata !717), !dbg !2120
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2177
  br label %85, !dbg !2177

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2060, metadata !717), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2058, metadata !717), !dbg !2120
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2048, metadata !717), !dbg !2111
  %88 = and i8 %87, 1, !dbg !2178
  %89 = icmp eq i8 %88, 0, !dbg !2178
  br i1 %89, label %90, label %95, !dbg !2180

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2181
  br i1 %91, label %95, label %92, !dbg !2185

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2187, !tbaa !1176
  br label %95, !dbg !2187

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2060, metadata !717), !dbg !2123
  br label %95, !dbg !2189

; <label>:94:                                     ; preds = %27
  call void @abort() #15, !dbg !2190
  unreachable, !dbg !2190

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2060, metadata !717), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2058, metadata !717), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2057, metadata !717), !dbg !2119
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2056, metadata !717), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2052, metadata !717), !dbg !2115
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2051, metadata !717), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2048, metadata !717), !dbg !2111
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2053, metadata !717), !dbg !2191
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
  br label %123, !dbg !2192

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2045, metadata !717), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2063, metadata !717), !dbg !2126
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2062, metadata !717), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2047, metadata !717), !dbg !2110
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2055, metadata !717), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2053, metadata !717), !dbg !2191
  %132 = icmp eq i64 %127, -1, !dbg !2193
  br i1 %132, label %135, label %133, !dbg !2195

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2196
  br i1 %134, label %597, label %139, !dbg !2198

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2200
  %137 = load i8, i8* %136, align 1, !dbg !2200, !tbaa !1176
  %138 = icmp eq i8 %137, 0, !dbg !2202
  br i1 %138, label %597, label %139, !dbg !2198

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2069, metadata !717), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2070, metadata !717), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2071, metadata !717), !dbg !2205
  br i1 %109, label %140, label %155, !dbg !2206

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2208
  %142 = and i1 %110, %132, !dbg !2210
  br i1 %142, label %143, label %145, !dbg !2210

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #14, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2047, metadata !717), !dbg !2110
  br label %145, !dbg !2212

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2047, metadata !717), !dbg !2110
  %147 = icmp ugt i64 %141, %146, !dbg !2214
  br i1 %147, label %155, label %148, !dbg !2216

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2217
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14, !dbg !2218
  %151 = icmp ne i32 %150, 0, !dbg !2219
  %152 = or i1 %151, %112, !dbg !2219
  %153 = xor i1 %151, true, !dbg !2219
  %154 = zext i1 %153 to i8, !dbg !2219
  br i1 %152, label %155, label %644, !dbg !2219

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2069, metadata !717), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2047, metadata !717), !dbg !2110
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2221
  %159 = load i8, i8* %158, align 1, !dbg !2221, !tbaa !1176
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2064, metadata !717), !dbg !2222
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
  ], !dbg !2223

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2224

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2225

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2070, metadata !717), !dbg !2204
  %163 = and i8 %128, 1, !dbg !2230
  %164 = icmp eq i8 %163, 0, !dbg !2230
  %165 = and i1 %114, %164, !dbg !2233
  br i1 %165, label %166, label %182, !dbg !2233

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2235
  br i1 %167, label %168, label %170, !dbg !2240

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2242
  store i8 39, i8* %169, align 1, !dbg !2242, !tbaa !1176
  br label %170, !dbg !2242

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2054, metadata !717), !dbg !2116
  %172 = icmp ult i64 %171, %131, !dbg !2246
  br i1 %172, label %173, label %175, !dbg !2250

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2252
  store i8 36, i8* %174, align 1, !dbg !2252, !tbaa !1176
  br label %175, !dbg !2252

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2054, metadata !717), !dbg !2116
  %177 = icmp ult i64 %176, %131, !dbg !2256
  br i1 %177, label %178, label %180, !dbg !2260

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2262
  store i8 39, i8* %179, align 1, !dbg !2262, !tbaa !1176
  br label %180, !dbg !2262

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2061, metadata !717), !dbg !2124
  br label %182, !dbg !2266

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2054, metadata !717), !dbg !2116
  %185 = icmp ult i64 %183, %131, !dbg !2268
  br i1 %185, label %186, label %188, !dbg !2272

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2274
  store i8 92, i8* %187, align 1, !dbg !2274, !tbaa !1176
  br label %188, !dbg !2274

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2054, metadata !717), !dbg !2116
  br i1 %106, label %190, label %476, !dbg !2278

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2280
  %192 = icmp ult i64 %191, %156, !dbg !2282
  br i1 %192, label %193, label %476, !dbg !2283

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2284
  %195 = load i8, i8* %194, align 1, !dbg !2284, !tbaa !1176
  %196 = add i8 %195, -48, !dbg !2286
  %197 = icmp ult i8 %196, 10, !dbg !2286
  br i1 %197, label %198, label %476, !dbg !2286

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2287
  br i1 %199, label %200, label %202, !dbg !2292

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2294
  store i8 48, i8* %201, align 1, !dbg !2294, !tbaa !1176
  br label %202, !dbg !2294

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2054, metadata !717), !dbg !2116
  %204 = icmp ult i64 %203, %131, !dbg !2298
  br i1 %204, label %205, label %207, !dbg !2302

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2304
  store i8 48, i8* %206, align 1, !dbg !2304, !tbaa !1176
  br label %207, !dbg !2304

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2054, metadata !717), !dbg !2116
  br label %476, !dbg !2308

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2309

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2310

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2311

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2313

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2315
  %215 = icmp ult i64 %214, %156, !dbg !2317
  br i1 %215, label %216, label %476, !dbg !2318

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2319
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2321
  %219 = load i8, i8* %218, align 1, !dbg !2321, !tbaa !1176
  %220 = icmp eq i8 %219, 63, !dbg !2322
  br i1 %220, label %221, label %476, !dbg !2323

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2325
  %223 = load i8, i8* %222, align 1, !dbg !2325, !tbaa !1176
  %224 = sext i8 %223 to i32, !dbg !2325
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
  ], !dbg !2326

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2327

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2064, metadata !717), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2053, metadata !717), !dbg !2191
  %227 = icmp ult i64 %125, %131, !dbg !2329
  br i1 %227, label %228, label %230, !dbg !2333

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2335
  store i8 63, i8* %229, align 1, !dbg !2335, !tbaa !1176
  br label %230, !dbg !2335

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2054, metadata !717), !dbg !2116
  %232 = icmp ult i64 %231, %131, !dbg !2339
  br i1 %232, label %233, label %235, !dbg !2343

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2345
  store i8 34, i8* %234, align 1, !dbg !2345, !tbaa !1176
  br label %235, !dbg !2345

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2054, metadata !717), !dbg !2116
  %237 = icmp ult i64 %236, %131, !dbg !2349
  br i1 %237, label %238, label %240, !dbg !2353

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2355
  store i8 34, i8* %239, align 1, !dbg !2355, !tbaa !1176
  br label %240, !dbg !2355

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2054, metadata !717), !dbg !2116
  %242 = icmp ult i64 %241, %131, !dbg !2359
  br i1 %242, label %243, label %245, !dbg !2363

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2365
  store i8 63, i8* %244, align 1, !dbg !2365, !tbaa !1176
  br label %245, !dbg !2365

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2054, metadata !717), !dbg !2116
  br label %476, !dbg !2369

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2068, metadata !717), !dbg !2370
  br label %257, !dbg !2371

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2068, metadata !717), !dbg !2370
  br label %257, !dbg !2372

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2068, metadata !717), !dbg !2370
  br label %255, !dbg !2373

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2068, metadata !717), !dbg !2370
  br label %255, !dbg !2374

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2068, metadata !717), !dbg !2370
  br label %257, !dbg !2375

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2068, metadata !717), !dbg !2370
  br i1 %114, label %253, label %254, !dbg !2376

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2377

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2380

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2068, metadata !717), !dbg !2370
  br i1 %118, label %257, label %644, !dbg !2382

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2068, metadata !717), !dbg !2370
  br i1 %105, label %503, label %476, !dbg !2384

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2385
  br i1 %260, label %261, label %266, !dbg !2387

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2388, !tbaa !1176
  %263 = icmp ne i8 %262, 0, !dbg !2390
  %264 = icmp ne i64 %124, 0, !dbg !2391
  %265 = or i1 %264, %263, !dbg !2393
  br i1 %265, label %476, label %272, !dbg !2393

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2394
  %268 = icmp ne i64 %124, 0, !dbg !2391
  %269 = or i1 %268, %267, !dbg !2396
  br i1 %269, label %476, label %272, !dbg !2396

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2391
  br i1 %271, label %272, label %476, !dbg !2398

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2071, metadata !717), !dbg !2205
  br label %273, !dbg !2399

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2071, metadata !717), !dbg !2205
  br i1 %118, label %476, label %644, !dbg !2400

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2062, metadata !717), !dbg !2125
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2071, metadata !717), !dbg !2205
  br i1 %114, label %276, label %476, !dbg !2402

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2403

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2406
  %279 = icmp ne i64 %126, 0, !dbg !2408
  %280 = or i1 %279, %278, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2055, metadata !717), !dbg !2117
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2045, metadata !717), !dbg !2108
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2410
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2045, metadata !717), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2055, metadata !717), !dbg !2117
  %283 = icmp ult i64 %125, %282, !dbg !2411
  br i1 %283, label %284, label %286, !dbg !2415

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2417
  store i8 39, i8* %285, align 1, !dbg !2417, !tbaa !1176
  br label %286, !dbg !2417

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2419
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2054, metadata !717), !dbg !2116
  %288 = icmp ult i64 %287, %282, !dbg !2421
  br i1 %288, label %289, label %291, !dbg !2425

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2427
  store i8 92, i8* %290, align 1, !dbg !2427, !tbaa !1176
  br label %291, !dbg !2427

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2054, metadata !717), !dbg !2116
  %293 = icmp ult i64 %292, %282, !dbg !2431
  br i1 %293, label %294, label %296, !dbg !2435

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2437
  store i8 39, i8* %295, align 1, !dbg !2437, !tbaa !1176
  br label %296, !dbg !2437

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2061, metadata !717), !dbg !2124
  br label %476, !dbg !2441

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2442

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2072, metadata !717), !dbg !2443
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2444
  %301 = load i16*, i16** %300, align 8, !dbg !2444, !tbaa !725
  %302 = zext i8 %159 to i64, !dbg !2444
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2444
  %304 = load i16, i16* %303, align 2, !dbg !2444, !tbaa !2446
  %305 = lshr i16 %304, 14, !dbg !2447
  %306 = trunc i16 %305 to i8, !dbg !2447
  %307 = and i8 %306, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2075, metadata !717), !dbg !2448
  br label %368, !dbg !2449

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9, !dbg !2450
  store i64 0, i64* %10, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2072, metadata !717), !dbg !2443
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2075, metadata !717), !dbg !2448
  %309 = icmp eq i64 %156, -1, !dbg !2452
  br i1 %309, label %310, label %312, !dbg !2454, !llvm.loop !2455

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2047, metadata !717), !dbg !2110
  br label %312, !dbg !2459, !llvm.loop !2455

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2448

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2075, metadata !717), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2072, metadata !717), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2047, metadata !717), !dbg !2110
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9, !dbg !2460
  %317 = add i64 %315, %124, !dbg !2461
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2462
  %319 = sub i64 %313, %317, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.savewd* %11, i64 0, metadata !2076, metadata !1389), !dbg !2464
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2093, metadata !1389), !dbg !2465
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.savewd* nonnull %11) #9, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2096, metadata !717), !dbg !2467
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2468

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2072, metadata !717), !dbg !2443
  %322 = icmp ugt i64 %313, %317, !dbg !2469
  br i1 %322, label %323, label %351, !dbg !2472

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2473

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2473
  %328 = load i8, i8* %327, align 1, !dbg !2473, !tbaa !1176
  %329 = icmp eq i8 %328, 0, !dbg !2475
  br i1 %329, label %348, label %330, !dbg !2476

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2072, metadata !717), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2072, metadata !717), !dbg !2443
  %332 = add i64 %331, %124, !dbg !2479
  %333 = icmp ult i64 %332, %313, !dbg !2469
  br i1 %333, label %324, label %348, !dbg !2472, !llvm.loop !2480

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2482
  %336 = and i1 %116, %335, !dbg !2486
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2097, metadata !717), !dbg !2487
  br i1 %336, label %337, label %355, !dbg !2486

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2488

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2488
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2489
  %342 = load i8, i8* %341, align 1, !dbg !2489, !tbaa !1176
  %343 = sext i8 %342 to i32, !dbg !2489
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2490

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2097, metadata !717), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2097, metadata !717), !dbg !2487
  %346 = icmp ult i64 %345, %320, !dbg !2482
  br i1 %346, label %338, label %354, !dbg !2493, !llvm.loop !2495

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2448

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2448

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2448

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2075, metadata !717), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2072, metadata !717), !dbg !2443
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !2498
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2499

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2499, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2093, metadata !717), !dbg !2465
  %357 = call i32 @iswprint(i32 %356) #9, !dbg !2501
  %358 = icmp eq i32 %357, 0, !dbg !2501
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2075, metadata !717), !dbg !2448
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2502
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2075, metadata !717), !dbg !2448
  %360 = add i64 %320, %315, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2072, metadata !717), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2075, metadata !717), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2072, metadata !717), !dbg !2443
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !2498
  call void @llvm.dbg.value(metadata %struct.savewd* %11, i64 0, metadata !2076, metadata !1389), !dbg !2464
  %361 = call i32 @mbsinit(%struct.savewd* nonnull %11) #14, !dbg !2504
  %362 = icmp eq i32 %361, 0, !dbg !2505
  br i1 %362, label %314, label %363, !dbg !2506, !llvm.loop !2455

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2508

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !2508
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2075, metadata !717), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2072, metadata !717), !dbg !2443
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9, !dbg !2498
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9, !dbg !2508
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2075, metadata !717), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2072, metadata !717), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2047, metadata !717), !dbg !2110
  %372 = and i8 %371, 1, !dbg !2509
  %373 = icmp ne i8 %372, 0, !dbg !2509
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2071, metadata !717), !dbg !2205
  %374 = icmp ult i64 %370, 2, !dbg !2510
  %375 = or i1 %373, %113, !dbg !2511
  %376 = and i1 %374, %375, !dbg !2513
  br i1 %376, label %476, label %377, !dbg !2513

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2104, metadata !717), !dbg !2515
  br label %379, !dbg !2516

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2070, metadata !717), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2069, metadata !717), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2064, metadata !717), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2053, metadata !717), !dbg !2191
  br i1 %375, label %432, label %386, !dbg !2517

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2522

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2070, metadata !717), !dbg !2204
  %388 = and i8 %382, 1, !dbg !2526
  %389 = icmp eq i8 %388, 0, !dbg !2526
  %390 = and i1 %114, %389, !dbg !2529
  br i1 %390, label %391, label %407, !dbg !2529

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2531
  br i1 %392, label %393, label %395, !dbg !2536

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2538
  store i8 39, i8* %394, align 1, !dbg !2538, !tbaa !1176
  br label %395, !dbg !2538

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2054, metadata !717), !dbg !2116
  %397 = icmp ult i64 %396, %131, !dbg !2542
  br i1 %397, label %398, label %400, !dbg !2546

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2548
  store i8 36, i8* %399, align 1, !dbg !2548, !tbaa !1176
  br label %400, !dbg !2548

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2054, metadata !717), !dbg !2116
  %402 = icmp ult i64 %401, %131, !dbg !2552
  br i1 %402, label %403, label %405, !dbg !2556

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2558
  store i8 39, i8* %404, align 1, !dbg !2558, !tbaa !1176
  br label %405, !dbg !2558

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2061, metadata !717), !dbg !2124
  br label %407, !dbg !2562

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2054, metadata !717), !dbg !2116
  %410 = icmp ult i64 %408, %131, !dbg !2564
  br i1 %410, label %411, label %413, !dbg !2568

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2570
  store i8 92, i8* %412, align 1, !dbg !2570, !tbaa !1176
  br label %413, !dbg !2570

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2054, metadata !717), !dbg !2116
  %415 = icmp ult i64 %414, %131, !dbg !2574
  br i1 %415, label %416, label %420, !dbg !2578

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2580
  %418 = or i8 %417, 48, !dbg !2580
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2580
  store i8 %418, i8* %419, align 1, !dbg !2580, !tbaa !1176
  br label %420, !dbg !2580

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2054, metadata !717), !dbg !2116
  %422 = icmp ult i64 %421, %131, !dbg !2584
  br i1 %422, label %423, label %428, !dbg !2588

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2590
  %425 = and i8 %424, 7, !dbg !2590
  %426 = or i8 %425, 48, !dbg !2590
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2590
  store i8 %426, i8* %427, align 1, !dbg !2590, !tbaa !1176
  br label %428, !dbg !2590

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2054, metadata !717), !dbg !2116
  %430 = and i8 %383, 7, !dbg !2594
  %431 = or i8 %430, 48, !dbg !2595
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2064, metadata !717), !dbg !2222
  br label %441, !dbg !2596

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2597
  %434 = icmp eq i8 %433, 0, !dbg !2597
  br i1 %434, label %441, label %435, !dbg !2599

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2600
  br i1 %436, label %437, label %439, !dbg !2605

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2607
  store i8 92, i8* %438, align 1, !dbg !2607, !tbaa !1176
  br label %439, !dbg !2607

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2069, metadata !717), !dbg !2203
  br label %441, !dbg !2611

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2070, metadata !717), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2069, metadata !717), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2064, metadata !717), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2054, metadata !717), !dbg !2116
  %447 = add i64 %380, 1, !dbg !2612
  %448 = icmp ugt i64 %378, %447, !dbg !2614
  br i1 %448, label %449, label %541, !dbg !2615

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2616
  %451 = icmp ne i8 %450, 0, !dbg !2616
  %452 = and i8 %446, 1, !dbg !2620
  %453 = icmp eq i8 %452, 0, !dbg !2620
  %454 = and i1 %451, %453, !dbg !2616
  br i1 %454, label %455, label %466, !dbg !2616

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2622
  br i1 %456, label %457, label %459, !dbg !2627

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2629
  store i8 39, i8* %458, align 1, !dbg !2629, !tbaa !1176
  br label %459, !dbg !2629

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2054, metadata !717), !dbg !2116
  %461 = icmp ult i64 %460, %131, !dbg !2633
  br i1 %461, label %462, label %464, !dbg !2637

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2639
  store i8 39, i8* %463, align 1, !dbg !2639, !tbaa !1176
  br label %464, !dbg !2639

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2061, metadata !717), !dbg !2124
  br label %466, !dbg !2643

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2054, metadata !717), !dbg !2116
  %469 = icmp ult i64 %467, %131, !dbg !2645
  br i1 %469, label %470, label %472, !dbg !2649

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2651
  store i8 %444, i8* %471, align 1, !dbg !2651, !tbaa !1176
  br label %472, !dbg !2651

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2653
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2053, metadata !717), !dbg !2191
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2655
  %475 = load i8, i8* %474, align 1, !dbg !2655, !tbaa !1176
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2064, metadata !717), !dbg !2222
  br label %379, !dbg !2656, !llvm.loop !2658

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2045, metadata !717), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2071, metadata !717), !dbg !2205
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2070, metadata !717), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2069, metadata !717), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2064, metadata !717), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2062, metadata !717), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2047, metadata !717), !dbg !2110
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2055, metadata !717), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2053, metadata !717), !dbg !2191
  br i1 %107, label %488, label %487, !dbg !2661

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2663

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2664

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2665
  %491 = zext i8 %490 to i64, !dbg !2665
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2667
  %493 = load i32, i32* %492, align 4, !dbg !2667, !tbaa !872
  %494 = and i8 %483, 31, !dbg !2668
  %495 = zext i8 %494 to i32, !dbg !2669
  %496 = shl i32 1, %495, !dbg !2670
  %497 = and i32 %493, %496, !dbg !2670
  %498 = icmp eq i32 %497, 0, !dbg !2670
  %499 = icmp eq i8 %157, 0, !dbg !2671
  %500 = and i1 %499, %498, !dbg !2672
  br i1 %500, label %542, label %503, !dbg !2672

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2671
  br i1 %502, label %542, label %503, !dbg !2673

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2045, metadata !717), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2071, metadata !717), !dbg !2205
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2064, metadata !717), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2062, metadata !717), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2047, metadata !717), !dbg !2110
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2055, metadata !717), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2053, metadata !717), !dbg !2191
  br i1 %112, label %513, label %644, !dbg !2675

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2070, metadata !717), !dbg !2204
  %514 = and i8 %508, 1, !dbg !2678
  %515 = icmp eq i8 %514, 0, !dbg !2678
  %516 = and i1 %114, %515, !dbg !2681
  br i1 %516, label %517, label %533, !dbg !2681

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2683
  br i1 %518, label %519, label %521, !dbg !2688

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2690
  store i8 39, i8* %520, align 1, !dbg !2690, !tbaa !1176
  br label %521, !dbg !2690

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2054, metadata !717), !dbg !2116
  %523 = icmp ult i64 %522, %512, !dbg !2694
  br i1 %523, label %524, label %526, !dbg !2698

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2700
  store i8 36, i8* %525, align 1, !dbg !2700, !tbaa !1176
  br label %526, !dbg !2700

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2702
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2054, metadata !717), !dbg !2116
  %528 = icmp ult i64 %527, %512, !dbg !2704
  br i1 %528, label %529, label %531, !dbg !2708

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2710
  store i8 39, i8* %530, align 1, !dbg !2710, !tbaa !1176
  br label %531, !dbg !2710

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2061, metadata !717), !dbg !2124
  br label %533, !dbg !2714

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2054, metadata !717), !dbg !2116
  %536 = icmp ult i64 %534, %512, !dbg !2716
  br i1 %536, label %537, label %539, !dbg !2720

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2722
  store i8 92, i8* %538, align 1, !dbg !2722, !tbaa !1176
  br label %539, !dbg !2722

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2045, metadata !717), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2071, metadata !717), !dbg !2205
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2070, metadata !717), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2064, metadata !717), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2062, metadata !717), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2047, metadata !717), !dbg !2110
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2055, metadata !717), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2053, metadata !717), !dbg !2191
  br label %569, !dbg !2726

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2108

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2045, metadata !717), !dbg !2108
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2071, metadata !717), !dbg !2205
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2070, metadata !717), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2064, metadata !717), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2062, metadata !717), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2047, metadata !717), !dbg !2110
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2055, metadata !717), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2053, metadata !717), !dbg !2191
  %553 = and i8 %547, 1, !dbg !2726
  %554 = icmp ne i8 %553, 0, !dbg !2726
  %555 = and i8 %550, 1, !dbg !2730
  %556 = icmp eq i8 %555, 0, !dbg !2730
  %557 = and i1 %554, %556, !dbg !2726
  br i1 %557, label %558, label %569, !dbg !2726

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2732
  br i1 %559, label %560, label %562, !dbg !2737

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2739
  store i8 39, i8* %561, align 1, !dbg !2739, !tbaa !1176
  br label %562, !dbg !2739

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2054, metadata !717), !dbg !2116
  %564 = icmp ult i64 %563, %552, !dbg !2743
  br i1 %564, label %565, label %567, !dbg !2747

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2749
  store i8 39, i8* %566, align 1, !dbg !2749, !tbaa !1176
  br label %567, !dbg !2749

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2054, metadata !717), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2061, metadata !717), !dbg !2124
  br label %569, !dbg !2753

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2061, metadata !717), !dbg !2124
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2054, metadata !717), !dbg !2116
  %579 = icmp ult i64 %577, %570, !dbg !2755
  br i1 %579, label %580, label %582, !dbg !2759

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2761
  store i8 %572, i8* %581, align 1, !dbg !2761, !tbaa !1176
  br label %582, !dbg !2761

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2054, metadata !717), !dbg !2116
  %584 = and i8 %571, 1, !dbg !2765
  %585 = icmp eq i8 %584, 0, !dbg !2765
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2063, metadata !717), !dbg !2126
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2767
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2063, metadata !717), !dbg !2126
  br label %587, !dbg !2768

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2769
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2053, metadata !717), !dbg !2191
  br label %123, !dbg !2771, !llvm.loop !2772

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2775
  %600 = and i1 %114, %599, !dbg !2777
  %601 = xor i1 %600, true, !dbg !2777
  %602 = or i1 %112, %601, !dbg !2777
  br i1 %602, label %603, label %648, !dbg !2777

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2778
  %605 = xor i1 %604, true, !dbg !2778
  %606 = and i8 %129, 1, !dbg !2780
  %607 = icmp eq i8 %606, 0, !dbg !2780
  %608 = or i1 %607, %605, !dbg !2778
  br i1 %608, label %618, label %609, !dbg !2778

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2782
  %611 = icmp eq i8 %610, 0, !dbg !2782
  br i1 %611, label %614, label %612, !dbg !2785

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2786
  br label %659, !dbg !2787

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2788
  %616 = icmp ne i64 %126, 0, !dbg !2790
  %617 = and i1 %616, %615, !dbg !2792
  br i1 %617, label %27, label %618, !dbg !2792

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2793
  %620 = and i1 %619, %112, !dbg !2795
  br i1 %620, label %621, label %638, !dbg !2795

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2056, metadata !717), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2054, metadata !717), !dbg !2116
  %622 = load i8, i8* %100, align 1, !dbg !2796, !tbaa !1176
  %623 = icmp eq i8 %622, 0, !dbg !2800
  br i1 %623, label %638, label %624, !dbg !2800

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2802

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2802
  br i1 %629, label %630, label %632, !dbg !2806

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2808
  store i8 %626, i8* %631, align 1, !dbg !2808, !tbaa !1176
  br label %632, !dbg !2808

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2054, metadata !717), !dbg !2116
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2812
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2056, metadata !717), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2056, metadata !717), !dbg !2118
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2054, metadata !717), !dbg !2116
  %635 = load i8, i8* %634, align 1, !dbg !2796, !tbaa !1176
  %636 = icmp eq i8 %635, 0, !dbg !2800
  br i1 %636, label %637, label %625, !dbg !2800, !llvm.loop !2814

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2116

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2054, metadata !717), !dbg !2116
  %640 = icmp ult i64 %639, %131, !dbg !2817
  br i1 %640, label %641, label %659, !dbg !2819

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2820
  store i8 0, i8* %642, align 1, !dbg !2821, !tbaa !1176
  br label %659, !dbg !2820

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2108

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2108

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2108

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2045, metadata !717), !dbg !2108
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2047, metadata !717), !dbg !2110
  %653 = icmp ne i32 %650, 2, !dbg !2822
  %654 = icmp eq i8 %104, 0, !dbg !2824
  %655 = or i1 %653, %654, !dbg !2826
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2048, metadata !717), !dbg !2111
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2048, metadata !717), !dbg !2111
  %657 = and i32 %5, -3, !dbg !2827
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2828
  br label %659, !dbg !2829

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2830
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2831 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2835, metadata !717), !dbg !2839
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2836, metadata !717), !dbg !2840
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !2841
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2837, metadata !717), !dbg !2842
  %4 = icmp eq i8* %3, %0, !dbg !2843
  br i1 %4, label %5, label %75, !dbg !2845

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !2846
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2838, metadata !717), !dbg !2847
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2848, metadata !717), !dbg !2864
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2862, metadata !717), !dbg !2867
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2863, metadata !717), !dbg !2868
  %7 = load i8, i8* %6, align 1, !tbaa !1176
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2869
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2869

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2872, metadata !717), !dbg !2886
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2884, metadata !717), !dbg !2890
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2885, metadata !717), !dbg !2891
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !1176
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2892
  %15 = icmp eq i32 %14, 84, !dbg !2892
  br i1 %15, label %16, label %72, !dbg !2892

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2895, metadata !717), !dbg !2908
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2906, metadata !717), !dbg !2912
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2907, metadata !717), !dbg !2913
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !1176
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2914
  %21 = icmp eq i32 %20, 70, !dbg !2914
  br i1 %21, label %22, label %72, !dbg !2914

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2917, metadata !717), !dbg !2929
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2927, metadata !717), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2928, metadata !717), !dbg !2934
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !1176
  %25 = icmp eq i8 %24, 45, !dbg !2935
  br i1 %25, label %26, label %72, !dbg !2938

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2940, metadata !717), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2949, metadata !717), !dbg !2955
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2950, metadata !717), !dbg !2956
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !1176
  %29 = icmp eq i8 %28, 56, !dbg !2957
  br i1 %29, label %30, label %72, !dbg !2960

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2962, metadata !717), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2970, metadata !717), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2971, metadata !717), !dbg !2977
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !1176
  %33 = icmp eq i8 %32, 0, !dbg !2978
  br i1 %33, label %34, label %72, !dbg !2981

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2983, !tbaa !1176
  %36 = icmp eq i8 %35, 96, !dbg !2984
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.70, i64 0, i64 0), !dbg !2983
  br label %75, !dbg !2985

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2872, metadata !717), !dbg !2986
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2884, metadata !717), !dbg !2990
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2885, metadata !717), !dbg !2991
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !1176
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2992
  %43 = icmp eq i32 %42, 66, !dbg !2992
  br i1 %43, label %44, label %72, !dbg !2992

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2895, metadata !717), !dbg !2993
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2906, metadata !717), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2907, metadata !717), !dbg !2996
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !1176
  %47 = icmp eq i8 %46, 49, !dbg !2997
  br i1 %47, label %48, label %72, !dbg !2999

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2917, metadata !717), !dbg !3001
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2927, metadata !717), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2928, metadata !717), !dbg !3004
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !1176
  %51 = icmp eq i8 %50, 56, !dbg !3005
  br i1 %51, label %52, label %72, !dbg !3006

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2940, metadata !717), !dbg !3007
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2949, metadata !717), !dbg !3009
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2950, metadata !717), !dbg !3010
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !1176
  %55 = icmp eq i8 %54, 48, !dbg !3011
  br i1 %55, label %56, label %72, !dbg !3012

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2962, metadata !717), !dbg !3013
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2970, metadata !717), !dbg !3015
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2971, metadata !717), !dbg !3016
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !1176
  %59 = icmp eq i8 %58, 51, !dbg !3017
  br i1 %59, label %60, label %72, !dbg !3018

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3019, metadata !717), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3026, metadata !717), !dbg !3032
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3027, metadata !717), !dbg !3033
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !1176
  %63 = icmp eq i8 %62, 48, !dbg !3034
  br i1 %63, label %64, label %72, !dbg !3037

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3039, metadata !717), !dbg !3047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3045, metadata !717), !dbg !3051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3046, metadata !717), !dbg !3052
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !1176
  %67 = icmp eq i8 %66, 0, !dbg !3053
  br i1 %67, label %68, label %72, !dbg !3056

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3057, !tbaa !1176
  %70 = icmp eq i8 %69, 96, !dbg !3058
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.71, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.72, i64 0, i64 0), !dbg !3057
  br label %75, !dbg !3059

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3060
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.67, i64 0, i64 0), !dbg !3061
  br label %75, !dbg !3062

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3063
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
declare i32 @mbsinit(%struct.savewd*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3064 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3068, metadata !717), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3069, metadata !717), !dbg !3072
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3070, metadata !717), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3074, metadata !717) #9, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3079, metadata !717) #9, !dbg !3089
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3080, metadata !717) #9, !dbg !3090
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3081, metadata !717) #9, !dbg !3091
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3092
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3092
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3082, metadata !717) #9, !dbg !3093
  %6 = tail call i32* @__errno_location() #1, !dbg !3094
  %7 = load i32, i32* %6, align 4, !dbg !3094, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3083, metadata !717) #9, !dbg !3095
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3096
  %9 = load i32, i32* %8, align 4, !dbg !3096, !tbaa !1976
  %10 = or i32 %9, 1, !dbg !3097
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3084, metadata !717) #9, !dbg !3098
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3099
  %12 = load i32, i32* %11, align 8, !dbg !3099, !tbaa !1914
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3100
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3101
  %15 = load i8*, i8** %14, align 8, !dbg !3101, !tbaa !2003
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3102
  %17 = load i8*, i8** %16, align 8, !dbg !3102, !tbaa !2006
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9, !dbg !3103
  %19 = add i64 %18, 1, !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3085, metadata !717) #9, !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3106, metadata !717) #9, !dbg !3111
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !3113
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3086, metadata !717) #9, !dbg !3114
  %21 = load i32, i32* %11, align 8, !dbg !3115, !tbaa !1914
  %22 = load i8*, i8** %14, align 8, !dbg !3116, !tbaa !2003
  %23 = load i8*, i8** %16, align 8, !dbg !3117, !tbaa !2006
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9, !dbg !3118
  store i32 %7, i32* %6, align 4, !dbg !3119, !tbaa !872
  ret i8* %20, !dbg !3120
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3075 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3074, metadata !717), !dbg !3121
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3079, metadata !717), !dbg !3122
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3080, metadata !717), !dbg !3123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3081, metadata !717), !dbg !3124
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3125
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3125
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3082, metadata !717), !dbg !3126
  %7 = tail call i32* @__errno_location() #1, !dbg !3127
  %8 = load i32, i32* %7, align 4, !dbg !3127, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3083, metadata !717), !dbg !3128
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3129
  %10 = load i32, i32* %9, align 4, !dbg !3129, !tbaa !1976
  %11 = icmp ne i64* %2, null, !dbg !3130
  %12 = xor i1 %11, true, !dbg !3130
  %13 = zext i1 %12 to i32, !dbg !3130
  %14 = or i32 %10, %13, !dbg !3131
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3084, metadata !717), !dbg !3132
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3133
  %16 = load i32, i32* %15, align 8, !dbg !3133, !tbaa !1914
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3134
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3135
  %19 = load i8*, i8** %18, align 8, !dbg !3135, !tbaa !2003
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3136
  %21 = load i8*, i8** %20, align 8, !dbg !3136, !tbaa !2006
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3137
  %23 = add i64 %22, 1, !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3085, metadata !717), !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3106, metadata !717) #9, !dbg !3140
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !3142
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3086, metadata !717), !dbg !3143
  %25 = load i32, i32* %15, align 8, !dbg !3144, !tbaa !1914
  %26 = load i8*, i8** %18, align 8, !dbg !3145, !tbaa !2003
  %27 = load i8*, i8** %20, align 8, !dbg !3146, !tbaa !2006
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3147
  store i32 %8, i32* %7, align 4, !dbg !3148, !tbaa !872
  br i1 %11, label %29, label %30, !dbg !3149

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3150, !tbaa !3152
  br label %30, !dbg !3153

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3155 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3159, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3157, metadata !717), !dbg !3160
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3158, metadata !717), !dbg !3161
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3158, metadata !717), !dbg !3161
  %2 = load i32, i32* @nslots, align 4, !dbg !3162, !tbaa !872
  %3 = icmp sgt i32 %2, 1, !dbg !3166
  br i1 %3, label %4, label %14, !dbg !3167

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3169

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3169
  %8 = load i8*, i8** %7, align 8, !dbg !3169, !tbaa !3170
  tail call void @free(i8* %8) #9, !dbg !3172
  %9 = add nuw i64 %6, 1, !dbg !3173
  %10 = load i32, i32* @nslots, align 4, !dbg !3162, !tbaa !872
  %11 = sext i32 %10 to i64, !dbg !3166
  %12 = icmp slt i64 %9, %11, !dbg !3166
  br i1 %12, label %5, label %13, !dbg !3167, !llvm.loop !3175

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3178

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3178
  %16 = load i8*, i8** %15, align 8, !dbg !3178, !tbaa !3170
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3180
  br i1 %17, label %19, label %18, !dbg !3181

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #9, !dbg !3182
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3184, !tbaa !3185
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3186, !tbaa !3170
  br label %19, !dbg !3187

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3188
  br i1 %20, label %23, label %21, !dbg !3190

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3191
  tail call void @free(i8* %22) #9, !dbg !3193
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3194, !tbaa !725
  br label %23, !dbg !3195

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3196, !tbaa !872
  ret void, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3198 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3202, metadata !717), !dbg !3204
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3203, metadata !717), !dbg !3205
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3206
  ret i8* %3, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3208 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3212, metadata !717), !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3213, metadata !717), !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3214, metadata !717), !dbg !3228
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3215, metadata !717), !dbg !3229
  %5 = tail call i32* @__errno_location() #1, !dbg !3230
  %6 = load i32, i32* %5, align 4, !dbg !3230, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3216, metadata !717), !dbg !3231
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3232, !tbaa !725
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3217, metadata !717), !dbg !3233
  %8 = icmp slt i32 %0, 0, !dbg !3234
  br i1 %8, label %9, label %10, !dbg !3236

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3237
  unreachable, !dbg !3237

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3238, !tbaa !872
  %12 = icmp sgt i32 %11, %0, !dbg !3239
  br i1 %12, label %34, label %13, !dbg !3240

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3241
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3242
  br i1 %15, label %16, label %17, !dbg !3244

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3245
  unreachable, !dbg !3245

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3246
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3246
  %20 = add nsw i32 %0, 1, !dbg !3248
  %21 = sext i32 %20 to i64, !dbg !3249
  %22 = shl nsw i64 %21, 4, !dbg !3250
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !3251
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3251
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3217, metadata !717), !dbg !3233
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3252, !tbaa !725
  br i1 %14, label %25, label %26, !dbg !3253

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3254, !tbaa.struct !3256
  br label %26, !dbg !3257

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3258, !tbaa !872
  %28 = sext i32 %27 to i64, !dbg !3259
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3259
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3260
  %31 = sub nsw i32 %20, %27, !dbg !3261
  %32 = sext i32 %31 to i64, !dbg !3262
  %33 = shl nsw i64 %32, 4, !dbg !3263
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3260
  store i32 %20, i32* @nslots, align 4, !dbg !3264, !tbaa !872
  br label %34, !dbg !3265

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3217, metadata !717), !dbg !3233
  %36 = sext i32 %0 to i64, !dbg !3266
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3267
  %38 = load i64, i64* %37, align 8, !dbg !3267, !tbaa !3185
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3221, metadata !717), !dbg !3268
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3269
  %40 = load i8*, i8** %39, align 8, !dbg !3269, !tbaa !3170
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3223, metadata !717), !dbg !3270
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3271
  %42 = load i32, i32* %41, align 4, !dbg !3271, !tbaa !1976
  %43 = or i32 %42, 1, !dbg !3272
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3224, metadata !717), !dbg !3273
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3274
  %45 = load i32, i32* %44, align 8, !dbg !3274, !tbaa !1914
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3275
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3276
  %48 = load i8*, i8** %47, align 8, !dbg !3276, !tbaa !2003
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3277
  %50 = load i8*, i8** %49, align 8, !dbg !3277, !tbaa !2006
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3278
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3225, metadata !717), !dbg !3279
  %52 = icmp ugt i64 %38, %51, !dbg !3280
  br i1 %52, label %63, label %53, !dbg !3282

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3283
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3221, metadata !717), !dbg !3268
  store i64 %54, i64* %37, align 8, !dbg !3285, !tbaa !3185
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3286
  br i1 %55, label %57, label %56, !dbg !3288

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !3289
  br label %57, !dbg !3289

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3106, metadata !717) #9, !dbg !3290
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !3292
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3223, metadata !717), !dbg !3270
  store i8* %58, i8** %39, align 8, !dbg !3293, !tbaa !3170
  %59 = load i32, i32* %44, align 8, !dbg !3294, !tbaa !1914
  %60 = load i8*, i8** %47, align 8, !dbg !3295, !tbaa !2003
  %61 = load i8*, i8** %49, align 8, !dbg !3296, !tbaa !2006
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3297
  br label %63, !dbg !3298

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3223, metadata !717), !dbg !3270
  store i32 %6, i32* %5, align 4, !dbg !3299, !tbaa !872
  ret i8* %64, !dbg !3300
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3301 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3305, metadata !717), !dbg !3308
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3306, metadata !717), !dbg !3309
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3307, metadata !717), !dbg !3310
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3311
  ret i8* %4, !dbg !3312
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3313 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3317, metadata !717), !dbg !3318
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3202, metadata !717) #9, !dbg !3319
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3203, metadata !717) #9, !dbg !3321
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !3322
  ret i8* %2, !dbg !3323
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3324 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3328, metadata !717), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3329, metadata !717), !dbg !3331
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3305, metadata !717) #9, !dbg !3332
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3306, metadata !717) #9, !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3307, metadata !717) #9, !dbg !3335
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !3336
  ret i8* %3, !dbg !3337
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3338 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3346, metadata !3352), !dbg !3353
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3342, metadata !717), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3343, metadata !717), !dbg !3356
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3344, metadata !717), !dbg !3357
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3358
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3358
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3345, metadata !1389), !dbg !3359
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3351, metadata !717) #9, !dbg !3360
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3361
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3361
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3346, metadata !717) #9, !dbg !3353
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3346, metadata !3362) #9, !dbg !3353
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3353
  %8 = icmp eq i32 %1, 10, !dbg !3363
  br i1 %8, label %9, label %10, !dbg !3365

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3366, !noalias !3367
  unreachable, !dbg !3366

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3346, metadata !3362) #9, !dbg !3353
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3370
  store i32 %1, i32* %11, align 8, !dbg !3370, !alias.scope !3367
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3370
  %13 = bitcast i32* %12 to i8*, !dbg !3370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !3370
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3371
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3345, metadata !1389), !dbg !3359
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3372
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3373
  ret i8* %14, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3375 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3346, metadata !3352), !dbg !3384
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3379, metadata !717), !dbg !3386
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3380, metadata !717), !dbg !3387
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3381, metadata !717), !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3382, metadata !717), !dbg !3389
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3390
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !3390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3383, metadata !1389), !dbg !3391
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3351, metadata !717) #9, !dbg !3392
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3393
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3393
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3346, metadata !717) #9, !dbg !3384
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3346, metadata !3362) #9, !dbg !3384
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3384
  %9 = icmp eq i32 %1, 10, !dbg !3394
  br i1 %9, label %10, label %11, !dbg !3395

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3396, !noalias !3397
  unreachable, !dbg !3396

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3346, metadata !3362) #9, !dbg !3384
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3400
  store i32 %1, i32* %12, align 8, !dbg !3400, !alias.scope !3397
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3400
  %14 = bitcast i32* %13 to i8*, !dbg !3400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9, !dbg !3400
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3401
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3383, metadata !1389), !dbg !3391
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3402
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !3403
  ret i8* %15, !dbg !3404
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3405 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3346, metadata !3352), !dbg !3411
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3409, metadata !717), !dbg !3414
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3410, metadata !717), !dbg !3415
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3342, metadata !717) #9, !dbg !3416
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3343, metadata !717) #9, !dbg !3417
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3344, metadata !717) #9, !dbg !3418
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3419
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !3419
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3345, metadata !1389) #9, !dbg !3420
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3351, metadata !717) #9, !dbg !3421
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3422
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3422
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3346, metadata !717) #9, !dbg !3411
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3346, metadata !3362) #9, !dbg !3411
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3411
  %7 = icmp eq i32 %0, 10, !dbg !3423
  br i1 %7, label %8, label %9, !dbg !3424

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3425, !noalias !3426
  unreachable, !dbg !3425

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3346, metadata !3362) #9, !dbg !3411
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3429
  store i32 %0, i32* %10, align 8, !dbg !3429, !alias.scope !3426
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3429
  %12 = bitcast i32* %11 to i8*, !dbg !3429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9, !dbg !3429
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3430
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3345, metadata !1389) #9, !dbg !3420
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3431
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !3432
  ret i8* %13, !dbg !3433
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3434 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3346, metadata !3352), !dbg !3441
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3438, metadata !717), !dbg !3444
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3439, metadata !717), !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3440, metadata !717), !dbg !3446
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3379, metadata !717) #9, !dbg !3447
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3380, metadata !717) #9, !dbg !3448
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3381, metadata !717) #9, !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3382, metadata !717) #9, !dbg !3450
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3451
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3451
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3383, metadata !1389) #9, !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3351, metadata !717) #9, !dbg !3453
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3454
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3454
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3346, metadata !717) #9, !dbg !3441
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3346, metadata !3362) #9, !dbg !3441
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3441
  %8 = icmp eq i32 %0, 10, !dbg !3455
  br i1 %8, label %9, label %10, !dbg !3456

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3457, !noalias !3458
  unreachable, !dbg !3457

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3346, metadata !3362) #9, !dbg !3441
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3461
  store i32 %0, i32* %11, align 8, !dbg !3461, !alias.scope !3458
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3461
  %13 = bitcast i32* %12 to i8*, !dbg !3461
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9, !dbg !3461
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3462
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3383, metadata !1389) #9, !dbg !3452
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9, !dbg !3463
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3464
  ret i8* %14, !dbg !3465
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3466 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !717), !dbg !3474
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3471, metadata !717), !dbg !3475
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3472, metadata !717), !dbg !3476
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3477
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !3477
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3478, !tbaa.struct !3479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3473, metadata !1389), !dbg !3480
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1934, metadata !717), !dbg !3481
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1935, metadata !717), !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1936, metadata !717), !dbg !3484
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1937, metadata !717), !dbg !3485
  %6 = lshr i8 %2, 5, !dbg !3486
  %7 = zext i8 %6 to i64, !dbg !3486
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3487
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1938, metadata !717), !dbg !3488
  %9 = and i8 %2, 31, !dbg !3489
  %10 = zext i8 %9 to i32, !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1940, metadata !717), !dbg !3491
  %11 = load i32, i32* %8, align 4, !dbg !3492, !tbaa !872
  %12 = lshr i32 %11, %10, !dbg !3493
  %13 = and i32 %12, 1, !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1941, metadata !717), !dbg !3495
  %14 = xor i32 %13, 1, !dbg !3496
  %15 = shl i32 %14, %10, !dbg !3497
  %16 = xor i32 %15, %11, !dbg !3498
  store i32 %16, i32* %8, align 4, !dbg !3498, !tbaa !872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3473, metadata !1389), !dbg !3480
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3499
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !3500
  ret i8* %17, !dbg !3501
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3502 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3506, metadata !717), !dbg !3508
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3507, metadata !717), !dbg !3509
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !717) #9, !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3471, metadata !717) #9, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3472, metadata !717) #9, !dbg !3513
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3514
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !3514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3515, !tbaa.struct !3479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3473, metadata !1389) #9, !dbg !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1934, metadata !717) #9, !dbg !3517
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1935, metadata !717) #9, !dbg !3519
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1936, metadata !717) #9, !dbg !3520
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1937, metadata !717) #9, !dbg !3521
  %5 = lshr i8 %1, 5, !dbg !3522
  %6 = zext i8 %5 to i64, !dbg !3522
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3523
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1938, metadata !717) #9, !dbg !3524
  %8 = and i8 %1, 31, !dbg !3525
  %9 = zext i8 %8 to i32, !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1940, metadata !717) #9, !dbg !3527
  %10 = load i32, i32* %7, align 4, !dbg !3528, !tbaa !872
  %11 = lshr i32 %10, %9, !dbg !3529
  %12 = and i32 %11, 1, !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1941, metadata !717) #9, !dbg !3531
  %13 = xor i32 %12, 1, !dbg !3532
  %14 = shl i32 %13, %9, !dbg !3533
  %15 = xor i32 %14, %10, !dbg !3534
  store i32 %15, i32* %7, align 4, !dbg !3534, !tbaa !872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3473, metadata !1389) #9, !dbg !3516
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !3535
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !3536
  ret i8* %16, !dbg !3537
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3538 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3540, metadata !717), !dbg !3541
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3506, metadata !717) #9, !dbg !3542
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3507, metadata !717) #9, !dbg !3544
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !717) #9, !dbg !3545
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3471, metadata !717) #9, !dbg !3547
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3472, metadata !717) #9, !dbg !3548
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3549
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9, !dbg !3549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3550, !tbaa.struct !3479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3473, metadata !1389) #9, !dbg !3551
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1934, metadata !717) #9, !dbg !3552
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1935, metadata !717) #9, !dbg !3554
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1936, metadata !717) #9, !dbg !3555
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1937, metadata !717) #9, !dbg !3556
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3557
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1938, metadata !717) #9, !dbg !3558
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1940, metadata !717) #9, !dbg !3559
  %5 = load i32, i32* %4, align 4, !dbg !3560, !tbaa !872
  %6 = or i32 %5, 67108864, !dbg !3561
  store i32 %6, i32* %4, align 4, !dbg !3561, !tbaa !872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3473, metadata !1389) #9, !dbg !3551
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !3562
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9, !dbg !3563
  ret i8* %7, !dbg !3564
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3565 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3567, metadata !717), !dbg !3569
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3568, metadata !717), !dbg !3570
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3470, metadata !717) #9, !dbg !3571
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3471, metadata !717) #9, !dbg !3573
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3472, metadata !717) #9, !dbg !3574
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3575
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9, !dbg !3575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3576, !tbaa.struct !3479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3473, metadata !1389) #9, !dbg !3577
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1934, metadata !717) #9, !dbg !3578
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1935, metadata !717) #9, !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1936, metadata !717) #9, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1937, metadata !717) #9, !dbg !3582
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3583
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1938, metadata !717) #9, !dbg !3584
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1940, metadata !717) #9, !dbg !3585
  %6 = load i32, i32* %5, align 4, !dbg !3586, !tbaa !872
  %7 = or i32 %6, 67108864, !dbg !3587
  store i32 %7, i32* %5, align 4, !dbg !3587, !tbaa !872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3473, metadata !1389) #9, !dbg !3577
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !3588
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9, !dbg !3589
  ret i8* %8, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3591 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3346, metadata !3352), !dbg !3597
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3593, metadata !717), !dbg !3599
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3594, metadata !717), !dbg !3600
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3595, metadata !717), !dbg !3601
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3602
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !3602
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3351, metadata !717) #9, !dbg !3603
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3604
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3604
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3346, metadata !717) #9, !dbg !3597
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3346, metadata !3362) #9, !dbg !3597
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3597
  %9 = icmp eq i32 %1, 10, !dbg !3605
  br i1 %9, label %10, label %11, !dbg !3606

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3607, !noalias !3608
  unreachable, !dbg !3607

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3346, metadata !3362) #9, !dbg !3597
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3611
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3612
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3613
  store i32 %1, i32* %13, align 8, !dbg !3613
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3613
  %15 = bitcast i32* %14 to i8*, !dbg !3613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3613
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3596, metadata !1389), !dbg !3614
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1934, metadata !717), !dbg !3615
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1935, metadata !717), !dbg !3617
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1936, metadata !717), !dbg !3618
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1937, metadata !717), !dbg !3619
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3620
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1938, metadata !717), !dbg !3621
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1940, metadata !717), !dbg !3622
  %17 = load i32, i32* %16, align 4, !dbg !3623, !tbaa !872
  %18 = or i32 %17, 67108864, !dbg !3624
  store i32 %18, i32* %16, align 4, !dbg !3624, !tbaa !872
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3596, metadata !1389), !dbg !3614
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3625
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !3626
  ret i8* %19, !dbg !3627
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3628 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3632, metadata !717), !dbg !3636
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3633, metadata !717), !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3634, metadata !717), !dbg !3638
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3635, metadata !717), !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3640, metadata !717) #9, !dbg !3650
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3645, metadata !717) #9, !dbg !3652
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3646, metadata !717) #9, !dbg !3653
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3647, metadata !717) #9, !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3648, metadata !717) #9, !dbg !3655
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3656
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3657, !tbaa.struct !3479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3649, metadata !1389) #9, !dbg !3658
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1984, metadata !717) #9, !dbg !3659
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1985, metadata !717) #9, !dbg !3661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1986, metadata !717) #9, !dbg !3662
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1984, metadata !717) #9, !dbg !3659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1984, metadata !717) #9, !dbg !3659
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3663
  store i32 10, i32* %7, align 8, !dbg !3664, !tbaa !1914
  %8 = icmp ne i8* %1, null, !dbg !3665
  %9 = icmp ne i8* %2, null, !dbg !3666
  %10 = and i1 %8, %9, !dbg !3667
  br i1 %10, label %12, label %11, !dbg !3667

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3668
  unreachable, !dbg !3668

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3669
  store i8* %1, i8** %13, align 8, !dbg !3670, !tbaa !2003
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3671
  store i8* %2, i8** %14, align 8, !dbg !3672, !tbaa !2006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3649, metadata !1389) #9, !dbg !3658
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !3673
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3674
  ret i8* %15, !dbg !3675
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3641 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3640, metadata !717), !dbg !3676
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3645, metadata !717), !dbg !3677
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3646, metadata !717), !dbg !3678
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3647, metadata !717), !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3648, metadata !717), !dbg !3680
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3681
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9, !dbg !3681
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3682, !tbaa.struct !3479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3649, metadata !1389), !dbg !3683
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1984, metadata !717) #9, !dbg !3684
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1985, metadata !717) #9, !dbg !3686
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1986, metadata !717) #9, !dbg !3687
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1984, metadata !717) #9, !dbg !3684
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1984, metadata !717) #9, !dbg !3684
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3688
  store i32 10, i32* %8, align 8, !dbg !3689, !tbaa !1914
  %9 = icmp ne i8* %1, null, !dbg !3690
  %10 = icmp ne i8* %2, null, !dbg !3691
  %11 = and i1 %9, %10, !dbg !3692
  br i1 %11, label %13, label %12, !dbg !3692

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3693
  unreachable, !dbg !3693

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3694
  store i8* %1, i8** %14, align 8, !dbg !3695, !tbaa !2003
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3696
  store i8* %2, i8** %15, align 8, !dbg !3697, !tbaa !2006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3649, metadata !1389), !dbg !3683
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3698
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9, !dbg !3699
  ret i8* %16, !dbg !3700
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3701 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3705, metadata !717), !dbg !3708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3706, metadata !717), !dbg !3709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3707, metadata !717), !dbg !3710
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3632, metadata !717) #9, !dbg !3711
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3633, metadata !717) #9, !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3634, metadata !717) #9, !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3635, metadata !717) #9, !dbg !3715
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3640, metadata !717) #9, !dbg !3716
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3645, metadata !717) #9, !dbg !3718
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3646, metadata !717) #9, !dbg !3719
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3647, metadata !717) #9, !dbg !3720
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3648, metadata !717) #9, !dbg !3721
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3722
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9, !dbg !3722
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3723, !tbaa.struct !3479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3649, metadata !1389) #9, !dbg !3724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1984, metadata !717) #9, !dbg !3725
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1985, metadata !717) #9, !dbg !3727
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1986, metadata !717) #9, !dbg !3728
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1984, metadata !717) #9, !dbg !3725
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1984, metadata !717) #9, !dbg !3725
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3729
  store i32 10, i32* %6, align 8, !dbg !3730, !tbaa !1914
  %7 = icmp ne i8* %0, null, !dbg !3731
  %8 = icmp ne i8* %1, null, !dbg !3732
  %9 = and i1 %7, %8, !dbg !3733
  br i1 %9, label %11, label %10, !dbg !3733

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3734
  unreachable, !dbg !3734

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3735
  store i8* %0, i8** %12, align 8, !dbg !3736, !tbaa !2003
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3737
  store i8* %1, i8** %13, align 8, !dbg !3738, !tbaa !2006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3649, metadata !1389) #9, !dbg !3724
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !3739
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9, !dbg !3740
  ret i8* %14, !dbg !3741
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3742 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3746, metadata !717), !dbg !3750
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3747, metadata !717), !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3748, metadata !717), !dbg !3752
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3749, metadata !717), !dbg !3753
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3640, metadata !717) #9, !dbg !3754
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3645, metadata !717) #9, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3646, metadata !717) #9, !dbg !3757
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3647, metadata !717) #9, !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3648, metadata !717) #9, !dbg !3759
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3760
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9, !dbg !3760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9, !dbg !3761, !tbaa.struct !3479
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3649, metadata !1389) #9, !dbg !3762
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1984, metadata !717) #9, !dbg !3763
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1985, metadata !717) #9, !dbg !3765
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1986, metadata !717) #9, !dbg !3766
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1984, metadata !717) #9, !dbg !3763
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1984, metadata !717) #9, !dbg !3763
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3767
  store i32 10, i32* %7, align 8, !dbg !3768, !tbaa !1914
  %8 = icmp ne i8* %0, null, !dbg !3769
  %9 = icmp ne i8* %1, null, !dbg !3770
  %10 = and i1 %8, %9, !dbg !3771
  br i1 %10, label %12, label %11, !dbg !3771

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3772
  unreachable, !dbg !3772

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3773
  store i8* %0, i8** %13, align 8, !dbg !3774, !tbaa !2003
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3775
  store i8* %1, i8** %14, align 8, !dbg !3776, !tbaa !2006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3649, metadata !1389) #9, !dbg !3762
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !3777
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9, !dbg !3778
  ret i8* %15, !dbg !3779
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3780 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3784, metadata !717), !dbg !3787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3785, metadata !717), !dbg !3788
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3786, metadata !717), !dbg !3789
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3790
  ret i8* %4, !dbg !3791
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3792 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3796, metadata !717), !dbg !3798
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3797, metadata !717), !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3784, metadata !717) #9, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3785, metadata !717) #9, !dbg !3802
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3786, metadata !717) #9, !dbg !3803
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3804
  ret i8* %3, !dbg !3805
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3806 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3810, metadata !717), !dbg !3812
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3811, metadata !717), !dbg !3813
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3784, metadata !717) #9, !dbg !3814
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3785, metadata !717) #9, !dbg !3816
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3786, metadata !717) #9, !dbg !3817
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3818
  ret i8* %3, !dbg !3819
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3820 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3824, metadata !717), !dbg !3825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3810, metadata !717) #9, !dbg !3826
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3811, metadata !717) #9, !dbg !3828
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3784, metadata !717) #9, !dbg !3829
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3785, metadata !717) #9, !dbg !3831
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3786, metadata !717) #9, !dbg !3832
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !3833
  ret i8* %2, !dbg !3834
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @savewd_init(%struct.savewd* nocapture) local_unnamed_addr #12 !dbg !3835 {
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3840, metadata !717), !dbg !3841
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3842
  store i32 0, i32* %2, align 4, !dbg !3843, !tbaa !1331
  ret void, !dbg !3844
}

; Function Attrs: inlinehint nounwind readonly sspstrong uwtable
define i32 @savewd_errno(%struct.savewd* nocapture readonly) local_unnamed_addr #13 !dbg !3845 {
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3851, metadata !717), !dbg !3852
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3853
  %3 = load i32, i32* %2, align 4, !dbg !3853, !tbaa !1331
  %4 = icmp eq i32 %3, 4, !dbg !3854
  br i1 %4, label %5, label %8, !dbg !3855

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3856
  %7 = load i32, i32* %6, align 4, !dbg !3856, !tbaa !872
  br label %8, !dbg !3858

; <label>:8:                                      ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3859
  ret i32 %9, !dbg !3861
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @savewd_chdir(%struct.savewd* nocapture, i8*, i32, i32*) local_unnamed_addr #6 !dbg !3862 {
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3867, metadata !717), !dbg !3876
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3868, metadata !717), !dbg !3877
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3869, metadata !717), !dbg !3878
  tail call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !3870, metadata !717), !dbg !3879
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3871, metadata !717), !dbg !3880
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3872, metadata !717), !dbg !3881
  %5 = icmp ne i32* %3, null, !dbg !3882
  %6 = xor i1 %5, true, !dbg !3884
  %7 = and i32 %2, 1, !dbg !3885
  %8 = icmp eq i32 %7, 0, !dbg !3885
  %9 = and i1 %8, %6, !dbg !3884
  br i1 %9, label %28, label %10, !dbg !3884

; <label>:10:                                     ; preds = %4
  %11 = shl i32 %2, 17, !dbg !3887
  %12 = and i32 %11, 131072, !dbg !3887
  %13 = or i32 %12, 67840, !dbg !3889
  %14 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %13) #9, !dbg !3890
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3871, metadata !717), !dbg !3880
  br i1 %5, label %15, label %19, !dbg !3891

; <label>:15:                                     ; preds = %10
  store i32 %14, i32* %3, align 4, !dbg !3892, !tbaa !872
  %16 = tail call i32* @__errno_location() #1, !dbg !3895
  %17 = load i32, i32* %16, align 4, !dbg !3895, !tbaa !872
  %18 = getelementptr inbounds i32, i32* %3, i64 1, !dbg !3896
  store i32 %17, i32* %18, align 4, !dbg !3897, !tbaa !872
  br label %19, !dbg !3898

; <label>:19:                                     ; preds = %15, %10
  %20 = icmp slt i32 %14, 0, !dbg !3899
  br i1 %20, label %21, label %25, !dbg !3901

; <label>:21:                                     ; preds = %19
  %22 = tail call i32* @__errno_location() #1, !dbg !3902
  %23 = load i32, i32* %22, align 4, !dbg !3902, !tbaa !872
  %24 = icmp eq i32 %23, 13, !dbg !3904
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !3872, metadata !717), !dbg !3881
  br i1 %24, label %28, label %87

; <label>:25:                                     ; preds = %19
  %26 = and i32 %2, 2, !dbg !3905
  %27 = icmp eq i32 %26, 0, !dbg !3905
  br i1 %27, label %28, label %76, !dbg !3908

; <label>:28:                                     ; preds = %21, %4, %25
  %29 = phi i32 [ %14, %25 ], [ -1, %4 ], [ %14, %21 ]
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !3910, metadata !717) #9, !dbg !3918
  %30 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3922
  %31 = load i32, i32* %30, align 4, !dbg !3922, !tbaa !1331
  switch i32 %31, label %57 [
    i32 0, label %32
    i32 3, label %44
    i32 1, label %58
    i32 2, label %58
    i32 4, label %58
    i32 5, label %58
  ], !dbg !3923

; <label>:32:                                     ; preds = %28
  %33 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i64 0, i64 0), i32 0) #9, !dbg !3924
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !3915, metadata !717) #9, !dbg !3925
  %34 = icmp sgt i32 %33, -1, !dbg !3926
  br i1 %34, label %35, label %37, !dbg !3928

; <label>:35:                                     ; preds = %32
  store i32 1, i32* %30, align 4, !dbg !3929, !tbaa !1331
  %36 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3931
  store i32 %33, i32* %36, align 4, !dbg !3932, !tbaa !872
  br label %58

; <label>:37:                                     ; preds = %32
  %38 = tail call i32* @__errno_location() #1, !dbg !3933
  %39 = load i32, i32* %38, align 4, !dbg !3933, !tbaa !872
  switch i32 %39, label %40 [
    i32 13, label %42
    i32 116, label %42
  ], !dbg !3935

; <label>:40:                                     ; preds = %37
  store i32 4, i32* %30, align 4, !dbg !3936, !tbaa !1331
  %41 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3938
  store i32 %39, i32* %41, align 4, !dbg !3939, !tbaa !872
  br label %58

; <label>:42:                                     ; preds = %37, %37
  store i32 3, i32* %30, align 4, !dbg !3940, !tbaa !1331
  %43 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3941
  store i32 -1, i32* %43, align 4, !dbg !3942, !tbaa !872
  br label %48, !dbg !3943

; <label>:44:                                     ; preds = %28
  %45 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %46 = load i32, i32* %45, align 4, !tbaa !872
  %47 = icmp slt i32 %46, 0, !dbg !3923
  br i1 %47, label %48, label %58, !dbg !3943

; <label>:48:                                     ; preds = %44, %42
  %49 = phi i32* [ %43, %42 ], [ %45, %44 ]
  %50 = tail call i32 @fork() #9, !dbg !3944
  store i32 %50, i32* %49, align 4, !dbg !3947, !tbaa !872
  %51 = icmp eq i32 %50, 0, !dbg !3948
  br i1 %51, label %58, label %52, !dbg !3950

; <label>:52:                                     ; preds = %48
  %53 = icmp sgt i32 %50, 0, !dbg !3951
  br i1 %53, label %76, label %54, !dbg !3954

; <label>:54:                                     ; preds = %52
  store i32 4, i32* %30, align 4, !dbg !3955, !tbaa !1331
  %55 = tail call i32* @__errno_location() #1, !dbg !3956
  %56 = load i32, i32* %55, align 4, !dbg !3956, !tbaa !872
  store i32 %56, i32* %49, align 4, !dbg !3957, !tbaa !872
  br label %58, !dbg !3958

; <label>:57:                                     ; preds = %28
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.savewd_save, i64 0, i64 0)) #15, !dbg !3959
  unreachable, !dbg !3959

; <label>:58:                                     ; preds = %40, %35, %48, %28, %28, %28, %28, %44, %54
  %59 = icmp slt i32 %29, 0, !dbg !3962
  br i1 %59, label %60, label %62, !dbg !3964

; <label>:60:                                     ; preds = %58
  %61 = tail call i32 @chdir(i8* %1) #9, !dbg !3965
  br label %64, !dbg !3967

; <label>:62:                                     ; preds = %58
  %63 = tail call i32 @fchdir(i32 %29) #9, !dbg !3968
  br label %64, !dbg !3970

; <label>:64:                                     ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ], !dbg !3971
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !3872, metadata !717), !dbg !3881
  %66 = icmp eq i32 %65, 0, !dbg !3973
  br i1 %66, label %67, label %76, !dbg !3975

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %30, align 4, !dbg !3976, !tbaa !1331
  switch i32 %68, label %75 [
    i32 1, label %69
    i32 4, label %76
    i32 2, label %76
    i32 5, label %76
    i32 3, label %70
  ], !dbg !3977

; <label>:69:                                     ; preds = %67
  store i32 2, i32* %30, align 4, !dbg !3978, !tbaa !1331
  br label %76, !dbg !3980

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3981
  %72 = load i32, i32* %71, align 4, !dbg !3981, !tbaa !872
  %73 = icmp eq i32 %72, 0, !dbg !3981
  br i1 %73, label %76, label %74, !dbg !3984

; <label>:74:                                     ; preds = %70
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #15, !dbg !3985
  unreachable, !dbg !3985

; <label>:75:                                     ; preds = %67
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 151, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #15, !dbg !3987
  unreachable, !dbg !3987

; <label>:76:                                     ; preds = %52, %25, %69, %67, %67, %67, %70, %64
  %77 = phi i32 [ %29, %70 ], [ %29, %67 ], [ %29, %67 ], [ %29, %67 ], [ %29, %69 ], [ %29, %64 ], [ %14, %25 ], [ %29, %52 ], !dbg !3879
  %78 = phi i32 [ 0, %70 ], [ 0, %67 ], [ 0, %67 ], [ 0, %67 ], [ 0, %69 ], [ %65, %64 ], [ 0, %25 ], [ -2, %52 ]
  %79 = phi i32* [ %3, %70 ], [ %3, %67 ], [ %3, %67 ], [ %3, %67 ], [ %3, %69 ], [ %3, %64 ], [ %3, %25 ], [ null, %52 ]
  tail call void @llvm.dbg.value(metadata i32* %79, i64 0, metadata !3870, metadata !717), !dbg !3879
  tail call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !3872, metadata !717), !dbg !3881
  %80 = icmp slt i32 %77, 0, !dbg !3990
  %81 = icmp ne i32* %79, null, !dbg !3991
  %82 = or i1 %80, %81, !dbg !3993
  br i1 %82, label %87, label %83, !dbg !3993

; <label>:83:                                     ; preds = %76
  %84 = tail call i32* @__errno_location() #1, !dbg !3994
  %85 = load i32, i32* %84, align 4, !dbg !3994, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !3873, metadata !717), !dbg !3995
  %86 = tail call i32 @close(i32 %77) #9, !dbg !3996
  store i32 %85, i32* %84, align 4, !dbg !3997, !tbaa !872
  br label %87, !dbg !3998

; <label>:87:                                     ; preds = %21, %76, %83
  %88 = phi i32 [ %78, %76 ], [ %78, %83 ], [ -1, %21 ]
  ret i32 %88, !dbg !3999
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @savewd_restore(%struct.savewd* nocapture, i32) local_unnamed_addr #6 !dbg !4000 {
  %3 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !4004, metadata !717), !dbg !4015
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4005, metadata !717), !dbg !4016
  %4 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !4017
  %5 = load i32, i32* %4, align 4, !dbg !4017, !tbaa !1331
  switch i32 %5, label %52 [
    i32 0, label %53
    i32 1, label %53
    i32 2, label %10
    i32 4, label %6
    i32 3, label %24
  ], !dbg !4018

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %8 = load i32, i32* %7, align 4, !tbaa !872
  %9 = tail call i32* @__errno_location() #1, !dbg !4019
  br label %21, !dbg !4018

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !4020
  %12 = load i32, i32* %11, align 4, !dbg !4020, !tbaa !872
  %13 = tail call i32 @fchdir(i32 %12) #9, !dbg !4021
  %14 = icmp eq i32 %13, 0, !dbg !4022
  br i1 %14, label %15, label %16, !dbg !4023

; <label>:15:                                     ; preds = %10
  store i32 1, i32* %4, align 4, !dbg !4024, !tbaa !1331
  br label %53, !dbg !4026

; <label>:16:                                     ; preds = %10
  %17 = tail call i32* @__errno_location() #1, !dbg !4027
  %18 = load i32, i32* %17, align 4, !dbg !4027, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !4006, metadata !717), !dbg !4028
  %19 = load i32, i32* %11, align 4, !dbg !4029, !tbaa !872
  %20 = tail call i32 @close(i32 %19) #9, !dbg !4030
  store i32 4, i32* %4, align 4, !dbg !4031, !tbaa !1331
  store i32 %18, i32* %11, align 4, !dbg !4032, !tbaa !872
  br label %21, !dbg !4033

; <label>:21:                                     ; preds = %6, %16
  %22 = phi i32* [ %9, %6 ], [ %17, %16 ], !dbg !4019
  %23 = phi i32 [ %8, %6 ], [ %18, %16 ], !dbg !4035
  store i32 %23, i32* %22, align 4, !dbg !4036, !tbaa !872
  br label %53, !dbg !4037

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !4038
  %26 = load i32, i32* %25, align 4, !dbg !4038, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !4010, metadata !717), !dbg !4039
  %27 = icmp eq i32 %26, 0, !dbg !4040
  br i1 %27, label %28, label %29, !dbg !4042

; <label>:28:                                     ; preds = %24
  tail call void @_exit(i32 %1) #15, !dbg !4043
  unreachable, !dbg !4043

; <label>:29:                                     ; preds = %24
  %30 = icmp sgt i32 %26, 0, !dbg !4044
  br i1 %30, label %31, label %53, !dbg !4045

; <label>:31:                                     ; preds = %29
  %32 = bitcast i32* %3 to i8*, !dbg !4046
  call void @llvm.lifetime.start(i64 4, i8* nonnull %32) #9, !dbg !4046
  br label %33, !dbg !4047

; <label>:33:                                     ; preds = %36, %31
  call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !4012, metadata !1389), !dbg !4048
  %34 = call i32 @waitpid(i32 %26, i32* nonnull %3, i32 0) #9, !dbg !4049
  %35 = icmp slt i32 %34, 0, !dbg !4051
  br i1 %35, label %36, label %41, !dbg !4052

; <label>:36:                                     ; preds = %33
  %37 = tail call i32* @__errno_location() #1, !dbg !4053
  %38 = load i32, i32* %37, align 4, !dbg !4053, !tbaa !872
  %39 = icmp eq i32 %38, 4, !dbg !4053
  br i1 %39, label %33, label %40, !dbg !4056, !llvm.loop !4057

; <label>:40:                                     ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.85, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #15, !dbg !4059
  unreachable, !dbg !4059

; <label>:41:                                     ; preds = %33
  store i32 -1, i32* %25, align 4, !dbg !4061, !tbaa !872
  %42 = load i32, i32* %3, align 4, !dbg !4062, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !4012, metadata !717), !dbg !4048
  %43 = and i32 %42, 127, !dbg !4062
  %44 = icmp eq i32 %43, 0, !dbg !4062
  br i1 %44, label %48, label %45, !dbg !4064

; <label>:45:                                     ; preds = %41
  %46 = call i32 @raise(i32 %43) #9, !dbg !4065
  %47 = load i32, i32* %3, align 4, !tbaa !872
  br label %48, !dbg !4065

; <label>:48:                                     ; preds = %41, %45
  %49 = phi i32 [ %42, %41 ], [ %47, %45 ], !dbg !4066
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !4012, metadata !717), !dbg !4048
  %50 = lshr i32 %49, 8, !dbg !4066
  %51 = and i32 %50, 255, !dbg !4066
  call void @llvm.lifetime.end(i64 4, i8* nonnull %32) #9, !dbg !4067
  br label %53

; <label>:52:                                     ; preds = %2
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 218, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #15, !dbg !4068
  unreachable, !dbg !4068

; <label>:53:                                     ; preds = %29, %15, %2, %2, %48, %21
  %54 = phi i32 [ %51, %48 ], [ -1, %21 ], [ 0, %2 ], [ 0, %2 ], [ 0, %15 ], [ 0, %29 ]
  ret i32 %54, !dbg !4071
}

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @savewd_finish(%struct.savewd* nocapture) local_unnamed_addr #6 !dbg !4072 {
  tail call void @llvm.dbg.value(metadata %struct.savewd* %0, i64 0, metadata !4074, metadata !717), !dbg !4075
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !4076
  %3 = load i32, i32* %2, align 4, !dbg !4076, !tbaa !1331
  switch i32 %3, label %13 [
    i32 0, label %14
    i32 4, label %14
    i32 1, label %4
    i32 2, label %4
    i32 3, label %8
  ], !dbg !4077

; <label>:4:                                      ; preds = %1, %1
  %5 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !4078
  %6 = load i32, i32* %5, align 4, !dbg !4078, !tbaa !872
  %7 = tail call i32 @close(i32 %6) #9, !dbg !4080
  br label %14, !dbg !4081

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !4082
  %10 = load i32, i32* %9, align 4, !dbg !4082, !tbaa !872
  %11 = icmp slt i32 %10, 0, !dbg !4082
  br i1 %11, label %14, label %12, !dbg !4085

; <label>:12:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.86, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 239, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #15, !dbg !4086
  unreachable, !dbg !4086

; <label>:13:                                     ; preds = %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 243, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #15, !dbg !4088
  unreachable, !dbg !4088

; <label>:14:                                     ; preds = %8, %1, %1, %4
  store i32 5, i32* %2, align 4, !dbg !4091, !tbaa !1331
  ret void, !dbg !4092
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @savewd_process_files(i32, i8** nocapture readonly, i32 (i8*, %struct.savewd*, i8*)* nocapture, i8*) local_unnamed_addr #6 !dbg !4093 {
  %5 = alloca %struct.savewd, align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4100, metadata !717), !dbg !4121
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4101, metadata !717), !dbg !4122
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct.savewd*, i8*)* %2, i64 0, metadata !4102, metadata !717), !dbg !4123
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4103, metadata !717), !dbg !4124
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4104, metadata !717), !dbg !4125
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4106, metadata !717), !dbg !4126
  %6 = bitcast %struct.savewd* %5 to i8*, !dbg !4127
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #9, !dbg !4127
  tail call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !4107, metadata !1389), !dbg !4128
  tail call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !3840, metadata !717), !dbg !4129
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 0, !dbg !4131
  store i32 0, i32* %7, align 4, !dbg !4132, !tbaa !1331
  %8 = sext i32 %0 to i64, !dbg !4133
  br label %9, !dbg !4133

; <label>:9:                                      ; preds = %13, %4
  %10 = phi i64 [ %11, %13 ], [ %8, %4 ]
  %11 = add nsw i64 %10, -1
  %12 = icmp sgt i64 %10, 0, !dbg !4135
  br i1 %12, label %13, label %18, !dbg !4138

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !4140
  %15 = load i8*, i8** %14, align 8, !dbg !4140, !tbaa !725
  %16 = load i8, i8* %15, align 1, !dbg !4140, !tbaa !1176
  %17 = icmp eq i8 %16, 47, !dbg !4140
  br i1 %17, label %9, label %18, !dbg !4142, !llvm.loop !4143

; <label>:18:                                     ; preds = %13, %9
  %19 = trunc i64 %10 to i32, !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4104, metadata !717), !dbg !4125
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4106, metadata !717), !dbg !4126
  %20 = icmp sgt i32 %19, 1, !dbg !4146
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !4107, metadata !1389), !dbg !4128
  br i1 %20, label %21, label %68, !dbg !4148

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0
  %23 = shl i64 %11, 32, !dbg !4148
  %24 = ashr exact i64 %23, 32, !dbg !4148
  br label %25, !dbg !4148

; <label>:25:                                     ; preds = %50, %21
  %26 = phi i32 [ undef, %21 ], [ %51, %50 ], !dbg !4150
  %27 = phi i64 [ 0, %21 ], [ %41, %50 ]
  %28 = phi i32 [ 0, %21 ], [ %49, %50 ]
  %29 = phi i32 [ 0, %21 ], [ %47, %50 ]
  tail call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !4156, metadata !717), !dbg !4158
  %30 = icmp eq i32 %28, 3, !dbg !4159
  %31 = icmp sgt i32 %26, 0, !dbg !4160
  %32 = and i1 %30, %31, !dbg !4161
  br i1 %32, label %39, label %33, !dbg !4161

; <label>:33:                                     ; preds = %25
  %34 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !4162
  %35 = load i8*, i8** %34, align 8, !dbg !4162, !tbaa !725
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !4107, metadata !1389), !dbg !4128
  %36 = call i32 %2(i8* %35, %struct.savewd* nonnull %5, i8* %3) #9, !dbg !4163
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !4108, metadata !717), !dbg !4164
  %37 = icmp slt i32 %29, %36, !dbg !4165
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !4106, metadata !717), !dbg !4126
  %38 = select i1 %37, i32 %36, i32 %29, !dbg !4167
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4106, metadata !717), !dbg !4126
  br label %39, !dbg !4168

; <label>:39:                                     ; preds = %25, %33
  %40 = phi i32 [ %38, %33 ], [ %29, %25 ]
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !4106, metadata !717), !dbg !4126
  %41 = add nuw nsw i64 %27, 1, !dbg !4169
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !4169
  %43 = load i8*, i8** %42, align 8, !dbg !4169, !tbaa !725
  %44 = load i8, i8* %43, align 1, !dbg !4169, !tbaa !1176
  %45 = icmp eq i8 %44, 47, !dbg !4169
  br i1 %45, label %46, label %52, !dbg !4170

; <label>:46:                                     ; preds = %39, %52
  %47 = phi i32 [ %40, %39 ], [ %55, %52 ]
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !4106, metadata !717), !dbg !4126
  %48 = icmp slt i64 %41, %24, !dbg !4146
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !4107, metadata !1389), !dbg !4128
  %49 = load i32, i32* %7, align 4, !tbaa !1331
  br i1 %48, label %50, label %56, !dbg !4148, !llvm.loop !4171

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %22, align 4
  br label %25, !dbg !4148

; <label>:52:                                     ; preds = %39
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !4107, metadata !1389), !dbg !4128
  %53 = call i32 @savewd_restore(%struct.savewd* nonnull %5, i32 %40), !dbg !4174
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !4114, metadata !717), !dbg !4175
  %54 = icmp slt i32 %40, %53, !dbg !4176
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !4106, metadata !717), !dbg !4126
  %55 = select i1 %54, i32 %53, i32 %40, !dbg !4178
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !4106, metadata !717), !dbg !4126
  br label %46, !dbg !4179

; <label>:56:                                     ; preds = %46
  %57 = trunc i64 %41 to i32, !dbg !4180
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !4074, metadata !717) #9, !dbg !4180
  switch i32 %49, label %67 [
    i32 0, label %68
    i32 4, label %68
    i32 1, label %58
    i32 2, label %58
    i32 3, label %62
  ], !dbg !4182

; <label>:58:                                     ; preds = %56, %56
  %59 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !4183
  %60 = load i32, i32* %59, align 4, !dbg !4183, !tbaa !872
  %61 = call i32 @close(i32 %60) #9, !dbg !4184
  br label %68, !dbg !4185

; <label>:62:                                     ; preds = %56
  %63 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !4186
  %64 = load i32, i32* %63, align 4, !dbg !4186, !tbaa !872
  %65 = icmp slt i32 %64, 0, !dbg !4186
  br i1 %65, label %68, label %66, !dbg !4187

; <label>:66:                                     ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.86, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 239, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #15, !dbg !4188
  unreachable, !dbg !4188

; <label>:67:                                     ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.82, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.83, i64 0, i64 0), i32 243, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #15, !dbg !4189
  unreachable, !dbg !4189

; <label>:68:                                     ; preds = %18, %56, %56, %58, %62
  %69 = phi i32 [ %57, %56 ], [ %57, %56 ], [ %57, %58 ], [ %57, %62 ], [ 0, %18 ]
  %70 = phi i32 [ %47, %56 ], [ %47, %56 ], [ %47, %58 ], [ %47, %62 ], [ 0, %18 ]
  store i32 5, i32* %7, align 4, !dbg !4190, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !4104, metadata !717), !dbg !4125
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !4106, metadata !717), !dbg !4126
  %71 = icmp slt i32 %69, %0, !dbg !4191
  br i1 %71, label %72, label %86, !dbg !4193

; <label>:72:                                     ; preds = %68
  %73 = sext i32 %69 to i64, !dbg !4195
  br label %74, !dbg !4195

; <label>:74:                                     ; preds = %74, %72
  %75 = phi i64 [ %73, %72 ], [ %82, %74 ]
  %76 = phi i32 [ %70, %72 ], [ %81, %74 ]
  %77 = getelementptr inbounds i8*, i8** %1, i64 %75, !dbg !4195
  %78 = load i8*, i8** %77, align 8, !dbg !4195, !tbaa !725
  call void @llvm.dbg.value(metadata %struct.savewd* %5, i64 0, metadata !4107, metadata !1389), !dbg !4128
  %79 = call i32 %2(i8* %78, %struct.savewd* nonnull %5, i8* %3) #9, !dbg !4196
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4117, metadata !717), !dbg !4197
  %80 = icmp slt i32 %76, %79, !dbg !4198
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4106, metadata !717), !dbg !4126
  %81 = select i1 %80, i32 %79, i32 %76, !dbg !4200
  call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !4106, metadata !717), !dbg !4126
  %82 = add nsw i64 %75, 1, !dbg !4201
  call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !4106, metadata !717), !dbg !4126
  %83 = trunc i64 %82 to i32, !dbg !4191
  %84 = icmp eq i32 %83, %0, !dbg !4191
  br i1 %84, label %85, label %74, !dbg !4193, !llvm.loop !4203

; <label>:85:                                     ; preds = %74
  br label %86, !dbg !4206

; <label>:86:                                     ; preds = %85, %68
  %87 = phi i32 [ %70, %68 ], [ %81, %85 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #9, !dbg !4206
  ret i32 %87, !dbg !4207
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4208 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4253, metadata !717), !dbg !4259
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4254, metadata !717), !dbg !4260
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4255, metadata !717), !dbg !4261
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4256, metadata !717), !dbg !4262
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4257, metadata !717), !dbg !4263
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4258, metadata !717), !dbg !4264
  %7 = icmp eq i8* %1, null, !dbg !4265
  br i1 %7, label %10, label %8, !dbg !4267

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !4268
  br label %12, !dbg !4268

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !4269
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.91, i64 0, i64 0), i32 5) #9, !dbg !4270
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9, !dbg !4271
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.92, i64 0, i64 0), i32 5) #9, !dbg !4273
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9, !dbg !4274
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
  ], !dbg !4275

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4276
  unreachable, !dbg !4276

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.93, i64 0, i64 0), i32 5) #9, !dbg !4278
  %20 = load i8*, i8** %4, align 8, !dbg !4278, !tbaa !725
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !4279
  br label %146, !dbg !4281

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.94, i64 0, i64 0), i32 5) #9, !dbg !4282
  %24 = load i8*, i8** %4, align 8, !dbg !4282, !tbaa !725
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4282
  %26 = load i8*, i8** %25, align 8, !dbg !4282, !tbaa !725
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !4283
  br label %146, !dbg !4284

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.95, i64 0, i64 0), i32 5) #9, !dbg !4285
  %30 = load i8*, i8** %4, align 8, !dbg !4285, !tbaa !725
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4285
  %32 = load i8*, i8** %31, align 8, !dbg !4285, !tbaa !725
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4285
  %34 = load i8*, i8** %33, align 8, !dbg !4285, !tbaa !725
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !4286
  br label %146, !dbg !4287

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.96, i64 0, i64 0), i32 5) #9, !dbg !4288
  %38 = load i8*, i8** %4, align 8, !dbg !4288, !tbaa !725
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4288
  %40 = load i8*, i8** %39, align 8, !dbg !4288, !tbaa !725
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4288
  %42 = load i8*, i8** %41, align 8, !dbg !4288, !tbaa !725
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4288
  %44 = load i8*, i8** %43, align 8, !dbg !4288, !tbaa !725
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !4289
  br label %146, !dbg !4290

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.97, i64 0, i64 0), i32 5) #9, !dbg !4291
  %48 = load i8*, i8** %4, align 8, !dbg !4291, !tbaa !725
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4291
  %50 = load i8*, i8** %49, align 8, !dbg !4291, !tbaa !725
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4291
  %52 = load i8*, i8** %51, align 8, !dbg !4291, !tbaa !725
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4291
  %54 = load i8*, i8** %53, align 8, !dbg !4291, !tbaa !725
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4291
  %56 = load i8*, i8** %55, align 8, !dbg !4291, !tbaa !725
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !4292
  br label %146, !dbg !4293

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.98, i64 0, i64 0), i32 5) #9, !dbg !4294
  %60 = load i8*, i8** %4, align 8, !dbg !4294, !tbaa !725
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4294
  %62 = load i8*, i8** %61, align 8, !dbg !4294, !tbaa !725
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4294
  %64 = load i8*, i8** %63, align 8, !dbg !4294, !tbaa !725
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4294
  %66 = load i8*, i8** %65, align 8, !dbg !4294, !tbaa !725
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4294
  %68 = load i8*, i8** %67, align 8, !dbg !4294, !tbaa !725
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4294
  %70 = load i8*, i8** %69, align 8, !dbg !4294, !tbaa !725
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !4295
  br label %146, !dbg !4296

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.99, i64 0, i64 0), i32 5) #9, !dbg !4297
  %74 = load i8*, i8** %4, align 8, !dbg !4297, !tbaa !725
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4297
  %76 = load i8*, i8** %75, align 8, !dbg !4297, !tbaa !725
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4297
  %78 = load i8*, i8** %77, align 8, !dbg !4297, !tbaa !725
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4297
  %80 = load i8*, i8** %79, align 8, !dbg !4297, !tbaa !725
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4297
  %82 = load i8*, i8** %81, align 8, !dbg !4297, !tbaa !725
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4297
  %84 = load i8*, i8** %83, align 8, !dbg !4297, !tbaa !725
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4297
  %86 = load i8*, i8** %85, align 8, !dbg !4297, !tbaa !725
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !4298
  br label %146, !dbg !4299

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.100, i64 0, i64 0), i32 5) #9, !dbg !4300
  %90 = load i8*, i8** %4, align 8, !dbg !4300, !tbaa !725
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4300
  %92 = load i8*, i8** %91, align 8, !dbg !4300, !tbaa !725
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4300
  %94 = load i8*, i8** %93, align 8, !dbg !4300, !tbaa !725
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4300
  %96 = load i8*, i8** %95, align 8, !dbg !4300, !tbaa !725
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4300
  %98 = load i8*, i8** %97, align 8, !dbg !4300, !tbaa !725
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4300
  %100 = load i8*, i8** %99, align 8, !dbg !4300, !tbaa !725
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4300
  %102 = load i8*, i8** %101, align 8, !dbg !4300, !tbaa !725
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4300
  %104 = load i8*, i8** %103, align 8, !dbg !4300, !tbaa !725
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !4301
  br label %146, !dbg !4302

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.101, i64 0, i64 0), i32 5) #9, !dbg !4303
  %108 = load i8*, i8** %4, align 8, !dbg !4303, !tbaa !725
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4303
  %110 = load i8*, i8** %109, align 8, !dbg !4303, !tbaa !725
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4303
  %112 = load i8*, i8** %111, align 8, !dbg !4303, !tbaa !725
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4303
  %114 = load i8*, i8** %113, align 8, !dbg !4303, !tbaa !725
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4303
  %116 = load i8*, i8** %115, align 8, !dbg !4303, !tbaa !725
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4303
  %118 = load i8*, i8** %117, align 8, !dbg !4303, !tbaa !725
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4303
  %120 = load i8*, i8** %119, align 8, !dbg !4303, !tbaa !725
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4303
  %122 = load i8*, i8** %121, align 8, !dbg !4303, !tbaa !725
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4303
  %124 = load i8*, i8** %123, align 8, !dbg !4303, !tbaa !725
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !4304
  br label %146, !dbg !4305

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.102, i64 0, i64 0), i32 5) #9, !dbg !4306
  %128 = load i8*, i8** %4, align 8, !dbg !4306, !tbaa !725
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4306
  %130 = load i8*, i8** %129, align 8, !dbg !4306, !tbaa !725
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4306
  %132 = load i8*, i8** %131, align 8, !dbg !4306, !tbaa !725
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4306
  %134 = load i8*, i8** %133, align 8, !dbg !4306, !tbaa !725
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4306
  %136 = load i8*, i8** %135, align 8, !dbg !4306, !tbaa !725
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4306
  %138 = load i8*, i8** %137, align 8, !dbg !4306, !tbaa !725
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4306
  %140 = load i8*, i8** %139, align 8, !dbg !4306, !tbaa !725
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4306
  %142 = load i8*, i8** %141, align 8, !dbg !4306, !tbaa !725
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4306
  %144 = load i8*, i8** %143, align 8, !dbg !4306, !tbaa !725
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !4307
  br label %146, !dbg !4308

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4309
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4310 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4314, metadata !717), !dbg !4320
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4315, metadata !717), !dbg !4321
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4316, metadata !717), !dbg !4322
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4317, metadata !717), !dbg !4323
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4318, metadata !717), !dbg !4324
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4319, metadata !717), !dbg !4325
  br label %6, !dbg !4326

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4319, metadata !717), !dbg !4325
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4328
  %9 = load i8*, i8** %8, align 8, !dbg !4328, !tbaa !725
  %10 = icmp eq i8* %9, null, !dbg !4331
  %11 = add i64 %7, 1, !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4319, metadata !717), !dbg !4325
  br i1 %10, label %12, label %6, !dbg !4331, !llvm.loop !4335

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4338
  ret void, !dbg !4339
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4340 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4351, metadata !717), !dbg !4359
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4352, metadata !717), !dbg !4360
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4353, metadata !717), !dbg !4361
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4354, metadata !717), !dbg !4362
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4355, metadata !717), !dbg !4363
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4364
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9, !dbg !4364
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4357, metadata !717), !dbg !4365
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4356, metadata !717), !dbg !4366
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4367
  %12 = icmp ult i32 %11, 41, !dbg !4367
  br i1 %12, label %13, label %18, !dbg !4367

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4371
  %15 = sext i32 %11 to i64, !dbg !4371
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4371
  %17 = add i32 %11, 8, !dbg !4371
  store i32 %17, i32* %8, align 8, !dbg !4371
  br label %21, !dbg !4371

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4373
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4373
  store i8* %20, i8** %10, align 8, !dbg !4373
  br label %21, !dbg !4373

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4367
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4375
  %25 = load i8*, i8** %24, align 8, !dbg !4375
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4377
  store i8* %25, i8** %26, align 16, !dbg !4378, !tbaa !725
  %27 = icmp eq i8* %25, null, !dbg !4379
  br i1 %27, label %30, label %28, !dbg !4380

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %29 = icmp ult i32 %22, 41, !dbg !4367
  br i1 %29, label %35, label %32, !dbg !4367

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4382
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9, !dbg !4383
  ret void, !dbg !4383

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4373
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4373
  store i8* %34, i8** %10, align 8, !dbg !4373
  br label %40, !dbg !4373

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4371
  %37 = sext i32 %22 to i64, !dbg !4371
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4371
  %39 = add i32 %22, 8, !dbg !4371
  store i32 %39, i32* %8, align 8, !dbg !4371
  br label %40, !dbg !4371

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4367
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4375
  %44 = load i8*, i8** %43, align 8, !dbg !4375
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4377
  store i8* %44, i8** %45, align 8, !dbg !4378, !tbaa !725
  %46 = icmp eq i8* %44, null, !dbg !4379
  br i1 %46, label %30, label %47, !dbg !4380

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %48 = icmp ult i32 %41, 41, !dbg !4367
  br i1 %48, label %52, label %49, !dbg !4367

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4373
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4373
  store i8* %51, i8** %10, align 8, !dbg !4373
  br label %57, !dbg !4373

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4371
  %54 = sext i32 %41 to i64, !dbg !4371
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4371
  %56 = add i32 %41, 8, !dbg !4371
  store i32 %56, i32* %8, align 8, !dbg !4371
  br label %57, !dbg !4371

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4367
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4375
  %61 = load i8*, i8** %60, align 8, !dbg !4375
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4377
  store i8* %61, i8** %62, align 16, !dbg !4378, !tbaa !725
  %63 = icmp eq i8* %61, null, !dbg !4379
  br i1 %63, label %30, label %64, !dbg !4380

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %65 = icmp ult i32 %58, 41, !dbg !4367
  br i1 %65, label %69, label %66, !dbg !4367

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4373
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4373
  store i8* %68, i8** %10, align 8, !dbg !4373
  br label %74, !dbg !4373

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4371
  %71 = sext i32 %58 to i64, !dbg !4371
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4371
  %73 = add i32 %58, 8, !dbg !4371
  store i32 %73, i32* %8, align 8, !dbg !4371
  br label %74, !dbg !4371

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4367
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4375
  %78 = load i8*, i8** %77, align 8, !dbg !4375
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4377
  store i8* %78, i8** %79, align 8, !dbg !4378, !tbaa !725
  %80 = icmp eq i8* %78, null, !dbg !4379
  br i1 %80, label %30, label %81, !dbg !4380

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %82 = icmp ult i32 %75, 41, !dbg !4367
  br i1 %82, label %86, label %83, !dbg !4367

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4373
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4373
  store i8* %85, i8** %10, align 8, !dbg !4373
  br label %91, !dbg !4373

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4371
  %88 = sext i32 %75 to i64, !dbg !4371
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4371
  %90 = add i32 %75, 8, !dbg !4371
  store i32 %90, i32* %8, align 8, !dbg !4371
  br label %91, !dbg !4371

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4367
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4375
  %95 = load i8*, i8** %94, align 8, !dbg !4375
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4377
  store i8* %95, i8** %96, align 16, !dbg !4378, !tbaa !725
  %97 = icmp eq i8* %95, null, !dbg !4379
  br i1 %97, label %30, label %98, !dbg !4380

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %99 = icmp ult i32 %92, 41, !dbg !4367
  br i1 %99, label %103, label %100, !dbg !4367

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4373
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4373
  store i8* %102, i8** %10, align 8, !dbg !4373
  br label %108, !dbg !4373

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4371
  %105 = sext i32 %92 to i64, !dbg !4371
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4371
  %107 = add i32 %92, 8, !dbg !4371
  store i32 %107, i32* %8, align 8, !dbg !4371
  br label %108, !dbg !4371

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4375
  %111 = load i8*, i8** %110, align 8, !dbg !4375
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4377
  store i8* %111, i8** %112, align 8, !dbg !4378, !tbaa !725
  %113 = icmp eq i8* %111, null, !dbg !4379
  br i1 %113, label %30, label %114, !dbg !4380

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %115 = load i8*, i8** %10, align 8, !dbg !4373
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4373
  store i8* %116, i8** %10, align 8, !dbg !4373
  %117 = bitcast i8* %115 to i8**, !dbg !4375
  %118 = load i8*, i8** %117, align 8, !dbg !4375
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4377
  store i8* %118, i8** %119, align 16, !dbg !4378, !tbaa !725
  %120 = icmp eq i8* %118, null, !dbg !4379
  br i1 %120, label %30, label %121, !dbg !4380

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %122 = load i8*, i8** %10, align 8, !dbg !4373
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4373
  store i8* %123, i8** %10, align 8, !dbg !4373
  %124 = bitcast i8* %122 to i8**, !dbg !4375
  %125 = load i8*, i8** %124, align 8, !dbg !4375
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4377
  store i8* %125, i8** %126, align 8, !dbg !4378, !tbaa !725
  %127 = icmp eq i8* %125, null, !dbg !4379
  br i1 %127, label %30, label %128, !dbg !4380

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %129 = load i8*, i8** %10, align 8, !dbg !4373
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4373
  store i8* %130, i8** %10, align 8, !dbg !4373
  %131 = bitcast i8* %129 to i8**, !dbg !4375
  %132 = load i8*, i8** %131, align 8, !dbg !4375
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4377
  store i8* %132, i8** %133, align 16, !dbg !4378, !tbaa !725
  %134 = icmp eq i8* %132, null, !dbg !4379
  br i1 %134, label %30, label %135, !dbg !4380

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %136 = load i8*, i8** %10, align 8, !dbg !4373
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4373
  store i8* %137, i8** %10, align 8, !dbg !4373
  %138 = bitcast i8* %136 to i8**, !dbg !4375
  %139 = load i8*, i8** %138, align 8, !dbg !4375
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4377
  store i8* %139, i8** %140, align 8, !dbg !4378, !tbaa !725
  %141 = icmp eq i8* %139, null, !dbg !4379
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4356, metadata !717), !dbg !4366
  %142 = select i1 %141, i64 9, i64 10, !dbg !4380
  br label %30, !dbg !4380
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4384 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4388, metadata !717), !dbg !4397
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4389, metadata !717), !dbg !4398
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4390, metadata !717), !dbg !4399
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4391, metadata !717), !dbg !4400
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4401
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9, !dbg !4401
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4392, metadata !717), !dbg !4402
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4403
  call void @llvm.va_start(i8* nonnull %6), !dbg !4403
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4404
  call void @llvm.va_end(i8* nonnull %6), !dbg !4405
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9, !dbg !4406
  ret void, !dbg !4406
}

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4407 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.105, i64 0, i64 0), i32 5) #9, !dbg !4408
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.106, i64 0, i64 0)) #9, !dbg !4409
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.107, i64 0, i64 0), i32 5) #9, !dbg !4411
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.108, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.109, i64 0, i64 0)) #9, !dbg !4412
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.110, i64 0, i64 0), i32 5) #9, !dbg !4413
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4413, !tbaa !725
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9, !dbg !4414
  ret void, !dbg !4415
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4416 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4418, metadata !717), !dbg !4420
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4419, metadata !717), !dbg !4421
  %3 = udiv i64 9223372036854775807, %1, !dbg !4422
  %4 = icmp ult i64 %3, %0, !dbg !4422
  br i1 %4, label %5, label %6, !dbg !4424

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4425
  unreachable, !dbg !4425

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4426
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4427, metadata !717) #9, !dbg !4434
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !4436
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4433, metadata !717) #9, !dbg !4437
  %9 = icmp eq i8* %8, null, !dbg !4438
  %10 = icmp ne i64 %7, 0, !dbg !4440
  %11 = and i1 %10, %9, !dbg !4442
  br i1 %11, label %12, label %13, !dbg !4442

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4443
  unreachable, !dbg !4443

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4444
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4428 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4427, metadata !717), !dbg !4445
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4446
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4433, metadata !717), !dbg !4447
  %3 = icmp eq i8* %2, null, !dbg !4448
  %4 = icmp ne i64 %0, 0, !dbg !4449
  %5 = and i1 %4, %3, !dbg !4450
  br i1 %5, label %6, label %7, !dbg !4450

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4451
  unreachable, !dbg !4451

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4452
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4453 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4457, metadata !717), !dbg !4460
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4458, metadata !717), !dbg !4461
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4459, metadata !717), !dbg !4462
  %4 = udiv i64 9223372036854775807, %2, !dbg !4463
  %5 = icmp ult i64 %4, %1, !dbg !4463
  br i1 %5, label %6, label %7, !dbg !4465

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4466
  unreachable, !dbg !4466

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4467
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4468, metadata !717) #9, !dbg !4474
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4473, metadata !717) #9, !dbg !4476
  %9 = icmp eq i64 %8, 0, !dbg !4477
  %10 = icmp ne i8* %0, null, !dbg !4479
  %11 = and i1 %10, %9, !dbg !4481
  br i1 %11, label %12, label %13, !dbg !4481

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !4482
  br label %19, !dbg !4484

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !4485
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4468, metadata !717) #9, !dbg !4474
  %15 = icmp eq i8* %14, null, !dbg !4486
  %16 = icmp ne i64 %8, 0, !dbg !4488
  %17 = and i1 %16, %15, !dbg !4490
  br i1 %17, label %18, label %19, !dbg !4490

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4491
  unreachable, !dbg !4491

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4492
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4469 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4468, metadata !717), !dbg !4493
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4473, metadata !717), !dbg !4494
  %3 = icmp eq i64 %1, 0, !dbg !4495
  %4 = icmp ne i8* %0, null, !dbg !4496
  %5 = and i1 %4, %3, !dbg !4497
  br i1 %5, label %6, label %7, !dbg !4497

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !4498
  br label %13, !dbg !4499

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !4500
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4468, metadata !717), !dbg !4493
  %9 = icmp eq i8* %8, null, !dbg !4501
  %10 = icmp ne i64 %1, 0, !dbg !4502
  %11 = and i1 %10, %9, !dbg !4503
  br i1 %11, label %12, label %13, !dbg !4503

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4504
  unreachable, !dbg !4504

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4505
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !654 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !659, metadata !717), !dbg !4506
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !660, metadata !717), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !661, metadata !717), !dbg !4508
  %4 = load i64, i64* %1, align 8, !dbg !4509, !tbaa !3152
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !662, metadata !717), !dbg !4510
  %5 = icmp eq i8* %0, null, !dbg !4511
  br i1 %5, label %6, label %13, !dbg !4513

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4514
  br i1 %7, label %8, label %17, !dbg !4517

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4518
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !662, metadata !717), !dbg !4510
  %10 = icmp ugt i64 %2, 128, !dbg !4520
  %11 = zext i1 %10 to i64, !dbg !4520
  %12 = add nuw nsw i64 %9, %11, !dbg !4521
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !662, metadata !717), !dbg !4510
  br label %17, !dbg !4522

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4523
  %15 = icmp ugt i64 %14, %4, !dbg !4526
  br i1 %15, label %20, label %16, !dbg !4527

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4528
  unreachable, !dbg !4528

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !662, metadata !717), !dbg !4510
  store i64 %18, i64* %1, align 8, !dbg !4529, !tbaa !3152
  %19 = mul i64 %18, %2, !dbg !4530
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4468, metadata !717) #9, !dbg !4531
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4473, metadata !717) #9, !dbg !4533
  br label %27, !dbg !4534

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4535
  %22 = add i64 %4, 1, !dbg !4536
  %23 = add i64 %22, %21, !dbg !4537
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !662, metadata !717), !dbg !4510
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !662, metadata !717), !dbg !4510
  store i64 %23, i64* %1, align 8, !dbg !4529, !tbaa !3152
  %24 = mul i64 %23, %2, !dbg !4530
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4468, metadata !717) #9, !dbg !4531
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4473, metadata !717) #9, !dbg !4533
  %25 = icmp eq i64 %24, 0, !dbg !4538
  br i1 %25, label %26, label %27, !dbg !4534

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #9, !dbg !4539
  br label %34, !dbg !4540

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9, !dbg !4541
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4468, metadata !717) #9, !dbg !4531
  %30 = icmp eq i8* %29, null, !dbg !4542
  %31 = icmp ne i64 %28, 0, !dbg !4543
  %32 = and i1 %31, %30, !dbg !4544
  br i1 %32, label %33, label %34, !dbg !4544

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4545
  unreachable, !dbg !4545

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4546
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4547 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4549, metadata !717), !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4427, metadata !717) #9, !dbg !4551
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4553
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4433, metadata !717) #9, !dbg !4554
  %3 = icmp eq i8* %2, null, !dbg !4555
  %4 = icmp ne i64 %0, 0, !dbg !4556
  %5 = and i1 %4, %3, !dbg !4557
  br i1 %5, label %6, label %7, !dbg !4557

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4558
  unreachable, !dbg !4558

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4559
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4560 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4564, metadata !717), !dbg !4566
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4565, metadata !717), !dbg !4567
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !659, metadata !717) #9, !dbg !4568
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !660, metadata !717) #9, !dbg !4570
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !661, metadata !717) #9, !dbg !4571
  %3 = load i64, i64* %1, align 8, !dbg !4572, !tbaa !3152
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !662, metadata !717) #9, !dbg !4573
  %4 = icmp eq i8* %0, null, !dbg !4574
  br i1 %4, label %5, label %8, !dbg !4575

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4576
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !662, metadata !717) #9, !dbg !4573
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !662, metadata !717) #9, !dbg !4573
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4577
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !662, metadata !717) #9, !dbg !4573
  store i64 %7, i64* %1, align 8, !dbg !4578, !tbaa !3152
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4468, metadata !717) #9, !dbg !4579
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4473, metadata !717) #9, !dbg !4581
  br label %17, !dbg !4582

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4583
  br i1 %9, label %11, label %10, !dbg !4584

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4585
  unreachable, !dbg !4585

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4586
  %13 = add i64 %3, 1, !dbg !4587
  %14 = add i64 %13, %12, !dbg !4588
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !662, metadata !717) #9, !dbg !4573
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !662, metadata !717) #9, !dbg !4573
  store i64 %14, i64* %1, align 8, !dbg !4578, !tbaa !3152
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4468, metadata !717) #9, !dbg !4579
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4473, metadata !717) #9, !dbg !4581
  %15 = icmp eq i64 %14, 0, !dbg !4589
  br i1 %15, label %16, label %17, !dbg !4582

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #9, !dbg !4590
  br label %24, !dbg !4591

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9, !dbg !4592
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4468, metadata !717) #9, !dbg !4579
  %20 = icmp eq i8* %19, null, !dbg !4593
  %21 = icmp ne i64 %18, 0, !dbg !4594
  %22 = and i1 %21, %20, !dbg !4595
  br i1 %22, label %23, label %24, !dbg !4595

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4596
  unreachable, !dbg !4596

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4597
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4598 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4600, metadata !717), !dbg !4601
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4427, metadata !717) #9, !dbg !4602
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !4604
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4433, metadata !717) #9, !dbg !4605
  %3 = icmp eq i8* %2, null, !dbg !4606
  %4 = icmp ne i64 %0, 0, !dbg !4607
  %5 = and i1 %4, %3, !dbg !4608
  br i1 %5, label %6, label %7, !dbg !4608

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4609
  unreachable, !dbg !4609

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4610
  ret i8* %2, !dbg !4611
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4612 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4614, metadata !717), !dbg !4617
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4615, metadata !717), !dbg !4618
  %3 = udiv i64 9223372036854775807, %1, !dbg !4619
  %4 = icmp ult i64 %3, %0, !dbg !4619
  br i1 %4, label %8, label %5, !dbg !4621

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !4622
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4616, metadata !717), !dbg !4624
  %7 = icmp eq i8* %6, null, !dbg !4625
  br i1 %7, label %8, label %9, !dbg !4626

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4628
  unreachable, !dbg !4628

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4629
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4630 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4634, metadata !717), !dbg !4636
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4635, metadata !717), !dbg !4637
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4427, metadata !717) #9, !dbg !4638
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !4640
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4433, metadata !717) #9, !dbg !4641
  %4 = icmp eq i8* %3, null, !dbg !4642
  %5 = icmp ne i64 %1, 0, !dbg !4643
  %6 = and i1 %5, %4, !dbg !4644
  br i1 %6, label %7, label %8, !dbg !4644

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4645
  unreachable, !dbg !4645

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4646
  ret i8* %3, !dbg !4647
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4648 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4650, metadata !717), !dbg !4651
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4652
  %3 = add i64 %2, 1, !dbg !4653
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4634, metadata !717) #9, !dbg !4654
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4635, metadata !717) #9, !dbg !4657
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4427, metadata !717) #9, !dbg !4658
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !4660
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4433, metadata !717) #9, !dbg !4661
  %5 = icmp eq i8* %4, null, !dbg !4662
  %6 = icmp ne i64 %3, 0, !dbg !4663
  %7 = and i1 %6, %5, !dbg !4664
  br i1 %7, label %8, label %9, !dbg !4664

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4665
  unreachable, !dbg !4665

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9, !dbg !4666
  ret i8* %4, !dbg !4667
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4668 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4670, !tbaa !872
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.121, i64 0, i64 0), i32 5) #9, !dbg !4671
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* %2) #9, !dbg !4672
  tail call void @abort() #15, !dbg !4674
  unreachable, !dbg !4674
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4675 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4678, metadata !717), !dbg !4684
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4679, metadata !717), !dbg !4685
  %3 = icmp eq i64 %0, 0, !dbg !4686
  %4 = icmp eq i64 %1, 0, !dbg !4687
  %5 = or i1 %3, %4, !dbg !4689
  br i1 %5, label %12, label %6, !dbg !4689

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4690
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4681, metadata !717), !dbg !4691
  %8 = udiv i64 %7, %1, !dbg !4692
  %9 = icmp eq i64 %8, %0, !dbg !4694
  br i1 %9, label %12, label %10, !dbg !4695

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4696
  store i32 12, i32* %11, align 4, !dbg !4698, !tbaa !872
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4678, metadata !717), !dbg !4684
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4679, metadata !717), !dbg !4685
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !4699
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4680, metadata !717), !dbg !4700
  br label %16, !dbg !4701

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4702
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.savewd*) local_unnamed_addr #6 !dbg !4703 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4720, metadata !717), !dbg !4729
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4721, metadata !717), !dbg !4730
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4722, metadata !717), !dbg !4731
  tail call void @llvm.dbg.value(metadata %struct.savewd* %3, i64 0, metadata !4723, metadata !717), !dbg !4732
  %6 = bitcast i32* %5 to i8*, !dbg !4733
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9, !dbg !4733
  %7 = icmp eq i32* %0, null, !dbg !4734
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4720, metadata !717), !dbg !4729
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4736
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4720, metadata !717), !dbg !4729
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.savewd* %3) #9, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4724, metadata !717), !dbg !4738
  %10 = icmp ugt i64 %9, -3, !dbg !4739
  %11 = icmp ne i64 %2, 0, !dbg !4740
  %12 = and i1 %11, %10, !dbg !4742
  br i1 %12, label %13, label %18, !dbg !4742

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !4743
  br i1 %14, label %18, label %15, !dbg !4745

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4747, !tbaa !1176
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4726, metadata !717), !dbg !4748
  %17 = zext i8 %16 to i32, !dbg !4749
  store i32 %17, i32* %8, align 4, !dbg !4750, !tbaa !872
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9, !dbg !4751
  ret i64 %19, !dbg !4751
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.savewd*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4752 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4797, metadata !717), !dbg !4802
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !4803
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4804, metadata !717), !dbg !4807
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4809
  %4 = load i32, i32* %3, align 8, !dbg !4809, !tbaa !4810
  %5 = and i32 %4, 32, !dbg !4809
  %6 = icmp eq i32 %5, 0, !dbg !4811
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !4812
  %8 = icmp ne i32 %7, 0, !dbg !4813
  br i1 %6, label %9, label %19, !dbg !4814

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4816
  %11 = icmp ne i64 %2, 0, !dbg !4816
  %12 = or i1 %11, %10, !dbg !4816
  %13 = sext i1 %8 to i32, !dbg !4816
  br i1 %12, label %22, label %14, !dbg !4816

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4818
  %16 = load i32, i32* %15, align 4, !dbg !4818, !tbaa !872
  %17 = icmp ne i32 %16, 9, !dbg !4820
  %18 = sext i1 %17 to i32, !dbg !4820
  br label %22, !dbg !4820

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4822

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4824
  store i32 0, i32* %21, align 4, !dbg !4826, !tbaa !872
  br label %22, !dbg !4824

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4827
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @open_safer(i8* nocapture readonly, i32, ...) local_unnamed_addr #6 !dbg !4828 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4833, metadata !717), !dbg !4848
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4834, metadata !717), !dbg !4849
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4835, metadata !717), !dbg !4850
  %4 = and i32 %1, 64, !dbg !4851
  %5 = icmp eq i32 %4, 0, !dbg !4851
  br i1 %5, label %25, label %6, !dbg !4852

; <label>:6:                                      ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4853
  call void @llvm.lifetime.start(i64 24, i8* nonnull %7) #9, !dbg !4853
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4836, metadata !717), !dbg !4854
  call void @llvm.va_start(i8* nonnull %7), !dbg !4855
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0, !dbg !4856
  %9 = load i32, i32* %8, align 16, !dbg !4856
  %10 = icmp ult i32 %9, 41, !dbg !4856
  br i1 %10, label %11, label %17, !dbg !4856

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !4857
  %13 = load i8*, i8** %12, align 16, !dbg !4857
  %14 = sext i32 %9 to i64, !dbg !4857
  %15 = getelementptr i8, i8* %13, i64 %14, !dbg !4857
  %16 = add i32 %9, 8, !dbg !4857
  store i32 %16, i32* %8, align 16, !dbg !4857
  br label %21, !dbg !4857

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !4859
  %19 = load i8*, i8** %18, align 8, !dbg !4859
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4859
  store i8* %20, i8** %18, align 8, !dbg !4859
  br label %21, !dbg !4859

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8* [ %15, %11 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !4861
  %24 = load i32, i32* %23, align 4, !dbg !4861
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !4835, metadata !717), !dbg !4850
  call void @llvm.va_end(i8* nonnull %7), !dbg !4863
  call void @llvm.lifetime.end(i64 24, i8* nonnull %7) #9, !dbg !4864
  br label %25, !dbg !4865

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !4835, metadata !717), !dbg !4850
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #9, !dbg !4866
  %28 = call i32 @fd_safer(i32 %27) #9, !dbg !4867
  ret i32 %28, !dbg !4869
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4870 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4875, metadata !717), !dbg !4895
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4876, metadata !717), !dbg !4896
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !4897
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4877, metadata !717), !dbg !4898
  %3 = icmp eq i8* %2, null, !dbg !4899
  br i1 %3, label %15, label %4, !dbg !4900

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4885, metadata !717), !dbg !4901
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4886, metadata !717), !dbg !4902
  %5 = load i8, i8* %2, align 1, !dbg !4903, !tbaa !1176
  %6 = icmp eq i8 %5, 67, !dbg !4905
  br i1 %6, label %7, label %11, !dbg !4908

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4910
  %9 = load i8, i8* %8, align 1, !dbg !4910, !tbaa !1176
  %10 = icmp eq i8 %9, 0, !dbg !4913
  br i1 %10, label %14, label %11, !dbg !4915

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4891, metadata !717), !dbg !4917
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0)) #9, !dbg !4918
  %13 = icmp eq i32 %12, 0, !dbg !4920
  br i1 %13, label %14, label %15, !dbg !4922

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4876, metadata !717), !dbg !4896
  br label %15, !dbg !4924

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4925
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4926 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4938, metadata !717), !dbg !5012
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5005, metadata !717), !dbg !5014
  %3 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !5015
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4930, metadata !717), !dbg !5016
  %4 = icmp eq i8* %3, null, !dbg !5017
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), i8* %3, !dbg !5019
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4930, metadata !717), !dbg !5016
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5020, !tbaa !725
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4952, metadata !717) #9, !dbg !5021
  %7 = icmp eq i8* %6, null, !dbg !5022
  br i1 %7, label %8, label %127, !dbg !5023

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.137, i64 0, i64 0)) #9, !dbg !5024
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4953, metadata !717) #9, !dbg !5025
  %10 = icmp eq i8* %9, null, !dbg !5026
  br i1 %10, label %14, label %11, !dbg !5028

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5029, !tbaa !1176
  %13 = icmp eq i8 %12, 0, !dbg !5031
  br i1 %13, label %14, label %15, !dbg !5032

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5034

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.138, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4953, metadata !717) #9, !dbg !5025
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !5035
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4956, metadata !717) #9, !dbg !5036
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4958, metadata !717) #9, !dbg !5037
  %18 = icmp eq i64 %17, 0, !dbg !5038
  br i1 %18, label %24, label %19, !dbg !5039

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5040
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5040
  %22 = load i8, i8* %21, align 1, !dbg !5040, !tbaa !1176
  %23 = icmp ne i8 %22, 47, !dbg !5042
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5043
  %27 = add i64 %17, 14, !dbg !5044
  %28 = add i64 %27, %26, !dbg !5045
  %29 = tail call noalias i8* @malloc(i64 %28) #9, !dbg !5046
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4955, metadata !717) #9, !dbg !5047
  %30 = icmp eq i8* %29, null, !dbg !5048
  br i1 %30, label %125, label %31, !dbg !5048

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9, !dbg !5049
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5052

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5053, !tbaa !1176
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5055
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !5056
  br label %37, !dbg !5057

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5055
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.139, i64 0, i64 0), i64 14, i32 1, i1 false) #9, !dbg !5056
  br label %37, !dbg !5057

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9, !dbg !5058
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4960, metadata !717) #9, !dbg !5059
  %39 = icmp slt i32 %38, 0, !dbg !5060
  br i1 %39, label %123, label %40, !dbg !5061

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.140, i64 0, i64 0)) #9, !dbg !5062
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4961, metadata !717) #9, !dbg !5063
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5064
  br i1 %42, label %48, label %43, !dbg !5065

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5066

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9, !dbg !5067
  br label %123, !dbg !5069

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5002, metadata !717) #9, !dbg !5066
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5003, metadata !717) #9, !dbg !5070
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9, !dbg !5071
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9, !dbg !5072
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5073, metadata !717) #9, !dbg !5078
  %53 = load i8*, i8** %46, align 8, !dbg !5080, !tbaa !5081
  %54 = load i8*, i8** %47, align 8, !dbg !5080, !tbaa !5082
  %55 = icmp ult i8* %53, %54, !dbg !5080
  br i1 %55, label %58, label %56, !dbg !5080, !prof !1171

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !5083
  br label %62, !dbg !5083

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5085
  store i8* %59, i8** %46, align 8, !dbg !5085, !tbaa !5081
  %60 = load i8, i8* %53, align 1, !dbg !5085, !tbaa !1176
  %61 = zext i8 %60 to i32, !dbg !5085
  br label %62, !dbg !5085

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5087
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5004, metadata !717) #9, !dbg !5089
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5090

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5091

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5073, metadata !717) #9, !dbg !5091
  %66 = load i8*, i8** %46, align 8, !dbg !5095, !tbaa !5081
  %67 = load i8*, i8** %47, align 8, !dbg !5095, !tbaa !5082
  %68 = icmp ult i8* %66, %67, !dbg !5095
  br i1 %68, label %71, label %69, !dbg !5095, !prof !1171

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9, !dbg !5096
  br label %75, !dbg !5096

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5097
  store i8* %72, i8** %46, align 8, !dbg !5097, !tbaa !5081
  %73 = load i8, i8* %66, align 1, !dbg !5097, !tbaa !1176
  %74 = zext i8 %73 to i32, !dbg !5097
  br label %75, !dbg !5097

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5098
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5004, metadata !717) #9, !dbg !5089
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5099, !llvm.loop !5101

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9, !dbg !5104
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.141, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9, !dbg !5105
  %80 = icmp slt i32 %79, 2, !dbg !5107
  br i1 %80, label %115, label %81, !dbg !5108

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #14, !dbg !5109
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5009, metadata !717) #9, !dbg !5110
  %83 = call i64 @strlen(i8* nonnull %45) #14, !dbg !5111
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5010, metadata !717) #9, !dbg !5112
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5011, metadata !717) #9, !dbg !5113
  %84 = icmp eq i64 %51, 0, !dbg !5114
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5116

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5003, metadata !717) #9, !dbg !5070
  %89 = add i64 %86, 2, !dbg !5117
  %90 = call noalias i8* @malloc(i64 %89) #9, !dbg !5119
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5002, metadata !717) #9, !dbg !5066
  br label %95, !dbg !5120

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5121
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5003, metadata !717) #9, !dbg !5070
  %93 = add i64 %92, 1, !dbg !5123
  %94 = call i8* @realloc(i8* %52, i64 %93) #9, !dbg !5124
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5002, metadata !717) #9, !dbg !5066
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5002, metadata !717) #9, !dbg !5066
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5003, metadata !717) #9, !dbg !5070
  %98 = icmp eq i8* %97, null, !dbg !5125
  br i1 %98, label %99, label %100, !dbg !5127

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5003, metadata !717) #9, !dbg !5070
  call void @free(i8* %52) #9, !dbg !5128
  br label %116, !dbg !5130

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5131
  %102 = xor i64 %83, -1, !dbg !5132
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5132
  %104 = xor i64 %82, -1, !dbg !5133
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5133
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5134, metadata !717) #9, !dbg !5142
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5141, metadata !717) #9, !dbg !5142
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9, !dbg !5144
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9, !dbg !5145
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5134, metadata !717) #9, !dbg !5146
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5141, metadata !717) #9, !dbg !5146
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9, !dbg !5148
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9, !dbg !5149
  br label %111, !dbg !5150

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5066

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5002, metadata !717) #9, !dbg !5066
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5003, metadata !717) #9, !dbg !5070
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !5150
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !5150
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5066

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5066

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5002, metadata !717) #9, !dbg !5066
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5003, metadata !717) #9, !dbg !5070
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9, !dbg !5150
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9, !dbg !5150
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9, !dbg !5151
  %120 = icmp eq i64 %117, 0, !dbg !5152
  br i1 %120, label %123, label %121, !dbg !5154

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5155
  store i8 0, i8* %122, align 1, !dbg !5157, !tbaa !1176
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4952, metadata !717) #9, !dbg !5021
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4952, metadata !717) #9, !dbg !5021
  call void @free(i8* %29) #9, !dbg !5158
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.136, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4952, metadata !717) #9, !dbg !5021
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5159, !tbaa !725
  br label %127, !dbg !5160

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4931, metadata !717), !dbg !5161
  %129 = load i8, i8* %128, align 1, !dbg !5162, !tbaa !1176
  %130 = icmp eq i8 %129, 0, !dbg !5163
  br i1 %130, label %157, label %131, !dbg !5164

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5166

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9, !dbg !5166
  %136 = icmp eq i32 %135, 0, !dbg !5167
  br i1 %136, label %143, label %137, !dbg !5168

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5169
  br i1 %138, label %139, label %147, !dbg !5171

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5172
  %141 = load i8, i8* %140, align 1, !dbg !5172, !tbaa !1176
  %142 = icmp eq i8 %141, 0, !dbg !5174
  br i1 %142, label %143, label %147, !dbg !5175

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #14, !dbg !5177
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5179
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5180
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4930, metadata !717), !dbg !5016
  br label %157, !dbg !5181

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #14, !dbg !5182
  %149 = add i64 %148, 1, !dbg !5183
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5184
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4931, metadata !717), !dbg !5161
  %151 = call i64 @strlen(i8* %150) #14, !dbg !5185
  %152 = add i64 %151, 1, !dbg !5186
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5187
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4931, metadata !717), !dbg !5161
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4931, metadata !717), !dbg !5161
  %154 = load i8, i8* %153, align 1, !dbg !5162, !tbaa !1176
  %155 = icmp eq i8 %154, 0, !dbg !5163
  br i1 %155, label %156, label %132, !dbg !5164, !llvm.loop !5188

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5016

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4930, metadata !717), !dbg !5016
  %159 = load i8, i8* %158, align 1, !dbg !5191, !tbaa !1176
  %160 = icmp eq i8 %159, 0, !dbg !5193
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.142, i64 0, i64 0), i8* %158, !dbg !5194
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4930, metadata !717), !dbg !5016
  ret i8* %161, !dbg !5195
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

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
define i64 @mkancesdirs(i8*, %struct.savewd*, i32 (i8*, i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 !dbg !5196 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5202, metadata !717), !dbg !5219
  tail call void @llvm.dbg.value(metadata %struct.savewd* %1, i64 0, metadata !5203, metadata !717), !dbg !5220
  tail call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, i64 0, metadata !5204, metadata !717), !dbg !5221
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5205, metadata !717), !dbg !5222
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !5206, metadata !717), !dbg !5223
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5207, metadata !717), !dbg !5224
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5208, metadata !717), !dbg !5225
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5210, metadata !717), !dbg !5226
  br label %5, !dbg !5227

; <label>:5:                                      ; preds = %4, %67
  %6 = phi i8* [ %0, %4 ], [ %24, %67 ]
  %7 = phi i8* [ null, %4 ], [ %19, %67 ]
  %8 = phi i8 [ 0, %4 ], [ %61, %67 ]
  %9 = load i8, i8* %6, align 1, !tbaa !1176
  br label %10, !dbg !5226

; <label>:10:                                     ; preds = %5, %41
  %11 = phi i8 [ %25, %41 ], [ %9, %5 ], !dbg !5228
  %12 = phi i8* [ %24, %41 ], [ %6, %5 ]
  %13 = phi i8* [ %19, %41 ], [ %7, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %8, i64 0, metadata !5210, metadata !717), !dbg !5226
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !5206, metadata !717), !dbg !5223
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !5208, metadata !717), !dbg !5225
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !5207, metadata !717), !dbg !5224
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !5209, metadata !717), !dbg !5230
  %14 = icmp eq i8 %11, 0, !dbg !5231
  br i1 %14, label %80, label %15, !dbg !5231

; <label>:15:                                     ; preds = %10
  br label %16

; <label>:16:                                     ; preds = %15, %28
  %17 = phi i8 [ 47, %28 ], [ %11, %15 ]
  %18 = phi i8* [ %24, %28 ], [ %12, %15 ]
  %19 = phi i8* [ %29, %28 ], [ %13, %15 ]
  %20 = icmp ne i8* %19, null
  br label %21, !dbg !5231

; <label>:21:                                     ; preds = %16, %34
  %22 = phi i8 [ %17, %16 ], [ %25, %34 ]
  %23 = phi i8* [ %18, %16 ], [ %24, %34 ]
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !5232
  %25 = load i8, i8* %24, align 1, !dbg !5233, !tbaa !1176
  %26 = icmp eq i8 %25, 47, !dbg !5233
  %27 = icmp eq i8 %22, 47
  br i1 %26, label %28, label %30, !dbg !5234

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !5206, metadata !717), !dbg !5223
  %29 = select i1 %27, i8* %19, i8* %24, !dbg !5235
  tail call void @llvm.dbg.value(metadata i8 %8, i64 0, metadata !5210, metadata !717), !dbg !5226
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5206, metadata !717), !dbg !5223
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !5208, metadata !717), !dbg !5225
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !5207, metadata !717), !dbg !5224
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !5209, metadata !717), !dbg !5230
  br label %16, !dbg !5231

; <label>:30:                                     ; preds = %21
  %31 = icmp ne i8 %25, 0, !dbg !5237
  %32 = and i1 %20, %31, !dbg !5239
  %33 = and i1 %27, %32, !dbg !5240
  br i1 %33, label %36, label %34, !dbg !5240

; <label>:34:                                     ; preds = %30
  tail call void @llvm.dbg.value(metadata i8 %8, i64 0, metadata !5210, metadata !717), !dbg !5226
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5206, metadata !717), !dbg !5223
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !5208, metadata !717), !dbg !5225
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !5207, metadata !717), !dbg !5224
  tail call void @llvm.dbg.value(metadata i8 %25, i64 0, metadata !5209, metadata !717), !dbg !5230
  %35 = icmp eq i8 %25, 0, !dbg !5231
  br i1 %35, label %79, label %21, !dbg !5231, !llvm.loop !5241

; <label>:36:                                     ; preds = %30
  %37 = ptrtoint i8* %19 to i64, !dbg !5243
  %38 = ptrtoint i8* %12 to i64, !dbg !5243
  %39 = sub i64 %37, %38, !dbg !5243
  %40 = icmp eq i64 %39, 1, !dbg !5244
  br i1 %40, label %41, label %45, !dbg !5245

; <label>:41:                                     ; preds = %36
  %42 = load i8, i8* %12, align 1, !dbg !5246, !tbaa !1176
  %43 = icmp eq i8 %42, 46, !dbg !5248
  br i1 %43, label %10, label %44, !dbg !5249, !llvm.loop !5241

; <label>:44:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5211, metadata !717), !dbg !5251
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5217, metadata !717), !dbg !5252
  store i8 0, i8* %19, align 1, !dbg !5253, !tbaa !1176
  br label %54, !dbg !5254

; <label>:45:                                     ; preds = %36
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5211, metadata !717), !dbg !5251
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5217, metadata !717), !dbg !5252
  store i8 0, i8* %19, align 1, !dbg !5253, !tbaa !1176
  %46 = icmp eq i64 %39, 2, !dbg !5256
  br i1 %46, label %47, label %54, !dbg !5254

; <label>:47:                                     ; preds = %45
  %48 = load i8, i8* %12, align 1, !dbg !5257, !tbaa !1176
  %49 = icmp eq i8 %48, 46, !dbg !5259
  br i1 %49, label %50, label %54, !dbg !5260

; <label>:50:                                     ; preds = %47
  %51 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !5261
  %52 = load i8, i8* %51, align 1, !dbg !5261, !tbaa !1176
  %53 = icmp eq i8 %52, 46, !dbg !5263
  br i1 %53, label %60, label %54, !dbg !5264

; <label>:54:                                     ; preds = %44, %50, %47, %45
  %55 = tail call i32 %2(i8* %0, i8* %12, i8* %3) #9, !dbg !5266
  %56 = icmp slt i32 %55, 0, !dbg !5268
  br i1 %56, label %57, label %60, !dbg !5269

; <label>:57:                                     ; preds = %54
  %58 = tail call i32* @__errno_location() #1, !dbg !5270
  %59 = load i32, i32* %58, align 4, !dbg !5270, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !5211, metadata !717), !dbg !5251
  br label %60, !dbg !5271

; <label>:60:                                     ; preds = %54, %50, %57
  %61 = phi i8 [ %8, %57 ], [ 0, %50 ], [ 1, %54 ]
  %62 = phi i32 [ %59, %57 ], [ 0, %50 ], [ 0, %54 ]
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !5211, metadata !717), !dbg !5251
  tail call void @llvm.dbg.value(metadata i8 %61, i64 0, metadata !5210, metadata !717), !dbg !5226
  %63 = and i8 %61, 1, !dbg !5272
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5217, metadata !717), !dbg !5252
  %64 = zext i8 %63 to i32, !dbg !5274
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !5217, metadata !717), !dbg !5252
  %65 = tail call i32 @savewd_chdir(%struct.savewd* %1, i8* %12, i32 %64, i32* null) #9, !dbg !5275
  tail call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !5218, metadata !717), !dbg !5276
  %66 = icmp eq i32 %65, -1, !dbg !5277
  br i1 %66, label %69, label %67, !dbg !5277

; <label>:67:                                     ; preds = %60
  store i8 47, i8* %19, align 1, !dbg !5278, !tbaa !1176
  %68 = icmp eq i32 %65, 0, !dbg !5280
  br i1 %68, label %5, label %69, !dbg !5282

; <label>:69:                                     ; preds = %60, %67
  %70 = phi i32 [ -1, %60 ], [ %65, %67 ]
  %71 = icmp eq i32 %62, 0, !dbg !5283
  br i1 %71, label %77, label %72, !dbg !5286

; <label>:72:                                     ; preds = %69
  %73 = tail call i32* @__errno_location() #1, !dbg !5287
  %74 = load i32, i32* %73, align 4, !dbg !5287, !tbaa !872
  %75 = icmp eq i32 %74, 2, !dbg !5289
  br i1 %75, label %76, label %77, !dbg !5290

; <label>:76:                                     ; preds = %72
  store i32 %62, i32* %73, align 4, !dbg !5292, !tbaa !872
  br label %77, !dbg !5293

; <label>:77:                                     ; preds = %72, %76, %69
  %78 = sext i32 %70 to i64, !dbg !5294
  br label %85

; <label>:79:                                     ; preds = %34
  br label %81, !dbg !5295

; <label>:80:                                     ; preds = %10
  br label %81, !dbg !5295

; <label>:81:                                     ; preds = %80, %79
  %82 = ptrtoint i8* %12 to i64, !dbg !5295
  %83 = ptrtoint i8* %0 to i64, !dbg !5295
  %84 = sub i64 %82, %83, !dbg !5295
  br label %85, !dbg !5296

; <label>:85:                                     ; preds = %77, %81
  %86 = phi i64 [ %78, %77 ], [ %84, %81 ]
  ret i64 %86, !dbg !5297
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dirchownmod(i32, i8*, i32, i32, i32, i32, i32) local_unnamed_addr #6 !dbg !5298 {
  %8 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5303, metadata !717), !dbg !5347
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5304, metadata !717), !dbg !5348
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5305, metadata !717), !dbg !5349
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !5306, metadata !717), !dbg !5350
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !5307, metadata !717), !dbg !5351
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !5308, metadata !717), !dbg !5352
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !5309, metadata !717), !dbg !5353
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !5354
  call void @llvm.lifetime.start(i64 144, i8* nonnull %9) #9, !dbg !5354
  %10 = icmp slt i32 %0, 0, !dbg !5355
  tail call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !5310, metadata !1389), !dbg !5356
  br i1 %10, label %11, label %13, !dbg !5357

; <label>:11:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5358, metadata !717) #9, !dbg !5365
  tail call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !5364, metadata !717) #9, !dbg !5365
  %12 = call i32 @__xstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %8) #9, !dbg !5368
  br label %15, !dbg !5369

; <label>:13:                                     ; preds = %7
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5370, metadata !717) #9, !dbg !5376
  tail call void @llvm.dbg.value(metadata %struct.stat* %8, i64 0, metadata !5375, metadata !717) #9, !dbg !5376
  %14 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %8) #9, !dbg !5379
  br label %15, !dbg !5380

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], !dbg !5381
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !5332, metadata !717), !dbg !5383
  %17 = icmp eq i32 %16, 0, !dbg !5384
  br i1 %17, label %18, label %72, !dbg !5385

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 3, !dbg !5386
  %20 = load i32, i32* %19, align 8, !dbg !5386, !tbaa !1405
  call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5333, metadata !717), !dbg !5387
  %21 = and i32 %20, 61440, !dbg !5388
  %22 = icmp eq i32 %21, 16384, !dbg !5388
  br i1 %22, label %25, label %23, !dbg !5389

; <label>:23:                                     ; preds = %18
  %24 = tail call i32* @__errno_location() #1, !dbg !5390
  store i32 20, i32* %24, align 4, !dbg !5392, !tbaa !872
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5332, metadata !717), !dbg !5383
  br label %72, !dbg !5393

; <label>:25:                                     ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5336, metadata !717), !dbg !5394
  %26 = icmp eq i32 %3, -1, !dbg !5395
  br i1 %26, label %31, label %27, !dbg !5397

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 4, !dbg !5398
  %29 = load i32, i32* %28, align 4, !dbg !5398, !tbaa !5400
  %30 = icmp eq i32 %29, %3, !dbg !5401
  br i1 %30, label %31, label %37, !dbg !5402

; <label>:31:                                     ; preds = %27, %25
  %32 = icmp eq i32 %4, -1, !dbg !5403
  br i1 %32, label %56, label %33, !dbg !5404

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 5, !dbg !5405
  %35 = load i32, i32* %34, align 8, !dbg !5405, !tbaa !5407
  %36 = icmp eq i32 %35, %4, !dbg !5408
  br i1 %36, label %56, label %37, !dbg !5409

; <label>:37:                                     ; preds = %27, %33
  %38 = icmp sgt i32 %0, -1, !dbg !5411
  br i1 %38, label %39, label %41, !dbg !5413

; <label>:39:                                     ; preds = %37
  %40 = call i32 @fchown(i32 %0, i32 %3, i32 %4) #9, !dbg !5414
  br label %47, !dbg !5415

; <label>:41:                                     ; preds = %37
  %42 = icmp eq i32 %2, -1, !dbg !5417
  br i1 %42, label %45, label %43, !dbg !5418

; <label>:43:                                     ; preds = %41
  %44 = call i32 @lchown(i8* %1, i32 %3, i32 %4) #9, !dbg !5419
  br label %47, !dbg !5420

; <label>:45:                                     ; preds = %41
  %46 = call i32 @chown(i8* %1, i32 %3, i32 %4) #9, !dbg !5421
  br label %47, !dbg !5422

; <label>:47:                                     ; preds = %39, %45, %43
  %48 = phi i32 [ %40, %39 ], [ %44, %43 ], [ %46, %45 ], !dbg !5424
  call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !5332, metadata !717), !dbg !5383
  %49 = icmp ne i32 %48, 0, !dbg !5426
  %50 = and i32 %20, 73, !dbg !5428
  %51 = icmp eq i32 %50, 0, !dbg !5428
  %52 = or i1 %51, %49, !dbg !5430
  %53 = and i32 %20, 3072, !dbg !5431
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !5336, metadata !717), !dbg !5394
  %54 = select i1 %52, i32 0, i32 %53, !dbg !5430
  call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !5332, metadata !717), !dbg !5383
  call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !5336, metadata !717), !dbg !5394
  %55 = icmp eq i32 %48, 0, !dbg !5432
  br i1 %55, label %56, label %72, !dbg !5433

; <label>:56:                                     ; preds = %31, %33, %47
  %57 = phi i32 [ %54, %47 ], [ 0, %33 ], [ 0, %31 ]
  %58 = xor i32 %20, %5, !dbg !5434
  %59 = or i32 %57, %58, !dbg !5436
  %60 = and i32 %59, %6, !dbg !5437
  %61 = icmp eq i32 %60, 0, !dbg !5437
  br i1 %61, label %72, label %62, !dbg !5438

; <label>:62:                                     ; preds = %56
  %63 = and i32 %6, 4095, !dbg !5440
  %64 = xor i32 %63, 4095, !dbg !5440
  %65 = and i32 %64, %20, !dbg !5441
  %66 = or i32 %65, %5, !dbg !5442
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !5339, metadata !717), !dbg !5443
  %67 = icmp sgt i32 %0, -1, !dbg !5444
  br i1 %67, label %68, label %70, !dbg !5445

; <label>:68:                                     ; preds = %62
  %69 = call i32 @fchmod(i32 %0, i32 %66) #9, !dbg !5446
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !5332, metadata !717), !dbg !5383
  br label %75, !dbg !5447

; <label>:70:                                     ; preds = %62
  %71 = call i32 @chmod(i8* %1, i32 %66) #9, !dbg !5448
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !5332, metadata !717), !dbg !5383
  br label %84, !dbg !5447

; <label>:72:                                     ; preds = %23, %56, %47, %15
  %73 = phi i32 [ %16, %15 ], [ -1, %23 ], [ 0, %56 ], [ %48, %47 ]
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !5332, metadata !717), !dbg !5383
  %74 = icmp sgt i32 %0, -1, !dbg !5449
  br i1 %74, label %75, label %84, !dbg !5447

; <label>:75:                                     ; preds = %68, %72
  %76 = phi i32 [ %69, %68 ], [ %73, %72 ]
  %77 = icmp eq i32 %76, 0, !dbg !5450
  br i1 %77, label %78, label %80, !dbg !5451

; <label>:78:                                     ; preds = %75
  %79 = call i32 @close(i32 %0) #9, !dbg !5452
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !5332, metadata !717), !dbg !5383
  br label %84, !dbg !5453

; <label>:80:                                     ; preds = %75
  %81 = tail call i32* @__errno_location() #1, !dbg !5454
  %82 = load i32, i32* %81, align 4, !dbg !5454, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !5342, metadata !717), !dbg !5455
  %83 = call i32 @close(i32 %0) #9, !dbg !5456
  store i32 %82, i32* %81, align 4, !dbg !5457, !tbaa !872
  br label %84

; <label>:84:                                     ; preds = %70, %78, %80, %72
  %85 = phi i32 [ %79, %78 ], [ %76, %80 ], [ %73, %72 ], [ %71, %70 ]
  call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !5332, metadata !717), !dbg !5383
  call void @llvm.lifetime.end(i64 144, i8* nonnull %9) #9, !dbg !5458
  ret i32 %85, !dbg !5459
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @lchown(i8* nocapture readonly, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chown(i8* nocapture readonly, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 !dbg !5460 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5465, metadata !717), !dbg !5470
  %2 = icmp ult i32 %0, 3, !dbg !5471
  br i1 %2, label %3, label %8, !dbg !5471

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #9, !dbg !5472
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !5466, metadata !717), !dbg !5473
  %5 = tail call i32* @__errno_location() #1, !dbg !5474
  %6 = load i32, i32* %5, align 4, !dbg !5474, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !5469, metadata !717), !dbg !5475
  %7 = tail call i32 @close(i32 %0) #9, !dbg !5476
  store i32 %6, i32* %5, align 4, !dbg !5477, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !5465, metadata !717), !dbg !5470
  br label %8, !dbg !5478

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !5465, metadata !717), !dbg !5470
  ret i32 %9, !dbg !5479
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5480 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5525, metadata !717), !dbg !5529
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5526, metadata !717), !dbg !5530
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5528, metadata !717), !dbg !5531
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !5532
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5527, metadata !717), !dbg !5533
  %3 = icmp slt i32 %2, 0, !dbg !5534
  br i1 %3, label %4, label %6, !dbg !5536

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5537
  br label %24, !dbg !5538

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !5539
  %8 = icmp eq i32 %7, 0, !dbg !5539
  br i1 %8, label %13, label %9, !dbg !5541

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !5542
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !5544
  %12 = icmp eq i64 %11, -1, !dbg !5546
  br i1 %12, label %16, label %13, !dbg !5547

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !5548
  %15 = icmp eq i32 %14, 0, !dbg !5548
  br i1 %15, label %16, label %18, !dbg !5549

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5526, metadata !717), !dbg !5530
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5551
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5528, metadata !717), !dbg !5531
  br label %24, !dbg !5552

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5553
  %20 = load i32, i32* %19, align 4, !dbg !5553, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5526, metadata !717), !dbg !5530
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5526, metadata !717), !dbg !5530
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5551
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5528, metadata !717), !dbg !5531
  %22 = icmp eq i32 %20, 0, !dbg !5554
  br i1 %22, label %24, label %23, !dbg !5552

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5556, !tbaa !872
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5528, metadata !717), !dbg !5531
  br label %24, !dbg !5558

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5559
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
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5560 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5605, metadata !717), !dbg !5606
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5607
  br i1 %2, label %6, label %3, !dbg !5609

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !5610
  %5 = icmp eq i32 %4, 0, !dbg !5610
  br i1 %5, label %6, label %8, !dbg !5612

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5614
  br label %17, !dbg !5615

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5616, metadata !717) #9, !dbg !5621
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5623
  %10 = load i32, i32* %9, align 8, !dbg !5623, !tbaa !4810
  %11 = and i32 %10, 256, !dbg !5625
  %12 = icmp eq i32 %11, 0, !dbg !5625
  br i1 %12, label %15, label %13, !dbg !5626

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !5627
  br label %15, !dbg !5627

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5628
  br label %17, !dbg !5629

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5630
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5631 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5677, metadata !717), !dbg !5683
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5678, metadata !717), !dbg !5684
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5679, metadata !717), !dbg !5685
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5686
  %5 = load i8*, i8** %4, align 8, !dbg !5686, !tbaa !5082
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5687
  %7 = load i8*, i8** %6, align 8, !dbg !5687, !tbaa !5081
  %8 = icmp eq i8* %5, %7, !dbg !5688
  br i1 %8, label %9, label %28, !dbg !5689

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5690
  %11 = load i8*, i8** %10, align 8, !dbg !5690, !tbaa !1166
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5692
  %13 = load i8*, i8** %12, align 8, !dbg !5692, !tbaa !5693
  %14 = icmp eq i8* %11, %13, !dbg !5694
  br i1 %14, label %15, label %28, !dbg !5695

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5696
  %17 = load i8*, i8** %16, align 8, !dbg !5696, !tbaa !5697
  %18 = icmp eq i8* %17, null, !dbg !5698
  br i1 %18, label %19, label %28, !dbg !5699

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !5701
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !5702
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5680, metadata !717), !dbg !5704
  %22 = icmp eq i64 %21, -1, !dbg !5705
  br i1 %22, label %30, label %23, !dbg !5707

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5708
  %25 = load i32, i32* %24, align 8, !dbg !5709, !tbaa !4810
  %26 = and i32 %25, -17, !dbg !5709
  store i32 %26, i32* %24, align 8, !dbg !5709, !tbaa !4810
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5710
  store i64 %21, i64* %27, align 8, !dbg !5711, !tbaa !5712
  br label %30, !dbg !5713

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5714
  br label %30, !dbg !5715

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5716
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !5717 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5720, metadata !717), !dbg !5721
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #9, !dbg !5722
  ret i32 %2, !dbg !5723
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !559 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !567, metadata !717), !dbg !5724
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !568, metadata !717), !dbg !5725
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5726
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9, !dbg !5726
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !569, metadata !717), !dbg !5727
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !582, metadata !717), !dbg !5728
  call void @llvm.va_start(i8* nonnull %4), !dbg !5729
  %5 = icmp eq i32 %1, 1030, !dbg !5730
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !5730

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5731

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5732
  %12 = load i8*, i8** %11, align 16, !dbg !5732
  %13 = sext i32 %7 to i64, !dbg !5732
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5732
  %15 = add i32 %7, 8, !dbg !5732
  store i32 %15, i32* %6, align 16, !dbg !5732
  br label %20, !dbg !5732

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5734
  %18 = load i8*, i8** %17, align 8, !dbg !5734
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5734
  store i8* %19, i8** %17, align 8, !dbg !5734
  br label %20, !dbg !5734

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5736
  %23 = load i32, i32* %22, align 4, !dbg !5736
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !583, metadata !717), !dbg !5738
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5739, !tbaa !872
  %25 = icmp sgt i32 %24, -1, !dbg !5741
  br i1 %25, label %26, label %39, !dbg !5742

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #9, !dbg !5743
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !582, metadata !717), !dbg !5728
  %28 = icmp sgt i32 %27, -1, !dbg !5745
  br i1 %28, label %36, label %29, !dbg !5747

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !5748
  %31 = load i32, i32* %30, align 4, !dbg !5748, !tbaa !872
  %32 = icmp eq i32 %31, 22, !dbg !5750
  br i1 %32, label %33, label %36, !dbg !5751

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5753
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !582, metadata !717), !dbg !5728
  %35 = icmp slt i32 %34, 0, !dbg !5755
  br i1 %35, label %75, label %36, !dbg !5757

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !582, metadata !717), !dbg !5728
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !872
  br label %42, !dbg !5758

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5759
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !582, metadata !717), !dbg !5728
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !5760
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !582, metadata !717), !dbg !5728
  %45 = icmp sgt i32 %44, -1, !dbg !5762
  %46 = icmp eq i32 %43, -1, !dbg !5763
  %47 = and i1 %45, %46, !dbg !5764
  br i1 %47, label %48, label %75, !dbg !5764

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #9, !dbg !5765
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !586, metadata !717), !dbg !5766
  %50 = icmp slt i32 %49, 0, !dbg !5767
  br i1 %50, label %55, label %51, !dbg !5768

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !5769
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #9, !dbg !5771
  %54 = icmp eq i32 %53, -1, !dbg !5772
  br i1 %54, label %55, label %75, !dbg !5773

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !5775
  %57 = load i32, i32* %56, align 4, !dbg !5775, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !589, metadata !717), !dbg !5776
  %58 = call i32 @close(i32 %44) #9, !dbg !5777
  store i32 %57, i32* %56, align 4, !dbg !5778, !tbaa !872
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !582, metadata !717), !dbg !5728
  br label %75, !dbg !5779

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !5780

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5781
  %62 = load i8*, i8** %61, align 16, !dbg !5781
  %63 = sext i32 %7 to i64, !dbg !5781
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !5781
  %65 = add i32 %7, 8, !dbg !5781
  store i32 %65, i32* %6, align 16, !dbg !5781
  br label %70, !dbg !5781

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5783
  %68 = load i8*, i8** %67, align 8, !dbg !5783
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !5783
  store i8* %69, i8** %67, align 8, !dbg !5783
  br label %70, !dbg !5783

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !5785
  %73 = load i8*, i8** %72, align 8, !dbg !5785
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !592, metadata !717), !dbg !5787
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #9, !dbg !5788
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !582, metadata !717), !dbg !5728
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !582, metadata !717), !dbg !5728
  call void @llvm.va_end(i8* nonnull %4), !dbg !5789
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9, !dbg !5790
  ret i32 %76, !dbg !5791
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
attributes #9 = { nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.dbg.cu = !{!2, !594, !597, !104, !110, !119, !599, !617, !126, !133, !628, !641, !202, !649, !666, !668, !670, !672, !674, !676, !211, !679, !692, !697, !699, !701, !703, !705, !563}
!llvm.ident = !{!707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707, !707}
!llvm.module.flags = !{!708, !709, !710, !711}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !92, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !61)
!3 = !DIFile(filename: "src/mkdir.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !21, file: !20, line: 39, size: 32, elements: !35)
!20 = !DIFile(filename: "./lib/savewd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !20, line: 36, size: 64, elements: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !21, file: !20, line: 66, baseType: !19, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !21, file: !20, line: 74, baseType: !25, size: 32, offset: 32)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !21, file: !20, line: 69, size: 32, elements: !26)
!26 = !{!27, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !25, file: !20, line: 71, baseType: !28, size: 32)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !25, file: !20, line: 72, baseType: !28, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !25, file: !20, line: 73, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !32, line: 98, baseType: !33)
!32 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !34, line: 142, baseType: !28)
!34 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!35 = !{!36, !37, !38, !39, !40, !41}
!36 = !DIEnumerator(name: "INITIAL_STATE", value: 0)
!37 = !DIEnumerator(name: "FD_STATE", value: 1)
!38 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2)
!39 = !DIEnumerator(name: "FORKING_STATE", value: 3)
!40 = !DIEnumerator(name: "ERROR_STATE", value: 4)
!41 = !DIEnumerator(name: "FINAL_STATE", value: 5)
!42 = !{!43, !45, !46, !49, !51, !54, !56, !59}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 62, baseType: !48)
!47 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !32, line: 80, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !34, line: 134, baseType: !58)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !32, line: 65, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !34, line: 135, baseType: !58)
!61 = !{!62, !0}
!62 = !DIGlobalVariableExpression(var: !63)
!63 = distinct !DIGlobalVariable(name: "infomap", scope: !64, file: !65, line: 632, type: !89, isLocal: true, isDefinition: true)
!64 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !65, file: !65, line: 630, type: !66, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !68)
!65 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!66 = !DISubroutineType(types: !67)
!67 = !{null, !54}
!68 = !{!69, !70, !71, !78, !80, !81, !82, !85, !86, !88}
!69 = !DILocalVariable(name: "program", arg: 1, scope: !64, file: !65, line: 630, type: !54)
!70 = !DILocalVariable(name: "node", scope: !64, file: !65, line: 642, type: !54)
!71 = !DILocalVariable(name: "map_prog", scope: !64, file: !65, line: 643, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !64, file: !65, line: 632, size: 128, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !74, file: !65, line: 632, baseType: !54, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !74, file: !65, line: 632, baseType: !54, size: 64, offset: 64)
!78 = !DILocalVariable(name: "__s1_len", scope: !79, file: !65, line: 645, type: !46)
!79 = distinct !DILexicalBlock(scope: !64, file: !65, line: 645, column: 33)
!80 = !DILocalVariable(name: "__s2_len", scope: !79, file: !65, line: 645, type: !46)
!81 = !DILocalVariable(name: "lc_messages", scope: !64, file: !65, line: 655, type: !54)
!82 = !DILocalVariable(name: "__s1_len", scope: !83, file: !65, line: 656, type: !46)
!83 = distinct !DILexicalBlock(scope: !84, file: !65, line: 656, column: 22)
!84 = distinct !DILexicalBlock(scope: !64, file: !65, line: 656, column: 7)
!85 = !DILocalVariable(name: "__s2_len", scope: !83, file: !65, line: 656, type: !46)
!86 = !DILocalVariable(name: "__s2", scope: !87, file: !65, line: 656, type: !51)
!87 = distinct !DILexicalBlock(scope: !83, file: !65, line: 656, column: 22)
!88 = !DILocalVariable(name: "__result", scope: !87, file: !65, line: 656, type: !28)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 896, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 7)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1792, elements: !90)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !95, line: 104, size: 256, elements: !96)
!95 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !{!97, !98, !99, !101}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 106, baseType: !54, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !94, file: !95, line: 109, baseType: !28, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !94, file: !95, line: 110, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !94, file: !95, line: 111, baseType: !28, size: 32, offset: 192)
!102 = !DIGlobalVariableExpression(var: !103)
!103 = distinct !DIGlobalVariable(name: "Version", scope: !104, file: !105, line: 2, type: !54, isLocal: false, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !107)
!105 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{}
!107 = !{!102}
!108 = !DIGlobalVariableExpression(var: !109)
!109 = distinct !DIGlobalVariable(name: "file_name", scope: !110, file: !115, line: 36, type: !54, isLocal: true, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !112)
!111 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!112 = !{!108, !113}
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !110, file: !115, line: 46, type: !116, isLocal: true, isDefinition: true)
!115 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!116 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!117 = !DIGlobalVariableExpression(var: !118)
!118 = distinct !DIGlobalVariable(name: "exit_failure", scope: !119, file: !122, line: 24, type: !123, isLocal: false, isDefinition: true)
!119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !120, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !121)
!120 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!121 = !{!117}
!122 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!124 = !DIGlobalVariableExpression(var: !125)
!125 = distinct !DIGlobalVariable(name: "program_name", scope: !126, file: !130, line: 33, type: !54, isLocal: false, isDefinition: true)
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !128, globals: !129)
!127 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!128 = !{!45, !43}
!129 = !{!124}
!130 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!131 = !DIGlobalVariableExpression(var: !132)
!132 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !133, file: !161, line: 77, type: !196, isLocal: false, isDefinition: true)
!133 = distinct !DICompileUnit(language: DW_LANG_C99, file: !134, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !135, retainedTypes: !156, globals: !158)
!134 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!5, !136, !141}
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!139 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!140 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 46, size: 32, elements: !143)
!142 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!144 = !DIEnumerator(name: "_ISupper", value: 256)
!145 = !DIEnumerator(name: "_ISlower", value: 512)
!146 = !DIEnumerator(name: "_ISalpha", value: 1024)
!147 = !DIEnumerator(name: "_ISdigit", value: 2048)
!148 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!149 = !DIEnumerator(name: "_ISspace", value: 8192)
!150 = !DIEnumerator(name: "_ISprint", value: 16384)
!151 = !DIEnumerator(name: "_ISgraph", value: 32768)
!152 = !DIEnumerator(name: "_ISblank", value: 1)
!153 = !DIEnumerator(name: "_IScntrl", value: 2)
!154 = !DIEnumerator(name: "_ISpunct", value: 4)
!155 = !DIEnumerator(name: "_ISalnum", value: 8)
!156 = !{!28, !157, !46, !43}
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !{!131, !159, !166, !178, !180, !185, !192, !194}
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !133, file: !161, line: 93, type: !162, isLocal: false, isDefinition: true)
!161 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 320, elements: !164)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!164 = !{!165}
!165 = !DISubrange(count: 10)
!166 = !DIGlobalVariableExpression(var: !167)
!167 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !133, file: !161, line: 1043, type: !168, isLocal: false, isDefinition: true)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !161, line: 57, size: 448, elements: !169)
!169 = !{!170, !171, !172, !176, !177}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !168, file: !161, line: 60, baseType: !5, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !161, line: 63, baseType: !28, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !168, file: !161, line: 67, baseType: !173, size: 256, offset: 64)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !168, file: !161, line: 70, baseType: !54, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !168, file: !161, line: 73, baseType: !54, size: 64, offset: 384)
!178 = !DIGlobalVariableExpression(var: !179)
!179 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !133, file: !161, line: 108, type: !168, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181)
!181 = distinct !DIGlobalVariable(name: "slot0", scope: !133, file: !161, line: 834, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 256)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "slotvec", scope: !133, file: !161, line: 837, type: !187, isLocal: true, isDefinition: true)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !161, line: 826, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !188, file: !161, line: 828, baseType: !46, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !188, file: !161, line: 829, baseType: !43, size: 64, offset: 64)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "nslots", scope: !133, file: !161, line: 835, type: !28, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "slotvec0", scope: !133, file: !161, line: 836, type: !188, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 704, elements: !198)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!198 = !{!199}
!199 = !DISubrange(count: 11)
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !202, file: !205, line: 26, type: !206, isLocal: false, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !204)
!203 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!204 = !{!200}
!205 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 376, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 47)
!209 = !DIGlobalVariableExpression(var: !210)
!210 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !211, file: !555, line: 120, type: !556, isLocal: true, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !213, retainedTypes: !552, globals: !554)
!212 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !{!214}
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !215, line: 41, size: 32, elements: !216)
!215 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!217 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!218 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!219 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!220 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!221 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!222 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!223 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!224 = !DIEnumerator(name: "DAY_1", value: 131079)
!225 = !DIEnumerator(name: "DAY_2", value: 131080)
!226 = !DIEnumerator(name: "DAY_3", value: 131081)
!227 = !DIEnumerator(name: "DAY_4", value: 131082)
!228 = !DIEnumerator(name: "DAY_5", value: 131083)
!229 = !DIEnumerator(name: "DAY_6", value: 131084)
!230 = !DIEnumerator(name: "DAY_7", value: 131085)
!231 = !DIEnumerator(name: "ABMON_1", value: 131086)
!232 = !DIEnumerator(name: "ABMON_2", value: 131087)
!233 = !DIEnumerator(name: "ABMON_3", value: 131088)
!234 = !DIEnumerator(name: "ABMON_4", value: 131089)
!235 = !DIEnumerator(name: "ABMON_5", value: 131090)
!236 = !DIEnumerator(name: "ABMON_6", value: 131091)
!237 = !DIEnumerator(name: "ABMON_7", value: 131092)
!238 = !DIEnumerator(name: "ABMON_8", value: 131093)
!239 = !DIEnumerator(name: "ABMON_9", value: 131094)
!240 = !DIEnumerator(name: "ABMON_10", value: 131095)
!241 = !DIEnumerator(name: "ABMON_11", value: 131096)
!242 = !DIEnumerator(name: "ABMON_12", value: 131097)
!243 = !DIEnumerator(name: "MON_1", value: 131098)
!244 = !DIEnumerator(name: "MON_2", value: 131099)
!245 = !DIEnumerator(name: "MON_3", value: 131100)
!246 = !DIEnumerator(name: "MON_4", value: 131101)
!247 = !DIEnumerator(name: "MON_5", value: 131102)
!248 = !DIEnumerator(name: "MON_6", value: 131103)
!249 = !DIEnumerator(name: "MON_7", value: 131104)
!250 = !DIEnumerator(name: "MON_8", value: 131105)
!251 = !DIEnumerator(name: "MON_9", value: 131106)
!252 = !DIEnumerator(name: "MON_10", value: 131107)
!253 = !DIEnumerator(name: "MON_11", value: 131108)
!254 = !DIEnumerator(name: "MON_12", value: 131109)
!255 = !DIEnumerator(name: "AM_STR", value: 131110)
!256 = !DIEnumerator(name: "PM_STR", value: 131111)
!257 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!258 = !DIEnumerator(name: "D_FMT", value: 131113)
!259 = !DIEnumerator(name: "T_FMT", value: 131114)
!260 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!261 = !DIEnumerator(name: "ERA", value: 131116)
!262 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!263 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!264 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!265 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!266 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!267 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!268 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!269 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!270 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!271 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!272 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!273 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!274 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!275 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!276 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!277 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!278 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!279 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!280 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!281 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!282 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!283 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!284 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!285 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!286 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!287 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!288 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!289 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!290 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!291 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!292 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!293 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!294 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!295 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!296 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!297 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!298 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!299 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!300 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!301 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!302 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!303 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!304 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!305 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!306 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!307 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!308 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!309 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!310 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!311 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!312 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!313 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!314 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!315 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!316 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!317 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!318 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!319 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!320 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!321 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!322 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!323 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!324 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!325 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!326 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!327 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!328 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!329 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!330 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!331 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!332 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!333 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!334 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!335 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!336 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!337 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!338 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!339 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!340 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!341 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!342 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!343 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!344 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!345 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!346 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!347 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!348 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!349 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!350 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!351 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!352 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!353 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!354 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!355 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!356 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!357 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!358 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!359 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!360 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!361 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!362 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!363 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!364 = !DIEnumerator(name: "CODESET", value: 14)
!365 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!366 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!367 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!368 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!420 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!421 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!436 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!437 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!438 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!439 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!440 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!441 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!442 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!443 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!444 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!445 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!446 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!447 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!448 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!449 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!450 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!451 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!452 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!453 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!454 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!455 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!456 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!457 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!458 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!475 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!476 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!479 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!480 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!481 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!482 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!483 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!484 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!485 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!486 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!487 = !DIEnumerator(name: "THOUSEP", value: 65537)
!488 = !DIEnumerator(name: "__GROUPING", value: 65538)
!489 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!490 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!491 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!492 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!493 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!494 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!495 = !DIEnumerator(name: "__YESSTR", value: 327682)
!496 = !DIEnumerator(name: "__NOSTR", value: 327683)
!497 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!498 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!499 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!500 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!501 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!502 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!504 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!505 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!506 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!507 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!508 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!509 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!510 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!511 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!514 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!515 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!516 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!517 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!518 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!519 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!520 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!521 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!522 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!523 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!524 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!525 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!526 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!527 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!528 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!529 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!530 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!531 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!532 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!533 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!550 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!551 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!552 = !{!45, !43, !553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!554 = !{!209}
!555 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!556 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!557 = !DIGlobalVariableExpression(var: !558)
!558 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !559, file: !560, line: 335, type: !28, isLocal: true, isDefinition: true)
!559 = distinct !DISubprogram(name: "rpl_fcntl", scope: !560, file: !560, line: 272, type: !561, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !566)
!560 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!561 = !DISubroutineType(types: !562)
!562 = !{!28, !28, !28, null}
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, globals: !565)
!564 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!557}
!566 = !{!567, !568, !569, !582, !583, !586, !589, !592}
!567 = !DILocalVariable(name: "fd", arg: 1, scope: !559, file: !560, line: 272, type: !28)
!568 = !DILocalVariable(name: "action", arg: 2, scope: !559, file: !560, line: 272, type: !28)
!569 = !DILocalVariable(name: "arg", scope: !559, file: !560, line: 274, type: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !571, line: 30, baseType: !572)
!571 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !564, line: 274, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 192, elements: !580)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !564, line: 274, size: 192, elements: !575)
!575 = !{!576, !577, !578, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !574, file: !564, line: 274, baseType: !58, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !574, file: !564, line: 274, baseType: !58, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !574, file: !564, line: 274, baseType: !45, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !574, file: !564, line: 274, baseType: !45, size: 64, offset: 128)
!580 = !{!581}
!581 = !DISubrange(count: 1)
!582 = !DILocalVariable(name: "result", scope: !559, file: !560, line: 275, type: !28)
!583 = !DILocalVariable(name: "target", scope: !584, file: !560, line: 322, type: !28)
!584 = distinct !DILexicalBlock(scope: !585, file: !560, line: 321, column: 7)
!585 = distinct !DILexicalBlock(scope: !559, file: !560, line: 278, column: 5)
!586 = !DILocalVariable(name: "flags", scope: !587, file: !560, line: 359, type: !28)
!587 = distinct !DILexicalBlock(scope: !588, file: !560, line: 358, column: 11)
!588 = distinct !DILexicalBlock(scope: !584, file: !560, line: 357, column: 13)
!589 = !DILocalVariable(name: "saved_errno", scope: !590, file: !560, line: 362, type: !28)
!590 = distinct !DILexicalBlock(scope: !591, file: !560, line: 361, column: 15)
!591 = distinct !DILexicalBlock(scope: !587, file: !560, line: 360, column: 17)
!592 = !DILocalVariable(name: "p", scope: !593, file: !560, line: 404, type: !45)
!593 = distinct !DILexicalBlock(scope: !585, file: !560, line: 402, column: 7)
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !596)
!595 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = !{!53}
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!598 = !DIFile(filename: "src/selinux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !601, retainedTypes: !616)
!600 = !DIFile(filename: "./lib/mkdir-p.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = !{!602, !612}
!602 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !603, file: !20, line: 39, size: 32, elements: !35)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !20, line: 36, size: 64, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !603, file: !20, line: 66, baseType: !602, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !603, file: !20, line: 74, baseType: !607, size: 32, offset: 32)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !603, file: !20, line: 69, size: 32, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !607, file: !20, line: 71, baseType: !28, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !607, file: !20, line: 72, baseType: !28, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !607, file: !20, line: 73, baseType: !31, size: 32)
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 86, size: 32, elements: !613)
!613 = !{!614, !615}
!614 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1)
!615 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2)
!616 = !{!56, !59}
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !619, retainedTypes: !627)
!618 = !DIFile(filename: "./lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = !{!620}
!620 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !621, line: 78, size: 32, elements: !622)
!621 = !DIFile(filename: "lib/modechange.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!622 = !{!623, !624, !625, !626}
!623 = !DIEnumerator(name: "MODE_DONE", value: 0)
!624 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!625 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!626 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!627 = !{!46}
!628 = distinct !DICompileUnit(language: DW_LANG_C99, file: !629, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !630)
!629 = !DIFile(filename: "./lib/savewd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!630 = !{!631, !612}
!631 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !632, file: !20, line: 39, size: 32, elements: !35)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !20, line: 36, size: 64, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !632, file: !20, line: 66, baseType: !631, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !632, file: !20, line: 74, baseType: !636, size: 32, offset: 32)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !20, line: 69, size: 32, elements: !637)
!637 = !{!638, !639, !640}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !636, file: !20, line: 71, baseType: !28, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !636, file: !20, line: 72, baseType: !28, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !636, file: !20, line: 73, baseType: !31, size: 32)
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !643, retainedTypes: !648)
!642 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = !{!644}
!644 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !645, line: 41, size: 32, elements: !646)
!645 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!646 = !{!647}
!647 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!648 = !{!45}
!649 = distinct !DICompileUnit(language: DW_LANG_C99, file: !650, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !651, retainedTypes: !665)
!650 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!651 = !{!652}
!652 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !654, file: !653, line: 192, size: 32, elements: !663)
!653 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!654 = distinct !DISubprogram(name: "x2nrealloc", scope: !653, file: !653, line: 180, type: !655, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !658)
!655 = !DISubroutineType(types: !656)
!656 = !{!45, !45, !657, !46}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(name: "p", arg: 1, scope: !654, file: !653, line: 180, type: !45)
!660 = !DILocalVariable(name: "pn", arg: 2, scope: !654, file: !653, line: 180, type: !657)
!661 = !DILocalVariable(name: "s", arg: 3, scope: !654, file: !653, line: 180, type: !46)
!662 = !DILocalVariable(name: "n", scope: !654, file: !653, line: 182, type: !46)
!663 = !{!664}
!664 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!665 = !{!46, !43, !45}
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!667 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !648)
!669 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !627)
!671 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!673 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!675 = !DIFile(filename: "./lib/open-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !678)
!677 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = !{!46, !49, !51, !54}
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !681)
!680 = !DIFile(filename: "./lib/mkancesdirs.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!681 = !{!682, !612}
!682 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !683, file: !20, line: 39, size: 32, elements: !35)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !20, line: 36, size: 64, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !683, file: !20, line: 66, baseType: !682, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !683, file: !20, line: 74, baseType: !687, size: 32, offset: 32)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !683, file: !20, line: 69, size: 32, elements: !688)
!688 = !{!689, !690, !691}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !687, file: !20, line: 71, baseType: !28, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !687, file: !20, line: 72, baseType: !28, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !687, file: !20, line: 73, baseType: !31, size: 32)
!692 = distinct !DICompileUnit(language: DW_LANG_C99, file: !693, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !694)
!693 = !DIFile(filename: "./lib/dirchownmod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!694 = !{!56, !59, !695}
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !32, line: 70, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !34, line: 138, baseType: !58)
!697 = distinct !DICompileUnit(language: DW_LANG_C99, file: !698, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!698 = !DIFile(filename: "./lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!700 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !648)
!702 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!703 = distinct !DICompileUnit(language: DW_LANG_C99, file: !704, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !648)
!704 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !106)
!706 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!707 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!708 = !{i32 2, !"Dwarf Version", i32 4}
!709 = !{i32 2, !"Debug Info Version", i32 3}
!710 = !{i32 1, !"PIC Level", i32 2}
!711 = !{i32 1, !"PIE Level", i32 2}
!712 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 53, type: !713, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !28}
!715 = !{!716}
!716 = !DILocalVariable(name: "status", arg: 1, scope: !712, file: !3, line: 53, type: !28)
!717 = !DIExpression()
!718 = !DILocation(line: 53, column: 12, scope: !712)
!719 = !DILocation(line: 55, column: 14, scope: !720)
!720 = distinct !DILexicalBlock(scope: !712, file: !3, line: 55, column: 7)
!721 = !DILocation(line: 55, column: 7, scope: !712)
!722 = !DILocation(line: 56, column: 5, scope: !723)
!723 = !DILexicalBlockFile(scope: !724, file: !3, discriminator: 1)
!724 = distinct !DILexicalBlock(scope: !720, file: !3, line: 56, column: 5)
!725 = !{!726, !726, i64 0}
!726 = !{!"any pointer", !727, i64 0}
!727 = !{!"omnipotent char", !728, i64 0}
!728 = !{!"Simple C/C++ TBAA"}
!729 = !DILocation(line: 56, column: 5, scope: !730)
!730 = !DILexicalBlockFile(scope: !724, file: !3, discriminator: 3)
!731 = !DILocation(line: 56, column: 5, scope: !732)
!732 = !DILexicalBlockFile(scope: !724, file: !3, discriminator: 2)
!733 = !DILocation(line: 59, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !720, file: !3, line: 58, column: 5)
!735 = !DILocation(line: 59, column: 7, scope: !736)
!736 = !DILexicalBlockFile(scope: !734, file: !3, discriminator: 1)
!737 = !DILocation(line: 60, column: 7, scope: !734)
!738 = !DILocation(line: 60, column: 7, scope: !736)
!739 = !DILocation(line: 587, column: 3, scope: !740, inlinedAt: !743)
!740 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !65, file: !65, line: 585, type: !741, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !106)
!741 = !DISubroutineType(types: !742)
!742 = !{null}
!743 = distinct !DILocation(line: 64, column: 7, scope: !734)
!744 = !DILocation(line: 587, column: 3, scope: !745, inlinedAt: !743)
!745 = !DILexicalBlockFile(scope: !740, file: !65, discriminator: 1)
!746 = !DILocation(line: 66, column: 7, scope: !734)
!747 = !DILocation(line: 66, column: 7, scope: !736)
!748 = !DILocation(line: 71, column: 7, scope: !734)
!749 = !DILocation(line: 71, column: 7, scope: !736)
!750 = !DILocation(line: 77, column: 7, scope: !734)
!751 = !DILocation(line: 77, column: 7, scope: !736)
!752 = !DILocation(line: 78, column: 7, scope: !734)
!753 = !DILocation(line: 78, column: 7, scope: !736)
!754 = !DILocation(line: 642, column: 15, scope: !64, inlinedAt: !755)
!755 = distinct !DILocation(line: 79, column: 7, scope: !734)
!756 = !DILocation(line: 651, column: 3, scope: !64, inlinedAt: !755)
!757 = !DILocation(line: 651, column: 3, scope: !758, inlinedAt: !755)
!758 = !DILexicalBlockFile(scope: !64, file: !65, discriminator: 1)
!759 = !DILocation(line: 655, column: 29, scope: !64, inlinedAt: !755)
!760 = !DILocation(line: 655, column: 15, scope: !64, inlinedAt: !755)
!761 = !DILocation(line: 656, column: 7, scope: !84, inlinedAt: !755)
!762 = !DILocation(line: 656, column: 19, scope: !84, inlinedAt: !755)
!763 = !DILocation(line: 656, column: 22, scope: !764, inlinedAt: !755)
!764 = !DILexicalBlockFile(scope: !84, file: !65, discriminator: 16)
!765 = !DILocation(line: 656, column: 7, scope: !766, inlinedAt: !755)
!766 = !DILexicalBlockFile(scope: !64, file: !65, discriminator: 16)
!767 = !DILocation(line: 662, column: 7, scope: !768, inlinedAt: !755)
!768 = distinct !DILexicalBlock(scope: !84, file: !65, line: 657, column: 5)
!769 = !DILocation(line: 662, column: 7, scope: !770, inlinedAt: !755)
!770 = !DILexicalBlockFile(scope: !768, file: !65, discriminator: 1)
!771 = !DILocation(line: 664, column: 5, scope: !768, inlinedAt: !755)
!772 = !DILocation(line: 665, column: 3, scope: !64, inlinedAt: !755)
!773 = !DILocation(line: 665, column: 3, scope: !758, inlinedAt: !755)
!774 = !DILocation(line: 667, column: 3, scope: !64, inlinedAt: !755)
!775 = !DILocation(line: 667, column: 3, scope: !758, inlinedAt: !755)
!776 = !DILocation(line: 81, column: 3, scope: !712)
!777 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 189, type: !778, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !781)
!778 = !DISubroutineType(types: !779)
!779 = !{!28, !28, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!781 = !{!782, !783, !784, !785, !786, !787, !799, !802, !805}
!782 = !DILocalVariable(name: "argc", arg: 1, scope: !777, file: !3, line: 189, type: !28)
!783 = !DILocalVariable(name: "argv", arg: 2, scope: !777, file: !3, line: 189, type: !780)
!784 = !DILocalVariable(name: "specified_mode", scope: !777, file: !3, line: 191, type: !54)
!785 = !DILocalVariable(name: "optc", scope: !777, file: !3, line: 192, type: !28)
!786 = !DILocalVariable(name: "scontext", scope: !777, file: !3, line: 193, type: !54)
!787 = !DILocalVariable(name: "options", scope: !777, file: !3, line: 194, type: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !3, line: 85, size: 256, elements: !789)
!789 = !{!790, !794, !795, !796, !797, !798}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !788, file: !3, line: 89, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!28, !54, !54, !45}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "umask_value", scope: !788, file: !3, line: 92, baseType: !695, size: 32, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !788, file: !3, line: 95, baseType: !695, size: 32, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !788, file: !3, line: 98, baseType: !695, size: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !788, file: !3, line: 101, baseType: !116, size: 8, offset: 160)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !788, file: !3, line: 104, baseType: !54, size: 64, offset: 192)
!799 = !DILocalVariable(name: "ret", scope: !800, file: !3, line: 261, type: !28)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 260, column: 5)
!801 = distinct !DILexicalBlock(scope: !777, file: !3, line: 259, column: 7)
!802 = !DILocalVariable(name: "umask_value", scope: !803, file: !3, line: 276, type: !695)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 275, column: 5)
!804 = distinct !DILexicalBlock(scope: !777, file: !3, line: 274, column: 7)
!805 = !DILocalVariable(name: "change", scope: !806, file: !3, line: 282, type: !808)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 281, column: 9)
!807 = distinct !DILexicalBlock(scope: !803, file: !3, line: 280, column: 11)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !810, line: 25, flags: DIFlagFwdDecl)
!810 = !DIFile(filename: "./lib/modechange.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!811 = !DILocation(line: 189, column: 11, scope: !777)
!812 = !DILocation(line: 189, column: 24, scope: !777)
!813 = !DILocation(line: 191, column: 15, scope: !777)
!814 = !DILocation(line: 193, column: 15, scope: !777)
!815 = !DILocation(line: 194, column: 3, scope: !777)
!816 = !DILocation(line: 196, column: 11, scope: !777)
!817 = !DILocation(line: 196, column: 34, scope: !777)
!818 = !{!819, !726, i64 0}
!819 = !{!"mkdir_options", !726, i64 0, !820, i64 8, !820, i64 12, !820, i64 16, !821, i64 20, !726, i64 24}
!820 = !{!"int", !727, i64 0}
!821 = !{!"_Bool", !727, i64 0}
!822 = !DILocation(line: 197, column: 11, scope: !777)
!823 = !DILocation(line: 197, column: 16, scope: !777)
!824 = !{!819, !820, i64 12}
!825 = !DILocation(line: 198, column: 11, scope: !777)
!826 = !DILocation(line: 198, column: 21, scope: !777)
!827 = !{!819, !820, i64 16}
!828 = !DILocation(line: 199, column: 11, scope: !777)
!829 = !DILocation(line: 199, column: 36, scope: !777)
!830 = !{!819, !726, i64 24}
!831 = !DILocation(line: 200, column: 11, scope: !777)
!832 = !DILocation(line: 200, column: 32, scope: !777)
!833 = !{!819, !821, i64 20}
!834 = !DILocation(line: 203, column: 21, scope: !777)
!835 = !DILocation(line: 203, column: 3, scope: !777)
!836 = !DILocation(line: 204, column: 3, scope: !777)
!837 = !DILocation(line: 205, column: 3, scope: !777)
!838 = !DILocation(line: 206, column: 3, scope: !777)
!839 = !DILocation(line: 208, column: 3, scope: !777)
!840 = !DILocation(line: 210, column: 3, scope: !777)
!841 = !DILocation(line: 210, column: 18, scope: !842)
!842 = !DILexicalBlockFile(scope: !777, file: !3, discriminator: 1)
!843 = !DILocation(line: 192, column: 7, scope: !777)
!844 = !DILocation(line: 210, column: 3, scope: !842)
!845 = !DILocation(line: 215, column: 42, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 213, column: 9)
!847 = distinct !DILexicalBlock(scope: !777, file: !3, line: 211, column: 5)
!848 = !DILocation(line: 216, column: 11, scope: !846)
!849 = distinct !{!849, !840, !850}
!850 = !DILocation(line: 248, column: 5, scope: !777)
!851 = !DILocation(line: 218, column: 28, scope: !846)
!852 = !DILocation(line: 219, column: 11, scope: !846)
!853 = !DILocation(line: 221, column: 46, scope: !846)
!854 = !DILocation(line: 221, column: 44, scope: !846)
!855 = !DILocation(line: 222, column: 11, scope: !846)
!856 = !DILocation(line: 236, column: 20, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 236, column: 20)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 229, column: 20)
!859 = distinct !DILexicalBlock(scope: !846, file: !3, line: 224, column: 15)
!860 = !DILocation(line: 236, column: 20, scope: !858)
!861 = !DILocation(line: 239, column: 22, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !3, line: 237, column: 13)
!863 = !DILocation(line: 238, column: 15, scope: !862)
!864 = !DILocation(line: 241, column: 13, scope: !862)
!865 = !DILocation(line: 243, column: 9, scope: !846)
!866 = !DILocation(line: 244, column: 9, scope: !846)
!867 = !DILocation(line: 244, column: 9, scope: !868)
!868 = !DILexicalBlockFile(scope: !846, file: !3, discriminator: 1)
!869 = !DILocation(line: 246, column: 11, scope: !846)
!870 = !DILocation(line: 250, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !777, file: !3, line: 250, column: 7)
!872 = !{!820, !820, i64 0}
!873 = !DILocation(line: 250, column: 14, scope: !871)
!874 = !DILocation(line: 250, column: 7, scope: !777)
!875 = !DILocation(line: 252, column: 20, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 251, column: 5)
!877 = !DILocation(line: 252, column: 7, scope: !878)
!878 = !DILexicalBlockFile(scope: !876, file: !3, discriminator: 1)
!879 = !DILocation(line: 253, column: 7, scope: !876)
!880 = !DILocation(line: 274, column: 7, scope: !804)
!881 = !DILocation(line: 274, column: 41, scope: !882)
!882 = !DILexicalBlockFile(scope: !804, file: !3, discriminator: 1)
!883 = !DILocation(line: 274, column: 38, scope: !804)
!884 = !DILocation(line: 276, column: 28, scope: !803)
!885 = !DILocation(line: 276, column: 14, scope: !803)
!886 = !DILocation(line: 277, column: 7, scope: !803)
!887 = !DILocation(line: 278, column: 15, scope: !803)
!888 = !DILocation(line: 278, column: 27, scope: !803)
!889 = !{!819, !820, i64 8}
!890 = !DILocation(line: 280, column: 11, scope: !803)
!891 = !DILocation(line: 282, column: 40, scope: !806)
!892 = !DILocation(line: 282, column: 31, scope: !806)
!893 = !DILocation(line: 283, column: 16, scope: !894)
!894 = distinct !DILexicalBlock(scope: !806, file: !3, line: 283, column: 15)
!895 = !DILocation(line: 283, column: 15, scope: !806)
!896 = !DILocation(line: 284, column: 13, scope: !894)
!897 = !DILocation(line: 284, column: 13, scope: !898)
!898 = !DILexicalBlockFile(scope: !894, file: !3, discriminator: 1)
!899 = !DILocation(line: 284, column: 13, scope: !900)
!900 = !DILexicalBlockFile(scope: !894, file: !3, discriminator: 2)
!901 = !DILocation(line: 286, column: 26, scope: !806)
!902 = !DILocation(line: 286, column: 24, scope: !806)
!903 = !DILocation(line: 288, column: 17, scope: !806)
!904 = !DILocation(line: 288, column: 11, scope: !806)
!905 = !DILocation(line: 289, column: 9, scope: !806)
!906 = !DILocation(line: 291, column: 22, scope: !807)
!907 = !DILocation(line: 294, column: 39, scope: !777)
!908 = !DILocation(line: 294, column: 37, scope: !777)
!909 = !DILocation(line: 294, column: 52, scope: !777)
!910 = !DILocation(line: 294, column: 10, scope: !777)
!911 = !DILocation(line: 296, column: 1, scope: !777)
!912 = !DILocation(line: 294, column: 3, scope: !777)
!913 = distinct !DISubprogram(name: "make_ancestor", scope: !3, file: !3, line: 122, type: !792, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !914)
!914 = !{!915, !916, !917, !918, !921, !922, !923, !924}
!915 = !DILocalVariable(name: "dir", arg: 1, scope: !913, file: !3, line: 122, type: !54)
!916 = !DILocalVariable(name: "component", arg: 2, scope: !913, file: !3, line: 122, type: !54)
!917 = !DILocalVariable(name: "options", arg: 3, scope: !913, file: !3, line: 122, type: !45)
!918 = !DILocalVariable(name: "o", scope: !913, file: !3, line: 124, type: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!921 = !DILocalVariable(name: "user_wx", scope: !913, file: !3, line: 131, type: !695)
!922 = !DILocalVariable(name: "self_denying_umask", scope: !913, file: !3, line: 132, type: !116)
!923 = !DILocalVariable(name: "r", scope: !913, file: !3, line: 135, type: !28)
!924 = !DILocalVariable(name: "mkdir_errno", scope: !925, file: !3, line: 138, type: !28)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 137, column: 5)
!926 = distinct !DILexicalBlock(scope: !913, file: !3, line: 136, column: 7)
!927 = !DILocation(line: 122, column: 28, scope: !913)
!928 = !DILocation(line: 122, column: 45, scope: !913)
!929 = !DILocation(line: 122, column: 62, scope: !913)
!930 = !DILocation(line: 126, column: 10, scope: !931)
!931 = distinct !DILexicalBlock(scope: !913, file: !3, line: 126, column: 7)
!932 = !{i8 0, i8 2}
!933 = !DILocation(line: 126, column: 31, scope: !931)
!934 = !DILocalVariable(name: "path", arg: 1, scope: !935, file: !936, line: 44, type: !54)
!935 = distinct !DISubprogram(name: "defaultcon", scope: !936, file: !936, line: 44, type: !937, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !939)
!936 = !DIFile(filename: "src/selinux.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!937 = !DISubroutineType(types: !938)
!938 = !{!28, !54, !695}
!939 = !{!934, !940}
!940 = !DILocalVariable(name: "mode", arg: 2, scope: !935, file: !936, line: 44, type: !695)
!941 = !DILocation(line: 44, column: 25, scope: !935, inlinedAt: !942)
!942 = distinct !DILocation(line: 126, column: 34, scope: !943)
!943 = !DILexicalBlockFile(scope: !931, file: !3, discriminator: 1)
!944 = !DILocation(line: 44, column: 38, scope: !935, inlinedAt: !942)
!945 = !DILocation(line: 45, column: 3, scope: !935, inlinedAt: !942)
!946 = !DILocation(line: 45, column: 9, scope: !935, inlinedAt: !942)
!947 = !DILocation(line: 126, column: 7, scope: !948)
!948 = !DILexicalBlockFile(scope: !913, file: !3, discriminator: 2)
!949 = !DILocation(line: 131, column: 10, scope: !913)
!950 = !DILocation(line: 132, column: 33, scope: !913)
!951 = !DILocation(line: 132, column: 45, scope: !913)
!952 = !DILocation(line: 132, column: 56, scope: !913)
!953 = !DILocation(line: 133, column: 7, scope: !913)
!954 = !DILocation(line: 135, column: 11, scope: !913)
!955 = !DILocation(line: 135, column: 7, scope: !913)
!956 = !DILocation(line: 134, column: 27, scope: !957)
!957 = distinct !DILexicalBlock(scope: !913, file: !3, line: 133, column: 7)
!958 = !DILocation(line: 134, column: 5, scope: !957)
!959 = !DILocation(line: 138, column: 25, scope: !925)
!960 = !DILocation(line: 138, column: 11, scope: !925)
!961 = !DILocation(line: 139, column: 17, scope: !925)
!962 = !DILocation(line: 139, column: 7, scope: !925)
!963 = !DILocation(line: 140, column: 13, scope: !925)
!964 = !DILocation(line: 141, column: 5, scope: !925)
!965 = !DILocation(line: 142, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !913, file: !3, line: 142, column: 7)
!967 = !DILocation(line: 142, column: 7, scope: !913)
!968 = !DILocation(line: 144, column: 15, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !3, line: 143, column: 5)
!970 = !DILocation(line: 144, column: 38, scope: !969)
!971 = !DILocalVariable(name: "dir", arg: 1, scope: !972, file: !3, line: 109, type: !54)
!972 = distinct !DISubprogram(name: "announce_mkdir", scope: !3, file: !3, line: 109, type: !973, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !54, !45}
!975 = !{!971, !976, !977}
!976 = !DILocalVariable(name: "options", arg: 2, scope: !972, file: !3, line: 109, type: !45)
!977 = !DILocalVariable(name: "o", scope: !972, file: !3, line: 111, type: !919)
!978 = !DILocation(line: 109, column: 29, scope: !972, inlinedAt: !979)
!979 = distinct !DILocation(line: 145, column: 7, scope: !969)
!980 = !DILocation(line: 109, column: 40, scope: !972, inlinedAt: !979)
!981 = !DILocation(line: 112, column: 10, scope: !982, inlinedAt: !979)
!982 = distinct !DILexicalBlock(scope: !972, file: !3, line: 112, column: 7)
!983 = !DILocation(line: 112, column: 7, scope: !982, inlinedAt: !979)
!984 = !DILocation(line: 112, column: 7, scope: !972, inlinedAt: !979)
!985 = !DILocation(line: 113, column: 19, scope: !982, inlinedAt: !979)
!986 = !DILocation(line: 113, column: 56, scope: !982, inlinedAt: !979)
!987 = !DILocation(line: 113, column: 5, scope: !988, inlinedAt: !979)
!988 = !DILexicalBlockFile(scope: !982, file: !3, discriminator: 1)
!989 = !DILocation(line: 113, column: 5, scope: !982, inlinedAt: !979)
!990 = !DILocation(line: 147, column: 3, scope: !913)
!991 = distinct !DISubprogram(name: "process_dir", scope: !3, file: !3, line: 152, type: !992, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !995)
!992 = !DISubroutineType(types: !993)
!993 = !{!28, !43, !994, !45}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!995 = !{!996, !997, !998, !999, !1000}
!996 = !DILocalVariable(name: "dir", arg: 1, scope: !991, file: !3, line: 152, type: !43)
!997 = !DILocalVariable(name: "wd", arg: 2, scope: !991, file: !3, line: 152, type: !994)
!998 = !DILocalVariable(name: "options", arg: 3, scope: !991, file: !3, line: 152, type: !45)
!999 = !DILocalVariable(name: "o", scope: !991, file: !3, line: 154, type: !919)
!1000 = !DILocalVariable(name: "ret", scope: !991, file: !3, line: 165, type: !28)
!1001 = !DILocation(line: 152, column: 20, scope: !991)
!1002 = !DILocation(line: 152, column: 40, scope: !991)
!1003 = !DILocation(line: 152, column: 50, scope: !991)
!1004 = !DILocation(line: 157, column: 10, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !991, file: !3, line: 157, column: 7)
!1006 = !DILocation(line: 159, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 159, column: 11)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 158, column: 5)
!1009 = !DILocation(line: 157, column: 7, scope: !991)
!1010 = !DILocation(line: 44, column: 25, scope: !935, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 159, column: 42, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1007, file: !3, discriminator: 1)
!1013 = !DILocation(line: 44, column: 38, scope: !935, inlinedAt: !1011)
!1014 = !DILocation(line: 45, column: 3, scope: !935, inlinedAt: !1011)
!1015 = !DILocation(line: 45, column: 9, scope: !935, inlinedAt: !1011)
!1016 = !DILocation(line: 159, column: 11, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1008, file: !3, discriminator: 2)
!1018 = !DILocation(line: 165, column: 44, scope: !991)
!1019 = !DILocation(line: 166, column: 35, scope: !991)
!1020 = !DILocation(line: 167, column: 35, scope: !991)
!1021 = !DILocation(line: 165, column: 14, scope: !991)
!1022 = !DILocation(line: 165, column: 7, scope: !991)
!1023 = !DILocation(line: 176, column: 27, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !991, file: !3, line: 176, column: 7)
!1025 = !DILocation(line: 176, column: 33, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1024, file: !3, discriminator: 1)
!1027 = !DILocation(line: 177, column: 7, scope: !1024)
!1028 = !DILocation(line: 177, column: 13, scope: !1026)
!1029 = !DILocation(line: 177, column: 10, scope: !1026)
!1030 = !DILocation(line: 176, column: 7, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !991, file: !3, discriminator: 2)
!1032 = !DILocalVariable(name: "path", arg: 1, scope: !1033, file: !936, line: 40, type: !54)
!1033 = distinct !DISubprogram(name: "restorecon", scope: !936, file: !936, line: 40, type: !1034, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!116, !54, !116, !116}
!1036 = !{!1032, !1037, !1038}
!1037 = !DILocalVariable(name: "recurse", arg: 2, scope: !1033, file: !936, line: 40, type: !116)
!1038 = !DILocalVariable(name: "preserve", arg: 3, scope: !1033, file: !936, line: 40, type: !116)
!1039 = !DILocation(line: 40, column: 25, scope: !1033, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 179, column: 13, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1042, file: !3, discriminator: 2)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 179, column: 11)
!1043 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 178, column: 5)
!1044 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1045 = !DILocation(line: 40, column: 36, scope: !1033, inlinedAt: !1040)
!1046 = !DILocation(line: 40, column: 50, scope: !1033, inlinedAt: !1040)
!1047 = !DILocation(line: 41, column: 3, scope: !1033, inlinedAt: !1040)
!1048 = !DILocation(line: 41, column: 9, scope: !1033, inlinedAt: !1040)
!1049 = !DILocation(line: 179, column: 11, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1043, file: !3, discriminator: 1)
!1051 = !DILocation(line: 185, column: 3, scope: !991)
!1052 = !DILocation(line: 109, column: 29, scope: !972)
!1053 = !DILocation(line: 109, column: 40, scope: !972)
!1054 = !DILocation(line: 112, column: 10, scope: !982)
!1055 = !DILocation(line: 112, column: 7, scope: !982)
!1056 = !DILocation(line: 112, column: 7, scope: !972)
!1057 = !DILocation(line: 113, column: 19, scope: !982)
!1058 = !DILocation(line: 113, column: 56, scope: !982)
!1059 = !DILocation(line: 113, column: 5, scope: !988)
!1060 = !DILocation(line: 113, column: 5, scope: !982)
!1061 = !DILocation(line: 114, column: 1, scope: !972)
!1062 = distinct !DISubprogram(name: "prog_fprintf", scope: !595, file: !595, line: 28, type: !1063, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !1117)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1065, !54, null}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1067, line: 49, baseType: !1068)
!1067 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1069, line: 241, size: 1728, elements: !1070)
!1069 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1091, !1092, !1093, !1094, !1097, !1098, !1100, !1102, !1105, !1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1068, file: !1069, line: 242, baseType: !28, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1068, file: !1069, line: 247, baseType: !43, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1068, file: !1069, line: 248, baseType: !43, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1068, file: !1069, line: 249, baseType: !43, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1068, file: !1069, line: 250, baseType: !43, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1068, file: !1069, line: 251, baseType: !43, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1068, file: !1069, line: 252, baseType: !43, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1068, file: !1069, line: 253, baseType: !43, size: 64, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1068, file: !1069, line: 254, baseType: !43, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1068, file: !1069, line: 256, baseType: !43, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1068, file: !1069, line: 257, baseType: !43, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1068, file: !1069, line: 258, baseType: !43, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1068, file: !1069, line: 260, baseType: !1084, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1069, line: 156, size: 192, elements: !1086)
!1086 = !{!1087, !1088, !1090}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1085, file: !1069, line: 157, baseType: !1084, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1085, file: !1069, line: 158, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1085, file: !1069, line: 162, baseType: !28, size: 32, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1068, file: !1069, line: 262, baseType: !1089, size: 64, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1068, file: !1069, line: 264, baseType: !28, size: 32, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1068, file: !1069, line: 268, baseType: !28, size: 32, offset: 928)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1068, file: !1069, line: 270, baseType: !1095, size: 64, offset: 960)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !34, line: 140, baseType: !1096)
!1096 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1068, file: !1069, line: 274, baseType: !157, size: 16, offset: 1024)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1068, file: !1069, line: 275, baseType: !1099, size: 8, offset: 1040)
!1099 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1068, file: !1069, line: 276, baseType: !1101, size: 8, offset: 1048)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !580)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1068, file: !1069, line: 280, baseType: !1103, size: 64, offset: 1088)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1069, line: 150, baseType: null)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1068, file: !1069, line: 289, baseType: !1106, size: 64, offset: 1152)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !34, line: 141, baseType: !1096)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1068, file: !1069, line: 297, baseType: !45, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1068, file: !1069, line: 298, baseType: !45, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1068, file: !1069, line: 299, baseType: !45, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1068, file: !1069, line: 300, baseType: !45, size: 64, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1068, file: !1069, line: 302, baseType: !46, size: 64, offset: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1068, file: !1069, line: 303, baseType: !28, size: 32, offset: 1536)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1068, file: !1069, line: 305, baseType: !1114, size: 160, offset: 1568)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !1115)
!1115 = !{!1116}
!1116 = !DISubrange(count: 20)
!1117 = !{!1118, !1119, !1120}
!1118 = !DILocalVariable(name: "fp", arg: 1, scope: !1062, file: !595, line: 28, type: !1065)
!1119 = !DILocalVariable(name: "fmt", arg: 2, scope: !1062, file: !595, line: 28, type: !54)
!1120 = !DILocalVariable(name: "ap", scope: !1062, file: !595, line: 30, type: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1067, line: 80, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !571, line: 50, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !595, line: 30, baseType: !1124)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 192, elements: !580)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !595, line: 30, size: 192, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1125, file: !595, line: 30, baseType: !58, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1125, file: !595, line: 30, baseType: !58, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1125, file: !595, line: 30, baseType: !45, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1125, file: !595, line: 30, baseType: !45, size: 64, offset: 128)
!1131 = !DILocation(line: 28, column: 21, scope: !1062)
!1132 = !DILocation(line: 28, column: 37, scope: !1062)
!1133 = !DILocation(line: 30, column: 3, scope: !1062)
!1134 = !DILocation(line: 30, column: 11, scope: !1062)
!1135 = !DILocation(line: 31, column: 3, scope: !1062)
!1136 = !DILocation(line: 32, column: 3, scope: !1062)
!1137 = !DILocation(line: 33, column: 3, scope: !1062)
!1138 = !DILocalVariable(name: "__stream", arg: 1, scope: !1139, file: !1140, line: 124, type: !1143)
!1139 = distinct !DISubprogram(name: "vfprintf", scope: !1140, file: !1140, line: 124, type: !1141, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !1146)
!1140 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!28, !1143, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1065)
!1144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1146 = !{!1138, !1147, !1148}
!1147 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1139, file: !1140, line: 125, type: !1144)
!1148 = !DILocalVariable(name: "__ap", arg: 3, scope: !1139, file: !1140, line: 125, type: !1145)
!1149 = !DILocation(line: 124, column: 28, scope: !1139, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 34, column: 3, scope: !1062)
!1151 = !DILocation(line: 125, column: 27, scope: !1139, inlinedAt: !1150)
!1152 = !DILocation(line: 125, column: 45, scope: !1139, inlinedAt: !1150)
!1153 = !DILocation(line: 127, column: 10, scope: !1139, inlinedAt: !1150)
!1154 = !DILocation(line: 35, column: 3, scope: !1062)
!1155 = !DILocalVariable(name: "__c", arg: 1, scope: !1156, file: !1157, line: 88, type: !28)
!1156 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1157, file: !1157, line: 88, type: !1158, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !594, variables: !1160)
!1157 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!28, !28, !1065}
!1160 = !{!1155, !1161}
!1161 = !DILocalVariable(name: "__stream", arg: 2, scope: !1156, file: !1157, line: 88, type: !1065)
!1162 = !DILocation(line: 88, column: 21, scope: !1156, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 36, column: 3, scope: !1062)
!1164 = !DILocation(line: 88, column: 32, scope: !1156, inlinedAt: !1163)
!1165 = !DILocation(line: 90, column: 10, scope: !1156, inlinedAt: !1163)
!1166 = !{!1167, !726, i64 40}
!1167 = !{!"_IO_FILE", !820, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !726, i64 32, !726, i64 40, !726, i64 48, !726, i64 56, !726, i64 64, !726, i64 72, !726, i64 80, !726, i64 88, !726, i64 96, !726, i64 104, !820, i64 112, !820, i64 116, !1168, i64 120, !1169, i64 128, !727, i64 130, !727, i64 131, !726, i64 136, !1168, i64 144, !726, i64 152, !726, i64 160, !726, i64 168, !726, i64 176, !1168, i64 184, !820, i64 192, !727, i64 196}
!1168 = !{!"long", !727, i64 0}
!1169 = !{!"short", !727, i64 0}
!1170 = !{!1167, !726, i64 48}
!1171 = !{!"branch_weights", i32 2000, i32 1}
!1172 = !DILocation(line: 90, column: 10, scope: !1173, inlinedAt: !1163)
!1173 = !DILexicalBlockFile(scope: !1156, file: !1157, discriminator: 1)
!1174 = !DILocation(line: 90, column: 10, scope: !1175, inlinedAt: !1163)
!1175 = !DILexicalBlockFile(scope: !1156, file: !1157, discriminator: 2)
!1176 = !{!727, !727, i64 0}
!1177 = !DILocation(line: 37, column: 1, scope: !1062)
!1178 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !115, file: !115, line: 41, type: !66, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1179)
!1179 = !{!1180}
!1180 = !DILocalVariable(name: "file", arg: 1, scope: !1178, file: !115, line: 41, type: !54)
!1181 = !DILocation(line: 41, column: 41, scope: !1178)
!1182 = !DILocation(line: 43, column: 13, scope: !1178)
!1183 = !DILocation(line: 44, column: 1, scope: !1178)
!1184 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !115, file: !115, line: 78, type: !1185, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !116}
!1187 = !{!1188}
!1188 = !DILocalVariable(name: "ignore", arg: 1, scope: !1184, file: !115, line: 78, type: !116)
!1189 = !DILocation(line: 78, column: 37, scope: !1184)
!1190 = !DILocation(line: 80, column: 16, scope: !1184)
!1191 = !{!821, !821, i64 0}
!1192 = !DILocation(line: 81, column: 1, scope: !1184)
!1193 = distinct !DISubprogram(name: "close_stdout", scope: !115, file: !115, line: 107, type: !741, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !110, variables: !1194)
!1194 = !{!1195}
!1195 = !DILocalVariable(name: "write_error", scope: !1196, file: !115, line: 112, type: !54)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !115, line: 111, column: 5)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !115, line: 109, column: 7)
!1198 = !DILocation(line: 109, column: 21, scope: !1197)
!1199 = !DILocation(line: 109, column: 7, scope: !1197)
!1200 = !DILocation(line: 109, column: 29, scope: !1197)
!1201 = !DILocation(line: 110, column: 7, scope: !1197)
!1202 = !DILocation(line: 110, column: 12, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1197, file: !115, discriminator: 1)
!1204 = !DILocation(line: 114, column: 19, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1196, file: !115, line: 113, column: 11)
!1206 = !DILocation(line: 110, column: 25, scope: !1203)
!1207 = !DILocation(line: 110, column: 28, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1197, file: !115, discriminator: 2)
!1209 = !DILocation(line: 110, column: 34, scope: !1208)
!1210 = !DILocation(line: 109, column: 7, scope: !1211)
!1211 = !DILexicalBlockFile(scope: !1193, file: !115, discriminator: 1)
!1212 = !DILocation(line: 112, column: 33, scope: !1196)
!1213 = !DILocation(line: 112, column: 19, scope: !1196)
!1214 = !DILocation(line: 113, column: 11, scope: !1205)
!1215 = !DILocation(line: 113, column: 11, scope: !1196)
!1216 = !DILocation(line: 114, column: 36, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1205, file: !115, discriminator: 1)
!1218 = !DILocation(line: 114, column: 9, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1205, file: !115, discriminator: 2)
!1220 = !DILocation(line: 114, column: 9, scope: !1205)
!1221 = !DILocation(line: 117, column: 9, scope: !1217)
!1222 = !DILocation(line: 119, column: 14, scope: !1196)
!1223 = !DILocation(line: 119, column: 7, scope: !1196)
!1224 = !DILocation(line: 122, column: 22, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1193, file: !115, line: 122, column: 8)
!1226 = !DILocation(line: 122, column: 8, scope: !1225)
!1227 = !DILocation(line: 122, column: 30, scope: !1225)
!1228 = !DILocation(line: 122, column: 8, scope: !1193)
!1229 = !DILocation(line: 123, column: 13, scope: !1225)
!1230 = !DILocation(line: 123, column: 6, scope: !1225)
!1231 = !DILocation(line: 124, column: 1, scope: !1193)
!1232 = distinct !DISubprogram(name: "make_dir_parents", scope: !1233, file: !1233, line: 85, type: !1234, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !1238)
!1233 = !DIFile(filename: "lib/mkdir-p.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!116, !43, !1236, !791, !45, !695, !1237, !695, !56, !59, !116}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1254, !1255, !1258, !1259, !1260, !1263, !1299, !1304, !1305, !1308}
!1239 = !DILocalVariable(name: "dir", arg: 1, scope: !1232, file: !1233, line: 85, type: !43)
!1240 = !DILocalVariable(name: "wd", arg: 2, scope: !1232, file: !1233, line: 86, type: !1236)
!1241 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1232, file: !1233, line: 87, type: !791)
!1242 = !DILocalVariable(name: "options", arg: 4, scope: !1232, file: !1233, line: 88, type: !45)
!1243 = !DILocalVariable(name: "mode", arg: 5, scope: !1232, file: !1233, line: 89, type: !695)
!1244 = !DILocalVariable(name: "announce", arg: 6, scope: !1232, file: !1233, line: 90, type: !1237)
!1245 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1232, file: !1233, line: 91, type: !695)
!1246 = !DILocalVariable(name: "owner", arg: 8, scope: !1232, file: !1233, line: 92, type: !56)
!1247 = !DILocalVariable(name: "group", arg: 9, scope: !1232, file: !1233, line: 93, type: !59)
!1248 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1232, file: !1233, line: 94, type: !116)
!1249 = !DILocalVariable(name: "mkdir_errno", scope: !1232, file: !1233, line: 96, type: !28)
!1250 = !DILocalVariable(name: "prefix_len", scope: !1251, file: !1233, line: 100, type: !1253)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !1233, line: 99, column: 5)
!1252 = distinct !DILexicalBlock(scope: !1232, file: !1233, line: 98, column: 7)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !47, line: 51, baseType: !1096)
!1254 = !DILocalVariable(name: "savewd_chdir_options", scope: !1251, file: !1233, line: 101, type: !28)
!1255 = !DILocalVariable(name: "keep_owner", scope: !1256, file: !1233, line: 121, type: !116)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !1233, line: 115, column: 9)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !1233, line: 114, column: 11)
!1258 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1256, file: !1233, line: 122, type: !116)
!1259 = !DILocalVariable(name: "mkdir_mode", scope: !1256, file: !1233, line: 124, type: !695)
!1260 = !DILocalVariable(name: "umask_must_be_ok", scope: !1261, file: !1233, line: 134, type: !116)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !1233, line: 131, column: 13)
!1262 = distinct !DILexicalBlock(scope: !1256, file: !1233, line: 130, column: 15)
!1263 = !DILocalVariable(name: "st", scope: !1264, file: !1233, line: 149, type: !1266)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !1233, line: 148, column: 13)
!1265 = distinct !DILexicalBlock(scope: !1256, file: !1233, line: 147, column: 15)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1267, line: 46, size: 1152, elements: !1268)
!1267 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1268 = !{!1269, !1271, !1273, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1283, !1285, !1293, !1294, !1295}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1266, file: !1267, line: 48, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !34, line: 133, baseType: !48)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1266, file: !1267, line: 53, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !34, line: 136, baseType: !48)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1266, file: !1267, line: 61, baseType: !1274, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !34, line: 139, baseType: !48)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1266, file: !1267, line: 62, baseType: !696, size: 32, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1266, file: !1267, line: 64, baseType: !57, size: 32, offset: 224)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1266, file: !1267, line: 65, baseType: !60, size: 32, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1266, file: !1267, line: 67, baseType: !28, size: 32, offset: 288)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1266, file: !1267, line: 69, baseType: !1270, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1266, file: !1267, line: 74, baseType: !1095, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1266, file: !1267, line: 78, baseType: !1282, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !34, line: 162, baseType: !1096)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1266, file: !1267, line: 80, baseType: !1284, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !34, line: 167, baseType: !1096)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1266, file: !1267, line: 91, baseType: !1286, size: 128, offset: 576)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1287, line: 8, size: 128, elements: !1288)
!1287 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1288 = !{!1289, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1286, file: !1287, line: 10, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !34, line: 148, baseType: !1096)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1286, file: !1287, line: 11, baseType: !1292, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !34, line: 184, baseType: !1096)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1266, file: !1267, line: 92, baseType: !1286, size: 128, offset: 704)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1266, file: !1267, line: 93, baseType: !1286, size: 128, offset: 832)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1266, file: !1267, line: 106, baseType: !1296, size: 192, offset: 960)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 192, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 3)
!1299 = !DILocalVariable(name: "open_result", scope: !1300, file: !1233, line: 158, type: !1301)
!1300 = distinct !DILexicalBlock(scope: !1265, file: !1233, line: 157, column: 13)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 2)
!1304 = !DILocalVariable(name: "chdir_result", scope: !1300, file: !1233, line: 159, type: !28)
!1305 = !DILocalVariable(name: "chdir_ok", scope: !1306, file: !1233, line: 166, type: !116)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !1233, line: 165, column: 17)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !1233, line: 162, column: 19)
!1308 = !DILocalVariable(name: "subdir", scope: !1306, file: !1233, line: 167, type: !54)
!1309 = !DILocation(line: 85, column: 25, scope: !1232)
!1310 = !DILocation(line: 86, column: 34, scope: !1232)
!1311 = !DILocation(line: 87, column: 25, scope: !1232)
!1312 = !DILocation(line: 88, column: 25, scope: !1232)
!1313 = !DILocation(line: 89, column: 26, scope: !1232)
!1314 = !DILocation(line: 90, column: 26, scope: !1232)
!1315 = !DILocation(line: 91, column: 26, scope: !1232)
!1316 = !DILocation(line: 92, column: 25, scope: !1232)
!1317 = !DILocation(line: 93, column: 25, scope: !1232)
!1318 = !DILocation(line: 94, column: 24, scope: !1232)
!1319 = !DILocation(line: 96, column: 22, scope: !1232)
!1320 = !DILocalVariable(name: "wd", arg: 1, scope: !1321, file: !20, line: 124, type: !1324)
!1321 = distinct !DISubprogram(name: "savewd_errno", scope: !20, file: !20, line: 124, type: !1322, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !1326)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!28, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!1326 = !{!1320}
!1327 = !DILocation(line: 124, column: 36, scope: !1321, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 96, column: 56, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1232, file: !1233, discriminator: 2)
!1330 = !DILocation(line: 126, column: 15, scope: !1321, inlinedAt: !1328)
!1331 = !{!1332, !727, i64 0}
!1332 = !{!"savewd", !727, i64 0, !727, i64 4}
!1333 = !DILocation(line: 126, column: 21, scope: !1321, inlinedAt: !1328)
!1334 = !DILocation(line: 126, column: 11, scope: !1321, inlinedAt: !1328)
!1335 = !DILocation(line: 126, column: 46, scope: !1336, inlinedAt: !1328)
!1336 = !DILexicalBlockFile(scope: !1321, file: !20, discriminator: 1)
!1337 = !DILocation(line: 96, column: 7, scope: !1232)
!1338 = !DILocation(line: 98, column: 19, scope: !1252)
!1339 = !DILocation(line: 98, column: 7, scope: !1232)
!1340 = !DILocation(line: 100, column: 17, scope: !1251)
!1341 = !DILocation(line: 101, column: 11, scope: !1251)
!1342 = !DILocation(line: 103, column: 11, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1251, file: !1233, line: 103, column: 11)
!1344 = !DILocation(line: 103, column: 11, scope: !1251)
!1345 = !DILocation(line: 105, column: 24, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !1233, line: 104, column: 9)
!1347 = !DILocation(line: 106, column: 26, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1346, file: !1233, line: 106, column: 15)
!1349 = !DILocation(line: 106, column: 15, scope: !1346)
!1350 = !DILocation(line: 108, column: 30, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !1233, line: 108, column: 19)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !1233, line: 107, column: 13)
!1353 = !DILocation(line: 108, column: 19, scope: !1352)
!1354 = !DILocation(line: 110, column: 29, scope: !1352)
!1355 = !DILocation(line: 121, column: 49, scope: !1256)
!1356 = !DILocation(line: 123, column: 25, scope: !1256)
!1357 = !DILocation(line: 123, column: 56, scope: !1256)
!1358 = !DILocation(line: 123, column: 48, scope: !1256)
!1359 = !DILocation(line: 124, column: 18, scope: !1256)
!1360 = !DILocation(line: 125, column: 15, scope: !1256)
!1361 = !DILocation(line: 126, column: 24, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1256, file: !1233, line: 125, column: 15)
!1363 = !DILocation(line: 126, column: 13, scope: !1362)
!1364 = !DILocation(line: 123, column: 68, scope: !1256)
!1365 = !DILocation(line: 128, column: 24, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !1233, line: 127, column: 20)
!1367 = !DILocation(line: 127, column: 20, scope: !1362)
!1368 = !DILocation(line: 130, column: 26, scope: !1262)
!1369 = !DILocation(line: 130, column: 15, scope: !1262)
!1370 = !DILocation(line: 130, column: 52, scope: !1262)
!1371 = !DILocation(line: 130, column: 15, scope: !1256)
!1372 = !DILocation(line: 134, column: 45, scope: !1261)
!1373 = !DILocation(line: 134, column: 57, scope: !1261)
!1374 = !DILocation(line: 136, column: 15, scope: !1261)
!1375 = !DILocation(line: 138, column: 36, scope: !1261)
!1376 = !DILocation(line: 137, column: 33, scope: !1261)
!1377 = !DILocation(line: 140, column: 13, scope: !1261)
!1378 = !DILocation(line: 143, column: 29, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1262, file: !1233, line: 142, column: 13)
!1380 = !DILocation(line: 147, column: 15, scope: !1265)
!1381 = !DILocation(line: 147, column: 15, scope: !1256)
!1382 = !DILocation(line: 149, column: 15, scope: !1264)
!1383 = !DILocation(line: 150, column: 31, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1264, file: !1233, line: 150, column: 19)
!1385 = !DILocation(line: 151, column: 19, scope: !1384)
!1386 = !DILocation(line: 151, column: 35, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1384, file: !1233, discriminator: 1)
!1388 = !DILocation(line: 151, column: 45, scope: !1387)
!1389 = !DIExpression(DW_OP_deref)
!1390 = !DILocation(line: 149, column: 27, scope: !1264)
!1391 = !DILocalVariable(name: "__path", arg: 1, scope: !1392, file: !1393, line: 449, type: !54)
!1392 = distinct !DISubprogram(name: "stat", scope: !1393, file: !1393, line: 449, type: !1394, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !599, variables: !1397)
!1393 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!28, !54, !1396}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1397 = !{!1391, !1398}
!1398 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1392, file: !1393, line: 449, type: !1396)
!1399 = !DILocation(line: 449, column: 1, scope: !1392, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 152, column: 26, scope: !1387)
!1401 = !DILocation(line: 451, column: 10, scope: !1392, inlinedAt: !1400)
!1402 = !DILocation(line: 152, column: 55, scope: !1387)
!1403 = !DILocation(line: 153, column: 23, scope: !1384)
!1404 = !DILocation(line: 153, column: 26, scope: !1387)
!1405 = !{!1406, !820, i64 24}
!1406 = !{!"stat", !1168, i64 0, !1168, i64 8, !1168, i64 16, !820, i64 24, !820, i64 28, !820, i64 32, !820, i64 36, !1168, i64 40, !1168, i64 48, !1168, i64 56, !1168, i64 64, !1407, i64 72, !1407, i64 88, !1407, i64 104, !727, i64 120}
!1407 = !{!"timespec", !1168, i64 0, !1168, i64 8}
!1408 = !DILocation(line: 150, column: 19, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1264, file: !1233, discriminator: 1)
!1410 = !DILocation(line: 155, column: 13, scope: !1265)
!1411 = !DILocation(line: 158, column: 15, scope: !1300)
!1412 = !DILocation(line: 158, column: 19, scope: !1300)
!1413 = !DILocation(line: 161, column: 53, scope: !1300)
!1414 = !DILocation(line: 160, column: 17, scope: !1300)
!1415 = !DILocation(line: 159, column: 19, scope: !1300)
!1416 = !DILocation(line: 162, column: 32, scope: !1307)
!1417 = !DILocation(line: 162, column: 19, scope: !1300)
!1418 = !DILocation(line: 185, column: 13, scope: !1265)
!1419 = !DILocation(line: 166, column: 49, scope: !1306)
!1420 = !DILocation(line: 167, column: 41, scope: !1306)
!1421 = !DILocation(line: 167, column: 31, scope: !1306)
!1422 = !DILocation(line: 168, column: 36, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1306, file: !1233, line: 168, column: 23)
!1424 = !DILocation(line: 168, column: 23, scope: !1423)
!1425 = !DILocation(line: 170, column: 23, scope: !1423)
!1426 = !DILocation(line: 168, column: 23, scope: !1306)
!1427 = !DILocation(line: 173, column: 35, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1306, file: !1233, line: 173, column: 23)
!1429 = !DILocation(line: 174, column: 23, scope: !1428)
!1430 = !DILocation(line: 177, column: 33, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !1233, line: 176, column: 21)
!1432 = !DILocation(line: 174, column: 39, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1428, file: !1233, discriminator: 1)
!1434 = !DILocation(line: 174, column: 49, scope: !1433)
!1435 = !DILocation(line: 175, column: 30, scope: !1433)
!1436 = !DILocation(line: 175, column: 36, scope: !1433)
!1437 = !DILocation(line: 173, column: 23, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1306, file: !1233, discriminator: 1)
!1439 = !DILocation(line: 178, column: 30, scope: !1431)
!1440 = !DILocation(line: 181, column: 30, scope: !1431)
!1441 = !DILocation(line: 177, column: 23, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1431, file: !1233, discriminator: 1)
!1443 = !DILocation(line: 182, column: 23, scope: !1431)
!1444 = !DILocation(line: 189, column: 26, scope: !1232)
!1445 = !DILocation(line: 189, column: 59, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1232, file: !1233, discriminator: 1)
!1447 = !DILocation(line: 189, column: 3, scope: !1329)
!1448 = !DILocation(line: 190, column: 3, scope: !1232)
!1449 = !DILocation(line: 191, column: 1, scope: !1232)
!1450 = distinct !DISubprogram(name: "mode_compile", scope: !621, file: !621, line: 134, type: !1451, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !1461)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1453, !54}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !621, line: 98, size: 128, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1454, file: !621, line: 100, baseType: !44, size: 8)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1454, file: !621, line: 101, baseType: !44, size: 8, offset: 8)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1454, file: !621, line: 102, baseType: !695, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1454, file: !621, line: 103, baseType: !695, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1454, file: !621, line: 104, baseType: !695, size: 32, offset: 96)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1469, !1470, !1471, !1473, !1477, !1479, !1480, !1481, !1482, !1483}
!1462 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1450, file: !621, line: 134, type: !54)
!1463 = !DILocalVariable(name: "mc", scope: !1450, file: !621, line: 137, type: !1453)
!1464 = !DILocalVariable(name: "used", scope: !1450, file: !621, line: 138, type: !46)
!1465 = !DILocalVariable(name: "p", scope: !1450, file: !621, line: 139, type: !54)
!1466 = !DILocalVariable(name: "octal_mode", scope: !1467, file: !621, line: 143, type: !58)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !621, line: 142, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1450, file: !621, line: 141, column: 7)
!1469 = !DILocalVariable(name: "mode", scope: !1467, file: !621, line: 144, type: !695)
!1470 = !DILocalVariable(name: "mentioned", scope: !1467, file: !621, line: 145, type: !695)
!1471 = !DILocalVariable(name: "needed", scope: !1472, file: !621, line: 168, type: !46)
!1472 = distinct !DILexicalBlock(scope: !1450, file: !621, line: 167, column: 3)
!1473 = !DILocalVariable(name: "affected", scope: !1474, file: !621, line: 179, type: !695)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !621, line: 177, column: 5)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !621, line: 176, column: 3)
!1476 = distinct !DILexicalBlock(scope: !1450, file: !621, line: 176, column: 3)
!1477 = !DILocalVariable(name: "op", scope: !1478, file: !621, line: 206, type: !44)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !621, line: 205, column: 9)
!1479 = !DILocalVariable(name: "value", scope: !1478, file: !621, line: 207, type: !695)
!1480 = !DILocalVariable(name: "mentioned", scope: !1478, file: !621, line: 208, type: !695)
!1481 = !DILocalVariable(name: "flag", scope: !1478, file: !621, line: 209, type: !44)
!1482 = !DILocalVariable(name: "change", scope: !1478, file: !621, line: 210, type: !1453)
!1483 = !DILocalVariable(name: "octal_mode", scope: !1484, file: !621, line: 217, type: !58)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !621, line: 216, column: 15)
!1485 = distinct !DILexicalBlock(scope: !1478, file: !621, line: 213, column: 13)
!1486 = !DILocation(line: 134, column: 27, scope: !1450)
!1487 = !DILocation(line: 138, column: 10, scope: !1450)
!1488 = !DILocation(line: 141, column: 14, scope: !1468)
!1489 = !DILocation(line: 141, column: 27, scope: !1468)
!1490 = distinct !{!1490, !1491, !1492}
!1491 = !DILocation(line: 148, column: 7, scope: !1467)
!1492 = !DILocation(line: 154, column: 35, scope: !1467)
!1493 = !DILocation(line: 168, column: 12, scope: !1472)
!1494 = !DILocation(line: 139, column: 15, scope: !1450)
!1495 = !DILocation(line: 150, column: 41, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1467, file: !621, line: 149, column: 9)
!1497 = !DILocation(line: 143, column: 20, scope: !1467)
!1498 = !DILocation(line: 150, column: 26, scope: !1496)
!1499 = !DILocation(line: 150, column: 43, scope: !1496)
!1500 = !DILocation(line: 150, column: 39, scope: !1496)
!1501 = !DILocation(line: 150, column: 46, scope: !1496)
!1502 = !DILocation(line: 151, column: 20, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1496, file: !621, line: 151, column: 15)
!1504 = !DILocation(line: 151, column: 15, scope: !1496)
!1505 = !DILocation(line: 154, column: 21, scope: !1467)
!1506 = !DILocation(line: 154, column: 24, scope: !1467)
!1507 = !DILocation(line: 156, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1467, file: !621, line: 156, column: 11)
!1509 = !DILocation(line: 156, column: 11, scope: !1467)
!1510 = !DILocation(line: 144, column: 14, scope: !1467)
!1511 = !DILocation(line: 160, column: 22, scope: !1467)
!1512 = !DILocation(line: 160, column: 36, scope: !1467)
!1513 = !DILocation(line: 161, column: 28, scope: !1467)
!1514 = !DILocation(line: 161, column: 61, scope: !1467)
!1515 = !DILocation(line: 160, column: 20, scope: !1467)
!1516 = !DILocation(line: 145, column: 14, scope: !1467)
!1517 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1518, file: !621, line: 112, type: !695)
!1518 = distinct !DISubprogram(name: "make_node_op_equals", scope: !621, file: !621, line: 112, type: !1519, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1453, !695, !695}
!1521 = !{!1517, !1522, !1523}
!1522 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1518, file: !621, line: 112, type: !695)
!1523 = !DILocalVariable(name: "p", scope: !1518, file: !621, line: 114, type: !1453)
!1524 = !DILocation(line: 112, column: 29, scope: !1518, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 163, column: 14, scope: !1467)
!1526 = !DILocation(line: 112, column: 46, scope: !1518, inlinedAt: !1525)
!1527 = !DILocation(line: 114, column: 27, scope: !1518, inlinedAt: !1525)
!1528 = !DILocation(line: 114, column: 23, scope: !1518, inlinedAt: !1525)
!1529 = !DILocation(line: 115, column: 9, scope: !1518, inlinedAt: !1525)
!1530 = !{!1531, !727, i64 0}
!1531 = !{!"mode_change", !727, i64 0, !727, i64 1, !820, i64 4, !820, i64 8, !820, i64 12}
!1532 = !DILocation(line: 116, column: 6, scope: !1518, inlinedAt: !1525)
!1533 = !DILocation(line: 116, column: 11, scope: !1518, inlinedAt: !1525)
!1534 = !{!1531, !727, i64 1}
!1535 = !DILocation(line: 117, column: 6, scope: !1518, inlinedAt: !1525)
!1536 = !DILocation(line: 117, column: 15, scope: !1518, inlinedAt: !1525)
!1537 = !{!1531, !820, i64 4}
!1538 = !DILocation(line: 118, column: 6, scope: !1518, inlinedAt: !1525)
!1539 = !DILocation(line: 118, column: 12, scope: !1518, inlinedAt: !1525)
!1540 = !{!1531, !820, i64 8}
!1541 = !DILocation(line: 119, column: 6, scope: !1518, inlinedAt: !1525)
!1542 = !DILocation(line: 119, column: 16, scope: !1518, inlinedAt: !1525)
!1543 = !{!1531, !820, i64 12}
!1544 = !DILocation(line: 120, column: 8, scope: !1518, inlinedAt: !1525)
!1545 = !DILocation(line: 120, column: 13, scope: !1518, inlinedAt: !1525)
!1546 = !DILocation(line: 163, column: 7, scope: !1467)
!1547 = !DILocation(line: 169, column: 27, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1549, file: !621, discriminator: 1)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !621, line: 169, column: 5)
!1550 = distinct !DILexicalBlock(scope: !1472, file: !621, line: 169, column: 5)
!1551 = !DILocation(line: 169, column: 5, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1550, file: !621, discriminator: 1)
!1553 = !DILocation(line: 170, column: 41, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1549, file: !621, discriminator: 2)
!1555 = !DILocation(line: 170, column: 14, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1549, file: !621, discriminator: 3)
!1557 = !DILocation(line: 169, column: 32, scope: !1554)
!1558 = !DILocation(line: 169, column: 5, scope: !1554)
!1559 = distinct !{!1559, !1560, !1561}
!1560 = !DILocation(line: 169, column: 5, scope: !1550)
!1561 = !DILocation(line: 170, column: 53, scope: !1550)
!1562 = !DILocalVariable(name: "n", arg: 1, scope: !1563, file: !653, line: 105, type: !46)
!1563 = distinct !DISubprogram(name: "xnmalloc", scope: !653, file: !653, line: 105, type: !1564, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!45, !46, !46}
!1566 = !{!1562, !1567}
!1567 = !DILocalVariable(name: "s", arg: 2, scope: !1563, file: !653, line: 105, type: !46)
!1568 = !DILocation(line: 105, column: 18, scope: !1563, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 171, column: 10, scope: !1472)
!1570 = !DILocation(line: 105, column: 28, scope: !1563, inlinedAt: !1569)
!1571 = !DILocation(line: 107, column: 7, scope: !1572, inlinedAt: !1569)
!1572 = distinct !DILexicalBlock(scope: !1563, file: !653, line: 107, column: 7)
!1573 = !DILocation(line: 107, column: 7, scope: !1563, inlinedAt: !1569)
!1574 = !DILocation(line: 108, column: 5, scope: !1572, inlinedAt: !1569)
!1575 = !DILocation(line: 109, column: 21, scope: !1563, inlinedAt: !1569)
!1576 = !DILocation(line: 109, column: 10, scope: !1563, inlinedAt: !1569)
!1577 = !DILocation(line: 171, column: 10, scope: !1472)
!1578 = !DILocation(line: 137, column: 23, scope: !1450)
!1579 = !DILocation(line: 176, column: 8, scope: !1476)
!1580 = !DILocation(line: 179, column: 14, scope: !1474)
!1581 = !DILocation(line: 182, column: 7, scope: !1474)
!1582 = !DILocation(line: 183, column: 17, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !621, line: 182, column: 7)
!1584 = distinct !DILexicalBlock(scope: !1474, file: !621, line: 182, column: 7)
!1585 = !DILocation(line: 183, column: 9, scope: !1583)
!1586 = distinct !{!1586, !1587, !1588}
!1587 = !DILocation(line: 204, column: 7, scope: !1474)
!1588 = !DILocation(line: 295, column: 49, scope: !1474)
!1589 = !DILocation(line: 189, column: 13, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1583, file: !621, line: 184, column: 11)
!1591 = !DILocation(line: 195, column: 13, scope: !1590)
!1592 = !DILocation(line: 198, column: 13, scope: !1590)
!1593 = !DILocation(line: 182, column: 16, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1583, file: !621, discriminator: 1)
!1595 = !DILocation(line: 182, column: 7, scope: !1594)
!1596 = distinct !{!1596, !1597, !1598}
!1597 = !DILocation(line: 182, column: 7, scope: !1584)
!1598 = !DILocation(line: 201, column: 11, scope: !1584)
!1599 = !DILocation(line: 206, column: 21, scope: !1478)
!1600 = !DILocation(line: 206, column: 23, scope: !1478)
!1601 = !DILocation(line: 206, column: 16, scope: !1478)
!1602 = !DILocation(line: 208, column: 18, scope: !1478)
!1603 = !DILocation(line: 209, column: 16, scope: !1478)
!1604 = !DILocation(line: 212, column: 19, scope: !1478)
!1605 = !DILocation(line: 212, column: 11, scope: !1478)
!1606 = distinct !{!1606, !1607, !1608}
!1607 = !DILocation(line: 219, column: 17, scope: !1484)
!1608 = !DILocation(line: 225, column: 45, scope: !1484)
!1609 = !DILocation(line: 217, column: 30, scope: !1484)
!1610 = !DILocation(line: 221, column: 51, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1484, file: !621, line: 220, column: 19)
!1612 = !DILocation(line: 221, column: 36, scope: !1611)
!1613 = !DILocation(line: 221, column: 53, scope: !1611)
!1614 = !DILocation(line: 221, column: 49, scope: !1611)
!1615 = !DILocation(line: 221, column: 56, scope: !1611)
!1616 = !DILocation(line: 222, column: 30, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !621, line: 222, column: 25)
!1618 = !DILocation(line: 222, column: 25, scope: !1611)
!1619 = !DILocation(line: 225, column: 31, scope: !1484)
!1620 = !DILocation(line: 225, column: 34, scope: !1484)
!1621 = !DILocation(line: 227, column: 21, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1484, file: !621, line: 227, column: 21)
!1623 = !DILocation(line: 227, column: 30, scope: !1622)
!1624 = !DILocation(line: 227, column: 37, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1622, file: !621, discriminator: 1)
!1626 = !DILocation(line: 207, column: 18, scope: !1478)
!1627 = !DILocation(line: 239, column: 16, scope: !1485)
!1628 = !DILocation(line: 240, column: 15, scope: !1485)
!1629 = !DILocation(line: 245, column: 16, scope: !1485)
!1630 = !DILocation(line: 246, column: 15, scope: !1485)
!1631 = !DILocation(line: 251, column: 16, scope: !1485)
!1632 = !DILocation(line: 252, column: 15, scope: !1485)
!1633 = !DILocation(line: 259, column: 25, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !621, line: 258, column: 15)
!1635 = distinct !DILexicalBlock(scope: !1485, file: !621, line: 258, column: 15)
!1636 = !DILocation(line: 259, column: 17, scope: !1634)
!1637 = !DILocation(line: 262, column: 27, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !621, line: 260, column: 19)
!1639 = !DILocation(line: 263, column: 21, scope: !1638)
!1640 = !DILocation(line: 265, column: 27, scope: !1638)
!1641 = !DILocation(line: 266, column: 21, scope: !1638)
!1642 = !DILocation(line: 268, column: 27, scope: !1638)
!1643 = !DILocation(line: 269, column: 21, scope: !1638)
!1644 = !DILocation(line: 275, column: 27, scope: !1638)
!1645 = !DILocation(line: 276, column: 21, scope: !1638)
!1646 = !DILocation(line: 279, column: 27, scope: !1638)
!1647 = !DILocation(line: 280, column: 21, scope: !1638)
!1648 = !DILocation(line: 258, column: 24, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1634, file: !621, discriminator: 1)
!1650 = !DILocation(line: 258, column: 15, scope: !1649)
!1651 = distinct !{!1651, !1652, !1653}
!1652 = !DILocation(line: 258, column: 15, scope: !1635)
!1653 = !DILocation(line: 283, column: 19, scope: !1635)
!1654 = !DILocation(line: 287, column: 28, scope: !1478)
!1655 = !DILocation(line: 288, column: 19, scope: !1478)
!1656 = !DILocation(line: 288, column: 22, scope: !1478)
!1657 = !DILocation(line: 289, column: 19, scope: !1478)
!1658 = !DILocation(line: 289, column: 24, scope: !1478)
!1659 = !DILocation(line: 290, column: 19, scope: !1478)
!1660 = !DILocation(line: 290, column: 28, scope: !1478)
!1661 = !DILocation(line: 291, column: 19, scope: !1478)
!1662 = !DILocation(line: 291, column: 25, scope: !1478)
!1663 = !DILocation(line: 293, column: 14, scope: !1478)
!1664 = !DILocation(line: 293, column: 38, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1478, file: !621, discriminator: 2)
!1666 = !DILocation(line: 293, column: 14, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1478, file: !621, discriminator: 6)
!1668 = !DILocation(line: 292, column: 19, scope: !1478)
!1669 = !DILocation(line: 292, column: 29, scope: !1478)
!1670 = !DILocation(line: 295, column: 14, scope: !1474)
!1671 = !DILocation(line: 295, column: 24, scope: !1474)
!1672 = !DILocation(line: 176, column: 28, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1475, file: !621, discriminator: 1)
!1674 = !DILocation(line: 176, column: 3, scope: !1673)
!1675 = distinct !{!1675, !1676, !1677}
!1676 = !DILocation(line: 176, column: 3, scope: !1476)
!1677 = !DILocation(line: 299, column: 5, scope: !1476)
!1678 = !DILocation(line: 303, column: 16, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !621, line: 302, column: 5)
!1680 = distinct !DILexicalBlock(scope: !1450, file: !621, line: 301, column: 7)
!1681 = !DILocation(line: 303, column: 21, scope: !1679)
!1682 = !DILocation(line: 304, column: 7, scope: !1679)
!1683 = !DILocation(line: 308, column: 3, scope: !1450)
!1684 = !DILocation(line: 309, column: 3, scope: !1450)
!1685 = !DILocation(line: 310, column: 1, scope: !1450)
!1686 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !621, file: !621, line: 316, type: !1451, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !1687)
!1687 = !{!1688, !1689}
!1688 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1686, file: !621, line: 316, type: !54)
!1689 = !DILocalVariable(name: "ref_stats", scope: !1686, file: !621, line: 318, type: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1267, line: 46, size: 1152, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1708, !1709, !1710}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1690, file: !1267, line: 48, baseType: !1270, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1690, file: !1267, line: 53, baseType: !1272, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1690, file: !1267, line: 61, baseType: !1274, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1690, file: !1267, line: 62, baseType: !696, size: 32, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1690, file: !1267, line: 64, baseType: !57, size: 32, offset: 224)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1690, file: !1267, line: 65, baseType: !60, size: 32, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1690, file: !1267, line: 67, baseType: !28, size: 32, offset: 288)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1690, file: !1267, line: 69, baseType: !1270, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1690, file: !1267, line: 74, baseType: !1095, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1690, file: !1267, line: 78, baseType: !1282, size: 64, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1690, file: !1267, line: 80, baseType: !1284, size: 64, offset: 512)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1690, file: !1267, line: 91, baseType: !1704, size: 128, offset: 576)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1287, line: 8, size: 128, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1704, file: !1287, line: 10, baseType: !1290, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1704, file: !1287, line: 11, baseType: !1292, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1690, file: !1267, line: 92, baseType: !1704, size: 128, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1690, file: !1267, line: 93, baseType: !1704, size: 128, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1690, file: !1267, line: 106, baseType: !1296, size: 192, offset: 960)
!1711 = !DILocation(line: 316, column: 35, scope: !1686)
!1712 = !DILocation(line: 318, column: 3, scope: !1686)
!1713 = !DILocation(line: 318, column: 15, scope: !1686)
!1714 = !DILocalVariable(name: "__path", arg: 1, scope: !1715, file: !1393, line: 449, type: !54)
!1715 = distinct !DISubprogram(name: "stat", scope: !1393, file: !1393, line: 449, type: !1716, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !1719)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!28, !54, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1719 = !{!1714, !1720}
!1720 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1715, file: !1393, line: 449, type: !1718)
!1721 = !DILocation(line: 449, column: 1, scope: !1715, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 320, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1686, file: !621, line: 320, column: 7)
!1724 = !DILocation(line: 451, column: 10, scope: !1715, inlinedAt: !1722)
!1725 = !DILocation(line: 320, column: 35, scope: !1723)
!1726 = !DILocation(line: 320, column: 7, scope: !1686)
!1727 = !DILocation(line: 322, column: 41, scope: !1686)
!1728 = !DILocation(line: 112, column: 29, scope: !1518, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 322, column: 10, scope: !1686)
!1730 = !DILocation(line: 112, column: 46, scope: !1518, inlinedAt: !1729)
!1731 = !DILocation(line: 114, column: 27, scope: !1518, inlinedAt: !1729)
!1732 = !DILocation(line: 114, column: 23, scope: !1518, inlinedAt: !1729)
!1733 = !DILocation(line: 115, column: 9, scope: !1518, inlinedAt: !1729)
!1734 = !DILocation(line: 116, column: 6, scope: !1518, inlinedAt: !1729)
!1735 = !DILocation(line: 116, column: 11, scope: !1518, inlinedAt: !1729)
!1736 = !DILocation(line: 117, column: 6, scope: !1518, inlinedAt: !1729)
!1737 = !DILocation(line: 117, column: 15, scope: !1518, inlinedAt: !1729)
!1738 = !DILocation(line: 118, column: 6, scope: !1518, inlinedAt: !1729)
!1739 = !DILocation(line: 118, column: 12, scope: !1518, inlinedAt: !1729)
!1740 = !DILocation(line: 119, column: 6, scope: !1518, inlinedAt: !1729)
!1741 = !DILocation(line: 119, column: 16, scope: !1518, inlinedAt: !1729)
!1742 = !DILocation(line: 120, column: 8, scope: !1518, inlinedAt: !1729)
!1743 = !DILocation(line: 120, column: 13, scope: !1518, inlinedAt: !1729)
!1744 = !DILocation(line: 322, column: 3, scope: !1686)
!1745 = !DILocation(line: 323, column: 1, scope: !1686)
!1746 = distinct !DISubprogram(name: "mode_adjust", scope: !621, file: !621, line: 339, type: !1747, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !1752)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!695, !695, !116, !695, !1749, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1454)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1764, !1765, !1766}
!1753 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1746, file: !621, line: 339, type: !695)
!1754 = !DILocalVariable(name: "dir", arg: 2, scope: !1746, file: !621, line: 339, type: !116)
!1755 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1746, file: !621, line: 339, type: !695)
!1756 = !DILocalVariable(name: "changes", arg: 4, scope: !1746, file: !621, line: 340, type: !1749)
!1757 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1746, file: !621, line: 340, type: !1751)
!1758 = !DILocalVariable(name: "newmode", scope: !1746, file: !621, line: 343, type: !695)
!1759 = !DILocalVariable(name: "mode_bits", scope: !1746, file: !621, line: 346, type: !695)
!1760 = !DILocalVariable(name: "affected", scope: !1761, file: !621, line: 350, type: !695)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !621, line: 349, column: 5)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !621, line: 348, column: 3)
!1763 = distinct !DILexicalBlock(scope: !1746, file: !621, line: 348, column: 3)
!1764 = !DILocalVariable(name: "omit_change", scope: !1761, file: !621, line: 351, type: !695)
!1765 = !DILocalVariable(name: "value", scope: !1761, file: !621, line: 353, type: !695)
!1766 = !DILocalVariable(name: "preserved", scope: !1767, file: !621, line: 393, type: !695)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !621, line: 392, column: 11)
!1768 = distinct !DILexicalBlock(scope: !1761, file: !621, line: 387, column: 9)
!1769 = !DILocation(line: 339, column: 21, scope: !1746)
!1770 = !DILocation(line: 339, column: 35, scope: !1746)
!1771 = !DILocation(line: 339, column: 47, scope: !1746)
!1772 = !DILocation(line: 340, column: 40, scope: !1746)
!1773 = !DILocation(line: 340, column: 57, scope: !1746)
!1774 = !DILocation(line: 343, column: 28, scope: !1746)
!1775 = !DILocation(line: 343, column: 10, scope: !1746)
!1776 = !DILocation(line: 346, column: 10, scope: !1746)
!1777 = !DILocation(line: 348, column: 19, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1762, file: !621, discriminator: 1)
!1779 = !DILocation(line: 348, column: 24, scope: !1778)
!1780 = !DILocation(line: 348, column: 3, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1763, file: !621, discriminator: 1)
!1782 = !DILocation(line: 348, column: 10, scope: !1778)
!1783 = !DILocation(line: 350, column: 34, scope: !1761)
!1784 = !DILocation(line: 350, column: 14, scope: !1761)
!1785 = !DILocation(line: 352, column: 52, scope: !1761)
!1786 = !DILocation(line: 352, column: 41, scope: !1761)
!1787 = !DILocation(line: 352, column: 39, scope: !1761)
!1788 = !DILocation(line: 351, column: 14, scope: !1761)
!1789 = !DILocation(line: 353, column: 31, scope: !1761)
!1790 = !DILocation(line: 353, column: 14, scope: !1761)
!1791 = !DILocation(line: 355, column: 7, scope: !1761)
!1792 = !DILocation(line: 362, column: 17, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1761, file: !621, line: 356, column: 9)
!1794 = !DILocation(line: 365, column: 28, scope: !1793)
!1795 = !DILocation(line: 365, column: 22, scope: !1793)
!1796 = !DILocation(line: 367, column: 30, scope: !1793)
!1797 = !DILocation(line: 367, column: 24, scope: !1793)
!1798 = !DILocation(line: 369, column: 30, scope: !1793)
!1799 = !DILocation(line: 369, column: 24, scope: !1793)
!1800 = !DILocation(line: 367, column: 21, scope: !1793)
!1801 = !DILocation(line: 369, column: 21, scope: !1793)
!1802 = !DILocation(line: 365, column: 17, scope: !1793)
!1803 = !DILocation(line: 371, column: 11, scope: !1793)
!1804 = !DILocation(line: 376, column: 24, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1793, file: !621, line: 376, column: 15)
!1806 = !DILocation(line: 376, column: 57, scope: !1805)
!1807 = !DILocation(line: 377, column: 19, scope: !1805)
!1808 = !DILocation(line: 376, column: 15, scope: !1793)
!1809 = !DILocation(line: 384, column: 17, scope: !1761)
!1810 = !DILocation(line: 384, column: 55, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1761, file: !621, discriminator: 3)
!1812 = !DILocation(line: 384, column: 53, scope: !1811)
!1813 = !DILocation(line: 384, column: 13, scope: !1811)
!1814 = !DILocation(line: 386, column: 24, scope: !1761)
!1815 = !DILocation(line: 386, column: 15, scope: !1761)
!1816 = !DILocation(line: 386, column: 7, scope: !1761)
!1817 = !DILocation(line: 393, column: 44, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1767, file: !621, discriminator: 1)
!1819 = !DILocation(line: 393, column: 33, scope: !1767)
!1820 = !DILocation(line: 393, column: 59, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1767, file: !621, discriminator: 3)
!1822 = !DILocation(line: 393, column: 20, scope: !1767)
!1823 = !DILocation(line: 394, column: 42, scope: !1767)
!1824 = !DILocation(line: 394, column: 23, scope: !1767)
!1825 = !DILocation(line: 395, column: 32, scope: !1767)
!1826 = !DILocation(line: 395, column: 45, scope: !1767)
!1827 = !DILocation(line: 400, column: 21, scope: !1768)
!1828 = !DILocation(line: 401, column: 19, scope: !1768)
!1829 = !DILocation(line: 402, column: 11, scope: !1768)
!1830 = !DILocation(line: 405, column: 21, scope: !1768)
!1831 = !DILocation(line: 406, column: 22, scope: !1768)
!1832 = !DILocation(line: 406, column: 19, scope: !1768)
!1833 = !DILocation(line: 407, column: 11, scope: !1768)
!1834 = !DILocation(line: 348, column: 45, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1762, file: !621, discriminator: 2)
!1836 = distinct !{!1836, !1837, !1838}
!1837 = !DILocation(line: 348, column: 3, scope: !1763)
!1838 = !DILocation(line: 409, column: 5, scope: !1763)
!1839 = !DILocation(line: 411, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1746, file: !621, line: 411, column: 7)
!1841 = !DILocation(line: 411, column: 7, scope: !1746)
!1842 = !DILocation(line: 412, column: 17, scope: !1840)
!1843 = !DILocation(line: 412, column: 5, scope: !1840)
!1844 = !DILocation(line: 413, column: 3, scope: !1746)
!1845 = distinct !DISubprogram(name: "set_program_name", scope: !130, file: !130, line: 39, type: !66, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !126, variables: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DILocalVariable(name: "argv0", arg: 1, scope: !1845, file: !130, line: 39, type: !54)
!1848 = !DILocalVariable(name: "slash", scope: !1845, file: !130, line: 46, type: !54)
!1849 = !DILocalVariable(name: "base", scope: !1845, file: !130, line: 47, type: !54)
!1850 = !DILocation(line: 39, column: 31, scope: !1845)
!1851 = !DILocation(line: 51, column: 13, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1845, file: !130, line: 51, column: 7)
!1853 = !DILocation(line: 51, column: 7, scope: !1845)
!1854 = !DILocation(line: 55, column: 14, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !130, line: 52, column: 5)
!1856 = !DILocation(line: 54, column: 7, scope: !1855)
!1857 = !DILocation(line: 56, column: 7, scope: !1855)
!1858 = !DILocation(line: 59, column: 11, scope: !1845)
!1859 = !DILocation(line: 46, column: 15, scope: !1845)
!1860 = !DILocation(line: 60, column: 17, scope: !1845)
!1861 = !DILocation(line: 60, column: 33, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1845, file: !130, discriminator: 1)
!1863 = !DILocation(line: 60, column: 11, scope: !1845)
!1864 = !DILocation(line: 47, column: 15, scope: !1845)
!1865 = !DILocation(line: 61, column: 12, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1845, file: !130, line: 61, column: 7)
!1867 = !DILocation(line: 61, column: 20, scope: !1866)
!1868 = !DILocation(line: 61, column: 25, scope: !1866)
!1869 = !DILocation(line: 61, column: 28, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1866, file: !130, discriminator: 1)
!1871 = !DILocation(line: 61, column: 61, scope: !1870)
!1872 = !DILocation(line: 61, column: 7, scope: !1862)
!1873 = !DILocation(line: 64, column: 11, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !130, line: 64, column: 11)
!1875 = distinct !DILexicalBlock(scope: !1866, file: !130, line: 62, column: 5)
!1876 = !DILocation(line: 64, column: 36, scope: !1874)
!1877 = !DILocation(line: 64, column: 11, scope: !1875)
!1878 = !DILocation(line: 66, column: 24, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !130, line: 65, column: 9)
!1880 = !DILocation(line: 70, column: 41, scope: !1879)
!1881 = !DILocation(line: 72, column: 9, scope: !1879)
!1882 = !DILocation(line: 84, column: 16, scope: !1845)
!1883 = !DILocation(line: 90, column: 27, scope: !1845)
!1884 = !DILocation(line: 92, column: 1, scope: !1845)
!1885 = distinct !DISubprogram(name: "clone_quoting_options", scope: !161, file: !161, line: 114, type: !1886, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1889)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1888, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!1889 = !{!1890, !1891, !1892}
!1890 = !DILocalVariable(name: "o", arg: 1, scope: !1885, file: !161, line: 114, type: !1888)
!1891 = !DILocalVariable(name: "e", scope: !1885, file: !161, line: 116, type: !28)
!1892 = !DILocalVariable(name: "p", scope: !1885, file: !161, line: 117, type: !1888)
!1893 = !DILocation(line: 114, column: 48, scope: !1885)
!1894 = !DILocation(line: 116, column: 11, scope: !1885)
!1895 = !DILocation(line: 116, column: 7, scope: !1885)
!1896 = !DILocation(line: 117, column: 40, scope: !1885)
!1897 = !DILocation(line: 117, column: 40, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1885, file: !161, discriminator: 3)
!1899 = !DILocation(line: 117, column: 31, scope: !1898)
!1900 = !DILocation(line: 117, column: 27, scope: !1885)
!1901 = !DILocation(line: 119, column: 9, scope: !1885)
!1902 = !DILocation(line: 120, column: 3, scope: !1885)
!1903 = distinct !DISubprogram(name: "get_quoting_style", scope: !161, file: !161, line: 125, type: !1904, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1908)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!5, !1906}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "o", arg: 1, scope: !1903, file: !161, line: 125, type: !1906)
!1910 = !DILocation(line: 125, column: 50, scope: !1903)
!1911 = !DILocation(line: 127, column: 11, scope: !1903)
!1912 = !DILocation(line: 127, column: 46, scope: !1913)
!1913 = !DILexicalBlockFile(scope: !1903, file: !161, discriminator: 3)
!1914 = !{!1915, !727, i64 0}
!1915 = !{!"quoting_options", !727, i64 0, !820, i64 4, !727, i64 8, !726, i64 40, !726, i64 48}
!1916 = !DILocation(line: 127, column: 3, scope: !1913)
!1917 = distinct !DISubprogram(name: "set_quoting_style", scope: !161, file: !161, line: 133, type: !1918, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1888, !5}
!1920 = !{!1921, !1922}
!1921 = !DILocalVariable(name: "o", arg: 1, scope: !1917, file: !161, line: 133, type: !1888)
!1922 = !DILocalVariable(name: "s", arg: 2, scope: !1917, file: !161, line: 133, type: !5)
!1923 = !DILocation(line: 133, column: 44, scope: !1917)
!1924 = !DILocation(line: 133, column: 66, scope: !1917)
!1925 = !DILocation(line: 135, column: 4, scope: !1917)
!1926 = !DILocation(line: 135, column: 39, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1917, file: !161, discriminator: 3)
!1928 = !DILocation(line: 135, column: 45, scope: !1927)
!1929 = !DILocation(line: 136, column: 1, scope: !1917)
!1930 = distinct !DISubprogram(name: "set_char_quoting", scope: !161, file: !161, line: 144, type: !1931, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!28, !1888, !44, !28}
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1940, !1941}
!1934 = !DILocalVariable(name: "o", arg: 1, scope: !1930, file: !161, line: 144, type: !1888)
!1935 = !DILocalVariable(name: "c", arg: 2, scope: !1930, file: !161, line: 144, type: !44)
!1936 = !DILocalVariable(name: "i", arg: 3, scope: !1930, file: !161, line: 144, type: !28)
!1937 = !DILocalVariable(name: "uc", scope: !1930, file: !161, line: 146, type: !53)
!1938 = !DILocalVariable(name: "p", scope: !1930, file: !161, line: 147, type: !1939)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1940 = !DILocalVariable(name: "shift", scope: !1930, file: !161, line: 149, type: !28)
!1941 = !DILocalVariable(name: "r", scope: !1930, file: !161, line: 150, type: !28)
!1942 = !DILocation(line: 144, column: 43, scope: !1930)
!1943 = !DILocation(line: 144, column: 51, scope: !1930)
!1944 = !DILocation(line: 144, column: 58, scope: !1930)
!1945 = !DILocation(line: 146, column: 17, scope: !1930)
!1946 = !DILocation(line: 148, column: 6, scope: !1930)
!1947 = !DILocation(line: 148, column: 62, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1930, file: !161, discriminator: 3)
!1949 = !DILocation(line: 148, column: 57, scope: !1948)
!1950 = !DILocation(line: 147, column: 17, scope: !1930)
!1951 = !DILocation(line: 149, column: 18, scope: !1930)
!1952 = !DILocation(line: 149, column: 15, scope: !1930)
!1953 = !DILocation(line: 149, column: 7, scope: !1930)
!1954 = !DILocation(line: 150, column: 12, scope: !1930)
!1955 = !DILocation(line: 150, column: 15, scope: !1930)
!1956 = !DILocation(line: 150, column: 25, scope: !1930)
!1957 = !DILocation(line: 150, column: 7, scope: !1930)
!1958 = !DILocation(line: 151, column: 13, scope: !1930)
!1959 = !DILocation(line: 151, column: 18, scope: !1930)
!1960 = !DILocation(line: 151, column: 23, scope: !1930)
!1961 = !DILocation(line: 151, column: 6, scope: !1930)
!1962 = !DILocation(line: 152, column: 3, scope: !1930)
!1963 = distinct !DISubprogram(name: "set_quoting_flags", scope: !161, file: !161, line: 160, type: !1964, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!28, !1888, !28}
!1966 = !{!1967, !1968, !1969}
!1967 = !DILocalVariable(name: "o", arg: 1, scope: !1963, file: !161, line: 160, type: !1888)
!1968 = !DILocalVariable(name: "i", arg: 2, scope: !1963, file: !161, line: 160, type: !28)
!1969 = !DILocalVariable(name: "r", scope: !1963, file: !161, line: 162, type: !28)
!1970 = !DILocation(line: 160, column: 44, scope: !1963)
!1971 = !DILocation(line: 160, column: 51, scope: !1963)
!1972 = !DILocation(line: 163, column: 8, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1963, file: !161, line: 163, column: 7)
!1974 = !DILocation(line: 163, column: 7, scope: !1963)
!1975 = !DILocation(line: 165, column: 10, scope: !1963)
!1976 = !{!1915, !820, i64 4}
!1977 = !DILocation(line: 162, column: 7, scope: !1963)
!1978 = !DILocation(line: 166, column: 12, scope: !1963)
!1979 = !DILocation(line: 167, column: 3, scope: !1963)
!1980 = distinct !DISubprogram(name: "set_custom_quoting", scope: !161, file: !161, line: 171, type: !1981, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1888, !54, !54}
!1983 = !{!1984, !1985, !1986}
!1984 = !DILocalVariable(name: "o", arg: 1, scope: !1980, file: !161, line: 171, type: !1888)
!1985 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1980, file: !161, line: 172, type: !54)
!1986 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1980, file: !161, line: 172, type: !54)
!1987 = !DILocation(line: 171, column: 45, scope: !1980)
!1988 = !DILocation(line: 172, column: 33, scope: !1980)
!1989 = !DILocation(line: 172, column: 57, scope: !1980)
!1990 = !DILocation(line: 174, column: 8, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1980, file: !161, line: 174, column: 7)
!1992 = !DILocation(line: 174, column: 7, scope: !1980)
!1993 = !DILocation(line: 176, column: 6, scope: !1980)
!1994 = !DILocation(line: 176, column: 12, scope: !1980)
!1995 = !DILocation(line: 177, column: 8, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1980, file: !161, line: 177, column: 7)
!1997 = !DILocation(line: 177, column: 23, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1996, file: !161, discriminator: 1)
!1999 = !DILocation(line: 177, column: 19, scope: !1996)
!2000 = !DILocation(line: 178, column: 5, scope: !1996)
!2001 = !DILocation(line: 179, column: 6, scope: !1980)
!2002 = !DILocation(line: 179, column: 17, scope: !1980)
!2003 = !{!1915, !726, i64 40}
!2004 = !DILocation(line: 180, column: 6, scope: !1980)
!2005 = !DILocation(line: 180, column: 18, scope: !1980)
!2006 = !{!1915, !726, i64 48}
!2007 = !DILocation(line: 181, column: 1, scope: !1980)
!2008 = distinct !DISubprogram(name: "quotearg_buffer", scope: !161, file: !161, line: 776, type: !2009, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!46, !43, !46, !54, !46, !1906}
!2011 = !{!2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!2012 = !DILocalVariable(name: "buffer", arg: 1, scope: !2008, file: !161, line: 776, type: !43)
!2013 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2008, file: !161, line: 776, type: !46)
!2014 = !DILocalVariable(name: "arg", arg: 3, scope: !2008, file: !161, line: 777, type: !54)
!2015 = !DILocalVariable(name: "argsize", arg: 4, scope: !2008, file: !161, line: 777, type: !46)
!2016 = !DILocalVariable(name: "o", arg: 5, scope: !2008, file: !161, line: 778, type: !1906)
!2017 = !DILocalVariable(name: "p", scope: !2008, file: !161, line: 780, type: !1906)
!2018 = !DILocalVariable(name: "e", scope: !2008, file: !161, line: 781, type: !28)
!2019 = !DILocalVariable(name: "r", scope: !2008, file: !161, line: 782, type: !46)
!2020 = !DILocation(line: 776, column: 24, scope: !2008)
!2021 = !DILocation(line: 776, column: 39, scope: !2008)
!2022 = !DILocation(line: 777, column: 30, scope: !2008)
!2023 = !DILocation(line: 777, column: 42, scope: !2008)
!2024 = !DILocation(line: 778, column: 48, scope: !2008)
!2025 = !DILocation(line: 780, column: 37, scope: !2008)
!2026 = !DILocation(line: 780, column: 33, scope: !2008)
!2027 = !DILocation(line: 781, column: 11, scope: !2008)
!2028 = !DILocation(line: 781, column: 7, scope: !2008)
!2029 = !DILocation(line: 783, column: 43, scope: !2008)
!2030 = !DILocation(line: 783, column: 53, scope: !2008)
!2031 = !DILocation(line: 783, column: 60, scope: !2008)
!2032 = !DILocation(line: 784, column: 43, scope: !2008)
!2033 = !DILocation(line: 784, column: 58, scope: !2008)
!2034 = !DILocation(line: 782, column: 14, scope: !2008)
!2035 = !DILocation(line: 782, column: 10, scope: !2008)
!2036 = !DILocation(line: 785, column: 9, scope: !2008)
!2037 = !DILocation(line: 786, column: 3, scope: !2008)
!2038 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !161, file: !161, line: 248, type: !2039, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2043)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!46, !43, !46, !54, !46, !5, !28, !2041, !54, !54}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2068, !2069, !2070, !2071, !2072, !2075, !2076, !2093, !2096, !2097, !2104}
!2044 = !DILocalVariable(name: "buffer", arg: 1, scope: !2038, file: !161, line: 248, type: !43)
!2045 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2038, file: !161, line: 248, type: !46)
!2046 = !DILocalVariable(name: "arg", arg: 3, scope: !2038, file: !161, line: 249, type: !54)
!2047 = !DILocalVariable(name: "argsize", arg: 4, scope: !2038, file: !161, line: 249, type: !46)
!2048 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2038, file: !161, line: 250, type: !5)
!2049 = !DILocalVariable(name: "flags", arg: 6, scope: !2038, file: !161, line: 250, type: !28)
!2050 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2038, file: !161, line: 251, type: !2041)
!2051 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2038, file: !161, line: 252, type: !54)
!2052 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2038, file: !161, line: 253, type: !54)
!2053 = !DILocalVariable(name: "i", scope: !2038, file: !161, line: 255, type: !46)
!2054 = !DILocalVariable(name: "len", scope: !2038, file: !161, line: 256, type: !46)
!2055 = !DILocalVariable(name: "orig_buffersize", scope: !2038, file: !161, line: 257, type: !46)
!2056 = !DILocalVariable(name: "quote_string", scope: !2038, file: !161, line: 258, type: !54)
!2057 = !DILocalVariable(name: "quote_string_len", scope: !2038, file: !161, line: 259, type: !46)
!2058 = !DILocalVariable(name: "backslash_escapes", scope: !2038, file: !161, line: 260, type: !116)
!2059 = !DILocalVariable(name: "unibyte_locale", scope: !2038, file: !161, line: 261, type: !116)
!2060 = !DILocalVariable(name: "elide_outer_quotes", scope: !2038, file: !161, line: 262, type: !116)
!2061 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2038, file: !161, line: 263, type: !116)
!2062 = !DILocalVariable(name: "encountered_single_quote", scope: !2038, file: !161, line: 264, type: !116)
!2063 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2038, file: !161, line: 265, type: !116)
!2064 = !DILocalVariable(name: "c", scope: !2065, file: !161, line: 394, type: !53)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !161, line: 393, column: 5)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !161, line: 392, column: 3)
!2067 = distinct !DILexicalBlock(scope: !2038, file: !161, line: 392, column: 3)
!2068 = !DILocalVariable(name: "esc", scope: !2065, file: !161, line: 395, type: !53)
!2069 = !DILocalVariable(name: "is_right_quote", scope: !2065, file: !161, line: 396, type: !116)
!2070 = !DILocalVariable(name: "escaping", scope: !2065, file: !161, line: 397, type: !116)
!2071 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2065, file: !161, line: 398, type: !116)
!2072 = !DILocalVariable(name: "m", scope: !2073, file: !161, line: 602, type: !46)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 600, column: 11)
!2074 = distinct !DILexicalBlock(scope: !2065, file: !161, line: 418, column: 9)
!2075 = !DILocalVariable(name: "printable", scope: !2073, file: !161, line: 604, type: !116)
!2076 = !DILocalVariable(name: "mbstate", scope: !2077, file: !161, line: 613, type: !2079)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !161, line: 612, column: 15)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !161, line: 606, column: 17)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2080, line: 107, baseType: !2081)
!2080 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2080, line: 95, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2080, line: 83, size: 64, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2082, file: !2080, line: 85, baseType: !28, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2082, file: !2080, line: 94, baseType: !2086, size: 32, offset: 32)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2082, file: !2080, line: 86, size: 32, elements: !2087)
!2087 = !{!2088, !2089}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2086, file: !2080, line: 89, baseType: !58, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2086, file: !2080, line: 93, baseType: !2090, size: 32)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !2091)
!2091 = !{!2092}
!2092 = !DISubrange(count: 4)
!2093 = !DILocalVariable(name: "w", scope: !2094, file: !161, line: 623, type: !2095)
!2094 = distinct !DILexicalBlock(scope: !2077, file: !161, line: 622, column: 19)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !47, line: 90, baseType: !28)
!2096 = !DILocalVariable(name: "bytes", scope: !2094, file: !161, line: 624, type: !46)
!2097 = !DILocalVariable(name: "j", scope: !2098, file: !161, line: 649, type: !46)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !161, line: 648, column: 27)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !161, line: 646, column: 29)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 641, column: 23)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !161, line: 633, column: 30)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !161, line: 628, column: 30)
!2103 = distinct !DILexicalBlock(scope: !2094, file: !161, line: 626, column: 25)
!2104 = !DILocalVariable(name: "ilim", scope: !2105, file: !161, line: 676, type: !46)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !161, line: 673, column: 15)
!2106 = distinct !DILexicalBlock(scope: !2073, file: !161, line: 672, column: 17)
!2107 = !DILocation(line: 248, column: 33, scope: !2038)
!2108 = !DILocation(line: 248, column: 48, scope: !2038)
!2109 = !DILocation(line: 249, column: 39, scope: !2038)
!2110 = !DILocation(line: 249, column: 51, scope: !2038)
!2111 = !DILocation(line: 250, column: 46, scope: !2038)
!2112 = !DILocation(line: 250, column: 65, scope: !2038)
!2113 = !DILocation(line: 251, column: 47, scope: !2038)
!2114 = !DILocation(line: 252, column: 39, scope: !2038)
!2115 = !DILocation(line: 253, column: 39, scope: !2038)
!2116 = !DILocation(line: 256, column: 10, scope: !2038)
!2117 = !DILocation(line: 257, column: 10, scope: !2038)
!2118 = !DILocation(line: 258, column: 15, scope: !2038)
!2119 = !DILocation(line: 259, column: 10, scope: !2038)
!2120 = !DILocation(line: 260, column: 8, scope: !2038)
!2121 = !DILocation(line: 261, column: 25, scope: !2038)
!2122 = !DILocation(line: 261, column: 36, scope: !2038)
!2123 = !DILocation(line: 262, column: 8, scope: !2038)
!2124 = !DILocation(line: 263, column: 8, scope: !2038)
!2125 = !DILocation(line: 264, column: 8, scope: !2038)
!2126 = !DILocation(line: 265, column: 8, scope: !2038)
!2127 = !DILocation(line: 265, column: 3, scope: !2038)
!2128 = !DILocation(line: 308, column: 3, scope: !2038)
!2129 = !DILocation(line: 315, column: 11, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2038, file: !161, line: 309, column: 5)
!2131 = !DILocation(line: 315, column: 12, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2130, file: !161, line: 315, column: 11)
!2133 = !DILocation(line: 316, column: 9, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2135, file: !161, discriminator: 1)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !161, line: 316, column: 9)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !161, line: 316, column: 9)
!2137 = !DILocation(line: 316, column: 9, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2136, file: !161, discriminator: 1)
!2139 = !DILocation(line: 316, column: 9, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2135, file: !161, discriminator: 2)
!2141 = !DILocation(line: 354, column: 26, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !161, line: 332, column: 11)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !161, line: 331, column: 13)
!2144 = distinct !DILexicalBlock(scope: !2130, file: !161, line: 330, column: 7)
!2145 = !DILocation(line: 355, column: 27, scope: !2142)
!2146 = !DILocation(line: 356, column: 11, scope: !2142)
!2147 = !DILocation(line: 357, column: 14, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !161, line: 357, column: 13)
!2149 = !DILocation(line: 357, column: 13, scope: !2144)
!2150 = !DILocation(line: 358, column: 43, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2152, file: !161, discriminator: 1)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !161, line: 358, column: 11)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !161, line: 358, column: 11)
!2154 = !DILocation(line: 358, column: 11, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2153, file: !161, discriminator: 1)
!2156 = !DILocation(line: 359, column: 13, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2158, file: !161, discriminator: 1)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !161, line: 359, column: 13)
!2159 = distinct !DILexicalBlock(scope: !2152, file: !161, line: 359, column: 13)
!2160 = !DILocation(line: 359, column: 13, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !2159, file: !161, discriminator: 1)
!2162 = !DILocation(line: 359, column: 13, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2158, file: !161, discriminator: 2)
!2164 = !DILocation(line: 359, column: 13, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2159, file: !161, discriminator: 3)
!2166 = !DILocation(line: 358, column: 70, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2152, file: !161, discriminator: 2)
!2168 = distinct !{!2168, !2169, !2170}
!2169 = !DILocation(line: 358, column: 11, scope: !2153)
!2170 = !DILocation(line: 359, column: 13, scope: !2153)
!2171 = !DILocation(line: 362, column: 28, scope: !2144)
!2172 = !DILocation(line: 364, column: 7, scope: !2130)
!2173 = !DILocation(line: 367, column: 7, scope: !2130)
!2174 = !DILocation(line: 370, column: 7, scope: !2130)
!2175 = !DILocation(line: 373, column: 12, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2130, file: !161, line: 373, column: 11)
!2177 = !DILocation(line: 373, column: 11, scope: !2130)
!2178 = !DILocation(line: 378, column: 12, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2130, file: !161, line: 378, column: 11)
!2180 = !DILocation(line: 378, column: 11, scope: !2130)
!2181 = !DILocation(line: 379, column: 9, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2183, file: !161, discriminator: 1)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !161, line: 379, column: 9)
!2184 = distinct !DILexicalBlock(scope: !2179, file: !161, line: 379, column: 9)
!2185 = !DILocation(line: 379, column: 9, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2184, file: !161, discriminator: 1)
!2187 = !DILocation(line: 379, column: 9, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2183, file: !161, discriminator: 2)
!2189 = !DILocation(line: 386, column: 7, scope: !2130)
!2190 = !DILocation(line: 389, column: 7, scope: !2130)
!2191 = !DILocation(line: 255, column: 10, scope: !2038)
!2192 = !DILocation(line: 392, column: 8, scope: !2067)
!2193 = !DILocation(line: 392, column: 27, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2066, file: !161, discriminator: 1)
!2195 = !DILocation(line: 392, column: 19, scope: !2194)
!2196 = !DILocation(line: 392, column: 60, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2066, file: !161, discriminator: 3)
!2198 = !DILocation(line: 392, column: 3, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2067, file: !161, discriminator: 4)
!2200 = !DILocation(line: 392, column: 41, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2066, file: !161, discriminator: 2)
!2202 = !DILocation(line: 392, column: 48, scope: !2201)
!2203 = !DILocation(line: 396, column: 12, scope: !2065)
!2204 = !DILocation(line: 397, column: 12, scope: !2065)
!2205 = !DILocation(line: 398, column: 12, scope: !2065)
!2206 = !DILocation(line: 401, column: 11, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2065, file: !161, line: 400, column: 11)
!2208 = !DILocation(line: 403, column: 17, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2207, file: !161, discriminator: 1)
!2210 = !DILocation(line: 404, column: 39, scope: !2207)
!2211 = !DILocation(line: 408, column: 32, scope: !2207)
!2212 = !DILocation(line: 404, column: 19, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2207, file: !161, discriminator: 2)
!2214 = !DILocation(line: 404, column: 15, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2207, file: !161, discriminator: 4)
!2216 = !DILocation(line: 409, column: 11, scope: !2207)
!2217 = !DILocation(line: 409, column: 26, scope: !2209)
!2218 = !DILocation(line: 409, column: 14, scope: !2209)
!2219 = !DILocation(line: 400, column: 11, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2065, file: !161, discriminator: 1)
!2221 = !DILocation(line: 416, column: 11, scope: !2065)
!2222 = !DILocation(line: 394, column: 21, scope: !2065)
!2223 = !DILocation(line: 417, column: 7, scope: !2065)
!2224 = !DILocation(line: 420, column: 15, scope: !2074)
!2225 = !DILocation(line: 422, column: 15, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2227, file: !161, discriminator: 1)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !161, line: 422, column: 15)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !161, line: 421, column: 13)
!2229 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 420, column: 15)
!2230 = !DILocation(line: 422, column: 15, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2232, file: !161, discriminator: 4)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !161, line: 422, column: 15)
!2233 = !DILocation(line: 422, column: 15, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2232, file: !161, discriminator: 3)
!2235 = !DILocation(line: 422, column: 15, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2237, file: !161, discriminator: 6)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !161, line: 422, column: 15)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !161, line: 422, column: 15)
!2239 = distinct !DILexicalBlock(scope: !2232, file: !161, line: 422, column: 15)
!2240 = !DILocation(line: 422, column: 15, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2238, file: !161, discriminator: 6)
!2242 = !DILocation(line: 422, column: 15, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2237, file: !161, discriminator: 7)
!2244 = !DILocation(line: 422, column: 15, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2238, file: !161, discriminator: 8)
!2246 = !DILocation(line: 422, column: 15, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2248, file: !161, discriminator: 11)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !161, line: 422, column: 15)
!2249 = distinct !DILexicalBlock(scope: !2239, file: !161, line: 422, column: 15)
!2250 = !DILocation(line: 422, column: 15, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2249, file: !161, discriminator: 11)
!2252 = !DILocation(line: 422, column: 15, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2248, file: !161, discriminator: 12)
!2254 = !DILocation(line: 422, column: 15, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2249, file: !161, discriminator: 13)
!2256 = !DILocation(line: 422, column: 15, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2258, file: !161, discriminator: 16)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !161, line: 422, column: 15)
!2259 = distinct !DILexicalBlock(scope: !2239, file: !161, line: 422, column: 15)
!2260 = !DILocation(line: 422, column: 15, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2259, file: !161, discriminator: 16)
!2262 = !DILocation(line: 422, column: 15, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2258, file: !161, discriminator: 17)
!2264 = !DILocation(line: 422, column: 15, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2259, file: !161, discriminator: 18)
!2266 = !DILocation(line: 422, column: 15, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2239, file: !161, discriminator: 20)
!2268 = !DILocation(line: 422, column: 15, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2270, file: !161, discriminator: 22)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !161, line: 422, column: 15)
!2271 = distinct !DILexicalBlock(scope: !2227, file: !161, line: 422, column: 15)
!2272 = !DILocation(line: 422, column: 15, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2271, file: !161, discriminator: 22)
!2274 = !DILocation(line: 422, column: 15, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2270, file: !161, discriminator: 23)
!2276 = !DILocation(line: 422, column: 15, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2271, file: !161, discriminator: 24)
!2278 = !DILocation(line: 430, column: 19, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2228, file: !161, line: 429, column: 19)
!2280 = !DILocation(line: 430, column: 24, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2279, file: !161, discriminator: 1)
!2282 = !DILocation(line: 430, column: 28, scope: !2281)
!2283 = !DILocation(line: 430, column: 38, scope: !2281)
!2284 = !DILocation(line: 430, column: 48, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2279, file: !161, discriminator: 2)
!2286 = !DILocation(line: 430, column: 59, scope: !2285)
!2287 = !DILocation(line: 432, column: 19, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2289, file: !161, discriminator: 1)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !161, line: 432, column: 19)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !161, line: 432, column: 19)
!2291 = distinct !DILexicalBlock(scope: !2279, file: !161, line: 431, column: 17)
!2292 = !DILocation(line: 432, column: 19, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2290, file: !161, discriminator: 1)
!2294 = !DILocation(line: 432, column: 19, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2289, file: !161, discriminator: 2)
!2296 = !DILocation(line: 432, column: 19, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2290, file: !161, discriminator: 3)
!2298 = !DILocation(line: 433, column: 19, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2300, file: !161, discriminator: 1)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !161, line: 433, column: 19)
!2301 = distinct !DILexicalBlock(scope: !2291, file: !161, line: 433, column: 19)
!2302 = !DILocation(line: 433, column: 19, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2301, file: !161, discriminator: 1)
!2304 = !DILocation(line: 433, column: 19, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2300, file: !161, discriminator: 2)
!2306 = !DILocation(line: 433, column: 19, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2301, file: !161, discriminator: 3)
!2308 = !DILocation(line: 434, column: 17, scope: !2291)
!2309 = !DILocation(line: 441, column: 20, scope: !2229)
!2310 = !DILocation(line: 446, column: 11, scope: !2074)
!2311 = !DILocation(line: 449, column: 19, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 447, column: 13)
!2313 = !DILocation(line: 455, column: 19, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2312, file: !161, line: 454, column: 19)
!2315 = !DILocation(line: 455, column: 24, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2314, file: !161, discriminator: 1)
!2317 = !DILocation(line: 455, column: 28, scope: !2316)
!2318 = !DILocation(line: 455, column: 38, scope: !2316)
!2319 = !DILocation(line: 455, column: 47, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2314, file: !161, discriminator: 2)
!2321 = !DILocation(line: 455, column: 41, scope: !2320)
!2322 = !DILocation(line: 455, column: 52, scope: !2320)
!2323 = !DILocation(line: 454, column: 19, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !2312, file: !161, discriminator: 1)
!2325 = !DILocation(line: 456, column: 25, scope: !2314)
!2326 = !DILocation(line: 456, column: 17, scope: !2314)
!2327 = !DILocation(line: 463, column: 25, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2314, file: !161, line: 457, column: 19)
!2329 = !DILocation(line: 467, column: 21, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2331, file: !161, discriminator: 1)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !161, line: 467, column: 21)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !161, line: 467, column: 21)
!2333 = !DILocation(line: 467, column: 21, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2332, file: !161, discriminator: 1)
!2335 = !DILocation(line: 467, column: 21, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2331, file: !161, discriminator: 2)
!2337 = !DILocation(line: 467, column: 21, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !2332, file: !161, discriminator: 3)
!2339 = !DILocation(line: 468, column: 21, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2341, file: !161, discriminator: 1)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !161, line: 468, column: 21)
!2342 = distinct !DILexicalBlock(scope: !2328, file: !161, line: 468, column: 21)
!2343 = !DILocation(line: 468, column: 21, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2342, file: !161, discriminator: 1)
!2345 = !DILocation(line: 468, column: 21, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2341, file: !161, discriminator: 2)
!2347 = !DILocation(line: 468, column: 21, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2342, file: !161, discriminator: 3)
!2349 = !DILocation(line: 469, column: 21, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2351, file: !161, discriminator: 1)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !161, line: 469, column: 21)
!2352 = distinct !DILexicalBlock(scope: !2328, file: !161, line: 469, column: 21)
!2353 = !DILocation(line: 469, column: 21, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !2352, file: !161, discriminator: 1)
!2355 = !DILocation(line: 469, column: 21, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !2351, file: !161, discriminator: 2)
!2357 = !DILocation(line: 469, column: 21, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2352, file: !161, discriminator: 3)
!2359 = !DILocation(line: 470, column: 21, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2361, file: !161, discriminator: 1)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !161, line: 470, column: 21)
!2362 = distinct !DILexicalBlock(scope: !2328, file: !161, line: 470, column: 21)
!2363 = !DILocation(line: 470, column: 21, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !2362, file: !161, discriminator: 1)
!2365 = !DILocation(line: 470, column: 21, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2361, file: !161, discriminator: 2)
!2367 = !DILocation(line: 470, column: 21, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2362, file: !161, discriminator: 3)
!2369 = !DILocation(line: 471, column: 21, scope: !2328)
!2370 = !DILocation(line: 395, column: 21, scope: !2065)
!2371 = !DILocation(line: 484, column: 31, scope: !2074)
!2372 = !DILocation(line: 485, column: 31, scope: !2074)
!2373 = !DILocation(line: 487, column: 31, scope: !2074)
!2374 = !DILocation(line: 488, column: 31, scope: !2074)
!2375 = !DILocation(line: 489, column: 31, scope: !2074)
!2376 = !DILocation(line: 492, column: 15, scope: !2074)
!2377 = !DILocation(line: 494, column: 19, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !161, line: 493, column: 13)
!2379 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 492, column: 15)
!2380 = !DILocation(line: 501, column: 33, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 501, column: 15)
!2382 = !DILocation(line: 506, column: 15, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 505, column: 15)
!2384 = !DILocation(line: 510, column: 15, scope: !2074)
!2385 = !DILocation(line: 518, column: 26, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 518, column: 15)
!2387 = !DILocation(line: 518, column: 15, scope: !2074)
!2388 = !DILocation(line: 518, column: 40, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2386, file: !161, discriminator: 1)
!2390 = !DILocation(line: 518, column: 47, scope: !2389)
!2391 = !DILocation(line: 522, column: 17, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 522, column: 15)
!2393 = !DILocation(line: 518, column: 18, scope: !2389)
!2394 = !DILocation(line: 518, column: 65, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2386, file: !161, discriminator: 2)
!2396 = !DILocation(line: 518, column: 15, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2074, file: !161, discriminator: 2)
!2398 = !DILocation(line: 522, column: 15, scope: !2074)
!2399 = !DILocation(line: 526, column: 11, scope: !2074)
!2400 = !DILocation(line: 541, column: 15, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 540, column: 15)
!2402 = !DILocation(line: 548, column: 15, scope: !2074)
!2403 = !DILocation(line: 550, column: 19, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !161, line: 549, column: 13)
!2405 = distinct !DILexicalBlock(scope: !2074, file: !161, line: 548, column: 15)
!2406 = !DILocation(line: 553, column: 19, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !161, line: 553, column: 19)
!2408 = !DILocation(line: 553, column: 35, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2407, file: !161, discriminator: 1)
!2410 = !DILocation(line: 553, column: 30, scope: !2407)
!2411 = !DILocation(line: 562, column: 15, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !2413, file: !161, discriminator: 1)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !161, line: 562, column: 15)
!2414 = distinct !DILexicalBlock(scope: !2404, file: !161, line: 562, column: 15)
!2415 = !DILocation(line: 562, column: 15, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2414, file: !161, discriminator: 1)
!2417 = !DILocation(line: 562, column: 15, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !2413, file: !161, discriminator: 2)
!2419 = !DILocation(line: 562, column: 15, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2414, file: !161, discriminator: 3)
!2421 = !DILocation(line: 563, column: 15, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2423, file: !161, discriminator: 1)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !161, line: 563, column: 15)
!2424 = distinct !DILexicalBlock(scope: !2404, file: !161, line: 563, column: 15)
!2425 = !DILocation(line: 563, column: 15, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2424, file: !161, discriminator: 1)
!2427 = !DILocation(line: 563, column: 15, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2423, file: !161, discriminator: 2)
!2429 = !DILocation(line: 563, column: 15, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2424, file: !161, discriminator: 3)
!2431 = !DILocation(line: 564, column: 15, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2433, file: !161, discriminator: 1)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !161, line: 564, column: 15)
!2434 = distinct !DILexicalBlock(scope: !2404, file: !161, line: 564, column: 15)
!2435 = !DILocation(line: 564, column: 15, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2434, file: !161, discriminator: 1)
!2437 = !DILocation(line: 564, column: 15, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !2433, file: !161, discriminator: 2)
!2439 = !DILocation(line: 564, column: 15, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2434, file: !161, discriminator: 3)
!2441 = !DILocation(line: 566, column: 13, scope: !2404)
!2442 = !DILocation(line: 606, column: 17, scope: !2073)
!2443 = !DILocation(line: 602, column: 20, scope: !2073)
!2444 = !DILocation(line: 609, column: 29, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2078, file: !161, line: 607, column: 15)
!2446 = !{!1169, !1169, i64 0}
!2447 = !DILocation(line: 609, column: 27, scope: !2445)
!2448 = !DILocation(line: 604, column: 18, scope: !2073)
!2449 = !DILocation(line: 610, column: 15, scope: !2445)
!2450 = !DILocation(line: 613, column: 17, scope: !2077)
!2451 = !DILocation(line: 614, column: 17, scope: !2077)
!2452 = !DILocation(line: 618, column: 29, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2077, file: !161, line: 618, column: 21)
!2454 = !DILocation(line: 618, column: 21, scope: !2077)
!2455 = distinct !{!2455, !2456, !2457}
!2456 = !DILocation(line: 621, column: 17, scope: !2077)
!2457 = !DILocation(line: 667, column: 44, scope: !2077)
!2458 = !DILocation(line: 619, column: 29, scope: !2453)
!2459 = !DILocation(line: 619, column: 19, scope: !2453)
!2460 = !DILocation(line: 623, column: 21, scope: !2094)
!2461 = !DILocation(line: 624, column: 56, scope: !2094)
!2462 = !DILocation(line: 624, column: 50, scope: !2094)
!2463 = !DILocation(line: 625, column: 53, scope: !2094)
!2464 = !DILocation(line: 613, column: 27, scope: !2077)
!2465 = !DILocation(line: 623, column: 29, scope: !2094)
!2466 = !DILocation(line: 624, column: 36, scope: !2094)
!2467 = !DILocation(line: 624, column: 28, scope: !2094)
!2468 = !DILocation(line: 626, column: 25, scope: !2094)
!2469 = !DILocation(line: 636, column: 38, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2471, file: !161, discriminator: 1)
!2471 = distinct !DILexicalBlock(scope: !2101, file: !161, line: 634, column: 23)
!2472 = !DILocation(line: 636, column: 48, scope: !2470)
!2473 = !DILocation(line: 636, column: 51, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2471, file: !161, discriminator: 2)
!2475 = !DILocation(line: 636, column: 48, scope: !2474)
!2476 = !DILocation(line: 636, column: 25, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2471, file: !161, discriminator: 3)
!2478 = !DILocation(line: 637, column: 28, scope: !2471)
!2479 = !DILocation(line: 636, column: 34, scope: !2470)
!2480 = distinct !{!2480, !2481, !2478}
!2481 = !DILocation(line: 636, column: 25, scope: !2471)
!2482 = !DILocation(line: 650, column: 43, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2484, file: !161, discriminator: 1)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !161, line: 650, column: 29)
!2485 = distinct !DILexicalBlock(scope: !2098, file: !161, line: 650, column: 29)
!2486 = !DILocation(line: 647, column: 29, scope: !2099)
!2487 = !DILocation(line: 649, column: 36, scope: !2098)
!2488 = !DILocation(line: 651, column: 49, scope: !2484)
!2489 = !DILocation(line: 651, column: 39, scope: !2484)
!2490 = !DILocation(line: 651, column: 31, scope: !2484)
!2491 = !DILocation(line: 650, column: 53, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2484, file: !161, discriminator: 2)
!2493 = !DILocation(line: 650, column: 29, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2485, file: !161, discriminator: 1)
!2495 = distinct !{!2495, !2496, !2497}
!2496 = !DILocation(line: 650, column: 29, scope: !2485)
!2497 = !DILocation(line: 659, column: 33, scope: !2485)
!2498 = !DILocation(line: 666, column: 19, scope: !2077)
!2499 = !DILocation(line: 662, column: 41, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2100, file: !161, line: 662, column: 29)
!2501 = !DILocation(line: 662, column: 31, scope: !2500)
!2502 = !DILocation(line: 662, column: 29, scope: !2100)
!2503 = !DILocation(line: 664, column: 27, scope: !2100)
!2504 = !DILocation(line: 667, column: 26, scope: !2077)
!2505 = !DILocation(line: 667, column: 24, scope: !2077)
!2506 = !DILocation(line: 666, column: 19, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2094, file: !161, discriminator: 3)
!2508 = !DILocation(line: 668, column: 15, scope: !2078)
!2509 = !DILocation(line: 670, column: 40, scope: !2073)
!2510 = !DILocation(line: 672, column: 19, scope: !2106)
!2511 = !DILocation(line: 672, column: 45, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2106, file: !161, discriminator: 1)
!2513 = !DILocation(line: 672, column: 23, scope: !2106)
!2514 = !DILocation(line: 676, column: 33, scope: !2105)
!2515 = !DILocation(line: 676, column: 24, scope: !2105)
!2516 = !DILocation(line: 678, column: 17, scope: !2105)
!2517 = !DILocation(line: 680, column: 43, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !161, line: 680, column: 25)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !161, line: 679, column: 19)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !161, line: 678, column: 17)
!2521 = distinct !DILexicalBlock(scope: !2105, file: !161, line: 678, column: 17)
!2522 = !DILocation(line: 682, column: 25, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2524, file: !161, discriminator: 1)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !161, line: 682, column: 25)
!2525 = distinct !DILexicalBlock(scope: !2518, file: !161, line: 681, column: 23)
!2526 = !DILocation(line: 682, column: 25, scope: !2527)
!2527 = !DILexicalBlockFile(scope: !2528, file: !161, discriminator: 4)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !161, line: 682, column: 25)
!2529 = !DILocation(line: 682, column: 25, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2528, file: !161, discriminator: 3)
!2531 = !DILocation(line: 682, column: 25, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2533, file: !161, discriminator: 6)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !161, line: 682, column: 25)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !161, line: 682, column: 25)
!2535 = distinct !DILexicalBlock(scope: !2528, file: !161, line: 682, column: 25)
!2536 = !DILocation(line: 682, column: 25, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2534, file: !161, discriminator: 6)
!2538 = !DILocation(line: 682, column: 25, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2533, file: !161, discriminator: 7)
!2540 = !DILocation(line: 682, column: 25, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2534, file: !161, discriminator: 8)
!2542 = !DILocation(line: 682, column: 25, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2544, file: !161, discriminator: 11)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !161, line: 682, column: 25)
!2545 = distinct !DILexicalBlock(scope: !2535, file: !161, line: 682, column: 25)
!2546 = !DILocation(line: 682, column: 25, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2545, file: !161, discriminator: 11)
!2548 = !DILocation(line: 682, column: 25, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2544, file: !161, discriminator: 12)
!2550 = !DILocation(line: 682, column: 25, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2545, file: !161, discriminator: 13)
!2552 = !DILocation(line: 682, column: 25, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2554, file: !161, discriminator: 16)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !161, line: 682, column: 25)
!2555 = distinct !DILexicalBlock(scope: !2535, file: !161, line: 682, column: 25)
!2556 = !DILocation(line: 682, column: 25, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2555, file: !161, discriminator: 16)
!2558 = !DILocation(line: 682, column: 25, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2554, file: !161, discriminator: 17)
!2560 = !DILocation(line: 682, column: 25, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2555, file: !161, discriminator: 18)
!2562 = !DILocation(line: 682, column: 25, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2535, file: !161, discriminator: 20)
!2564 = !DILocation(line: 682, column: 25, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2566, file: !161, discriminator: 22)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !161, line: 682, column: 25)
!2567 = distinct !DILexicalBlock(scope: !2524, file: !161, line: 682, column: 25)
!2568 = !DILocation(line: 682, column: 25, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2567, file: !161, discriminator: 22)
!2570 = !DILocation(line: 682, column: 25, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2566, file: !161, discriminator: 23)
!2572 = !DILocation(line: 682, column: 25, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2567, file: !161, discriminator: 24)
!2574 = !DILocation(line: 683, column: 25, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2576, file: !161, discriminator: 1)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !161, line: 683, column: 25)
!2577 = distinct !DILexicalBlock(scope: !2525, file: !161, line: 683, column: 25)
!2578 = !DILocation(line: 683, column: 25, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2577, file: !161, discriminator: 1)
!2580 = !DILocation(line: 683, column: 25, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2576, file: !161, discriminator: 2)
!2582 = !DILocation(line: 683, column: 25, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2577, file: !161, discriminator: 3)
!2584 = !DILocation(line: 684, column: 25, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2586, file: !161, discriminator: 1)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !161, line: 684, column: 25)
!2587 = distinct !DILexicalBlock(scope: !2525, file: !161, line: 684, column: 25)
!2588 = !DILocation(line: 684, column: 25, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2587, file: !161, discriminator: 1)
!2590 = !DILocation(line: 684, column: 25, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2586, file: !161, discriminator: 2)
!2592 = !DILocation(line: 684, column: 25, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2587, file: !161, discriminator: 3)
!2594 = !DILocation(line: 685, column: 38, scope: !2525)
!2595 = !DILocation(line: 685, column: 33, scope: !2525)
!2596 = !DILocation(line: 686, column: 23, scope: !2525)
!2597 = !DILocation(line: 687, column: 30, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2518, file: !161, line: 687, column: 30)
!2599 = !DILocation(line: 687, column: 30, scope: !2518)
!2600 = !DILocation(line: 689, column: 25, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2602, file: !161, discriminator: 1)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !161, line: 689, column: 25)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !161, line: 689, column: 25)
!2604 = distinct !DILexicalBlock(scope: !2598, file: !161, line: 688, column: 23)
!2605 = !DILocation(line: 689, column: 25, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2603, file: !161, discriminator: 1)
!2607 = !DILocation(line: 689, column: 25, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2602, file: !161, discriminator: 2)
!2609 = !DILocation(line: 689, column: 25, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2603, file: !161, discriminator: 3)
!2611 = !DILocation(line: 691, column: 23, scope: !2604)
!2612 = !DILocation(line: 692, column: 35, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2519, file: !161, line: 692, column: 25)
!2614 = !DILocation(line: 692, column: 30, scope: !2613)
!2615 = !DILocation(line: 692, column: 25, scope: !2519)
!2616 = !DILocation(line: 694, column: 21, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2618, file: !161, discriminator: 1)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !161, line: 694, column: 21)
!2619 = distinct !DILexicalBlock(scope: !2519, file: !161, line: 694, column: 21)
!2620 = !DILocation(line: 694, column: 21, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2618, file: !161, discriminator: 2)
!2622 = !DILocation(line: 694, column: 21, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2624, file: !161, discriminator: 4)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !161, line: 694, column: 21)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !161, line: 694, column: 21)
!2626 = distinct !DILexicalBlock(scope: !2618, file: !161, line: 694, column: 21)
!2627 = !DILocation(line: 694, column: 21, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2625, file: !161, discriminator: 4)
!2629 = !DILocation(line: 694, column: 21, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2624, file: !161, discriminator: 5)
!2631 = !DILocation(line: 694, column: 21, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2625, file: !161, discriminator: 6)
!2633 = !DILocation(line: 694, column: 21, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2635, file: !161, discriminator: 9)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !161, line: 694, column: 21)
!2636 = distinct !DILexicalBlock(scope: !2626, file: !161, line: 694, column: 21)
!2637 = !DILocation(line: 694, column: 21, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2636, file: !161, discriminator: 9)
!2639 = !DILocation(line: 694, column: 21, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2635, file: !161, discriminator: 10)
!2641 = !DILocation(line: 694, column: 21, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2636, file: !161, discriminator: 11)
!2643 = !DILocation(line: 694, column: 21, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2626, file: !161, discriminator: 13)
!2645 = !DILocation(line: 695, column: 21, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2647, file: !161, discriminator: 1)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !161, line: 695, column: 21)
!2648 = distinct !DILexicalBlock(scope: !2519, file: !161, line: 695, column: 21)
!2649 = !DILocation(line: 695, column: 21, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2648, file: !161, discriminator: 1)
!2651 = !DILocation(line: 695, column: 21, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2647, file: !161, discriminator: 2)
!2653 = !DILocation(line: 695, column: 21, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2648, file: !161, discriminator: 3)
!2655 = !DILocation(line: 696, column: 25, scope: !2519)
!2656 = !DILocation(line: 678, column: 17, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2520, file: !161, discriminator: 1)
!2658 = distinct !{!2658, !2659, !2660}
!2659 = !DILocation(line: 678, column: 17, scope: !2521)
!2660 = !DILocation(line: 697, column: 19, scope: !2521)
!2661 = !DILocation(line: 704, column: 34, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2065, file: !161, line: 704, column: 11)
!2663 = !DILocation(line: 706, column: 14, scope: !2662)
!2664 = !DILocation(line: 707, column: 14, scope: !2662)
!2665 = !DILocation(line: 707, column: 35, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2662, file: !161, discriminator: 1)
!2667 = !DILocation(line: 707, column: 17, scope: !2666)
!2668 = !DILocation(line: 707, column: 53, scope: !2666)
!2669 = !DILocation(line: 707, column: 47, scope: !2666)
!2670 = !DILocation(line: 707, column: 65, scope: !2666)
!2671 = !DILocation(line: 708, column: 15, scope: !2666)
!2672 = !DILocation(line: 708, column: 11, scope: !2662)
!2673 = !DILocation(line: 704, column: 11, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2065, file: !161, discriminator: 2)
!2675 = !DILocation(line: 712, column: 7, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2677, file: !161, discriminator: 1)
!2677 = distinct !DILexicalBlock(scope: !2065, file: !161, line: 712, column: 7)
!2678 = !DILocation(line: 712, column: 7, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2680, file: !161, discriminator: 4)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !161, line: 712, column: 7)
!2681 = !DILocation(line: 712, column: 7, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2680, file: !161, discriminator: 3)
!2683 = !DILocation(line: 712, column: 7, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !2685, file: !161, discriminator: 6)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !161, line: 712, column: 7)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !161, line: 712, column: 7)
!2687 = distinct !DILexicalBlock(scope: !2680, file: !161, line: 712, column: 7)
!2688 = !DILocation(line: 712, column: 7, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2686, file: !161, discriminator: 6)
!2690 = !DILocation(line: 712, column: 7, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2685, file: !161, discriminator: 7)
!2692 = !DILocation(line: 712, column: 7, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2686, file: !161, discriminator: 8)
!2694 = !DILocation(line: 712, column: 7, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2696, file: !161, discriminator: 11)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !161, line: 712, column: 7)
!2697 = distinct !DILexicalBlock(scope: !2687, file: !161, line: 712, column: 7)
!2698 = !DILocation(line: 712, column: 7, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2697, file: !161, discriminator: 11)
!2700 = !DILocation(line: 712, column: 7, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2696, file: !161, discriminator: 12)
!2702 = !DILocation(line: 712, column: 7, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2697, file: !161, discriminator: 13)
!2704 = !DILocation(line: 712, column: 7, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2706, file: !161, discriminator: 16)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !161, line: 712, column: 7)
!2707 = distinct !DILexicalBlock(scope: !2687, file: !161, line: 712, column: 7)
!2708 = !DILocation(line: 712, column: 7, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2707, file: !161, discriminator: 16)
!2710 = !DILocation(line: 712, column: 7, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2706, file: !161, discriminator: 17)
!2712 = !DILocation(line: 712, column: 7, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2707, file: !161, discriminator: 18)
!2714 = !DILocation(line: 712, column: 7, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2687, file: !161, discriminator: 20)
!2716 = !DILocation(line: 712, column: 7, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2718, file: !161, discriminator: 22)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !161, line: 712, column: 7)
!2719 = distinct !DILexicalBlock(scope: !2677, file: !161, line: 712, column: 7)
!2720 = !DILocation(line: 712, column: 7, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2719, file: !161, discriminator: 22)
!2722 = !DILocation(line: 712, column: 7, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2718, file: !161, discriminator: 23)
!2724 = !DILocation(line: 712, column: 7, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !2719, file: !161, discriminator: 24)
!2726 = !DILocation(line: 715, column: 7, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2728, file: !161, discriminator: 1)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !161, line: 715, column: 7)
!2729 = distinct !DILexicalBlock(scope: !2065, file: !161, line: 715, column: 7)
!2730 = !DILocation(line: 715, column: 7, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !2728, file: !161, discriminator: 2)
!2732 = !DILocation(line: 715, column: 7, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2734, file: !161, discriminator: 4)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !161, line: 715, column: 7)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !161, line: 715, column: 7)
!2736 = distinct !DILexicalBlock(scope: !2728, file: !161, line: 715, column: 7)
!2737 = !DILocation(line: 715, column: 7, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2735, file: !161, discriminator: 4)
!2739 = !DILocation(line: 715, column: 7, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2734, file: !161, discriminator: 5)
!2741 = !DILocation(line: 715, column: 7, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2735, file: !161, discriminator: 6)
!2743 = !DILocation(line: 715, column: 7, scope: !2744)
!2744 = !DILexicalBlockFile(scope: !2745, file: !161, discriminator: 9)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !161, line: 715, column: 7)
!2746 = distinct !DILexicalBlock(scope: !2736, file: !161, line: 715, column: 7)
!2747 = !DILocation(line: 715, column: 7, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !2746, file: !161, discriminator: 9)
!2749 = !DILocation(line: 715, column: 7, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2745, file: !161, discriminator: 10)
!2751 = !DILocation(line: 715, column: 7, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2746, file: !161, discriminator: 11)
!2753 = !DILocation(line: 715, column: 7, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2736, file: !161, discriminator: 13)
!2755 = !DILocation(line: 716, column: 7, scope: !2756)
!2756 = !DILexicalBlockFile(scope: !2757, file: !161, discriminator: 1)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !161, line: 716, column: 7)
!2758 = distinct !DILexicalBlock(scope: !2065, file: !161, line: 716, column: 7)
!2759 = !DILocation(line: 716, column: 7, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2758, file: !161, discriminator: 1)
!2761 = !DILocation(line: 716, column: 7, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !2757, file: !161, discriminator: 2)
!2763 = !DILocation(line: 716, column: 7, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2758, file: !161, discriminator: 3)
!2765 = !DILocation(line: 718, column: 13, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2065, file: !161, line: 718, column: 11)
!2767 = !DILocation(line: 718, column: 11, scope: !2065)
!2768 = !DILocation(line: 720, column: 5, scope: !2066)
!2769 = !DILocation(line: 392, column: 75, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2066, file: !161, discriminator: 5)
!2771 = !DILocation(line: 392, column: 3, scope: !2770)
!2772 = distinct !{!2772, !2773, !2774}
!2773 = !DILocation(line: 392, column: 3, scope: !2067)
!2774 = !DILocation(line: 720, column: 5, scope: !2067)
!2775 = !DILocation(line: 722, column: 11, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2038, file: !161, line: 722, column: 7)
!2777 = !DILocation(line: 722, column: 16, scope: !2776)
!2778 = !DILocation(line: 730, column: 51, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2038, file: !161, line: 730, column: 7)
!2780 = !DILocation(line: 731, column: 10, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2779, file: !161, discriminator: 1)
!2782 = !DILocation(line: 733, column: 11, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !161, line: 733, column: 11)
!2784 = distinct !DILexicalBlock(scope: !2779, file: !161, line: 732, column: 5)
!2785 = !DILocation(line: 733, column: 11, scope: !2784)
!2786 = !DILocation(line: 734, column: 16, scope: !2783)
!2787 = !DILocation(line: 734, column: 9, scope: !2783)
!2788 = !DILocation(line: 738, column: 18, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2783, file: !161, line: 738, column: 16)
!2790 = !DILocation(line: 738, column: 32, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2789, file: !161, discriminator: 1)
!2792 = !DILocation(line: 738, column: 29, scope: !2789)
!2793 = !DILocation(line: 747, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2038, file: !161, line: 747, column: 7)
!2795 = !DILocation(line: 747, column: 20, scope: !2794)
!2796 = !DILocation(line: 748, column: 12, scope: !2797)
!2797 = !DILexicalBlockFile(scope: !2798, file: !161, discriminator: 1)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !161, line: 748, column: 5)
!2799 = distinct !DILexicalBlock(scope: !2794, file: !161, line: 748, column: 5)
!2800 = !DILocation(line: 748, column: 5, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2799, file: !161, discriminator: 1)
!2802 = !DILocation(line: 749, column: 7, scope: !2803)
!2803 = !DILexicalBlockFile(scope: !2804, file: !161, discriminator: 1)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !161, line: 749, column: 7)
!2805 = distinct !DILexicalBlock(scope: !2798, file: !161, line: 749, column: 7)
!2806 = !DILocation(line: 749, column: 7, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2805, file: !161, discriminator: 1)
!2808 = !DILocation(line: 749, column: 7, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2804, file: !161, discriminator: 2)
!2810 = !DILocation(line: 749, column: 7, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !2805, file: !161, discriminator: 3)
!2812 = !DILocation(line: 748, column: 39, scope: !2813)
!2813 = !DILexicalBlockFile(scope: !2798, file: !161, discriminator: 2)
!2814 = distinct !{!2814, !2815, !2816}
!2815 = !DILocation(line: 748, column: 5, scope: !2799)
!2816 = !DILocation(line: 749, column: 7, scope: !2799)
!2817 = !DILocation(line: 751, column: 11, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2038, file: !161, line: 751, column: 7)
!2819 = !DILocation(line: 751, column: 7, scope: !2038)
!2820 = !DILocation(line: 752, column: 5, scope: !2818)
!2821 = !DILocation(line: 752, column: 17, scope: !2818)
!2822 = !DILocation(line: 758, column: 21, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2038, file: !161, line: 758, column: 7)
!2824 = !DILocation(line: 758, column: 54, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2823, file: !161, discriminator: 1)
!2826 = !DILocation(line: 758, column: 51, scope: !2823)
!2827 = !DILocation(line: 762, column: 42, scope: !2038)
!2828 = !DILocation(line: 760, column: 10, scope: !2038)
!2829 = !DILocation(line: 760, column: 3, scope: !2038)
!2830 = !DILocation(line: 764, column: 1, scope: !2038)
!2831 = distinct !DISubprogram(name: "gettext_quote", scope: !161, file: !161, line: 199, type: !2832, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!54, !54, !5}
!2834 = !{!2835, !2836, !2837, !2838}
!2835 = !DILocalVariable(name: "msgid", arg: 1, scope: !2831, file: !161, line: 199, type: !54)
!2836 = !DILocalVariable(name: "s", arg: 2, scope: !2831, file: !161, line: 199, type: !5)
!2837 = !DILocalVariable(name: "translation", scope: !2831, file: !161, line: 201, type: !54)
!2838 = !DILocalVariable(name: "locale_code", scope: !2831, file: !161, line: 202, type: !54)
!2839 = !DILocation(line: 199, column: 28, scope: !2831)
!2840 = !DILocation(line: 199, column: 54, scope: !2831)
!2841 = !DILocation(line: 201, column: 29, scope: !2831)
!2842 = !DILocation(line: 201, column: 15, scope: !2831)
!2843 = !DILocation(line: 204, column: 19, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2831, file: !161, line: 204, column: 7)
!2845 = !DILocation(line: 204, column: 7, scope: !2831)
!2846 = !DILocation(line: 225, column: 17, scope: !2831)
!2847 = !DILocation(line: 202, column: 15, scope: !2831)
!2848 = !DILocalVariable(name: "s2", arg: 2, scope: !2849, file: !2850, line: 160, type: !54)
!2849 = distinct !DISubprogram(name: "strcaseeq0", scope: !2850, file: !2850, line: 160, type: !2851, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2853)
!2850 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!28, !54, !54, !44, !44, !44, !44, !44, !44, !44, !44, !44}
!2853 = !{!2854, !2848, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863}
!2854 = !DILocalVariable(name: "s1", arg: 1, scope: !2849, file: !2850, line: 160, type: !54)
!2855 = !DILocalVariable(name: "s20", arg: 3, scope: !2849, file: !2850, line: 160, type: !44)
!2856 = !DILocalVariable(name: "s21", arg: 4, scope: !2849, file: !2850, line: 160, type: !44)
!2857 = !DILocalVariable(name: "s22", arg: 5, scope: !2849, file: !2850, line: 160, type: !44)
!2858 = !DILocalVariable(name: "s23", arg: 6, scope: !2849, file: !2850, line: 160, type: !44)
!2859 = !DILocalVariable(name: "s24", arg: 7, scope: !2849, file: !2850, line: 160, type: !44)
!2860 = !DILocalVariable(name: "s25", arg: 8, scope: !2849, file: !2850, line: 160, type: !44)
!2861 = !DILocalVariable(name: "s26", arg: 9, scope: !2849, file: !2850, line: 160, type: !44)
!2862 = !DILocalVariable(name: "s27", arg: 10, scope: !2849, file: !2850, line: 160, type: !44)
!2863 = !DILocalVariable(name: "s28", arg: 11, scope: !2849, file: !2850, line: 160, type: !44)
!2864 = !DILocation(line: 160, column: 41, scope: !2849, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 226, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2831, file: !161, line: 226, column: 7)
!2867 = !DILocation(line: 160, column: 120, scope: !2849, inlinedAt: !2865)
!2868 = !DILocation(line: 160, column: 130, scope: !2849, inlinedAt: !2865)
!2869 = !DILocation(line: 162, column: 7, scope: !2870, inlinedAt: !2865)
!2870 = !DILexicalBlockFile(scope: !2871, file: !2850, discriminator: 1)
!2871 = distinct !DILexicalBlock(scope: !2849, file: !2850, line: 162, column: 7)
!2872 = !DILocalVariable(name: "s2", arg: 2, scope: !2873, file: !2850, line: 146, type: !54)
!2873 = distinct !DISubprogram(name: "strcaseeq1", scope: !2850, file: !2850, line: 146, type: !2874, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!28, !54, !54, !44, !44, !44, !44, !44, !44, !44, !44}
!2876 = !{!2877, !2872, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885}
!2877 = !DILocalVariable(name: "s1", arg: 1, scope: !2873, file: !2850, line: 146, type: !54)
!2878 = !DILocalVariable(name: "s21", arg: 3, scope: !2873, file: !2850, line: 146, type: !44)
!2879 = !DILocalVariable(name: "s22", arg: 4, scope: !2873, file: !2850, line: 146, type: !44)
!2880 = !DILocalVariable(name: "s23", arg: 5, scope: !2873, file: !2850, line: 146, type: !44)
!2881 = !DILocalVariable(name: "s24", arg: 6, scope: !2873, file: !2850, line: 146, type: !44)
!2882 = !DILocalVariable(name: "s25", arg: 7, scope: !2873, file: !2850, line: 146, type: !44)
!2883 = !DILocalVariable(name: "s26", arg: 8, scope: !2873, file: !2850, line: 146, type: !44)
!2884 = !DILocalVariable(name: "s27", arg: 9, scope: !2873, file: !2850, line: 146, type: !44)
!2885 = !DILocalVariable(name: "s28", arg: 10, scope: !2873, file: !2850, line: 146, type: !44)
!2886 = !DILocation(line: 146, column: 41, scope: !2873, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 167, column: 16, scope: !2888, inlinedAt: !2865)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !2850, line: 164, column: 11)
!2889 = distinct !DILexicalBlock(scope: !2871, file: !2850, line: 163, column: 5)
!2890 = !DILocation(line: 146, column: 110, scope: !2873, inlinedAt: !2887)
!2891 = !DILocation(line: 146, column: 120, scope: !2873, inlinedAt: !2887)
!2892 = !DILocation(line: 148, column: 7, scope: !2893, inlinedAt: !2887)
!2893 = !DILexicalBlockFile(scope: !2894, file: !2850, discriminator: 1)
!2894 = distinct !DILexicalBlock(scope: !2873, file: !2850, line: 148, column: 7)
!2895 = !DILocalVariable(name: "s2", arg: 2, scope: !2896, file: !2850, line: 132, type: !54)
!2896 = distinct !DISubprogram(name: "strcaseeq2", scope: !2850, file: !2850, line: 132, type: !2897, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!28, !54, !54, !44, !44, !44, !44, !44, !44, !44}
!2899 = !{!2900, !2895, !2901, !2902, !2903, !2904, !2905, !2906, !2907}
!2900 = !DILocalVariable(name: "s1", arg: 1, scope: !2896, file: !2850, line: 132, type: !54)
!2901 = !DILocalVariable(name: "s22", arg: 3, scope: !2896, file: !2850, line: 132, type: !44)
!2902 = !DILocalVariable(name: "s23", arg: 4, scope: !2896, file: !2850, line: 132, type: !44)
!2903 = !DILocalVariable(name: "s24", arg: 5, scope: !2896, file: !2850, line: 132, type: !44)
!2904 = !DILocalVariable(name: "s25", arg: 6, scope: !2896, file: !2850, line: 132, type: !44)
!2905 = !DILocalVariable(name: "s26", arg: 7, scope: !2896, file: !2850, line: 132, type: !44)
!2906 = !DILocalVariable(name: "s27", arg: 8, scope: !2896, file: !2850, line: 132, type: !44)
!2907 = !DILocalVariable(name: "s28", arg: 9, scope: !2896, file: !2850, line: 132, type: !44)
!2908 = !DILocation(line: 132, column: 41, scope: !2896, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 153, column: 16, scope: !2910, inlinedAt: !2887)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !2850, line: 150, column: 11)
!2911 = distinct !DILexicalBlock(scope: !2894, file: !2850, line: 149, column: 5)
!2912 = !DILocation(line: 132, column: 100, scope: !2896, inlinedAt: !2909)
!2913 = !DILocation(line: 132, column: 110, scope: !2896, inlinedAt: !2909)
!2914 = !DILocation(line: 134, column: 7, scope: !2915, inlinedAt: !2909)
!2915 = !DILexicalBlockFile(scope: !2916, file: !2850, discriminator: 1)
!2916 = distinct !DILexicalBlock(scope: !2896, file: !2850, line: 134, column: 7)
!2917 = !DILocalVariable(name: "s2", arg: 2, scope: !2918, file: !2850, line: 118, type: !54)
!2918 = distinct !DISubprogram(name: "strcaseeq3", scope: !2850, file: !2850, line: 118, type: !2919, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!28, !54, !54, !44, !44, !44, !44, !44, !44}
!2921 = !{!2922, !2917, !2923, !2924, !2925, !2926, !2927, !2928}
!2922 = !DILocalVariable(name: "s1", arg: 1, scope: !2918, file: !2850, line: 118, type: !54)
!2923 = !DILocalVariable(name: "s23", arg: 3, scope: !2918, file: !2850, line: 118, type: !44)
!2924 = !DILocalVariable(name: "s24", arg: 4, scope: !2918, file: !2850, line: 118, type: !44)
!2925 = !DILocalVariable(name: "s25", arg: 5, scope: !2918, file: !2850, line: 118, type: !44)
!2926 = !DILocalVariable(name: "s26", arg: 6, scope: !2918, file: !2850, line: 118, type: !44)
!2927 = !DILocalVariable(name: "s27", arg: 7, scope: !2918, file: !2850, line: 118, type: !44)
!2928 = !DILocalVariable(name: "s28", arg: 8, scope: !2918, file: !2850, line: 118, type: !44)
!2929 = !DILocation(line: 118, column: 41, scope: !2918, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 139, column: 16, scope: !2931, inlinedAt: !2909)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !2850, line: 136, column: 11)
!2932 = distinct !DILexicalBlock(scope: !2916, file: !2850, line: 135, column: 5)
!2933 = !DILocation(line: 118, column: 90, scope: !2918, inlinedAt: !2930)
!2934 = !DILocation(line: 118, column: 100, scope: !2918, inlinedAt: !2930)
!2935 = !DILocation(line: 120, column: 7, scope: !2936, inlinedAt: !2930)
!2936 = !DILexicalBlockFile(scope: !2937, file: !2850, discriminator: 2)
!2937 = distinct !DILexicalBlock(scope: !2918, file: !2850, line: 120, column: 7)
!2938 = !DILocation(line: 120, column: 7, scope: !2939, inlinedAt: !2930)
!2939 = !DILexicalBlockFile(scope: !2918, file: !2850, discriminator: 2)
!2940 = !DILocalVariable(name: "s2", arg: 2, scope: !2941, file: !2850, line: 104, type: !54)
!2941 = distinct !DISubprogram(name: "strcaseeq4", scope: !2850, file: !2850, line: 104, type: !2942, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!28, !54, !54, !44, !44, !44, !44, !44}
!2944 = !{!2945, !2940, !2946, !2947, !2948, !2949, !2950}
!2945 = !DILocalVariable(name: "s1", arg: 1, scope: !2941, file: !2850, line: 104, type: !54)
!2946 = !DILocalVariable(name: "s24", arg: 3, scope: !2941, file: !2850, line: 104, type: !44)
!2947 = !DILocalVariable(name: "s25", arg: 4, scope: !2941, file: !2850, line: 104, type: !44)
!2948 = !DILocalVariable(name: "s26", arg: 5, scope: !2941, file: !2850, line: 104, type: !44)
!2949 = !DILocalVariable(name: "s27", arg: 6, scope: !2941, file: !2850, line: 104, type: !44)
!2950 = !DILocalVariable(name: "s28", arg: 7, scope: !2941, file: !2850, line: 104, type: !44)
!2951 = !DILocation(line: 104, column: 41, scope: !2941, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 125, column: 16, scope: !2953, inlinedAt: !2930)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !2850, line: 122, column: 11)
!2954 = distinct !DILexicalBlock(scope: !2937, file: !2850, line: 121, column: 5)
!2955 = !DILocation(line: 104, column: 80, scope: !2941, inlinedAt: !2952)
!2956 = !DILocation(line: 104, column: 90, scope: !2941, inlinedAt: !2952)
!2957 = !DILocation(line: 106, column: 7, scope: !2958, inlinedAt: !2952)
!2958 = !DILexicalBlockFile(scope: !2959, file: !2850, discriminator: 2)
!2959 = distinct !DILexicalBlock(scope: !2941, file: !2850, line: 106, column: 7)
!2960 = !DILocation(line: 106, column: 7, scope: !2961, inlinedAt: !2952)
!2961 = !DILexicalBlockFile(scope: !2941, file: !2850, discriminator: 2)
!2962 = !DILocalVariable(name: "s2", arg: 2, scope: !2963, file: !2850, line: 90, type: !54)
!2963 = distinct !DISubprogram(name: "strcaseeq5", scope: !2850, file: !2850, line: 90, type: !2964, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!28, !54, !54, !44, !44, !44, !44}
!2966 = !{!2967, !2962, !2968, !2969, !2970, !2971}
!2967 = !DILocalVariable(name: "s1", arg: 1, scope: !2963, file: !2850, line: 90, type: !54)
!2968 = !DILocalVariable(name: "s25", arg: 3, scope: !2963, file: !2850, line: 90, type: !44)
!2969 = !DILocalVariable(name: "s26", arg: 4, scope: !2963, file: !2850, line: 90, type: !44)
!2970 = !DILocalVariable(name: "s27", arg: 5, scope: !2963, file: !2850, line: 90, type: !44)
!2971 = !DILocalVariable(name: "s28", arg: 6, scope: !2963, file: !2850, line: 90, type: !44)
!2972 = !DILocation(line: 90, column: 41, scope: !2963, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 111, column: 16, scope: !2974, inlinedAt: !2952)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !2850, line: 108, column: 11)
!2975 = distinct !DILexicalBlock(scope: !2959, file: !2850, line: 107, column: 5)
!2976 = !DILocation(line: 90, column: 70, scope: !2963, inlinedAt: !2973)
!2977 = !DILocation(line: 90, column: 80, scope: !2963, inlinedAt: !2973)
!2978 = !DILocation(line: 92, column: 7, scope: !2979, inlinedAt: !2973)
!2979 = !DILexicalBlockFile(scope: !2980, file: !2850, discriminator: 2)
!2980 = distinct !DILexicalBlock(scope: !2963, file: !2850, line: 92, column: 7)
!2981 = !DILocation(line: 92, column: 7, scope: !2982, inlinedAt: !2973)
!2982 = !DILexicalBlockFile(scope: !2963, file: !2850, discriminator: 2)
!2983 = !DILocation(line: 227, column: 12, scope: !2866)
!2984 = !DILocation(line: 227, column: 21, scope: !2866)
!2985 = !DILocation(line: 227, column: 5, scope: !2866)
!2986 = !DILocation(line: 146, column: 41, scope: !2873, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 167, column: 16, scope: !2888, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 228, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2831, file: !161, line: 228, column: 7)
!2990 = !DILocation(line: 146, column: 110, scope: !2873, inlinedAt: !2987)
!2991 = !DILocation(line: 146, column: 120, scope: !2873, inlinedAt: !2987)
!2992 = !DILocation(line: 148, column: 7, scope: !2893, inlinedAt: !2987)
!2993 = !DILocation(line: 132, column: 41, scope: !2896, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 153, column: 16, scope: !2910, inlinedAt: !2987)
!2995 = !DILocation(line: 132, column: 100, scope: !2896, inlinedAt: !2994)
!2996 = !DILocation(line: 132, column: 110, scope: !2896, inlinedAt: !2994)
!2997 = !DILocation(line: 134, column: 7, scope: !2998, inlinedAt: !2994)
!2998 = !DILexicalBlockFile(scope: !2916, file: !2850, discriminator: 2)
!2999 = !DILocation(line: 134, column: 7, scope: !3000, inlinedAt: !2994)
!3000 = !DILexicalBlockFile(scope: !2896, file: !2850, discriminator: 2)
!3001 = !DILocation(line: 118, column: 41, scope: !2918, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 139, column: 16, scope: !2931, inlinedAt: !2994)
!3003 = !DILocation(line: 118, column: 90, scope: !2918, inlinedAt: !3002)
!3004 = !DILocation(line: 118, column: 100, scope: !2918, inlinedAt: !3002)
!3005 = !DILocation(line: 120, column: 7, scope: !2936, inlinedAt: !3002)
!3006 = !DILocation(line: 120, column: 7, scope: !2939, inlinedAt: !3002)
!3007 = !DILocation(line: 104, column: 41, scope: !2941, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 125, column: 16, scope: !2953, inlinedAt: !3002)
!3009 = !DILocation(line: 104, column: 80, scope: !2941, inlinedAt: !3008)
!3010 = !DILocation(line: 104, column: 90, scope: !2941, inlinedAt: !3008)
!3011 = !DILocation(line: 106, column: 7, scope: !2958, inlinedAt: !3008)
!3012 = !DILocation(line: 106, column: 7, scope: !2961, inlinedAt: !3008)
!3013 = !DILocation(line: 90, column: 41, scope: !2963, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 111, column: 16, scope: !2974, inlinedAt: !3008)
!3015 = !DILocation(line: 90, column: 70, scope: !2963, inlinedAt: !3014)
!3016 = !DILocation(line: 90, column: 80, scope: !2963, inlinedAt: !3014)
!3017 = !DILocation(line: 92, column: 7, scope: !2979, inlinedAt: !3014)
!3018 = !DILocation(line: 92, column: 7, scope: !2982, inlinedAt: !3014)
!3019 = !DILocalVariable(name: "s2", arg: 2, scope: !3020, file: !2850, line: 76, type: !54)
!3020 = distinct !DISubprogram(name: "strcaseeq6", scope: !2850, file: !2850, line: 76, type: !3021, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!28, !54, !54, !44, !44, !44}
!3023 = !{!3024, !3019, !3025, !3026, !3027}
!3024 = !DILocalVariable(name: "s1", arg: 1, scope: !3020, file: !2850, line: 76, type: !54)
!3025 = !DILocalVariable(name: "s26", arg: 3, scope: !3020, file: !2850, line: 76, type: !44)
!3026 = !DILocalVariable(name: "s27", arg: 4, scope: !3020, file: !2850, line: 76, type: !44)
!3027 = !DILocalVariable(name: "s28", arg: 5, scope: !3020, file: !2850, line: 76, type: !44)
!3028 = !DILocation(line: 76, column: 41, scope: !3020, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 97, column: 16, scope: !3030, inlinedAt: !3014)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !2850, line: 94, column: 11)
!3031 = distinct !DILexicalBlock(scope: !2980, file: !2850, line: 93, column: 5)
!3032 = !DILocation(line: 76, column: 60, scope: !3020, inlinedAt: !3029)
!3033 = !DILocation(line: 76, column: 70, scope: !3020, inlinedAt: !3029)
!3034 = !DILocation(line: 78, column: 7, scope: !3035, inlinedAt: !3029)
!3035 = !DILexicalBlockFile(scope: !3036, file: !2850, discriminator: 2)
!3036 = distinct !DILexicalBlock(scope: !3020, file: !2850, line: 78, column: 7)
!3037 = !DILocation(line: 78, column: 7, scope: !3038, inlinedAt: !3029)
!3038 = !DILexicalBlockFile(scope: !3020, file: !2850, discriminator: 2)
!3039 = !DILocalVariable(name: "s2", arg: 2, scope: !3040, file: !2850, line: 62, type: !54)
!3040 = distinct !DISubprogram(name: "strcaseeq7", scope: !2850, file: !2850, line: 62, type: !3041, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!28, !54, !54, !44, !44}
!3043 = !{!3044, !3039, !3045, !3046}
!3044 = !DILocalVariable(name: "s1", arg: 1, scope: !3040, file: !2850, line: 62, type: !54)
!3045 = !DILocalVariable(name: "s27", arg: 3, scope: !3040, file: !2850, line: 62, type: !44)
!3046 = !DILocalVariable(name: "s28", arg: 4, scope: !3040, file: !2850, line: 62, type: !44)
!3047 = !DILocation(line: 62, column: 41, scope: !3040, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 83, column: 16, scope: !3049, inlinedAt: !3029)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !2850, line: 80, column: 11)
!3050 = distinct !DILexicalBlock(scope: !3036, file: !2850, line: 79, column: 5)
!3051 = !DILocation(line: 62, column: 50, scope: !3040, inlinedAt: !3048)
!3052 = !DILocation(line: 62, column: 60, scope: !3040, inlinedAt: !3048)
!3053 = !DILocation(line: 64, column: 7, scope: !3054, inlinedAt: !3048)
!3054 = !DILexicalBlockFile(scope: !3055, file: !2850, discriminator: 2)
!3055 = distinct !DILexicalBlock(scope: !3040, file: !2850, line: 64, column: 7)
!3056 = !DILocation(line: 228, column: 7, scope: !2831)
!3057 = !DILocation(line: 229, column: 12, scope: !2989)
!3058 = !DILocation(line: 229, column: 21, scope: !2989)
!3059 = !DILocation(line: 229, column: 5, scope: !2989)
!3060 = !DILocation(line: 231, column: 13, scope: !2831)
!3061 = !DILocation(line: 231, column: 11, scope: !2831)
!3062 = !DILocation(line: 231, column: 3, scope: !2831)
!3063 = !DILocation(line: 232, column: 1, scope: !2831)
!3064 = distinct !DISubprogram(name: "quotearg_alloc", scope: !161, file: !161, line: 791, type: !3065, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!43, !54, !46, !1906}
!3067 = !{!3068, !3069, !3070}
!3068 = !DILocalVariable(name: "arg", arg: 1, scope: !3064, file: !161, line: 791, type: !54)
!3069 = !DILocalVariable(name: "argsize", arg: 2, scope: !3064, file: !161, line: 791, type: !46)
!3070 = !DILocalVariable(name: "o", arg: 3, scope: !3064, file: !161, line: 792, type: !1906)
!3071 = !DILocation(line: 791, column: 29, scope: !3064)
!3072 = !DILocation(line: 791, column: 41, scope: !3064)
!3073 = !DILocation(line: 792, column: 47, scope: !3064)
!3074 = !DILocalVariable(name: "arg", arg: 1, scope: !3075, file: !161, line: 804, type: !54)
!3075 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !161, file: !161, line: 804, type: !3076, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!43, !54, !46, !657, !1906}
!3078 = !{!3074, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086}
!3079 = !DILocalVariable(name: "argsize", arg: 2, scope: !3075, file: !161, line: 804, type: !46)
!3080 = !DILocalVariable(name: "size", arg: 3, scope: !3075, file: !161, line: 804, type: !657)
!3081 = !DILocalVariable(name: "o", arg: 4, scope: !3075, file: !161, line: 805, type: !1906)
!3082 = !DILocalVariable(name: "p", scope: !3075, file: !161, line: 807, type: !1906)
!3083 = !DILocalVariable(name: "e", scope: !3075, file: !161, line: 808, type: !28)
!3084 = !DILocalVariable(name: "flags", scope: !3075, file: !161, line: 810, type: !28)
!3085 = !DILocalVariable(name: "bufsize", scope: !3075, file: !161, line: 811, type: !46)
!3086 = !DILocalVariable(name: "buf", scope: !3075, file: !161, line: 815, type: !43)
!3087 = !DILocation(line: 804, column: 33, scope: !3075, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 794, column: 10, scope: !3064)
!3089 = !DILocation(line: 804, column: 45, scope: !3075, inlinedAt: !3088)
!3090 = !DILocation(line: 804, column: 62, scope: !3075, inlinedAt: !3088)
!3091 = !DILocation(line: 805, column: 51, scope: !3075, inlinedAt: !3088)
!3092 = !DILocation(line: 807, column: 37, scope: !3075, inlinedAt: !3088)
!3093 = !DILocation(line: 807, column: 33, scope: !3075, inlinedAt: !3088)
!3094 = !DILocation(line: 808, column: 11, scope: !3075, inlinedAt: !3088)
!3095 = !DILocation(line: 808, column: 7, scope: !3075, inlinedAt: !3088)
!3096 = !DILocation(line: 810, column: 18, scope: !3075, inlinedAt: !3088)
!3097 = !DILocation(line: 810, column: 24, scope: !3075, inlinedAt: !3088)
!3098 = !DILocation(line: 810, column: 7, scope: !3075, inlinedAt: !3088)
!3099 = !DILocation(line: 811, column: 69, scope: !3075, inlinedAt: !3088)
!3100 = !DILocation(line: 812, column: 53, scope: !3075, inlinedAt: !3088)
!3101 = !DILocation(line: 813, column: 49, scope: !3075, inlinedAt: !3088)
!3102 = !DILocation(line: 814, column: 49, scope: !3075, inlinedAt: !3088)
!3103 = !DILocation(line: 811, column: 20, scope: !3075, inlinedAt: !3088)
!3104 = !DILocation(line: 814, column: 62, scope: !3075, inlinedAt: !3088)
!3105 = !DILocation(line: 811, column: 10, scope: !3075, inlinedAt: !3088)
!3106 = !DILocalVariable(name: "n", arg: 1, scope: !3107, file: !653, line: 220, type: !46)
!3107 = distinct !DISubprogram(name: "xcharalloc", scope: !653, file: !653, line: 220, type: !3108, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!43, !46}
!3110 = !{!3106}
!3111 = !DILocation(line: 220, column: 20, scope: !3107, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 815, column: 15, scope: !3075, inlinedAt: !3088)
!3113 = !DILocation(line: 222, column: 10, scope: !3107, inlinedAt: !3112)
!3114 = !DILocation(line: 815, column: 9, scope: !3075, inlinedAt: !3088)
!3115 = !DILocation(line: 816, column: 60, scope: !3075, inlinedAt: !3088)
!3116 = !DILocation(line: 818, column: 32, scope: !3075, inlinedAt: !3088)
!3117 = !DILocation(line: 818, column: 47, scope: !3075, inlinedAt: !3088)
!3118 = !DILocation(line: 816, column: 3, scope: !3075, inlinedAt: !3088)
!3119 = !DILocation(line: 819, column: 9, scope: !3075, inlinedAt: !3088)
!3120 = !DILocation(line: 794, column: 3, scope: !3064)
!3121 = !DILocation(line: 804, column: 33, scope: !3075)
!3122 = !DILocation(line: 804, column: 45, scope: !3075)
!3123 = !DILocation(line: 804, column: 62, scope: !3075)
!3124 = !DILocation(line: 805, column: 51, scope: !3075)
!3125 = !DILocation(line: 807, column: 37, scope: !3075)
!3126 = !DILocation(line: 807, column: 33, scope: !3075)
!3127 = !DILocation(line: 808, column: 11, scope: !3075)
!3128 = !DILocation(line: 808, column: 7, scope: !3075)
!3129 = !DILocation(line: 810, column: 18, scope: !3075)
!3130 = !DILocation(line: 810, column: 27, scope: !3075)
!3131 = !DILocation(line: 810, column: 24, scope: !3075)
!3132 = !DILocation(line: 810, column: 7, scope: !3075)
!3133 = !DILocation(line: 811, column: 69, scope: !3075)
!3134 = !DILocation(line: 812, column: 53, scope: !3075)
!3135 = !DILocation(line: 813, column: 49, scope: !3075)
!3136 = !DILocation(line: 814, column: 49, scope: !3075)
!3137 = !DILocation(line: 811, column: 20, scope: !3075)
!3138 = !DILocation(line: 814, column: 62, scope: !3075)
!3139 = !DILocation(line: 811, column: 10, scope: !3075)
!3140 = !DILocation(line: 220, column: 20, scope: !3107, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 815, column: 15, scope: !3075)
!3142 = !DILocation(line: 222, column: 10, scope: !3107, inlinedAt: !3141)
!3143 = !DILocation(line: 815, column: 9, scope: !3075)
!3144 = !DILocation(line: 816, column: 60, scope: !3075)
!3145 = !DILocation(line: 818, column: 32, scope: !3075)
!3146 = !DILocation(line: 818, column: 47, scope: !3075)
!3147 = !DILocation(line: 816, column: 3, scope: !3075)
!3148 = !DILocation(line: 819, column: 9, scope: !3075)
!3149 = !DILocation(line: 820, column: 7, scope: !3075)
!3150 = !DILocation(line: 821, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3075, file: !161, line: 820, column: 7)
!3152 = !{!1168, !1168, i64 0}
!3153 = !DILocation(line: 821, column: 5, scope: !3151)
!3154 = !DILocation(line: 822, column: 3, scope: !3075)
!3155 = distinct !DISubprogram(name: "quotearg_free", scope: !161, file: !161, line: 840, type: !741, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3156)
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "sv", scope: !3155, file: !161, line: 842, type: !187)
!3158 = !DILocalVariable(name: "i", scope: !3155, file: !161, line: 843, type: !28)
!3159 = !DILocation(line: 842, column: 24, scope: !3155)
!3160 = !DILocation(line: 842, column: 19, scope: !3155)
!3161 = !DILocation(line: 843, column: 7, scope: !3155)
!3162 = !DILocation(line: 844, column: 19, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3164, file: !161, discriminator: 1)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !161, line: 844, column: 3)
!3165 = distinct !DILexicalBlock(scope: !3155, file: !161, line: 844, column: 3)
!3166 = !DILocation(line: 844, column: 17, scope: !3163)
!3167 = !DILocation(line: 844, column: 3, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3165, file: !161, discriminator: 1)
!3169 = !DILocation(line: 845, column: 17, scope: !3164)
!3170 = !{!3171, !726, i64 8}
!3171 = !{!"slotvec", !1168, i64 0, !726, i64 8}
!3172 = !DILocation(line: 845, column: 5, scope: !3164)
!3173 = !DILocation(line: 844, column: 28, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !3164, file: !161, discriminator: 2)
!3175 = distinct !{!3175, !3176, !3177}
!3176 = !DILocation(line: 844, column: 3, scope: !3165)
!3177 = !DILocation(line: 845, column: 20, scope: !3165)
!3178 = !DILocation(line: 846, column: 13, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3155, file: !161, line: 846, column: 7)
!3180 = !DILocation(line: 846, column: 17, scope: !3179)
!3181 = !DILocation(line: 846, column: 7, scope: !3155)
!3182 = !DILocation(line: 848, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !161, line: 847, column: 5)
!3184 = !DILocation(line: 849, column: 21, scope: !3183)
!3185 = !{!3171, !1168, i64 0}
!3186 = !DILocation(line: 850, column: 20, scope: !3183)
!3187 = !DILocation(line: 851, column: 5, scope: !3183)
!3188 = !DILocation(line: 852, column: 10, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3155, file: !161, line: 852, column: 7)
!3190 = !DILocation(line: 852, column: 7, scope: !3155)
!3191 = !DILocation(line: 854, column: 13, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3189, file: !161, line: 853, column: 5)
!3193 = !DILocation(line: 854, column: 7, scope: !3192)
!3194 = !DILocation(line: 855, column: 15, scope: !3192)
!3195 = !DILocation(line: 856, column: 5, scope: !3192)
!3196 = !DILocation(line: 857, column: 10, scope: !3155)
!3197 = !DILocation(line: 858, column: 1, scope: !3155)
!3198 = distinct !DISubprogram(name: "quotearg_n", scope: !161, file: !161, line: 922, type: !3199, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!43, !28, !54}
!3201 = !{!3202, !3203}
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3198, file: !161, line: 922, type: !28)
!3203 = !DILocalVariable(name: "arg", arg: 2, scope: !3198, file: !161, line: 922, type: !54)
!3204 = !DILocation(line: 922, column: 17, scope: !3198)
!3205 = !DILocation(line: 922, column: 32, scope: !3198)
!3206 = !DILocation(line: 924, column: 10, scope: !3198)
!3207 = !DILocation(line: 924, column: 3, scope: !3198)
!3208 = distinct !DISubprogram(name: "quotearg_n_options", scope: !161, file: !161, line: 869, type: !3209, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!43, !28, !54, !46, !1906}
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217, !3218, !3221, !3223, !3224, !3225}
!3212 = !DILocalVariable(name: "n", arg: 1, scope: !3208, file: !161, line: 869, type: !28)
!3213 = !DILocalVariable(name: "arg", arg: 2, scope: !3208, file: !161, line: 869, type: !54)
!3214 = !DILocalVariable(name: "argsize", arg: 3, scope: !3208, file: !161, line: 869, type: !46)
!3215 = !DILocalVariable(name: "options", arg: 4, scope: !3208, file: !161, line: 870, type: !1906)
!3216 = !DILocalVariable(name: "e", scope: !3208, file: !161, line: 872, type: !28)
!3217 = !DILocalVariable(name: "sv", scope: !3208, file: !161, line: 874, type: !187)
!3218 = !DILocalVariable(name: "preallocated", scope: !3219, file: !161, line: 881, type: !116)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !161, line: 880, column: 5)
!3220 = distinct !DILexicalBlock(scope: !3208, file: !161, line: 879, column: 7)
!3221 = !DILocalVariable(name: "size", scope: !3222, file: !161, line: 894, type: !46)
!3222 = distinct !DILexicalBlock(scope: !3208, file: !161, line: 893, column: 3)
!3223 = !DILocalVariable(name: "val", scope: !3222, file: !161, line: 895, type: !43)
!3224 = !DILocalVariable(name: "flags", scope: !3222, file: !161, line: 897, type: !28)
!3225 = !DILocalVariable(name: "qsize", scope: !3222, file: !161, line: 898, type: !46)
!3226 = !DILocation(line: 869, column: 25, scope: !3208)
!3227 = !DILocation(line: 869, column: 40, scope: !3208)
!3228 = !DILocation(line: 869, column: 52, scope: !3208)
!3229 = !DILocation(line: 870, column: 51, scope: !3208)
!3230 = !DILocation(line: 872, column: 11, scope: !3208)
!3231 = !DILocation(line: 872, column: 7, scope: !3208)
!3232 = !DILocation(line: 874, column: 24, scope: !3208)
!3233 = !DILocation(line: 874, column: 19, scope: !3208)
!3234 = !DILocation(line: 876, column: 9, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3208, file: !161, line: 876, column: 7)
!3236 = !DILocation(line: 876, column: 7, scope: !3208)
!3237 = !DILocation(line: 877, column: 5, scope: !3235)
!3238 = !DILocation(line: 879, column: 7, scope: !3220)
!3239 = !DILocation(line: 879, column: 14, scope: !3220)
!3240 = !DILocation(line: 879, column: 7, scope: !3208)
!3241 = !DILocation(line: 881, column: 31, scope: !3219)
!3242 = !DILocation(line: 883, column: 67, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3219, file: !161, line: 883, column: 11)
!3244 = !DILocation(line: 883, column: 11, scope: !3219)
!3245 = !DILocation(line: 884, column: 9, scope: !3243)
!3246 = !DILocation(line: 886, column: 32, scope: !3247)
!3247 = !DILexicalBlockFile(scope: !3219, file: !161, discriminator: 3)
!3248 = !DILocation(line: 886, column: 61, scope: !3247)
!3249 = !DILocation(line: 886, column: 58, scope: !3247)
!3250 = !DILocation(line: 886, column: 66, scope: !3247)
!3251 = !DILocation(line: 886, column: 22, scope: !3247)
!3252 = !DILocation(line: 886, column: 15, scope: !3247)
!3253 = !DILocation(line: 887, column: 11, scope: !3219)
!3254 = !DILocation(line: 888, column: 15, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3219, file: !161, line: 887, column: 11)
!3256 = !{i64 0, i64 8, !3152, i64 8, i64 8, !725}
!3257 = !DILocation(line: 888, column: 9, scope: !3255)
!3258 = !DILocation(line: 889, column: 20, scope: !3219)
!3259 = !DILocation(line: 889, column: 18, scope: !3219)
!3260 = !DILocation(line: 889, column: 7, scope: !3219)
!3261 = !DILocation(line: 889, column: 38, scope: !3219)
!3262 = !DILocation(line: 889, column: 31, scope: !3219)
!3263 = !DILocation(line: 889, column: 48, scope: !3219)
!3264 = !DILocation(line: 890, column: 14, scope: !3219)
!3265 = !DILocation(line: 891, column: 5, scope: !3219)
!3266 = !DILocation(line: 894, column: 19, scope: !3222)
!3267 = !DILocation(line: 894, column: 25, scope: !3222)
!3268 = !DILocation(line: 894, column: 12, scope: !3222)
!3269 = !DILocation(line: 895, column: 23, scope: !3222)
!3270 = !DILocation(line: 895, column: 11, scope: !3222)
!3271 = !DILocation(line: 897, column: 26, scope: !3222)
!3272 = !DILocation(line: 897, column: 32, scope: !3222)
!3273 = !DILocation(line: 897, column: 9, scope: !3222)
!3274 = !DILocation(line: 899, column: 55, scope: !3222)
!3275 = !DILocation(line: 900, column: 46, scope: !3222)
!3276 = !DILocation(line: 901, column: 55, scope: !3222)
!3277 = !DILocation(line: 902, column: 55, scope: !3222)
!3278 = !DILocation(line: 898, column: 20, scope: !3222)
!3279 = !DILocation(line: 898, column: 12, scope: !3222)
!3280 = !DILocation(line: 904, column: 14, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3222, file: !161, line: 904, column: 9)
!3282 = !DILocation(line: 904, column: 9, scope: !3222)
!3283 = !DILocation(line: 906, column: 35, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !161, line: 905, column: 7)
!3285 = !DILocation(line: 906, column: 20, scope: !3284)
!3286 = !DILocation(line: 907, column: 17, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !161, line: 907, column: 13)
!3288 = !DILocation(line: 907, column: 13, scope: !3284)
!3289 = !DILocation(line: 908, column: 11, scope: !3287)
!3290 = !DILocation(line: 220, column: 20, scope: !3107, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 909, column: 27, scope: !3284)
!3292 = !DILocation(line: 222, column: 10, scope: !3107, inlinedAt: !3291)
!3293 = !DILocation(line: 909, column: 19, scope: !3284)
!3294 = !DILocation(line: 910, column: 69, scope: !3284)
!3295 = !DILocation(line: 912, column: 44, scope: !3284)
!3296 = !DILocation(line: 913, column: 44, scope: !3284)
!3297 = !DILocation(line: 910, column: 9, scope: !3284)
!3298 = !DILocation(line: 914, column: 7, scope: !3284)
!3299 = !DILocation(line: 916, column: 11, scope: !3222)
!3300 = !DILocation(line: 917, column: 5, scope: !3222)
!3301 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !161, file: !161, line: 928, type: !3302, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!43, !28, !54, !46}
!3304 = !{!3305, !3306, !3307}
!3305 = !DILocalVariable(name: "n", arg: 1, scope: !3301, file: !161, line: 928, type: !28)
!3306 = !DILocalVariable(name: "arg", arg: 2, scope: !3301, file: !161, line: 928, type: !54)
!3307 = !DILocalVariable(name: "argsize", arg: 3, scope: !3301, file: !161, line: 928, type: !46)
!3308 = !DILocation(line: 928, column: 21, scope: !3301)
!3309 = !DILocation(line: 928, column: 36, scope: !3301)
!3310 = !DILocation(line: 928, column: 48, scope: !3301)
!3311 = !DILocation(line: 930, column: 10, scope: !3301)
!3312 = !DILocation(line: 930, column: 3, scope: !3301)
!3313 = distinct !DISubprogram(name: "quotearg", scope: !161, file: !161, line: 934, type: !3314, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!43, !54}
!3316 = !{!3317}
!3317 = !DILocalVariable(name: "arg", arg: 1, scope: !3313, file: !161, line: 934, type: !54)
!3318 = !DILocation(line: 934, column: 23, scope: !3313)
!3319 = !DILocation(line: 922, column: 17, scope: !3198, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 936, column: 10, scope: !3313)
!3321 = !DILocation(line: 922, column: 32, scope: !3198, inlinedAt: !3320)
!3322 = !DILocation(line: 924, column: 10, scope: !3198, inlinedAt: !3320)
!3323 = !DILocation(line: 936, column: 3, scope: !3313)
!3324 = distinct !DISubprogram(name: "quotearg_mem", scope: !161, file: !161, line: 940, type: !3325, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!43, !54, !46}
!3327 = !{!3328, !3329}
!3328 = !DILocalVariable(name: "arg", arg: 1, scope: !3324, file: !161, line: 940, type: !54)
!3329 = !DILocalVariable(name: "argsize", arg: 2, scope: !3324, file: !161, line: 940, type: !46)
!3330 = !DILocation(line: 940, column: 27, scope: !3324)
!3331 = !DILocation(line: 940, column: 39, scope: !3324)
!3332 = !DILocation(line: 928, column: 21, scope: !3301, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 942, column: 10, scope: !3324)
!3334 = !DILocation(line: 928, column: 36, scope: !3301, inlinedAt: !3333)
!3335 = !DILocation(line: 928, column: 48, scope: !3301, inlinedAt: !3333)
!3336 = !DILocation(line: 930, column: 10, scope: !3301, inlinedAt: !3333)
!3337 = !DILocation(line: 942, column: 3, scope: !3324)
!3338 = distinct !DISubprogram(name: "quotearg_n_style", scope: !161, file: !161, line: 946, type: !3339, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!43, !28, !5, !54}
!3341 = !{!3342, !3343, !3344, !3345}
!3342 = !DILocalVariable(name: "n", arg: 1, scope: !3338, file: !161, line: 946, type: !28)
!3343 = !DILocalVariable(name: "s", arg: 2, scope: !3338, file: !161, line: 946, type: !5)
!3344 = !DILocalVariable(name: "arg", arg: 3, scope: !3338, file: !161, line: 946, type: !54)
!3345 = !DILocalVariable(name: "o", scope: !3338, file: !161, line: 948, type: !1907)
!3346 = !DILocalVariable(name: "o", scope: !3347, file: !161, line: 187, type: !168)
!3347 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !161, file: !161, line: 185, type: !3348, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!168, !5}
!3350 = !{!3351, !3346}
!3351 = !DILocalVariable(name: "style", arg: 1, scope: !3347, file: !161, line: 185, type: !5)
!3352 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3353 = !DILocation(line: 187, column: 26, scope: !3347, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 948, column: 36, scope: !3338)
!3355 = !DILocation(line: 946, column: 23, scope: !3338)
!3356 = !DILocation(line: 946, column: 45, scope: !3338)
!3357 = !DILocation(line: 946, column: 60, scope: !3338)
!3358 = !DILocation(line: 948, column: 3, scope: !3338)
!3359 = !DILocation(line: 948, column: 32, scope: !3338)
!3360 = !DILocation(line: 185, column: 48, scope: !3347, inlinedAt: !3354)
!3361 = !DILocation(line: 187, column: 3, scope: !3347, inlinedAt: !3354)
!3362 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3363 = !DILocation(line: 188, column: 13, scope: !3364, inlinedAt: !3354)
!3364 = distinct !DILexicalBlock(scope: !3347, file: !161, line: 188, column: 7)
!3365 = !DILocation(line: 188, column: 7, scope: !3347, inlinedAt: !3354)
!3366 = !DILocation(line: 189, column: 5, scope: !3364, inlinedAt: !3354)
!3367 = !{!3368}
!3368 = distinct !{!3368, !3369, !"quoting_options_from_style: argument 0"}
!3369 = distinct !{!3369, !"quoting_options_from_style"}
!3370 = !DILocation(line: 191, column: 10, scope: !3347, inlinedAt: !3354)
!3371 = !DILocation(line: 192, column: 1, scope: !3347, inlinedAt: !3354)
!3372 = !DILocation(line: 949, column: 10, scope: !3338)
!3373 = !DILocation(line: 950, column: 1, scope: !3338)
!3374 = !DILocation(line: 949, column: 3, scope: !3338)
!3375 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !161, file: !161, line: 953, type: !3376, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!43, !28, !5, !54, !46}
!3378 = !{!3379, !3380, !3381, !3382, !3383}
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3375, file: !161, line: 953, type: !28)
!3380 = !DILocalVariable(name: "s", arg: 2, scope: !3375, file: !161, line: 953, type: !5)
!3381 = !DILocalVariable(name: "arg", arg: 3, scope: !3375, file: !161, line: 954, type: !54)
!3382 = !DILocalVariable(name: "argsize", arg: 4, scope: !3375, file: !161, line: 954, type: !46)
!3383 = !DILocalVariable(name: "o", scope: !3375, file: !161, line: 956, type: !1907)
!3384 = !DILocation(line: 187, column: 26, scope: !3347, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 956, column: 36, scope: !3375)
!3386 = !DILocation(line: 953, column: 27, scope: !3375)
!3387 = !DILocation(line: 953, column: 49, scope: !3375)
!3388 = !DILocation(line: 954, column: 35, scope: !3375)
!3389 = !DILocation(line: 954, column: 47, scope: !3375)
!3390 = !DILocation(line: 956, column: 3, scope: !3375)
!3391 = !DILocation(line: 956, column: 32, scope: !3375)
!3392 = !DILocation(line: 185, column: 48, scope: !3347, inlinedAt: !3385)
!3393 = !DILocation(line: 187, column: 3, scope: !3347, inlinedAt: !3385)
!3394 = !DILocation(line: 188, column: 13, scope: !3364, inlinedAt: !3385)
!3395 = !DILocation(line: 188, column: 7, scope: !3347, inlinedAt: !3385)
!3396 = !DILocation(line: 189, column: 5, scope: !3364, inlinedAt: !3385)
!3397 = !{!3398}
!3398 = distinct !{!3398, !3399, !"quoting_options_from_style: argument 0"}
!3399 = distinct !{!3399, !"quoting_options_from_style"}
!3400 = !DILocation(line: 191, column: 10, scope: !3347, inlinedAt: !3385)
!3401 = !DILocation(line: 192, column: 1, scope: !3347, inlinedAt: !3385)
!3402 = !DILocation(line: 957, column: 10, scope: !3375)
!3403 = !DILocation(line: 958, column: 1, scope: !3375)
!3404 = !DILocation(line: 957, column: 3, scope: !3375)
!3405 = distinct !DISubprogram(name: "quotearg_style", scope: !161, file: !161, line: 961, type: !3406, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!43, !5, !54}
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "s", arg: 1, scope: !3405, file: !161, line: 961, type: !5)
!3410 = !DILocalVariable(name: "arg", arg: 2, scope: !3405, file: !161, line: 961, type: !54)
!3411 = !DILocation(line: 187, column: 26, scope: !3347, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 948, column: 36, scope: !3338, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 963, column: 10, scope: !3405)
!3414 = !DILocation(line: 961, column: 36, scope: !3405)
!3415 = !DILocation(line: 961, column: 51, scope: !3405)
!3416 = !DILocation(line: 946, column: 23, scope: !3338, inlinedAt: !3413)
!3417 = !DILocation(line: 946, column: 45, scope: !3338, inlinedAt: !3413)
!3418 = !DILocation(line: 946, column: 60, scope: !3338, inlinedAt: !3413)
!3419 = !DILocation(line: 948, column: 3, scope: !3338, inlinedAt: !3413)
!3420 = !DILocation(line: 948, column: 32, scope: !3338, inlinedAt: !3413)
!3421 = !DILocation(line: 185, column: 48, scope: !3347, inlinedAt: !3412)
!3422 = !DILocation(line: 187, column: 3, scope: !3347, inlinedAt: !3412)
!3423 = !DILocation(line: 188, column: 13, scope: !3364, inlinedAt: !3412)
!3424 = !DILocation(line: 188, column: 7, scope: !3347, inlinedAt: !3412)
!3425 = !DILocation(line: 189, column: 5, scope: !3364, inlinedAt: !3412)
!3426 = !{!3427}
!3427 = distinct !{!3427, !3428, !"quoting_options_from_style: argument 0"}
!3428 = distinct !{!3428, !"quoting_options_from_style"}
!3429 = !DILocation(line: 191, column: 10, scope: !3347, inlinedAt: !3412)
!3430 = !DILocation(line: 192, column: 1, scope: !3347, inlinedAt: !3412)
!3431 = !DILocation(line: 949, column: 10, scope: !3338, inlinedAt: !3413)
!3432 = !DILocation(line: 950, column: 1, scope: !3338, inlinedAt: !3413)
!3433 = !DILocation(line: 963, column: 3, scope: !3405)
!3434 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !161, file: !161, line: 967, type: !3435, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!43, !5, !54, !46}
!3437 = !{!3438, !3439, !3440}
!3438 = !DILocalVariable(name: "s", arg: 1, scope: !3434, file: !161, line: 967, type: !5)
!3439 = !DILocalVariable(name: "arg", arg: 2, scope: !3434, file: !161, line: 967, type: !54)
!3440 = !DILocalVariable(name: "argsize", arg: 3, scope: !3434, file: !161, line: 967, type: !46)
!3441 = !DILocation(line: 187, column: 26, scope: !3347, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 956, column: 36, scope: !3375, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 969, column: 10, scope: !3434)
!3444 = !DILocation(line: 967, column: 40, scope: !3434)
!3445 = !DILocation(line: 967, column: 55, scope: !3434)
!3446 = !DILocation(line: 967, column: 67, scope: !3434)
!3447 = !DILocation(line: 953, column: 27, scope: !3375, inlinedAt: !3443)
!3448 = !DILocation(line: 953, column: 49, scope: !3375, inlinedAt: !3443)
!3449 = !DILocation(line: 954, column: 35, scope: !3375, inlinedAt: !3443)
!3450 = !DILocation(line: 954, column: 47, scope: !3375, inlinedAt: !3443)
!3451 = !DILocation(line: 956, column: 3, scope: !3375, inlinedAt: !3443)
!3452 = !DILocation(line: 956, column: 32, scope: !3375, inlinedAt: !3443)
!3453 = !DILocation(line: 185, column: 48, scope: !3347, inlinedAt: !3442)
!3454 = !DILocation(line: 187, column: 3, scope: !3347, inlinedAt: !3442)
!3455 = !DILocation(line: 188, column: 13, scope: !3364, inlinedAt: !3442)
!3456 = !DILocation(line: 188, column: 7, scope: !3347, inlinedAt: !3442)
!3457 = !DILocation(line: 189, column: 5, scope: !3364, inlinedAt: !3442)
!3458 = !{!3459}
!3459 = distinct !{!3459, !3460, !"quoting_options_from_style: argument 0"}
!3460 = distinct !{!3460, !"quoting_options_from_style"}
!3461 = !DILocation(line: 191, column: 10, scope: !3347, inlinedAt: !3442)
!3462 = !DILocation(line: 192, column: 1, scope: !3347, inlinedAt: !3442)
!3463 = !DILocation(line: 957, column: 10, scope: !3375, inlinedAt: !3443)
!3464 = !DILocation(line: 958, column: 1, scope: !3375, inlinedAt: !3443)
!3465 = !DILocation(line: 969, column: 3, scope: !3434)
!3466 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !161, file: !161, line: 973, type: !3467, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!43, !54, !46, !44}
!3469 = !{!3470, !3471, !3472, !3473}
!3470 = !DILocalVariable(name: "arg", arg: 1, scope: !3466, file: !161, line: 973, type: !54)
!3471 = !DILocalVariable(name: "argsize", arg: 2, scope: !3466, file: !161, line: 973, type: !46)
!3472 = !DILocalVariable(name: "ch", arg: 3, scope: !3466, file: !161, line: 973, type: !44)
!3473 = !DILocalVariable(name: "options", scope: !3466, file: !161, line: 975, type: !168)
!3474 = !DILocation(line: 973, column: 32, scope: !3466)
!3475 = !DILocation(line: 973, column: 44, scope: !3466)
!3476 = !DILocation(line: 973, column: 58, scope: !3466)
!3477 = !DILocation(line: 975, column: 3, scope: !3466)
!3478 = !DILocation(line: 976, column: 13, scope: !3466)
!3479 = !{i64 0, i64 4, !1176, i64 4, i64 4, !872, i64 8, i64 32, !1176, i64 40, i64 8, !725, i64 48, i64 8, !725}
!3480 = !DILocation(line: 975, column: 26, scope: !3466)
!3481 = !DILocation(line: 144, column: 43, scope: !1930, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 977, column: 3, scope: !3466)
!3483 = !DILocation(line: 144, column: 51, scope: !1930, inlinedAt: !3482)
!3484 = !DILocation(line: 144, column: 58, scope: !1930, inlinedAt: !3482)
!3485 = !DILocation(line: 146, column: 17, scope: !1930, inlinedAt: !3482)
!3486 = !DILocation(line: 148, column: 62, scope: !1948, inlinedAt: !3482)
!3487 = !DILocation(line: 148, column: 57, scope: !1948, inlinedAt: !3482)
!3488 = !DILocation(line: 147, column: 17, scope: !1930, inlinedAt: !3482)
!3489 = !DILocation(line: 149, column: 18, scope: !1930, inlinedAt: !3482)
!3490 = !DILocation(line: 149, column: 15, scope: !1930, inlinedAt: !3482)
!3491 = !DILocation(line: 149, column: 7, scope: !1930, inlinedAt: !3482)
!3492 = !DILocation(line: 150, column: 12, scope: !1930, inlinedAt: !3482)
!3493 = !DILocation(line: 150, column: 15, scope: !1930, inlinedAt: !3482)
!3494 = !DILocation(line: 150, column: 25, scope: !1930, inlinedAt: !3482)
!3495 = !DILocation(line: 150, column: 7, scope: !1930, inlinedAt: !3482)
!3496 = !DILocation(line: 151, column: 18, scope: !1930, inlinedAt: !3482)
!3497 = !DILocation(line: 151, column: 23, scope: !1930, inlinedAt: !3482)
!3498 = !DILocation(line: 151, column: 6, scope: !1930, inlinedAt: !3482)
!3499 = !DILocation(line: 978, column: 10, scope: !3466)
!3500 = !DILocation(line: 979, column: 1, scope: !3466)
!3501 = !DILocation(line: 978, column: 3, scope: !3466)
!3502 = distinct !DISubprogram(name: "quotearg_char", scope: !161, file: !161, line: 982, type: !3503, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!43, !54, !44}
!3505 = !{!3506, !3507}
!3506 = !DILocalVariable(name: "arg", arg: 1, scope: !3502, file: !161, line: 982, type: !54)
!3507 = !DILocalVariable(name: "ch", arg: 2, scope: !3502, file: !161, line: 982, type: !44)
!3508 = !DILocation(line: 982, column: 28, scope: !3502)
!3509 = !DILocation(line: 982, column: 38, scope: !3502)
!3510 = !DILocation(line: 973, column: 32, scope: !3466, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 984, column: 10, scope: !3502)
!3512 = !DILocation(line: 973, column: 44, scope: !3466, inlinedAt: !3511)
!3513 = !DILocation(line: 973, column: 58, scope: !3466, inlinedAt: !3511)
!3514 = !DILocation(line: 975, column: 3, scope: !3466, inlinedAt: !3511)
!3515 = !DILocation(line: 976, column: 13, scope: !3466, inlinedAt: !3511)
!3516 = !DILocation(line: 975, column: 26, scope: !3466, inlinedAt: !3511)
!3517 = !DILocation(line: 144, column: 43, scope: !1930, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 977, column: 3, scope: !3466, inlinedAt: !3511)
!3519 = !DILocation(line: 144, column: 51, scope: !1930, inlinedAt: !3518)
!3520 = !DILocation(line: 144, column: 58, scope: !1930, inlinedAt: !3518)
!3521 = !DILocation(line: 146, column: 17, scope: !1930, inlinedAt: !3518)
!3522 = !DILocation(line: 148, column: 62, scope: !1948, inlinedAt: !3518)
!3523 = !DILocation(line: 148, column: 57, scope: !1948, inlinedAt: !3518)
!3524 = !DILocation(line: 147, column: 17, scope: !1930, inlinedAt: !3518)
!3525 = !DILocation(line: 149, column: 18, scope: !1930, inlinedAt: !3518)
!3526 = !DILocation(line: 149, column: 15, scope: !1930, inlinedAt: !3518)
!3527 = !DILocation(line: 149, column: 7, scope: !1930, inlinedAt: !3518)
!3528 = !DILocation(line: 150, column: 12, scope: !1930, inlinedAt: !3518)
!3529 = !DILocation(line: 150, column: 15, scope: !1930, inlinedAt: !3518)
!3530 = !DILocation(line: 150, column: 25, scope: !1930, inlinedAt: !3518)
!3531 = !DILocation(line: 150, column: 7, scope: !1930, inlinedAt: !3518)
!3532 = !DILocation(line: 151, column: 18, scope: !1930, inlinedAt: !3518)
!3533 = !DILocation(line: 151, column: 23, scope: !1930, inlinedAt: !3518)
!3534 = !DILocation(line: 151, column: 6, scope: !1930, inlinedAt: !3518)
!3535 = !DILocation(line: 978, column: 10, scope: !3466, inlinedAt: !3511)
!3536 = !DILocation(line: 979, column: 1, scope: !3466, inlinedAt: !3511)
!3537 = !DILocation(line: 984, column: 3, scope: !3502)
!3538 = distinct !DISubprogram(name: "quotearg_colon", scope: !161, file: !161, line: 988, type: !3314, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3539)
!3539 = !{!3540}
!3540 = !DILocalVariable(name: "arg", arg: 1, scope: !3538, file: !161, line: 988, type: !54)
!3541 = !DILocation(line: 988, column: 29, scope: !3538)
!3542 = !DILocation(line: 982, column: 28, scope: !3502, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 990, column: 10, scope: !3538)
!3544 = !DILocation(line: 982, column: 38, scope: !3502, inlinedAt: !3543)
!3545 = !DILocation(line: 973, column: 32, scope: !3466, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 984, column: 10, scope: !3502, inlinedAt: !3543)
!3547 = !DILocation(line: 973, column: 44, scope: !3466, inlinedAt: !3546)
!3548 = !DILocation(line: 973, column: 58, scope: !3466, inlinedAt: !3546)
!3549 = !DILocation(line: 975, column: 3, scope: !3466, inlinedAt: !3546)
!3550 = !DILocation(line: 976, column: 13, scope: !3466, inlinedAt: !3546)
!3551 = !DILocation(line: 975, column: 26, scope: !3466, inlinedAt: !3546)
!3552 = !DILocation(line: 144, column: 43, scope: !1930, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 977, column: 3, scope: !3466, inlinedAt: !3546)
!3554 = !DILocation(line: 144, column: 51, scope: !1930, inlinedAt: !3553)
!3555 = !DILocation(line: 144, column: 58, scope: !1930, inlinedAt: !3553)
!3556 = !DILocation(line: 146, column: 17, scope: !1930, inlinedAt: !3553)
!3557 = !DILocation(line: 148, column: 57, scope: !1948, inlinedAt: !3553)
!3558 = !DILocation(line: 147, column: 17, scope: !1930, inlinedAt: !3553)
!3559 = !DILocation(line: 149, column: 7, scope: !1930, inlinedAt: !3553)
!3560 = !DILocation(line: 150, column: 12, scope: !1930, inlinedAt: !3553)
!3561 = !DILocation(line: 151, column: 6, scope: !1930, inlinedAt: !3553)
!3562 = !DILocation(line: 978, column: 10, scope: !3466, inlinedAt: !3546)
!3563 = !DILocation(line: 979, column: 1, scope: !3466, inlinedAt: !3546)
!3564 = !DILocation(line: 990, column: 3, scope: !3538)
!3565 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !161, file: !161, line: 994, type: !3325, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3566)
!3566 = !{!3567, !3568}
!3567 = !DILocalVariable(name: "arg", arg: 1, scope: !3565, file: !161, line: 994, type: !54)
!3568 = !DILocalVariable(name: "argsize", arg: 2, scope: !3565, file: !161, line: 994, type: !46)
!3569 = !DILocation(line: 994, column: 33, scope: !3565)
!3570 = !DILocation(line: 994, column: 45, scope: !3565)
!3571 = !DILocation(line: 973, column: 32, scope: !3466, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 996, column: 10, scope: !3565)
!3573 = !DILocation(line: 973, column: 44, scope: !3466, inlinedAt: !3572)
!3574 = !DILocation(line: 973, column: 58, scope: !3466, inlinedAt: !3572)
!3575 = !DILocation(line: 975, column: 3, scope: !3466, inlinedAt: !3572)
!3576 = !DILocation(line: 976, column: 13, scope: !3466, inlinedAt: !3572)
!3577 = !DILocation(line: 975, column: 26, scope: !3466, inlinedAt: !3572)
!3578 = !DILocation(line: 144, column: 43, scope: !1930, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 977, column: 3, scope: !3466, inlinedAt: !3572)
!3580 = !DILocation(line: 144, column: 51, scope: !1930, inlinedAt: !3579)
!3581 = !DILocation(line: 144, column: 58, scope: !1930, inlinedAt: !3579)
!3582 = !DILocation(line: 146, column: 17, scope: !1930, inlinedAt: !3579)
!3583 = !DILocation(line: 148, column: 57, scope: !1948, inlinedAt: !3579)
!3584 = !DILocation(line: 147, column: 17, scope: !1930, inlinedAt: !3579)
!3585 = !DILocation(line: 149, column: 7, scope: !1930, inlinedAt: !3579)
!3586 = !DILocation(line: 150, column: 12, scope: !1930, inlinedAt: !3579)
!3587 = !DILocation(line: 151, column: 6, scope: !1930, inlinedAt: !3579)
!3588 = !DILocation(line: 978, column: 10, scope: !3466, inlinedAt: !3572)
!3589 = !DILocation(line: 979, column: 1, scope: !3466, inlinedAt: !3572)
!3590 = !DILocation(line: 996, column: 3, scope: !3565)
!3591 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !161, file: !161, line: 1000, type: !3339, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3592)
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DILocalVariable(name: "n", arg: 1, scope: !3591, file: !161, line: 1000, type: !28)
!3594 = !DILocalVariable(name: "s", arg: 2, scope: !3591, file: !161, line: 1000, type: !5)
!3595 = !DILocalVariable(name: "arg", arg: 3, scope: !3591, file: !161, line: 1000, type: !54)
!3596 = !DILocalVariable(name: "options", scope: !3591, file: !161, line: 1002, type: !168)
!3597 = !DILocation(line: 187, column: 26, scope: !3347, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 1003, column: 13, scope: !3591)
!3599 = !DILocation(line: 1000, column: 29, scope: !3591)
!3600 = !DILocation(line: 1000, column: 51, scope: !3591)
!3601 = !DILocation(line: 1000, column: 66, scope: !3591)
!3602 = !DILocation(line: 1002, column: 3, scope: !3591)
!3603 = !DILocation(line: 185, column: 48, scope: !3347, inlinedAt: !3598)
!3604 = !DILocation(line: 187, column: 3, scope: !3347, inlinedAt: !3598)
!3605 = !DILocation(line: 188, column: 13, scope: !3364, inlinedAt: !3598)
!3606 = !DILocation(line: 188, column: 7, scope: !3347, inlinedAt: !3598)
!3607 = !DILocation(line: 189, column: 5, scope: !3364, inlinedAt: !3598)
!3608 = !{!3609}
!3609 = distinct !{!3609, !3610, !"quoting_options_from_style: argument 0"}
!3610 = distinct !{!3610, !"quoting_options_from_style"}
!3611 = !DILocation(line: 191, column: 10, scope: !3347, inlinedAt: !3598)
!3612 = !DILocation(line: 192, column: 1, scope: !3347, inlinedAt: !3598)
!3613 = !DILocation(line: 1003, column: 13, scope: !3591)
!3614 = !DILocation(line: 1002, column: 26, scope: !3591)
!3615 = !DILocation(line: 144, column: 43, scope: !1930, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 1004, column: 3, scope: !3591)
!3617 = !DILocation(line: 144, column: 51, scope: !1930, inlinedAt: !3616)
!3618 = !DILocation(line: 144, column: 58, scope: !1930, inlinedAt: !3616)
!3619 = !DILocation(line: 146, column: 17, scope: !1930, inlinedAt: !3616)
!3620 = !DILocation(line: 148, column: 57, scope: !1948, inlinedAt: !3616)
!3621 = !DILocation(line: 147, column: 17, scope: !1930, inlinedAt: !3616)
!3622 = !DILocation(line: 149, column: 7, scope: !1930, inlinedAt: !3616)
!3623 = !DILocation(line: 150, column: 12, scope: !1930, inlinedAt: !3616)
!3624 = !DILocation(line: 151, column: 6, scope: !1930, inlinedAt: !3616)
!3625 = !DILocation(line: 1005, column: 10, scope: !3591)
!3626 = !DILocation(line: 1006, column: 1, scope: !3591)
!3627 = !DILocation(line: 1005, column: 3, scope: !3591)
!3628 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !161, file: !161, line: 1009, type: !3629, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!43, !28, !54, !54, !54}
!3631 = !{!3632, !3633, !3634, !3635}
!3632 = !DILocalVariable(name: "n", arg: 1, scope: !3628, file: !161, line: 1009, type: !28)
!3633 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3628, file: !161, line: 1009, type: !54)
!3634 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3628, file: !161, line: 1010, type: !54)
!3635 = !DILocalVariable(name: "arg", arg: 4, scope: !3628, file: !161, line: 1010, type: !54)
!3636 = !DILocation(line: 1009, column: 24, scope: !3628)
!3637 = !DILocation(line: 1009, column: 39, scope: !3628)
!3638 = !DILocation(line: 1010, column: 32, scope: !3628)
!3639 = !DILocation(line: 1010, column: 57, scope: !3628)
!3640 = !DILocalVariable(name: "n", arg: 1, scope: !3641, file: !161, line: 1017, type: !28)
!3641 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !161, file: !161, line: 1017, type: !3642, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!43, !28, !54, !54, !54, !46}
!3644 = !{!3640, !3645, !3646, !3647, !3648, !3649}
!3645 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3641, file: !161, line: 1017, type: !54)
!3646 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3641, file: !161, line: 1018, type: !54)
!3647 = !DILocalVariable(name: "arg", arg: 4, scope: !3641, file: !161, line: 1019, type: !54)
!3648 = !DILocalVariable(name: "argsize", arg: 5, scope: !3641, file: !161, line: 1019, type: !46)
!3649 = !DILocalVariable(name: "o", scope: !3641, file: !161, line: 1021, type: !168)
!3650 = !DILocation(line: 1017, column: 28, scope: !3641, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 1012, column: 10, scope: !3628)
!3652 = !DILocation(line: 1017, column: 43, scope: !3641, inlinedAt: !3651)
!3653 = !DILocation(line: 1018, column: 36, scope: !3641, inlinedAt: !3651)
!3654 = !DILocation(line: 1019, column: 36, scope: !3641, inlinedAt: !3651)
!3655 = !DILocation(line: 1019, column: 48, scope: !3641, inlinedAt: !3651)
!3656 = !DILocation(line: 1021, column: 3, scope: !3641, inlinedAt: !3651)
!3657 = !DILocation(line: 1021, column: 30, scope: !3641, inlinedAt: !3651)
!3658 = !DILocation(line: 1021, column: 26, scope: !3641, inlinedAt: !3651)
!3659 = !DILocation(line: 171, column: 45, scope: !1980, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 1022, column: 3, scope: !3641, inlinedAt: !3651)
!3661 = !DILocation(line: 172, column: 33, scope: !1980, inlinedAt: !3660)
!3662 = !DILocation(line: 172, column: 57, scope: !1980, inlinedAt: !3660)
!3663 = !DILocation(line: 176, column: 6, scope: !1980, inlinedAt: !3660)
!3664 = !DILocation(line: 176, column: 12, scope: !1980, inlinedAt: !3660)
!3665 = !DILocation(line: 177, column: 8, scope: !1996, inlinedAt: !3660)
!3666 = !DILocation(line: 177, column: 23, scope: !1998, inlinedAt: !3660)
!3667 = !DILocation(line: 177, column: 19, scope: !1996, inlinedAt: !3660)
!3668 = !DILocation(line: 178, column: 5, scope: !1996, inlinedAt: !3660)
!3669 = !DILocation(line: 179, column: 6, scope: !1980, inlinedAt: !3660)
!3670 = !DILocation(line: 179, column: 17, scope: !1980, inlinedAt: !3660)
!3671 = !DILocation(line: 180, column: 6, scope: !1980, inlinedAt: !3660)
!3672 = !DILocation(line: 180, column: 18, scope: !1980, inlinedAt: !3660)
!3673 = !DILocation(line: 1023, column: 10, scope: !3641, inlinedAt: !3651)
!3674 = !DILocation(line: 1024, column: 1, scope: !3641, inlinedAt: !3651)
!3675 = !DILocation(line: 1012, column: 3, scope: !3628)
!3676 = !DILocation(line: 1017, column: 28, scope: !3641)
!3677 = !DILocation(line: 1017, column: 43, scope: !3641)
!3678 = !DILocation(line: 1018, column: 36, scope: !3641)
!3679 = !DILocation(line: 1019, column: 36, scope: !3641)
!3680 = !DILocation(line: 1019, column: 48, scope: !3641)
!3681 = !DILocation(line: 1021, column: 3, scope: !3641)
!3682 = !DILocation(line: 1021, column: 30, scope: !3641)
!3683 = !DILocation(line: 1021, column: 26, scope: !3641)
!3684 = !DILocation(line: 171, column: 45, scope: !1980, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 1022, column: 3, scope: !3641)
!3686 = !DILocation(line: 172, column: 33, scope: !1980, inlinedAt: !3685)
!3687 = !DILocation(line: 172, column: 57, scope: !1980, inlinedAt: !3685)
!3688 = !DILocation(line: 176, column: 6, scope: !1980, inlinedAt: !3685)
!3689 = !DILocation(line: 176, column: 12, scope: !1980, inlinedAt: !3685)
!3690 = !DILocation(line: 177, column: 8, scope: !1996, inlinedAt: !3685)
!3691 = !DILocation(line: 177, column: 23, scope: !1998, inlinedAt: !3685)
!3692 = !DILocation(line: 177, column: 19, scope: !1996, inlinedAt: !3685)
!3693 = !DILocation(line: 178, column: 5, scope: !1996, inlinedAt: !3685)
!3694 = !DILocation(line: 179, column: 6, scope: !1980, inlinedAt: !3685)
!3695 = !DILocation(line: 179, column: 17, scope: !1980, inlinedAt: !3685)
!3696 = !DILocation(line: 180, column: 6, scope: !1980, inlinedAt: !3685)
!3697 = !DILocation(line: 180, column: 18, scope: !1980, inlinedAt: !3685)
!3698 = !DILocation(line: 1023, column: 10, scope: !3641)
!3699 = !DILocation(line: 1024, column: 1, scope: !3641)
!3700 = !DILocation(line: 1023, column: 3, scope: !3641)
!3701 = distinct !DISubprogram(name: "quotearg_custom", scope: !161, file: !161, line: 1027, type: !3702, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!43, !54, !54, !54}
!3704 = !{!3705, !3706, !3707}
!3705 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3701, file: !161, line: 1027, type: !54)
!3706 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3701, file: !161, line: 1027, type: !54)
!3707 = !DILocalVariable(name: "arg", arg: 3, scope: !3701, file: !161, line: 1028, type: !54)
!3708 = !DILocation(line: 1027, column: 30, scope: !3701)
!3709 = !DILocation(line: 1027, column: 54, scope: !3701)
!3710 = !DILocation(line: 1028, column: 30, scope: !3701)
!3711 = !DILocation(line: 1009, column: 24, scope: !3628, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1030, column: 10, scope: !3701)
!3713 = !DILocation(line: 1009, column: 39, scope: !3628, inlinedAt: !3712)
!3714 = !DILocation(line: 1010, column: 32, scope: !3628, inlinedAt: !3712)
!3715 = !DILocation(line: 1010, column: 57, scope: !3628, inlinedAt: !3712)
!3716 = !DILocation(line: 1017, column: 28, scope: !3641, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 1012, column: 10, scope: !3628, inlinedAt: !3712)
!3718 = !DILocation(line: 1017, column: 43, scope: !3641, inlinedAt: !3717)
!3719 = !DILocation(line: 1018, column: 36, scope: !3641, inlinedAt: !3717)
!3720 = !DILocation(line: 1019, column: 36, scope: !3641, inlinedAt: !3717)
!3721 = !DILocation(line: 1019, column: 48, scope: !3641, inlinedAt: !3717)
!3722 = !DILocation(line: 1021, column: 3, scope: !3641, inlinedAt: !3717)
!3723 = !DILocation(line: 1021, column: 30, scope: !3641, inlinedAt: !3717)
!3724 = !DILocation(line: 1021, column: 26, scope: !3641, inlinedAt: !3717)
!3725 = !DILocation(line: 171, column: 45, scope: !1980, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 1022, column: 3, scope: !3641, inlinedAt: !3717)
!3727 = !DILocation(line: 172, column: 33, scope: !1980, inlinedAt: !3726)
!3728 = !DILocation(line: 172, column: 57, scope: !1980, inlinedAt: !3726)
!3729 = !DILocation(line: 176, column: 6, scope: !1980, inlinedAt: !3726)
!3730 = !DILocation(line: 176, column: 12, scope: !1980, inlinedAt: !3726)
!3731 = !DILocation(line: 177, column: 8, scope: !1996, inlinedAt: !3726)
!3732 = !DILocation(line: 177, column: 23, scope: !1998, inlinedAt: !3726)
!3733 = !DILocation(line: 177, column: 19, scope: !1996, inlinedAt: !3726)
!3734 = !DILocation(line: 178, column: 5, scope: !1996, inlinedAt: !3726)
!3735 = !DILocation(line: 179, column: 6, scope: !1980, inlinedAt: !3726)
!3736 = !DILocation(line: 179, column: 17, scope: !1980, inlinedAt: !3726)
!3737 = !DILocation(line: 180, column: 6, scope: !1980, inlinedAt: !3726)
!3738 = !DILocation(line: 180, column: 18, scope: !1980, inlinedAt: !3726)
!3739 = !DILocation(line: 1023, column: 10, scope: !3641, inlinedAt: !3717)
!3740 = !DILocation(line: 1024, column: 1, scope: !3641, inlinedAt: !3717)
!3741 = !DILocation(line: 1030, column: 3, scope: !3701)
!3742 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !161, file: !161, line: 1034, type: !3743, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!43, !54, !54, !54, !46}
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3742, file: !161, line: 1034, type: !54)
!3747 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3742, file: !161, line: 1034, type: !54)
!3748 = !DILocalVariable(name: "arg", arg: 3, scope: !3742, file: !161, line: 1035, type: !54)
!3749 = !DILocalVariable(name: "argsize", arg: 4, scope: !3742, file: !161, line: 1035, type: !46)
!3750 = !DILocation(line: 1034, column: 34, scope: !3742)
!3751 = !DILocation(line: 1034, column: 58, scope: !3742)
!3752 = !DILocation(line: 1035, column: 34, scope: !3742)
!3753 = !DILocation(line: 1035, column: 46, scope: !3742)
!3754 = !DILocation(line: 1017, column: 28, scope: !3641, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 1037, column: 10, scope: !3742)
!3756 = !DILocation(line: 1017, column: 43, scope: !3641, inlinedAt: !3755)
!3757 = !DILocation(line: 1018, column: 36, scope: !3641, inlinedAt: !3755)
!3758 = !DILocation(line: 1019, column: 36, scope: !3641, inlinedAt: !3755)
!3759 = !DILocation(line: 1019, column: 48, scope: !3641, inlinedAt: !3755)
!3760 = !DILocation(line: 1021, column: 3, scope: !3641, inlinedAt: !3755)
!3761 = !DILocation(line: 1021, column: 30, scope: !3641, inlinedAt: !3755)
!3762 = !DILocation(line: 1021, column: 26, scope: !3641, inlinedAt: !3755)
!3763 = !DILocation(line: 171, column: 45, scope: !1980, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 1022, column: 3, scope: !3641, inlinedAt: !3755)
!3765 = !DILocation(line: 172, column: 33, scope: !1980, inlinedAt: !3764)
!3766 = !DILocation(line: 172, column: 57, scope: !1980, inlinedAt: !3764)
!3767 = !DILocation(line: 176, column: 6, scope: !1980, inlinedAt: !3764)
!3768 = !DILocation(line: 176, column: 12, scope: !1980, inlinedAt: !3764)
!3769 = !DILocation(line: 177, column: 8, scope: !1996, inlinedAt: !3764)
!3770 = !DILocation(line: 177, column: 23, scope: !1998, inlinedAt: !3764)
!3771 = !DILocation(line: 177, column: 19, scope: !1996, inlinedAt: !3764)
!3772 = !DILocation(line: 178, column: 5, scope: !1996, inlinedAt: !3764)
!3773 = !DILocation(line: 179, column: 6, scope: !1980, inlinedAt: !3764)
!3774 = !DILocation(line: 179, column: 17, scope: !1980, inlinedAt: !3764)
!3775 = !DILocation(line: 180, column: 6, scope: !1980, inlinedAt: !3764)
!3776 = !DILocation(line: 180, column: 18, scope: !1980, inlinedAt: !3764)
!3777 = !DILocation(line: 1023, column: 10, scope: !3641, inlinedAt: !3755)
!3778 = !DILocation(line: 1024, column: 1, scope: !3641, inlinedAt: !3755)
!3779 = !DILocation(line: 1037, column: 3, scope: !3742)
!3780 = distinct !DISubprogram(name: "quote_n_mem", scope: !161, file: !161, line: 1052, type: !3781, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!54, !28, !54, !46}
!3783 = !{!3784, !3785, !3786}
!3784 = !DILocalVariable(name: "n", arg: 1, scope: !3780, file: !161, line: 1052, type: !28)
!3785 = !DILocalVariable(name: "arg", arg: 2, scope: !3780, file: !161, line: 1052, type: !54)
!3786 = !DILocalVariable(name: "argsize", arg: 3, scope: !3780, file: !161, line: 1052, type: !46)
!3787 = !DILocation(line: 1052, column: 18, scope: !3780)
!3788 = !DILocation(line: 1052, column: 33, scope: !3780)
!3789 = !DILocation(line: 1052, column: 45, scope: !3780)
!3790 = !DILocation(line: 1054, column: 10, scope: !3780)
!3791 = !DILocation(line: 1054, column: 3, scope: !3780)
!3792 = distinct !DISubprogram(name: "quote_mem", scope: !161, file: !161, line: 1058, type: !3793, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!54, !54, !46}
!3795 = !{!3796, !3797}
!3796 = !DILocalVariable(name: "arg", arg: 1, scope: !3792, file: !161, line: 1058, type: !54)
!3797 = !DILocalVariable(name: "argsize", arg: 2, scope: !3792, file: !161, line: 1058, type: !46)
!3798 = !DILocation(line: 1058, column: 24, scope: !3792)
!3799 = !DILocation(line: 1058, column: 36, scope: !3792)
!3800 = !DILocation(line: 1052, column: 18, scope: !3780, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 1060, column: 10, scope: !3792)
!3802 = !DILocation(line: 1052, column: 33, scope: !3780, inlinedAt: !3801)
!3803 = !DILocation(line: 1052, column: 45, scope: !3780, inlinedAt: !3801)
!3804 = !DILocation(line: 1054, column: 10, scope: !3780, inlinedAt: !3801)
!3805 = !DILocation(line: 1060, column: 3, scope: !3792)
!3806 = distinct !DISubprogram(name: "quote_n", scope: !161, file: !161, line: 1064, type: !3807, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!54, !28, !54}
!3809 = !{!3810, !3811}
!3810 = !DILocalVariable(name: "n", arg: 1, scope: !3806, file: !161, line: 1064, type: !28)
!3811 = !DILocalVariable(name: "arg", arg: 2, scope: !3806, file: !161, line: 1064, type: !54)
!3812 = !DILocation(line: 1064, column: 14, scope: !3806)
!3813 = !DILocation(line: 1064, column: 29, scope: !3806)
!3814 = !DILocation(line: 1052, column: 18, scope: !3780, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 1066, column: 10, scope: !3806)
!3816 = !DILocation(line: 1052, column: 33, scope: !3780, inlinedAt: !3815)
!3817 = !DILocation(line: 1052, column: 45, scope: !3780, inlinedAt: !3815)
!3818 = !DILocation(line: 1054, column: 10, scope: !3780, inlinedAt: !3815)
!3819 = !DILocation(line: 1066, column: 3, scope: !3806)
!3820 = distinct !DISubprogram(name: "quote", scope: !161, file: !161, line: 1070, type: !3821, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !133, variables: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!54, !54}
!3823 = !{!3824}
!3824 = !DILocalVariable(name: "arg", arg: 1, scope: !3820, file: !161, line: 1070, type: !54)
!3825 = !DILocation(line: 1070, column: 20, scope: !3820)
!3826 = !DILocation(line: 1064, column: 14, scope: !3806, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 1072, column: 10, scope: !3820)
!3828 = !DILocation(line: 1064, column: 29, scope: !3806, inlinedAt: !3827)
!3829 = !DILocation(line: 1052, column: 18, scope: !3780, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 1066, column: 10, scope: !3806, inlinedAt: !3827)
!3831 = !DILocation(line: 1052, column: 33, scope: !3780, inlinedAt: !3830)
!3832 = !DILocation(line: 1052, column: 45, scope: !3780, inlinedAt: !3830)
!3833 = !DILocation(line: 1054, column: 10, scope: !3780, inlinedAt: !3830)
!3834 = !DILocation(line: 1072, column: 3, scope: !3820)
!3835 = distinct !DISubprogram(name: "savewd_init", scope: !20, file: !20, line: 79, type: !3836, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3839)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!3839 = !{!3840}
!3840 = !DILocalVariable(name: "wd", arg: 1, scope: !3835, file: !20, line: 79, type: !3838)
!3841 = !DILocation(line: 79, column: 29, scope: !3835)
!3842 = !DILocation(line: 81, column: 7, scope: !3835)
!3843 = !DILocation(line: 81, column: 13, scope: !3835)
!3844 = !DILocation(line: 82, column: 1, scope: !3835)
!3845 = distinct !DISubprogram(name: "savewd_errno", scope: !20, file: !20, line: 124, type: !3846, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3850)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!28, !3848}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "wd", arg: 1, scope: !3845, file: !20, line: 124, type: !3848)
!3852 = !DILocation(line: 124, column: 36, scope: !3845)
!3853 = !DILocation(line: 126, column: 15, scope: !3845)
!3854 = !DILocation(line: 126, column: 21, scope: !3845)
!3855 = !DILocation(line: 126, column: 11, scope: !3845)
!3856 = !DILocation(line: 126, column: 46, scope: !3857)
!3857 = !DILexicalBlockFile(scope: !3845, file: !20, discriminator: 1)
!3858 = !DILocation(line: 126, column: 11, scope: !3857)
!3859 = !DILocation(line: 126, column: 11, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3845, file: !20, discriminator: 3)
!3861 = !DILocation(line: 126, column: 3, scope: !3860)
!3862 = distinct !DISubprogram(name: "savewd_chdir", scope: !3863, file: !3863, line: 98, type: !3864, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3866)
!3863 = !DIFile(filename: "lib/savewd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!28, !3838, !54, !28, !100}
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873}
!3867 = !DILocalVariable(name: "wd", arg: 1, scope: !3862, file: !3863, line: 98, type: !3838)
!3868 = !DILocalVariable(name: "dir", arg: 2, scope: !3862, file: !3863, line: 98, type: !54)
!3869 = !DILocalVariable(name: "options", arg: 3, scope: !3862, file: !3863, line: 98, type: !28)
!3870 = !DILocalVariable(name: "open_result", arg: 4, scope: !3862, file: !3863, line: 99, type: !100)
!3871 = !DILocalVariable(name: "fd", scope: !3862, file: !3863, line: 101, type: !28)
!3872 = !DILocalVariable(name: "result", scope: !3862, file: !3863, line: 102, type: !28)
!3873 = !DILocalVariable(name: "e", scope: !3874, file: !3863, line: 158, type: !28)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !3863, line: 157, column: 5)
!3875 = distinct !DILexicalBlock(scope: !3862, file: !3863, line: 156, column: 7)
!3876 = !DILocation(line: 98, column: 30, scope: !3862)
!3877 = !DILocation(line: 98, column: 46, scope: !3862)
!3878 = !DILocation(line: 98, column: 55, scope: !3862)
!3879 = !DILocation(line: 99, column: 19, scope: !3862)
!3880 = !DILocation(line: 101, column: 7, scope: !3862)
!3881 = !DILocation(line: 102, column: 7, scope: !3862)
!3882 = !DILocation(line: 106, column: 7, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3862, file: !3863, line: 106, column: 7)
!3884 = !DILocation(line: 107, column: 7, scope: !3883)
!3885 = !DILocation(line: 107, column: 19, scope: !3886)
!3886 = !DILexicalBlockFile(scope: !3883, file: !3863, discriminator: 1)
!3887 = !DILocation(line: 111, column: 22, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3883, file: !3863, line: 108, column: 5)
!3889 = !DILocation(line: 111, column: 19, scope: !3888)
!3890 = !DILocation(line: 109, column: 12, scope: !3888)
!3891 = !DILocation(line: 113, column: 11, scope: !3888)
!3892 = !DILocation(line: 115, column: 26, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !3863, line: 114, column: 9)
!3894 = distinct !DILexicalBlock(scope: !3888, file: !3863, line: 113, column: 11)
!3895 = !DILocation(line: 116, column: 28, scope: !3893)
!3896 = !DILocation(line: 116, column: 11, scope: !3893)
!3897 = !DILocation(line: 116, column: 26, scope: !3893)
!3898 = !DILocation(line: 117, column: 9, scope: !3893)
!3899 = !DILocation(line: 119, column: 14, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3888, file: !3863, line: 119, column: 11)
!3901 = !DILocation(line: 119, column: 18, scope: !3900)
!3902 = !DILocation(line: 119, column: 21, scope: !3903)
!3903 = !DILexicalBlockFile(scope: !3900, file: !3863, discriminator: 1)
!3904 = !DILocation(line: 119, column: 27, scope: !3903)
!3905 = !DILocation(line: 123, column: 44, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3907, file: !3863, discriminator: 2)
!3907 = distinct !DILexicalBlock(scope: !3862, file: !3863, line: 123, column: 7)
!3908 = !DILocation(line: 123, column: 33, scope: !3909)
!3909 = !DILexicalBlockFile(scope: !3907, file: !3863, discriminator: 1)
!3910 = !DILocalVariable(name: "wd", arg: 1, scope: !3911, file: !3863, line: 43, type: !3838)
!3911 = distinct !DISubprogram(name: "savewd_save", scope: !3863, file: !3863, line: 43, type: !3912, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!116, !3838}
!3914 = !{!3910, !3915}
!3915 = !DILocalVariable(name: "fd", scope: !3916, file: !3863, line: 50, type: !28)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !3863, line: 49, column: 7)
!3917 = distinct !DILexicalBlock(scope: !3911, file: !3863, line: 46, column: 5)
!3918 = !DILocation(line: 43, column: 29, scope: !3911, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 125, column: 11, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3921, file: !3863, line: 125, column: 11)
!3921 = distinct !DILexicalBlock(scope: !3907, file: !3863, line: 124, column: 5)
!3922 = !DILocation(line: 45, column: 15, scope: !3911, inlinedAt: !3919)
!3923 = !DILocation(line: 45, column: 3, scope: !3911, inlinedAt: !3919)
!3924 = !DILocation(line: 50, column: 18, scope: !3916, inlinedAt: !3919)
!3925 = !DILocation(line: 50, column: 13, scope: !3916, inlinedAt: !3919)
!3926 = !DILocation(line: 51, column: 15, scope: !3927, inlinedAt: !3919)
!3927 = distinct !DILexicalBlock(scope: !3916, file: !3863, line: 51, column: 13)
!3928 = !DILocation(line: 51, column: 13, scope: !3916, inlinedAt: !3919)
!3929 = !DILocation(line: 53, column: 23, scope: !3930, inlinedAt: !3919)
!3930 = distinct !DILexicalBlock(scope: !3927, file: !3863, line: 52, column: 11)
!3931 = !DILocation(line: 54, column: 21, scope: !3930, inlinedAt: !3919)
!3932 = !DILocation(line: 54, column: 24, scope: !3930, inlinedAt: !3919)
!3933 = !DILocation(line: 57, column: 13, scope: !3934, inlinedAt: !3919)
!3934 = distinct !DILexicalBlock(scope: !3916, file: !3863, line: 57, column: 13)
!3935 = !DILocation(line: 57, column: 29, scope: !3934, inlinedAt: !3919)
!3936 = !DILocation(line: 59, column: 23, scope: !3937, inlinedAt: !3919)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !3863, line: 58, column: 11)
!3938 = !DILocation(line: 60, column: 21, scope: !3937, inlinedAt: !3919)
!3939 = !DILocation(line: 60, column: 28, scope: !3937, inlinedAt: !3919)
!3940 = !DILocation(line: 64, column: 17, scope: !3917, inlinedAt: !3919)
!3941 = !DILocation(line: 65, column: 15, scope: !3917, inlinedAt: !3919)
!3942 = !DILocation(line: 65, column: 21, scope: !3917, inlinedAt: !3919)
!3943 = !DILocation(line: 68, column: 11, scope: !3917, inlinedAt: !3919)
!3944 = !DILocation(line: 73, column: 27, scope: !3945, inlinedAt: !3919)
!3945 = distinct !DILexicalBlock(scope: !3946, file: !3863, line: 69, column: 9)
!3946 = distinct !DILexicalBlock(scope: !3917, file: !3863, line: 68, column: 11)
!3947 = !DILocation(line: 73, column: 25, scope: !3945, inlinedAt: !3919)
!3948 = !DILocation(line: 74, column: 29, scope: !3949, inlinedAt: !3919)
!3949 = distinct !DILexicalBlock(scope: !3945, file: !3863, line: 74, column: 15)
!3950 = !DILocation(line: 74, column: 15, scope: !3945, inlinedAt: !3919)
!3951 = !DILocation(line: 76, column: 21, scope: !3952, inlinedAt: !3919)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !3863, line: 76, column: 19)
!3953 = distinct !DILexicalBlock(scope: !3949, file: !3863, line: 75, column: 13)
!3954 = !DILocation(line: 76, column: 19, scope: !3953, inlinedAt: !3919)
!3955 = !DILocation(line: 78, column: 25, scope: !3953, inlinedAt: !3919)
!3956 = !DILocation(line: 79, column: 32, scope: !3953, inlinedAt: !3919)
!3957 = !DILocation(line: 79, column: 30, scope: !3953, inlinedAt: !3919)
!3958 = !DILocation(line: 80, column: 13, scope: !3953, inlinedAt: !3919)
!3959 = !DILocation(line: 91, column: 7, scope: !3960, inlinedAt: !3919)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !3863, line: 91, column: 7)
!3961 = distinct !DILexicalBlock(scope: !3917, file: !3863, line: 91, column: 7)
!3962 = !DILocation(line: 132, column: 24, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3920, file: !3863, line: 131, column: 9)
!3964 = !DILocation(line: 132, column: 21, scope: !3963)
!3965 = !DILocation(line: 132, column: 30, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3963, file: !3863, discriminator: 1)
!3967 = !DILocation(line: 132, column: 21, scope: !3966)
!3968 = !DILocation(line: 132, column: 44, scope: !3969)
!3969 = !DILexicalBlockFile(scope: !3963, file: !3863, discriminator: 2)
!3970 = !DILocation(line: 132, column: 21, scope: !3969)
!3971 = !DILocation(line: 132, column: 21, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3963, file: !3863, discriminator: 3)
!3973 = !DILocation(line: 134, column: 22, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3963, file: !3863, line: 134, column: 15)
!3975 = !DILocation(line: 134, column: 15, scope: !3963)
!3976 = !DILocation(line: 135, column: 25, scope: !3974)
!3977 = !DILocation(line: 135, column: 13, scope: !3974)
!3978 = !DILocation(line: 138, column: 27, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3974, file: !3863, line: 136, column: 15)
!3980 = !DILocation(line: 139, column: 17, scope: !3979)
!3981 = !DILocation(line: 147, column: 17, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !3863, line: 147, column: 17)
!3983 = distinct !DILexicalBlock(scope: !3979, file: !3863, line: 147, column: 17)
!3984 = !DILocation(line: 147, column: 17, scope: !3983)
!3985 = !DILocation(line: 147, column: 17, scope: !3986)
!3986 = !DILexicalBlockFile(scope: !3982, file: !3863, discriminator: 2)
!3987 = !DILocation(line: 151, column: 17, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !3863, line: 151, column: 17)
!3989 = distinct !DILexicalBlock(scope: !3979, file: !3863, line: 151, column: 17)
!3990 = !DILocation(line: 156, column: 9, scope: !3875)
!3991 = !DILocation(line: 156, column: 20, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3875, file: !3863, discriminator: 1)
!3993 = !DILocation(line: 156, column: 15, scope: !3875)
!3994 = !DILocation(line: 158, column: 15, scope: !3874)
!3995 = !DILocation(line: 158, column: 11, scope: !3874)
!3996 = !DILocation(line: 159, column: 7, scope: !3874)
!3997 = !DILocation(line: 160, column: 13, scope: !3874)
!3998 = !DILocation(line: 161, column: 5, scope: !3874)
!3999 = !DILocation(line: 163, column: 3, scope: !3862)
!4000 = distinct !DISubprogram(name: "savewd_restore", scope: !3863, file: !3863, line: 167, type: !4001, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4003)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!28, !3838, !28}
!4003 = !{!4004, !4005, !4006, !4010, !4012}
!4004 = !DILocalVariable(name: "wd", arg: 1, scope: !4000, file: !3863, line: 167, type: !3838)
!4005 = !DILocalVariable(name: "status", arg: 2, scope: !4000, file: !3863, line: 167, type: !28)
!4006 = !DILocalVariable(name: "chdir_errno", scope: !4007, file: !3863, line: 186, type: !28)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !3863, line: 185, column: 9)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3863, line: 179, column: 11)
!4009 = distinct !DILexicalBlock(scope: !4000, file: !3863, line: 170, column: 5)
!4010 = !DILocalVariable(name: "child", scope: !4011, file: !3863, line: 201, type: !31)
!4011 = distinct !DILexicalBlock(scope: !4009, file: !3863, line: 200, column: 7)
!4012 = !DILocalVariable(name: "child_status", scope: !4013, file: !3863, line: 206, type: !28)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !3863, line: 205, column: 11)
!4014 = distinct !DILexicalBlock(scope: !4011, file: !3863, line: 204, column: 13)
!4015 = !DILocation(line: 167, column: 32, scope: !4000)
!4016 = !DILocation(line: 167, column: 40, scope: !4000)
!4017 = !DILocation(line: 169, column: 15, scope: !4000)
!4018 = !DILocation(line: 169, column: 3, scope: !4000)
!4019 = !DILocation(line: 194, column: 7, scope: !4009)
!4020 = !DILocation(line: 179, column: 27, scope: !4008)
!4021 = !DILocation(line: 179, column: 11, scope: !4008)
!4022 = !DILocation(line: 179, column: 31, scope: !4008)
!4023 = !DILocation(line: 179, column: 11, scope: !4009)
!4024 = !DILocation(line: 181, column: 21, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4008, file: !3863, line: 180, column: 9)
!4026 = !DILocation(line: 182, column: 11, scope: !4025)
!4027 = !DILocation(line: 186, column: 29, scope: !4007)
!4028 = !DILocation(line: 186, column: 15, scope: !4007)
!4029 = !DILocation(line: 187, column: 26, scope: !4007)
!4030 = !DILocation(line: 187, column: 11, scope: !4007)
!4031 = !DILocation(line: 188, column: 21, scope: !4007)
!4032 = !DILocation(line: 189, column: 26, scope: !4007)
!4033 = !DILocation(line: 179, column: 34, scope: !4034)
!4034 = !DILexicalBlockFile(scope: !4008, file: !3863, discriminator: 1)
!4035 = !DILocation(line: 194, column: 23, scope: !4009)
!4036 = !DILocation(line: 194, column: 13, scope: !4009)
!4037 = !DILocation(line: 195, column: 7, scope: !4009)
!4038 = !DILocation(line: 201, column: 31, scope: !4011)
!4039 = !DILocation(line: 201, column: 15, scope: !4011)
!4040 = !DILocation(line: 202, column: 19, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4011, file: !3863, line: 202, column: 13)
!4042 = !DILocation(line: 202, column: 13, scope: !4011)
!4043 = !DILocation(line: 203, column: 11, scope: !4041)
!4044 = !DILocation(line: 204, column: 15, scope: !4014)
!4045 = !DILocation(line: 204, column: 13, scope: !4011)
!4046 = !DILocation(line: 206, column: 13, scope: !4013)
!4047 = !DILocation(line: 207, column: 13, scope: !4013)
!4048 = !DILocation(line: 206, column: 17, scope: !4013)
!4049 = !DILocation(line: 207, column: 20, scope: !4050)
!4050 = !DILexicalBlockFile(scope: !4013, file: !3863, discriminator: 1)
!4051 = !DILocation(line: 207, column: 54, scope: !4050)
!4052 = !DILocation(line: 207, column: 13, scope: !4050)
!4053 = !DILocation(line: 208, column: 15, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !3863, line: 208, column: 15)
!4055 = distinct !DILexicalBlock(scope: !4013, file: !3863, line: 208, column: 15)
!4056 = !DILocation(line: 208, column: 15, scope: !4055)
!4057 = distinct !{!4057, !4047, !4058}
!4058 = !DILocation(line: 208, column: 15, scope: !4013)
!4059 = !DILocation(line: 208, column: 15, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4054, file: !3863, discriminator: 2)
!4061 = !DILocation(line: 209, column: 27, scope: !4013)
!4062 = !DILocation(line: 210, column: 19, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4013, file: !3863, line: 210, column: 17)
!4064 = !DILocation(line: 210, column: 17, scope: !4013)
!4065 = !DILocation(line: 211, column: 15, scope: !4063)
!4066 = !DILocation(line: 212, column: 20, scope: !4013)
!4067 = !DILocation(line: 213, column: 11, scope: !4014)
!4068 = !DILocation(line: 218, column: 7, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !3863, line: 218, column: 7)
!4070 = distinct !DILexicalBlock(scope: !4009, file: !3863, line: 218, column: 7)
!4071 = !DILocation(line: 222, column: 1, scope: !4000)
!4072 = distinct !DISubprogram(name: "savewd_finish", scope: !3863, file: !3863, line: 225, type: !3836, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4073)
!4073 = !{!4074}
!4074 = !DILocalVariable(name: "wd", arg: 1, scope: !4072, file: !3863, line: 225, type: !3838)
!4075 = !DILocation(line: 225, column: 31, scope: !4072)
!4076 = !DILocation(line: 227, column: 15, scope: !4072)
!4077 = !DILocation(line: 227, column: 3, scope: !4072)
!4078 = !DILocation(line: 235, column: 22, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4072, file: !3863, line: 228, column: 5)
!4080 = !DILocation(line: 235, column: 7, scope: !4079)
!4081 = !DILocation(line: 236, column: 7, scope: !4079)
!4082 = !DILocation(line: 239, column: 7, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !3863, line: 239, column: 7)
!4084 = distinct !DILexicalBlock(scope: !4079, file: !3863, line: 239, column: 7)
!4085 = !DILocation(line: 239, column: 7, scope: !4084)
!4086 = !DILocation(line: 239, column: 7, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !4083, file: !3863, discriminator: 2)
!4088 = !DILocation(line: 243, column: 7, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !3863, line: 243, column: 7)
!4090 = distinct !DILexicalBlock(scope: !4079, file: !3863, line: 243, column: 7)
!4091 = !DILocation(line: 246, column: 13, scope: !4072)
!4092 = !DILocation(line: 247, column: 1, scope: !4072)
!4093 = distinct !DISubprogram(name: "savewd_process_files", scope: !3863, file: !3863, line: 266, type: !4094, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4099)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!28, !28, !780, !4096, !45}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!28, !43, !3838, !45}
!4099 = !{!4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4114, !4117}
!4100 = !DILocalVariable(name: "n_files", arg: 1, scope: !4093, file: !3863, line: 266, type: !28)
!4101 = !DILocalVariable(name: "file", arg: 2, scope: !4093, file: !3863, line: 266, type: !780)
!4102 = !DILocalVariable(name: "act", arg: 3, scope: !4093, file: !3863, line: 267, type: !4096)
!4103 = !DILocalVariable(name: "options", arg: 4, scope: !4093, file: !3863, line: 268, type: !45)
!4104 = !DILocalVariable(name: "i", scope: !4093, file: !3863, line: 270, type: !28)
!4105 = !DILocalVariable(name: "last_relative", scope: !4093, file: !3863, line: 271, type: !28)
!4106 = !DILocalVariable(name: "exit_status", scope: !4093, file: !3863, line: 272, type: !28)
!4107 = !DILocalVariable(name: "wd", scope: !4093, file: !3863, line: 273, type: !632)
!4108 = !DILocalVariable(name: "s", scope: !4109, file: !3863, line: 284, type: !28)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !3863, line: 283, column: 9)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !3863, line: 282, column: 11)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !3863, line: 281, column: 5)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !3863, line: 280, column: 3)
!4113 = distinct !DILexicalBlock(scope: !4093, file: !3863, line: 280, column: 3)
!4114 = !DILocalVariable(name: "r", scope: !4115, file: !3863, line: 291, type: !28)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !3863, line: 290, column: 9)
!4116 = distinct !DILexicalBlock(scope: !4111, file: !3863, line: 289, column: 11)
!4117 = !DILocalVariable(name: "s", scope: !4118, file: !3863, line: 301, type: !28)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !3863, line: 300, column: 5)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !3863, line: 299, column: 3)
!4120 = distinct !DILexicalBlock(scope: !4093, file: !3863, line: 299, column: 3)
!4121 = !DILocation(line: 266, column: 27, scope: !4093)
!4122 = !DILocation(line: 266, column: 43, scope: !4093)
!4123 = !DILocation(line: 267, column: 29, scope: !4093)
!4124 = !DILocation(line: 268, column: 29, scope: !4093)
!4125 = !DILocation(line: 270, column: 7, scope: !4093)
!4126 = !DILocation(line: 272, column: 7, scope: !4093)
!4127 = !DILocation(line: 273, column: 3, scope: !4093)
!4128 = !DILocation(line: 273, column: 17, scope: !4093)
!4129 = !DILocation(line: 79, column: 29, scope: !3835, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 274, column: 3, scope: !4093)
!4131 = !DILocation(line: 81, column: 7, scope: !3835, inlinedAt: !4130)
!4132 = !DILocation(line: 81, column: 13, scope: !3835, inlinedAt: !4130)
!4133 = !DILocation(line: 276, column: 8, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4093, file: !3863, line: 276, column: 3)
!4135 = !DILocation(line: 276, column: 39, scope: !4136)
!4136 = !DILexicalBlockFile(scope: !4137, file: !3863, discriminator: 1)
!4137 = distinct !DILexicalBlock(scope: !4134, file: !3863, line: 276, column: 3)
!4138 = !DILocation(line: 276, column: 3, scope: !4139)
!4139 = !DILexicalBlockFile(scope: !4134, file: !3863, discriminator: 1)
!4140 = !DILocation(line: 277, column: 11, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4137, file: !3863, line: 277, column: 9)
!4142 = !DILocation(line: 277, column: 9, scope: !4137)
!4143 = distinct !{!4143, !4144, !4145}
!4144 = !DILocation(line: 276, column: 3, scope: !4134)
!4145 = !DILocation(line: 278, column: 7, scope: !4134)
!4146 = !DILocation(line: 280, column: 12, scope: !4147)
!4147 = !DILexicalBlockFile(scope: !4112, file: !3863, discriminator: 1)
!4148 = !DILocation(line: 280, column: 3, scope: !4149)
!4149 = !DILexicalBlockFile(scope: !4113, file: !3863, discriminator: 1)
!4150 = !DILocation(line: 262, column: 52, scope: !4151, inlinedAt: !4157)
!4151 = !DILexicalBlockFile(scope: !4152, file: !3863, discriminator: 1)
!4152 = distinct !DISubprogram(name: "savewd_delegating", scope: !3863, file: !3863, line: 260, type: !4153, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !628, variables: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!116, !3848}
!4155 = !{!4156}
!4156 = !DILocalVariable(name: "wd", arg: 1, scope: !4152, file: !3863, line: 260, type: !3848)
!4157 = distinct !DILocation(line: 282, column: 13, scope: !4110)
!4158 = !DILocation(line: 260, column: 41, scope: !4152, inlinedAt: !4157)
!4159 = !DILocation(line: 262, column: 20, scope: !4152, inlinedAt: !4157)
!4160 = !DILocation(line: 262, column: 42, scope: !4151, inlinedAt: !4157)
!4161 = !DILocation(line: 262, column: 37, scope: !4152, inlinedAt: !4157)
!4162 = !DILocation(line: 284, column: 24, scope: !4109)
!4163 = !DILocation(line: 284, column: 19, scope: !4109)
!4164 = !DILocation(line: 284, column: 15, scope: !4109)
!4165 = !DILocation(line: 285, column: 27, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4109, file: !3863, line: 285, column: 15)
!4167 = !DILocation(line: 285, column: 15, scope: !4109)
!4168 = !DILocation(line: 287, column: 9, scope: !4109)
!4169 = !DILocation(line: 289, column: 13, scope: !4116)
!4170 = !DILocation(line: 289, column: 11, scope: !4111)
!4171 = distinct !{!4171, !4172, !4173}
!4172 = !DILocation(line: 280, column: 3, scope: !4113)
!4173 = !DILocation(line: 295, column: 5, scope: !4113)
!4174 = !DILocation(line: 291, column: 19, scope: !4115)
!4175 = !DILocation(line: 291, column: 15, scope: !4115)
!4176 = !DILocation(line: 292, column: 27, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4115, file: !3863, line: 292, column: 15)
!4178 = !DILocation(line: 292, column: 15, scope: !4115)
!4179 = !DILocation(line: 294, column: 9, scope: !4115)
!4180 = !DILocation(line: 225, column: 31, scope: !4072, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 297, column: 3, scope: !4093)
!4182 = !DILocation(line: 227, column: 3, scope: !4072, inlinedAt: !4181)
!4183 = !DILocation(line: 235, column: 22, scope: !4079, inlinedAt: !4181)
!4184 = !DILocation(line: 235, column: 7, scope: !4079, inlinedAt: !4181)
!4185 = !DILocation(line: 236, column: 7, scope: !4079, inlinedAt: !4181)
!4186 = !DILocation(line: 239, column: 7, scope: !4083, inlinedAt: !4181)
!4187 = !DILocation(line: 239, column: 7, scope: !4084, inlinedAt: !4181)
!4188 = !DILocation(line: 239, column: 7, scope: !4087, inlinedAt: !4181)
!4189 = !DILocation(line: 243, column: 7, scope: !4089, inlinedAt: !4181)
!4190 = !DILocation(line: 246, column: 13, scope: !4072, inlinedAt: !4181)
!4191 = !DILocation(line: 299, column: 12, scope: !4192)
!4192 = !DILexicalBlockFile(scope: !4119, file: !3863, discriminator: 1)
!4193 = !DILocation(line: 299, column: 3, scope: !4194)
!4194 = !DILexicalBlockFile(scope: !4120, file: !3863, discriminator: 1)
!4195 = !DILocation(line: 301, column: 20, scope: !4118)
!4196 = !DILocation(line: 301, column: 15, scope: !4118)
!4197 = !DILocation(line: 301, column: 11, scope: !4118)
!4198 = !DILocation(line: 302, column: 23, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4118, file: !3863, line: 302, column: 11)
!4200 = !DILocation(line: 302, column: 11, scope: !4118)
!4201 = !DILocation(line: 299, column: 24, scope: !4202)
!4202 = !DILexicalBlockFile(scope: !4119, file: !3863, discriminator: 2)
!4203 = distinct !{!4203, !4204, !4205}
!4204 = !DILocation(line: 299, column: 3, scope: !4120)
!4205 = !DILocation(line: 304, column: 5, scope: !4120)
!4206 = !DILocation(line: 307, column: 1, scope: !4093)
!4207 = !DILocation(line: 306, column: 3, scope: !4093)
!4208 = distinct !DISubprogram(name: "version_etc_arn", scope: !645, file: !645, line: 62, type: !4209, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !4252)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !4211, !54, !54, !54, !4251, !46}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1067, line: 49, baseType: !4213)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1069, line: 241, size: 1728, elements: !4214)
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4213, file: !1069, line: 242, baseType: !28, size: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4213, file: !1069, line: 247, baseType: !43, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4213, file: !1069, line: 248, baseType: !43, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4213, file: !1069, line: 249, baseType: !43, size: 64, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4213, file: !1069, line: 250, baseType: !43, size: 64, offset: 256)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4213, file: !1069, line: 251, baseType: !43, size: 64, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4213, file: !1069, line: 252, baseType: !43, size: 64, offset: 384)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4213, file: !1069, line: 253, baseType: !43, size: 64, offset: 448)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4213, file: !1069, line: 254, baseType: !43, size: 64, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4213, file: !1069, line: 256, baseType: !43, size: 64, offset: 576)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4213, file: !1069, line: 257, baseType: !43, size: 64, offset: 640)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4213, file: !1069, line: 258, baseType: !43, size: 64, offset: 704)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4213, file: !1069, line: 260, baseType: !4228, size: 64, offset: 768)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1069, line: 156, size: 192, elements: !4230)
!4230 = !{!4231, !4232, !4234}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4229, file: !1069, line: 157, baseType: !4228, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4229, file: !1069, line: 158, baseType: !4233, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4229, file: !1069, line: 162, baseType: !28, size: 32, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4213, file: !1069, line: 262, baseType: !4233, size: 64, offset: 832)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4213, file: !1069, line: 264, baseType: !28, size: 32, offset: 896)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4213, file: !1069, line: 268, baseType: !28, size: 32, offset: 928)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4213, file: !1069, line: 270, baseType: !1095, size: 64, offset: 960)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4213, file: !1069, line: 274, baseType: !157, size: 16, offset: 1024)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4213, file: !1069, line: 275, baseType: !1099, size: 8, offset: 1040)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4213, file: !1069, line: 276, baseType: !1101, size: 8, offset: 1048)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4213, file: !1069, line: 280, baseType: !1103, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4213, file: !1069, line: 289, baseType: !1106, size: 64, offset: 1152)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4213, file: !1069, line: 297, baseType: !45, size: 64, offset: 1216)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4213, file: !1069, line: 298, baseType: !45, size: 64, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4213, file: !1069, line: 299, baseType: !45, size: 64, offset: 1344)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4213, file: !1069, line: 300, baseType: !45, size: 64, offset: 1408)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4213, file: !1069, line: 302, baseType: !46, size: 64, offset: 1472)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4213, file: !1069, line: 303, baseType: !28, size: 32, offset: 1536)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4213, file: !1069, line: 305, baseType: !1114, size: 160, offset: 1568)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!4252 = !{!4253, !4254, !4255, !4256, !4257, !4258}
!4253 = !DILocalVariable(name: "stream", arg: 1, scope: !4208, file: !645, line: 62, type: !4211)
!4254 = !DILocalVariable(name: "command_name", arg: 2, scope: !4208, file: !645, line: 63, type: !54)
!4255 = !DILocalVariable(name: "package", arg: 3, scope: !4208, file: !645, line: 63, type: !54)
!4256 = !DILocalVariable(name: "version", arg: 4, scope: !4208, file: !645, line: 64, type: !54)
!4257 = !DILocalVariable(name: "authors", arg: 5, scope: !4208, file: !645, line: 65, type: !4251)
!4258 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4208, file: !645, line: 65, type: !46)
!4259 = !DILocation(line: 62, column: 24, scope: !4208)
!4260 = !DILocation(line: 63, column: 30, scope: !4208)
!4261 = !DILocation(line: 63, column: 56, scope: !4208)
!4262 = !DILocation(line: 64, column: 30, scope: !4208)
!4263 = !DILocation(line: 65, column: 39, scope: !4208)
!4264 = !DILocation(line: 65, column: 55, scope: !4208)
!4265 = !DILocation(line: 67, column: 7, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4208, file: !645, line: 67, column: 7)
!4267 = !DILocation(line: 67, column: 7, scope: !4208)
!4268 = !DILocation(line: 68, column: 5, scope: !4266)
!4269 = !DILocation(line: 70, column: 5, scope: !4266)
!4270 = !DILocation(line: 84, column: 3, scope: !4208)
!4271 = !DILocation(line: 84, column: 3, scope: !4272)
!4272 = !DILexicalBlockFile(scope: !4208, file: !645, discriminator: 1)
!4273 = !DILocation(line: 86, column: 3, scope: !4208)
!4274 = !DILocation(line: 86, column: 3, scope: !4272)
!4275 = !DILocation(line: 95, column: 3, scope: !4208)
!4276 = !DILocation(line: 99, column: 7, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4208, file: !645, line: 96, column: 5)
!4278 = !DILocation(line: 102, column: 7, scope: !4277)
!4279 = !DILocation(line: 102, column: 7, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !4277, file: !645, discriminator: 1)
!4281 = !DILocation(line: 103, column: 7, scope: !4277)
!4282 = !DILocation(line: 106, column: 7, scope: !4277)
!4283 = !DILocation(line: 106, column: 7, scope: !4280)
!4284 = !DILocation(line: 107, column: 7, scope: !4277)
!4285 = !DILocation(line: 110, column: 7, scope: !4277)
!4286 = !DILocation(line: 110, column: 7, scope: !4280)
!4287 = !DILocation(line: 112, column: 7, scope: !4277)
!4288 = !DILocation(line: 117, column: 7, scope: !4277)
!4289 = !DILocation(line: 117, column: 7, scope: !4280)
!4290 = !DILocation(line: 119, column: 7, scope: !4277)
!4291 = !DILocation(line: 124, column: 7, scope: !4277)
!4292 = !DILocation(line: 124, column: 7, scope: !4280)
!4293 = !DILocation(line: 126, column: 7, scope: !4277)
!4294 = !DILocation(line: 131, column: 7, scope: !4277)
!4295 = !DILocation(line: 131, column: 7, scope: !4280)
!4296 = !DILocation(line: 134, column: 7, scope: !4277)
!4297 = !DILocation(line: 139, column: 7, scope: !4277)
!4298 = !DILocation(line: 139, column: 7, scope: !4280)
!4299 = !DILocation(line: 142, column: 7, scope: !4277)
!4300 = !DILocation(line: 147, column: 7, scope: !4277)
!4301 = !DILocation(line: 147, column: 7, scope: !4280)
!4302 = !DILocation(line: 151, column: 7, scope: !4277)
!4303 = !DILocation(line: 156, column: 7, scope: !4277)
!4304 = !DILocation(line: 156, column: 7, scope: !4280)
!4305 = !DILocation(line: 160, column: 7, scope: !4277)
!4306 = !DILocation(line: 167, column: 7, scope: !4277)
!4307 = !DILocation(line: 167, column: 7, scope: !4280)
!4308 = !DILocation(line: 171, column: 7, scope: !4277)
!4309 = !DILocation(line: 173, column: 1, scope: !4208)
!4310 = distinct !DISubprogram(name: "version_etc_ar", scope: !645, file: !645, line: 180, type: !4311, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{null, !4211, !54, !54, !54, !4251}
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4319}
!4314 = !DILocalVariable(name: "stream", arg: 1, scope: !4310, file: !645, line: 180, type: !4211)
!4315 = !DILocalVariable(name: "command_name", arg: 2, scope: !4310, file: !645, line: 181, type: !54)
!4316 = !DILocalVariable(name: "package", arg: 3, scope: !4310, file: !645, line: 181, type: !54)
!4317 = !DILocalVariable(name: "version", arg: 4, scope: !4310, file: !645, line: 182, type: !54)
!4318 = !DILocalVariable(name: "authors", arg: 5, scope: !4310, file: !645, line: 182, type: !4251)
!4319 = !DILocalVariable(name: "n_authors", scope: !4310, file: !645, line: 184, type: !46)
!4320 = !DILocation(line: 180, column: 23, scope: !4310)
!4321 = !DILocation(line: 181, column: 29, scope: !4310)
!4322 = !DILocation(line: 181, column: 55, scope: !4310)
!4323 = !DILocation(line: 182, column: 29, scope: !4310)
!4324 = !DILocation(line: 182, column: 59, scope: !4310)
!4325 = !DILocation(line: 184, column: 10, scope: !4310)
!4326 = !DILocation(line: 186, column: 8, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4310, file: !645, line: 186, column: 3)
!4328 = !DILocation(line: 186, column: 23, scope: !4329)
!4329 = !DILexicalBlockFile(scope: !4330, file: !645, discriminator: 1)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !645, line: 186, column: 3)
!4331 = !DILocation(line: 186, column: 3, scope: !4332)
!4332 = !DILexicalBlockFile(scope: !4327, file: !645, discriminator: 1)
!4333 = !DILocation(line: 186, column: 52, scope: !4334)
!4334 = !DILexicalBlockFile(scope: !4330, file: !645, discriminator: 3)
!4335 = distinct !{!4335, !4336, !4337}
!4336 = !DILocation(line: 186, column: 3, scope: !4327)
!4337 = !DILocation(line: 187, column: 5, scope: !4327)
!4338 = !DILocation(line: 188, column: 3, scope: !4310)
!4339 = !DILocation(line: 189, column: 1, scope: !4310)
!4340 = distinct !DISubprogram(name: "version_etc_va", scope: !645, file: !645, line: 196, type: !4341, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !4350)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{null, !4211, !54, !54, !54, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !642, line: 189, size: 192, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4344, file: !642, line: 189, baseType: !58, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4344, file: !642, line: 189, baseType: !58, size: 32, offset: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4344, file: !642, line: 189, baseType: !45, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4344, file: !642, line: 189, baseType: !45, size: 64, offset: 128)
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356, !4357}
!4351 = !DILocalVariable(name: "stream", arg: 1, scope: !4340, file: !645, line: 196, type: !4211)
!4352 = !DILocalVariable(name: "command_name", arg: 2, scope: !4340, file: !645, line: 197, type: !54)
!4353 = !DILocalVariable(name: "package", arg: 3, scope: !4340, file: !645, line: 197, type: !54)
!4354 = !DILocalVariable(name: "version", arg: 4, scope: !4340, file: !645, line: 198, type: !54)
!4355 = !DILocalVariable(name: "authors", arg: 5, scope: !4340, file: !645, line: 198, type: !4343)
!4356 = !DILocalVariable(name: "n_authors", scope: !4340, file: !645, line: 200, type: !46)
!4357 = !DILocalVariable(name: "authtab", scope: !4340, file: !645, line: 201, type: !4358)
!4358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 640, elements: !164)
!4359 = !DILocation(line: 196, column: 23, scope: !4340)
!4360 = !DILocation(line: 197, column: 29, scope: !4340)
!4361 = !DILocation(line: 197, column: 55, scope: !4340)
!4362 = !DILocation(line: 198, column: 29, scope: !4340)
!4363 = !DILocation(line: 198, column: 46, scope: !4340)
!4364 = !DILocation(line: 201, column: 3, scope: !4340)
!4365 = !DILocation(line: 201, column: 15, scope: !4340)
!4366 = !DILocation(line: 200, column: 10, scope: !4340)
!4367 = !DILocation(line: 205, column: 35, scope: !4368)
!4368 = !DILexicalBlockFile(scope: !4369, file: !645, discriminator: 1)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !645, line: 203, column: 3)
!4370 = distinct !DILexicalBlock(scope: !4340, file: !645, line: 203, column: 3)
!4371 = !DILocation(line: 205, column: 35, scope: !4372)
!4372 = !DILexicalBlockFile(scope: !4369, file: !645, discriminator: 2)
!4373 = !DILocation(line: 205, column: 35, scope: !4374)
!4374 = !DILexicalBlockFile(scope: !4369, file: !645, discriminator: 3)
!4375 = !DILocation(line: 205, column: 35, scope: !4376)
!4376 = !DILexicalBlockFile(scope: !4369, file: !645, discriminator: 4)
!4377 = !DILocation(line: 205, column: 14, scope: !4376)
!4378 = !DILocation(line: 205, column: 33, scope: !4376)
!4379 = !DILocation(line: 205, column: 67, scope: !4376)
!4380 = !DILocation(line: 203, column: 3, scope: !4381)
!4381 = !DILexicalBlockFile(scope: !4370, file: !645, discriminator: 1)
!4382 = !DILocation(line: 208, column: 3, scope: !4340)
!4383 = !DILocation(line: 210, column: 1, scope: !4340)
!4384 = distinct !DISubprogram(name: "version_etc", scope: !645, file: !645, line: 227, type: !4385, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !4387)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{null, !4211, !54, !54, !54, null}
!4387 = !{!4388, !4389, !4390, !4391, !4392}
!4388 = !DILocalVariable(name: "stream", arg: 1, scope: !4384, file: !645, line: 227, type: !4211)
!4389 = !DILocalVariable(name: "command_name", arg: 2, scope: !4384, file: !645, line: 228, type: !54)
!4390 = !DILocalVariable(name: "package", arg: 3, scope: !4384, file: !645, line: 228, type: !54)
!4391 = !DILocalVariable(name: "version", arg: 4, scope: !4384, file: !645, line: 229, type: !54)
!4392 = !DILocalVariable(name: "authors", scope: !4384, file: !645, line: 231, type: !4393)
!4393 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1067, line: 80, baseType: !4394)
!4394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !571, line: 50, baseType: !4395)
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !642, line: 231, baseType: !4396)
!4396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4344, size: 192, elements: !580)
!4397 = !DILocation(line: 227, column: 20, scope: !4384)
!4398 = !DILocation(line: 228, column: 26, scope: !4384)
!4399 = !DILocation(line: 228, column: 52, scope: !4384)
!4400 = !DILocation(line: 229, column: 26, scope: !4384)
!4401 = !DILocation(line: 231, column: 3, scope: !4384)
!4402 = !DILocation(line: 231, column: 11, scope: !4384)
!4403 = !DILocation(line: 233, column: 3, scope: !4384)
!4404 = !DILocation(line: 234, column: 3, scope: !4384)
!4405 = !DILocation(line: 235, column: 3, scope: !4384)
!4406 = !DILocation(line: 236, column: 1, scope: !4384)
!4407 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !645, file: !645, line: 239, type: !741, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !106)
!4408 = !DILocation(line: 245, column: 3, scope: !4407)
!4409 = !DILocation(line: 245, column: 3, scope: !4410)
!4410 = !DILexicalBlockFile(scope: !4407, file: !645, discriminator: 1)
!4411 = !DILocation(line: 251, column: 3, scope: !4407)
!4412 = !DILocation(line: 251, column: 3, scope: !4410)
!4413 = !DILocation(line: 256, column: 3, scope: !4407)
!4414 = !DILocation(line: 256, column: 3, scope: !4410)
!4415 = !DILocation(line: 258, column: 1, scope: !4407)
!4416 = distinct !DISubprogram(name: "xnmalloc", scope: !653, file: !653, line: 105, type: !1564, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4417)
!4417 = !{!4418, !4419}
!4418 = !DILocalVariable(name: "n", arg: 1, scope: !4416, file: !653, line: 105, type: !46)
!4419 = !DILocalVariable(name: "s", arg: 2, scope: !4416, file: !653, line: 105, type: !46)
!4420 = !DILocation(line: 105, column: 18, scope: !4416)
!4421 = !DILocation(line: 105, column: 28, scope: !4416)
!4422 = !DILocation(line: 107, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4416, file: !653, line: 107, column: 7)
!4424 = !DILocation(line: 107, column: 7, scope: !4416)
!4425 = !DILocation(line: 108, column: 5, scope: !4423)
!4426 = !DILocation(line: 109, column: 21, scope: !4416)
!4427 = !DILocalVariable(name: "n", arg: 1, scope: !4428, file: !4429, line: 39, type: !46)
!4428 = distinct !DISubprogram(name: "xmalloc", scope: !4429, file: !4429, line: 39, type: !4430, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4432)
!4429 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!45, !46}
!4432 = !{!4427, !4433}
!4433 = !DILocalVariable(name: "p", scope: !4428, file: !4429, line: 41, type: !45)
!4434 = !DILocation(line: 39, column: 17, scope: !4428, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 109, column: 10, scope: !4416)
!4436 = !DILocation(line: 41, column: 13, scope: !4428, inlinedAt: !4435)
!4437 = !DILocation(line: 41, column: 9, scope: !4428, inlinedAt: !4435)
!4438 = !DILocation(line: 42, column: 8, scope: !4439, inlinedAt: !4435)
!4439 = distinct !DILexicalBlock(scope: !4428, file: !4429, line: 42, column: 7)
!4440 = !DILocation(line: 42, column: 15, scope: !4441, inlinedAt: !4435)
!4441 = !DILexicalBlockFile(scope: !4439, file: !4429, discriminator: 1)
!4442 = !DILocation(line: 42, column: 10, scope: !4439, inlinedAt: !4435)
!4443 = !DILocation(line: 43, column: 5, scope: !4439, inlinedAt: !4435)
!4444 = !DILocation(line: 109, column: 3, scope: !4416)
!4445 = !DILocation(line: 39, column: 17, scope: !4428)
!4446 = !DILocation(line: 41, column: 13, scope: !4428)
!4447 = !DILocation(line: 41, column: 9, scope: !4428)
!4448 = !DILocation(line: 42, column: 8, scope: !4439)
!4449 = !DILocation(line: 42, column: 15, scope: !4441)
!4450 = !DILocation(line: 42, column: 10, scope: !4439)
!4451 = !DILocation(line: 43, column: 5, scope: !4439)
!4452 = !DILocation(line: 44, column: 3, scope: !4428)
!4453 = distinct !DISubprogram(name: "xnrealloc", scope: !653, file: !653, line: 118, type: !4454, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4456)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!45, !45, !46, !46}
!4456 = !{!4457, !4458, !4459}
!4457 = !DILocalVariable(name: "p", arg: 1, scope: !4453, file: !653, line: 118, type: !45)
!4458 = !DILocalVariable(name: "n", arg: 2, scope: !4453, file: !653, line: 118, type: !46)
!4459 = !DILocalVariable(name: "s", arg: 3, scope: !4453, file: !653, line: 118, type: !46)
!4460 = !DILocation(line: 118, column: 18, scope: !4453)
!4461 = !DILocation(line: 118, column: 28, scope: !4453)
!4462 = !DILocation(line: 118, column: 38, scope: !4453)
!4463 = !DILocation(line: 120, column: 7, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4453, file: !653, line: 120, column: 7)
!4465 = !DILocation(line: 120, column: 7, scope: !4453)
!4466 = !DILocation(line: 121, column: 5, scope: !4464)
!4467 = !DILocation(line: 122, column: 25, scope: !4453)
!4468 = !DILocalVariable(name: "p", arg: 1, scope: !4469, file: !4429, line: 51, type: !45)
!4469 = distinct !DISubprogram(name: "xrealloc", scope: !4429, file: !4429, line: 51, type: !4470, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!45, !45, !46}
!4472 = !{!4468, !4473}
!4473 = !DILocalVariable(name: "n", arg: 2, scope: !4469, file: !4429, line: 51, type: !46)
!4474 = !DILocation(line: 51, column: 17, scope: !4469, inlinedAt: !4475)
!4475 = distinct !DILocation(line: 122, column: 10, scope: !4453)
!4476 = !DILocation(line: 51, column: 27, scope: !4469, inlinedAt: !4475)
!4477 = !DILocation(line: 53, column: 8, scope: !4478, inlinedAt: !4475)
!4478 = distinct !DILexicalBlock(scope: !4469, file: !4429, line: 53, column: 7)
!4479 = !DILocation(line: 53, column: 13, scope: !4480, inlinedAt: !4475)
!4480 = !DILexicalBlockFile(scope: !4478, file: !4429, discriminator: 1)
!4481 = !DILocation(line: 53, column: 10, scope: !4478, inlinedAt: !4475)
!4482 = !DILocation(line: 57, column: 7, scope: !4483, inlinedAt: !4475)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !4429, line: 54, column: 5)
!4484 = !DILocation(line: 58, column: 7, scope: !4483, inlinedAt: !4475)
!4485 = !DILocation(line: 61, column: 7, scope: !4469, inlinedAt: !4475)
!4486 = !DILocation(line: 62, column: 8, scope: !4487, inlinedAt: !4475)
!4487 = distinct !DILexicalBlock(scope: !4469, file: !4429, line: 62, column: 7)
!4488 = !DILocation(line: 62, column: 13, scope: !4489, inlinedAt: !4475)
!4489 = !DILexicalBlockFile(scope: !4487, file: !4429, discriminator: 1)
!4490 = !DILocation(line: 62, column: 10, scope: !4487, inlinedAt: !4475)
!4491 = !DILocation(line: 63, column: 5, scope: !4487, inlinedAt: !4475)
!4492 = !DILocation(line: 122, column: 3, scope: !4453)
!4493 = !DILocation(line: 51, column: 17, scope: !4469)
!4494 = !DILocation(line: 51, column: 27, scope: !4469)
!4495 = !DILocation(line: 53, column: 8, scope: !4478)
!4496 = !DILocation(line: 53, column: 13, scope: !4480)
!4497 = !DILocation(line: 53, column: 10, scope: !4478)
!4498 = !DILocation(line: 57, column: 7, scope: !4483)
!4499 = !DILocation(line: 58, column: 7, scope: !4483)
!4500 = !DILocation(line: 61, column: 7, scope: !4469)
!4501 = !DILocation(line: 62, column: 8, scope: !4487)
!4502 = !DILocation(line: 62, column: 13, scope: !4489)
!4503 = !DILocation(line: 62, column: 10, scope: !4487)
!4504 = !DILocation(line: 63, column: 5, scope: !4487)
!4505 = !DILocation(line: 65, column: 1, scope: !4469)
!4506 = !DILocation(line: 180, column: 19, scope: !654)
!4507 = !DILocation(line: 180, column: 30, scope: !654)
!4508 = !DILocation(line: 180, column: 41, scope: !654)
!4509 = !DILocation(line: 182, column: 14, scope: !654)
!4510 = !DILocation(line: 182, column: 10, scope: !654)
!4511 = !DILocation(line: 184, column: 9, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !654, file: !653, line: 184, column: 7)
!4513 = !DILocation(line: 184, column: 7, scope: !654)
!4514 = !DILocation(line: 186, column: 13, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !653, line: 186, column: 11)
!4516 = distinct !DILexicalBlock(scope: !4512, file: !653, line: 185, column: 5)
!4517 = !DILocation(line: 186, column: 11, scope: !4516)
!4518 = !DILocation(line: 194, column: 30, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4515, file: !653, line: 187, column: 9)
!4520 = !DILocation(line: 195, column: 16, scope: !4519)
!4521 = !DILocation(line: 195, column: 13, scope: !4519)
!4522 = !DILocation(line: 196, column: 9, scope: !4519)
!4523 = !DILocation(line: 204, column: 69, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !653, line: 204, column: 11)
!4525 = distinct !DILexicalBlock(scope: !4512, file: !653, line: 199, column: 5)
!4526 = !DILocation(line: 205, column: 11, scope: !4524)
!4527 = !DILocation(line: 204, column: 11, scope: !4525)
!4528 = !DILocation(line: 206, column: 9, scope: !4524)
!4529 = !DILocation(line: 210, column: 7, scope: !654)
!4530 = !DILocation(line: 211, column: 25, scope: !654)
!4531 = !DILocation(line: 51, column: 17, scope: !4469, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 211, column: 10, scope: !654)
!4533 = !DILocation(line: 51, column: 27, scope: !4469, inlinedAt: !4532)
!4534 = !DILocation(line: 53, column: 10, scope: !4478, inlinedAt: !4532)
!4535 = !DILocation(line: 207, column: 14, scope: !4525)
!4536 = !DILocation(line: 207, column: 18, scope: !4525)
!4537 = !DILocation(line: 207, column: 9, scope: !4525)
!4538 = !DILocation(line: 53, column: 8, scope: !4478, inlinedAt: !4532)
!4539 = !DILocation(line: 57, column: 7, scope: !4483, inlinedAt: !4532)
!4540 = !DILocation(line: 58, column: 7, scope: !4483, inlinedAt: !4532)
!4541 = !DILocation(line: 61, column: 7, scope: !4469, inlinedAt: !4532)
!4542 = !DILocation(line: 62, column: 8, scope: !4487, inlinedAt: !4532)
!4543 = !DILocation(line: 62, column: 13, scope: !4489, inlinedAt: !4532)
!4544 = !DILocation(line: 62, column: 10, scope: !4487, inlinedAt: !4532)
!4545 = !DILocation(line: 63, column: 5, scope: !4487, inlinedAt: !4532)
!4546 = !DILocation(line: 211, column: 3, scope: !654)
!4547 = distinct !DISubprogram(name: "xcharalloc", scope: !653, file: !653, line: 220, type: !3108, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4548)
!4548 = !{!4549}
!4549 = !DILocalVariable(name: "n", arg: 1, scope: !4547, file: !653, line: 220, type: !46)
!4550 = !DILocation(line: 220, column: 20, scope: !4547)
!4551 = !DILocation(line: 39, column: 17, scope: !4428, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 222, column: 10, scope: !4547)
!4553 = !DILocation(line: 41, column: 13, scope: !4428, inlinedAt: !4552)
!4554 = !DILocation(line: 41, column: 9, scope: !4428, inlinedAt: !4552)
!4555 = !DILocation(line: 42, column: 8, scope: !4439, inlinedAt: !4552)
!4556 = !DILocation(line: 42, column: 15, scope: !4441, inlinedAt: !4552)
!4557 = !DILocation(line: 42, column: 10, scope: !4439, inlinedAt: !4552)
!4558 = !DILocation(line: 43, column: 5, scope: !4439, inlinedAt: !4552)
!4559 = !DILocation(line: 222, column: 3, scope: !4547)
!4560 = distinct !DISubprogram(name: "x2realloc", scope: !4429, file: !4429, line: 74, type: !4561, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4563)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!45, !45, !657}
!4563 = !{!4564, !4565}
!4564 = !DILocalVariable(name: "p", arg: 1, scope: !4560, file: !4429, line: 74, type: !45)
!4565 = !DILocalVariable(name: "pn", arg: 2, scope: !4560, file: !4429, line: 74, type: !657)
!4566 = !DILocation(line: 74, column: 18, scope: !4560)
!4567 = !DILocation(line: 74, column: 29, scope: !4560)
!4568 = !DILocation(line: 180, column: 19, scope: !654, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 76, column: 10, scope: !4560)
!4570 = !DILocation(line: 180, column: 30, scope: !654, inlinedAt: !4569)
!4571 = !DILocation(line: 180, column: 41, scope: !654, inlinedAt: !4569)
!4572 = !DILocation(line: 182, column: 14, scope: !654, inlinedAt: !4569)
!4573 = !DILocation(line: 182, column: 10, scope: !654, inlinedAt: !4569)
!4574 = !DILocation(line: 184, column: 9, scope: !4512, inlinedAt: !4569)
!4575 = !DILocation(line: 184, column: 7, scope: !654, inlinedAt: !4569)
!4576 = !DILocation(line: 186, column: 13, scope: !4515, inlinedAt: !4569)
!4577 = !DILocation(line: 186, column: 11, scope: !4516, inlinedAt: !4569)
!4578 = !DILocation(line: 210, column: 7, scope: !654, inlinedAt: !4569)
!4579 = !DILocation(line: 51, column: 17, scope: !4469, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 211, column: 10, scope: !654, inlinedAt: !4569)
!4581 = !DILocation(line: 51, column: 27, scope: !4469, inlinedAt: !4580)
!4582 = !DILocation(line: 53, column: 10, scope: !4478, inlinedAt: !4580)
!4583 = !DILocation(line: 205, column: 11, scope: !4524, inlinedAt: !4569)
!4584 = !DILocation(line: 204, column: 11, scope: !4525, inlinedAt: !4569)
!4585 = !DILocation(line: 206, column: 9, scope: !4524, inlinedAt: !4569)
!4586 = !DILocation(line: 207, column: 14, scope: !4525, inlinedAt: !4569)
!4587 = !DILocation(line: 207, column: 18, scope: !4525, inlinedAt: !4569)
!4588 = !DILocation(line: 207, column: 9, scope: !4525, inlinedAt: !4569)
!4589 = !DILocation(line: 53, column: 8, scope: !4478, inlinedAt: !4580)
!4590 = !DILocation(line: 57, column: 7, scope: !4483, inlinedAt: !4580)
!4591 = !DILocation(line: 58, column: 7, scope: !4483, inlinedAt: !4580)
!4592 = !DILocation(line: 61, column: 7, scope: !4469, inlinedAt: !4580)
!4593 = !DILocation(line: 62, column: 8, scope: !4487, inlinedAt: !4580)
!4594 = !DILocation(line: 62, column: 13, scope: !4489, inlinedAt: !4580)
!4595 = !DILocation(line: 62, column: 10, scope: !4487, inlinedAt: !4580)
!4596 = !DILocation(line: 63, column: 5, scope: !4487, inlinedAt: !4580)
!4597 = !DILocation(line: 76, column: 3, scope: !4560)
!4598 = distinct !DISubprogram(name: "xzalloc", scope: !4429, file: !4429, line: 84, type: !4430, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4599)
!4599 = !{!4600}
!4600 = !DILocalVariable(name: "s", arg: 1, scope: !4598, file: !4429, line: 84, type: !46)
!4601 = !DILocation(line: 84, column: 17, scope: !4598)
!4602 = !DILocation(line: 39, column: 17, scope: !4428, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 86, column: 18, scope: !4598)
!4604 = !DILocation(line: 41, column: 13, scope: !4428, inlinedAt: !4603)
!4605 = !DILocation(line: 41, column: 9, scope: !4428, inlinedAt: !4603)
!4606 = !DILocation(line: 42, column: 8, scope: !4439, inlinedAt: !4603)
!4607 = !DILocation(line: 42, column: 15, scope: !4441, inlinedAt: !4603)
!4608 = !DILocation(line: 42, column: 10, scope: !4439, inlinedAt: !4603)
!4609 = !DILocation(line: 43, column: 5, scope: !4439, inlinedAt: !4603)
!4610 = !DILocation(line: 86, column: 10, scope: !4598)
!4611 = !DILocation(line: 86, column: 3, scope: !4598)
!4612 = distinct !DISubprogram(name: "xcalloc", scope: !4429, file: !4429, line: 93, type: !1564, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4613)
!4613 = !{!4614, !4615, !4616}
!4614 = !DILocalVariable(name: "n", arg: 1, scope: !4612, file: !4429, line: 93, type: !46)
!4615 = !DILocalVariable(name: "s", arg: 2, scope: !4612, file: !4429, line: 93, type: !46)
!4616 = !DILocalVariable(name: "p", scope: !4612, file: !4429, line: 95, type: !45)
!4617 = !DILocation(line: 93, column: 17, scope: !4612)
!4618 = !DILocation(line: 93, column: 27, scope: !4612)
!4619 = !DILocation(line: 100, column: 7, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4612, file: !4429, line: 100, column: 7)
!4621 = !DILocation(line: 101, column: 7, scope: !4620)
!4622 = !DILocation(line: 101, column: 18, scope: !4623)
!4623 = !DILexicalBlockFile(scope: !4620, file: !4429, discriminator: 1)
!4624 = !DILocation(line: 95, column: 9, scope: !4612)
!4625 = !DILocation(line: 101, column: 16, scope: !4623)
!4626 = !DILocation(line: 100, column: 7, scope: !4627)
!4627 = !DILexicalBlockFile(scope: !4612, file: !4429, discriminator: 1)
!4628 = !DILocation(line: 102, column: 5, scope: !4620)
!4629 = !DILocation(line: 103, column: 3, scope: !4612)
!4630 = distinct !DISubprogram(name: "xmemdup", scope: !4429, file: !4429, line: 111, type: !4631, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4633)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!45, !49, !46}
!4633 = !{!4634, !4635}
!4634 = !DILocalVariable(name: "p", arg: 1, scope: !4630, file: !4429, line: 111, type: !49)
!4635 = !DILocalVariable(name: "s", arg: 2, scope: !4630, file: !4429, line: 111, type: !46)
!4636 = !DILocation(line: 111, column: 22, scope: !4630)
!4637 = !DILocation(line: 111, column: 32, scope: !4630)
!4638 = !DILocation(line: 39, column: 17, scope: !4428, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 113, column: 18, scope: !4630)
!4640 = !DILocation(line: 41, column: 13, scope: !4428, inlinedAt: !4639)
!4641 = !DILocation(line: 41, column: 9, scope: !4428, inlinedAt: !4639)
!4642 = !DILocation(line: 42, column: 8, scope: !4439, inlinedAt: !4639)
!4643 = !DILocation(line: 42, column: 15, scope: !4441, inlinedAt: !4639)
!4644 = !DILocation(line: 42, column: 10, scope: !4439, inlinedAt: !4639)
!4645 = !DILocation(line: 43, column: 5, scope: !4439, inlinedAt: !4639)
!4646 = !DILocation(line: 113, column: 10, scope: !4630)
!4647 = !DILocation(line: 113, column: 3, scope: !4630)
!4648 = distinct !DISubprogram(name: "xstrdup", scope: !4429, file: !4429, line: 119, type: !3314, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !649, variables: !4649)
!4649 = !{!4650}
!4650 = !DILocalVariable(name: "string", arg: 1, scope: !4648, file: !4429, line: 119, type: !54)
!4651 = !DILocation(line: 119, column: 22, scope: !4648)
!4652 = !DILocation(line: 121, column: 27, scope: !4648)
!4653 = !DILocation(line: 121, column: 43, scope: !4648)
!4654 = !DILocation(line: 111, column: 22, scope: !4630, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 121, column: 10, scope: !4656)
!4656 = !DILexicalBlockFile(scope: !4648, file: !4429, discriminator: 1)
!4657 = !DILocation(line: 111, column: 32, scope: !4630, inlinedAt: !4655)
!4658 = !DILocation(line: 39, column: 17, scope: !4428, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 113, column: 18, scope: !4630, inlinedAt: !4655)
!4660 = !DILocation(line: 41, column: 13, scope: !4428, inlinedAt: !4659)
!4661 = !DILocation(line: 41, column: 9, scope: !4428, inlinedAt: !4659)
!4662 = !DILocation(line: 42, column: 8, scope: !4439, inlinedAt: !4659)
!4663 = !DILocation(line: 42, column: 15, scope: !4441, inlinedAt: !4659)
!4664 = !DILocation(line: 42, column: 10, scope: !4439, inlinedAt: !4659)
!4665 = !DILocation(line: 43, column: 5, scope: !4439, inlinedAt: !4659)
!4666 = !DILocation(line: 113, column: 10, scope: !4630, inlinedAt: !4655)
!4667 = !DILocation(line: 121, column: 3, scope: !4648)
!4668 = distinct !DISubprogram(name: "xalloc_die", scope: !4669, file: !4669, line: 32, type: !741, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !666, variables: !106)
!4669 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4670 = !DILocation(line: 34, column: 10, scope: !4668)
!4671 = !DILocation(line: 34, column: 33, scope: !4668)
!4672 = !DILocation(line: 34, column: 3, scope: !4673)
!4673 = !DILexicalBlockFile(scope: !4668, file: !4669, discriminator: 1)
!4674 = !DILocation(line: 40, column: 3, scope: !4668)
!4675 = distinct !DISubprogram(name: "rpl_calloc", scope: !4676, file: !4676, line: 42, type: !1564, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !4677)
!4676 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4677 = !{!4678, !4679, !4680, !4681}
!4678 = !DILocalVariable(name: "n", arg: 1, scope: !4675, file: !4676, line: 42, type: !46)
!4679 = !DILocalVariable(name: "s", arg: 2, scope: !4675, file: !4676, line: 42, type: !46)
!4680 = !DILocalVariable(name: "result", scope: !4675, file: !4676, line: 44, type: !45)
!4681 = !DILocalVariable(name: "bytes", scope: !4682, file: !4676, line: 56, type: !46)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !4676, line: 53, column: 5)
!4683 = distinct !DILexicalBlock(scope: !4675, file: !4676, line: 47, column: 7)
!4684 = !DILocation(line: 42, column: 20, scope: !4675)
!4685 = !DILocation(line: 42, column: 30, scope: !4675)
!4686 = !DILocation(line: 47, column: 9, scope: !4683)
!4687 = !DILocation(line: 47, column: 19, scope: !4688)
!4688 = !DILexicalBlockFile(scope: !4683, file: !4676, discriminator: 1)
!4689 = !DILocation(line: 47, column: 14, scope: !4683)
!4690 = !DILocation(line: 56, column: 24, scope: !4682)
!4691 = !DILocation(line: 56, column: 14, scope: !4682)
!4692 = !DILocation(line: 57, column: 17, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4682, file: !4676, line: 57, column: 11)
!4694 = !DILocation(line: 57, column: 21, scope: !4693)
!4695 = !DILocation(line: 57, column: 11, scope: !4682)
!4696 = !DILocation(line: 59, column: 11, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4693, file: !4676, line: 58, column: 9)
!4698 = !DILocation(line: 59, column: 17, scope: !4697)
!4699 = !DILocation(line: 65, column: 12, scope: !4675)
!4700 = !DILocation(line: 44, column: 9, scope: !4675)
!4701 = !DILocation(line: 72, column: 3, scope: !4675)
!4702 = !DILocation(line: 73, column: 1, scope: !4675)
!4703 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4704, file: !4704, line: 334, type: !4705, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !4719)
!4704 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!46, !4707, !54, !46, !4708}
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2080, line: 107, baseType: !4710)
!4710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2080, line: 95, baseType: !4711)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2080, line: 83, size: 64, elements: !4712)
!4712 = !{!4713, !4714}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4711, file: !2080, line: 85, baseType: !28, size: 32)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4711, file: !2080, line: 94, baseType: !4715, size: 32, offset: 32)
!4715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4711, file: !2080, line: 86, size: 32, elements: !4716)
!4716 = !{!4717, !4718}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4715, file: !2080, line: 89, baseType: !58, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4715, file: !2080, line: 93, baseType: !2090, size: 32)
!4719 = !{!4720, !4721, !4722, !4723, !4724, !4725, !4726}
!4720 = !DILocalVariable(name: "pwc", arg: 1, scope: !4703, file: !4704, line: 334, type: !4707)
!4721 = !DILocalVariable(name: "s", arg: 2, scope: !4703, file: !4704, line: 334, type: !54)
!4722 = !DILocalVariable(name: "n", arg: 3, scope: !4703, file: !4704, line: 334, type: !46)
!4723 = !DILocalVariable(name: "ps", arg: 4, scope: !4703, file: !4704, line: 334, type: !4708)
!4724 = !DILocalVariable(name: "ret", scope: !4703, file: !4704, line: 336, type: !46)
!4725 = !DILocalVariable(name: "wc", scope: !4703, file: !4704, line: 337, type: !2095)
!4726 = !DILocalVariable(name: "uc", scope: !4727, file: !4704, line: 398, type: !53)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !4704, line: 397, column: 5)
!4728 = distinct !DILexicalBlock(scope: !4703, file: !4704, line: 396, column: 7)
!4729 = !DILocation(line: 334, column: 23, scope: !4703)
!4730 = !DILocation(line: 334, column: 40, scope: !4703)
!4731 = !DILocation(line: 334, column: 50, scope: !4703)
!4732 = !DILocation(line: 334, column: 64, scope: !4703)
!4733 = !DILocation(line: 337, column: 3, scope: !4703)
!4734 = !DILocation(line: 353, column: 9, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4703, file: !4704, line: 353, column: 7)
!4736 = !DILocation(line: 353, column: 7, scope: !4703)
!4737 = !DILocation(line: 388, column: 9, scope: !4703)
!4738 = !DILocation(line: 336, column: 10, scope: !4703)
!4739 = !DILocation(line: 396, column: 19, scope: !4728)
!4740 = !DILocation(line: 396, column: 31, scope: !4741)
!4741 = !DILexicalBlockFile(scope: !4728, file: !4704, discriminator: 1)
!4742 = !DILocation(line: 396, column: 26, scope: !4728)
!4743 = !DILocation(line: 396, column: 41, scope: !4744)
!4744 = !DILexicalBlockFile(scope: !4728, file: !4704, discriminator: 2)
!4745 = !DILocation(line: 396, column: 7, scope: !4746)
!4746 = !DILexicalBlockFile(scope: !4703, file: !4704, discriminator: 2)
!4747 = !DILocation(line: 398, column: 26, scope: !4727)
!4748 = !DILocation(line: 398, column: 21, scope: !4727)
!4749 = !DILocation(line: 399, column: 14, scope: !4727)
!4750 = !DILocation(line: 399, column: 12, scope: !4727)
!4751 = !DILocation(line: 405, column: 1, scope: !4703)
!4752 = distinct !DISubprogram(name: "close_stream", scope: !4753, file: !4753, line: 56, type: !4754, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4796)
!4753 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!28, !4756}
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1067, line: 49, baseType: !4758)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1069, line: 241, size: 1728, elements: !4759)
!4759 = !{!4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4758, file: !1069, line: 242, baseType: !28, size: 32)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4758, file: !1069, line: 247, baseType: !43, size: 64, offset: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4758, file: !1069, line: 248, baseType: !43, size: 64, offset: 128)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4758, file: !1069, line: 249, baseType: !43, size: 64, offset: 192)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4758, file: !1069, line: 250, baseType: !43, size: 64, offset: 256)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4758, file: !1069, line: 251, baseType: !43, size: 64, offset: 320)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4758, file: !1069, line: 252, baseType: !43, size: 64, offset: 384)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4758, file: !1069, line: 253, baseType: !43, size: 64, offset: 448)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4758, file: !1069, line: 254, baseType: !43, size: 64, offset: 512)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4758, file: !1069, line: 256, baseType: !43, size: 64, offset: 576)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4758, file: !1069, line: 257, baseType: !43, size: 64, offset: 640)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4758, file: !1069, line: 258, baseType: !43, size: 64, offset: 704)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4758, file: !1069, line: 260, baseType: !4773, size: 64, offset: 768)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1069, line: 156, size: 192, elements: !4775)
!4775 = !{!4776, !4777, !4779}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4774, file: !1069, line: 157, baseType: !4773, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4774, file: !1069, line: 158, baseType: !4778, size: 64, offset: 64)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4774, file: !1069, line: 162, baseType: !28, size: 32, offset: 128)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4758, file: !1069, line: 262, baseType: !4778, size: 64, offset: 832)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4758, file: !1069, line: 264, baseType: !28, size: 32, offset: 896)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4758, file: !1069, line: 268, baseType: !28, size: 32, offset: 928)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4758, file: !1069, line: 270, baseType: !1095, size: 64, offset: 960)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4758, file: !1069, line: 274, baseType: !157, size: 16, offset: 1024)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4758, file: !1069, line: 275, baseType: !1099, size: 8, offset: 1040)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4758, file: !1069, line: 276, baseType: !1101, size: 8, offset: 1048)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4758, file: !1069, line: 280, baseType: !1103, size: 64, offset: 1088)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4758, file: !1069, line: 289, baseType: !1106, size: 64, offset: 1152)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4758, file: !1069, line: 297, baseType: !45, size: 64, offset: 1216)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4758, file: !1069, line: 298, baseType: !45, size: 64, offset: 1280)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4758, file: !1069, line: 299, baseType: !45, size: 64, offset: 1344)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4758, file: !1069, line: 300, baseType: !45, size: 64, offset: 1408)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4758, file: !1069, line: 302, baseType: !46, size: 64, offset: 1472)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4758, file: !1069, line: 303, baseType: !28, size: 32, offset: 1536)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4758, file: !1069, line: 305, baseType: !1114, size: 160, offset: 1568)
!4796 = !{!4797, !4798, !4800, !4801}
!4797 = !DILocalVariable(name: "stream", arg: 1, scope: !4752, file: !4753, line: 56, type: !4756)
!4798 = !DILocalVariable(name: "some_pending", scope: !4752, file: !4753, line: 58, type: !4799)
!4799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!4800 = !DILocalVariable(name: "prev_fail", scope: !4752, file: !4753, line: 59, type: !4799)
!4801 = !DILocalVariable(name: "fclose_fail", scope: !4752, file: !4753, line: 60, type: !4799)
!4802 = !DILocation(line: 56, column: 21, scope: !4752)
!4803 = !DILocation(line: 58, column: 30, scope: !4752)
!4804 = !DILocalVariable(name: "__stream", arg: 1, scope: !4805, file: !1157, line: 132, type: !4756)
!4805 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1157, file: !1157, line: 132, type: !4754, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !4806)
!4806 = !{!4804}
!4807 = !DILocation(line: 132, column: 1, scope: !4805, inlinedAt: !4808)
!4808 = distinct !DILocation(line: 59, column: 27, scope: !4752)
!4809 = !DILocation(line: 134, column: 10, scope: !4805, inlinedAt: !4808)
!4810 = !{!1167, !820, i64 0}
!4811 = !DILocation(line: 59, column: 43, scope: !4752)
!4812 = !DILocation(line: 60, column: 29, scope: !4752)
!4813 = !DILocation(line: 60, column: 45, scope: !4752)
!4814 = !DILocation(line: 70, column: 17, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4752, file: !4753, line: 70, column: 7)
!4816 = !DILocation(line: 70, column: 33, scope: !4817)
!4817 = !DILexicalBlockFile(scope: !4815, file: !4753, discriminator: 1)
!4818 = !DILocation(line: 70, column: 53, scope: !4819)
!4819 = !DILexicalBlockFile(scope: !4815, file: !4753, discriminator: 3)
!4820 = !DILocation(line: 70, column: 7, scope: !4821)
!4821 = !DILexicalBlockFile(scope: !4752, file: !4753, discriminator: 3)
!4822 = !DILocation(line: 72, column: 11, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4815, file: !4753, line: 71, column: 5)
!4824 = !DILocation(line: 73, column: 9, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4823, file: !4753, line: 72, column: 11)
!4826 = !DILocation(line: 73, column: 15, scope: !4825)
!4827 = !DILocation(line: 78, column: 1, scope: !4752)
!4828 = distinct !DISubprogram(name: "open_safer", scope: !4829, file: !4829, line: 29, type: !4830, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !4832)
!4829 = !DIFile(filename: "lib/open-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!28, !54, !28, null}
!4832 = !{!4833, !4834, !4835, !4836}
!4833 = !DILocalVariable(name: "file", arg: 1, scope: !4828, file: !4829, line: 29, type: !54)
!4834 = !DILocalVariable(name: "flags", arg: 2, scope: !4828, file: !4829, line: 29, type: !28)
!4835 = !DILocalVariable(name: "mode", scope: !4828, file: !4829, line: 31, type: !695)
!4836 = !DILocalVariable(name: "ap", scope: !4837, file: !4829, line: 35, type: !4839)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !4829, line: 34, column: 5)
!4838 = distinct !DILexicalBlock(scope: !4828, file: !4829, line: 33, column: 7)
!4839 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !571, line: 30, baseType: !4840)
!4840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !675, line: 35, baseType: !4841)
!4841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4842, size: 192, elements: !580)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !675, line: 35, size: 192, elements: !4843)
!4843 = !{!4844, !4845, !4846, !4847}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4842, file: !675, line: 35, baseType: !58, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4842, file: !675, line: 35, baseType: !58, size: 32, offset: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4842, file: !675, line: 35, baseType: !45, size: 64, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4842, file: !675, line: 35, baseType: !45, size: 64, offset: 128)
!4848 = !DILocation(line: 29, column: 25, scope: !4828)
!4849 = !DILocation(line: 29, column: 35, scope: !4828)
!4850 = !DILocation(line: 31, column: 10, scope: !4828)
!4851 = !DILocation(line: 33, column: 13, scope: !4838)
!4852 = !DILocation(line: 33, column: 7, scope: !4828)
!4853 = !DILocation(line: 35, column: 7, scope: !4837)
!4854 = !DILocation(line: 35, column: 15, scope: !4837)
!4855 = !DILocation(line: 36, column: 7, scope: !4837)
!4856 = !DILocation(line: 40, column: 14, scope: !4837)
!4857 = !DILocation(line: 40, column: 14, scope: !4858)
!4858 = !DILexicalBlockFile(scope: !4837, file: !4829, discriminator: 1)
!4859 = !DILocation(line: 40, column: 14, scope: !4860)
!4860 = !DILexicalBlockFile(scope: !4837, file: !4829, discriminator: 2)
!4861 = !DILocation(line: 40, column: 14, scope: !4862)
!4862 = !DILexicalBlockFile(scope: !4837, file: !4829, discriminator: 3)
!4863 = !DILocation(line: 42, column: 7, scope: !4837)
!4864 = !DILocation(line: 43, column: 5, scope: !4838)
!4865 = !DILocation(line: 43, column: 5, scope: !4837)
!4866 = !DILocation(line: 45, column: 20, scope: !4828)
!4867 = !DILocation(line: 45, column: 10, scope: !4868)
!4868 = !DILexicalBlockFile(scope: !4828, file: !4829, discriminator: 1)
!4869 = !DILocation(line: 45, column: 3, scope: !4828)
!4870 = distinct !DISubprogram(name: "hard_locale", scope: !4871, file: !4871, line: 38, type: !4872, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !4874)
!4871 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!116, !28}
!4874 = !{!4875, !4876, !4877, !4878, !4885, !4886, !4888, !4889, !4891, !4892, !4894}
!4875 = !DILocalVariable(name: "category", arg: 1, scope: !4870, file: !4871, line: 38, type: !28)
!4876 = !DILocalVariable(name: "hard", scope: !4870, file: !4871, line: 40, type: !116)
!4877 = !DILocalVariable(name: "p", scope: !4870, file: !4871, line: 41, type: !54)
!4878 = !DILocalVariable(name: "__s1_len", scope: !4879, file: !4871, line: 47, type: !46)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !4871, line: 47, column: 15)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !4871, line: 47, column: 15)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !4871, line: 46, column: 9)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !4871, line: 45, column: 11)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !4871, line: 44, column: 5)
!4884 = distinct !DILexicalBlock(scope: !4870, file: !4871, line: 43, column: 7)
!4885 = !DILocalVariable(name: "__s2_len", scope: !4879, file: !4871, line: 47, type: !46)
!4886 = !DILocalVariable(name: "__s2", scope: !4887, file: !4871, line: 47, type: !51)
!4887 = distinct !DILexicalBlock(scope: !4879, file: !4871, line: 47, column: 15)
!4888 = !DILocalVariable(name: "__result", scope: !4887, file: !4871, line: 47, type: !28)
!4889 = !DILocalVariable(name: "__s1_len", scope: !4890, file: !4871, line: 47, type: !46)
!4890 = distinct !DILexicalBlock(scope: !4880, file: !4871, line: 47, column: 39)
!4891 = !DILocalVariable(name: "__s2_len", scope: !4890, file: !4871, line: 47, type: !46)
!4892 = !DILocalVariable(name: "__s2", scope: !4893, file: !4871, line: 47, type: !51)
!4893 = distinct !DILexicalBlock(scope: !4890, file: !4871, line: 47, column: 39)
!4894 = !DILocalVariable(name: "__result", scope: !4893, file: !4871, line: 47, type: !28)
!4895 = !DILocation(line: 38, column: 18, scope: !4870)
!4896 = !DILocation(line: 40, column: 8, scope: !4870)
!4897 = !DILocation(line: 41, column: 19, scope: !4870)
!4898 = !DILocation(line: 41, column: 15, scope: !4870)
!4899 = !DILocation(line: 43, column: 7, scope: !4884)
!4900 = !DILocation(line: 43, column: 7, scope: !4870)
!4901 = !DILocation(line: 47, column: 15, scope: !4879)
!4902 = !DILocation(line: 47, column: 15, scope: !4887)
!4903 = !DILocation(line: 47, column: 15, scope: !4904)
!4904 = !DILexicalBlockFile(scope: !4887, file: !4871, discriminator: 2)
!4905 = !DILocation(line: 47, column: 15, scope: !4906)
!4906 = !DILexicalBlockFile(scope: !4907, file: !4871, discriminator: 3)
!4907 = distinct !DILexicalBlock(scope: !4887, file: !4871, line: 47, column: 15)
!4908 = !DILocation(line: 47, column: 15, scope: !4909)
!4909 = !DILexicalBlockFile(scope: !4907, file: !4871, discriminator: 2)
!4910 = !DILocation(line: 47, column: 15, scope: !4911)
!4911 = !DILexicalBlockFile(scope: !4912, file: !4871, discriminator: 4)
!4912 = distinct !DILexicalBlock(scope: !4907, file: !4871, line: 47, column: 15)
!4913 = !DILocation(line: 47, column: 15, scope: !4914)
!4914 = !DILexicalBlockFile(scope: !4879, file: !4871, discriminator: 11)
!4915 = !DILocation(line: 47, column: 36, scope: !4916)
!4916 = !DILexicalBlockFile(scope: !4880, file: !4871, discriminator: 13)
!4917 = !DILocation(line: 47, column: 39, scope: !4890)
!4918 = !DILocation(line: 47, column: 39, scope: !4919)
!4919 = !DILexicalBlockFile(scope: !4890, file: !4871, discriminator: 26)
!4920 = !DILocation(line: 47, column: 59, scope: !4921)
!4921 = !DILexicalBlockFile(scope: !4880, file: !4871, discriminator: 27)
!4922 = !DILocation(line: 47, column: 15, scope: !4923)
!4923 = !DILexicalBlockFile(scope: !4881, file: !4871, discriminator: 27)
!4924 = !DILocation(line: 48, column: 13, scope: !4880)
!4925 = !DILocation(line: 71, column: 3, scope: !4870)
!4926 = distinct !DISubprogram(name: "locale_charset", scope: !555, file: !555, line: 393, type: !4927, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !4929)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!54}
!4929 = !{!4930, !4931, !4932, !4937}
!4930 = !DILocalVariable(name: "codeset", scope: !4926, file: !555, line: 395, type: !54)
!4931 = !DILocalVariable(name: "aliases", scope: !4926, file: !555, line: 396, type: !54)
!4932 = !DILocalVariable(name: "__s1_len", scope: !4933, file: !555, line: 592, type: !46)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !555, line: 592, column: 9)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !555, line: 592, column: 9)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !555, line: 589, column: 3)
!4936 = distinct !DILexicalBlock(scope: !4926, file: !555, line: 589, column: 3)
!4937 = !DILocalVariable(name: "__s2_len", scope: !4933, file: !555, line: 592, type: !46)
!4938 = !DILocalVariable(name: "buf1", scope: !4939, file: !555, line: 196, type: !5006)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !555, line: 194, column: 21)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !555, line: 193, column: 19)
!4941 = distinct !DILexicalBlock(scope: !4942, file: !555, line: 193, column: 19)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !555, line: 188, column: 17)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !555, line: 181, column: 19)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !555, line: 177, column: 13)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !555, line: 173, column: 15)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !555, line: 161, column: 9)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !555, line: 157, column: 11)
!4948 = distinct !DILexicalBlock(scope: !4949, file: !555, line: 130, column: 5)
!4949 = distinct !DILexicalBlock(scope: !4950, file: !555, line: 129, column: 7)
!4950 = distinct !DISubprogram(name: "get_charset_aliases", scope: !555, file: !555, line: 124, type: !4927, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !4951)
!4951 = !{!4952, !4953, !4954, !4955, !4956, !4958, !4959, !4960, !4961, !5002, !5003, !5004, !4938, !5005, !5009, !5010, !5011}
!4952 = !DILocalVariable(name: "cp", scope: !4950, file: !555, line: 126, type: !54)
!4953 = !DILocalVariable(name: "dir", scope: !4948, file: !555, line: 132, type: !54)
!4954 = !DILocalVariable(name: "base", scope: !4948, file: !555, line: 133, type: !54)
!4955 = !DILocalVariable(name: "file_name", scope: !4948, file: !555, line: 134, type: !43)
!4956 = !DILocalVariable(name: "dir_len", scope: !4957, file: !555, line: 144, type: !46)
!4957 = distinct !DILexicalBlock(scope: !4948, file: !555, line: 143, column: 7)
!4958 = !DILocalVariable(name: "base_len", scope: !4957, file: !555, line: 145, type: !46)
!4959 = !DILocalVariable(name: "add_slash", scope: !4957, file: !555, line: 146, type: !28)
!4960 = !DILocalVariable(name: "fd", scope: !4946, file: !555, line: 162, type: !28)
!4961 = !DILocalVariable(name: "fp", scope: !4944, file: !555, line: 178, type: !4962)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1067, line: 49, baseType: !4964)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1069, line: 241, size: 1728, elements: !4965)
!4965 = !{!4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4964, file: !1069, line: 242, baseType: !28, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4964, file: !1069, line: 247, baseType: !43, size: 64, offset: 64)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4964, file: !1069, line: 248, baseType: !43, size: 64, offset: 128)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4964, file: !1069, line: 249, baseType: !43, size: 64, offset: 192)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4964, file: !1069, line: 250, baseType: !43, size: 64, offset: 256)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4964, file: !1069, line: 251, baseType: !43, size: 64, offset: 320)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4964, file: !1069, line: 252, baseType: !43, size: 64, offset: 384)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4964, file: !1069, line: 253, baseType: !43, size: 64, offset: 448)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4964, file: !1069, line: 254, baseType: !43, size: 64, offset: 512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4964, file: !1069, line: 256, baseType: !43, size: 64, offset: 576)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4964, file: !1069, line: 257, baseType: !43, size: 64, offset: 640)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4964, file: !1069, line: 258, baseType: !43, size: 64, offset: 704)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4964, file: !1069, line: 260, baseType: !4979, size: 64, offset: 768)
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1069, line: 156, size: 192, elements: !4981)
!4981 = !{!4982, !4983, !4985}
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4980, file: !1069, line: 157, baseType: !4979, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4980, file: !1069, line: 158, baseType: !4984, size: 64, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4980, file: !1069, line: 162, baseType: !28, size: 32, offset: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4964, file: !1069, line: 262, baseType: !4984, size: 64, offset: 832)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4964, file: !1069, line: 264, baseType: !28, size: 32, offset: 896)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4964, file: !1069, line: 268, baseType: !28, size: 32, offset: 928)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4964, file: !1069, line: 270, baseType: !1095, size: 64, offset: 960)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4964, file: !1069, line: 274, baseType: !157, size: 16, offset: 1024)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4964, file: !1069, line: 275, baseType: !1099, size: 8, offset: 1040)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4964, file: !1069, line: 276, baseType: !1101, size: 8, offset: 1048)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4964, file: !1069, line: 280, baseType: !1103, size: 64, offset: 1088)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4964, file: !1069, line: 289, baseType: !1106, size: 64, offset: 1152)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4964, file: !1069, line: 297, baseType: !45, size: 64, offset: 1216)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4964, file: !1069, line: 298, baseType: !45, size: 64, offset: 1280)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4964, file: !1069, line: 299, baseType: !45, size: 64, offset: 1344)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4964, file: !1069, line: 300, baseType: !45, size: 64, offset: 1408)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4964, file: !1069, line: 302, baseType: !46, size: 64, offset: 1472)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4964, file: !1069, line: 303, baseType: !28, size: 32, offset: 1536)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4964, file: !1069, line: 305, baseType: !1114, size: 160, offset: 1568)
!5002 = !DILocalVariable(name: "res_ptr", scope: !4942, file: !555, line: 190, type: !43)
!5003 = !DILocalVariable(name: "res_size", scope: !4942, file: !555, line: 191, type: !46)
!5004 = !DILocalVariable(name: "c", scope: !4939, file: !555, line: 195, type: !28)
!5005 = !DILocalVariable(name: "buf2", scope: !4939, file: !555, line: 197, type: !5006)
!5006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 408, elements: !5007)
!5007 = !{!5008}
!5008 = !DISubrange(count: 51)
!5009 = !DILocalVariable(name: "l1", scope: !4939, file: !555, line: 198, type: !46)
!5010 = !DILocalVariable(name: "l2", scope: !4939, file: !555, line: 198, type: !46)
!5011 = !DILocalVariable(name: "old_res_ptr", scope: !4939, file: !555, line: 199, type: !43)
!5012 = !DILocation(line: 196, column: 28, scope: !4939, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 589, column: 18, scope: !4936)
!5014 = !DILocation(line: 197, column: 28, scope: !4939, inlinedAt: !5013)
!5015 = !DILocation(line: 403, column: 13, scope: !4926)
!5016 = !DILocation(line: 395, column: 15, scope: !4926)
!5017 = !DILocation(line: 584, column: 15, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4926, file: !555, line: 584, column: 7)
!5019 = !DILocation(line: 584, column: 7, scope: !4926)
!5020 = !DILocation(line: 128, column: 8, scope: !4950, inlinedAt: !5013)
!5021 = !DILocation(line: 126, column: 15, scope: !4950, inlinedAt: !5013)
!5022 = !DILocation(line: 129, column: 10, scope: !4949, inlinedAt: !5013)
!5023 = !DILocation(line: 129, column: 7, scope: !4950, inlinedAt: !5013)
!5024 = !DILocation(line: 138, column: 13, scope: !4948, inlinedAt: !5013)
!5025 = !DILocation(line: 132, column: 19, scope: !4948, inlinedAt: !5013)
!5026 = !DILocation(line: 139, column: 15, scope: !5027, inlinedAt: !5013)
!5027 = distinct !DILexicalBlock(scope: !4948, file: !555, line: 139, column: 11)
!5028 = !DILocation(line: 139, column: 23, scope: !5027, inlinedAt: !5013)
!5029 = !DILocation(line: 139, column: 26, scope: !5030, inlinedAt: !5013)
!5030 = !DILexicalBlockFile(scope: !5027, file: !555, discriminator: 1)
!5031 = !DILocation(line: 139, column: 33, scope: !5030, inlinedAt: !5013)
!5032 = !DILocation(line: 139, column: 11, scope: !5033, inlinedAt: !5013)
!5033 = !DILexicalBlockFile(scope: !4948, file: !555, discriminator: 1)
!5034 = !DILocation(line: 140, column: 9, scope: !5027, inlinedAt: !5013)
!5035 = !DILocation(line: 144, column: 26, scope: !4957, inlinedAt: !5013)
!5036 = !DILocation(line: 144, column: 16, scope: !4957, inlinedAt: !5013)
!5037 = !DILocation(line: 145, column: 16, scope: !4957, inlinedAt: !5013)
!5038 = !DILocation(line: 146, column: 34, scope: !4957, inlinedAt: !5013)
!5039 = !DILocation(line: 146, column: 38, scope: !4957, inlinedAt: !5013)
!5040 = !DILocation(line: 146, column: 42, scope: !5041, inlinedAt: !5013)
!5041 = !DILexicalBlockFile(scope: !4957, file: !555, discriminator: 1)
!5042 = !DILocation(line: 146, column: 41, scope: !5041, inlinedAt: !5013)
!5043 = !DILocation(line: 147, column: 48, scope: !4957, inlinedAt: !5013)
!5044 = !DILocation(line: 147, column: 46, scope: !4957, inlinedAt: !5013)
!5045 = !DILocation(line: 147, column: 69, scope: !4957, inlinedAt: !5013)
!5046 = !DILocation(line: 147, column: 30, scope: !4957, inlinedAt: !5013)
!5047 = !DILocation(line: 134, column: 13, scope: !4948, inlinedAt: !5013)
!5048 = !DILocation(line: 148, column: 13, scope: !4957, inlinedAt: !5013)
!5049 = !DILocation(line: 150, column: 13, scope: !5050, inlinedAt: !5013)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !555, line: 149, column: 11)
!5051 = distinct !DILexicalBlock(scope: !4957, file: !555, line: 148, column: 13)
!5052 = !DILocation(line: 151, column: 17, scope: !5050, inlinedAt: !5013)
!5053 = !DILocation(line: 152, column: 34, scope: !5054, inlinedAt: !5013)
!5054 = distinct !DILexicalBlock(scope: !5050, file: !555, line: 151, column: 17)
!5055 = !DILocation(line: 153, column: 41, scope: !5050, inlinedAt: !5013)
!5056 = !DILocation(line: 153, column: 13, scope: !5050, inlinedAt: !5013)
!5057 = !DILocation(line: 157, column: 11, scope: !4948, inlinedAt: !5013)
!5058 = !DILocation(line: 171, column: 16, scope: !4946, inlinedAt: !5013)
!5059 = !DILocation(line: 162, column: 15, scope: !4946, inlinedAt: !5013)
!5060 = !DILocation(line: 173, column: 18, scope: !4945, inlinedAt: !5013)
!5061 = !DILocation(line: 173, column: 15, scope: !4946, inlinedAt: !5013)
!5062 = !DILocation(line: 180, column: 20, scope: !4944, inlinedAt: !5013)
!5063 = !DILocation(line: 178, column: 21, scope: !4944, inlinedAt: !5013)
!5064 = !DILocation(line: 181, column: 22, scope: !4943, inlinedAt: !5013)
!5065 = !DILocation(line: 181, column: 19, scope: !4944, inlinedAt: !5013)
!5066 = !DILocation(line: 190, column: 25, scope: !4942, inlinedAt: !5013)
!5067 = !DILocation(line: 184, column: 19, scope: !5068, inlinedAt: !5013)
!5068 = distinct !DILexicalBlock(scope: !4943, file: !555, line: 182, column: 17)
!5069 = !DILocation(line: 186, column: 17, scope: !5068, inlinedAt: !5013)
!5070 = !DILocation(line: 191, column: 26, scope: !4942, inlinedAt: !5013)
!5071 = !DILocation(line: 196, column: 23, scope: !4939, inlinedAt: !5013)
!5072 = !DILocation(line: 197, column: 23, scope: !4939, inlinedAt: !5013)
!5073 = !DILocalVariable(name: "__fp", arg: 1, scope: !5074, file: !1157, line: 63, type: !4962)
!5074 = distinct !DISubprogram(name: "getc_unlocked", scope: !1157, file: !1157, line: 63, type: !5075, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!28, !4962}
!5077 = !{!5073}
!5078 = !DILocation(line: 63, column: 22, scope: !5074, inlinedAt: !5079)
!5079 = distinct !DILocation(line: 201, column: 27, scope: !4939, inlinedAt: !5013)
!5080 = !DILocation(line: 65, column: 10, scope: !5074, inlinedAt: !5079)
!5081 = !{!1167, !726, i64 8}
!5082 = !{!1167, !726, i64 16}
!5083 = !DILocation(line: 65, column: 10, scope: !5084, inlinedAt: !5079)
!5084 = !DILexicalBlockFile(scope: !5074, file: !1157, discriminator: 1)
!5085 = !DILocation(line: 65, column: 10, scope: !5086, inlinedAt: !5079)
!5086 = !DILexicalBlockFile(scope: !5074, file: !1157, discriminator: 2)
!5087 = !DILocation(line: 65, column: 10, scope: !5088, inlinedAt: !5079)
!5088 = !DILexicalBlockFile(scope: !5074, file: !1157, discriminator: 3)
!5089 = !DILocation(line: 195, column: 27, scope: !4939, inlinedAt: !5013)
!5090 = !DILocation(line: 202, column: 27, scope: !4939, inlinedAt: !5013)
!5091 = !DILocation(line: 63, column: 22, scope: !5074, inlinedAt: !5092)
!5092 = distinct !DILocation(line: 210, column: 33, scope: !5093, inlinedAt: !5013)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !555, line: 207, column: 25)
!5094 = distinct !DILexicalBlock(scope: !4939, file: !555, line: 206, column: 27)
!5095 = !DILocation(line: 65, column: 10, scope: !5074, inlinedAt: !5092)
!5096 = !DILocation(line: 65, column: 10, scope: !5084, inlinedAt: !5092)
!5097 = !DILocation(line: 65, column: 10, scope: !5086, inlinedAt: !5092)
!5098 = !DILocation(line: 65, column: 10, scope: !5088, inlinedAt: !5092)
!5099 = !DILocation(line: 210, column: 29, scope: !5100, inlinedAt: !5013)
!5100 = !DILexicalBlockFile(scope: !5093, file: !555, discriminator: 1)
!5101 = distinct !{!5101, !5102, !5103}
!5102 = !DILocation(line: 193, column: 19, scope: !4941)
!5103 = !DILocation(line: 241, column: 21, scope: !4941)
!5104 = !DILocation(line: 216, column: 23, scope: !4939, inlinedAt: !5013)
!5105 = !DILocation(line: 217, column: 27, scope: !5106, inlinedAt: !5013)
!5106 = distinct !DILexicalBlock(scope: !4939, file: !555, line: 217, column: 27)
!5107 = !DILocation(line: 217, column: 64, scope: !5106, inlinedAt: !5013)
!5108 = !DILocation(line: 217, column: 27, scope: !4939, inlinedAt: !5013)
!5109 = !DILocation(line: 219, column: 28, scope: !4939, inlinedAt: !5013)
!5110 = !DILocation(line: 198, column: 30, scope: !4939, inlinedAt: !5013)
!5111 = !DILocation(line: 220, column: 28, scope: !4939, inlinedAt: !5013)
!5112 = !DILocation(line: 198, column: 34, scope: !4939, inlinedAt: !5013)
!5113 = !DILocation(line: 199, column: 29, scope: !4939, inlinedAt: !5013)
!5114 = !DILocation(line: 222, column: 36, scope: !5115, inlinedAt: !5013)
!5115 = distinct !DILexicalBlock(scope: !4939, file: !555, line: 222, column: 27)
!5116 = !DILocation(line: 222, column: 27, scope: !4939, inlinedAt: !5013)
!5117 = !DILocation(line: 225, column: 63, scope: !5118, inlinedAt: !5013)
!5118 = distinct !DILexicalBlock(scope: !5115, file: !555, line: 223, column: 25)
!5119 = !DILocation(line: 225, column: 46, scope: !5118, inlinedAt: !5013)
!5120 = !DILocation(line: 226, column: 25, scope: !5118, inlinedAt: !5013)
!5121 = !DILocation(line: 229, column: 36, scope: !5122, inlinedAt: !5013)
!5122 = distinct !DILexicalBlock(scope: !5115, file: !555, line: 228, column: 25)
!5123 = !DILocation(line: 230, column: 73, scope: !5122, inlinedAt: !5013)
!5124 = !DILocation(line: 230, column: 46, scope: !5122, inlinedAt: !5013)
!5125 = !DILocation(line: 232, column: 35, scope: !5126, inlinedAt: !5013)
!5126 = distinct !DILexicalBlock(scope: !4939, file: !555, line: 232, column: 27)
!5127 = !DILocation(line: 232, column: 27, scope: !4939, inlinedAt: !5013)
!5128 = !DILocation(line: 236, column: 27, scope: !5129, inlinedAt: !5013)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !555, line: 233, column: 25)
!5130 = !DILocation(line: 237, column: 27, scope: !5129, inlinedAt: !5013)
!5131 = !DILocation(line: 239, column: 39, scope: !4939, inlinedAt: !5013)
!5132 = !DILocation(line: 239, column: 50, scope: !4939, inlinedAt: !5013)
!5133 = !DILocation(line: 239, column: 61, scope: !4939, inlinedAt: !5013)
!5134 = !DILocalVariable(name: "__dest", arg: 1, scope: !5135, file: !5136, line: 107, type: !5139)
!5135 = distinct !DISubprogram(name: "strcpy", scope: !5136, file: !5136, line: 107, type: !5137, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !211, variables: !5140)
!5136 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!43, !5139, !1144}
!5139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!5140 = !{!5134, !5141}
!5141 = !DILocalVariable(name: "__src", arg: 2, scope: !5135, file: !5136, line: 107, type: !1144)
!5142 = !DILocation(line: 107, column: 1, scope: !5135, inlinedAt: !5143)
!5143 = distinct !DILocation(line: 239, column: 23, scope: !4939, inlinedAt: !5013)
!5144 = !DILocation(line: 109, column: 49, scope: !5135, inlinedAt: !5143)
!5145 = !DILocation(line: 109, column: 10, scope: !5135, inlinedAt: !5143)
!5146 = !DILocation(line: 107, column: 1, scope: !5135, inlinedAt: !5147)
!5147 = distinct !DILocation(line: 240, column: 23, scope: !4939, inlinedAt: !5013)
!5148 = !DILocation(line: 109, column: 49, scope: !5135, inlinedAt: !5147)
!5149 = !DILocation(line: 109, column: 10, scope: !5135, inlinedAt: !5147)
!5150 = !DILocation(line: 241, column: 21, scope: !4940, inlinedAt: !5013)
!5151 = !DILocation(line: 242, column: 19, scope: !4942, inlinedAt: !5013)
!5152 = !DILocation(line: 243, column: 32, scope: !5153, inlinedAt: !5013)
!5153 = distinct !DILexicalBlock(scope: !4942, file: !555, line: 243, column: 23)
!5154 = !DILocation(line: 243, column: 23, scope: !4942, inlinedAt: !5013)
!5155 = !DILocation(line: 247, column: 33, scope: !5156, inlinedAt: !5013)
!5156 = distinct !DILexicalBlock(scope: !5153, file: !555, line: 246, column: 21)
!5157 = !DILocation(line: 247, column: 45, scope: !5156, inlinedAt: !5013)
!5158 = !DILocation(line: 253, column: 11, scope: !4946, inlinedAt: !5013)
!5159 = !DILocation(line: 377, column: 23, scope: !4948, inlinedAt: !5013)
!5160 = !DILocation(line: 378, column: 5, scope: !4948, inlinedAt: !5013)
!5161 = !DILocation(line: 396, column: 15, scope: !4926)
!5162 = !DILocation(line: 590, column: 8, scope: !4935)
!5163 = !DILocation(line: 590, column: 17, scope: !4935)
!5164 = !DILocation(line: 589, column: 3, scope: !5165)
!5165 = !DILexicalBlockFile(scope: !4936, file: !555, discriminator: 1)
!5166 = !DILocation(line: 592, column: 9, scope: !4933)
!5167 = !DILocation(line: 592, column: 35, scope: !4934)
!5168 = !DILocation(line: 593, column: 9, scope: !4934)
!5169 = !DILocation(line: 593, column: 24, scope: !5170)
!5170 = !DILexicalBlockFile(scope: !4934, file: !555, discriminator: 1)
!5171 = !DILocation(line: 593, column: 31, scope: !5170)
!5172 = !DILocation(line: 593, column: 34, scope: !5173)
!5173 = !DILexicalBlockFile(scope: !4934, file: !555, discriminator: 2)
!5174 = !DILocation(line: 593, column: 45, scope: !5173)
!5175 = !DILocation(line: 592, column: 9, scope: !5176)
!5176 = !DILexicalBlockFile(scope: !4935, file: !555, discriminator: 1)
!5177 = !DILocation(line: 595, column: 29, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !4934, file: !555, line: 594, column: 7)
!5179 = !DILocation(line: 595, column: 27, scope: !5178)
!5180 = !DILocation(line: 595, column: 46, scope: !5178)
!5181 = !DILocation(line: 596, column: 9, scope: !5178)
!5182 = !DILocation(line: 591, column: 19, scope: !4935)
!5183 = !DILocation(line: 591, column: 36, scope: !4935)
!5184 = !DILocation(line: 591, column: 16, scope: !4935)
!5185 = !DILocation(line: 591, column: 52, scope: !5176)
!5186 = !DILocation(line: 591, column: 69, scope: !4935)
!5187 = !DILocation(line: 591, column: 49, scope: !4935)
!5188 = distinct !{!5188, !5189, !5190}
!5189 = !DILocation(line: 589, column: 3, scope: !4936)
!5190 = !DILocation(line: 597, column: 7, scope: !4936)
!5191 = !DILocation(line: 602, column: 7, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !4926, file: !555, line: 602, column: 7)
!5193 = !DILocation(line: 602, column: 18, scope: !5192)
!5194 = !DILocation(line: 602, column: 7, scope: !4926)
!5195 = !DILocation(line: 612, column: 3, scope: !4926)
!5196 = distinct !DISubprogram(name: "mkancesdirs", scope: !5197, file: !5197, line: 65, type: !5198, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !679, variables: !5201)
!5197 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!1253, !43, !5200, !791, !45}
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!5201 = !{!5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5217, !5218}
!5202 = !DILocalVariable(name: "file", arg: 1, scope: !5196, file: !5197, line: 65, type: !43)
!5203 = !DILocalVariable(name: "wd", arg: 2, scope: !5196, file: !5197, line: 65, type: !5200)
!5204 = !DILocalVariable(name: "make_dir", arg: 3, scope: !5196, file: !5197, line: 66, type: !791)
!5205 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !5196, file: !5197, line: 67, type: !45)
!5206 = !DILocalVariable(name: "sep", scope: !5196, file: !5197, line: 72, type: !43)
!5207 = !DILocalVariable(name: "component", scope: !5196, file: !5197, line: 76, type: !43)
!5208 = !DILocalVariable(name: "p", scope: !5196, file: !5197, line: 78, type: !43)
!5209 = !DILocalVariable(name: "c", scope: !5196, file: !5197, line: 79, type: !44)
!5210 = !DILocalVariable(name: "made_dir", scope: !5196, file: !5197, line: 80, type: !116)
!5211 = !DILocalVariable(name: "make_dir_errno", scope: !5212, file: !5197, line: 100, type: !28)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !5197, line: 99, column: 11)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !5197, line: 98, column: 13)
!5214 = distinct !DILexicalBlock(scope: !5215, file: !5197, line: 95, column: 7)
!5215 = distinct !DILexicalBlock(scope: !5216, file: !5197, line: 94, column: 14)
!5216 = distinct !DILexicalBlock(scope: !5196, file: !5197, line: 89, column: 9)
!5217 = !DILocalVariable(name: "savewd_chdir_options", scope: !5212, file: !5197, line: 101, type: !28)
!5218 = !DILocalVariable(name: "chdir_result", scope: !5212, file: !5197, line: 102, type: !28)
!5219 = !DILocation(line: 65, column: 20, scope: !5196)
!5220 = !DILocation(line: 65, column: 41, scope: !5196)
!5221 = !DILocation(line: 66, column: 20, scope: !5196)
!5222 = !DILocation(line: 67, column: 20, scope: !5196)
!5223 = !DILocation(line: 72, column: 9, scope: !5196)
!5224 = !DILocation(line: 76, column: 9, scope: !5196)
!5225 = !DILocation(line: 78, column: 9, scope: !5196)
!5226 = !DILocation(line: 80, column: 8, scope: !5196)
!5227 = !DILocation(line: 88, column: 3, scope: !5196)
!5228 = !DILocation(line: 88, column: 15, scope: !5229)
!5229 = !DILexicalBlockFile(scope: !5196, file: !5197, discriminator: 1)
!5230 = !DILocation(line: 79, column: 8, scope: !5196)
!5231 = !DILocation(line: 88, column: 3, scope: !5229)
!5232 = !DILocation(line: 88, column: 17, scope: !5229)
!5233 = !DILocation(line: 89, column: 9, scope: !5216)
!5234 = !DILocation(line: 89, column: 9, scope: !5196)
!5235 = !DILocation(line: 91, column: 13, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5216, file: !5197, line: 90, column: 7)
!5237 = !DILocation(line: 94, column: 29, scope: !5238)
!5238 = !DILexicalBlockFile(scope: !5215, file: !5197, discriminator: 1)
!5239 = !DILocation(line: 94, column: 32, scope: !5238)
!5240 = !DILocation(line: 94, column: 26, scope: !5215)
!5241 = distinct !{!5241, !5227, !5242}
!5242 = !DILocation(line: 138, column: 7, scope: !5196)
!5243 = !DILocation(line: 98, column: 20, scope: !5213)
!5244 = !DILocation(line: 98, column: 32, scope: !5213)
!5245 = !DILocation(line: 98, column: 37, scope: !5213)
!5246 = !DILocation(line: 98, column: 40, scope: !5247)
!5247 = !DILexicalBlockFile(scope: !5213, file: !5197, discriminator: 1)
!5248 = !DILocation(line: 98, column: 53, scope: !5247)
!5249 = !DILocation(line: 98, column: 13, scope: !5250)
!5250 = !DILexicalBlockFile(scope: !5214, file: !5197, discriminator: 1)
!5251 = !DILocation(line: 100, column: 17, scope: !5212)
!5252 = !DILocation(line: 101, column: 17, scope: !5212)
!5253 = !DILocation(line: 106, column: 18, scope: !5212)
!5254 = !DILocation(line: 111, column: 17, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5212, file: !5197, line: 110, column: 17)
!5256 = !DILocation(line: 110, column: 33, scope: !5255)
!5257 = !DILocation(line: 111, column: 20, scope: !5258)
!5258 = !DILexicalBlockFile(scope: !5255, file: !5197, discriminator: 1)
!5259 = !DILocation(line: 111, column: 33, scope: !5258)
!5260 = !DILocation(line: 111, column: 40, scope: !5258)
!5261 = !DILocation(line: 111, column: 43, scope: !5262)
!5262 = !DILexicalBlockFile(scope: !5255, file: !5197, discriminator: 2)
!5263 = !DILocation(line: 111, column: 56, scope: !5262)
!5264 = !DILocation(line: 110, column: 17, scope: !5265)
!5265 = !DILexicalBlockFile(scope: !5212, file: !5197, discriminator: 1)
!5266 = !DILocation(line: 113, column: 22, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5255, file: !5197, line: 113, column: 22)
!5268 = !DILocation(line: 113, column: 63, scope: !5267)
!5269 = !DILocation(line: 113, column: 22, scope: !5255)
!5270 = !DILocation(line: 114, column: 32, scope: !5267)
!5271 = !DILocation(line: 114, column: 15, scope: !5267)
!5272 = !DILocation(line: 118, column: 17, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5212, file: !5197, line: 118, column: 17)
!5274 = !DILocation(line: 118, column: 17, scope: !5212)
!5275 = !DILocation(line: 122, column: 15, scope: !5212)
!5276 = !DILocation(line: 102, column: 17, scope: !5212)
!5277 = !DILocation(line: 126, column: 17, scope: !5212)
!5278 = !DILocation(line: 127, column: 20, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5212, file: !5197, line: 126, column: 17)
!5280 = !DILocation(line: 129, column: 30, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5212, file: !5197, line: 129, column: 17)
!5282 = !DILocation(line: 129, column: 17, scope: !5212)
!5283 = !DILocation(line: 131, column: 36, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !5197, line: 131, column: 21)
!5285 = distinct !DILexicalBlock(scope: !5281, file: !5197, line: 130, column: 15)
!5286 = !DILocation(line: 131, column: 41, scope: !5284)
!5287 = !DILocation(line: 131, column: 44, scope: !5288)
!5288 = !DILexicalBlockFile(scope: !5284, file: !5197, discriminator: 1)
!5289 = !DILocation(line: 131, column: 50, scope: !5288)
!5290 = !DILocation(line: 131, column: 21, scope: !5291)
!5291 = !DILexicalBlockFile(scope: !5285, file: !5197, discriminator: 1)
!5292 = !DILocation(line: 132, column: 25, scope: !5284)
!5293 = !DILocation(line: 132, column: 19, scope: !5284)
!5294 = !DILocation(line: 133, column: 24, scope: !5285)
!5295 = !DILocation(line: 140, column: 20, scope: !5196)
!5296 = !DILocation(line: 140, column: 3, scope: !5196)
!5297 = !DILocation(line: 141, column: 1, scope: !5196)
!5298 = distinct !DISubprogram(name: "dirchownmod", scope: !5299, file: !5299, line: 61, type: !5300, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !692, variables: !5302)
!5299 = !DIFile(filename: "lib/dirchownmod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!28, !28, !54, !695, !56, !59, !695, !695}
!5302 = !{!5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5332, !5333, !5336, !5339, !5342}
!5303 = !DILocalVariable(name: "fd", arg: 1, scope: !5298, file: !5299, line: 61, type: !28)
!5304 = !DILocalVariable(name: "dir", arg: 2, scope: !5298, file: !5299, line: 61, type: !54)
!5305 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !5298, file: !5299, line: 61, type: !695)
!5306 = !DILocalVariable(name: "owner", arg: 4, scope: !5298, file: !5299, line: 62, type: !56)
!5307 = !DILocalVariable(name: "group", arg: 5, scope: !5298, file: !5299, line: 62, type: !59)
!5308 = !DILocalVariable(name: "mode", arg: 6, scope: !5298, file: !5299, line: 63, type: !695)
!5309 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !5298, file: !5299, line: 63, type: !695)
!5310 = !DILocalVariable(name: "st", scope: !5298, file: !5299, line: 65, type: !5311)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1267, line: 46, size: 1152, elements: !5312)
!5312 = !{!5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5321, !5322, !5323, !5324, !5329, !5330, !5331}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5311, file: !1267, line: 48, baseType: !1270, size: 64)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5311, file: !1267, line: 53, baseType: !1272, size: 64, offset: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5311, file: !1267, line: 61, baseType: !1274, size: 64, offset: 128)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5311, file: !1267, line: 62, baseType: !696, size: 32, offset: 192)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5311, file: !1267, line: 64, baseType: !57, size: 32, offset: 224)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5311, file: !1267, line: 65, baseType: !60, size: 32, offset: 256)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !5311, file: !1267, line: 67, baseType: !28, size: 32, offset: 288)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5311, file: !1267, line: 69, baseType: !1270, size: 64, offset: 320)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5311, file: !1267, line: 74, baseType: !1095, size: 64, offset: 384)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5311, file: !1267, line: 78, baseType: !1282, size: 64, offset: 448)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5311, file: !1267, line: 80, baseType: !1284, size: 64, offset: 512)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5311, file: !1267, line: 91, baseType: !5325, size: 128, offset: 576)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1287, line: 8, size: 128, elements: !5326)
!5326 = !{!5327, !5328}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5325, file: !1287, line: 10, baseType: !1290, size: 64)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5325, file: !1287, line: 11, baseType: !1292, size: 64, offset: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5311, file: !1267, line: 92, baseType: !5325, size: 128, offset: 704)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5311, file: !1267, line: 93, baseType: !5325, size: 128, offset: 832)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !5311, file: !1267, line: 106, baseType: !1296, size: 192, offset: 960)
!5332 = !DILocalVariable(name: "result", scope: !5298, file: !5299, line: 66, type: !28)
!5333 = !DILocalVariable(name: "dir_mode", scope: !5334, file: !5299, line: 70, type: !695)
!5334 = distinct !DILexicalBlock(scope: !5335, file: !5299, line: 69, column: 5)
!5335 = distinct !DILexicalBlock(scope: !5298, file: !5299, line: 68, column: 7)
!5336 = !DILocalVariable(name: "indeterminate", scope: !5337, file: !5299, line: 87, type: !695)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !5299, line: 82, column: 9)
!5338 = distinct !DILexicalBlock(scope: !5334, file: !5299, line: 76, column: 11)
!5339 = !DILocalVariable(name: "chmod_mode", scope: !5340, file: !5299, line: 117, type: !695)
!5340 = distinct !DILexicalBlock(scope: !5341, file: !5299, line: 116, column: 13)
!5341 = distinct !DILexicalBlock(scope: !5337, file: !5299, line: 115, column: 15)
!5342 = !DILocalVariable(name: "e", scope: !5343, file: !5299, line: 134, type: !28)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !5299, line: 133, column: 9)
!5344 = distinct !DILexicalBlock(scope: !5345, file: !5299, line: 130, column: 11)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !5299, line: 129, column: 5)
!5346 = distinct !DILexicalBlock(scope: !5298, file: !5299, line: 128, column: 7)
!5347 = !DILocation(line: 61, column: 18, scope: !5298)
!5348 = !DILocation(line: 61, column: 34, scope: !5298)
!5349 = !DILocation(line: 61, column: 46, scope: !5298)
!5350 = !DILocation(line: 62, column: 20, scope: !5298)
!5351 = !DILocation(line: 62, column: 33, scope: !5298)
!5352 = !DILocation(line: 63, column: 21, scope: !5298)
!5353 = !DILocation(line: 63, column: 34, scope: !5298)
!5354 = !DILocation(line: 65, column: 3, scope: !5298)
!5355 = !DILocation(line: 66, column: 20, scope: !5298)
!5356 = !DILocation(line: 65, column: 15, scope: !5298)
!5357 = !DILocation(line: 66, column: 17, scope: !5298)
!5358 = !DILocalVariable(name: "__path", arg: 1, scope: !5359, file: !1393, line: 449, type: !54)
!5359 = distinct !DISubprogram(name: "stat", scope: !1393, file: !1393, line: 449, type: !5360, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !692, variables: !5363)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!28, !54, !5362}
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5363 = !{!5358, !5364}
!5364 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !5359, file: !1393, line: 449, type: !5362)
!5365 = !DILocation(line: 449, column: 1, scope: !5359, inlinedAt: !5366)
!5366 = distinct !DILocation(line: 66, column: 26, scope: !5367)
!5367 = !DILexicalBlockFile(scope: !5298, file: !5299, discriminator: 1)
!5368 = !DILocation(line: 451, column: 10, scope: !5359, inlinedAt: !5366)
!5369 = !DILocation(line: 66, column: 17, scope: !5367)
!5370 = !DILocalVariable(name: "__fd", arg: 1, scope: !5371, file: !1393, line: 463, type: !28)
!5371 = distinct !DISubprogram(name: "fstat", scope: !1393, file: !1393, line: 463, type: !5372, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !692, variables: !5374)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!28, !28, !5362}
!5374 = !{!5370, !5375}
!5375 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !5371, file: !1393, line: 463, type: !5362)
!5376 = !DILocation(line: 463, column: 1, scope: !5371, inlinedAt: !5377)
!5377 = distinct !DILocation(line: 66, column: 44, scope: !5378)
!5378 = !DILexicalBlockFile(scope: !5298, file: !5299, discriminator: 2)
!5379 = !DILocation(line: 465, column: 10, scope: !5371, inlinedAt: !5377)
!5380 = !DILocation(line: 66, column: 17, scope: !5378)
!5381 = !DILocation(line: 66, column: 17, scope: !5382)
!5382 = !DILexicalBlockFile(scope: !5298, file: !5299, discriminator: 3)
!5383 = !DILocation(line: 66, column: 7, scope: !5298)
!5384 = !DILocation(line: 68, column: 14, scope: !5335)
!5385 = !DILocation(line: 68, column: 7, scope: !5298)
!5386 = !DILocation(line: 70, column: 28, scope: !5334)
!5387 = !DILocation(line: 70, column: 14, scope: !5334)
!5388 = !DILocation(line: 76, column: 13, scope: !5338)
!5389 = !DILocation(line: 76, column: 11, scope: !5334)
!5390 = !DILocation(line: 78, column: 11, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5338, file: !5299, line: 77, column: 9)
!5392 = !DILocation(line: 78, column: 17, scope: !5391)
!5393 = !DILocation(line: 80, column: 9, scope: !5391)
!5394 = !DILocation(line: 87, column: 18, scope: !5337)
!5395 = !DILocation(line: 94, column: 22, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5337, file: !5299, line: 94, column: 15)
!5397 = !DILocation(line: 94, column: 36, scope: !5396)
!5398 = !DILocation(line: 94, column: 51, scope: !5399)
!5399 = !DILexicalBlockFile(scope: !5396, file: !5299, discriminator: 1)
!5400 = !{!1406, !820, i64 28}
!5401 = !DILocation(line: 94, column: 45, scope: !5399)
!5402 = !DILocation(line: 95, column: 15, scope: !5396)
!5403 = !DILocation(line: 95, column: 25, scope: !5399)
!5404 = !DILocation(line: 95, column: 39, scope: !5399)
!5405 = !DILocation(line: 95, column: 54, scope: !5406)
!5406 = !DILexicalBlockFile(scope: !5396, file: !5299, discriminator: 2)
!5407 = !{!1406, !820, i64 32}
!5408 = !DILocation(line: 95, column: 48, scope: !5406)
!5409 = !DILocation(line: 94, column: 15, scope: !5410)
!5410 = !DILexicalBlockFile(scope: !5337, file: !5299, discriminator: 2)
!5411 = !DILocation(line: 97, column: 27, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5396, file: !5299, line: 96, column: 13)
!5413 = !DILocation(line: 97, column: 25, scope: !5412)
!5414 = !DILocation(line: 98, column: 27, scope: !5412)
!5415 = !DILocation(line: 97, column: 25, scope: !5416)
!5416 = !DILexicalBlockFile(scope: !5412, file: !5299, discriminator: 1)
!5417 = !DILocation(line: 99, column: 38, scope: !5412)
!5418 = !DILocation(line: 99, column: 27, scope: !5412)
!5419 = !DILocation(line: 100, column: 27, scope: !5412)
!5420 = !DILocation(line: 99, column: 27, scope: !5416)
!5421 = !DILocation(line: 101, column: 27, scope: !5412)
!5422 = !DILocation(line: 99, column: 27, scope: !5423)
!5423 = !DILexicalBlockFile(scope: !5412, file: !5299, discriminator: 2)
!5424 = !DILocation(line: 97, column: 25, scope: !5425)
!5425 = !DILexicalBlockFile(scope: !5412, file: !5299, discriminator: 3)
!5426 = !DILocation(line: 108, column: 26, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5412, file: !5299, line: 108, column: 19)
!5428 = !DILocation(line: 108, column: 44, scope: !5429)
!5429 = !DILexicalBlockFile(scope: !5427, file: !5299, discriminator: 1)
!5430 = !DILocation(line: 108, column: 31, scope: !5427)
!5431 = !DILocation(line: 109, column: 42, scope: !5427)
!5432 = !DILocation(line: 115, column: 22, scope: !5341)
!5433 = !DILocation(line: 115, column: 27, scope: !5341)
!5434 = !DILocation(line: 115, column: 42, scope: !5435)
!5435 = !DILexicalBlockFile(scope: !5341, file: !5299, discriminator: 1)
!5436 = !DILocation(line: 115, column: 50, scope: !5435)
!5437 = !DILocation(line: 115, column: 67, scope: !5435)
!5438 = !DILocation(line: 115, column: 15, scope: !5439)
!5439 = !DILexicalBlockFile(scope: !5337, file: !5299, discriminator: 1)
!5440 = !DILocation(line: 118, column: 34, scope: !5340)
!5441 = !DILocation(line: 118, column: 52, scope: !5340)
!5442 = !DILocation(line: 118, column: 22, scope: !5340)
!5443 = !DILocation(line: 117, column: 22, scope: !5340)
!5444 = !DILocation(line: 119, column: 42, scope: !5340)
!5445 = !DILocation(line: 119, column: 25, scope: !5340)
!5446 = !DILocation(line: 120, column: 27, scope: !5340)
!5447 = !DILocation(line: 128, column: 7, scope: !5298)
!5448 = !DILocation(line: 122, column: 27, scope: !5340)
!5449 = !DILocation(line: 128, column: 9, scope: !5346)
!5450 = !DILocation(line: 130, column: 18, scope: !5344)
!5451 = !DILocation(line: 130, column: 11, scope: !5345)
!5452 = !DILocation(line: 131, column: 18, scope: !5344)
!5453 = !DILocation(line: 131, column: 9, scope: !5344)
!5454 = !DILocation(line: 134, column: 19, scope: !5343)
!5455 = !DILocation(line: 134, column: 15, scope: !5343)
!5456 = !DILocation(line: 135, column: 11, scope: !5343)
!5457 = !DILocation(line: 136, column: 17, scope: !5343)
!5458 = !DILocation(line: 141, column: 1, scope: !5298)
!5459 = !DILocation(line: 140, column: 3, scope: !5298)
!5460 = distinct !DISubprogram(name: "fd_safer", scope: !5461, file: !5461, line: 37, type: !5462, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !697, variables: !5464)
!5461 = !DIFile(filename: "lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!28, !28}
!5464 = !{!5465, !5466, !5469}
!5465 = !DILocalVariable(name: "fd", arg: 1, scope: !5460, file: !5461, line: 37, type: !28)
!5466 = !DILocalVariable(name: "f", scope: !5467, file: !5461, line: 41, type: !28)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !5461, line: 40, column: 5)
!5468 = distinct !DILexicalBlock(scope: !5460, file: !5461, line: 39, column: 7)
!5469 = !DILocalVariable(name: "e", scope: !5467, file: !5461, line: 42, type: !28)
!5470 = !DILocation(line: 37, column: 15, scope: !5460)
!5471 = !DILocation(line: 39, column: 26, scope: !5468)
!5472 = !DILocation(line: 41, column: 15, scope: !5467)
!5473 = !DILocation(line: 41, column: 11, scope: !5467)
!5474 = !DILocation(line: 42, column: 15, scope: !5467)
!5475 = !DILocation(line: 42, column: 11, scope: !5467)
!5476 = !DILocation(line: 43, column: 7, scope: !5467)
!5477 = !DILocation(line: 44, column: 13, scope: !5467)
!5478 = !DILocation(line: 46, column: 5, scope: !5467)
!5479 = !DILocation(line: 48, column: 3, scope: !5460)
!5480 = distinct !DISubprogram(name: "rpl_fclose", scope: !5481, file: !5481, line: 56, type: !5482, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !699, variables: !5524)
!5481 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!28, !5484}
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1067, line: 49, baseType: !5486)
!5486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1069, line: 241, size: 1728, elements: !5487)
!5487 = !{!5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523}
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5486, file: !1069, line: 242, baseType: !28, size: 32)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5486, file: !1069, line: 247, baseType: !43, size: 64, offset: 64)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5486, file: !1069, line: 248, baseType: !43, size: 64, offset: 128)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5486, file: !1069, line: 249, baseType: !43, size: 64, offset: 192)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5486, file: !1069, line: 250, baseType: !43, size: 64, offset: 256)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5486, file: !1069, line: 251, baseType: !43, size: 64, offset: 320)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5486, file: !1069, line: 252, baseType: !43, size: 64, offset: 384)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5486, file: !1069, line: 253, baseType: !43, size: 64, offset: 448)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5486, file: !1069, line: 254, baseType: !43, size: 64, offset: 512)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5486, file: !1069, line: 256, baseType: !43, size: 64, offset: 576)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5486, file: !1069, line: 257, baseType: !43, size: 64, offset: 640)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5486, file: !1069, line: 258, baseType: !43, size: 64, offset: 704)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5486, file: !1069, line: 260, baseType: !5501, size: 64, offset: 768)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1069, line: 156, size: 192, elements: !5503)
!5503 = !{!5504, !5505, !5507}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5502, file: !1069, line: 157, baseType: !5501, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5502, file: !1069, line: 158, baseType: !5506, size: 64, offset: 64)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5502, file: !1069, line: 162, baseType: !28, size: 32, offset: 128)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5486, file: !1069, line: 262, baseType: !5506, size: 64, offset: 832)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5486, file: !1069, line: 264, baseType: !28, size: 32, offset: 896)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5486, file: !1069, line: 268, baseType: !28, size: 32, offset: 928)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5486, file: !1069, line: 270, baseType: !1095, size: 64, offset: 960)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5486, file: !1069, line: 274, baseType: !157, size: 16, offset: 1024)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5486, file: !1069, line: 275, baseType: !1099, size: 8, offset: 1040)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5486, file: !1069, line: 276, baseType: !1101, size: 8, offset: 1048)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5486, file: !1069, line: 280, baseType: !1103, size: 64, offset: 1088)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5486, file: !1069, line: 289, baseType: !1106, size: 64, offset: 1152)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5486, file: !1069, line: 297, baseType: !45, size: 64, offset: 1216)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5486, file: !1069, line: 298, baseType: !45, size: 64, offset: 1280)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5486, file: !1069, line: 299, baseType: !45, size: 64, offset: 1344)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5486, file: !1069, line: 300, baseType: !45, size: 64, offset: 1408)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5486, file: !1069, line: 302, baseType: !46, size: 64, offset: 1472)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5486, file: !1069, line: 303, baseType: !28, size: 32, offset: 1536)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5486, file: !1069, line: 305, baseType: !1114, size: 160, offset: 1568)
!5524 = !{!5525, !5526, !5527, !5528}
!5525 = !DILocalVariable(name: "fp", arg: 1, scope: !5480, file: !5481, line: 56, type: !5484)
!5526 = !DILocalVariable(name: "saved_errno", scope: !5480, file: !5481, line: 58, type: !28)
!5527 = !DILocalVariable(name: "fd", scope: !5480, file: !5481, line: 59, type: !28)
!5528 = !DILocalVariable(name: "result", scope: !5480, file: !5481, line: 60, type: !28)
!5529 = !DILocation(line: 56, column: 19, scope: !5480)
!5530 = !DILocation(line: 58, column: 7, scope: !5480)
!5531 = !DILocation(line: 60, column: 7, scope: !5480)
!5532 = !DILocation(line: 63, column: 8, scope: !5480)
!5533 = !DILocation(line: 59, column: 7, scope: !5480)
!5534 = !DILocation(line: 64, column: 10, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5480, file: !5481, line: 64, column: 7)
!5536 = !DILocation(line: 64, column: 7, scope: !5480)
!5537 = !DILocation(line: 65, column: 12, scope: !5535)
!5538 = !DILocation(line: 65, column: 5, scope: !5535)
!5539 = !DILocation(line: 70, column: 9, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5480, file: !5481, line: 70, column: 7)
!5541 = !DILocation(line: 70, column: 23, scope: !5540)
!5542 = !DILocation(line: 70, column: 33, scope: !5543)
!5543 = !DILexicalBlockFile(scope: !5540, file: !5481, discriminator: 1)
!5544 = !DILocation(line: 70, column: 26, scope: !5545)
!5545 = !DILexicalBlockFile(scope: !5540, file: !5481, discriminator: 3)
!5546 = !DILocation(line: 70, column: 59, scope: !5543)
!5547 = !DILocation(line: 71, column: 7, scope: !5540)
!5548 = !DILocation(line: 71, column: 10, scope: !5543)
!5549 = !DILocation(line: 70, column: 7, scope: !5550)
!5550 = !DILexicalBlockFile(scope: !5480, file: !5481, discriminator: 2)
!5551 = !DILocation(line: 98, column: 12, scope: !5480)
!5552 = !DILocation(line: 103, column: 7, scope: !5480)
!5553 = !DILocation(line: 72, column: 19, scope: !5540)
!5554 = !DILocation(line: 103, column: 19, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5480, file: !5481, line: 103, column: 7)
!5556 = !DILocation(line: 105, column: 13, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5555, file: !5481, line: 104, column: 5)
!5558 = !DILocation(line: 107, column: 5, scope: !5557)
!5559 = !DILocation(line: 110, column: 1, scope: !5480)
!5560 = distinct !DISubprogram(name: "rpl_fflush", scope: !5561, file: !5561, line: 127, type: !5562, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !5604)
!5561 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!28, !5564}
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1067, line: 49, baseType: !5566)
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1069, line: 241, size: 1728, elements: !5567)
!5567 = !{!5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5566, file: !1069, line: 242, baseType: !28, size: 32)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5566, file: !1069, line: 247, baseType: !43, size: 64, offset: 64)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5566, file: !1069, line: 248, baseType: !43, size: 64, offset: 128)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5566, file: !1069, line: 249, baseType: !43, size: 64, offset: 192)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5566, file: !1069, line: 250, baseType: !43, size: 64, offset: 256)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5566, file: !1069, line: 251, baseType: !43, size: 64, offset: 320)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5566, file: !1069, line: 252, baseType: !43, size: 64, offset: 384)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5566, file: !1069, line: 253, baseType: !43, size: 64, offset: 448)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5566, file: !1069, line: 254, baseType: !43, size: 64, offset: 512)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5566, file: !1069, line: 256, baseType: !43, size: 64, offset: 576)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5566, file: !1069, line: 257, baseType: !43, size: 64, offset: 640)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5566, file: !1069, line: 258, baseType: !43, size: 64, offset: 704)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5566, file: !1069, line: 260, baseType: !5581, size: 64, offset: 768)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1069, line: 156, size: 192, elements: !5583)
!5583 = !{!5584, !5585, !5587}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5582, file: !1069, line: 157, baseType: !5581, size: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5582, file: !1069, line: 158, baseType: !5586, size: 64, offset: 64)
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 64)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5582, file: !1069, line: 162, baseType: !28, size: 32, offset: 128)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5566, file: !1069, line: 262, baseType: !5586, size: 64, offset: 832)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5566, file: !1069, line: 264, baseType: !28, size: 32, offset: 896)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5566, file: !1069, line: 268, baseType: !28, size: 32, offset: 928)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5566, file: !1069, line: 270, baseType: !1095, size: 64, offset: 960)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5566, file: !1069, line: 274, baseType: !157, size: 16, offset: 1024)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5566, file: !1069, line: 275, baseType: !1099, size: 8, offset: 1040)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5566, file: !1069, line: 276, baseType: !1101, size: 8, offset: 1048)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5566, file: !1069, line: 280, baseType: !1103, size: 64, offset: 1088)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5566, file: !1069, line: 289, baseType: !1106, size: 64, offset: 1152)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5566, file: !1069, line: 297, baseType: !45, size: 64, offset: 1216)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5566, file: !1069, line: 298, baseType: !45, size: 64, offset: 1280)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5566, file: !1069, line: 299, baseType: !45, size: 64, offset: 1344)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5566, file: !1069, line: 300, baseType: !45, size: 64, offset: 1408)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5566, file: !1069, line: 302, baseType: !46, size: 64, offset: 1472)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5566, file: !1069, line: 303, baseType: !28, size: 32, offset: 1536)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5566, file: !1069, line: 305, baseType: !1114, size: 160, offset: 1568)
!5604 = !{!5605}
!5605 = !DILocalVariable(name: "stream", arg: 1, scope: !5560, file: !5561, line: 127, type: !5564)
!5606 = !DILocation(line: 127, column: 19, scope: !5560)
!5607 = !DILocation(line: 148, column: 14, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5560, file: !5561, line: 148, column: 7)
!5609 = !DILocation(line: 148, column: 22, scope: !5608)
!5610 = !DILocation(line: 148, column: 27, scope: !5611)
!5611 = !DILexicalBlockFile(scope: !5608, file: !5561, discriminator: 1)
!5612 = !DILocation(line: 148, column: 7, scope: !5613)
!5613 = !DILexicalBlockFile(scope: !5560, file: !5561, discriminator: 1)
!5614 = !DILocation(line: 149, column: 12, scope: !5608)
!5615 = !DILocation(line: 149, column: 5, scope: !5608)
!5616 = !DILocalVariable(name: "fp", arg: 1, scope: !5617, file: !5561, line: 40, type: !5564)
!5617 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5561, file: !5561, line: 40, type: !5618, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !5620)
!5618 = !DISubroutineType(types: !5619)
!5619 = !{null, !5564}
!5620 = !{!5616}
!5621 = !DILocation(line: 40, column: 48, scope: !5617, inlinedAt: !5622)
!5622 = distinct !DILocation(line: 153, column: 3, scope: !5560)
!5623 = !DILocation(line: 42, column: 11, scope: !5624, inlinedAt: !5622)
!5624 = distinct !DILexicalBlock(scope: !5617, file: !5561, line: 42, column: 7)
!5625 = !DILocation(line: 42, column: 18, scope: !5624, inlinedAt: !5622)
!5626 = !DILocation(line: 42, column: 7, scope: !5617, inlinedAt: !5622)
!5627 = !DILocation(line: 44, column: 5, scope: !5624, inlinedAt: !5622)
!5628 = !DILocation(line: 155, column: 10, scope: !5560)
!5629 = !DILocation(line: 155, column: 3, scope: !5560)
!5630 = !DILocation(line: 229, column: 1, scope: !5560)
!5631 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5632, file: !5632, line: 28, type: !5633, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !703, variables: !5676)
!5632 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!28, !5635, !5675, !28}
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1067, line: 49, baseType: !5637)
!5637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1069, line: 241, size: 1728, elements: !5638)
!5638 = !{!5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5637, file: !1069, line: 242, baseType: !28, size: 32)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5637, file: !1069, line: 247, baseType: !43, size: 64, offset: 64)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5637, file: !1069, line: 248, baseType: !43, size: 64, offset: 128)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5637, file: !1069, line: 249, baseType: !43, size: 64, offset: 192)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5637, file: !1069, line: 250, baseType: !43, size: 64, offset: 256)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5637, file: !1069, line: 251, baseType: !43, size: 64, offset: 320)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5637, file: !1069, line: 252, baseType: !43, size: 64, offset: 384)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5637, file: !1069, line: 253, baseType: !43, size: 64, offset: 448)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5637, file: !1069, line: 254, baseType: !43, size: 64, offset: 512)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5637, file: !1069, line: 256, baseType: !43, size: 64, offset: 576)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5637, file: !1069, line: 257, baseType: !43, size: 64, offset: 640)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5637, file: !1069, line: 258, baseType: !43, size: 64, offset: 704)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5637, file: !1069, line: 260, baseType: !5652, size: 64, offset: 768)
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5653, size: 64)
!5653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1069, line: 156, size: 192, elements: !5654)
!5654 = !{!5655, !5656, !5658}
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5653, file: !1069, line: 157, baseType: !5652, size: 64)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5653, file: !1069, line: 158, baseType: !5657, size: 64, offset: 64)
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5653, file: !1069, line: 162, baseType: !28, size: 32, offset: 128)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5637, file: !1069, line: 262, baseType: !5657, size: 64, offset: 832)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5637, file: !1069, line: 264, baseType: !28, size: 32, offset: 896)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5637, file: !1069, line: 268, baseType: !28, size: 32, offset: 928)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5637, file: !1069, line: 270, baseType: !1095, size: 64, offset: 960)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5637, file: !1069, line: 274, baseType: !157, size: 16, offset: 1024)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5637, file: !1069, line: 275, baseType: !1099, size: 8, offset: 1040)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5637, file: !1069, line: 276, baseType: !1101, size: 8, offset: 1048)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5637, file: !1069, line: 280, baseType: !1103, size: 64, offset: 1088)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5637, file: !1069, line: 289, baseType: !1106, size: 64, offset: 1152)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5637, file: !1069, line: 297, baseType: !45, size: 64, offset: 1216)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5637, file: !1069, line: 298, baseType: !45, size: 64, offset: 1280)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5637, file: !1069, line: 299, baseType: !45, size: 64, offset: 1344)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5637, file: !1069, line: 300, baseType: !45, size: 64, offset: 1408)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5637, file: !1069, line: 302, baseType: !46, size: 64, offset: 1472)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5637, file: !1069, line: 303, baseType: !28, size: 32, offset: 1536)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5637, file: !1069, line: 305, baseType: !1114, size: 160, offset: 1568)
!5675 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1067, line: 91, baseType: !1095)
!5676 = !{!5677, !5678, !5679, !5680}
!5677 = !DILocalVariable(name: "fp", arg: 1, scope: !5631, file: !5632, line: 28, type: !5635)
!5678 = !DILocalVariable(name: "offset", arg: 2, scope: !5631, file: !5632, line: 28, type: !5675)
!5679 = !DILocalVariable(name: "whence", arg: 3, scope: !5631, file: !5632, line: 28, type: !28)
!5680 = !DILocalVariable(name: "pos", scope: !5681, file: !5632, line: 116, type: !5675)
!5681 = distinct !DILexicalBlock(scope: !5682, file: !5632, line: 112, column: 5)
!5682 = distinct !DILexicalBlock(scope: !5631, file: !5632, line: 51, column: 7)
!5683 = !DILocation(line: 28, column: 15, scope: !5631)
!5684 = !DILocation(line: 28, column: 25, scope: !5631)
!5685 = !DILocation(line: 28, column: 37, scope: !5631)
!5686 = !DILocation(line: 51, column: 11, scope: !5682)
!5687 = !DILocation(line: 51, column: 31, scope: !5682)
!5688 = !DILocation(line: 51, column: 24, scope: !5682)
!5689 = !DILocation(line: 52, column: 7, scope: !5682)
!5690 = !DILocation(line: 52, column: 14, scope: !5691)
!5691 = !DILexicalBlockFile(scope: !5682, file: !5632, discriminator: 1)
!5692 = !DILocation(line: 52, column: 35, scope: !5691)
!5693 = !{!1167, !726, i64 32}
!5694 = !DILocation(line: 52, column: 28, scope: !5691)
!5695 = !DILocation(line: 53, column: 7, scope: !5682)
!5696 = !DILocation(line: 53, column: 14, scope: !5691)
!5697 = !{!1167, !726, i64 72}
!5698 = !DILocation(line: 53, column: 28, scope: !5691)
!5699 = !DILocation(line: 51, column: 7, scope: !5700)
!5700 = !DILexicalBlockFile(scope: !5631, file: !5632, discriminator: 1)
!5701 = !DILocation(line: 116, column: 26, scope: !5681)
!5702 = !DILocation(line: 116, column: 19, scope: !5703)
!5703 = !DILexicalBlockFile(scope: !5681, file: !5632, discriminator: 1)
!5704 = !DILocation(line: 116, column: 13, scope: !5681)
!5705 = !DILocation(line: 117, column: 15, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5681, file: !5632, line: 117, column: 11)
!5707 = !DILocation(line: 117, column: 11, scope: !5681)
!5708 = !DILocation(line: 127, column: 11, scope: !5681)
!5709 = !DILocation(line: 127, column: 18, scope: !5681)
!5710 = !DILocation(line: 128, column: 11, scope: !5681)
!5711 = !DILocation(line: 128, column: 19, scope: !5681)
!5712 = !{!1167, !1168, i64 144}
!5713 = !DILocation(line: 159, column: 7, scope: !5681)
!5714 = !DILocation(line: 161, column: 10, scope: !5631)
!5715 = !DILocation(line: 161, column: 3, scope: !5631)
!5716 = !DILocation(line: 162, column: 1, scope: !5631)
!5717 = distinct !DISubprogram(name: "dup_safer", scope: !5718, file: !5718, line: 31, type: !5462, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !705, variables: !5719)
!5718 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5719 = !{!5720}
!5720 = !DILocalVariable(name: "fd", arg: 1, scope: !5717, file: !5718, line: 31, type: !28)
!5721 = !DILocation(line: 31, column: 16, scope: !5717)
!5722 = !DILocation(line: 33, column: 10, scope: !5717)
!5723 = !DILocation(line: 33, column: 3, scope: !5717)
!5724 = !DILocation(line: 272, column: 16, scope: !559)
!5725 = !DILocation(line: 272, column: 24, scope: !559)
!5726 = !DILocation(line: 274, column: 3, scope: !559)
!5727 = !DILocation(line: 274, column: 11, scope: !559)
!5728 = !DILocation(line: 275, column: 7, scope: !559)
!5729 = !DILocation(line: 276, column: 3, scope: !559)
!5730 = !DILocation(line: 277, column: 3, scope: !559)
!5731 = !DILocation(line: 322, column: 22, scope: !584)
!5732 = !DILocation(line: 322, column: 22, scope: !5733)
!5733 = !DILexicalBlockFile(scope: !584, file: !560, discriminator: 1)
!5734 = !DILocation(line: 322, column: 22, scope: !5735)
!5735 = !DILexicalBlockFile(scope: !584, file: !560, discriminator: 2)
!5736 = !DILocation(line: 322, column: 22, scope: !5737)
!5737 = !DILexicalBlockFile(scope: !584, file: !560, discriminator: 3)
!5738 = !DILocation(line: 322, column: 13, scope: !584)
!5739 = !DILocation(line: 336, column: 18, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !584, file: !560, line: 336, column: 13)
!5741 = !DILocation(line: 336, column: 15, scope: !5740)
!5742 = !DILocation(line: 336, column: 13, scope: !584)
!5743 = !DILocation(line: 338, column: 22, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5740, file: !560, line: 337, column: 11)
!5745 = !DILocation(line: 339, column: 19, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5744, file: !560, line: 339, column: 17)
!5747 = !DILocation(line: 339, column: 29, scope: !5746)
!5748 = !DILocation(line: 339, column: 32, scope: !5749)
!5749 = !DILexicalBlockFile(scope: !5746, file: !560, discriminator: 1)
!5750 = !DILocation(line: 339, column: 38, scope: !5749)
!5751 = !DILocation(line: 339, column: 17, scope: !5752)
!5752 = !DILexicalBlockFile(scope: !5744, file: !560, discriminator: 1)
!5753 = !DILocation(line: 349, column: 26, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5746, file: !560, line: 348, column: 15)
!5755 = !DILocation(line: 350, column: 28, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5754, file: !560, line: 350, column: 21)
!5757 = !DILocation(line: 350, column: 21, scope: !5754)
!5758 = !DILocation(line: 354, column: 11, scope: !5744)
!5759 = !DILocation(line: 356, column: 20, scope: !5740)
!5760 = !DILocation(line: 357, column: 28, scope: !5761)
!5761 = !DILexicalBlockFile(scope: !588, file: !560, discriminator: 1)
!5762 = !DILocation(line: 357, column: 15, scope: !588)
!5763 = !DILocation(line: 357, column: 47, scope: !5761)
!5764 = !DILocation(line: 357, column: 25, scope: !588)
!5765 = !DILocation(line: 359, column: 25, scope: !587)
!5766 = !DILocation(line: 359, column: 17, scope: !587)
!5767 = !DILocation(line: 360, column: 23, scope: !591)
!5768 = !DILocation(line: 360, column: 27, scope: !591)
!5769 = !DILocation(line: 360, column: 60, scope: !5770)
!5770 = !DILexicalBlockFile(scope: !591, file: !560, discriminator: 1)
!5771 = !DILocation(line: 360, column: 30, scope: !5770)
!5772 = !DILocation(line: 360, column: 74, scope: !5770)
!5773 = !DILocation(line: 360, column: 17, scope: !5774)
!5774 = !DILexicalBlockFile(scope: !587, file: !560, discriminator: 1)
!5775 = !DILocation(line: 362, column: 35, scope: !590)
!5776 = !DILocation(line: 362, column: 21, scope: !590)
!5777 = !DILocation(line: 363, column: 17, scope: !590)
!5778 = !DILocation(line: 364, column: 23, scope: !590)
!5779 = !DILocation(line: 366, column: 15, scope: !590)
!5780 = !DILocation(line: 404, column: 19, scope: !593)
!5781 = !DILocation(line: 404, column: 19, scope: !5782)
!5782 = !DILexicalBlockFile(scope: !593, file: !560, discriminator: 1)
!5783 = !DILocation(line: 404, column: 19, scope: !5784)
!5784 = !DILexicalBlockFile(scope: !593, file: !560, discriminator: 2)
!5785 = !DILocation(line: 404, column: 19, scope: !5786)
!5786 = !DILexicalBlockFile(scope: !593, file: !560, discriminator: 3)
!5787 = !DILocation(line: 404, column: 15, scope: !593)
!5788 = !DILocation(line: 405, column: 18, scope: !593)
!5789 = !DILocation(line: 412, column: 3, scope: !559)
!5790 = !DILocation(line: 414, column: 1, scope: !559)
!5791 = !DILocation(line: 413, column: 3, scope: !559)
