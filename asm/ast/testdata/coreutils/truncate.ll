; ModuleID = 'coreutils-8.27/src/truncate.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [268 x i8] c"Shrink or extend the size of each FILE to the specified size\0A\0AA FILE argument that does not exist is created.\0A\0AIf a FILE is larger than the specified size, the extra data is lost.\0AIf a FILE is shorter, it is extended and the extended part (hole)\0Areads as zero bytes.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"  -c, --no-create        do not create any files\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"  -o, --io-blocks        treat SIZE as number of IO blocks instead of bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [112 x i8] c"  -r, --reference=RFILE  base size on RFILE\0A  -s, --size=SIZE        set or adjust the file size by SIZE bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.32 = private unnamed_addr constant [153 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\0A\00", align 1
@.str.8 = private unnamed_addr constant [191 x i8] c"\0ASIZE may also be prefixed by one of the following modifying characters:\0A'+' extend by, '-' reduce by, '<' at most, '>' at least,\0A'/' round down to multiple of, '%' round up to multiple of.\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cor:s:\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@no_create = internal unnamed_addr global i1 false, align 1
@block_mode = internal unnamed_addr global i1 false, align 1
@ref_file = internal unnamed_addr global i8* null, align 8, !dbg !74
@.str.14 = private unnamed_addr constant [38 x i8] c"multiple relative modifiers specified\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Invalid number\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"EgGkKmMPtTYZ0\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"you must specify either %s or %s\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--size\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"--reference\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"you must specify a relative %s with %s\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s was specified but %s was not\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"--io-blocks\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"cannot get the size of %s\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"cannot open %s for writing\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"overflow in %ld * %ld byte blocks for file %s\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"%s has unusable, apparently negative size\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"overflow rounding up size of file %s\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"overflow extending size of file %s\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"failed to truncate %s at %ld bytes\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"io-blocks\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), align 8, !dbg !116
@.str.33 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !122
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !127
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !130
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !137
@.str.60 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 16, !dbg !144
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !156
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !163
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !176
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.76 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.77 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.78 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.79 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !183
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !190
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !178
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !192
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !198
@.str.1.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.126 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !207
@.str.3.139 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.140 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.141 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.142 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.143 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.144 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !617 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !621, metadata !622), !dbg !623
  %2 = icmp eq i32 %0, 0, !dbg !624
  br i1 %2, label %8, label %3, !dbg !626

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !627, !tbaa !630
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !627
  %6 = load i8*, i8** @program_name, align 8, !dbg !627, !tbaa !630
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !634
  br label %54, !dbg !636

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !638
  %10 = load i8*, i8** @program_name, align 8, !dbg !638, !tbaa !630
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !640
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !642
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !630
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !643
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !644
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !630
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !649
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !651
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !630
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !652
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !653
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !630
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !654
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !655
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !630
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !656
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !657
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !630
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !658
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !659
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !630
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !660
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !661
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !630
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10, !dbg !664
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !666
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666, !tbaa !630
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #10, !dbg !667
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !84, metadata !622) #10, !dbg !668
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 0, metadata !84, metadata !622) #10, !dbg !668
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !670
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !671
  %41 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !673
  tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !95, metadata !622) #10, !dbg !674
  %42 = icmp eq i8* %41, null, !dbg !675
  br i1 %42, label %49, label %43, !dbg !676

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 3) #13, !dbg !677
  %45 = icmp eq i32 %44, 0, !dbg !677
  br i1 %45, label %49, label %46, !dbg !679

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !681
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !683
  br label %49, !dbg !685

; <label>:49:                                     ; preds = %8, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !686
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !687
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !688
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !689
  br label %54

; <label>:54:                                     ; preds = %49, %3
  tail call void @exit(i32 %0) #14, !dbg !690
  unreachable, !dbg !690
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !691 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !696, metadata !622), !dbg !755
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !697, metadata !622), !dbg !756
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !698, metadata !622), !dbg !757
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !699, metadata !622), !dbg !758
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !701, metadata !622), !dbg !759
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !702, metadata !622), !dbg !760
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !705, metadata !622), !dbg !761
  %5 = load i8*, i8** %1, align 8, !dbg !762, !tbaa !630
  tail call void @set_program_name(i8* %5) #10, !dbg !763
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !764
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !765
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !766
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !767
  br label %10, !dbg !768

; <label>:10:                                     ; preds = %72, %2
  %11 = phi i32 [ %73, %72 ], [ 0, %2 ]
  %12 = phi i64 [ %75, %72 ], [ undef, %2 ]
  %13 = phi i8 [ 1, %72 ], [ 0, %2 ]
  br label %14, !dbg !757

; <label>:14:                                     ; preds = %31, %10
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !698, metadata !622), !dbg !757
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !700, metadata !622), !dbg !769
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !702, metadata !622), !dbg !760
  %15 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !770
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !704, metadata !622), !dbg !772
  switch i32 %15, label %86 [
    i32 -1, label %87
    i32 99, label %27
    i32 111, label %28
    i32 114, label %29
    i32 115, label %16
    i32 -130, label %82
    i32 -131, label %83
  ], !dbg !773

; <label>:16:                                     ; preds = %14
  %17 = tail call i16** @__ctype_b_loc() #1, !dbg !774
  %18 = load i16*, i16** %17, align 8, !dbg !774, !tbaa !630
  %19 = load i8*, i8** @optarg, align 8, !dbg !774, !tbaa !630
  %20 = load i8, i8* %19, align 1, !dbg !774, !tbaa !778
  %21 = zext i8 %20 to i64, !dbg !774
  %22 = getelementptr inbounds i16, i16* %18, i64 %21, !dbg !774
  %23 = load i16, i16* %22, align 2, !dbg !774, !tbaa !779
  %24 = and i16 %23, 8192, !dbg !774
  %25 = icmp eq i16 %24, 0, !dbg !781
  br i1 %25, label %43, label %26, !dbg !781

; <label>:26:                                     ; preds = %16
  br label %32, !dbg !782

; <label>:27:                                     ; preds = %14
  store i1 true, i1* @no_create, align 1
  br label %31, !dbg !783

; <label>:28:                                     ; preds = %14
  store i1 true, i1* @block_mode, align 1
  br label %31, !dbg !784

; <label>:29:                                     ; preds = %14
  %30 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !785, !tbaa !630
  store i64 %30, i64* bitcast (i8** @ref_file to i64*), align 8, !dbg !786, !tbaa !630
  br label %31, !dbg !787

; <label>:31:                                     ; preds = %29, %28, %27
  br label %14, !dbg !757, !llvm.loop !788

; <label>:32:                                     ; preds = %26, %32
  %33 = phi i8* [ %34, %32 ], [ %19, %26 ]
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !782
  store i8* %34, i8** @optarg, align 8, !dbg !782, !tbaa !630
  %35 = load i16*, i16** %17, align 8, !dbg !774, !tbaa !630
  %36 = load i8, i8* %34, align 1, !dbg !774, !tbaa !778
  %37 = zext i8 %36 to i64, !dbg !774
  %38 = getelementptr inbounds i16, i16* %35, i64 %37, !dbg !774
  %39 = load i16, i16* %38, align 2, !dbg !774, !tbaa !779
  %40 = and i16 %39, 8192, !dbg !774
  %41 = icmp eq i16 %40, 0, !dbg !781
  br i1 %41, label %42, label %32, !dbg !781, !llvm.loop !790

; <label>:42:                                     ; preds = %32
  br label %43, !dbg !792

; <label>:43:                                     ; preds = %42, %16
  %44 = phi i16* [ %18, %16 ], [ %35, %42 ]
  %45 = phi i8* [ %19, %16 ], [ %34, %42 ]
  %46 = phi i8 [ %20, %16 ], [ %36, %42 ]
  %47 = sext i8 %46 to i32, !dbg !792
  switch i32 %47, label %57 [
    i32 60, label %51
    i32 62, label %48
    i32 47, label %49
    i32 37, label %50
  ], !dbg !793

; <label>:48:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !702, metadata !622), !dbg !760
  br label %51, !dbg !794

; <label>:49:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !702, metadata !622), !dbg !760
  br label %51, !dbg !796

; <label>:50:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !702, metadata !622), !dbg !760
  br label %51, !dbg !797

; <label>:51:                                     ; preds = %50, %49, %48, %43, %57
  %52 = phi i32 [ %61, %57 ], [ 5, %50 ], [ 4, %49 ], [ 2, %48 ], [ 3, %43 ]
  %53 = phi i8* [ %59, %57 ], [ %45, %50 ], [ %45, %49 ], [ %45, %48 ], [ %45, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !702, metadata !622), !dbg !760
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** @optarg, align 8, !tbaa !630
  %55 = load i16*, i16** %17, align 8, !tbaa !630
  %56 = load i8, i8* %54, align 1, !tbaa !778
  br label %57, !dbg !798

; <label>:57:                                     ; preds = %51, %43
  %58 = phi i8 [ %46, %43 ], [ %56, %51 ], !dbg !798
  %59 = phi i8* [ %45, %43 ], [ %54, %51 ], !dbg !799
  %60 = phi i16* [ %44, %43 ], [ %55, %51 ], !dbg !798
  %61 = phi i32 [ %11, %43 ], [ %52, %51 ]
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !702, metadata !622), !dbg !760
  %62 = zext i8 %58 to i64, !dbg !798
  %63 = getelementptr inbounds i16, i16* %60, i64 %62, !dbg !798
  %64 = load i16, i16* %63, align 2, !dbg !798, !tbaa !779
  %65 = and i16 %64, 8192, !dbg !798
  %66 = icmp eq i16 %65, 0, !dbg !800
  br i1 %66, label %67, label %51, !dbg !800, !llvm.loop !801

; <label>:67:                                     ; preds = %57
  switch i8 %58, label %72 [
    i8 43, label %68
    i8 45, label %68
  ], !dbg !804

; <label>:68:                                     ; preds = %67, %67
  %69 = icmp eq i32 %61, 0, !dbg !806
  br i1 %69, label %72, label %70, !dbg !809

; <label>:70:                                     ; preds = %68
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !810
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %71) #10, !dbg !812
  tail call void @usage(i32 1) #15, !dbg !814
  unreachable, !dbg !814

; <label>:72:                                     ; preds = %68, %67
  %73 = phi i32 [ %61, %67 ], [ 1, %68 ]
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !702, metadata !622), !dbg !760
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !815
  %75 = tail call i64 @xdectoimax(i8* %59, i64 -9223372036854775808, i64 9223372036854775807, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %74, i32 0) #10, !dbg !816
  tail call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !700, metadata !622), !dbg !769
  %76 = or i32 %73, 1, !dbg !817
  %77 = icmp eq i32 %76, 5, !dbg !817
  %78 = icmp eq i64 %75, 0, !dbg !819
  %79 = and i1 %77, %78, !dbg !817
  br i1 %79, label %80, label %10, !dbg !817, !llvm.loop !788

; <label>:80:                                     ; preds = %72
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !821
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %81) #10, !dbg !822
  unreachable, !dbg !821

; <label>:82:                                     ; preds = %14
  tail call void @usage(i32 0) #15, !dbg !824
  unreachable, !dbg !824

; <label>:83:                                     ; preds = %14
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !825, !tbaa !630
  %85 = load i8*, i8** @Version, align 8, !dbg !825, !tbaa !630
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* null) #10, !dbg !825
  tail call void @exit(i32 0) #14, !dbg !826
  unreachable, !dbg !825

; <label>:86:                                     ; preds = %14
  tail call void @usage(i32 1) #15, !dbg !827
  unreachable, !dbg !827

; <label>:87:                                     ; preds = %14
  %88 = load i32, i32* @optind, align 4, !dbg !828, !tbaa !829
  %89 = sext i32 %88 to i64, !dbg !831
  %90 = getelementptr inbounds i8*, i8** %1, i64 %89, !dbg !831
  tail call void @llvm.dbg.value(metadata i8** %90, i64 0, metadata !697, metadata !622), !dbg !756
  %91 = load i8*, i8** @ref_file, align 8, !dbg !832, !tbaa !630
  %92 = icmp eq i8* %91, null, !dbg !832
  %93 = icmp eq i8 %13, 0, !dbg !834
  %94 = and i1 %93, %92, !dbg !836
  br i1 %94, label %95, label %99, !dbg !836

; <label>:95:                                     ; preds = %87
  %96 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !837
  %97 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !839
  %98 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !840
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %96, i8* %97, i8* %98) #10, !dbg !842
  tail call void @usage(i32 1) #15, !dbg !843
  unreachable, !dbg !843

; <label>:99:                                     ; preds = %87
  %100 = icmp ne i32 %11, 0, !dbg !844
  %101 = or i1 %100, %93, !dbg !847
  %102 = or i1 %101, %92, !dbg !849
  br i1 %102, label %107, label %103, !dbg !849

; <label>:103:                                    ; preds = %99
  %104 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !850
  %105 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !852
  %106 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !853
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %104, i8* %105, i8* %106) #10, !dbg !855
  tail call void @usage(i32 1) #15, !dbg !856
  unreachable, !dbg !856

; <label>:107:                                    ; preds = %99
  %108 = load i1, i1* @block_mode, align 1
  %109 = and i1 %93, %108, !dbg !857
  br i1 %109, label %110, label %114, !dbg !857

; <label>:110:                                    ; preds = %107
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !859
  %112 = tail call i8* @quote_n(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !861
  %113 = tail call i8* @quote_n(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !862
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %111, i8* %112, i8* %113) #10, !dbg !864
  tail call void @usage(i32 1) #15, !dbg !865
  unreachable, !dbg !865

; <label>:114:                                    ; preds = %107
  %115 = icmp slt i32 %88, %0, !dbg !866
  br i1 %115, label %118, label %116, !dbg !868

; <label>:116:                                    ; preds = %114
  %117 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !869
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %117) #10, !dbg !871
  tail call void @usage(i32 1) #15, !dbg !873
  unreachable, !dbg !873

; <label>:118:                                    ; preds = %114
  br i1 %92, label %159, label %119, !dbg !874

; <label>:119:                                    ; preds = %118
  %120 = bitcast %struct.stat* %4 to i8*, !dbg !875
  call void @llvm.lifetime.start(i64 144, i8* nonnull %120) #10, !dbg !875
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !747, metadata !622), !dbg !876
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !708, metadata !877), !dbg !878
  tail call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !879, metadata !622) #10, !dbg !887
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !886, metadata !622) #10, !dbg !887
  %121 = call i32 @__xstat(i32 1, i8* nonnull %91, %struct.stat* nonnull %4) #10, !dbg !890
  %122 = icmp eq i32 %121, 0, !dbg !891
  br i1 %122, label %129, label %123, !dbg !892

; <label>:123:                                    ; preds = %119
  %124 = tail call i32* @__errno_location() #1, !dbg !893
  %125 = load i32, i32* %124, align 4, !dbg !893, !tbaa !829
  %126 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !894
  %127 = load i8*, i8** @ref_file, align 8, !dbg !893, !tbaa !630
  %128 = call i8* @quotearg_style(i32 4, i8* %127) #10, !dbg !896
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %125, i8* %126, i8* %128) #10, !dbg !898
  unreachable, !dbg !893

; <label>:129:                                    ; preds = %119
  call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !708, metadata !877), !dbg !878
  tail call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !900, metadata !622), !dbg !907
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3, !dbg !909
  %131 = load i32, i32* %130, align 8, !dbg !909, !tbaa !910
  %132 = trunc i32 %131 to i16, !dbg !914
  %133 = and i16 %132, -4096, !dbg !914
  switch i16 %133, label %134 [
    i16 -32768, label %145
    i16 -24576, label %145
  ], !dbg !914

; <label>:134:                                    ; preds = %129
  %135 = load i8*, i8** @ref_file, align 8, !dbg !915, !tbaa !630
  %136 = call i32 (i8*, i32, ...) @open(i8* %135, i32 0) #10, !dbg !916
  call void @llvm.dbg.value(metadata i32 %136, i64 0, metadata !748, metadata !622), !dbg !917
  %137 = icmp sgt i32 %136, -1, !dbg !918
  br i1 %137, label %138, label %149, !dbg !919

; <label>:138:                                    ; preds = %134
  %139 = call i64 @lseek(i32 %136, i64 0, i32 2) #10, !dbg !920
  call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !751, metadata !622), !dbg !921
  %140 = tail call i32* @__errno_location() #1, !dbg !922
  %141 = load i32, i32* %140, align 4, !dbg !922, !tbaa !829
  call void @llvm.dbg.value(metadata i32 %141, i64 0, metadata !754, metadata !622), !dbg !923
  %142 = call i32 @close(i32 %136) #10, !dbg !924
  %143 = icmp sgt i64 %139, -1, !dbg !925
  br i1 %143, label %155, label %144, !dbg !927

; <label>:144:                                    ; preds = %138
  store i32 %141, i32* %140, align 4, !dbg !928, !tbaa !829
  br label %149

; <label>:145:                                    ; preds = %129, %129
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8, !dbg !930
  %147 = load i64, i64* %146, align 8, !dbg !930, !tbaa !931
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !747, metadata !622), !dbg !876
  call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !747, metadata !622), !dbg !876
  %148 = icmp slt i64 %147, 0, !dbg !932
  br i1 %148, label %149, label %155, !dbg !934

; <label>:149:                                    ; preds = %144, %134, %145
  %150 = tail call i32* @__errno_location() #1, !dbg !935
  %151 = load i32, i32* %150, align 4, !dbg !935, !tbaa !829
  %152 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !936
  %153 = load i8*, i8** @ref_file, align 8, !dbg !935, !tbaa !630
  %154 = call i8* @quotearg_style(i32 4, i8* %153) #10, !dbg !938
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %151, i8* %152, i8* %154) #10, !dbg !940
  unreachable, !dbg !935

; <label>:155:                                    ; preds = %138, %145
  %156 = phi i64 [ %147, %145 ], [ %139, %138 ]
  %157 = select i1 %93, i64 -1, i64 %156, !dbg !942
  %158 = select i1 %93, i64 %156, i64 %12, !dbg !942
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !700, metadata !622), !dbg !769
  call void @llvm.dbg.value(metadata i64 %157, i64 0, metadata !701, metadata !622), !dbg !759
  call void @llvm.lifetime.end(i64 144, i8* nonnull %120) #10, !dbg !944
  br label %159, !dbg !945

; <label>:159:                                    ; preds = %118, %155
  %160 = phi i64 [ %157, %155 ], [ -1, %118 ]
  %161 = phi i64 [ %158, %155 ], [ %12, %118 ]
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !700, metadata !622), !dbg !769
  call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !701, metadata !622), !dbg !759
  %162 = load i1, i1* @no_create, align 1
  %163 = select i1 %162, i32 2049, i32 2113, !dbg !946
  call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !706, metadata !622), !dbg !947
  %164 = bitcast %struct.stat* %3 to i8*
  %165 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 9
  %166 = icmp eq i32 %11, 0
  %167 = icmp sgt i64 %160, -1
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %170 = icmp slt i64 %160, 0
  %171 = and i1 %100, %170
  br label %172, !dbg !948

; <label>:172:                                    ; preds = %193, %159
  %173 = phi i8 [ 0, %159 ], [ %194, %193 ]
  %174 = phi i8** [ %90, %159 ], [ %177, %193 ]
  br label %175, !dbg !756

; <label>:175:                                    ; preds = %172, %186
  %176 = phi i8** [ %177, %186 ], [ %174, %172 ]
  call void @llvm.dbg.value(metadata i8** %176, i64 0, metadata !697, metadata !622), !dbg !756
  call void @llvm.dbg.value(metadata i8 %173, i64 0, metadata !699, metadata !622), !dbg !758
  %177 = getelementptr inbounds i8*, i8** %176, i64 1, !dbg !949
  call void @llvm.dbg.value(metadata i8** %177, i64 0, metadata !697, metadata !622), !dbg !756
  %178 = load i8*, i8** %176, align 8, !dbg !950, !tbaa !630
  call void @llvm.dbg.value(metadata i8* %178, i64 0, metadata !707, metadata !622), !dbg !951
  %179 = icmp eq i8* %178, null, !dbg !952
  br i1 %179, label %294, label %180, !dbg !953

; <label>:180:                                    ; preds = %175
  %181 = call i32 (i8*, i32, ...) @open(i8* nonnull %178, i32 %163, i32 438) #10, !dbg !954
  call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !705, metadata !622), !dbg !761
  %182 = icmp eq i32 %181, -1, !dbg !957
  br i1 %182, label %183, label %195, !dbg !958

; <label>:183:                                    ; preds = %180
  %184 = load i1, i1* @no_create, align 1
  %185 = tail call i32* @__errno_location() #1, !dbg !959
  br i1 %184, label %186, label %189, !dbg !963

; <label>:186:                                    ; preds = %183
  %187 = load i32, i32* %185, align 4, !dbg !959, !tbaa !829
  %188 = icmp eq i32 %187, 2, !dbg !964
  br i1 %188, label %175, label %189, !dbg !965, !llvm.loop !967

; <label>:189:                                    ; preds = %186, %183
  %190 = load i32, i32* %185, align 4, !dbg !969, !tbaa !829
  %191 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !971
  %192 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !973
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %190, i8* %191, i8* %192) #10, !dbg !974
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !699, metadata !622), !dbg !758
  br label %193, !dbg !976

; <label>:193:                                    ; preds = %189, %289, %284
  %194 = phi i8 [ %286, %284 ], [ 1, %289 ], [ 1, %189 ]
  br label %172, !dbg !756, !llvm.loop !967

; <label>:195:                                    ; preds = %180
  call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !977, metadata !622) #10, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %178, i64 0, metadata !982, metadata !622) #10, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !983, metadata !622) #10, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %160, i64 0, metadata !984, metadata !622) #10, !dbg !1011
  call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !985, metadata !622) #10, !dbg !1012
  call void @llvm.lifetime.start(i64 144, i8* nonnull %164) #10, !dbg !1013
  %196 = load i1, i1* @block_mode, align 1
  %197 = or i1 %196, %171, !dbg !1014
  br i1 %197, label %198, label %224, !dbg !1014

; <label>:198:                                    ; preds = %195
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !986, metadata !877) #10, !dbg !1016
  call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !1017, metadata !622) #10, !dbg !1023
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1022, metadata !622) #10, !dbg !1023
  %199 = call i32 @__fxstat(i32 1, i32 %181, %struct.stat* nonnull %3) #10, !dbg !1026
  %200 = icmp eq i32 %199, 0, !dbg !1027
  br i1 %200, label %206, label %201, !dbg !1028

; <label>:201:                                    ; preds = %198
  %202 = tail call i32* @__errno_location() #1, !dbg !1030
  %203 = load i32, i32* %202, align 4, !dbg !1030, !tbaa !829
  %204 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i64 0, i64 0), i32 5) #10, !dbg !1032
  %205 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !1034
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %203, i8* %204, i8* %205) #10, !dbg !1036
  br label %284, !dbg !1038

; <label>:206:                                    ; preds = %198
  %207 = load i1, i1* @block_mode, align 1
  br i1 %207, label %208, label %224, !dbg !1039

; <label>:208:                                    ; preds = %206
  %209 = load i64, i64* %165, align 8, !dbg !1040, !tbaa !1041
  %210 = icmp sgt i64 %209, 0, !dbg !1040
  %211 = icmp ult i64 %209, 2305843009213693953, !dbg !1042
  %212 = and i1 %210, %211, !dbg !1040
  %213 = select i1 %212, i64 %209, i64 512, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %213, i64 0, metadata !988, metadata !622) #10, !dbg !1044
  %214 = sdiv i64 -9223372036854775808, %213, !dbg !1045
  %215 = icmp sgt i64 %214, %161, !dbg !1047
  br i1 %215, label %221, label %216, !dbg !1048

; <label>:216:                                    ; preds = %208
  %217 = sdiv i64 9223372036854775807, %213, !dbg !1049
  %218 = icmp slt i64 %217, %161, !dbg !1051
  br i1 %218, label %221, label %219, !dbg !1052

; <label>:219:                                    ; preds = %216
  %220 = mul nsw i64 %213, %161, !dbg !1053
  call void @llvm.dbg.value(metadata i64 %220, i64 0, metadata !983, metadata !622) #10, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !983, metadata !622) #10, !dbg !1010
  br label %224

; <label>:221:                                    ; preds = %216, %208
  %222 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i64 0, i64 0), i32 5) #10, !dbg !1054
  %223 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !1056
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %222, i64 %161, i64 %213, i8* %223) #10, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %161, i64 0, metadata !983, metadata !622) #10, !dbg !1010
  br label %284

; <label>:224:                                    ; preds = %195, %219, %206
  %225 = phi i64 [ %161, %206 ], [ %220, %219 ], [ %161, %195 ]
  call void @llvm.dbg.value(metadata i64 %225, i64 0, metadata !983, metadata !622) #10, !dbg !1010
  br i1 %166, label %273, label %226, !dbg !1058

; <label>:226:                                    ; preds = %224
  br i1 %167, label %245, label %227, !dbg !1059

; <label>:227:                                    ; preds = %226
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !986, metadata !877) #10, !dbg !1016
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !900, metadata !622) #10, !dbg !1060
  %228 = load i32, i32* %168, align 8, !dbg !1063, !tbaa !910
  %229 = trunc i32 %228 to i16, !dbg !1064
  %230 = and i16 %229, -4096, !dbg !1064
  switch i16 %230, label %237 [
    i16 -32768, label %231
    i16 -24576, label %231
  ], !dbg !1064

; <label>:231:                                    ; preds = %227, %227
  %232 = load i64, i64* %169, align 8, !dbg !1065, !tbaa !931
  call void @llvm.dbg.value(metadata i64 %232, i64 0, metadata !995, metadata !622) #10, !dbg !1067
  %233 = icmp slt i64 %232, 0, !dbg !1068
  br i1 %233, label %234, label %245, !dbg !1070

; <label>:234:                                    ; preds = %231
  %235 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i64 0, i64 0), i32 5) #10, !dbg !1071
  %236 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !1073
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %235, i8* %236) #10, !dbg !1074
  br label %284, !dbg !1076

; <label>:237:                                    ; preds = %227
  %238 = call i64 @lseek(i32 %181, i64 0, i32 2) #10, !dbg !1077
  call void @llvm.dbg.value(metadata i64 %238, i64 0, metadata !995, metadata !622) #10, !dbg !1067
  %239 = icmp slt i64 %238, 0, !dbg !1079
  br i1 %239, label %240, label %245, !dbg !1081

; <label>:240:                                    ; preds = %237
  %241 = tail call i32* @__errno_location() #1, !dbg !1082
  %242 = load i32, i32* %241, align 4, !dbg !1082, !tbaa !829
  %243 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !1084
  %244 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !1086
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %242, i8* %243, i8* %244) #10, !dbg !1087
  br label %284, !dbg !1089

; <label>:245:                                    ; preds = %237, %231, %226
  %246 = phi i64 [ %160, %226 ], [ %238, %237 ], [ %232, %231 ]
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !992, metadata !622) #10, !dbg !1090
  switch i32 %11, label %265 [
    i32 2, label %247
    i32 3, label %250
    i32 4, label %253
    i32 5, label %256
  ], !dbg !1091

; <label>:247:                                    ; preds = %245
  %248 = icmp ugt i64 %246, %225, !dbg !1092
  %249 = select i1 %248, i64 %246, i64 %225, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %249, i64 0, metadata !987, metadata !622) #10, !dbg !1093
  br label %273, !dbg !1094

; <label>:250:                                    ; preds = %245
  %251 = icmp ult i64 %246, %225, !dbg !1096
  %252 = select i1 %251, i64 %246, i64 %225, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %252, i64 0, metadata !987, metadata !622) #10, !dbg !1093
  br label %273, !dbg !1097

; <label>:253:                                    ; preds = %245
  %254 = urem i64 %246, %225, !dbg !1099
  %255 = sub i64 %246, %254, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %255, i64 0, metadata !987, metadata !622) #10, !dbg !1093
  br label %273, !dbg !1100

; <label>:256:                                    ; preds = %245
  %257 = add i64 %225, -1, !dbg !1101
  %258 = add i64 %257, %246, !dbg !1102
  %259 = urem i64 %258, %225, !dbg !1103
  %260 = sub i64 %258, %259, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %260, i64 0, metadata !998, metadata !622) #10, !dbg !1104
  %261 = icmp slt i64 %260, 0, !dbg !1105
  br i1 %261, label %262, label %273, !dbg !1107

; <label>:262:                                    ; preds = %256
  %263 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1108
  %264 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !1110
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %263, i8* %264) #10, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %260, i64 0, metadata !987, metadata !622) #10, !dbg !1093
  br label %284

; <label>:265:                                    ; preds = %245
  %266 = sub nsw i64 9223372036854775807, %246, !dbg !1113
  %267 = icmp sgt i64 %225, %266, !dbg !1116
  br i1 %267, label %268, label %271, !dbg !1117

; <label>:268:                                    ; preds = %265
  %269 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !1118
  %270 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !1120
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %269, i8* %270) #10, !dbg !1121
  br label %284, !dbg !1123

; <label>:271:                                    ; preds = %265
  %272 = add i64 %246, %225, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %272, i64 0, metadata !987, metadata !622) #10, !dbg !1093
  br label %273

; <label>:273:                                    ; preds = %271, %256, %253, %250, %247, %224
  %274 = phi i64 [ %225, %224 ], [ %272, %271 ], [ %255, %253 ], [ %252, %250 ], [ %249, %247 ], [ %260, %256 ]
  call void @llvm.dbg.value(metadata i64 %274, i64 0, metadata !987, metadata !622) #10, !dbg !1093
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !987, metadata !622) #10, !dbg !1093
  %275 = icmp sgt i64 %274, 0, !dbg !1125
  %276 = select i1 %275, i64 %274, i64 0, !dbg !1125
  call void @llvm.dbg.value(metadata i64 %276, i64 0, metadata !987, metadata !622) #10, !dbg !1093
  %277 = call i32 @ftruncate(i32 %181, i64 %276) #10, !dbg !1126
  %278 = icmp eq i32 %277, -1, !dbg !1128
  br i1 %278, label %279, label %284, !dbg !1129

; <label>:279:                                    ; preds = %273
  %280 = tail call i32* @__errno_location() #1, !dbg !1130
  %281 = load i32, i32* %280, align 4, !dbg !1130, !tbaa !829
  %282 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0), i32 5) #10, !dbg !1132
  %283 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !1133
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %281, i8* %282, i8* %283, i64 %276) #10, !dbg !1135
  br label %284, !dbg !1136

; <label>:284:                                    ; preds = %201, %221, %234, %240, %262, %268, %273, %279
  %285 = phi i8 [ 1, %201 ], [ 1, %279 ], [ 1, %221 ], [ 0, %273 ], [ 1, %262 ], [ 1, %234 ], [ 1, %240 ], [ 1, %268 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %164) #10, !dbg !1137
  %286 = or i8 %285, %173, !dbg !1138
  call void @llvm.dbg.value(metadata i8 %286, i64 0, metadata !699, metadata !622), !dbg !758
  %287 = call i32 @close(i32 %181) #10, !dbg !1139
  %288 = icmp eq i32 %287, 0, !dbg !1141
  br i1 %288, label %193, label %289, !dbg !1142

; <label>:289:                                    ; preds = %284
  %290 = tail call i32* @__errno_location() #1, !dbg !1143
  %291 = load i32, i32* %290, align 4, !dbg !1143, !tbaa !829
  %292 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !1145
  %293 = call i8* @quotearg_style(i32 4, i8* nonnull %178) #10, !dbg !1147
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %291, i8* %292, i8* %293) #10, !dbg !1149
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !699, metadata !622), !dbg !758
  br label %193, !dbg !1151

; <label>:294:                                    ; preds = %175
  %295 = zext i8 %173 to i32, !dbg !1152
  ret i32 %295, !dbg !1153
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1154 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1156, metadata !622), !dbg !1157
  store i8* %0, i8** @file_name, align 8, !dbg !1158, !tbaa !630
  ret void, !dbg !1159
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1160 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1164, metadata !1165), !dbg !1166
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1167, !tbaa !1168
  ret void, !dbg !1170
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1171 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1176, !tbaa !630
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1177
  %3 = icmp eq i32 %2, 0, !dbg !1178
  br i1 %3, label %21, label %4, !dbg !1179

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1180, !tbaa !1168, !range !1182
  %6 = icmp eq i8 %5, 0, !dbg !1180
  %7 = tail call i32* @__errno_location() #1, !dbg !1183
  br i1 %6, label %11, label %8, !dbg !1185

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1186, !tbaa !829
  %10 = icmp eq i32 %9, 32, !dbg !1188
  br i1 %10, label %21, label %11, !dbg !1189

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !1191
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1173, metadata !622), !dbg !1192
  %13 = load i8*, i8** @file_name, align 8, !dbg !1193, !tbaa !630
  %14 = icmp eq i8* %13, null, !dbg !1193
  %15 = load i32, i32* %7, align 4, !tbaa !829
  br i1 %14, label %18, label %16, !dbg !1194

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1195
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1197
  br label %19, !dbg !1199

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %12) #10, !dbg !1200
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1201, !tbaa !829
  tail call void @_exit(i32 %20) #14, !dbg !1202
  unreachable, !dbg !1202

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1203, !tbaa !630
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1205
  %24 = icmp eq i32 %23, 0, !dbg !1206
  br i1 %24, label %27, label %25, !dbg !1207

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1208, !tbaa !829
  tail call void @_exit(i32 %26) #14, !dbg !1209
  unreachable, !dbg !1209

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1210
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1211 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1213, metadata !622), !dbg !1216
  %2 = icmp eq i8* %0, null, !dbg !1217
  br i1 %2, label %3, label %6, !dbg !1219

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1220, !tbaa !630
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1222
  tail call void @abort() #14, !dbg !1223
  unreachable, !dbg !1223

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1224
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1214, metadata !622), !dbg !1225
  %8 = icmp ne i8* %7, null, !dbg !1226
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1227
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1229
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1215, metadata !622), !dbg !1230
  %11 = ptrtoint i8* %10 to i64, !dbg !1231
  %12 = ptrtoint i8* %0 to i64, !dbg !1231
  %13 = sub i64 %11, %12, !dbg !1231
  %14 = icmp sgt i64 %13, 6, !dbg !1233
  br i1 %14, label %15, label %24, !dbg !1234

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1235
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.61, i64 0, i64 0), i64 7) #13, !dbg !1235
  %18 = icmp eq i32 %17, 0, !dbg !1237
  br i1 %18, label %19, label %24, !dbg !1238

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1213, metadata !622), !dbg !1216
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i64 3) #13, !dbg !1239
  %21 = icmp eq i32 %20, 0, !dbg !1242
  br i1 %21, label %22, label %24, !dbg !1243

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1244
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1213, metadata !622), !dbg !1216
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1246, !tbaa !630
  br label %24, !dbg !1247

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1213, metadata !622), !dbg !1216
  store i8* %25, i8** @program_name, align 8, !dbg !1248, !tbaa !630
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1249, !tbaa !630
  ret void, !dbg !1250
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1251 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1256, metadata !622), !dbg !1259
  %2 = tail call i32* @__errno_location() #1, !dbg !1260
  %3 = load i32, i32* %2, align 4, !dbg !1260, !tbaa !829
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1257, metadata !622), !dbg !1261
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1262
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1263
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1263
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1265
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1258, metadata !622), !dbg !1266
  store i32 %3, i32* %2, align 4, !dbg !1267, !tbaa !829
  ret %struct.quoting_options* %8, !dbg !1268
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1269 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1275, metadata !622), !dbg !1276
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1277
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1277
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1278
  %5 = load i32, i32* %4, align 8, !dbg !1278, !tbaa !1280
  ret i32 %5, !dbg !1282
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1283 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1287, metadata !622), !dbg !1289
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1288, metadata !622), !dbg !1290
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1291
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1291
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1292
  store i32 %1, i32* %5, align 8, !dbg !1294, !tbaa !1280
  ret void, !dbg !1295
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1296 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1300, metadata !622), !dbg !1308
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1301, metadata !622), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1302, metadata !622), !dbg !1310
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1303, metadata !622), !dbg !1311
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1312
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1312
  %6 = lshr i8 %1, 5, !dbg !1313
  %7 = zext i8 %6 to i64, !dbg !1313
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1315
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1304, metadata !622), !dbg !1316
  %9 = and i8 %1, 31, !dbg !1317
  %10 = zext i8 %9 to i32, !dbg !1318
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1306, metadata !622), !dbg !1319
  %11 = load i32, i32* %8, align 4, !dbg !1320, !tbaa !829
  %12 = lshr i32 %11, %10, !dbg !1321
  %13 = and i32 %12, 1, !dbg !1322
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1307, metadata !622), !dbg !1323
  %14 = and i32 %2, 1, !dbg !1324
  %15 = xor i32 %13, %14, !dbg !1325
  %16 = shl i32 %15, %10, !dbg !1326
  %17 = xor i32 %16, %11, !dbg !1327
  store i32 %17, i32* %8, align 4, !dbg !1327, !tbaa !829
  ret i32 %13, !dbg !1328
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1329 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1333, metadata !622), !dbg !1336
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1334, metadata !622), !dbg !1337
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1338
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1333, metadata !622), !dbg !1336
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1340
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1333, metadata !622), !dbg !1336
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1341
  %6 = load i32, i32* %5, align 4, !dbg !1341, !tbaa !1342
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1335, metadata !622), !dbg !1343
  store i32 %1, i32* %5, align 4, !dbg !1344, !tbaa !1342
  ret i32 %6, !dbg !1345
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1346 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1350, metadata !622), !dbg !1353
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1351, metadata !622), !dbg !1354
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1352, metadata !622), !dbg !1355
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1356
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1350, metadata !622), !dbg !1353
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1358
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1350, metadata !622), !dbg !1353
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1359
  store i32 10, i32* %6, align 8, !dbg !1360, !tbaa !1280
  %7 = icmp ne i8* %1, null, !dbg !1361
  %8 = icmp ne i8* %2, null, !dbg !1363
  %9 = and i1 %7, %8, !dbg !1365
  br i1 %9, label %11, label %10, !dbg !1365

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1366
  unreachable, !dbg !1366

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1367
  store i8* %1, i8** %12, align 8, !dbg !1368, !tbaa !1369
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1370
  store i8* %2, i8** %13, align 8, !dbg !1371, !tbaa !1372
  ret void, !dbg !1373
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1374 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1378, metadata !622), !dbg !1386
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1379, metadata !622), !dbg !1387
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1380, metadata !622), !dbg !1388
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1381, metadata !622), !dbg !1389
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1382, metadata !622), !dbg !1390
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1391
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1391
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1383, metadata !622), !dbg !1392
  %8 = tail call i32* @__errno_location() #1, !dbg !1393
  %9 = load i32, i32* %8, align 4, !dbg !1393, !tbaa !829
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1384, metadata !622), !dbg !1394
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1395
  %11 = load i32, i32* %10, align 8, !dbg !1395, !tbaa !1280
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1396
  %13 = load i32, i32* %12, align 4, !dbg !1396, !tbaa !1342
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1397
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1398
  %16 = load i8*, i8** %15, align 8, !dbg !1398, !tbaa !1369
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1399
  %18 = load i8*, i8** %17, align 8, !dbg !1399, !tbaa !1372
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1400
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1385, metadata !622), !dbg !1401
  store i32 %9, i32* %8, align 4, !dbg !1402, !tbaa !829
  ret i64 %19, !dbg !1403
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1404 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1410, metadata !622), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1411, metadata !622), !dbg !1474
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1412, metadata !622), !dbg !1475
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1413, metadata !622), !dbg !1476
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1414, metadata !622), !dbg !1477
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1415, metadata !622), !dbg !1478
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1416, metadata !622), !dbg !1479
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1417, metadata !622), !dbg !1480
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1418, metadata !622), !dbg !1481
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1420, metadata !622), !dbg !1482
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1421, metadata !622), !dbg !1483
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1422, metadata !622), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1423, metadata !622), !dbg !1485
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1424, metadata !622), !dbg !1486
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1487
  %14 = icmp eq i64 %13, 1, !dbg !1488
  %15 = lshr i32 %5, 1, !dbg !1489
  %16 = trunc i32 %15 to i8, !dbg !1489
  %17 = and i8 %16, 1, !dbg !1489
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1426, metadata !622), !dbg !1489
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1427, metadata !622), !dbg !1490
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1428, metadata !622), !dbg !1491
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1429, metadata !622), !dbg !1492
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !1493

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1411, metadata !622), !dbg !1474
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1429, metadata !622), !dbg !1492
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1428, metadata !622), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1426, metadata !622), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1413, metadata !622), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1424, metadata !622), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1423, metadata !622), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1422, metadata !622), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1421, metadata !622), !dbg !1483
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1418, metadata !622), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1417, metadata !622), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1414, metadata !622), !dbg !1477
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
  ], !dbg !1494

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1414, metadata !622), !dbg !1477
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1426, metadata !622), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1426, metadata !622), !dbg !1489
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1414, metadata !622), !dbg !1477
  br label %95, !dbg !1495

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1426, metadata !622), !dbg !1489
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1414, metadata !622), !dbg !1477
  %43 = and i8 %36, 1, !dbg !1497
  %44 = icmp eq i8 %43, 0, !dbg !1497
  br i1 %44, label %45, label %95, !dbg !1495

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1499
  br i1 %46, label %95, label %47, !dbg !1503

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1505, !tbaa !778
  br label %95, !dbg !1505

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 %28), !dbg !1507
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1417, metadata !622), !dbg !1480
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 %28), !dbg !1511
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1418, metadata !622), !dbg !1481
  br label %51, !dbg !1512

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1418, metadata !622), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1417, metadata !622), !dbg !1480
  %54 = and i8 %36, 1, !dbg !1513
  %55 = icmp eq i8 %54, 0, !dbg !1513
  br i1 %55, label %56, label %73, !dbg !1515

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1422, metadata !622), !dbg !1484
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1420, metadata !622), !dbg !1482
  %57 = load i8, i8* %52, align 1, !dbg !1516, !tbaa !778
  %58 = icmp eq i8 %57, 0, !dbg !1520
  br i1 %58, label %73, label %59, !dbg !1520

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !1522

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !1522
  br i1 %64, label %65, label %67, !dbg !1526

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !1528
  store i8 %61, i8* %66, align 1, !dbg !1528, !tbaa !778
  br label %67, !dbg !1528

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1420, metadata !622), !dbg !1482
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1532
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1422, metadata !622), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1422, metadata !622), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1420, metadata !622), !dbg !1482
  %70 = load i8, i8* %69, align 1, !dbg !1516, !tbaa !778
  %71 = icmp eq i8 %70, 0, !dbg !1520
  br i1 %71, label %72, label %60, !dbg !1520, !llvm.loop !1534

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !1482

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1424, metadata !622), !dbg !1486
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1422, metadata !622), !dbg !1484
  %75 = call i64 @strlen(i8* %53) #13, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1423, metadata !622), !dbg !1485
  br label %95, !dbg !1538

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1424, metadata !622), !dbg !1486
  br label %77, !dbg !1539

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1424, metadata !622), !dbg !1486
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1426, metadata !622), !dbg !1489
  br label %79, !dbg !1540

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1426, metadata !622), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1424, metadata !622), !dbg !1486
  %82 = and i8 %81, 1, !dbg !1541
  %83 = icmp eq i8 %82, 0, !dbg !1541
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1424, metadata !622), !dbg !1486
  %84 = select i1 %83, i8 1, i8 %80, !dbg !1543
  br label %85, !dbg !1543

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1426, metadata !622), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1424, metadata !622), !dbg !1486
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1414, metadata !622), !dbg !1477
  %88 = and i8 %87, 1, !dbg !1544
  %89 = icmp eq i8 %88, 0, !dbg !1544
  br i1 %89, label %90, label %95, !dbg !1546

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !1547
  br i1 %91, label %95, label %92, !dbg !1551

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !1553, !tbaa !778
  br label %95, !dbg !1553

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1426, metadata !622), !dbg !1489
  br label %95, !dbg !1555

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !1556
  unreachable, !dbg !1556

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1426, metadata !622), !dbg !1489
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1424, metadata !622), !dbg !1486
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1423, metadata !622), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1422, metadata !622), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1418, metadata !622), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1417, metadata !622), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1414, metadata !622), !dbg !1477
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1419, metadata !622), !dbg !1557
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
  br label %123, !dbg !1558

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1411, metadata !622), !dbg !1474
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1429, metadata !622), !dbg !1492
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1428, metadata !622), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1413, metadata !622), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1421, metadata !622), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1419, metadata !622), !dbg !1557
  %132 = icmp eq i64 %127, -1, !dbg !1559
  br i1 %132, label %135, label %133, !dbg !1561

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !1562
  br i1 %134, label %597, label %139, !dbg !1564

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1566
  %137 = load i8, i8* %136, align 1, !dbg !1566, !tbaa !778
  %138 = icmp eq i8 %137, 0, !dbg !1568
  br i1 %138, label %597, label %139, !dbg !1564

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1435, metadata !622), !dbg !1569
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1436, metadata !622), !dbg !1570
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1437, metadata !622), !dbg !1571
  br i1 %109, label %140, label %155, !dbg !1572

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !1574
  %142 = and i1 %110, %132, !dbg !1576
  br i1 %142, label %143, label %145, !dbg !1576

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1413, metadata !622), !dbg !1476
  br label %145, !dbg !1578

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1413, metadata !622), !dbg !1476
  %147 = icmp ugt i64 %141, %146, !dbg !1580
  br i1 %147, label %155, label %148, !dbg !1582

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1583
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !1584
  %151 = icmp ne i32 %150, 0, !dbg !1585
  %152 = or i1 %151, %112, !dbg !1585
  %153 = xor i1 %151, true, !dbg !1585
  %154 = zext i1 %153 to i8, !dbg !1585
  br i1 %152, label %155, label %644, !dbg !1585

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1435, metadata !622), !dbg !1569
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1413, metadata !622), !dbg !1476
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !1587
  %159 = load i8, i8* %158, align 1, !dbg !1587, !tbaa !778
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1430, metadata !622), !dbg !1588
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
  ], !dbg !1589

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !1590

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !1591

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1436, metadata !622), !dbg !1570
  %163 = and i8 %128, 1, !dbg !1596
  %164 = icmp eq i8 %163, 0, !dbg !1596
  %165 = and i1 %114, %164, !dbg !1599
  br i1 %165, label %166, label %182, !dbg !1599

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !1601
  br i1 %167, label %168, label %170, !dbg !1606

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1608
  store i8 39, i8* %169, align 1, !dbg !1608, !tbaa !778
  br label %170, !dbg !1608

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !1610
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1420, metadata !622), !dbg !1482
  %172 = icmp ult i64 %171, %131, !dbg !1612
  br i1 %172, label %173, label %175, !dbg !1616

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !1618
  store i8 36, i8* %174, align 1, !dbg !1618, !tbaa !778
  br label %175, !dbg !1618

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1420, metadata !622), !dbg !1482
  %177 = icmp ult i64 %176, %131, !dbg !1622
  br i1 %177, label %178, label %180, !dbg !1626

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !1628
  store i8 39, i8* %179, align 1, !dbg !1628, !tbaa !778
  br label %180, !dbg !1628

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1427, metadata !622), !dbg !1490
  br label %182, !dbg !1632

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1420, metadata !622), !dbg !1482
  %185 = icmp ult i64 %183, %131, !dbg !1634
  br i1 %185, label %186, label %188, !dbg !1638

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !1640
  store i8 92, i8* %187, align 1, !dbg !1640, !tbaa !778
  br label %188, !dbg !1640

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1420, metadata !622), !dbg !1482
  br i1 %106, label %190, label %476, !dbg !1644

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !1646
  %192 = icmp ult i64 %191, %156, !dbg !1648
  br i1 %192, label %193, label %476, !dbg !1649

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !1650
  %195 = load i8, i8* %194, align 1, !dbg !1650, !tbaa !778
  %196 = add i8 %195, -48, !dbg !1652
  %197 = icmp ult i8 %196, 10, !dbg !1652
  br i1 %197, label %198, label %476, !dbg !1652

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !1653
  br i1 %199, label %200, label %202, !dbg !1658

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1660
  store i8 48, i8* %201, align 1, !dbg !1660, !tbaa !778
  br label %202, !dbg !1660

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1420, metadata !622), !dbg !1482
  %204 = icmp ult i64 %203, %131, !dbg !1664
  br i1 %204, label %205, label %207, !dbg !1668

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !1670
  store i8 48, i8* %206, align 1, !dbg !1670, !tbaa !778
  br label %207, !dbg !1670

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1420, metadata !622), !dbg !1482
  br label %476, !dbg !1674

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !1675

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !1676

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !1677

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !1679

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !1681
  %215 = icmp ult i64 %214, %156, !dbg !1683
  br i1 %215, label %216, label %476, !dbg !1684

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !1685
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !1687
  %219 = load i8, i8* %218, align 1, !dbg !1687, !tbaa !778
  %220 = icmp eq i8 %219, 63, !dbg !1688
  br i1 %220, label %221, label %476, !dbg !1689

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !1691
  %223 = load i8, i8* %222, align 1, !dbg !1691, !tbaa !778
  %224 = sext i8 %223 to i32, !dbg !1691
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
  ], !dbg !1692

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !1693

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1430, metadata !622), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1419, metadata !622), !dbg !1557
  %227 = icmp ult i64 %125, %131, !dbg !1695
  br i1 %227, label %228, label %230, !dbg !1699

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1701
  store i8 63, i8* %229, align 1, !dbg !1701, !tbaa !778
  br label %230, !dbg !1701

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1420, metadata !622), !dbg !1482
  %232 = icmp ult i64 %231, %131, !dbg !1705
  br i1 %232, label %233, label %235, !dbg !1709

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !1711
  store i8 34, i8* %234, align 1, !dbg !1711, !tbaa !778
  br label %235, !dbg !1711

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1420, metadata !622), !dbg !1482
  %237 = icmp ult i64 %236, %131, !dbg !1715
  br i1 %237, label %238, label %240, !dbg !1719

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1721
  store i8 34, i8* %239, align 1, !dbg !1721, !tbaa !778
  br label %240, !dbg !1721

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1420, metadata !622), !dbg !1482
  %242 = icmp ult i64 %241, %131, !dbg !1725
  br i1 %242, label %243, label %245, !dbg !1729

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1731
  store i8 63, i8* %244, align 1, !dbg !1731, !tbaa !778
  br label %245, !dbg !1731

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1420, metadata !622), !dbg !1482
  br label %476, !dbg !1735

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1434, metadata !622), !dbg !1736
  br label %257, !dbg !1737

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1434, metadata !622), !dbg !1736
  br label %257, !dbg !1738

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1434, metadata !622), !dbg !1736
  br label %255, !dbg !1739

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1434, metadata !622), !dbg !1736
  br label %255, !dbg !1740

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1434, metadata !622), !dbg !1736
  br label %257, !dbg !1741

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1434, metadata !622), !dbg !1736
  br i1 %114, label %253, label %254, !dbg !1742

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !1743

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !1746

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1434, metadata !622), !dbg !1736
  br i1 %118, label %257, label %644, !dbg !1748

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1434, metadata !622), !dbg !1736
  br i1 %105, label %503, label %476, !dbg !1750

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !1751
  br i1 %260, label %261, label %266, !dbg !1753

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !1754, !tbaa !778
  %263 = icmp ne i8 %262, 0, !dbg !1756
  %264 = icmp ne i64 %124, 0, !dbg !1757
  %265 = or i1 %264, %263, !dbg !1759
  br i1 %265, label %476, label %272, !dbg !1759

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !1760
  %268 = icmp ne i64 %124, 0, !dbg !1757
  %269 = or i1 %268, %267, !dbg !1762
  br i1 %269, label %476, label %272, !dbg !1762

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !1757
  br i1 %271, label %272, label %476, !dbg !1764

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1437, metadata !622), !dbg !1571
  br label %273, !dbg !1765

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !1437, metadata !622), !dbg !1571
  br i1 %118, label %476, label %644, !dbg !1766

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1428, metadata !622), !dbg !1491
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1437, metadata !622), !dbg !1571
  br i1 %114, label %276, label %476, !dbg !1768

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !1769

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !1772
  %279 = icmp ne i64 %126, 0, !dbg !1774
  %280 = or i1 %279, %278, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1421, metadata !622), !dbg !1483
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1411, metadata !622), !dbg !1474
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !1776
  %282 = select i1 %280, i64 %131, i64 0, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1411, metadata !622), !dbg !1474
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1421, metadata !622), !dbg !1483
  %283 = icmp ult i64 %125, %282, !dbg !1777
  br i1 %283, label %284, label %286, !dbg !1781

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !1783
  store i8 39, i8* %285, align 1, !dbg !1783, !tbaa !778
  br label %286, !dbg !1783

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1420, metadata !622), !dbg !1482
  %288 = icmp ult i64 %287, %282, !dbg !1787
  br i1 %288, label %289, label %291, !dbg !1791

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1793
  store i8 92, i8* %290, align 1, !dbg !1793, !tbaa !778
  br label %291, !dbg !1793

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1420, metadata !622), !dbg !1482
  %293 = icmp ult i64 %292, %282, !dbg !1797
  br i1 %293, label %294, label %296, !dbg !1801

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1803
  store i8 39, i8* %295, align 1, !dbg !1803, !tbaa !778
  br label %296, !dbg !1803

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1427, metadata !622), !dbg !1490
  br label %476, !dbg !1807

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !1808

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1438, metadata !622), !dbg !1809
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !1810
  %301 = load i16*, i16** %300, align 8, !dbg !1810, !tbaa !630
  %302 = zext i8 %159 to i64, !dbg !1810
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1810
  %304 = load i16, i16* %303, align 2, !dbg !1810, !tbaa !779
  %305 = lshr i16 %304, 14, !dbg !1812
  %306 = trunc i16 %305 to i8, !dbg !1812
  %307 = and i8 %306, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !1441, metadata !622), !dbg !1813
  br label %368, !dbg !1814

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !1815
  store i64 0, i64* %10, align 8, !dbg !1816
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1438, metadata !622), !dbg !1809
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1441, metadata !622), !dbg !1813
  %309 = icmp eq i64 %156, -1, !dbg !1817
  br i1 %309, label %310, label %312, !dbg !1819, !llvm.loop !1820

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1413, metadata !622), !dbg !1476
  br label %312, !dbg !1824, !llvm.loop !1820

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !1813

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !1441, metadata !622), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1438, metadata !622), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1413, metadata !622), !dbg !1476
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !1825
  %317 = add i64 %315, %124, !dbg !1826
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !1827
  %319 = sub i64 %313, %317, !dbg !1828
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1442, metadata !877), !dbg !1829
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !1459, metadata !877), !dbg !1830
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !1462, metadata !622), !dbg !1832
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !1833

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !1438, metadata !622), !dbg !1809
  %322 = icmp ugt i64 %313, %317, !dbg !1834
  br i1 %322, label %323, label %351, !dbg !1837

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !1838

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !1838
  %328 = load i8, i8* %327, align 1, !dbg !1838, !tbaa !778
  %329 = icmp eq i8 %328, 0, !dbg !1840
  br i1 %329, label %348, label %330, !dbg !1841

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1438, metadata !622), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !1438, metadata !622), !dbg !1809
  %332 = add i64 %331, %124, !dbg !1844
  %333 = icmp ult i64 %332, %313, !dbg !1834
  br i1 %333, label %324, label %348, !dbg !1837, !llvm.loop !1845

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !1847
  %336 = and i1 %116, %335, !dbg !1851
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1463, metadata !622), !dbg !1852
  br i1 %336, label %337, label %355, !dbg !1851

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !1853

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !1853
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !1854
  %342 = load i8, i8* %341, align 1, !dbg !1854, !tbaa !778
  %343 = sext i8 %342 to i32, !dbg !1854
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !1855

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1463, metadata !622), !dbg !1852
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !1463, metadata !622), !dbg !1852
  %346 = icmp ult i64 %345, %320, !dbg !1847
  br i1 %346, label %338, label %354, !dbg !1858, !llvm.loop !1860

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !1813

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !1813

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !1813

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1441, metadata !622), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1438, metadata !622), !dbg !1809
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1863
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !1864

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !1864, !tbaa !829
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1459, metadata !622), !dbg !1830
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !1866
  %358 = icmp eq i32 %357, 0, !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1441, metadata !622), !dbg !1813
  %359 = select i1 %358, i8 0, i8 %316, !dbg !1867
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1441, metadata !622), !dbg !1813
  %360 = add i64 %320, %315, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1438, metadata !622), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1441, metadata !622), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1438, metadata !622), !dbg !1809
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1863
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !1442, metadata !877), !dbg !1829
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !1869
  %362 = icmp eq i32 %361, 0, !dbg !1870
  br i1 %362, label %314, label %363, !dbg !1871, !llvm.loop !1820

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !1873

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1873
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !1441, metadata !622), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !1438, metadata !622), !dbg !1809
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !1863
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !1873
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !1441, metadata !622), !dbg !1813
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1438, metadata !622), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1413, metadata !622), !dbg !1476
  %372 = and i8 %371, 1, !dbg !1874
  %373 = icmp ne i8 %372, 0, !dbg !1874
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !1437, metadata !622), !dbg !1571
  %374 = icmp ult i64 %370, 2, !dbg !1875
  %375 = or i1 %373, %113, !dbg !1876
  %376 = and i1 %374, %375, !dbg !1878
  br i1 %376, label %476, label %377, !dbg !1878

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !1470, metadata !622), !dbg !1880
  br label %379, !dbg !1881

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !1436, metadata !622), !dbg !1570
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !1435, metadata !622), !dbg !1569
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1430, metadata !622), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1419, metadata !622), !dbg !1557
  br i1 %375, label %432, label %386, !dbg !1882

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !1887

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1436, metadata !622), !dbg !1570
  %388 = and i8 %382, 1, !dbg !1891
  %389 = icmp eq i8 %388, 0, !dbg !1891
  %390 = and i1 %114, %389, !dbg !1894
  br i1 %390, label %391, label %407, !dbg !1894

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !1896
  br i1 %392, label %393, label %395, !dbg !1901

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1903
  store i8 39, i8* %394, align 1, !dbg !1903, !tbaa !778
  br label %395, !dbg !1903

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1420, metadata !622), !dbg !1482
  %397 = icmp ult i64 %396, %131, !dbg !1907
  br i1 %397, label %398, label %400, !dbg !1911

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1913
  store i8 36, i8* %399, align 1, !dbg !1913, !tbaa !778
  br label %400, !dbg !1913

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1420, metadata !622), !dbg !1482
  %402 = icmp ult i64 %401, %131, !dbg !1917
  br i1 %402, label %403, label %405, !dbg !1921

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1923
  store i8 39, i8* %404, align 1, !dbg !1923, !tbaa !778
  br label %405, !dbg !1923

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1427, metadata !622), !dbg !1490
  br label %407, !dbg !1927

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1420, metadata !622), !dbg !1482
  %410 = icmp ult i64 %408, %131, !dbg !1929
  br i1 %410, label %411, label %413, !dbg !1933

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1935
  store i8 92, i8* %412, align 1, !dbg !1935, !tbaa !778
  br label %413, !dbg !1935

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1420, metadata !622), !dbg !1482
  %415 = icmp ult i64 %414, %131, !dbg !1939
  br i1 %415, label %416, label %420, !dbg !1943

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !1945
  %418 = or i8 %417, 48, !dbg !1945
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !1945
  store i8 %418, i8* %419, align 1, !dbg !1945, !tbaa !778
  br label %420, !dbg !1945

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1420, metadata !622), !dbg !1482
  %422 = icmp ult i64 %421, %131, !dbg !1949
  br i1 %422, label %423, label %428, !dbg !1953

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !1955
  %425 = and i8 %424, 7, !dbg !1955
  %426 = or i8 %425, 48, !dbg !1955
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !1955
  store i8 %426, i8* %427, align 1, !dbg !1955, !tbaa !778
  br label %428, !dbg !1955

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1420, metadata !622), !dbg !1482
  %430 = and i8 %383, 7, !dbg !1959
  %431 = or i8 %430, 48, !dbg !1960
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1430, metadata !622), !dbg !1588
  br label %441, !dbg !1961

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !1962
  %434 = icmp eq i8 %433, 0, !dbg !1962
  br i1 %434, label %441, label %435, !dbg !1964

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !1965
  br i1 %436, label %437, label %439, !dbg !1970

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !1972
  store i8 92, i8* %438, align 1, !dbg !1972, !tbaa !778
  br label %439, !dbg !1972

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1435, metadata !622), !dbg !1569
  br label %441, !dbg !1976

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !1436, metadata !622), !dbg !1570
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !1435, metadata !622), !dbg !1569
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1430, metadata !622), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1420, metadata !622), !dbg !1482
  %447 = add i64 %380, 1, !dbg !1977
  %448 = icmp ugt i64 %378, %447, !dbg !1979
  br i1 %448, label %449, label %541, !dbg !1980

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !1981
  %451 = icmp ne i8 %450, 0, !dbg !1981
  %452 = and i8 %446, 1, !dbg !1985
  %453 = icmp eq i8 %452, 0, !dbg !1985
  %454 = and i1 %451, %453, !dbg !1981
  br i1 %454, label %455, label %466, !dbg !1981

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !1987
  br i1 %456, label %457, label %459, !dbg !1992

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !1994
  store i8 39, i8* %458, align 1, !dbg !1994, !tbaa !778
  br label %459, !dbg !1994

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1420, metadata !622), !dbg !1482
  %461 = icmp ult i64 %460, %131, !dbg !1998
  br i1 %461, label %462, label %464, !dbg !2002

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2004
  store i8 39, i8* %463, align 1, !dbg !2004, !tbaa !778
  br label %464, !dbg !2004

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1427, metadata !622), !dbg !1490
  br label %466, !dbg !2008

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1420, metadata !622), !dbg !1482
  %469 = icmp ult i64 %467, %131, !dbg !2010
  br i1 %469, label %470, label %472, !dbg !2014

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2016
  store i8 %444, i8* %471, align 1, !dbg !2016, !tbaa !778
  br label %472, !dbg !2016

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1419, metadata !622), !dbg !1557
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2020
  %475 = load i8, i8* %474, align 1, !dbg !2020, !tbaa !778
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1430, metadata !622), !dbg !1588
  br label %379, !dbg !2021, !llvm.loop !2023

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1411, metadata !622), !dbg !1474
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !1437, metadata !622), !dbg !1571
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !1436, metadata !622), !dbg !1570
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !1435, metadata !622), !dbg !1569
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1430, metadata !622), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1428, metadata !622), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1413, metadata !622), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1421, metadata !622), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1419, metadata !622), !dbg !1557
  br i1 %107, label %488, label %487, !dbg !2026

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2028

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2029

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2030
  %491 = zext i8 %490 to i64, !dbg !2030
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2032
  %493 = load i32, i32* %492, align 4, !dbg !2032, !tbaa !829
  %494 = and i8 %483, 31, !dbg !2033
  %495 = zext i8 %494 to i32, !dbg !2034
  %496 = shl i32 1, %495, !dbg !2035
  %497 = and i32 %493, %496, !dbg !2035
  %498 = icmp eq i32 %497, 0, !dbg !2035
  %499 = icmp eq i8 %157, 0, !dbg !2036
  %500 = and i1 %499, %498, !dbg !2037
  br i1 %500, label %542, label %503, !dbg !2037

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2036
  br i1 %502, label %542, label %503, !dbg !2038

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1411, metadata !622), !dbg !1474
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !1437, metadata !622), !dbg !1571
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1430, metadata !622), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1428, metadata !622), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1413, metadata !622), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1421, metadata !622), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1419, metadata !622), !dbg !1557
  br i1 %112, label %513, label %644, !dbg !2040

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1436, metadata !622), !dbg !1570
  %514 = and i8 %508, 1, !dbg !2043
  %515 = icmp eq i8 %514, 0, !dbg !2043
  %516 = and i1 %114, %515, !dbg !2046
  br i1 %516, label %517, label %533, !dbg !2046

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2048
  br i1 %518, label %519, label %521, !dbg !2053

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2055
  store i8 39, i8* %520, align 1, !dbg !2055, !tbaa !778
  br label %521, !dbg !2055

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1420, metadata !622), !dbg !1482
  %523 = icmp ult i64 %522, %512, !dbg !2059
  br i1 %523, label %524, label %526, !dbg !2063

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2065
  store i8 36, i8* %525, align 1, !dbg !2065, !tbaa !778
  br label %526, !dbg !2065

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1420, metadata !622), !dbg !1482
  %528 = icmp ult i64 %527, %512, !dbg !2069
  br i1 %528, label %529, label %531, !dbg !2073

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2075
  store i8 39, i8* %530, align 1, !dbg !2075, !tbaa !778
  br label %531, !dbg !2075

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1427, metadata !622), !dbg !1490
  br label %533, !dbg !2079

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1420, metadata !622), !dbg !1482
  %536 = icmp ult i64 %534, %512, !dbg !2081
  br i1 %536, label %537, label %539, !dbg !2085

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2087
  store i8 92, i8* %538, align 1, !dbg !2087, !tbaa !778
  br label %539, !dbg !2087

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1411, metadata !622), !dbg !1474
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1437, metadata !622), !dbg !1571
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1436, metadata !622), !dbg !1570
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1430, metadata !622), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1428, metadata !622), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1413, metadata !622), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1421, metadata !622), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1419, metadata !622), !dbg !1557
  br label %569, !dbg !2091

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !1474

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1411, metadata !622), !dbg !1474
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !1437, metadata !622), !dbg !1571
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !1436, metadata !622), !dbg !1570
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1430, metadata !622), !dbg !1588
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1428, metadata !622), !dbg !1491
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1413, metadata !622), !dbg !1476
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1421, metadata !622), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1419, metadata !622), !dbg !1557
  %553 = and i8 %547, 1, !dbg !2091
  %554 = icmp ne i8 %553, 0, !dbg !2091
  %555 = and i8 %550, 1, !dbg !2095
  %556 = icmp eq i8 %555, 0, !dbg !2095
  %557 = and i1 %554, %556, !dbg !2091
  br i1 %557, label %558, label %569, !dbg !2091

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2097
  br i1 %559, label %560, label %562, !dbg !2102

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2104
  store i8 39, i8* %561, align 1, !dbg !2104, !tbaa !778
  br label %562, !dbg !2104

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1420, metadata !622), !dbg !1482
  %564 = icmp ult i64 %563, %552, !dbg !2108
  br i1 %564, label %565, label %567, !dbg !2112

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2114
  store i8 39, i8* %566, align 1, !dbg !2114, !tbaa !778
  br label %567, !dbg !2114

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1420, metadata !622), !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1427, metadata !622), !dbg !1490
  br label %569, !dbg !2118

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1427, metadata !622), !dbg !1490
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1420, metadata !622), !dbg !1482
  %579 = icmp ult i64 %577, %570, !dbg !2120
  br i1 %579, label %580, label %582, !dbg !2124

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2126
  store i8 %572, i8* %581, align 1, !dbg !2126, !tbaa !778
  br label %582, !dbg !2126

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1420, metadata !622), !dbg !1482
  %584 = and i8 %571, 1, !dbg !2130
  %585 = icmp eq i8 %584, 0, !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1429, metadata !622), !dbg !1492
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2132
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1429, metadata !622), !dbg !1492
  br label %587, !dbg !2133

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1419, metadata !622), !dbg !1557
  br label %123, !dbg !2136, !llvm.loop !2137

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2140
  %600 = and i1 %114, %599, !dbg !2142
  %601 = xor i1 %600, true, !dbg !2142
  %602 = or i1 %112, %601, !dbg !2142
  br i1 %602, label %603, label %648, !dbg !2142

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2143
  %605 = xor i1 %604, true, !dbg !2143
  %606 = and i8 %129, 1, !dbg !2145
  %607 = icmp eq i8 %606, 0, !dbg !2145
  %608 = or i1 %607, %605, !dbg !2143
  br i1 %608, label %618, label %609, !dbg !2143

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2147
  %611 = icmp eq i8 %610, 0, !dbg !2147
  br i1 %611, label %614, label %612, !dbg !2150

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2151
  br label %659, !dbg !2152

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2153
  %616 = icmp ne i64 %126, 0, !dbg !2155
  %617 = and i1 %616, %615, !dbg !2157
  br i1 %617, label %27, label %618, !dbg !2157

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2158
  %620 = and i1 %619, %112, !dbg !2160
  br i1 %620, label %621, label %638, !dbg !2160

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1422, metadata !622), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1420, metadata !622), !dbg !1482
  %622 = load i8, i8* %100, align 1, !dbg !2161, !tbaa !778
  %623 = icmp eq i8 %622, 0, !dbg !2165
  br i1 %623, label %638, label %624, !dbg !2165

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2167

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2167
  br i1 %629, label %630, label %632, !dbg !2171

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2173
  store i8 %626, i8* %631, align 1, !dbg !2173, !tbaa !778
  br label %632, !dbg !2173

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1420, metadata !622), !dbg !1482
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2177
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1422, metadata !622), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1422, metadata !622), !dbg !1484
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1420, metadata !622), !dbg !1482
  %635 = load i8, i8* %634, align 1, !dbg !2161, !tbaa !778
  %636 = icmp eq i8 %635, 0, !dbg !2165
  br i1 %636, label %637, label %625, !dbg !2165, !llvm.loop !2179

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !1482

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1420, metadata !622), !dbg !1482
  %640 = icmp ult i64 %639, %131, !dbg !2182
  br i1 %640, label %641, label %659, !dbg !2184

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2185
  store i8 0, i8* %642, align 1, !dbg !2186, !tbaa !778
  br label %659, !dbg !2185

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !1474

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !1474

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !1474

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1411, metadata !622), !dbg !1474
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1413, metadata !622), !dbg !1476
  %653 = icmp ne i32 %650, 2, !dbg !2187
  %654 = icmp eq i8 %104, 0, !dbg !2189
  %655 = or i1 %653, %654, !dbg !2191
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1414, metadata !622), !dbg !1477
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1414, metadata !622), !dbg !1477
  %657 = and i32 %5, -3, !dbg !2192
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2193
  br label %659, !dbg !2194

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2195
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2196 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2200, metadata !622), !dbg !2204
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2201, metadata !622), !dbg !2205
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2206
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2202, metadata !622), !dbg !2207
  %4 = icmp eq i8* %3, %0, !dbg !2208
  br i1 %4, label %5, label %75, !dbg !2210

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2211
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2203, metadata !622), !dbg !2212
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2213, metadata !622), !dbg !2229
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !622), !dbg !2232
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2228, metadata !622), !dbg !2233
  %7 = load i8, i8* %6, align 1, !tbaa !778
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2234
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2234

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2237, metadata !622), !dbg !2251
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2249, metadata !622), !dbg !2255
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2250, metadata !622), !dbg !2256
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !778
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2257
  %15 = icmp eq i32 %14, 84, !dbg !2257
  br i1 %15, label %16, label %72, !dbg !2257

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2260, metadata !622), !dbg !2273
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2271, metadata !622), !dbg !2277
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2272, metadata !622), !dbg !2278
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !778
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2279
  %21 = icmp eq i32 %20, 70, !dbg !2279
  br i1 %21, label %22, label %72, !dbg !2279

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2282, metadata !622), !dbg !2294
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2292, metadata !622), !dbg !2298
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2293, metadata !622), !dbg !2299
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !778
  %25 = icmp eq i8 %24, 45, !dbg !2300
  br i1 %25, label %26, label %72, !dbg !2303

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2305, metadata !622), !dbg !2316
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2314, metadata !622), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2315, metadata !622), !dbg !2321
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !778
  %29 = icmp eq i8 %28, 56, !dbg !2322
  br i1 %29, label %30, label %72, !dbg !2325

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2327, metadata !622), !dbg !2337
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2335, metadata !622), !dbg !2341
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2336, metadata !622), !dbg !2342
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !778
  %33 = icmp eq i8 %32, 0, !dbg !2343
  br i1 %33, label %34, label %72, !dbg !2346

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2348, !tbaa !778
  %36 = icmp eq i8 %35, 96, !dbg !2349
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.76, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.77, i64 0, i64 0), !dbg !2348
  br label %75, !dbg !2350

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2237, metadata !622), !dbg !2351
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2249, metadata !622), !dbg !2355
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2250, metadata !622), !dbg !2356
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !778
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2357
  %43 = icmp eq i32 %42, 66, !dbg !2357
  br i1 %43, label %44, label %72, !dbg !2357

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2260, metadata !622), !dbg !2358
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2271, metadata !622), !dbg !2360
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2272, metadata !622), !dbg !2361
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !778
  %47 = icmp eq i8 %46, 49, !dbg !2362
  br i1 %47, label %48, label %72, !dbg !2364

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2282, metadata !622), !dbg !2366
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2292, metadata !622), !dbg !2368
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2293, metadata !622), !dbg !2369
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !778
  %51 = icmp eq i8 %50, 56, !dbg !2370
  br i1 %51, label %52, label %72, !dbg !2371

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2305, metadata !622), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2314, metadata !622), !dbg !2374
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2315, metadata !622), !dbg !2375
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !778
  %55 = icmp eq i8 %54, 48, !dbg !2376
  br i1 %55, label %56, label %72, !dbg !2377

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2327, metadata !622), !dbg !2378
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2335, metadata !622), !dbg !2380
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2336, metadata !622), !dbg !2381
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !778
  %59 = icmp eq i8 %58, 51, !dbg !2382
  br i1 %59, label %60, label %72, !dbg !2383

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2384, metadata !622), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2391, metadata !622), !dbg !2397
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2392, metadata !622), !dbg !2398
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !778
  %63 = icmp eq i8 %62, 48, !dbg !2399
  br i1 %63, label %64, label %72, !dbg !2402

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2404, metadata !622), !dbg !2412
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2410, metadata !622), !dbg !2416
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2411, metadata !622), !dbg !2417
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !778
  %67 = icmp eq i8 %66, 0, !dbg !2418
  br i1 %67, label %68, label %72, !dbg !2421

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2422, !tbaa !778
  %70 = icmp eq i8 %69, 96, !dbg !2423
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.79, i64 0, i64 0), !dbg !2422
  br label %75, !dbg !2424

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2425
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !2426
  br label %75, !dbg !2427

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2428
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2429 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2433, metadata !622), !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2434, metadata !622), !dbg !2437
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2435, metadata !622), !dbg !2438
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2439, metadata !622) #10, !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2444, metadata !622) #10, !dbg !2454
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !2445, metadata !622) #10, !dbg !2455
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2446, metadata !622) #10, !dbg !2456
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !2457
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !2457
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2447, metadata !622) #10, !dbg !2458
  %6 = tail call i32* @__errno_location() #1, !dbg !2459
  %7 = load i32, i32* %6, align 4, !dbg !2459, !tbaa !829
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !2448, metadata !622) #10, !dbg !2460
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2461
  %9 = load i32, i32* %8, align 4, !dbg !2461, !tbaa !1342
  %10 = or i32 %9, 1, !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2449, metadata !622) #10, !dbg !2463
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2464
  %12 = load i32, i32* %11, align 8, !dbg !2464, !tbaa !1280
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2465
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2466
  %15 = load i8*, i8** %14, align 8, !dbg !2466, !tbaa !1369
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2467
  %17 = load i8*, i8** %16, align 8, !dbg !2467, !tbaa !1372
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !2468
  %19 = add i64 %18, 1, !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2450, metadata !622) #10, !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2471, metadata !622) #10, !dbg !2476
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2478
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2451, metadata !622) #10, !dbg !2479
  %21 = load i32, i32* %11, align 8, !dbg !2480, !tbaa !1280
  %22 = load i8*, i8** %14, align 8, !dbg !2481, !tbaa !1369
  %23 = load i8*, i8** %16, align 8, !dbg !2482, !tbaa !1372
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !2483
  store i32 %7, i32* %6, align 4, !dbg !2484, !tbaa !829
  ret i8* %20, !dbg !2485
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2440 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2439, metadata !622), !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2444, metadata !622), !dbg !2487
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !2445, metadata !622), !dbg !2488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2446, metadata !622), !dbg !2489
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !2490
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !2490
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2447, metadata !622), !dbg !2491
  %7 = tail call i32* @__errno_location() #1, !dbg !2492
  %8 = load i32, i32* %7, align 4, !dbg !2492, !tbaa !829
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2448, metadata !622), !dbg !2493
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2494
  %10 = load i32, i32* %9, align 4, !dbg !2494, !tbaa !1342
  %11 = icmp ne i64* %2, null, !dbg !2495
  %12 = xor i1 %11, true, !dbg !2495
  %13 = zext i1 %12 to i32, !dbg !2495
  %14 = or i32 %10, %13, !dbg !2496
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !2449, metadata !622), !dbg !2497
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2498
  %16 = load i32, i32* %15, align 8, !dbg !2498, !tbaa !1280
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2499
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2500
  %19 = load i8*, i8** %18, align 8, !dbg !2500, !tbaa !1369
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2501
  %21 = load i8*, i8** %20, align 8, !dbg !2501, !tbaa !1372
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !2502
  %23 = add i64 %22, 1, !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2450, metadata !622), !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !2471, metadata !622) #10, !dbg !2505
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !2451, metadata !622), !dbg !2508
  %25 = load i32, i32* %15, align 8, !dbg !2509, !tbaa !1280
  %26 = load i8*, i8** %18, align 8, !dbg !2510, !tbaa !1369
  %27 = load i8*, i8** %20, align 8, !dbg !2511, !tbaa !1372
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !2512
  store i32 %8, i32* %7, align 4, !dbg !2513, !tbaa !829
  br i1 %11, label %29, label %30, !dbg !2514

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2515, !tbaa !2517
  br label %30, !dbg !2518

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2519
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !2520 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2524, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !2522, metadata !622), !dbg !2525
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2523, metadata !622), !dbg !2526
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2523, metadata !622), !dbg !2526
  %2 = load i32, i32* @nslots, align 4, !dbg !2527, !tbaa !829
  %3 = icmp sgt i32 %2, 1, !dbg !2531
  br i1 %3, label %4, label %14, !dbg !2532

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !2534

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !2534
  %8 = load i8*, i8** %7, align 8, !dbg !2534, !tbaa !2535
  tail call void @free(i8* %8) #10, !dbg !2537
  %9 = add nuw i64 %6, 1, !dbg !2538
  %10 = load i32, i32* @nslots, align 4, !dbg !2527, !tbaa !829
  %11 = sext i32 %10 to i64, !dbg !2531
  %12 = icmp slt i64 %9, %11, !dbg !2531
  br i1 %12, label %5, label %13, !dbg !2532, !llvm.loop !2540

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !2543

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2543
  %16 = load i8*, i8** %15, align 8, !dbg !2543, !tbaa !2535
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2545
  br i1 %17, label %19, label %18, !dbg !2546

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !2547
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2549, !tbaa !2550
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2551, !tbaa !2535
  br label %19, !dbg !2552

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2553
  br i1 %20, label %23, label %21, !dbg !2555

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !2556
  tail call void @free(i8* %22) #10, !dbg !2558
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2559, !tbaa !630
  br label %23, !dbg !2560

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !2561, !tbaa !829
  ret void, !dbg !2562
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !2563 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2567, metadata !622), !dbg !2569
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2568, metadata !622), !dbg !2570
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2571
  ret i8* %3, !dbg !2572
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !2573 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2577, metadata !622), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2578, metadata !622), !dbg !2592
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2579, metadata !622), !dbg !2593
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2580, metadata !622), !dbg !2594
  %5 = tail call i32* @__errno_location() #1, !dbg !2595
  %6 = load i32, i32* %5, align 4, !dbg !2595, !tbaa !829
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2581, metadata !622), !dbg !2596
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2597, !tbaa !630
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !2582, metadata !622), !dbg !2598
  %8 = icmp slt i32 %0, 0, !dbg !2599
  br i1 %8, label %9, label %10, !dbg !2601

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !2602
  unreachable, !dbg !2602

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2603, !tbaa !829
  %12 = icmp sgt i32 %11, %0, !dbg !2604
  br i1 %12, label %34, label %13, !dbg !2605

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2606
  %15 = icmp ugt i32 %0, 2147483646, !dbg !2607
  br i1 %15, label %16, label %17, !dbg !2609

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !2610
  unreachable, !dbg !2610

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !2611
  %19 = select i1 %14, i8* null, i8* %18, !dbg !2611
  %20 = add nsw i32 %0, 1, !dbg !2613
  %21 = sext i32 %20 to i64, !dbg !2614
  %22 = shl nsw i64 %21, 4, !dbg !2615
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2616
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2616
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !2582, metadata !622), !dbg !2598
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2617, !tbaa !630
  br i1 %14, label %25, label %26, !dbg !2618

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2619, !tbaa.struct !2621
  br label %26, !dbg !2622

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2623, !tbaa !829
  %28 = sext i32 %27 to i64, !dbg !2624
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2624
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2625
  %31 = sub nsw i32 %20, %27, !dbg !2626
  %32 = sext i32 %31 to i64, !dbg !2627
  %33 = shl nsw i64 %32, 4, !dbg !2628
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !2625
  store i32 %20, i32* @nslots, align 4, !dbg !2629, !tbaa !829
  br label %34, !dbg !2630

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !2582, metadata !622), !dbg !2598
  %36 = sext i32 %0 to i64, !dbg !2631
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2632
  %38 = load i64, i64* %37, align 8, !dbg !2632, !tbaa !2550
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !2586, metadata !622), !dbg !2633
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2634
  %40 = load i8*, i8** %39, align 8, !dbg !2634, !tbaa !2535
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !2588, metadata !622), !dbg !2635
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2636
  %42 = load i32, i32* %41, align 4, !dbg !2636, !tbaa !1342
  %43 = or i32 %42, 1, !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !2589, metadata !622), !dbg !2638
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2639
  %45 = load i32, i32* %44, align 8, !dbg !2639, !tbaa !1280
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2640
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2641
  %48 = load i8*, i8** %47, align 8, !dbg !2641, !tbaa !1369
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2642
  %50 = load i8*, i8** %49, align 8, !dbg !2642, !tbaa !1372
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !2590, metadata !622), !dbg !2644
  %52 = icmp ugt i64 %38, %51, !dbg !2645
  br i1 %52, label %63, label %53, !dbg !2647

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2648
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2586, metadata !622), !dbg !2633
  store i64 %54, i64* %37, align 8, !dbg !2650, !tbaa !2550
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2651
  br i1 %55, label %57, label %56, !dbg !2653

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2654
  br label %57, !dbg !2654

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2471, metadata !622) #10, !dbg !2655
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2657
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2588, metadata !622), !dbg !2635
  store i8* %58, i8** %39, align 8, !dbg !2658, !tbaa !2535
  %59 = load i32, i32* %44, align 8, !dbg !2659, !tbaa !1280
  %60 = load i8*, i8** %47, align 8, !dbg !2660, !tbaa !1369
  %61 = load i8*, i8** %49, align 8, !dbg !2661, !tbaa !1372
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !2662
  br label %63, !dbg !2663

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !2588, metadata !622), !dbg !2635
  store i32 %6, i32* %5, align 4, !dbg !2664, !tbaa !829
  ret i8* %64, !dbg !2665
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2666 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2670, metadata !622), !dbg !2673
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2671, metadata !622), !dbg !2674
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2672, metadata !622), !dbg !2675
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2676
  ret i8* %4, !dbg !2677
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !2678 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2682, metadata !622), !dbg !2683
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2567, metadata !622) #10, !dbg !2684
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2568, metadata !622) #10, !dbg !2686
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2687
  ret i8* %2, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !2689 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2693, metadata !622), !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2694, metadata !622), !dbg !2696
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2670, metadata !622) #10, !dbg !2697
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2671, metadata !622) #10, !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2672, metadata !622) #10, !dbg !2700
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2701
  ret i8* %3, !dbg !2702
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !2703 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2711, metadata !2717), !dbg !2718
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2707, metadata !622), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2708, metadata !622), !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2709, metadata !622), !dbg !2722
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2723
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2710, metadata !877), !dbg !2724
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2716, metadata !622) #10, !dbg !2725
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2726
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2726
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2711, metadata !622) #10, !dbg !2718
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2711, metadata !2727) #10, !dbg !2718
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2718
  %8 = icmp eq i32 %1, 10, !dbg !2728
  br i1 %8, label %9, label %10, !dbg !2730

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2731, !noalias !2732
  unreachable, !dbg !2731

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2711, metadata !2727) #10, !dbg !2718
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2735
  store i32 %1, i32* %11, align 8, !dbg !2735, !alias.scope !2732
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2735
  %13 = bitcast i32* %12 to i8*, !dbg !2735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2735
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2736
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2710, metadata !877), !dbg !2724
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2737
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2738
  ret i8* %14, !dbg !2739
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !2740 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2711, metadata !2717), !dbg !2749
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2744, metadata !622), !dbg !2751
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2745, metadata !622), !dbg !2752
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2746, metadata !622), !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2747, metadata !622), !dbg !2754
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2755
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2755
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2748, metadata !877), !dbg !2756
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2716, metadata !622) #10, !dbg !2757
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2758
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2758
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2711, metadata !622) #10, !dbg !2749
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2711, metadata !2727) #10, !dbg !2749
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2749
  %9 = icmp eq i32 %1, 10, !dbg !2759
  br i1 %9, label %10, label %11, !dbg !2760

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !2761, !noalias !2762
  unreachable, !dbg !2761

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2711, metadata !2727) #10, !dbg !2749
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2765
  store i32 %1, i32* %12, align 8, !dbg !2765, !alias.scope !2762
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2765
  %14 = bitcast i32* %13 to i8*, !dbg !2765
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !2765
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2766
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2748, metadata !877), !dbg !2756
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !2767
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2768
  ret i8* %15, !dbg !2769
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !2770 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !2711, metadata !2717), !dbg !2776
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2774, metadata !622), !dbg !2779
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2775, metadata !622), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2707, metadata !622) #10, !dbg !2781
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2708, metadata !622) #10, !dbg !2782
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2709, metadata !622) #10, !dbg !2783
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2784
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2784
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2710, metadata !877) #10, !dbg !2785
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2716, metadata !622) #10, !dbg !2786
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !2787
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !2787
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2711, metadata !622) #10, !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2711, metadata !2727) #10, !dbg !2776
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !2776
  %7 = icmp eq i32 %0, 10, !dbg !2788
  br i1 %7, label %8, label %9, !dbg !2789

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !2790, !noalias !2791
  unreachable, !dbg !2790

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2711, metadata !2727) #10, !dbg !2776
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2794
  store i32 %0, i32* %10, align 8, !dbg !2794, !alias.scope !2791
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2794
  %12 = bitcast i32* %11 to i8*, !dbg !2794
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !2794
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !2795
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2710, metadata !877) #10, !dbg !2785
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2796
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2797
  ret i8* %13, !dbg !2798
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !2799 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2711, metadata !2717), !dbg !2806
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2803, metadata !622), !dbg !2809
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2804, metadata !622), !dbg !2810
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2805, metadata !622), !dbg !2811
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2744, metadata !622) #10, !dbg !2812
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2745, metadata !622) #10, !dbg !2813
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2746, metadata !622) #10, !dbg !2814
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2747, metadata !622) #10, !dbg !2815
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2816
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !2816
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2748, metadata !877) #10, !dbg !2817
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2716, metadata !622) #10, !dbg !2818
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2819
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !2819
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2711, metadata !622) #10, !dbg !2806
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2711, metadata !2727) #10, !dbg !2806
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !2806
  %8 = icmp eq i32 %0, 10, !dbg !2820
  br i1 %8, label %9, label %10, !dbg !2821

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !2822, !noalias !2823
  unreachable, !dbg !2822

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2711, metadata !2727) #10, !dbg !2806
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2826
  store i32 %0, i32* %11, align 8, !dbg !2826, !alias.scope !2823
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2826
  %13 = bitcast i32* %12 to i8*, !dbg !2826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !2826
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !2827
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2748, metadata !877) #10, !dbg !2817
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !2828
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !2829
  ret i8* %14, !dbg !2830
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !2831 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2835, metadata !622), !dbg !2839
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2836, metadata !622), !dbg !2840
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2837, metadata !622), !dbg !2841
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2842
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !2842
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !2843, !tbaa.struct !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2838, metadata !877), !dbg !2845
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1300, metadata !622), !dbg !2846
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1301, metadata !622), !dbg !2848
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1302, metadata !622), !dbg !2849
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1303, metadata !622), !dbg !2850
  %6 = lshr i8 %2, 5, !dbg !2851
  %7 = zext i8 %6 to i64, !dbg !2851
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2852
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1304, metadata !622), !dbg !2853
  %9 = and i8 %2, 31, !dbg !2854
  %10 = zext i8 %9 to i32, !dbg !2855
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1306, metadata !622), !dbg !2856
  %11 = load i32, i32* %8, align 4, !dbg !2857, !tbaa !829
  %12 = lshr i32 %11, %10, !dbg !2858
  %13 = and i32 %12, 1, !dbg !2859
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1307, metadata !622), !dbg !2860
  %14 = xor i32 %13, 1, !dbg !2861
  %15 = shl i32 %14, %10, !dbg !2862
  %16 = xor i32 %15, %11, !dbg !2863
  store i32 %16, i32* %8, align 4, !dbg !2863, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2838, metadata !877), !dbg !2845
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2864
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !2865
  ret i8* %17, !dbg !2866
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !2867 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2871, metadata !622), !dbg !2873
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2872, metadata !622), !dbg !2874
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2835, metadata !622) #10, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2836, metadata !622) #10, !dbg !2877
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2837, metadata !622) #10, !dbg !2878
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2879
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2880, !tbaa.struct !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2838, metadata !877) #10, !dbg !2881
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1300, metadata !622) #10, !dbg !2882
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1301, metadata !622) #10, !dbg !2884
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1302, metadata !622) #10, !dbg !2885
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1303, metadata !622) #10, !dbg !2886
  %5 = lshr i8 %1, 5, !dbg !2887
  %6 = zext i8 %5 to i64, !dbg !2887
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2888
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1304, metadata !622) #10, !dbg !2889
  %8 = and i8 %1, 31, !dbg !2890
  %9 = zext i8 %8 to i32, !dbg !2891
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1306, metadata !622) #10, !dbg !2892
  %10 = load i32, i32* %7, align 4, !dbg !2893, !tbaa !829
  %11 = lshr i32 %10, %9, !dbg !2894
  %12 = and i32 %11, 1, !dbg !2895
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1307, metadata !622) #10, !dbg !2896
  %13 = xor i32 %12, 1, !dbg !2897
  %14 = shl i32 %13, %9, !dbg !2898
  %15 = xor i32 %14, %10, !dbg !2899
  store i32 %15, i32* %7, align 4, !dbg !2899, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2838, metadata !877) #10, !dbg !2881
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2900
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2901
  ret i8* %16, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !2903 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2905, metadata !622), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2871, metadata !622) #10, !dbg !2907
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2872, metadata !622) #10, !dbg !2909
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2835, metadata !622) #10, !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !2836, metadata !622) #10, !dbg !2912
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2837, metadata !622) #10, !dbg !2913
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2914
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !2914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2915, !tbaa.struct !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2838, metadata !877) #10, !dbg !2916
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1300, metadata !622) #10, !dbg !2917
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1301, metadata !622) #10, !dbg !2919
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1302, metadata !622) #10, !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1303, metadata !622) #10, !dbg !2921
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2922
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1304, metadata !622) #10, !dbg !2923
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1306, metadata !622) #10, !dbg !2924
  %5 = load i32, i32* %4, align 4, !dbg !2925, !tbaa !829
  %6 = or i32 %5, 67108864, !dbg !2926
  store i32 %6, i32* %4, align 4, !dbg !2926, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2838, metadata !877) #10, !dbg !2916
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2927
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !2928
  ret i8* %7, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !2930 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2932, metadata !622), !dbg !2934
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2933, metadata !622), !dbg !2935
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2835, metadata !622) #10, !dbg !2936
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2836, metadata !622) #10, !dbg !2938
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2837, metadata !622) #10, !dbg !2939
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2940
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !2940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !2941, !tbaa.struct !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2838, metadata !877) #10, !dbg !2942
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1300, metadata !622) #10, !dbg !2943
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1301, metadata !622) #10, !dbg !2945
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1302, metadata !622) #10, !dbg !2946
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1303, metadata !622) #10, !dbg !2947
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2948
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1304, metadata !622) #10, !dbg !2949
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1306, metadata !622) #10, !dbg !2950
  %6 = load i32, i32* %5, align 4, !dbg !2951, !tbaa !829
  %7 = or i32 %6, 67108864, !dbg !2952
  store i32 %7, i32* %5, align 4, !dbg !2952, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2838, metadata !877) #10, !dbg !2942
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2953
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !2954
  ret i8* %8, !dbg !2955
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !2956 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !2711, metadata !2717), !dbg !2962
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2958, metadata !622), !dbg !2964
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2959, metadata !622), !dbg !2965
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2960, metadata !622), !dbg !2966
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2967
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2716, metadata !622) #10, !dbg !2968
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !2969
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !2969
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !2711, metadata !622) #10, !dbg !2962
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2711, metadata !2727) #10, !dbg !2962
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !2962
  %9 = icmp eq i32 %1, 10, !dbg !2970
  br i1 %9, label %10, label %11, !dbg !2971

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2972, !noalias !2973
  unreachable, !dbg !2972

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2711, metadata !2727) #10, !dbg !2962
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !2976
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !2976
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !2977
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2978
  store i32 %1, i32* %13, align 8, !dbg !2978
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2978
  %15 = bitcast i32* %14 to i8*, !dbg !2978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !2978
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2961, metadata !877), !dbg !2979
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1300, metadata !622), !dbg !2980
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1301, metadata !622), !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1302, metadata !622), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1303, metadata !622), !dbg !2984
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !2985
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1304, metadata !622), !dbg !2986
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1306, metadata !622), !dbg !2987
  %17 = load i32, i32* %16, align 4, !dbg !2988, !tbaa !829
  %18 = or i32 %17, 67108864, !dbg !2989
  store i32 %18, i32* %16, align 4, !dbg !2989, !tbaa !829
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2961, metadata !877), !dbg !2979
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !2990
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !2991
  ret i8* %19, !dbg !2992
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !2993 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2997, metadata !622), !dbg !3001
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2998, metadata !622), !dbg !3002
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2999, metadata !622), !dbg !3003
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3000, metadata !622), !dbg !3004
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3005, metadata !622) #10, !dbg !3015
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3010, metadata !622) #10, !dbg !3017
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3011, metadata !622) #10, !dbg !3018
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3012, metadata !622) #10, !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3013, metadata !622) #10, !dbg !3020
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3021
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3022, !tbaa.struct !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3014, metadata !877) #10, !dbg !3023
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1350, metadata !622) #10, !dbg !3024
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1351, metadata !622) #10, !dbg !3026
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1352, metadata !622) #10, !dbg !3027
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1350, metadata !622) #10, !dbg !3024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1350, metadata !622) #10, !dbg !3024
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3028
  store i32 10, i32* %7, align 8, !dbg !3029, !tbaa !1280
  %8 = icmp ne i8* %1, null, !dbg !3030
  %9 = icmp ne i8* %2, null, !dbg !3031
  %10 = and i1 %8, %9, !dbg !3032
  br i1 %10, label %12, label %11, !dbg !3032

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3033
  unreachable, !dbg !3033

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3034
  store i8* %1, i8** %13, align 8, !dbg !3035, !tbaa !1369
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3036
  store i8* %2, i8** %14, align 8, !dbg !3037, !tbaa !1372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3014, metadata !877) #10, !dbg !3023
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3038
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3039
  ret i8* %15, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3006 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3005, metadata !622), !dbg !3041
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3010, metadata !622), !dbg !3042
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3011, metadata !622), !dbg !3043
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3012, metadata !622), !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3013, metadata !622), !dbg !3045
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3046
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3047, !tbaa.struct !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3014, metadata !877), !dbg !3048
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1350, metadata !622) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1351, metadata !622) #10, !dbg !3051
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1352, metadata !622) #10, !dbg !3052
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1350, metadata !622) #10, !dbg !3049
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1350, metadata !622) #10, !dbg !3049
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3053
  store i32 10, i32* %8, align 8, !dbg !3054, !tbaa !1280
  %9 = icmp ne i8* %1, null, !dbg !3055
  %10 = icmp ne i8* %2, null, !dbg !3056
  %11 = and i1 %9, %10, !dbg !3057
  br i1 %11, label %13, label %12, !dbg !3057

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3058
  unreachable, !dbg !3058

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3059
  store i8* %1, i8** %14, align 8, !dbg !3060, !tbaa !1369
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3061
  store i8* %2, i8** %15, align 8, !dbg !3062, !tbaa !1372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3014, metadata !877), !dbg !3048
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3063
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3064
  ret i8* %16, !dbg !3065
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3066 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3070, metadata !622), !dbg !3073
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3071, metadata !622), !dbg !3074
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3072, metadata !622), !dbg !3075
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2997, metadata !622) #10, !dbg !3076
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2998, metadata !622) #10, !dbg !3078
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2999, metadata !622) #10, !dbg !3079
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3000, metadata !622) #10, !dbg !3080
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3005, metadata !622) #10, !dbg !3081
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3010, metadata !622) #10, !dbg !3083
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3011, metadata !622) #10, !dbg !3084
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3012, metadata !622) #10, !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3013, metadata !622) #10, !dbg !3086
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3087
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3087
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3088, !tbaa.struct !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3014, metadata !877) #10, !dbg !3089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1350, metadata !622) #10, !dbg !3090
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1351, metadata !622) #10, !dbg !3092
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1352, metadata !622) #10, !dbg !3093
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1350, metadata !622) #10, !dbg !3090
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1350, metadata !622) #10, !dbg !3090
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3094
  store i32 10, i32* %6, align 8, !dbg !3095, !tbaa !1280
  %7 = icmp ne i8* %0, null, !dbg !3096
  %8 = icmp ne i8* %1, null, !dbg !3097
  %9 = and i1 %7, %8, !dbg !3098
  br i1 %9, label %11, label %10, !dbg !3098

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3099
  unreachable, !dbg !3099

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3100
  store i8* %0, i8** %12, align 8, !dbg !3101, !tbaa !1369
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3102
  store i8* %1, i8** %13, align 8, !dbg !3103, !tbaa !1372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3014, metadata !877) #10, !dbg !3089
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3104
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3105
  ret i8* %14, !dbg !3106
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3107 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3111, metadata !622), !dbg !3115
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3112, metadata !622), !dbg !3116
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3113, metadata !622), !dbg !3117
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3114, metadata !622), !dbg !3118
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3005, metadata !622) #10, !dbg !3119
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3010, metadata !622) #10, !dbg !3121
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3011, metadata !622) #10, !dbg !3122
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3012, metadata !622) #10, !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3013, metadata !622) #10, !dbg !3124
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3125
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3126, !tbaa.struct !2844
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3014, metadata !877) #10, !dbg !3127
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1350, metadata !622) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1351, metadata !622) #10, !dbg !3130
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1352, metadata !622) #10, !dbg !3131
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1350, metadata !622) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1350, metadata !622) #10, !dbg !3128
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3132
  store i32 10, i32* %7, align 8, !dbg !3133, !tbaa !1280
  %8 = icmp ne i8* %0, null, !dbg !3134
  %9 = icmp ne i8* %1, null, !dbg !3135
  %10 = and i1 %8, %9, !dbg !3136
  br i1 %10, label %12, label %11, !dbg !3136

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3137
  unreachable, !dbg !3137

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3138
  store i8* %0, i8** %13, align 8, !dbg !3139, !tbaa !1369
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3140
  store i8* %1, i8** %14, align 8, !dbg !3141, !tbaa !1372
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3014, metadata !877) #10, !dbg !3127
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3142
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3143
  ret i8* %15, !dbg !3144
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3145 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3149, metadata !622), !dbg !3152
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3150, metadata !622), !dbg !3153
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3151, metadata !622), !dbg !3154
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3155
  ret i8* %4, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3157 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3161, metadata !622), !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3162, metadata !622), !dbg !3164
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3149, metadata !622) #10, !dbg !3165
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3150, metadata !622) #10, !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3151, metadata !622) #10, !dbg !3168
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3169
  ret i8* %3, !dbg !3170
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3171 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3175, metadata !622), !dbg !3177
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3176, metadata !622), !dbg !3178
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3149, metadata !622) #10, !dbg !3179
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3150, metadata !622) #10, !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3151, metadata !622) #10, !dbg !3182
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3183
  ret i8* %3, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3185 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3189, metadata !622), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3175, metadata !622) #10, !dbg !3191
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3176, metadata !622) #10, !dbg !3193
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3149, metadata !622) #10, !dbg !3194
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3150, metadata !622) #10, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3151, metadata !622) #10, !dbg !3197
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3198
  ret i8* %2, !dbg !3199
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3200 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3256, metadata !622), !dbg !3262
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3257, metadata !622), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3258, metadata !622), !dbg !3264
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3259, metadata !622), !dbg !3265
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3260, metadata !622), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3261, metadata !622), !dbg !3267
  %7 = icmp eq i8* %1, null, !dbg !3268
  br i1 %7, label %10, label %8, !dbg !3270

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3271
  br label %12, !dbg !3271

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.87, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3272
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i32 5) #10, !dbg !3273
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3274
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.89, i64 0, i64 0), i32 5) #10, !dbg !3276
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3277
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
  ], !dbg !3278

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3279
  unreachable, !dbg !3279

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.90, i64 0, i64 0), i32 5) #10, !dbg !3281
  %20 = load i8*, i8** %4, align 8, !dbg !3281, !tbaa !630
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3282
  br label %146, !dbg !3284

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.91, i64 0, i64 0), i32 5) #10, !dbg !3285
  %24 = load i8*, i8** %4, align 8, !dbg !3285, !tbaa !630
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3285
  %26 = load i8*, i8** %25, align 8, !dbg !3285, !tbaa !630
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3286
  br label %146, !dbg !3287

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.92, i64 0, i64 0), i32 5) #10, !dbg !3288
  %30 = load i8*, i8** %4, align 8, !dbg !3288, !tbaa !630
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3288
  %32 = load i8*, i8** %31, align 8, !dbg !3288, !tbaa !630
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3288
  %34 = load i8*, i8** %33, align 8, !dbg !3288, !tbaa !630
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3289
  br label %146, !dbg !3290

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.93, i64 0, i64 0), i32 5) #10, !dbg !3291
  %38 = load i8*, i8** %4, align 8, !dbg !3291, !tbaa !630
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3291
  %40 = load i8*, i8** %39, align 8, !dbg !3291, !tbaa !630
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3291
  %42 = load i8*, i8** %41, align 8, !dbg !3291, !tbaa !630
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3291
  %44 = load i8*, i8** %43, align 8, !dbg !3291, !tbaa !630
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3292
  br label %146, !dbg !3293

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.94, i64 0, i64 0), i32 5) #10, !dbg !3294
  %48 = load i8*, i8** %4, align 8, !dbg !3294, !tbaa !630
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3294
  %50 = load i8*, i8** %49, align 8, !dbg !3294, !tbaa !630
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3294
  %52 = load i8*, i8** %51, align 8, !dbg !3294, !tbaa !630
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3294
  %54 = load i8*, i8** %53, align 8, !dbg !3294, !tbaa !630
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3294
  %56 = load i8*, i8** %55, align 8, !dbg !3294, !tbaa !630
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3295
  br label %146, !dbg !3296

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.95, i64 0, i64 0), i32 5) #10, !dbg !3297
  %60 = load i8*, i8** %4, align 8, !dbg !3297, !tbaa !630
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3297
  %62 = load i8*, i8** %61, align 8, !dbg !3297, !tbaa !630
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3297
  %64 = load i8*, i8** %63, align 8, !dbg !3297, !tbaa !630
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3297
  %66 = load i8*, i8** %65, align 8, !dbg !3297, !tbaa !630
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3297
  %68 = load i8*, i8** %67, align 8, !dbg !3297, !tbaa !630
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3297
  %70 = load i8*, i8** %69, align 8, !dbg !3297, !tbaa !630
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3298
  br label %146, !dbg !3299

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.96, i64 0, i64 0), i32 5) #10, !dbg !3300
  %74 = load i8*, i8** %4, align 8, !dbg !3300, !tbaa !630
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3300
  %76 = load i8*, i8** %75, align 8, !dbg !3300, !tbaa !630
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3300
  %78 = load i8*, i8** %77, align 8, !dbg !3300, !tbaa !630
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3300
  %80 = load i8*, i8** %79, align 8, !dbg !3300, !tbaa !630
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3300
  %82 = load i8*, i8** %81, align 8, !dbg !3300, !tbaa !630
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3300
  %84 = load i8*, i8** %83, align 8, !dbg !3300, !tbaa !630
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3300
  %86 = load i8*, i8** %85, align 8, !dbg !3300, !tbaa !630
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3301
  br label %146, !dbg !3302

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.97, i64 0, i64 0), i32 5) #10, !dbg !3303
  %90 = load i8*, i8** %4, align 8, !dbg !3303, !tbaa !630
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3303
  %92 = load i8*, i8** %91, align 8, !dbg !3303, !tbaa !630
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3303
  %94 = load i8*, i8** %93, align 8, !dbg !3303, !tbaa !630
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3303
  %96 = load i8*, i8** %95, align 8, !dbg !3303, !tbaa !630
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3303
  %98 = load i8*, i8** %97, align 8, !dbg !3303, !tbaa !630
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3303
  %100 = load i8*, i8** %99, align 8, !dbg !3303, !tbaa !630
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3303
  %102 = load i8*, i8** %101, align 8, !dbg !3303, !tbaa !630
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3303
  %104 = load i8*, i8** %103, align 8, !dbg !3303, !tbaa !630
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3304
  br label %146, !dbg !3305

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.98, i64 0, i64 0), i32 5) #10, !dbg !3306
  %108 = load i8*, i8** %4, align 8, !dbg !3306, !tbaa !630
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3306
  %110 = load i8*, i8** %109, align 8, !dbg !3306, !tbaa !630
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3306
  %112 = load i8*, i8** %111, align 8, !dbg !3306, !tbaa !630
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3306
  %114 = load i8*, i8** %113, align 8, !dbg !3306, !tbaa !630
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3306
  %116 = load i8*, i8** %115, align 8, !dbg !3306, !tbaa !630
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3306
  %118 = load i8*, i8** %117, align 8, !dbg !3306, !tbaa !630
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3306
  %120 = load i8*, i8** %119, align 8, !dbg !3306, !tbaa !630
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3306
  %122 = load i8*, i8** %121, align 8, !dbg !3306, !tbaa !630
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3306
  %124 = load i8*, i8** %123, align 8, !dbg !3306, !tbaa !630
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3307
  br label %146, !dbg !3308

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.99, i64 0, i64 0), i32 5) #10, !dbg !3309
  %128 = load i8*, i8** %4, align 8, !dbg !3309, !tbaa !630
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3309
  %130 = load i8*, i8** %129, align 8, !dbg !3309, !tbaa !630
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3309
  %132 = load i8*, i8** %131, align 8, !dbg !3309, !tbaa !630
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3309
  %134 = load i8*, i8** %133, align 8, !dbg !3309, !tbaa !630
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3309
  %136 = load i8*, i8** %135, align 8, !dbg !3309, !tbaa !630
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3309
  %138 = load i8*, i8** %137, align 8, !dbg !3309, !tbaa !630
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3309
  %140 = load i8*, i8** %139, align 8, !dbg !3309, !tbaa !630
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3309
  %142 = load i8*, i8** %141, align 8, !dbg !3309, !tbaa !630
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3309
  %144 = load i8*, i8** %143, align 8, !dbg !3309, !tbaa !630
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3310
  br label %146, !dbg !3311

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3312
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3313 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3317, metadata !622), !dbg !3323
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3318, metadata !622), !dbg !3324
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3319, metadata !622), !dbg !3325
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3320, metadata !622), !dbg !3326
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3321, metadata !622), !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3322, metadata !622), !dbg !3328
  br label %6, !dbg !3329

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3322, metadata !622), !dbg !3328
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3331
  %9 = load i8*, i8** %8, align 8, !dbg !3331, !tbaa !630
  %10 = icmp eq i8* %9, null, !dbg !3334
  %11 = add i64 %7, 1, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3322, metadata !622), !dbg !3328
  br i1 %10, label %12, label %6, !dbg !3334, !llvm.loop !3338

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3341
  ret void, !dbg !3342
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3343 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3354, metadata !622), !dbg !3362
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3355, metadata !622), !dbg !3363
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3356, metadata !622), !dbg !3364
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3357, metadata !622), !dbg !3365
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3358, metadata !622), !dbg !3366
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3367
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3367
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3360, metadata !622), !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3359, metadata !622), !dbg !3369
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3370
  %12 = icmp ult i32 %11, 41, !dbg !3370
  br i1 %12, label %13, label %18, !dbg !3370

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3374
  %15 = sext i32 %11 to i64, !dbg !3374
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3374
  %17 = add i32 %11, 8, !dbg !3374
  store i32 %17, i32* %8, align 8, !dbg !3374
  br label %21, !dbg !3374

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3376
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3376
  store i8* %20, i8** %10, align 8, !dbg !3376
  br label %21, !dbg !3376

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3370
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3378
  %25 = load i8*, i8** %24, align 8, !dbg !3378
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3380
  store i8* %25, i8** %26, align 16, !dbg !3381, !tbaa !630
  %27 = icmp eq i8* %25, null, !dbg !3382
  br i1 %27, label %30, label %28, !dbg !3383

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %29 = icmp ult i32 %22, 41, !dbg !3370
  br i1 %29, label %35, label %32, !dbg !3370

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3385
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3386
  ret void, !dbg !3386

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3376
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3376
  store i8* %34, i8** %10, align 8, !dbg !3376
  br label %40, !dbg !3376

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3374
  %37 = sext i32 %22 to i64, !dbg !3374
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3374
  %39 = add i32 %22, 8, !dbg !3374
  store i32 %39, i32* %8, align 8, !dbg !3374
  br label %40, !dbg !3374

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3370
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3378
  %44 = load i8*, i8** %43, align 8, !dbg !3378
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3380
  store i8* %44, i8** %45, align 8, !dbg !3381, !tbaa !630
  %46 = icmp eq i8* %44, null, !dbg !3382
  br i1 %46, label %30, label %47, !dbg !3383

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %48 = icmp ult i32 %41, 41, !dbg !3370
  br i1 %48, label %52, label %49, !dbg !3370

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3376
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3376
  store i8* %51, i8** %10, align 8, !dbg !3376
  br label %57, !dbg !3376

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3374
  %54 = sext i32 %41 to i64, !dbg !3374
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3374
  %56 = add i32 %41, 8, !dbg !3374
  store i32 %56, i32* %8, align 8, !dbg !3374
  br label %57, !dbg !3374

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3370
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3378
  %61 = load i8*, i8** %60, align 8, !dbg !3378
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3380
  store i8* %61, i8** %62, align 16, !dbg !3381, !tbaa !630
  %63 = icmp eq i8* %61, null, !dbg !3382
  br i1 %63, label %30, label %64, !dbg !3383

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %65 = icmp ult i32 %58, 41, !dbg !3370
  br i1 %65, label %69, label %66, !dbg !3370

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3376
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3376
  store i8* %68, i8** %10, align 8, !dbg !3376
  br label %74, !dbg !3376

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3374
  %71 = sext i32 %58 to i64, !dbg !3374
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3374
  %73 = add i32 %58, 8, !dbg !3374
  store i32 %73, i32* %8, align 8, !dbg !3374
  br label %74, !dbg !3374

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3370
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3378
  %78 = load i8*, i8** %77, align 8, !dbg !3378
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3380
  store i8* %78, i8** %79, align 8, !dbg !3381, !tbaa !630
  %80 = icmp eq i8* %78, null, !dbg !3382
  br i1 %80, label %30, label %81, !dbg !3383

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %82 = icmp ult i32 %75, 41, !dbg !3370
  br i1 %82, label %86, label %83, !dbg !3370

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3376
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3376
  store i8* %85, i8** %10, align 8, !dbg !3376
  br label %91, !dbg !3376

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3374
  %88 = sext i32 %75 to i64, !dbg !3374
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3374
  %90 = add i32 %75, 8, !dbg !3374
  store i32 %90, i32* %8, align 8, !dbg !3374
  br label %91, !dbg !3374

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3370
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3378
  %95 = load i8*, i8** %94, align 8, !dbg !3378
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3380
  store i8* %95, i8** %96, align 16, !dbg !3381, !tbaa !630
  %97 = icmp eq i8* %95, null, !dbg !3382
  br i1 %97, label %30, label %98, !dbg !3383

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %99 = icmp ult i32 %92, 41, !dbg !3370
  br i1 %99, label %103, label %100, !dbg !3370

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3376
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3376
  store i8* %102, i8** %10, align 8, !dbg !3376
  br label %108, !dbg !3376

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3374
  %105 = sext i32 %92 to i64, !dbg !3374
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3374
  %107 = add i32 %92, 8, !dbg !3374
  store i32 %107, i32* %8, align 8, !dbg !3374
  br label %108, !dbg !3374

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3378
  %111 = load i8*, i8** %110, align 8, !dbg !3378
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3380
  store i8* %111, i8** %112, align 8, !dbg !3381, !tbaa !630
  %113 = icmp eq i8* %111, null, !dbg !3382
  br i1 %113, label %30, label %114, !dbg !3383

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %115 = load i8*, i8** %10, align 8, !dbg !3376
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3376
  store i8* %116, i8** %10, align 8, !dbg !3376
  %117 = bitcast i8* %115 to i8**, !dbg !3378
  %118 = load i8*, i8** %117, align 8, !dbg !3378
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3380
  store i8* %118, i8** %119, align 16, !dbg !3381, !tbaa !630
  %120 = icmp eq i8* %118, null, !dbg !3382
  br i1 %120, label %30, label %121, !dbg !3383

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %122 = load i8*, i8** %10, align 8, !dbg !3376
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3376
  store i8* %123, i8** %10, align 8, !dbg !3376
  %124 = bitcast i8* %122 to i8**, !dbg !3378
  %125 = load i8*, i8** %124, align 8, !dbg !3378
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3380
  store i8* %125, i8** %126, align 8, !dbg !3381, !tbaa !630
  %127 = icmp eq i8* %125, null, !dbg !3382
  br i1 %127, label %30, label %128, !dbg !3383

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %129 = load i8*, i8** %10, align 8, !dbg !3376
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3376
  store i8* %130, i8** %10, align 8, !dbg !3376
  %131 = bitcast i8* %129 to i8**, !dbg !3378
  %132 = load i8*, i8** %131, align 8, !dbg !3378
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3380
  store i8* %132, i8** %133, align 16, !dbg !3381, !tbaa !630
  %134 = icmp eq i8* %132, null, !dbg !3382
  br i1 %134, label %30, label %135, !dbg !3383

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %136 = load i8*, i8** %10, align 8, !dbg !3376
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3376
  store i8* %137, i8** %10, align 8, !dbg !3376
  %138 = bitcast i8* %136 to i8**, !dbg !3378
  %139 = load i8*, i8** %138, align 8, !dbg !3378
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3380
  store i8* %139, i8** %140, align 8, !dbg !3381, !tbaa !630
  %141 = icmp eq i8* %139, null, !dbg !3382
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3359, metadata !622), !dbg !3369
  %142 = select i1 %141, i64 9, i64 10, !dbg !3383
  br label %30, !dbg !3383
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3387 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3391, metadata !622), !dbg !3401
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3392, metadata !622), !dbg !3402
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3393, metadata !622), !dbg !3403
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3394, metadata !622), !dbg !3404
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3405
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !3405
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3395, metadata !622), !dbg !3406
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3407
  call void @llvm.va_start(i8* nonnull %6), !dbg !3407
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3408
  call void @llvm.va_end(i8* nonnull %6), !dbg !3409
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !3410
  ret void, !dbg !3410
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !3411 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.102, i64 0, i64 0), i32 5) #10, !dbg !3412
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.103, i64 0, i64 0)) #10, !dbg !3413
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.104, i64 0, i64 0), i32 5) #10, !dbg !3415
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.105, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.106, i64 0, i64 0)) #10, !dbg !3416
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.107, i64 0, i64 0), i32 5) #10, !dbg !3417
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3417, !tbaa !630
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !3418
  ret void, !dbg !3419
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !3420 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3424, metadata !622), !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3425, metadata !622), !dbg !3427
  %3 = udiv i64 9223372036854775807, %1, !dbg !3428
  %4 = icmp ult i64 %3, %0, !dbg !3428
  br i1 %4, label %5, label %6, !dbg !3430

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3431
  unreachable, !dbg !3431

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3433, metadata !622) #10, !dbg !3440
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3442
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3439, metadata !622) #10, !dbg !3443
  %9 = icmp eq i8* %8, null, !dbg !3444
  %10 = icmp ne i64 %7, 0, !dbg !3446
  %11 = and i1 %10, %9, !dbg !3448
  br i1 %11, label %12, label %13, !dbg !3448

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !3449
  unreachable, !dbg !3449

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3450
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3433, metadata !622), !dbg !3451
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3452
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3439, metadata !622), !dbg !3453
  %3 = icmp eq i8* %2, null, !dbg !3454
  %4 = icmp ne i64 %0, 0, !dbg !3455
  %5 = and i1 %4, %3, !dbg !3456
  br i1 %5, label %6, label %7, !dbg !3456

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3457
  unreachable, !dbg !3457

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3458
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !3459 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3463, metadata !622), !dbg !3466
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3464, metadata !622), !dbg !3467
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3465, metadata !622), !dbg !3468
  %4 = udiv i64 9223372036854775807, %2, !dbg !3469
  %5 = icmp ult i64 %4, %1, !dbg !3469
  br i1 %5, label %6, label %7, !dbg !3471

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !3472
  unreachable, !dbg !3472

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3474, metadata !622) #10, !dbg !3480
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !3479, metadata !622) #10, !dbg !3482
  %9 = icmp eq i64 %8, 0, !dbg !3483
  %10 = icmp ne i8* %0, null, !dbg !3485
  %11 = and i1 %10, %9, !dbg !3487
  br i1 %11, label %12, label %13, !dbg !3487

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3488
  br label %19, !dbg !3490

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3491
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !3474, metadata !622) #10, !dbg !3480
  %15 = icmp eq i8* %14, null, !dbg !3492
  %16 = icmp ne i64 %8, 0, !dbg !3494
  %17 = and i1 %16, %15, !dbg !3496
  br i1 %17, label %18, label %19, !dbg !3496

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3497
  unreachable, !dbg !3497

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !3498
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !3475 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3474, metadata !622), !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3479, metadata !622), !dbg !3500
  %3 = icmp eq i64 %1, 0, !dbg !3501
  %4 = icmp ne i8* %0, null, !dbg !3502
  %5 = and i1 %4, %3, !dbg !3503
  br i1 %5, label %6, label %7, !dbg !3503

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3504
  br label %13, !dbg !3505

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3506
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3474, metadata !622), !dbg !3499
  %9 = icmp eq i8* %8, null, !dbg !3507
  %10 = icmp ne i64 %1, 0, !dbg !3508
  %11 = and i1 %10, %9, !dbg !3509
  br i1 %11, label %12, label %13, !dbg !3509

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !3510
  unreachable, !dbg !3510

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !3511
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !568 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !573, metadata !622), !dbg !3512
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !574, metadata !622), !dbg !3513
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !575, metadata !622), !dbg !3514
  %4 = load i64, i64* %1, align 8, !dbg !3515, !tbaa !2517
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !576, metadata !622), !dbg !3516
  %5 = icmp eq i8* %0, null, !dbg !3517
  br i1 %5, label %6, label %13, !dbg !3519

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3520
  br i1 %7, label %8, label %17, !dbg !3523

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3524
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !576, metadata !622), !dbg !3516
  %10 = icmp ugt i64 %2, 128, !dbg !3526
  %11 = zext i1 %10 to i64, !dbg !3526
  %12 = add nuw nsw i64 %9, %11, !dbg !3527
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !576, metadata !622), !dbg !3516
  br label %17, !dbg !3528

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !3529
  %15 = icmp ugt i64 %14, %4, !dbg !3532
  br i1 %15, label %20, label %16, !dbg !3533

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3534
  unreachable, !dbg !3534

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !622), !dbg !3516
  store i64 %18, i64* %1, align 8, !dbg !3535, !tbaa !2517
  %19 = mul i64 %18, %2, !dbg !3536
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3474, metadata !622) #10, !dbg !3537
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3479, metadata !622) #10, !dbg !3539
  br label %27, !dbg !3540

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !3541
  %22 = add i64 %4, 1, !dbg !3542
  %23 = add i64 %22, %21, !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !622), !dbg !3516
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !576, metadata !622), !dbg !3516
  store i64 %23, i64* %1, align 8, !dbg !3535, !tbaa !2517
  %24 = mul i64 %23, %2, !dbg !3536
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3474, metadata !622) #10, !dbg !3537
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !3479, metadata !622) #10, !dbg !3539
  %25 = icmp eq i64 %24, 0, !dbg !3544
  br i1 %25, label %26, label %27, !dbg !3540

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !3545
  br label %34, !dbg !3546

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !3547
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3474, metadata !622) #10, !dbg !3537
  %30 = icmp eq i8* %29, null, !dbg !3548
  %31 = icmp ne i64 %28, 0, !dbg !3549
  %32 = and i1 %31, %30, !dbg !3550
  br i1 %32, label %33, label %34, !dbg !3550

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !3551
  unreachable, !dbg !3551

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !3552
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !3553 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3555, metadata !622), !dbg !3556
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3433, metadata !622) #10, !dbg !3557
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3559
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3439, metadata !622) #10, !dbg !3560
  %3 = icmp eq i8* %2, null, !dbg !3561
  %4 = icmp ne i64 %0, 0, !dbg !3562
  %5 = and i1 %4, %3, !dbg !3563
  br i1 %5, label %6, label %7, !dbg !3563

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3564
  unreachable, !dbg !3564

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3565
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !3566 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3570, metadata !622), !dbg !3572
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !3571, metadata !622), !dbg !3573
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !573, metadata !622) #10, !dbg !3574
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !574, metadata !622) #10, !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !575, metadata !622) #10, !dbg !3577
  %3 = load i64, i64* %1, align 8, !dbg !3578, !tbaa !2517
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !576, metadata !622) #10, !dbg !3579
  %4 = icmp eq i8* %0, null, !dbg !3580
  br i1 %4, label %5, label %8, !dbg !3581

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !576, metadata !622) #10, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !576, metadata !622) #10, !dbg !3579
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3583
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !622) #10, !dbg !3579
  store i64 %7, i64* %1, align 8, !dbg !3584, !tbaa !2517
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3474, metadata !622) #10, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3479, metadata !622) #10, !dbg !3587
  br label %17, !dbg !3588

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !3589
  br i1 %9, label %11, label %10, !dbg !3590

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !3591
  unreachable, !dbg !3591

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !3592
  %13 = add i64 %3, 1, !dbg !3593
  %14 = add i64 %13, %12, !dbg !3594
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !622) #10, !dbg !3579
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !576, metadata !622) #10, !dbg !3579
  store i64 %14, i64* %1, align 8, !dbg !3584, !tbaa !2517
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3474, metadata !622) #10, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3479, metadata !622) #10, !dbg !3587
  %15 = icmp eq i64 %14, 0, !dbg !3595
  br i1 %15, label %16, label %17, !dbg !3588

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !3596
  br label %24, !dbg !3597

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !3598
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !3474, metadata !622) #10, !dbg !3585
  %20 = icmp eq i8* %19, null, !dbg !3599
  %21 = icmp ne i64 %18, 0, !dbg !3600
  %22 = and i1 %21, %20, !dbg !3601
  br i1 %22, label %23, label %24, !dbg !3601

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !3602
  unreachable, !dbg !3602

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !3603
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !3604 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3606, metadata !622), !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3433, metadata !622) #10, !dbg !3608
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3610
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3439, metadata !622) #10, !dbg !3611
  %3 = icmp eq i8* %2, null, !dbg !3612
  %4 = icmp ne i64 %0, 0, !dbg !3613
  %5 = and i1 %4, %3, !dbg !3614
  br i1 %5, label %6, label %7, !dbg !3614

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3615
  unreachable, !dbg !3615

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !3616
  ret i8* %2, !dbg !3617
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !3618 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3620, metadata !622), !dbg !3623
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3621, metadata !622), !dbg !3624
  %3 = udiv i64 9223372036854775807, %1, !dbg !3625
  %4 = icmp ult i64 %3, %0, !dbg !3625
  br i1 %4, label %8, label %5, !dbg !3627

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3628
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3622, metadata !622), !dbg !3630
  %7 = icmp eq i8* %6, null, !dbg !3631
  br i1 %7, label %8, label %9, !dbg !3632

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !3634
  unreachable, !dbg !3634

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3635
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !3636 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3640, metadata !622), !dbg !3642
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3641, metadata !622), !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3433, metadata !622) #10, !dbg !3644
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3646
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3439, metadata !622) #10, !dbg !3647
  %4 = icmp eq i8* %3, null, !dbg !3648
  %5 = icmp ne i64 %1, 0, !dbg !3649
  %6 = and i1 %5, %4, !dbg !3650
  br i1 %6, label %7, label %8, !dbg !3650

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !3651
  unreachable, !dbg !3651

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !3652
  ret i8* %3, !dbg !3653
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !3654 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3656, metadata !622), !dbg !3657
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !3658
  %3 = add i64 %2, 1, !dbg !3659
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3640, metadata !622) #10, !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3641, metadata !622) #10, !dbg !3663
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3433, metadata !622) #10, !dbg !3664
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3666
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3439, metadata !622) #10, !dbg !3667
  %5 = icmp eq i8* %4, null, !dbg !3668
  %6 = icmp ne i64 %3, 0, !dbg !3669
  %7 = and i1 %6, %5, !dbg !3670
  br i1 %7, label %8, label %9, !dbg !3670

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !3671
  unreachable, !dbg !3671

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !3672
  ret i8* %4, !dbg !3673
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !3674 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3676, !tbaa !829
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #10, !dbg !3677
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), i8* %2) #10, !dbg !3678
  tail call void @abort() #14, !dbg !3680
  unreachable, !dbg !3680
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3681 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3686, metadata !622), !dbg !3696
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3687, metadata !622), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3688, metadata !622), !dbg !3698
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3689, metadata !622), !dbg !3699
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3690, metadata !622), !dbg !3700
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !3691, metadata !622), !dbg !3701
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3692, metadata !622), !dbg !3702
  %9 = bitcast i64* %8 to i8*, !dbg !3703
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10, !dbg !3703
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !3695, metadata !877), !dbg !3704
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !3705
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3693, metadata !622), !dbg !3706
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %26
    i32 3, label %28
  ], !dbg !3707

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1, !dbg !3708
  br label %30, !dbg !3707

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3712, !tbaa !2517
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3695, metadata !622), !dbg !3704
  %15 = icmp slt i64 %14, %2, !dbg !3716
  %16 = icmp sgt i64 %14, %3, !dbg !3717
  %17 = or i1 %15, %16, !dbg !3719
  br i1 %17, label %18, label %39, !dbg !3719

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3693, metadata !622), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3695, metadata !622), !dbg !3704
  %19 = icmp sgt i64 %14, 1073741823, !dbg !3720
  br i1 %19, label %20, label %22, !dbg !3723

; <label>:20:                                     ; preds = %18
  %21 = tail call i32* @__errno_location() #1, !dbg !3724
  store i32 75, i32* %21, align 4, !dbg !3725, !tbaa !829
  br label %30, !dbg !3724

; <label>:22:                                     ; preds = %18
  %23 = icmp slt i64 %14, -1073741824, !dbg !3726
  %24 = tail call i32* @__errno_location() #1, !dbg !3728
  %25 = select i1 %23, i32 75, i32 34, !dbg !3729
  store i32 %25, i32* %24, align 4, !tbaa !829
  br label %30

; <label>:26:                                     ; preds = %7
  %27 = tail call i32* @__errno_location() #1, !dbg !3730
  store i32 75, i32* %27, align 4, !dbg !3732, !tbaa !829
  br label %30, !dbg !3730

; <label>:28:                                     ; preds = %7
  %29 = tail call i32* @__errno_location() #1, !dbg !3733
  store i32 0, i32* %29, align 4, !dbg !3735, !tbaa !829
  br label %30, !dbg !3733

; <label>:30:                                     ; preds = %11, %20, %22, %26, %28
  %31 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %22 ], [ %27, %26 ], [ %29, %28 ], !dbg !3708
  %32 = icmp ne i32 %6, 0, !dbg !3736
  %33 = select i1 %32, i32 %6, i32 1, !dbg !3736
  %34 = load i32, i32* %31, align 4, !dbg !3708, !tbaa !829
  %35 = icmp eq i32 %34, 22, !dbg !3737
  %36 = select i1 %35, i32 0, i32 %34, !dbg !3708
  %37 = call i8* @quote(i8* %0) #10, !dbg !3738
  call void (i32, i32, i8*, ...) @error(i32 %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i64 0, i64 0), i8* %5, i8* %37) #10, !dbg !3739
  %38 = load i64, i64* %8, align 8, !tbaa !2517
  br label %39, !dbg !3741

; <label>:39:                                     ; preds = %13, %30
  %40 = phi i64 [ %14, %13 ], [ %38, %30 ], !dbg !3742
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3695, metadata !622), !dbg !3704
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10, !dbg !3743
  ret i64 %40, !dbg !3744
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !3745 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3749, metadata !622), !dbg !3755
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3750, metadata !622), !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3751, metadata !622), !dbg !3757
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3752, metadata !622), !dbg !3758
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3753, metadata !622), !dbg !3759
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3754, metadata !622), !dbg !3760
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3761
  ret i64 %7, !dbg !3762
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !3763 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3769, metadata !622), !dbg !3783
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !3770, metadata !622), !dbg !3784
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3771, metadata !622), !dbg !3785
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !3772, metadata !622), !dbg !3786
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !3773, metadata !622), !dbg !3787
  %7 = bitcast i8** %6 to i8*, !dbg !3788
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !3788
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3777, metadata !622), !dbg !3789
  %8 = icmp ult i32 %2, 37, !dbg !3790
  br i1 %8, label %10, label %9, !dbg !3790

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.125, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.126, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #14, !dbg !3793
  unreachable, !dbg !3793

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !3795
  %12 = select i1 %11, i8** %1, i8** %6, !dbg !3795
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !3775, metadata !622), !dbg !3796
  %13 = tail call i32* @__errno_location() #1, !dbg !3797
  store i32 0, i32* %13, align 4, !dbg !3798, !tbaa !829
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3799, metadata !622) #10, !dbg !3809
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !3807, metadata !622) #10, !dbg !3809
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3808, metadata !622) #10, !dbg !3809
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #10, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3776, metadata !622), !dbg !3812
  %15 = load i8*, i8** %12, align 8, !dbg !3813, !tbaa !630
  %16 = icmp eq i8* %15, %0, !dbg !3815
  br i1 %16, label %17, label %26, !dbg !3816

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3817
  br i1 %18, label %196, label %19, !dbg !3820

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3821, !tbaa !778
  %21 = icmp eq i8 %20, 0, !dbg !3821
  br i1 %21, label %196, label %22, !dbg !3823

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3821
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #10, !dbg !3824
  %25 = icmp eq i8* %24, null, !dbg !3824
  br i1 %25, label %196, label %33, !dbg !3826

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3828, !tbaa !829
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3830

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3777, metadata !622), !dbg !3789
  br label %29, !dbg !3831

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !3777, metadata !622), !dbg !3789
  %31 = icmp eq i8* %4, null, !dbg !3833
  br i1 %31, label %32, label %33, !dbg !3835

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3776, metadata !622), !dbg !3812
  store i64 %14, i64* %3, align 8, !dbg !3836, !tbaa !2517
  br label %196, !dbg !3838

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3839, !tbaa !778
  %37 = icmp eq i8 %36, 0, !dbg !3840
  br i1 %37, label %193, label %38, !dbg !3841

; <label>:38:                                     ; preds = %33
  %39 = sext i8 %36 to i32, !dbg !3839
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3778, metadata !622), !dbg !3842
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3781, metadata !622), !dbg !3843
  %40 = call i8* @strchr(i8* nonnull %4, i32 %39) #10, !dbg !3844
  %41 = icmp eq i8* %40, null, !dbg !3844
  br i1 %41, label %42, label %44, !dbg !3847

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3776, metadata !622), !dbg !3812
  store i64 %35, i64* %3, align 8, !dbg !3849, !tbaa !2517
  %43 = or i32 %34, 2, !dbg !3851
  br label %196, !dbg !3852

; <label>:44:                                     ; preds = %38
  switch i32 %39, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3853

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !3854
  %47 = icmp eq i8* %46, null, !dbg !3854
  br i1 %47, label %58, label %48, !dbg !3858

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3860
  %50 = load i8, i8* %49, align 1, !dbg !3860, !tbaa !778
  %51 = sext i8 %50 to i32, !dbg !3860
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3861

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3862
  %54 = load i8, i8* %53, align 1, !dbg !3862, !tbaa !778
  %55 = icmp eq i8 %54, 66, !dbg !3865
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3781, metadata !622), !dbg !3843
  %56 = select i1 %55, i64 3, i64 1, !dbg !3866
  br label %58, !dbg !3866

; <label>:57:                                     ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !3778, metadata !622), !dbg !3842
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3781, metadata !622), !dbg !3843
  br label %58, !dbg !3867

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %39, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3868

; <label>:61:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !3869, metadata !622), !dbg !3875
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3878
  br i1 %62, label %184, label %63, !dbg !3880

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3881
  %65 = shl nsw i64 %35, 9, !dbg !3883
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3884
  %67 = zext i1 %64 to i32, !dbg !3884
  br label %184, !dbg !3884

; <label>:68:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !3869, metadata !622), !dbg !3885
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3887
  br i1 %69, label %184, label %70, !dbg !3888

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3889
  %72 = shl nsw i64 %35, 10, !dbg !3890
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3891
  %74 = zext i1 %71 to i32, !dbg !3891
  br label %184, !dbg !3891

; <label>:75:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3900
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3900
  %76 = sdiv i64 -9223372036854775808, %59
  %77 = icmp slt i64 %35, %76, !dbg !3903
  br i1 %77, label %84, label %78, !dbg !3905

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3906
  %80 = icmp slt i64 %79, %35, !dbg !3907
  %81 = mul nsw i64 %35, %59, !dbg !3908
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3909
  %83 = zext i1 %80 to i32, !dbg !3909
  br label %84, !dbg !3909

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  %87 = icmp slt i64 %85, %76, !dbg !3903
  br i1 %87, label %204, label %198, !dbg !3905

; <label>:88:                                     ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3910
  %89 = sdiv i64 -9223372036854775808, %59
  %90 = icmp slt i64 %35, %89, !dbg !3913
  br i1 %90, label %97, label %91, !dbg !3915

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3916
  %93 = icmp slt i64 %92, %35, !dbg !3917
  %94 = mul nsw i64 %35, %59, !dbg !3918
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3919
  %96 = zext i1 %93 to i32, !dbg !3919
  br label %97, !dbg !3919

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3899, metadata !622), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3899, metadata !622), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3892, metadata !622), !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3892, metadata !622), !dbg !3910
  %100 = icmp slt i64 %98, %89, !dbg !3913
  br i1 %100, label %258, label %252, !dbg !3915

; <label>:101:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3892, metadata !622), !dbg !3920
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3922
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3922
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3892, metadata !622), !dbg !3920
  %102 = sdiv i64 -9223372036854775808, %59
  %103 = icmp slt i64 %35, %102, !dbg !3923
  br i1 %103, label %184, label %104, !dbg !3925

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !3926
  %106 = icmp slt i64 %105, %35, !dbg !3927
  %107 = mul nsw i64 %35, %59, !dbg !3928
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !3929
  %109 = zext i1 %106 to i32, !dbg !3929
  br label %184, !dbg !3929

; <label>:110:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3892, metadata !622), !dbg !3930
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3892, metadata !622), !dbg !3930
  %111 = sdiv i64 -9223372036854775808, %59
  %112 = icmp slt i64 %35, %111, !dbg !3933
  br i1 %112, label %119, label %113, !dbg !3935

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !3936
  %115 = icmp slt i64 %114, %35, !dbg !3937
  %116 = mul nsw i64 %35, %59, !dbg !3938
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !3939
  %118 = zext i1 %115 to i32, !dbg !3939
  br label %119, !dbg !3939

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3899, metadata !622), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3899, metadata !622), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3892, metadata !622), !dbg !3930
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3892, metadata !622), !dbg !3930
  %122 = icmp slt i64 %120, %111, !dbg !3933
  br i1 %122, label %279, label %273, !dbg !3935

; <label>:123:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3940
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3940
  %124 = sdiv i64 -9223372036854775808, %59
  %125 = icmp slt i64 %35, %124, !dbg !3943
  br i1 %125, label %132, label %126, !dbg !3945

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !3946
  %128 = icmp slt i64 %127, %35, !dbg !3947
  %129 = mul nsw i64 %35, %59, !dbg !3948
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !3949
  %131 = zext i1 %128 to i32, !dbg !3949
  br label %132, !dbg !3949

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  %135 = icmp slt i64 %133, %124, !dbg !3943
  br i1 %135, label %289, label %283, !dbg !3945

; <label>:136:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3950
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3950
  %137 = sdiv i64 -9223372036854775808, %59
  %138 = icmp slt i64 %35, %137, !dbg !3953
  br i1 %138, label %145, label %139, !dbg !3955

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !3956
  %141 = icmp slt i64 %140, %35, !dbg !3957
  %142 = mul nsw i64 %35, %59, !dbg !3958
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !3959
  %144 = zext i1 %141 to i32, !dbg !3959
  br label %145, !dbg !3959

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3950
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3950
  %148 = icmp slt i64 %146, %137, !dbg !3953
  br i1 %148, label %332, label %326, !dbg !3955

; <label>:149:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3869, metadata !622), !dbg !3960
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !3962
  br i1 %150, label %184, label %151, !dbg !3963

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !3964
  %153 = shl nsw i64 %35, 1, !dbg !3965
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !3966
  %155 = zext i1 %152 to i32, !dbg !3966
  br label %184, !dbg !3966

; <label>:156:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !3892, metadata !622), !dbg !3967
  %157 = sdiv i64 -9223372036854775808, %59
  %158 = icmp slt i64 %35, %157, !dbg !3970
  br i1 %158, label %165, label %159, !dbg !3972

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !3973
  %161 = icmp slt i64 %160, %35, !dbg !3974
  %162 = mul nsw i64 %35, %59, !dbg !3975
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !3976
  %164 = zext i1 %161 to i32, !dbg !3976
  br label %165, !dbg !3976

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  %168 = icmp slt i64 %166, %157, !dbg !3970
  br i1 %168, label %364, label %358, !dbg !3972

; <label>:169:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3977
  %170 = sdiv i64 -9223372036854775808, %59
  %171 = icmp slt i64 %35, %170, !dbg !3980
  br i1 %171, label %178, label %172, !dbg !3982

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !3983
  %174 = icmp slt i64 %173, %35, !dbg !3984
  %175 = mul nsw i64 %35, %59, !dbg !3985
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !3986
  %177 = zext i1 %174 to i32, !dbg !3986
  br label %178, !dbg !3986

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  %181 = icmp slt i64 %179, %170, !dbg !3980
  br i1 %181, label %440, label %434, !dbg !3982

; <label>:182:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !3776, metadata !622), !dbg !3812
  store i64 %35, i64* %3, align 8, !dbg !3987, !tbaa !2517
  %183 = or i32 %34, 2, !dbg !3988
  br label %196, !dbg !3989

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !3782, metadata !622), !dbg !3990
  %187 = or i32 %186, %34, !dbg !3991
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !3777, metadata !622), !dbg !3789
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3992
  store i8* %188, i8** %12, align 8, !dbg !3992, !tbaa !630
  %189 = load i8, i8* %188, align 1, !dbg !3993, !tbaa !778
  %190 = icmp eq i8 %189, 0, !dbg !3993
  %191 = or i32 %187, 2, !dbg !3995
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !3777, metadata !622), !dbg !3789
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !3996
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3777, metadata !622), !dbg !3789
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !3777, metadata !622), !dbg !3789
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !3777, metadata !622), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !3776, metadata !622), !dbg !3812
  store i64 %194, i64* %3, align 8, !dbg !3997, !tbaa !2517
  br label %196, !dbg !3998

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !3999
  ret i32 %197, !dbg !3999

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3906
  %200 = icmp slt i64 %199, %85, !dbg !3907
  %201 = mul nsw i64 %85, %59, !dbg !3908
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3909
  %203 = zext i1 %200 to i32, !dbg !3909
  br label %204, !dbg !3909

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86, !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  %208 = icmp slt i64 %205, %76, !dbg !3903
  br i1 %208, label %215, label %209, !dbg !3905

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3906
  %211 = icmp slt i64 %210, %205, !dbg !3907
  %212 = mul nsw i64 %205, %59, !dbg !3908
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3909
  %214 = zext i1 %211 to i32, !dbg !3909
  br label %215, !dbg !3909

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207, !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  %219 = icmp slt i64 %216, %76, !dbg !3903
  br i1 %219, label %226, label %220, !dbg !3905

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3906
  %222 = icmp slt i64 %221, %216, !dbg !3907
  %223 = mul nsw i64 %216, %59, !dbg !3908
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3909
  %225 = zext i1 %222 to i32, !dbg !3909
  br label %226, !dbg !3909

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218, !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  %230 = icmp slt i64 %227, %76, !dbg !3903
  br i1 %230, label %237, label %231, !dbg !3905

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3906
  %233 = icmp slt i64 %232, %227, !dbg !3907
  %234 = mul nsw i64 %227, %59, !dbg !3908
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3909
  %236 = zext i1 %233 to i32, !dbg !3909
  br label %237, !dbg !3909

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229, !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  %241 = icmp slt i64 %238, %76, !dbg !3903
  br i1 %241, label %248, label %242, !dbg !3905

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3906
  %244 = icmp slt i64 %243, %238, !dbg !3907
  %245 = mul nsw i64 %238, %59, !dbg !3908
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3909
  %247 = zext i1 %244 to i32, !dbg !3909
  br label %248, !dbg !3909

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240, !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !3899, metadata !622), !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3892, metadata !622), !dbg !3900
  br label %184, !dbg !3990

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3916
  %254 = icmp slt i64 %253, %98, !dbg !3917
  %255 = mul nsw i64 %98, %59, !dbg !3918
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3919
  %257 = zext i1 %254 to i32, !dbg !3919
  br label %258, !dbg !3919

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3899, metadata !622), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3899, metadata !622), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3892, metadata !622), !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3892, metadata !622), !dbg !3910
  %262 = icmp slt i64 %259, %89, !dbg !3913
  br i1 %262, label %269, label %263, !dbg !3915

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3916
  %265 = icmp slt i64 %264, %259, !dbg !3917
  %266 = mul nsw i64 %259, %59, !dbg !3918
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3919
  %268 = zext i1 %265 to i32, !dbg !3919
  br label %269, !dbg !3919

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261, !dbg !4001
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3899, metadata !622), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !3899, metadata !622), !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3892, metadata !622), !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3892, metadata !622), !dbg !3910
  br label %184, !dbg !3990

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !3936
  %275 = icmp slt i64 %274, %120, !dbg !3937
  %276 = mul nsw i64 %120, %59, !dbg !3938
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !3939
  %278 = zext i1 %275 to i32, !dbg !3939
  br label %279, !dbg !3939

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121, !dbg !4002
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3899, metadata !622), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !3899, metadata !622), !dbg !3932
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3892, metadata !622), !dbg !3930
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3892, metadata !622), !dbg !3930
  br label %184, !dbg !3990

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !3946
  %285 = icmp slt i64 %284, %133, !dbg !3947
  %286 = mul nsw i64 %133, %59, !dbg !3948
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !3949
  %288 = zext i1 %285 to i32, !dbg !3949
  br label %289, !dbg !3949

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134, !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  %293 = icmp slt i64 %290, %124, !dbg !3943
  br i1 %293, label %300, label %294, !dbg !3945

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !3946
  %296 = icmp slt i64 %295, %290, !dbg !3947
  %297 = mul nsw i64 %290, %59, !dbg !3948
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !3949
  %299 = zext i1 %296 to i32, !dbg !3949
  br label %300, !dbg !3949

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292, !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  %304 = icmp slt i64 %301, %124, !dbg !3943
  br i1 %304, label %311, label %305, !dbg !3945

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !3946
  %307 = icmp slt i64 %306, %301, !dbg !3947
  %308 = mul nsw i64 %301, %59, !dbg !3948
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !3949
  %310 = zext i1 %307 to i32, !dbg !3949
  br label %311, !dbg !3949

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303, !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  %315 = icmp slt i64 %312, %124, !dbg !3943
  br i1 %315, label %322, label %316, !dbg !3945

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !3946
  %318 = icmp slt i64 %317, %312, !dbg !3947
  %319 = mul nsw i64 %312, %59, !dbg !3948
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !3949
  %321 = zext i1 %318 to i32, !dbg !3949
  br label %322, !dbg !3949

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314, !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !3899, metadata !622), !dbg !3942
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3892, metadata !622), !dbg !3940
  br label %184, !dbg !3990

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !3956
  %328 = icmp slt i64 %327, %146, !dbg !3957
  %329 = mul nsw i64 %146, %59, !dbg !3958
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !3959
  %331 = zext i1 %328 to i32, !dbg !3959
  br label %332, !dbg !3959

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147, !dbg !4004
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3950
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3950
  %336 = icmp slt i64 %333, %137, !dbg !3953
  br i1 %336, label %343, label %337, !dbg !3955

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !3956
  %339 = icmp slt i64 %338, %333, !dbg !3957
  %340 = mul nsw i64 %333, %59, !dbg !3958
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !3959
  %342 = zext i1 %339 to i32, !dbg !3959
  br label %343, !dbg !3959

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335, !dbg !4004
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3950
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3950
  %347 = icmp slt i64 %344, %137, !dbg !3953
  br i1 %347, label %354, label %348, !dbg !3955

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !3956
  %350 = icmp slt i64 %349, %344, !dbg !3957
  %351 = mul nsw i64 %344, %59, !dbg !3958
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !3959
  %353 = zext i1 %350 to i32, !dbg !3959
  br label %354, !dbg !3959

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346, !dbg !4004
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !3899, metadata !622), !dbg !3952
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3950
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !3892, metadata !622), !dbg !3950
  br label %184, !dbg !3990

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !3973
  %360 = icmp slt i64 %359, %166, !dbg !3974
  %361 = mul nsw i64 %166, %59, !dbg !3975
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !3976
  %363 = zext i1 %360 to i32, !dbg !3976
  br label %364, !dbg !3976

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  %368 = icmp slt i64 %365, %157, !dbg !3970
  br i1 %368, label %375, label %369, !dbg !3972

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !3973
  %371 = icmp slt i64 %370, %365, !dbg !3974
  %372 = mul nsw i64 %365, %59, !dbg !3975
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !3976
  %374 = zext i1 %371 to i32, !dbg !3976
  br label %375, !dbg !3976

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  %379 = icmp slt i64 %376, %157, !dbg !3970
  br i1 %379, label %386, label %380, !dbg !3972

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !3973
  %382 = icmp slt i64 %381, %376, !dbg !3974
  %383 = mul nsw i64 %376, %59, !dbg !3975
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !3976
  %385 = zext i1 %382 to i32, !dbg !3976
  br label %386, !dbg !3976

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  %390 = icmp slt i64 %387, %157, !dbg !3970
  br i1 %390, label %397, label %391, !dbg !3972

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !3973
  %393 = icmp slt i64 %392, %387, !dbg !3974
  %394 = mul nsw i64 %387, %59, !dbg !3975
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !3976
  %396 = zext i1 %393 to i32, !dbg !3976
  br label %397, !dbg !3976

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  %401 = icmp slt i64 %398, %157, !dbg !3970
  br i1 %401, label %408, label %402, !dbg !3972

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !3973
  %404 = icmp slt i64 %403, %398, !dbg !3974
  %405 = mul nsw i64 %398, %59, !dbg !3975
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !3976
  %407 = zext i1 %404 to i32, !dbg !3976
  br label %408, !dbg !3976

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  %412 = icmp slt i64 %409, %157, !dbg !3970
  br i1 %412, label %419, label %413, !dbg !3972

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !3973
  %415 = icmp slt i64 %414, %409, !dbg !3974
  %416 = mul nsw i64 %409, %59, !dbg !3975
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !3976
  %418 = zext i1 %415 to i32, !dbg !3976
  br label %419, !dbg !3976

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  %423 = icmp slt i64 %420, %157, !dbg !3970
  br i1 %423, label %430, label %424, !dbg !3972

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !3973
  %426 = icmp slt i64 %425, %420, !dbg !3974
  %427 = mul nsw i64 %420, %59, !dbg !3975
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !3976
  %429 = zext i1 %426 to i32, !dbg !3976
  br label %430, !dbg !3976

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422, !dbg !4005
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !3899, metadata !622), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !3892, metadata !622), !dbg !3967
  br label %184, !dbg !3990

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !3983
  %436 = icmp slt i64 %435, %179, !dbg !3984
  %437 = mul nsw i64 %179, %59, !dbg !3985
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !3986
  %439 = zext i1 %436 to i32, !dbg !3986
  br label %440, !dbg !3986

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180, !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  %444 = icmp slt i64 %441, %170, !dbg !3980
  br i1 %444, label %451, label %445, !dbg !3982

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !3983
  %447 = icmp slt i64 %446, %441, !dbg !3984
  %448 = mul nsw i64 %441, %59, !dbg !3985
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !3986
  %450 = zext i1 %447 to i32, !dbg !3986
  br label %451, !dbg !3986

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443, !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  %455 = icmp slt i64 %452, %170, !dbg !3980
  br i1 %455, label %462, label %456, !dbg !3982

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !3983
  %458 = icmp slt i64 %457, %452, !dbg !3984
  %459 = mul nsw i64 %452, %59, !dbg !3985
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !3986
  %461 = zext i1 %458 to i32, !dbg !3986
  br label %462, !dbg !3986

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454, !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  %466 = icmp slt i64 %463, %170, !dbg !3980
  br i1 %466, label %473, label %467, !dbg !3982

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !3983
  %469 = icmp slt i64 %468, %463, !dbg !3984
  %470 = mul nsw i64 %463, %59, !dbg !3985
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !3986
  %472 = zext i1 %469 to i32, !dbg !3986
  br label %473, !dbg !3986

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465, !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  %477 = icmp slt i64 %474, %170, !dbg !3980
  br i1 %477, label %484, label %478, !dbg !3982

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !3983
  %480 = icmp slt i64 %479, %474, !dbg !3984
  %481 = mul nsw i64 %474, %59, !dbg !3985
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !3986
  %483 = zext i1 %480 to i32, !dbg !3986
  br label %484, !dbg !3986

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476, !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  %488 = icmp slt i64 %485, %170, !dbg !3980
  br i1 %488, label %495, label %489, !dbg !3982

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !3983
  %491 = icmp slt i64 %490, %485, !dbg !3984
  %492 = mul nsw i64 %485, %59, !dbg !3985
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !3986
  %494 = zext i1 %491 to i32, !dbg !3986
  br label %495, !dbg !3986

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487, !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !3899, metadata !622), !dbg !3979
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !3892, metadata !622), !dbg !3977
  br label %184, !dbg !3990
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4007 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4010, metadata !622), !dbg !4016
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4011, metadata !622), !dbg !4017
  %3 = icmp eq i64 %0, 0, !dbg !4018
  %4 = icmp eq i64 %1, 0, !dbg !4019
  %5 = or i1 %3, %4, !dbg !4021
  br i1 %5, label %12, label %6, !dbg !4021

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4022
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4013, metadata !622), !dbg !4023
  %8 = udiv i64 %7, %1, !dbg !4024
  %9 = icmp eq i64 %8, %0, !dbg !4026
  br i1 %9, label %12, label %10, !dbg !4027

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4028
  store i32 12, i32* %11, align 4, !dbg !4030, !tbaa !829
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4010, metadata !622), !dbg !4016
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4011, metadata !622), !dbg !4017
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4031
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4012, metadata !622), !dbg !4032
  br label %16, !dbg !4033

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4034
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4035 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4052, metadata !622), !dbg !4061
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4053, metadata !622), !dbg !4062
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4054, metadata !622), !dbg !4063
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4055, metadata !622), !dbg !4064
  %6 = bitcast i32* %5 to i8*, !dbg !4065
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4065
  %7 = icmp eq i32* %0, null, !dbg !4066
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4052, metadata !622), !dbg !4061
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4068
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4052, metadata !622), !dbg !4061
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4069
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4056, metadata !622), !dbg !4070
  %10 = icmp ugt i64 %9, -3, !dbg !4071
  %11 = icmp ne i64 %2, 0, !dbg !4072
  %12 = and i1 %11, %10, !dbg !4074
  br i1 %12, label %13, label %18, !dbg !4074

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4075
  br i1 %14, label %18, label %15, !dbg !4077

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4079, !tbaa !778
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4058, metadata !622), !dbg !4080
  %17 = zext i8 %16 to i32, !dbg !4081
  store i32 %17, i32* %8, align 4, !dbg !4082, !tbaa !829
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4083
  ret i64 %19, !dbg !4083
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4084 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4129, metadata !622), !dbg !4134
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4135
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4136, metadata !622), !dbg !4140
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4142
  %4 = load i32, i32* %3, align 8, !dbg !4142, !tbaa !4143
  %5 = and i32 %4, 32, !dbg !4142
  %6 = icmp eq i32 %5, 0, !dbg !4145
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4146
  %8 = icmp ne i32 %7, 0, !dbg !4147
  br i1 %6, label %9, label %19, !dbg !4148

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4150
  %11 = icmp ne i64 %2, 0, !dbg !4150
  %12 = or i1 %11, %10, !dbg !4150
  %13 = sext i1 %8 to i32, !dbg !4150
  br i1 %12, label %22, label %14, !dbg !4150

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4152
  %16 = load i32, i32* %15, align 4, !dbg !4152, !tbaa !829
  %17 = icmp ne i32 %16, 9, !dbg !4154
  %18 = sext i1 %17 to i32, !dbg !4154
  br label %22, !dbg !4154

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4156

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4158
  store i32 0, i32* %21, align 4, !dbg !4160, !tbaa !829
  br label %22, !dbg !4158

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4161
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4162 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4167, metadata !622), !dbg !4187
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4168, metadata !622), !dbg !4188
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4189
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4169, metadata !622), !dbg !4190
  %3 = icmp eq i8* %2, null, !dbg !4191
  br i1 %3, label %15, label %4, !dbg !4192

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4177, metadata !622), !dbg !4193
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4178, metadata !622), !dbg !4194
  %5 = load i8, i8* %2, align 1, !dbg !4195, !tbaa !778
  %6 = icmp eq i8 %5, 67, !dbg !4197
  br i1 %6, label %7, label %11, !dbg !4200

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4202
  %9 = load i8, i8* %8, align 1, !dbg !4202, !tbaa !778
  %10 = icmp eq i8 %9, 0, !dbg !4205
  br i1 %10, label %14, label %11, !dbg !4207

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4183, metadata !622), !dbg !4209
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0)) #10, !dbg !4210
  %13 = icmp eq i32 %12, 0, !dbg !4212
  br i1 %13, label %14, label %15, !dbg !4214

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4168, metadata !622), !dbg !4188
  br label %15, !dbg !4216

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4217
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4218 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4230, metadata !622), !dbg !4304
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4297, metadata !622), !dbg !4306
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4307
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4222, metadata !622), !dbg !4308
  %4 = icmp eq i8* %3, null, !dbg !4309
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), i8* %3, !dbg !4311
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4222, metadata !622), !dbg !4308
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4312, !tbaa !630
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4244, metadata !622) #10, !dbg !4313
  %7 = icmp eq i8* %6, null, !dbg !4314
  br i1 %7, label %8, label %127, !dbg !4315

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.139, i64 0, i64 0)) #10, !dbg !4316
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4245, metadata !622) #10, !dbg !4317
  %10 = icmp eq i8* %9, null, !dbg !4318
  br i1 %10, label %14, label %11, !dbg !4320

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4321, !tbaa !778
  %13 = icmp eq i8 %12, 0, !dbg !4323
  br i1 %13, label %14, label %15, !dbg !4324

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4326

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.140, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4245, metadata !622) #10, !dbg !4317
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4327
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4248, metadata !622) #10, !dbg !4328
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4250, metadata !622) #10, !dbg !4329
  %18 = icmp eq i64 %17, 0, !dbg !4330
  br i1 %18, label %24, label %19, !dbg !4331

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4332
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4332
  %22 = load i8, i8* %21, align 1, !dbg !4332, !tbaa !778
  %23 = icmp ne i8 %22, 47, !dbg !4334
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4335
  %27 = add i64 %17, 14, !dbg !4336
  %28 = add i64 %27, %26, !dbg !4337
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4338
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4247, metadata !622) #10, !dbg !4339
  %30 = icmp eq i8* %29, null, !dbg !4340
  br i1 %30, label %125, label %31, !dbg !4340

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4341
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4344

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4345, !tbaa !778
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4347
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.141, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4348
  br label %37, !dbg !4349

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4347
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.141, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4348
  br label %37, !dbg !4349

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4350
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4252, metadata !622) #10, !dbg !4351
  %39 = icmp slt i32 %38, 0, !dbg !4352
  br i1 %39, label %123, label %40, !dbg !4353

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.142, i64 0, i64 0)) #10, !dbg !4354
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4253, metadata !622) #10, !dbg !4355
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4356
  br i1 %42, label %48, label %43, !dbg !4357

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4358

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4359
  br label %123, !dbg !4361

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4294, metadata !622) #10, !dbg !4358
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4295, metadata !622) #10, !dbg !4362
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4363
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4364
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4365, metadata !622) #10, !dbg !4370
  %53 = load i8*, i8** %46, align 8, !dbg !4372, !tbaa !4373
  %54 = load i8*, i8** %47, align 8, !dbg !4372, !tbaa !4374
  %55 = icmp ult i8* %53, %54, !dbg !4372
  br i1 %55, label %58, label %56, !dbg !4372, !prof !4375

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4376
  br label %62, !dbg !4376

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4378
  store i8* %59, i8** %46, align 8, !dbg !4378, !tbaa !4373
  %60 = load i8, i8* %53, align 1, !dbg !4378, !tbaa !778
  %61 = zext i8 %60 to i32, !dbg !4378
  br label %62, !dbg !4378

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4380
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4296, metadata !622) #10, !dbg !4382
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4383

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4384

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4365, metadata !622) #10, !dbg !4384
  %66 = load i8*, i8** %46, align 8, !dbg !4388, !tbaa !4373
  %67 = load i8*, i8** %47, align 8, !dbg !4388, !tbaa !4374
  %68 = icmp ult i8* %66, %67, !dbg !4388
  br i1 %68, label %71, label %69, !dbg !4388, !prof !4375

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4389
  br label %75, !dbg !4389

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4390
  store i8* %72, i8** %46, align 8, !dbg !4390, !tbaa !4373
  %73 = load i8, i8* %66, align 1, !dbg !4390, !tbaa !778
  %74 = zext i8 %73 to i32, !dbg !4390
  br label %75, !dbg !4390

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4391
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4296, metadata !622) #10, !dbg !4382
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4392, !llvm.loop !4394

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4397
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.143, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4398
  %80 = icmp slt i32 %79, 2, !dbg !4400
  br i1 %80, label %115, label %81, !dbg !4401

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4402
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4301, metadata !622) #10, !dbg !4403
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4404
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4302, metadata !622) #10, !dbg !4405
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4303, metadata !622) #10, !dbg !4406
  %84 = icmp eq i64 %51, 0, !dbg !4407
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4409

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4295, metadata !622) #10, !dbg !4362
  %89 = add i64 %86, 2, !dbg !4410
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4412
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4294, metadata !622) #10, !dbg !4358
  br label %95, !dbg !4413

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4414
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4295, metadata !622) #10, !dbg !4362
  %93 = add i64 %92, 1, !dbg !4416
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4417
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4294, metadata !622) #10, !dbg !4358
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4294, metadata !622) #10, !dbg !4358
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4295, metadata !622) #10, !dbg !4362
  %98 = icmp eq i8* %97, null, !dbg !4418
  br i1 %98, label %99, label %100, !dbg !4420

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4295, metadata !622) #10, !dbg !4362
  call void @free(i8* %52) #10, !dbg !4421
  br label %116, !dbg !4423

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4424
  %102 = xor i64 %83, -1, !dbg !4425
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4425
  %104 = xor i64 %82, -1, !dbg !4426
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4426
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4427, metadata !622) #10, !dbg !4435
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4434, metadata !622) #10, !dbg !4435
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4437
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4438
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4427, metadata !622) #10, !dbg !4439
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4434, metadata !622) #10, !dbg !4439
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4441
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4442
  br label %111, !dbg !4443

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4358

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4294, metadata !622) #10, !dbg !4358
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4295, metadata !622) #10, !dbg !4362
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4443
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4443
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4358

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4358

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4294, metadata !622) #10, !dbg !4358
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4295, metadata !622) #10, !dbg !4362
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4443
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4443
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4444
  %120 = icmp eq i64 %117, 0, !dbg !4445
  br i1 %120, label %123, label %121, !dbg !4447

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4448
  store i8 0, i8* %122, align 1, !dbg !4450, !tbaa !778
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4244, metadata !622) #10, !dbg !4313
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4244, metadata !622) #10, !dbg !4313
  call void @free(i8* %29) #10, !dbg !4451
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4244, metadata !622) #10, !dbg !4313
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4452, !tbaa !630
  br label %127, !dbg !4453

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4223, metadata !622), !dbg !4454
  %129 = load i8, i8* %128, align 1, !dbg !4455, !tbaa !778
  %130 = icmp eq i8 %129, 0, !dbg !4456
  br i1 %130, label %157, label %131, !dbg !4457

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4459

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4459
  %136 = icmp eq i32 %135, 0, !dbg !4460
  br i1 %136, label %143, label %137, !dbg !4461

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4462
  br i1 %138, label %139, label %147, !dbg !4464

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4465
  %141 = load i8, i8* %140, align 1, !dbg !4465, !tbaa !778
  %142 = icmp eq i8 %141, 0, !dbg !4467
  br i1 %142, label %143, label %147, !dbg !4468

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4470
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4472
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4473
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4222, metadata !622), !dbg !4308
  br label %157, !dbg !4474

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4475
  %149 = add i64 %148, 1, !dbg !4476
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4477
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4223, metadata !622), !dbg !4454
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4478
  %152 = add i64 %151, 1, !dbg !4479
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4480
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4223, metadata !622), !dbg !4454
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4223, metadata !622), !dbg !4454
  %154 = load i8, i8* %153, align 1, !dbg !4455, !tbaa !778
  %155 = icmp eq i8 %154, 0, !dbg !4456
  br i1 %155, label %156, label %132, !dbg !4457, !llvm.loop !4481

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4308

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4222, metadata !622), !dbg !4308
  %159 = load i8, i8* %158, align 1, !dbg !4484, !tbaa !778
  %160 = icmp eq i8 %159, 0, !dbg !4486
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.144, i64 0, i64 0), i8* %158, !dbg !4487
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4222, metadata !622), !dbg !4308
  ret i8* %161, !dbg !4488
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
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4489 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4534, metadata !622), !dbg !4538
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4535, metadata !622), !dbg !4539
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4537, metadata !622), !dbg !4540
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4541
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4536, metadata !622), !dbg !4542
  %3 = icmp slt i32 %2, 0, !dbg !4543
  br i1 %3, label %4, label %6, !dbg !4545

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4546
  br label %24, !dbg !4547

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4548
  %8 = icmp eq i32 %7, 0, !dbg !4548
  br i1 %8, label %13, label %9, !dbg !4550

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4551
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4553
  %12 = icmp eq i64 %11, -1, !dbg !4555
  br i1 %12, label %16, label %13, !dbg !4556

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4557
  %15 = icmp eq i32 %14, 0, !dbg !4557
  br i1 %15, label %16, label %18, !dbg !4558

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4535, metadata !622), !dbg !4539
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4537, metadata !622), !dbg !4540
  br label %24, !dbg !4561

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4562
  %20 = load i32, i32* %19, align 4, !dbg !4562, !tbaa !829
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4535, metadata !622), !dbg !4539
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4535, metadata !622), !dbg !4539
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4537, metadata !622), !dbg !4540
  %22 = icmp eq i32 %20, 0, !dbg !4563
  br i1 %22, label %24, label %23, !dbg !4561

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4565, !tbaa !829
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4537, metadata !622), !dbg !4540
  br label %24, !dbg !4567

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4568
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4569 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4614, metadata !622), !dbg !4615
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4616
  br i1 %2, label %6, label %3, !dbg !4618

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4619
  %5 = icmp eq i32 %4, 0, !dbg !4619
  br i1 %5, label %6, label %8, !dbg !4621

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4623
  br label %17, !dbg !4624

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4625, metadata !622) #10, !dbg !4630
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4632
  %10 = load i32, i32* %9, align 8, !dbg !4632, !tbaa !4143
  %11 = and i32 %10, 256, !dbg !4634
  %12 = icmp eq i32 %11, 0, !dbg !4634
  br i1 %12, label %15, label %13, !dbg !4635

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4636
  br label %15, !dbg !4636

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4637
  br label %17, !dbg !4638

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4639
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4640 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4685, metadata !622), !dbg !4691
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4686, metadata !622), !dbg !4692
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4687, metadata !622), !dbg !4693
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4694
  %5 = load i8*, i8** %4, align 8, !dbg !4694, !tbaa !4374
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4695
  %7 = load i8*, i8** %6, align 8, !dbg !4695, !tbaa !4373
  %8 = icmp eq i8* %5, %7, !dbg !4696
  br i1 %8, label %9, label %28, !dbg !4697

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4698
  %11 = load i8*, i8** %10, align 8, !dbg !4698, !tbaa !4700
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4701
  %13 = load i8*, i8** %12, align 8, !dbg !4701, !tbaa !4702
  %14 = icmp eq i8* %11, %13, !dbg !4703
  br i1 %14, label %15, label %28, !dbg !4704

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4705
  %17 = load i8*, i8** %16, align 8, !dbg !4705, !tbaa !4706
  %18 = icmp eq i8* %17, null, !dbg !4707
  br i1 %18, label %19, label %28, !dbg !4708

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4710
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4711
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4688, metadata !622), !dbg !4713
  %22 = icmp eq i64 %21, -1, !dbg !4714
  br i1 %22, label %30, label %23, !dbg !4716

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4717
  %25 = load i32, i32* %24, align 8, !dbg !4718, !tbaa !4143
  %26 = and i32 %25, -17, !dbg !4718
  store i32 %26, i32* %24, align 8, !dbg !4718, !tbaa !4143
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4719
  store i64 %21, i64* %27, align 8, !dbg !4720, !tbaa !4721
  br label %30, !dbg !4722

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4723
  br label %30, !dbg !4724

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4725
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

!llvm.dbg.cu = !{!2, !118, !124, !132, !139, !146, !555, !200, !563, !580, !582, !593, !596, !598, !601, !603, !209, !606, !608, !610}
!llvm.ident = !{!612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612, !612}
!llvm.module.flags = !{!613, !614, !615, !616}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !106, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !68)
!3 = !DIFile(filename: "src/truncate.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !13, !28}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 60, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "rm_abs", value: 0)
!8 = !DIEnumerator(name: "rm_rel", value: 1)
!9 = !DIEnumerator(name: "rm_min", value: 2)
!10 = !DIEnumerator(name: "rm_max", value: 3)
!11 = !DIEnumerator(name: "rm_rdn", value: 4)
!12 = !DIEnumerator(name: "rm_rup", value: 5)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 46, size: 32, elements: !15)
!14 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!16 = !DIEnumerator(name: "_ISupper", value: 256)
!17 = !DIEnumerator(name: "_ISlower", value: 512)
!18 = !DIEnumerator(name: "_ISalpha", value: 1024)
!19 = !DIEnumerator(name: "_ISdigit", value: 2048)
!20 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!21 = !DIEnumerator(name: "_ISspace", value: 8192)
!22 = !DIEnumerator(name: "_ISprint", value: 16384)
!23 = !DIEnumerator(name: "_ISgraph", value: 32768)
!24 = !DIEnumerator(name: "_ISblank", value: 1)
!25 = !DIEnumerator(name: "_IScntrl", value: 2)
!26 = !DIEnumerator(name: "_ISpunct", value: 4)
!27 = !DIEnumerator(name: "_ISalnum", value: 8)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !29, line: 32, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!31 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!32 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!33 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!34 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!35 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!36 = !DIEnumerator(name: "c_quoting_style", value: 5)
!37 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!38 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!39 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!40 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!41 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!42 = !{!43, !44, !45, !50, !52, !53, !56, !58, !61, !63, !66}
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !46, line: 91, baseType: !47)
!46 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !48, line: 140, baseType: !49)
!48 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 62, baseType: !55)
!54 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !64, line: 135, baseType: !65)
!64 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !48, line: 61, baseType: !49)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !64, line: 136, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !48, line: 62, baseType: !55)
!68 = !{!69, !72, !74, !76, !0}
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "no_create", scope: !2, file: !3, line: 41, type: !71, isLocal: true, isDefinition: true)
!71 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!72 = !DIGlobalVariableExpression(var: !73)
!73 = distinct !DIGlobalVariable(name: "block_mode", scope: !2, file: !3, line: 44, type: !71, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75)
!75 = distinct !DIGlobalVariable(name: "ref_file", scope: !2, file: !3, line: 47, type: !61, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "infomap", scope: !78, file: !79, line: 632, type: !103, isLocal: true, isDefinition: true)
!78 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !79, file: !79, line: 630, type: !80, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !82)
!79 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!80 = !DISubroutineType(types: !81)
!81 = !{null, !61}
!82 = !{!83, !84, !85, !92, !94, !95, !96, !99, !100, !102}
!83 = !DILocalVariable(name: "program", arg: 1, scope: !78, file: !79, line: 630, type: !61)
!84 = !DILocalVariable(name: "node", scope: !78, file: !79, line: 642, type: !61)
!85 = !DILocalVariable(name: "map_prog", scope: !78, file: !79, line: 643, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !78, file: !79, line: 632, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !88, file: !79, line: 632, baseType: !61, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !79, line: 632, baseType: !61, size: 64, offset: 64)
!92 = !DILocalVariable(name: "__s1_len", scope: !93, file: !79, line: 645, type: !53)
!93 = distinct !DILexicalBlock(scope: !78, file: !79, line: 645, column: 33)
!94 = !DILocalVariable(name: "__s2_len", scope: !93, file: !79, line: 645, type: !53)
!95 = !DILocalVariable(name: "lc_messages", scope: !78, file: !79, line: 655, type: !61)
!96 = !DILocalVariable(name: "__s1_len", scope: !97, file: !79, line: 656, type: !53)
!97 = distinct !DILexicalBlock(scope: !98, file: !79, line: 656, column: 22)
!98 = distinct !DILexicalBlock(scope: !78, file: !79, line: 656, column: 7)
!99 = !DILocalVariable(name: "__s2_len", scope: !97, file: !79, line: 656, type: !53)
!100 = !DILocalVariable(name: "__s2", scope: !101, file: !79, line: 656, type: !58)
!101 = distinct !DILexicalBlock(scope: !97, file: !79, line: 656, column: 22)
!102 = !DILocalVariable(name: "__result", scope: !101, file: !79, line: 656, type: !43)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 896, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 7)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1792, elements: !104)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !109, line: 104, size: 256, elements: !110)
!109 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!110 = !{!111, !112, !113, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !108, file: !109, line: 106, baseType: !61, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !108, file: !109, line: 109, baseType: !43, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !108, file: !109, line: 110, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !108, file: !109, line: 111, baseType: !43, size: 32, offset: 192)
!116 = !DIGlobalVariableExpression(var: !117)
!117 = distinct !DIGlobalVariable(name: "Version", scope: !118, file: !119, line: 2, type: !61, isLocal: false, isDefinition: true)
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, globals: !121)
!119 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = !{}
!121 = !{!116}
!122 = !DIGlobalVariableExpression(var: !123)
!123 = distinct !DIGlobalVariable(name: "file_name", scope: !124, file: !129, line: 36, type: !61, isLocal: true, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, globals: !126)
!125 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!126 = !{!122, !127}
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !124, file: !129, line: 46, type: !71, isLocal: true, isDefinition: true)
!129 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!130 = !DIGlobalVariableExpression(var: !131)
!131 = distinct !DIGlobalVariable(name: "exit_failure", scope: !132, file: !135, line: 24, type: !136, isLocal: false, isDefinition: true)
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, globals: !134)
!133 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !{!130}
!135 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "program_name", scope: !139, file: !143, line: 33, type: !61, isLocal: false, isDefinition: true)
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !141, globals: !142)
!140 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !{!52, !50}
!142 = !{!137}
!143 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !146, file: !158, line: 77, type: !194, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !154, globals: !155)
!147 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{!28, !149, !13}
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !29, line: 242, size: 32, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!152 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!153 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!154 = !{!43, !44, !53, !50}
!155 = !{!144, !156, !163, !176, !178, !183, !190, !192}
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !146, file: !158, line: 93, type: !159, isLocal: false, isDefinition: true)
!158 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 320, elements: !161)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!161 = !{!162}
!162 = !DISubrange(count: 10)
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !146, file: !158, line: 1043, type: !165, isLocal: false, isDefinition: true)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !158, line: 57, size: 448, elements: !166)
!166 = !{!167, !168, !169, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !165, file: !158, line: 60, baseType: !28, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !158, line: 63, baseType: !43, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !165, file: !158, line: 67, baseType: !170, size: 256, offset: 64)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !172)
!171 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!172 = !{!173}
!173 = !DISubrange(count: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !165, file: !158, line: 70, baseType: !61, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !165, file: !158, line: 73, baseType: !61, size: 64, offset: 384)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !146, file: !158, line: 108, type: !165, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179)
!179 = distinct !DIGlobalVariable(name: "slot0", scope: !146, file: !158, line: 834, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2048, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 256)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "slotvec", scope: !146, file: !158, line: 837, type: !185, isLocal: true, isDefinition: true)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !158, line: 826, size: 128, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !186, file: !158, line: 828, baseType: !53, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !158, line: 829, baseType: !50, size: 64, offset: 64)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "nslots", scope: !146, file: !158, line: 835, type: !43, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "slotvec0", scope: !146, file: !158, line: 836, type: !186, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 704, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!196 = !{!197}
!197 = !DISubrange(count: 11)
!198 = !DIGlobalVariableExpression(var: !199)
!199 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !200, file: !203, line: 26, type: !204, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, globals: !202)
!201 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !{!198}
!203 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 376, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 47)
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !209, file: !553, line: 120, type: !554, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !550, globals: !552)
!210 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!211 = !{!212}
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !213, line: 41, size: 32, elements: !214)
!213 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!215 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!216 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!217 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!218 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!219 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!220 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!221 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!222 = !DIEnumerator(name: "DAY_1", value: 131079)
!223 = !DIEnumerator(name: "DAY_2", value: 131080)
!224 = !DIEnumerator(name: "DAY_3", value: 131081)
!225 = !DIEnumerator(name: "DAY_4", value: 131082)
!226 = !DIEnumerator(name: "DAY_5", value: 131083)
!227 = !DIEnumerator(name: "DAY_6", value: 131084)
!228 = !DIEnumerator(name: "DAY_7", value: 131085)
!229 = !DIEnumerator(name: "ABMON_1", value: 131086)
!230 = !DIEnumerator(name: "ABMON_2", value: 131087)
!231 = !DIEnumerator(name: "ABMON_3", value: 131088)
!232 = !DIEnumerator(name: "ABMON_4", value: 131089)
!233 = !DIEnumerator(name: "ABMON_5", value: 131090)
!234 = !DIEnumerator(name: "ABMON_6", value: 131091)
!235 = !DIEnumerator(name: "ABMON_7", value: 131092)
!236 = !DIEnumerator(name: "ABMON_8", value: 131093)
!237 = !DIEnumerator(name: "ABMON_9", value: 131094)
!238 = !DIEnumerator(name: "ABMON_10", value: 131095)
!239 = !DIEnumerator(name: "ABMON_11", value: 131096)
!240 = !DIEnumerator(name: "ABMON_12", value: 131097)
!241 = !DIEnumerator(name: "MON_1", value: 131098)
!242 = !DIEnumerator(name: "MON_2", value: 131099)
!243 = !DIEnumerator(name: "MON_3", value: 131100)
!244 = !DIEnumerator(name: "MON_4", value: 131101)
!245 = !DIEnumerator(name: "MON_5", value: 131102)
!246 = !DIEnumerator(name: "MON_6", value: 131103)
!247 = !DIEnumerator(name: "MON_7", value: 131104)
!248 = !DIEnumerator(name: "MON_8", value: 131105)
!249 = !DIEnumerator(name: "MON_9", value: 131106)
!250 = !DIEnumerator(name: "MON_10", value: 131107)
!251 = !DIEnumerator(name: "MON_11", value: 131108)
!252 = !DIEnumerator(name: "MON_12", value: 131109)
!253 = !DIEnumerator(name: "AM_STR", value: 131110)
!254 = !DIEnumerator(name: "PM_STR", value: 131111)
!255 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!256 = !DIEnumerator(name: "D_FMT", value: 131113)
!257 = !DIEnumerator(name: "T_FMT", value: 131114)
!258 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!259 = !DIEnumerator(name: "ERA", value: 131116)
!260 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!261 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!262 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!263 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!264 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!265 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!266 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!267 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!268 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!269 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!270 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!271 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!272 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!273 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!274 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!275 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!276 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!277 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!278 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!279 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!280 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!281 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!282 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!283 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!284 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!285 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!286 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!287 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!288 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!289 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!290 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!291 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!292 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!293 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!294 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!295 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!296 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!297 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!298 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!299 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!300 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!301 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!302 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!303 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!304 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!305 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!306 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!307 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!308 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!309 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!310 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!311 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!312 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!313 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!314 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!315 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!316 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!317 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!318 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!319 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!320 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!321 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!322 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!323 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!324 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!325 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!326 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!327 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!328 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!329 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!330 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!331 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!332 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!333 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!334 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!335 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!336 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!337 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!338 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!339 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!340 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!341 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!342 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!343 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!344 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!345 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!346 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!347 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!348 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!349 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!350 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!351 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!352 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!353 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!354 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!355 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!356 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!357 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!358 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!359 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!360 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!361 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!362 = !DIEnumerator(name: "CODESET", value: 14)
!363 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!364 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!365 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!366 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!367 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!368 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!369 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!370 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!371 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!389 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!390 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!391 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!392 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!393 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!409 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!410 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!411 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!412 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!413 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!418 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!419 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!420 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!421 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!422 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!423 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!424 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!434 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!435 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!436 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!437 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!438 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!439 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!440 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!441 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!442 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!443 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!444 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!445 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!446 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!447 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!448 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!449 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!450 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!451 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!452 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!453 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!454 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!455 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!456 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!457 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!458 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!459 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!460 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!461 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!473 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!474 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!477 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!478 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!479 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!480 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!481 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!482 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!483 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!484 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!485 = !DIEnumerator(name: "THOUSEP", value: 65537)
!486 = !DIEnumerator(name: "__GROUPING", value: 65538)
!487 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!488 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!489 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!490 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!491 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!492 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!493 = !DIEnumerator(name: "__YESSTR", value: 327682)
!494 = !DIEnumerator(name: "__NOSTR", value: 327683)
!495 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!496 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!497 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!498 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!499 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!500 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!501 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!502 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!503 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!504 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!505 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!506 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!507 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!508 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!509 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!510 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!511 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!512 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!513 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!514 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!515 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!516 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!517 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!518 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!519 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!520 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!521 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!522 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!523 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!524 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!525 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!526 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!527 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!528 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!529 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!530 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!531 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!532 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!533 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!534 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!535 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!536 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!548 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!549 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!550 = !{!52, !50, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!552 = !{!207}
!553 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!554 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557, retainedTypes: !562)
!556 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!557 = !{!558}
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !559, line: 41, size: 32, elements: !560)
!559 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!560 = !{!561}
!561 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!562 = !{!52}
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !565, retainedTypes: !579)
!564 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!566}
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !568, file: !567, line: 192, size: 32, elements: !577)
!567 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DISubprogram(name: "x2nrealloc", scope: !567, file: !567, line: 180, type: !569, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !572)
!569 = !DISubroutineType(types: !570)
!570 = !{!52, !52, !571, !53}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!572 = !{!573, !574, !575, !576}
!573 = !DILocalVariable(name: "p", arg: 1, scope: !568, file: !567, line: 180, type: !52)
!574 = !DILocalVariable(name: "pn", arg: 2, scope: !568, file: !567, line: 180, type: !571)
!575 = !DILocalVariable(name: "s", arg: 3, scope: !568, file: !567, line: 180, type: !53)
!576 = !DILocalVariable(name: "n", scope: !568, file: !567, line: 182, type: !53)
!577 = !{!578}
!578 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!579 = !{!53, !50, !52}
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120)
!581 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DICompileUnit(language: DW_LANG_C99, file: !583, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !584)
!583 = !DIFile(filename: "./lib/xdectoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = !{!585}
!585 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !586, line: 26, size: 32, elements: !587)
!586 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!587 = !{!588, !589, !590, !591, !592}
!588 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!589 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!590 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!591 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!592 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !584, retainedTypes: !595)
!594 = !DIFile(filename: "./lib/xstrtoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!595 = !{!50}
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !562)
!597 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !600)
!599 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = !{!53}
!601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !602, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120)
!602 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !605)
!604 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !{!53, !56, !58, !61}
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120)
!607 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !562)
!609 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = distinct !DICompileUnit(language: DW_LANG_C99, file: !611, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !120, retainedTypes: !562)
!611 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!612 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!613 = !{i32 2, !"Dwarf Version", i32 4}
!614 = !{i32 2, !"Debug Info Version", i32 3}
!615 = !{i32 1, !"PIC Level", i32 2}
!616 = !{i32 1, !"PIE Level", i32 2}
!617 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 64, type: !618, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !43}
!620 = !{!621}
!621 = !DILocalVariable(name: "status", arg: 1, scope: !617, file: !3, line: 64, type: !43)
!622 = !DIExpression()
!623 = !DILocation(line: 64, column: 12, scope: !617)
!624 = !DILocation(line: 66, column: 14, scope: !625)
!625 = distinct !DILexicalBlock(scope: !617, file: !3, line: 66, column: 7)
!626 = !DILocation(line: 66, column: 7, scope: !617)
!627 = !DILocation(line: 67, column: 5, scope: !628)
!628 = !DILexicalBlockFile(scope: !629, file: !3, discriminator: 1)
!629 = distinct !DILexicalBlock(scope: !625, file: !3, line: 67, column: 5)
!630 = !{!631, !631, i64 0}
!631 = !{!"any pointer", !632, i64 0}
!632 = !{!"omnipotent char", !633, i64 0}
!633 = !{!"Simple C/C++ TBAA"}
!634 = !DILocation(line: 67, column: 5, scope: !635)
!635 = !DILexicalBlockFile(scope: !629, file: !3, discriminator: 3)
!636 = !DILocation(line: 67, column: 5, scope: !637)
!637 = !DILexicalBlockFile(scope: !629, file: !3, discriminator: 2)
!638 = !DILocation(line: 70, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !625, file: !3, line: 69, column: 5)
!640 = !DILocation(line: 70, column: 7, scope: !641)
!641 = !DILexicalBlockFile(scope: !639, file: !3, discriminator: 1)
!642 = !DILocation(line: 71, column: 7, scope: !639)
!643 = !DILocation(line: 71, column: 7, scope: !641)
!644 = !DILocation(line: 587, column: 3, scope: !645, inlinedAt: !648)
!645 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !79, file: !79, line: 585, type: !646, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !120)
!646 = !DISubroutineType(types: !647)
!647 = !{null}
!648 = distinct !DILocation(line: 81, column: 7, scope: !639)
!649 = !DILocation(line: 587, column: 3, scope: !650, inlinedAt: !648)
!650 = !DILexicalBlockFile(scope: !645, file: !79, discriminator: 1)
!651 = !DILocation(line: 83, column: 7, scope: !639)
!652 = !DILocation(line: 83, column: 7, scope: !641)
!653 = !DILocation(line: 86, column: 7, scope: !639)
!654 = !DILocation(line: 86, column: 7, scope: !641)
!655 = !DILocation(line: 89, column: 7, scope: !639)
!656 = !DILocation(line: 89, column: 7, scope: !641)
!657 = !DILocation(line: 92, column: 7, scope: !639)
!658 = !DILocation(line: 92, column: 7, scope: !641)
!659 = !DILocation(line: 93, column: 7, scope: !639)
!660 = !DILocation(line: 93, column: 7, scope: !641)
!661 = !DILocation(line: 595, column: 3, scope: !662, inlinedAt: !663)
!662 = distinct !DISubprogram(name: "emit_size_note", scope: !79, file: !79, line: 593, type: !646, isLocal: true, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !120)
!663 = distinct !DILocation(line: 94, column: 7, scope: !639)
!664 = !DILocation(line: 595, column: 3, scope: !665, inlinedAt: !663)
!665 = !DILexicalBlockFile(scope: !662, file: !79, discriminator: 1)
!666 = !DILocation(line: 95, column: 7, scope: !639)
!667 = !DILocation(line: 95, column: 7, scope: !641)
!668 = !DILocation(line: 642, column: 15, scope: !78, inlinedAt: !669)
!669 = distinct !DILocation(line: 99, column: 7, scope: !639)
!670 = !DILocation(line: 651, column: 3, scope: !78, inlinedAt: !669)
!671 = !DILocation(line: 651, column: 3, scope: !672, inlinedAt: !669)
!672 = !DILexicalBlockFile(scope: !78, file: !79, discriminator: 1)
!673 = !DILocation(line: 655, column: 29, scope: !78, inlinedAt: !669)
!674 = !DILocation(line: 655, column: 15, scope: !78, inlinedAt: !669)
!675 = !DILocation(line: 656, column: 7, scope: !98, inlinedAt: !669)
!676 = !DILocation(line: 656, column: 19, scope: !98, inlinedAt: !669)
!677 = !DILocation(line: 656, column: 22, scope: !678, inlinedAt: !669)
!678 = !DILexicalBlockFile(scope: !98, file: !79, discriminator: 16)
!679 = !DILocation(line: 656, column: 7, scope: !680, inlinedAt: !669)
!680 = !DILexicalBlockFile(scope: !78, file: !79, discriminator: 16)
!681 = !DILocation(line: 662, column: 7, scope: !682, inlinedAt: !669)
!682 = distinct !DILexicalBlock(scope: !98, file: !79, line: 657, column: 5)
!683 = !DILocation(line: 662, column: 7, scope: !684, inlinedAt: !669)
!684 = !DILexicalBlockFile(scope: !682, file: !79, discriminator: 1)
!685 = !DILocation(line: 664, column: 5, scope: !682, inlinedAt: !669)
!686 = !DILocation(line: 665, column: 3, scope: !78, inlinedAt: !669)
!687 = !DILocation(line: 665, column: 3, scope: !672, inlinedAt: !669)
!688 = !DILocation(line: 667, column: 3, scope: !78, inlinedAt: !669)
!689 = !DILocation(line: 667, column: 3, scope: !672, inlinedAt: !669)
!690 = !DILocation(line: 101, column: 3, scope: !617)
!691 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 213, type: !692, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !695)
!692 = !DISubroutineType(types: !693)
!693 = !{!43, !43, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !704, !705, !706, !707, !708, !747, !748, !751, !754}
!696 = !DILocalVariable(name: "argc", arg: 1, scope: !691, file: !3, line: 213, type: !43)
!697 = !DILocalVariable(name: "argv", arg: 2, scope: !691, file: !3, line: 213, type: !694)
!698 = !DILocalVariable(name: "got_size", scope: !691, file: !3, line: 215, type: !71)
!699 = !DILocalVariable(name: "errors", scope: !691, file: !3, line: 216, type: !71)
!700 = !DILocalVariable(name: "size", scope: !691, file: !3, line: 217, type: !45)
!701 = !DILocalVariable(name: "rsize", scope: !691, file: !3, line: 218, type: !45)
!702 = !DILocalVariable(name: "rel_mode", scope: !691, file: !3, line: 219, type: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !3, line: 61, baseType: !5)
!704 = !DILocalVariable(name: "c", scope: !691, file: !3, line: 220, type: !43)
!705 = !DILocalVariable(name: "fd", scope: !691, file: !3, line: 220, type: !43)
!706 = !DILocalVariable(name: "oflags", scope: !691, file: !3, line: 220, type: !43)
!707 = !DILocalVariable(name: "fname", scope: !691, file: !3, line: 221, type: !61)
!708 = !DILocalVariable(name: "sb", scope: !709, file: !3, line: 335, type: !711)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 334, column: 5)
!710 = distinct !DILexicalBlock(scope: !691, file: !3, line: 333, column: 7)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !712, line: 46, size: 1152, elements: !713)
!712 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!713 = !{!714, !716, !718, !720, !722, !724, !726, !727, !728, !729, !731, !733, !741, !742, !743}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !711, file: !712, line: 48, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !48, line: 133, baseType: !55)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !711, file: !712, line: 53, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !48, line: 136, baseType: !55)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !711, file: !712, line: 61, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !48, line: 139, baseType: !55)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !711, file: !712, line: 62, baseType: !721, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !48, line: 138, baseType: !171)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !711, file: !712, line: 64, baseType: !723, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !48, line: 134, baseType: !171)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !711, file: !712, line: 65, baseType: !725, size: 32, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !48, line: 135, baseType: !171)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !711, file: !712, line: 67, baseType: !43, size: 32, offset: 288)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !711, file: !712, line: 69, baseType: !715, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !711, file: !712, line: 74, baseType: !47, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !711, file: !712, line: 78, baseType: !730, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !48, line: 162, baseType: !49)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !711, file: !712, line: 80, baseType: !732, size: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !48, line: 167, baseType: !49)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !711, file: !712, line: 91, baseType: !734, size: 128, offset: 576)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !735, line: 8, size: 128, elements: !736)
!735 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !734, file: !735, line: 10, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !48, line: 148, baseType: !49)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !734, file: !735, line: 11, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !48, line: 184, baseType: !49)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !711, file: !712, line: 92, baseType: !734, size: 128, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !711, file: !712, line: 93, baseType: !734, size: 128, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !711, file: !712, line: 106, baseType: !744, size: 192, offset: 960)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 192, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 3)
!747 = !DILocalVariable(name: "file_size", scope: !709, file: !3, line: 336, type: !45)
!748 = !DILocalVariable(name: "ref_fd", scope: !749, file: !3, line: 343, type: !43)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 342, column: 9)
!750 = distinct !DILexicalBlock(scope: !709, file: !3, line: 339, column: 11)
!751 = !DILocalVariable(name: "file_end", scope: !752, file: !3, line: 346, type: !45)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 345, column: 13)
!753 = distinct !DILexicalBlock(scope: !749, file: !3, line: 344, column: 15)
!754 = !DILocalVariable(name: "saved_errno", scope: !752, file: !3, line: 347, type: !43)
!755 = !DILocation(line: 213, column: 11, scope: !691)
!756 = !DILocation(line: 213, column: 24, scope: !691)
!757 = !DILocation(line: 215, column: 8, scope: !691)
!758 = !DILocation(line: 216, column: 8, scope: !691)
!759 = !DILocation(line: 218, column: 9, scope: !691)
!760 = !DILocation(line: 219, column: 14, scope: !691)
!761 = !DILocation(line: 220, column: 10, scope: !691)
!762 = !DILocation(line: 224, column: 21, scope: !691)
!763 = !DILocation(line: 224, column: 3, scope: !691)
!764 = !DILocation(line: 225, column: 3, scope: !691)
!765 = !DILocation(line: 226, column: 3, scope: !691)
!766 = !DILocation(line: 227, column: 3, scope: !691)
!767 = !DILocation(line: 229, column: 3, scope: !691)
!768 = !DILocation(line: 231, column: 3, scope: !691)
!769 = !DILocation(line: 217, column: 9, scope: !691)
!770 = !DILocation(line: 231, column: 15, scope: !771)
!771 = !DILexicalBlockFile(scope: !691, file: !3, discriminator: 1)
!772 = !DILocation(line: 220, column: 7, scope: !691)
!773 = !DILocation(line: 231, column: 3, scope: !771)
!774 = !DILocation(line: 249, column: 18, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !3, discriminator: 1)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 234, column: 9)
!777 = distinct !DILexicalBlock(scope: !691, file: !3, line: 232, column: 5)
!778 = !{!632, !632, i64 0}
!779 = !{!780, !780, i64 0}
!780 = !{!"short", !632, i64 0}
!781 = !DILocation(line: 249, column: 11, scope: !775)
!782 = !DILocation(line: 250, column: 19, scope: !776)
!783 = !DILocation(line: 237, column: 11, scope: !776)
!784 = !DILocation(line: 241, column: 11, scope: !776)
!785 = !DILocation(line: 244, column: 22, scope: !776)
!786 = !DILocation(line: 244, column: 20, scope: !776)
!787 = !DILocation(line: 245, column: 11, scope: !776)
!788 = distinct !{!788, !768, !789}
!789 = !DILocation(line: 300, column: 5, scope: !691)
!790 = distinct !{!790, !791, !782}
!791 = !DILocation(line: 249, column: 11, scope: !776)
!792 = !DILocation(line: 251, column: 19, scope: !776)
!793 = !DILocation(line: 251, column: 11, scope: !776)
!794 = !DILocation(line: 260, column: 15, scope: !795)
!795 = distinct !DILexicalBlock(scope: !776, file: !3, line: 252, column: 13)
!796 = !DILocation(line: 264, column: 15, scope: !795)
!797 = !DILocation(line: 268, column: 15, scope: !795)
!798 = !DILocation(line: 271, column: 18, scope: !775)
!799 = !DILocation(line: 285, column: 30, scope: !776)
!800 = !DILocation(line: 271, column: 11, scope: !775)
!801 = distinct !{!801, !802, !803}
!802 = !DILocation(line: 271, column: 11, scope: !776)
!803 = !DILocation(line: 272, column: 19, scope: !776)
!804 = !DILocation(line: 273, column: 30, scope: !805)
!805 = distinct !DILexicalBlock(scope: !776, file: !3, line: 273, column: 15)
!806 = !DILocation(line: 275, column: 19, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 275, column: 19)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 274, column: 13)
!809 = !DILocation(line: 275, column: 19, scope: !808)
!810 = !DILocation(line: 277, column: 32, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 276, column: 17)
!812 = !DILocation(line: 277, column: 19, scope: !813)
!813 = !DILexicalBlockFile(scope: !811, file: !3, discriminator: 1)
!814 = !DILocation(line: 279, column: 19, scope: !811)
!815 = !DILocation(line: 286, column: 30, scope: !776)
!816 = !DILocation(line: 285, column: 18, scope: !776)
!817 = !DILocation(line: 288, column: 35, scope: !818)
!818 = distinct !DILexicalBlock(scope: !776, file: !3, line: 288, column: 15)
!819 = !DILocation(line: 288, column: 66, scope: !820)
!820 = !DILexicalBlockFile(scope: !818, file: !3, discriminator: 2)
!821 = !DILocation(line: 289, column: 13, scope: !818)
!822 = !DILocation(line: 289, column: 13, scope: !823)
!823 = !DILexicalBlockFile(scope: !818, file: !3, discriminator: 1)
!824 = !DILocation(line: 293, column: 9, scope: !776)
!825 = !DILocation(line: 295, column: 9, scope: !776)
!826 = !DILocation(line: 295, column: 9, scope: !775)
!827 = !DILocation(line: 298, column: 11, scope: !776)
!828 = !DILocation(line: 302, column: 11, scope: !691)
!829 = !{!830, !830, i64 0}
!830 = !{!"int", !632, i64 0}
!831 = !DILocation(line: 302, column: 8, scope: !691)
!832 = !DILocation(line: 306, column: 8, scope: !833)
!833 = distinct !DILexicalBlock(scope: !691, file: !3, line: 306, column: 7)
!834 = !DILocation(line: 306, column: 21, scope: !835)
!835 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 1)
!836 = !DILocation(line: 306, column: 17, scope: !833)
!837 = !DILocation(line: 308, column: 20, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !3, line: 307, column: 5)
!839 = !DILocation(line: 309, column: 14, scope: !838)
!840 = !DILocation(line: 309, column: 37, scope: !841)
!841 = !DILexicalBlockFile(scope: !838, file: !3, discriminator: 1)
!842 = !DILocation(line: 308, column: 7, scope: !841)
!843 = !DILocation(line: 310, column: 7, scope: !838)
!844 = !DILocation(line: 313, column: 32, scope: !845)
!845 = !DILexicalBlockFile(scope: !846, file: !3, discriminator: 2)
!846 = distinct !DILexicalBlock(scope: !691, file: !3, line: 313, column: 7)
!847 = !DILocation(line: 313, column: 28, scope: !848)
!848 = !DILexicalBlockFile(scope: !846, file: !3, discriminator: 1)
!849 = !DILocation(line: 313, column: 16, scope: !846)
!850 = !DILocation(line: 315, column: 20, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !3, line: 314, column: 5)
!852 = !DILocation(line: 316, column: 14, scope: !851)
!853 = !DILocation(line: 316, column: 37, scope: !854)
!854 = !DILexicalBlockFile(scope: !851, file: !3, discriminator: 1)
!855 = !DILocation(line: 315, column: 7, scope: !854)
!856 = !DILocation(line: 317, column: 7, scope: !851)
!857 = !DILocation(line: 320, column: 18, scope: !858)
!858 = distinct !DILexicalBlock(scope: !691, file: !3, line: 320, column: 7)
!859 = !DILocation(line: 322, column: 20, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !3, line: 321, column: 5)
!861 = !DILocation(line: 323, column: 14, scope: !860)
!862 = !DILocation(line: 323, column: 42, scope: !863)
!863 = !DILexicalBlockFile(scope: !860, file: !3, discriminator: 1)
!864 = !DILocation(line: 322, column: 7, scope: !863)
!865 = !DILocation(line: 324, column: 7, scope: !860)
!866 = !DILocation(line: 327, column: 12, scope: !867)
!867 = distinct !DILexicalBlock(scope: !691, file: !3, line: 327, column: 7)
!868 = !DILocation(line: 327, column: 7, scope: !691)
!869 = !DILocation(line: 329, column: 20, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !3, line: 328, column: 5)
!871 = !DILocation(line: 329, column: 7, scope: !872)
!872 = !DILexicalBlockFile(scope: !870, file: !3, discriminator: 1)
!873 = !DILocation(line: 330, column: 7, scope: !870)
!874 = !DILocation(line: 333, column: 7, scope: !691)
!875 = !DILocation(line: 335, column: 7, scope: !709)
!876 = !DILocation(line: 336, column: 13, scope: !709)
!877 = !DIExpression(DW_OP_deref)
!878 = !DILocation(line: 335, column: 19, scope: !709)
!879 = !DILocalVariable(name: "__path", arg: 1, scope: !880, file: !881, line: 449, type: !61)
!880 = distinct !DISubprogram(name: "stat", scope: !881, file: !881, line: 449, type: !882, isLocal: false, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !885)
!881 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!882 = !DISubroutineType(types: !883)
!883 = !{!43, !61, !884}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!885 = !{!879, !886}
!886 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !880, file: !881, line: 449, type: !884)
!887 = !DILocation(line: 449, column: 1, scope: !880, inlinedAt: !888)
!888 = distinct !DILocation(line: 337, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !709, file: !3, line: 337, column: 11)
!890 = !DILocation(line: 451, column: 10, scope: !880, inlinedAt: !888)
!891 = !DILocation(line: 337, column: 32, scope: !889)
!892 = !DILocation(line: 337, column: 11, scope: !709)
!893 = !DILocation(line: 338, column: 9, scope: !889)
!894 = !DILocation(line: 338, column: 9, scope: !895)
!895 = !DILexicalBlockFile(scope: !889, file: !3, discriminator: 1)
!896 = !DILocation(line: 338, column: 9, scope: !897)
!897 = !DILexicalBlockFile(scope: !889, file: !3, discriminator: 2)
!898 = !DILocation(line: 338, column: 9, scope: !899)
!899 = !DILexicalBlockFile(scope: !889, file: !3, discriminator: 3)
!900 = !DILocalVariable(name: "sb", arg: 1, scope: !901, file: !79, line: 701, type: !904)
!901 = distinct !DISubprogram(name: "usable_st_size", scope: !79, file: !79, line: 701, type: !902, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !906)
!902 = !DISubroutineType(types: !903)
!903 = !{!71, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!906 = !{!900}
!907 = !DILocation(line: 701, column: 36, scope: !901, inlinedAt: !908)
!908 = distinct !DILocation(line: 339, column: 11, scope: !750)
!909 = !DILocation(line: 703, column: 11, scope: !901, inlinedAt: !908)
!910 = !{!911, !830, i64 24}
!911 = !{!"stat", !912, i64 0, !912, i64 8, !912, i64 16, !830, i64 24, !830, i64 28, !830, i64 32, !830, i64 36, !912, i64 40, !912, i64 48, !912, i64 56, !912, i64 64, !913, i64 72, !913, i64 88, !913, i64 104, !632, i64 120}
!912 = !{!"long", !632, i64 0}
!913 = !{!"timespec", !912, i64 0, !912, i64 8}
!914 = !DILocation(line: 703, column: 33, scope: !901, inlinedAt: !908)
!915 = !DILocation(line: 343, column: 30, scope: !749)
!916 = !DILocation(line: 343, column: 24, scope: !749)
!917 = !DILocation(line: 343, column: 15, scope: !749)
!918 = !DILocation(line: 344, column: 17, scope: !753)
!919 = !DILocation(line: 344, column: 15, scope: !749)
!920 = !DILocation(line: 346, column: 32, scope: !752)
!921 = !DILocation(line: 346, column: 21, scope: !752)
!922 = !DILocation(line: 347, column: 33, scope: !752)
!923 = !DILocation(line: 347, column: 19, scope: !752)
!924 = !DILocation(line: 348, column: 15, scope: !752)
!925 = !DILocation(line: 349, column: 21, scope: !926)
!926 = distinct !DILexicalBlock(scope: !752, file: !3, line: 349, column: 19)
!927 = !DILocation(line: 349, column: 19, scope: !752)
!928 = !DILocation(line: 354, column: 25, scope: !929)
!929 = distinct !DILexicalBlock(scope: !926, file: !3, line: 352, column: 17)
!930 = !DILocation(line: 340, column: 24, scope: !750)
!931 = !{!911, !912, i64 48}
!932 = !DILocation(line: 358, column: 21, scope: !933)
!933 = distinct !DILexicalBlock(scope: !709, file: !3, line: 358, column: 11)
!934 = !DILocation(line: 358, column: 11, scope: !709)
!935 = !DILocation(line: 359, column: 9, scope: !933)
!936 = !DILocation(line: 359, column: 9, scope: !937)
!937 = !DILexicalBlockFile(scope: !933, file: !3, discriminator: 1)
!938 = !DILocation(line: 359, column: 9, scope: !939)
!939 = !DILexicalBlockFile(scope: !933, file: !3, discriminator: 2)
!940 = !DILocation(line: 359, column: 9, scope: !941)
!941 = !DILexicalBlockFile(scope: !933, file: !3, discriminator: 3)
!942 = !DILocation(line: 362, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !709, file: !3, line: 361, column: 11)
!944 = !DILocation(line: 365, column: 5, scope: !710)
!945 = !DILocation(line: 365, column: 5, scope: !709)
!946 = !DILocation(line: 367, column: 49, scope: !691)
!947 = !DILocation(line: 220, column: 19, scope: !691)
!948 = !DILocation(line: 369, column: 3, scope: !691)
!949 = !DILocation(line: 369, column: 24, scope: !771)
!950 = !DILocation(line: 369, column: 19, scope: !771)
!951 = !DILocation(line: 221, column: 15, scope: !691)
!952 = !DILocation(line: 369, column: 28, scope: !771)
!953 = !DILocation(line: 369, column: 3, scope: !771)
!954 = !DILocation(line: 371, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 371, column: 11)
!956 = distinct !DILexicalBlock(scope: !691, file: !3, line: 370, column: 5)
!957 = !DILocation(line: 371, column: 52, scope: !955)
!958 = !DILocation(line: 371, column: 11, scope: !956)
!959 = !DILocation(line: 377, column: 30, scope: !960)
!960 = !DILexicalBlockFile(scope: !961, file: !3, discriminator: 1)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 377, column: 15)
!962 = distinct !DILexicalBlock(scope: !955, file: !3, line: 372, column: 9)
!963 = !DILocation(line: 377, column: 27, scope: !961)
!964 = !DILocation(line: 377, column: 36, scope: !960)
!965 = !DILocation(line: 377, column: 15, scope: !966)
!966 = !DILexicalBlockFile(scope: !962, file: !3, discriminator: 1)
!967 = distinct !{!967, !948, !968}
!968 = !DILocation(line: 396, column: 5, scope: !691)
!969 = !DILocation(line: 379, column: 25, scope: !970)
!970 = distinct !DILexicalBlock(scope: !961, file: !3, line: 378, column: 13)
!971 = !DILocation(line: 379, column: 32, scope: !972)
!972 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 1)
!973 = !DILocation(line: 380, column: 22, scope: !970)
!974 = !DILocation(line: 379, column: 15, scope: !975)
!975 = !DILexicalBlockFile(scope: !970, file: !3, discriminator: 2)
!976 = !DILocation(line: 382, column: 13, scope: !970)
!977 = !DILocalVariable(name: "fd", arg: 1, scope: !978, file: !3, line: 106, type: !43)
!978 = distinct !DISubprogram(name: "do_ftruncate", scope: !3, file: !3, line: 106, type: !979, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{!71, !43, !61, !45, !45, !703}
!981 = !{!977, !982, !983, !984, !985, !986, !987, !988, !992, !995, !998}
!982 = !DILocalVariable(name: "fname", arg: 2, scope: !978, file: !3, line: 106, type: !61)
!983 = !DILocalVariable(name: "ssize", arg: 3, scope: !978, file: !3, line: 106, type: !45)
!984 = !DILocalVariable(name: "rsize", arg: 4, scope: !978, file: !3, line: 106, type: !45)
!985 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !978, file: !3, line: 107, type: !703)
!986 = !DILocalVariable(name: "sb", scope: !978, file: !3, line: 109, type: !711)
!987 = !DILocalVariable(name: "nsize", scope: !978, file: !3, line: 110, type: !45)
!988 = !DILocalVariable(name: "blksize", scope: !989, file: !3, line: 119, type: !991)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 118, column: 5)
!990 = distinct !DILexicalBlock(scope: !978, file: !3, line: 117, column: 7)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!992 = !DILocalVariable(name: "fsize", scope: !993, file: !3, line: 133, type: !66)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 132, column: 5)
!994 = distinct !DILexicalBlock(scope: !978, file: !3, line: 131, column: 7)
!995 = !DILocalVariable(name: "file_size", scope: !996, file: !3, line: 139, type: !45)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 138, column: 9)
!997 = distinct !DILexicalBlock(scope: !993, file: !3, line: 135, column: 11)
!998 = !DILocalVariable(name: "overflow", scope: !999, file: !3, line: 176, type: !1004)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 174, column: 9)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 172, column: 16)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 169, column: 16)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 167, column: 16)
!1003 = distinct !DILexicalBlock(scope: !993, file: !3, line: 165, column: 11)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!1005 = !DILocation(line: 106, column: 19, scope: !978, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 389, column: 22, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 388, column: 9)
!1008 = distinct !DILexicalBlock(scope: !956, file: !3, line: 387, column: 11)
!1009 = !DILocation(line: 106, column: 35, scope: !978, inlinedAt: !1006)
!1010 = !DILocation(line: 106, column: 48, scope: !978, inlinedAt: !1006)
!1011 = !DILocation(line: 106, column: 61, scope: !978, inlinedAt: !1006)
!1012 = !DILocation(line: 107, column: 26, scope: !978, inlinedAt: !1006)
!1013 = !DILocation(line: 109, column: 3, scope: !978, inlinedAt: !1006)
!1014 = !DILocation(line: 112, column: 19, scope: !1015, inlinedAt: !1006)
!1015 = distinct !DILexicalBlock(scope: !978, file: !3, line: 112, column: 7)
!1016 = !DILocation(line: 109, column: 15, scope: !978, inlinedAt: !1006)
!1017 = !DILocalVariable(name: "__fd", arg: 1, scope: !1018, file: !881, line: 463, type: !43)
!1018 = distinct !DISubprogram(name: "fstat", scope: !881, file: !881, line: 463, type: !1019, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!43, !43, !884}
!1021 = !{!1017, !1022}
!1022 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1018, file: !881, line: 463, type: !884)
!1023 = !DILocation(line: 463, column: 1, scope: !1018, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 112, column: 50, scope: !1025, inlinedAt: !1006)
!1025 = !DILexicalBlockFile(scope: !1015, file: !3, discriminator: 3)
!1026 = !DILocation(line: 465, column: 10, scope: !1018, inlinedAt: !1024)
!1027 = !DILocation(line: 112, column: 66, scope: !1025, inlinedAt: !1006)
!1028 = !DILocation(line: 112, column: 7, scope: !1029, inlinedAt: !1006)
!1029 = !DILexicalBlockFile(scope: !978, file: !3, discriminator: 3)
!1030 = !DILocation(line: 114, column: 17, scope: !1031, inlinedAt: !1006)
!1031 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 113, column: 5)
!1032 = !DILocation(line: 114, column: 24, scope: !1033, inlinedAt: !1006)
!1033 = !DILexicalBlockFile(scope: !1031, file: !3, discriminator: 1)
!1034 = !DILocation(line: 114, column: 46, scope: !1035, inlinedAt: !1006)
!1035 = !DILexicalBlockFile(scope: !1031, file: !3, discriminator: 2)
!1036 = !DILocation(line: 114, column: 7, scope: !1037, inlinedAt: !1006)
!1037 = !DILexicalBlockFile(scope: !1031, file: !3, discriminator: 3)
!1038 = !DILocation(line: 115, column: 7, scope: !1031, inlinedAt: !1006)
!1039 = !DILocation(line: 117, column: 7, scope: !978, inlinedAt: !1006)
!1040 = !DILocation(line: 119, column: 29, scope: !989, inlinedAt: !1006)
!1041 = !{!911, !912, i64 56}
!1042 = !DILocation(line: 119, column: 29, scope: !1043, inlinedAt: !1006)
!1043 = !DILexicalBlockFile(scope: !989, file: !3, discriminator: 1)
!1044 = !DILocation(line: 119, column: 19, scope: !989, inlinedAt: !1006)
!1045 = !DILocation(line: 120, column: 29, scope: !1046, inlinedAt: !1006)
!1046 = distinct !DILexicalBlock(scope: !989, file: !3, line: 120, column: 11)
!1047 = !DILocation(line: 120, column: 17, scope: !1046, inlinedAt: !1006)
!1048 = !DILocation(line: 120, column: 39, scope: !1046, inlinedAt: !1006)
!1049 = !DILocation(line: 120, column: 60, scope: !1050, inlinedAt: !1006)
!1050 = !DILexicalBlockFile(scope: !1046, file: !3, discriminator: 1)
!1051 = !DILocation(line: 120, column: 48, scope: !1050, inlinedAt: !1006)
!1052 = !DILocation(line: 120, column: 11, scope: !1043, inlinedAt: !1006)
!1053 = !DILocation(line: 129, column: 13, scope: !989, inlinedAt: !1006)
!1054 = !DILocation(line: 123, column: 18, scope: !1055, inlinedAt: !1006)
!1055 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 121, column: 9)
!1056 = !DILocation(line: 126, column: 18, scope: !1055, inlinedAt: !1006)
!1057 = !DILocation(line: 122, column: 11, scope: !1055, inlinedAt: !1006)
!1058 = !DILocation(line: 131, column: 7, scope: !978, inlinedAt: !1006)
!1059 = !DILocation(line: 135, column: 11, scope: !993, inlinedAt: !1006)
!1060 = !DILocation(line: 701, column: 36, scope: !901, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 140, column: 15, scope: !1062, inlinedAt: !1006)
!1062 = distinct !DILexicalBlock(scope: !996, file: !3, line: 140, column: 15)
!1063 = !DILocation(line: 703, column: 11, scope: !901, inlinedAt: !1061)
!1064 = !DILocation(line: 703, column: 33, scope: !901, inlinedAt: !1061)
!1065 = !DILocation(line: 142, column: 30, scope: !1066, inlinedAt: !1006)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 141, column: 13)
!1067 = !DILocation(line: 139, column: 17, scope: !996, inlinedAt: !1006)
!1068 = !DILocation(line: 143, column: 29, scope: !1069, inlinedAt: !1006)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 143, column: 19)
!1070 = !DILocation(line: 143, column: 19, scope: !1066, inlinedAt: !1006)
!1071 = !DILocation(line: 147, column: 32, scope: !1072, inlinedAt: !1006)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 144, column: 17)
!1073 = !DILocation(line: 148, column: 26, scope: !1072, inlinedAt: !1006)
!1074 = !DILocation(line: 147, column: 19, scope: !1075, inlinedAt: !1006)
!1075 = !DILexicalBlockFile(scope: !1072, file: !3, discriminator: 1)
!1076 = !DILocation(line: 149, column: 19, scope: !1072, inlinedAt: !1006)
!1077 = !DILocation(line: 154, column: 27, scope: !1078, inlinedAt: !1006)
!1078 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 153, column: 13)
!1079 = !DILocation(line: 155, column: 29, scope: !1080, inlinedAt: !1006)
!1080 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 155, column: 19)
!1081 = !DILocation(line: 155, column: 19, scope: !1078, inlinedAt: !1006)
!1082 = !DILocation(line: 157, column: 29, scope: !1083, inlinedAt: !1006)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 156, column: 17)
!1084 = !DILocation(line: 157, column: 36, scope: !1085, inlinedAt: !1006)
!1085 = !DILexicalBlockFile(scope: !1083, file: !3, discriminator: 1)
!1086 = !DILocation(line: 158, column: 26, scope: !1083, inlinedAt: !1006)
!1087 = !DILocation(line: 157, column: 19, scope: !1088, inlinedAt: !1006)
!1088 = !DILexicalBlockFile(scope: !1083, file: !3, discriminator: 2)
!1089 = !DILocation(line: 159, column: 19, scope: !1083, inlinedAt: !1006)
!1090 = !DILocation(line: 133, column: 17, scope: !993, inlinedAt: !1006)
!1091 = !DILocation(line: 165, column: 11, scope: !993, inlinedAt: !1006)
!1092 = !DILocation(line: 166, column: 17, scope: !1003, inlinedAt: !1006)
!1093 = !DILocation(line: 110, column: 9, scope: !978, inlinedAt: !1006)
!1094 = !DILocation(line: 166, column: 9, scope: !1095, inlinedAt: !1006)
!1095 = !DILexicalBlockFile(scope: !1003, file: !3, discriminator: 3)
!1096 = !DILocation(line: 168, column: 17, scope: !1002, inlinedAt: !1006)
!1097 = !DILocation(line: 168, column: 9, scope: !1098, inlinedAt: !1006)
!1098 = !DILexicalBlockFile(scope: !1002, file: !3, discriminator: 3)
!1099 = !DILocation(line: 171, column: 33, scope: !1001, inlinedAt: !1006)
!1100 = !DILocation(line: 171, column: 9, scope: !1001, inlinedAt: !1006)
!1101 = !DILocation(line: 176, column: 46, scope: !999, inlinedAt: !1006)
!1102 = !DILocation(line: 176, column: 54, scope: !999, inlinedAt: !1006)
!1103 = !DILocation(line: 176, column: 68, scope: !999, inlinedAt: !1006)
!1104 = !DILocation(line: 176, column: 27, scope: !999, inlinedAt: !1006)
!1105 = !DILocation(line: 177, column: 24, scope: !1106, inlinedAt: !1006)
!1106 = distinct !DILexicalBlock(scope: !999, file: !3, line: 177, column: 15)
!1107 = !DILocation(line: 177, column: 15, scope: !999, inlinedAt: !1006)
!1108 = !DILocation(line: 179, column: 28, scope: !1109, inlinedAt: !1006)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 178, column: 13)
!1110 = !DILocation(line: 180, column: 22, scope: !1109, inlinedAt: !1006)
!1111 = !DILocation(line: 179, column: 15, scope: !1112, inlinedAt: !1006)
!1112 = !DILexicalBlockFile(scope: !1109, file: !3, discriminator: 1)
!1113 = !DILocation(line: 187, column: 33, scope: !1114, inlinedAt: !1006)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 187, column: 15)
!1115 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 186, column: 9)
!1116 = !DILocation(line: 187, column: 21, scope: !1114, inlinedAt: !1006)
!1117 = !DILocation(line: 187, column: 15, scope: !1115, inlinedAt: !1006)
!1118 = !DILocation(line: 189, column: 28, scope: !1119, inlinedAt: !1006)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 188, column: 13)
!1120 = !DILocation(line: 190, column: 22, scope: !1119, inlinedAt: !1006)
!1121 = !DILocation(line: 189, column: 15, scope: !1122, inlinedAt: !1006)
!1122 = !DILexicalBlockFile(scope: !1119, file: !3, discriminator: 1)
!1123 = !DILocation(line: 191, column: 15, scope: !1119, inlinedAt: !1006)
!1124 = !DILocation(line: 193, column: 25, scope: !1115, inlinedAt: !1006)
!1125 = !DILocation(line: 198, column: 7, scope: !978, inlinedAt: !1006)
!1126 = !DILocation(line: 201, column: 7, scope: !1127, inlinedAt: !1006)
!1127 = distinct !DILexicalBlock(scope: !978, file: !3, line: 201, column: 7)
!1128 = !DILocation(line: 201, column: 29, scope: !1127, inlinedAt: !1006)
!1129 = !DILocation(line: 201, column: 7, scope: !978, inlinedAt: !1006)
!1130 = !DILocation(line: 203, column: 17, scope: !1131, inlinedAt: !1006)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 202, column: 5)
!1132 = !DILocation(line: 204, column: 14, scope: !1131, inlinedAt: !1006)
!1133 = !DILocation(line: 204, column: 64, scope: !1134, inlinedAt: !1006)
!1134 = !DILexicalBlockFile(scope: !1131, file: !3, discriminator: 1)
!1135 = !DILocation(line: 203, column: 7, scope: !1134, inlinedAt: !1006)
!1136 = !DILocation(line: 206, column: 7, scope: !1131, inlinedAt: !1006)
!1137 = !DILocation(line: 210, column: 1, scope: !978, inlinedAt: !1006)
!1138 = !DILocation(line: 389, column: 18, scope: !1007)
!1139 = !DILocation(line: 390, column: 15, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 390, column: 15)
!1141 = !DILocation(line: 390, column: 26, scope: !1140)
!1142 = !DILocation(line: 390, column: 15, scope: !1007)
!1143 = !DILocation(line: 392, column: 25, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 391, column: 13)
!1145 = !DILocation(line: 392, column: 32, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1144, file: !3, discriminator: 1)
!1147 = !DILocation(line: 392, column: 57, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1144, file: !3, discriminator: 2)
!1149 = !DILocation(line: 392, column: 15, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1144, file: !3, discriminator: 3)
!1151 = !DILocation(line: 394, column: 13, scope: !1144)
!1152 = !DILocation(line: 398, column: 10, scope: !691)
!1153 = !DILocation(line: 399, column: 1, scope: !691)
!1154 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !129, file: !129, line: 41, type: !80, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1155)
!1155 = !{!1156}
!1156 = !DILocalVariable(name: "file", arg: 1, scope: !1154, file: !129, line: 41, type: !61)
!1157 = !DILocation(line: 41, column: 41, scope: !1154)
!1158 = !DILocation(line: 43, column: 13, scope: !1154)
!1159 = !DILocation(line: 44, column: 1, scope: !1154)
!1160 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !129, file: !129, line: 78, type: !1161, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !71}
!1163 = !{!1164}
!1164 = !DILocalVariable(name: "ignore", arg: 1, scope: !1160, file: !129, line: 78, type: !71)
!1165 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1166 = !DILocation(line: 78, column: 37, scope: !1160)
!1167 = !DILocation(line: 80, column: 16, scope: !1160)
!1168 = !{!1169, !1169, i64 0}
!1169 = !{!"_Bool", !632, i64 0}
!1170 = !DILocation(line: 81, column: 1, scope: !1160)
!1171 = distinct !DISubprogram(name: "close_stdout", scope: !129, file: !129, line: 107, type: !646, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !124, variables: !1172)
!1172 = !{!1173}
!1173 = !DILocalVariable(name: "write_error", scope: !1174, file: !129, line: 112, type: !61)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !129, line: 111, column: 5)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !129, line: 109, column: 7)
!1176 = !DILocation(line: 109, column: 21, scope: !1175)
!1177 = !DILocation(line: 109, column: 7, scope: !1175)
!1178 = !DILocation(line: 109, column: 29, scope: !1175)
!1179 = !DILocation(line: 110, column: 7, scope: !1175)
!1180 = !DILocation(line: 110, column: 12, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1175, file: !129, discriminator: 1)
!1182 = !{i8 0, i8 2}
!1183 = !DILocation(line: 114, column: 19, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1174, file: !129, line: 113, column: 11)
!1185 = !DILocation(line: 110, column: 25, scope: !1181)
!1186 = !DILocation(line: 110, column: 28, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1175, file: !129, discriminator: 2)
!1188 = !DILocation(line: 110, column: 34, scope: !1187)
!1189 = !DILocation(line: 109, column: 7, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1171, file: !129, discriminator: 1)
!1191 = !DILocation(line: 112, column: 33, scope: !1174)
!1192 = !DILocation(line: 112, column: 19, scope: !1174)
!1193 = !DILocation(line: 113, column: 11, scope: !1184)
!1194 = !DILocation(line: 113, column: 11, scope: !1174)
!1195 = !DILocation(line: 114, column: 36, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1184, file: !129, discriminator: 1)
!1197 = !DILocation(line: 114, column: 9, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1184, file: !129, discriminator: 2)
!1199 = !DILocation(line: 114, column: 9, scope: !1184)
!1200 = !DILocation(line: 117, column: 9, scope: !1196)
!1201 = !DILocation(line: 119, column: 14, scope: !1174)
!1202 = !DILocation(line: 119, column: 7, scope: !1174)
!1203 = !DILocation(line: 122, column: 22, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1171, file: !129, line: 122, column: 8)
!1205 = !DILocation(line: 122, column: 8, scope: !1204)
!1206 = !DILocation(line: 122, column: 30, scope: !1204)
!1207 = !DILocation(line: 122, column: 8, scope: !1171)
!1208 = !DILocation(line: 123, column: 13, scope: !1204)
!1209 = !DILocation(line: 123, column: 6, scope: !1204)
!1210 = !DILocation(line: 124, column: 1, scope: !1171)
!1211 = distinct !DISubprogram(name: "set_program_name", scope: !143, file: !143, line: 39, type: !80, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !139, variables: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DILocalVariable(name: "argv0", arg: 1, scope: !1211, file: !143, line: 39, type: !61)
!1214 = !DILocalVariable(name: "slash", scope: !1211, file: !143, line: 46, type: !61)
!1215 = !DILocalVariable(name: "base", scope: !1211, file: !143, line: 47, type: !61)
!1216 = !DILocation(line: 39, column: 31, scope: !1211)
!1217 = !DILocation(line: 51, column: 13, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1211, file: !143, line: 51, column: 7)
!1219 = !DILocation(line: 51, column: 7, scope: !1211)
!1220 = !DILocation(line: 55, column: 14, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !143, line: 52, column: 5)
!1222 = !DILocation(line: 54, column: 7, scope: !1221)
!1223 = !DILocation(line: 56, column: 7, scope: !1221)
!1224 = !DILocation(line: 59, column: 11, scope: !1211)
!1225 = !DILocation(line: 46, column: 15, scope: !1211)
!1226 = !DILocation(line: 60, column: 17, scope: !1211)
!1227 = !DILocation(line: 60, column: 33, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1211, file: !143, discriminator: 1)
!1229 = !DILocation(line: 60, column: 11, scope: !1211)
!1230 = !DILocation(line: 47, column: 15, scope: !1211)
!1231 = !DILocation(line: 61, column: 12, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1211, file: !143, line: 61, column: 7)
!1233 = !DILocation(line: 61, column: 20, scope: !1232)
!1234 = !DILocation(line: 61, column: 25, scope: !1232)
!1235 = !DILocation(line: 61, column: 28, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1232, file: !143, discriminator: 1)
!1237 = !DILocation(line: 61, column: 61, scope: !1236)
!1238 = !DILocation(line: 61, column: 7, scope: !1228)
!1239 = !DILocation(line: 64, column: 11, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !143, line: 64, column: 11)
!1241 = distinct !DILexicalBlock(scope: !1232, file: !143, line: 62, column: 5)
!1242 = !DILocation(line: 64, column: 36, scope: !1240)
!1243 = !DILocation(line: 64, column: 11, scope: !1241)
!1244 = !DILocation(line: 66, column: 24, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !143, line: 65, column: 9)
!1246 = !DILocation(line: 70, column: 41, scope: !1245)
!1247 = !DILocation(line: 72, column: 9, scope: !1245)
!1248 = !DILocation(line: 84, column: 16, scope: !1211)
!1249 = !DILocation(line: 90, column: 27, scope: !1211)
!1250 = !DILocation(line: 92, column: 1, scope: !1211)
!1251 = distinct !DISubprogram(name: "clone_quoting_options", scope: !158, file: !158, line: 114, type: !1252, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1255)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!1254, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!1255 = !{!1256, !1257, !1258}
!1256 = !DILocalVariable(name: "o", arg: 1, scope: !1251, file: !158, line: 114, type: !1254)
!1257 = !DILocalVariable(name: "e", scope: !1251, file: !158, line: 116, type: !43)
!1258 = !DILocalVariable(name: "p", scope: !1251, file: !158, line: 117, type: !1254)
!1259 = !DILocation(line: 114, column: 48, scope: !1251)
!1260 = !DILocation(line: 116, column: 11, scope: !1251)
!1261 = !DILocation(line: 116, column: 7, scope: !1251)
!1262 = !DILocation(line: 117, column: 40, scope: !1251)
!1263 = !DILocation(line: 117, column: 40, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1251, file: !158, discriminator: 3)
!1265 = !DILocation(line: 117, column: 31, scope: !1264)
!1266 = !DILocation(line: 117, column: 27, scope: !1251)
!1267 = !DILocation(line: 119, column: 9, scope: !1251)
!1268 = !DILocation(line: 120, column: 3, scope: !1251)
!1269 = distinct !DISubprogram(name: "get_quoting_style", scope: !158, file: !158, line: 125, type: !1270, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1274)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!28, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "o", arg: 1, scope: !1269, file: !158, line: 125, type: !1272)
!1276 = !DILocation(line: 125, column: 50, scope: !1269)
!1277 = !DILocation(line: 127, column: 11, scope: !1269)
!1278 = !DILocation(line: 127, column: 46, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1269, file: !158, discriminator: 3)
!1280 = !{!1281, !632, i64 0}
!1281 = !{!"quoting_options", !632, i64 0, !830, i64 4, !632, i64 8, !631, i64 40, !631, i64 48}
!1282 = !DILocation(line: 127, column: 3, scope: !1279)
!1283 = distinct !DISubprogram(name: "set_quoting_style", scope: !158, file: !158, line: 133, type: !1284, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !1254, !28}
!1286 = !{!1287, !1288}
!1287 = !DILocalVariable(name: "o", arg: 1, scope: !1283, file: !158, line: 133, type: !1254)
!1288 = !DILocalVariable(name: "s", arg: 2, scope: !1283, file: !158, line: 133, type: !28)
!1289 = !DILocation(line: 133, column: 44, scope: !1283)
!1290 = !DILocation(line: 133, column: 66, scope: !1283)
!1291 = !DILocation(line: 135, column: 4, scope: !1283)
!1292 = !DILocation(line: 135, column: 39, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1283, file: !158, discriminator: 3)
!1294 = !DILocation(line: 135, column: 45, scope: !1293)
!1295 = !DILocation(line: 136, column: 1, scope: !1283)
!1296 = distinct !DISubprogram(name: "set_char_quoting", scope: !158, file: !158, line: 144, type: !1297, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!43, !1254, !51, !43}
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1306, !1307}
!1300 = !DILocalVariable(name: "o", arg: 1, scope: !1296, file: !158, line: 144, type: !1254)
!1301 = !DILocalVariable(name: "c", arg: 2, scope: !1296, file: !158, line: 144, type: !51)
!1302 = !DILocalVariable(name: "i", arg: 3, scope: !1296, file: !158, line: 144, type: !43)
!1303 = !DILocalVariable(name: "uc", scope: !1296, file: !158, line: 146, type: !60)
!1304 = !DILocalVariable(name: "p", scope: !1296, file: !158, line: 147, type: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!1306 = !DILocalVariable(name: "shift", scope: !1296, file: !158, line: 149, type: !43)
!1307 = !DILocalVariable(name: "r", scope: !1296, file: !158, line: 150, type: !43)
!1308 = !DILocation(line: 144, column: 43, scope: !1296)
!1309 = !DILocation(line: 144, column: 51, scope: !1296)
!1310 = !DILocation(line: 144, column: 58, scope: !1296)
!1311 = !DILocation(line: 146, column: 17, scope: !1296)
!1312 = !DILocation(line: 148, column: 6, scope: !1296)
!1313 = !DILocation(line: 148, column: 62, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1296, file: !158, discriminator: 3)
!1315 = !DILocation(line: 148, column: 57, scope: !1314)
!1316 = !DILocation(line: 147, column: 17, scope: !1296)
!1317 = !DILocation(line: 149, column: 18, scope: !1296)
!1318 = !DILocation(line: 149, column: 15, scope: !1296)
!1319 = !DILocation(line: 149, column: 7, scope: !1296)
!1320 = !DILocation(line: 150, column: 12, scope: !1296)
!1321 = !DILocation(line: 150, column: 15, scope: !1296)
!1322 = !DILocation(line: 150, column: 25, scope: !1296)
!1323 = !DILocation(line: 150, column: 7, scope: !1296)
!1324 = !DILocation(line: 151, column: 13, scope: !1296)
!1325 = !DILocation(line: 151, column: 18, scope: !1296)
!1326 = !DILocation(line: 151, column: 23, scope: !1296)
!1327 = !DILocation(line: 151, column: 6, scope: !1296)
!1328 = !DILocation(line: 152, column: 3, scope: !1296)
!1329 = distinct !DISubprogram(name: "set_quoting_flags", scope: !158, file: !158, line: 160, type: !1330, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!43, !1254, !43}
!1332 = !{!1333, !1334, !1335}
!1333 = !DILocalVariable(name: "o", arg: 1, scope: !1329, file: !158, line: 160, type: !1254)
!1334 = !DILocalVariable(name: "i", arg: 2, scope: !1329, file: !158, line: 160, type: !43)
!1335 = !DILocalVariable(name: "r", scope: !1329, file: !158, line: 162, type: !43)
!1336 = !DILocation(line: 160, column: 44, scope: !1329)
!1337 = !DILocation(line: 160, column: 51, scope: !1329)
!1338 = !DILocation(line: 163, column: 8, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1329, file: !158, line: 163, column: 7)
!1340 = !DILocation(line: 163, column: 7, scope: !1329)
!1341 = !DILocation(line: 165, column: 10, scope: !1329)
!1342 = !{!1281, !830, i64 4}
!1343 = !DILocation(line: 162, column: 7, scope: !1329)
!1344 = !DILocation(line: 166, column: 12, scope: !1329)
!1345 = !DILocation(line: 167, column: 3, scope: !1329)
!1346 = distinct !DISubprogram(name: "set_custom_quoting", scope: !158, file: !158, line: 171, type: !1347, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !1254, !61, !61}
!1349 = !{!1350, !1351, !1352}
!1350 = !DILocalVariable(name: "o", arg: 1, scope: !1346, file: !158, line: 171, type: !1254)
!1351 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1346, file: !158, line: 172, type: !61)
!1352 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1346, file: !158, line: 172, type: !61)
!1353 = !DILocation(line: 171, column: 45, scope: !1346)
!1354 = !DILocation(line: 172, column: 33, scope: !1346)
!1355 = !DILocation(line: 172, column: 57, scope: !1346)
!1356 = !DILocation(line: 174, column: 8, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1346, file: !158, line: 174, column: 7)
!1358 = !DILocation(line: 174, column: 7, scope: !1346)
!1359 = !DILocation(line: 176, column: 6, scope: !1346)
!1360 = !DILocation(line: 176, column: 12, scope: !1346)
!1361 = !DILocation(line: 177, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1346, file: !158, line: 177, column: 7)
!1363 = !DILocation(line: 177, column: 23, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1362, file: !158, discriminator: 1)
!1365 = !DILocation(line: 177, column: 19, scope: !1362)
!1366 = !DILocation(line: 178, column: 5, scope: !1362)
!1367 = !DILocation(line: 179, column: 6, scope: !1346)
!1368 = !DILocation(line: 179, column: 17, scope: !1346)
!1369 = !{!1281, !631, i64 40}
!1370 = !DILocation(line: 180, column: 6, scope: !1346)
!1371 = !DILocation(line: 180, column: 18, scope: !1346)
!1372 = !{!1281, !631, i64 48}
!1373 = !DILocation(line: 181, column: 1, scope: !1346)
!1374 = distinct !DISubprogram(name: "quotearg_buffer", scope: !158, file: !158, line: 776, type: !1375, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!53, !50, !53, !61, !53, !1272}
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1378 = !DILocalVariable(name: "buffer", arg: 1, scope: !1374, file: !158, line: 776, type: !50)
!1379 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1374, file: !158, line: 776, type: !53)
!1380 = !DILocalVariable(name: "arg", arg: 3, scope: !1374, file: !158, line: 777, type: !61)
!1381 = !DILocalVariable(name: "argsize", arg: 4, scope: !1374, file: !158, line: 777, type: !53)
!1382 = !DILocalVariable(name: "o", arg: 5, scope: !1374, file: !158, line: 778, type: !1272)
!1383 = !DILocalVariable(name: "p", scope: !1374, file: !158, line: 780, type: !1272)
!1384 = !DILocalVariable(name: "e", scope: !1374, file: !158, line: 781, type: !43)
!1385 = !DILocalVariable(name: "r", scope: !1374, file: !158, line: 782, type: !53)
!1386 = !DILocation(line: 776, column: 24, scope: !1374)
!1387 = !DILocation(line: 776, column: 39, scope: !1374)
!1388 = !DILocation(line: 777, column: 30, scope: !1374)
!1389 = !DILocation(line: 777, column: 42, scope: !1374)
!1390 = !DILocation(line: 778, column: 48, scope: !1374)
!1391 = !DILocation(line: 780, column: 37, scope: !1374)
!1392 = !DILocation(line: 780, column: 33, scope: !1374)
!1393 = !DILocation(line: 781, column: 11, scope: !1374)
!1394 = !DILocation(line: 781, column: 7, scope: !1374)
!1395 = !DILocation(line: 783, column: 43, scope: !1374)
!1396 = !DILocation(line: 783, column: 53, scope: !1374)
!1397 = !DILocation(line: 783, column: 60, scope: !1374)
!1398 = !DILocation(line: 784, column: 43, scope: !1374)
!1399 = !DILocation(line: 784, column: 58, scope: !1374)
!1400 = !DILocation(line: 782, column: 14, scope: !1374)
!1401 = !DILocation(line: 782, column: 10, scope: !1374)
!1402 = !DILocation(line: 785, column: 9, scope: !1374)
!1403 = !DILocation(line: 786, column: 3, scope: !1374)
!1404 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !158, file: !158, line: 248, type: !1405, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !1409)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!53, !50, !53, !61, !53, !28, !43, !1407, !61, !61}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1434, !1435, !1436, !1437, !1438, !1441, !1442, !1459, !1462, !1463, !1470}
!1410 = !DILocalVariable(name: "buffer", arg: 1, scope: !1404, file: !158, line: 248, type: !50)
!1411 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1404, file: !158, line: 248, type: !53)
!1412 = !DILocalVariable(name: "arg", arg: 3, scope: !1404, file: !158, line: 249, type: !61)
!1413 = !DILocalVariable(name: "argsize", arg: 4, scope: !1404, file: !158, line: 249, type: !53)
!1414 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1404, file: !158, line: 250, type: !28)
!1415 = !DILocalVariable(name: "flags", arg: 6, scope: !1404, file: !158, line: 250, type: !43)
!1416 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1404, file: !158, line: 251, type: !1407)
!1417 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1404, file: !158, line: 252, type: !61)
!1418 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1404, file: !158, line: 253, type: !61)
!1419 = !DILocalVariable(name: "i", scope: !1404, file: !158, line: 255, type: !53)
!1420 = !DILocalVariable(name: "len", scope: !1404, file: !158, line: 256, type: !53)
!1421 = !DILocalVariable(name: "orig_buffersize", scope: !1404, file: !158, line: 257, type: !53)
!1422 = !DILocalVariable(name: "quote_string", scope: !1404, file: !158, line: 258, type: !61)
!1423 = !DILocalVariable(name: "quote_string_len", scope: !1404, file: !158, line: 259, type: !53)
!1424 = !DILocalVariable(name: "backslash_escapes", scope: !1404, file: !158, line: 260, type: !71)
!1425 = !DILocalVariable(name: "unibyte_locale", scope: !1404, file: !158, line: 261, type: !71)
!1426 = !DILocalVariable(name: "elide_outer_quotes", scope: !1404, file: !158, line: 262, type: !71)
!1427 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1404, file: !158, line: 263, type: !71)
!1428 = !DILocalVariable(name: "encountered_single_quote", scope: !1404, file: !158, line: 264, type: !71)
!1429 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1404, file: !158, line: 265, type: !71)
!1430 = !DILocalVariable(name: "c", scope: !1431, file: !158, line: 394, type: !60)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !158, line: 393, column: 5)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !158, line: 392, column: 3)
!1433 = distinct !DILexicalBlock(scope: !1404, file: !158, line: 392, column: 3)
!1434 = !DILocalVariable(name: "esc", scope: !1431, file: !158, line: 395, type: !60)
!1435 = !DILocalVariable(name: "is_right_quote", scope: !1431, file: !158, line: 396, type: !71)
!1436 = !DILocalVariable(name: "escaping", scope: !1431, file: !158, line: 397, type: !71)
!1437 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1431, file: !158, line: 398, type: !71)
!1438 = !DILocalVariable(name: "m", scope: !1439, file: !158, line: 602, type: !53)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 600, column: 11)
!1440 = distinct !DILexicalBlock(scope: !1431, file: !158, line: 418, column: 9)
!1441 = !DILocalVariable(name: "printable", scope: !1439, file: !158, line: 604, type: !71)
!1442 = !DILocalVariable(name: "mbstate", scope: !1443, file: !158, line: 613, type: !1445)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !158, line: 612, column: 15)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !158, line: 606, column: 17)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1446, line: 107, baseType: !1447)
!1446 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1446, line: 95, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1446, line: 83, size: 64, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1448, file: !1446, line: 85, baseType: !43, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1448, file: !1446, line: 94, baseType: !1452, size: 32, offset: 32)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !1446, line: 86, size: 32, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1452, file: !1446, line: 89, baseType: !171, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1452, file: !1446, line: 93, baseType: !1456, size: 32)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32, elements: !1457)
!1457 = !{!1458}
!1458 = !DISubrange(count: 4)
!1459 = !DILocalVariable(name: "w", scope: !1460, file: !158, line: 623, type: !1461)
!1460 = distinct !DILexicalBlock(scope: !1443, file: !158, line: 622, column: 19)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !54, line: 90, baseType: !43)
!1462 = !DILocalVariable(name: "bytes", scope: !1460, file: !158, line: 624, type: !53)
!1463 = !DILocalVariable(name: "j", scope: !1464, file: !158, line: 649, type: !53)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !158, line: 648, column: 27)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !158, line: 646, column: 29)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !158, line: 641, column: 23)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !158, line: 633, column: 30)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !158, line: 628, column: 30)
!1469 = distinct !DILexicalBlock(scope: !1460, file: !158, line: 626, column: 25)
!1470 = !DILocalVariable(name: "ilim", scope: !1471, file: !158, line: 676, type: !53)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !158, line: 673, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1439, file: !158, line: 672, column: 17)
!1473 = !DILocation(line: 248, column: 33, scope: !1404)
!1474 = !DILocation(line: 248, column: 48, scope: !1404)
!1475 = !DILocation(line: 249, column: 39, scope: !1404)
!1476 = !DILocation(line: 249, column: 51, scope: !1404)
!1477 = !DILocation(line: 250, column: 46, scope: !1404)
!1478 = !DILocation(line: 250, column: 65, scope: !1404)
!1479 = !DILocation(line: 251, column: 47, scope: !1404)
!1480 = !DILocation(line: 252, column: 39, scope: !1404)
!1481 = !DILocation(line: 253, column: 39, scope: !1404)
!1482 = !DILocation(line: 256, column: 10, scope: !1404)
!1483 = !DILocation(line: 257, column: 10, scope: !1404)
!1484 = !DILocation(line: 258, column: 15, scope: !1404)
!1485 = !DILocation(line: 259, column: 10, scope: !1404)
!1486 = !DILocation(line: 260, column: 8, scope: !1404)
!1487 = !DILocation(line: 261, column: 25, scope: !1404)
!1488 = !DILocation(line: 261, column: 36, scope: !1404)
!1489 = !DILocation(line: 262, column: 8, scope: !1404)
!1490 = !DILocation(line: 263, column: 8, scope: !1404)
!1491 = !DILocation(line: 264, column: 8, scope: !1404)
!1492 = !DILocation(line: 265, column: 8, scope: !1404)
!1493 = !DILocation(line: 265, column: 3, scope: !1404)
!1494 = !DILocation(line: 308, column: 3, scope: !1404)
!1495 = !DILocation(line: 315, column: 11, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1404, file: !158, line: 309, column: 5)
!1497 = !DILocation(line: 315, column: 12, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1496, file: !158, line: 315, column: 11)
!1499 = !DILocation(line: 316, column: 9, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1501, file: !158, discriminator: 1)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !158, line: 316, column: 9)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !158, line: 316, column: 9)
!1503 = !DILocation(line: 316, column: 9, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1502, file: !158, discriminator: 1)
!1505 = !DILocation(line: 316, column: 9, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1501, file: !158, discriminator: 2)
!1507 = !DILocation(line: 354, column: 26, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !158, line: 332, column: 11)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !158, line: 331, column: 13)
!1510 = distinct !DILexicalBlock(scope: !1496, file: !158, line: 330, column: 7)
!1511 = !DILocation(line: 355, column: 27, scope: !1508)
!1512 = !DILocation(line: 356, column: 11, scope: !1508)
!1513 = !DILocation(line: 357, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !158, line: 357, column: 13)
!1515 = !DILocation(line: 357, column: 13, scope: !1510)
!1516 = !DILocation(line: 358, column: 43, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1518, file: !158, discriminator: 1)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !158, line: 358, column: 11)
!1519 = distinct !DILexicalBlock(scope: !1514, file: !158, line: 358, column: 11)
!1520 = !DILocation(line: 358, column: 11, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1519, file: !158, discriminator: 1)
!1522 = !DILocation(line: 359, column: 13, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1524, file: !158, discriminator: 1)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !158, line: 359, column: 13)
!1525 = distinct !DILexicalBlock(scope: !1518, file: !158, line: 359, column: 13)
!1526 = !DILocation(line: 359, column: 13, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1525, file: !158, discriminator: 1)
!1528 = !DILocation(line: 359, column: 13, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1524, file: !158, discriminator: 2)
!1530 = !DILocation(line: 359, column: 13, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1525, file: !158, discriminator: 3)
!1532 = !DILocation(line: 358, column: 70, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1518, file: !158, discriminator: 2)
!1534 = distinct !{!1534, !1535, !1536}
!1535 = !DILocation(line: 358, column: 11, scope: !1519)
!1536 = !DILocation(line: 359, column: 13, scope: !1519)
!1537 = !DILocation(line: 362, column: 28, scope: !1510)
!1538 = !DILocation(line: 364, column: 7, scope: !1496)
!1539 = !DILocation(line: 367, column: 7, scope: !1496)
!1540 = !DILocation(line: 370, column: 7, scope: !1496)
!1541 = !DILocation(line: 373, column: 12, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1496, file: !158, line: 373, column: 11)
!1543 = !DILocation(line: 373, column: 11, scope: !1496)
!1544 = !DILocation(line: 378, column: 12, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1496, file: !158, line: 378, column: 11)
!1546 = !DILocation(line: 378, column: 11, scope: !1496)
!1547 = !DILocation(line: 379, column: 9, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1549, file: !158, discriminator: 1)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !158, line: 379, column: 9)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !158, line: 379, column: 9)
!1551 = !DILocation(line: 379, column: 9, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1550, file: !158, discriminator: 1)
!1553 = !DILocation(line: 379, column: 9, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1549, file: !158, discriminator: 2)
!1555 = !DILocation(line: 386, column: 7, scope: !1496)
!1556 = !DILocation(line: 389, column: 7, scope: !1496)
!1557 = !DILocation(line: 255, column: 10, scope: !1404)
!1558 = !DILocation(line: 392, column: 8, scope: !1433)
!1559 = !DILocation(line: 392, column: 27, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1432, file: !158, discriminator: 1)
!1561 = !DILocation(line: 392, column: 19, scope: !1560)
!1562 = !DILocation(line: 392, column: 60, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1432, file: !158, discriminator: 3)
!1564 = !DILocation(line: 392, column: 3, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1433, file: !158, discriminator: 4)
!1566 = !DILocation(line: 392, column: 41, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1432, file: !158, discriminator: 2)
!1568 = !DILocation(line: 392, column: 48, scope: !1567)
!1569 = !DILocation(line: 396, column: 12, scope: !1431)
!1570 = !DILocation(line: 397, column: 12, scope: !1431)
!1571 = !DILocation(line: 398, column: 12, scope: !1431)
!1572 = !DILocation(line: 401, column: 11, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1431, file: !158, line: 400, column: 11)
!1574 = !DILocation(line: 403, column: 17, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1573, file: !158, discriminator: 1)
!1576 = !DILocation(line: 404, column: 39, scope: !1573)
!1577 = !DILocation(line: 408, column: 32, scope: !1573)
!1578 = !DILocation(line: 404, column: 19, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1573, file: !158, discriminator: 2)
!1580 = !DILocation(line: 404, column: 15, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1573, file: !158, discriminator: 4)
!1582 = !DILocation(line: 409, column: 11, scope: !1573)
!1583 = !DILocation(line: 409, column: 26, scope: !1575)
!1584 = !DILocation(line: 409, column: 14, scope: !1575)
!1585 = !DILocation(line: 400, column: 11, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1431, file: !158, discriminator: 1)
!1587 = !DILocation(line: 416, column: 11, scope: !1431)
!1588 = !DILocation(line: 394, column: 21, scope: !1431)
!1589 = !DILocation(line: 417, column: 7, scope: !1431)
!1590 = !DILocation(line: 420, column: 15, scope: !1440)
!1591 = !DILocation(line: 422, column: 15, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !158, discriminator: 1)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !158, line: 422, column: 15)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !158, line: 421, column: 13)
!1595 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 420, column: 15)
!1596 = !DILocation(line: 422, column: 15, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1598, file: !158, discriminator: 4)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !158, line: 422, column: 15)
!1599 = !DILocation(line: 422, column: 15, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1598, file: !158, discriminator: 3)
!1601 = !DILocation(line: 422, column: 15, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1603, file: !158, discriminator: 6)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !158, line: 422, column: 15)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !158, line: 422, column: 15)
!1605 = distinct !DILexicalBlock(scope: !1598, file: !158, line: 422, column: 15)
!1606 = !DILocation(line: 422, column: 15, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1604, file: !158, discriminator: 6)
!1608 = !DILocation(line: 422, column: 15, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1603, file: !158, discriminator: 7)
!1610 = !DILocation(line: 422, column: 15, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1604, file: !158, discriminator: 8)
!1612 = !DILocation(line: 422, column: 15, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1614, file: !158, discriminator: 11)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !158, line: 422, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1605, file: !158, line: 422, column: 15)
!1616 = !DILocation(line: 422, column: 15, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1615, file: !158, discriminator: 11)
!1618 = !DILocation(line: 422, column: 15, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1614, file: !158, discriminator: 12)
!1620 = !DILocation(line: 422, column: 15, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1615, file: !158, discriminator: 13)
!1622 = !DILocation(line: 422, column: 15, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1624, file: !158, discriminator: 16)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !158, line: 422, column: 15)
!1625 = distinct !DILexicalBlock(scope: !1605, file: !158, line: 422, column: 15)
!1626 = !DILocation(line: 422, column: 15, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1625, file: !158, discriminator: 16)
!1628 = !DILocation(line: 422, column: 15, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1624, file: !158, discriminator: 17)
!1630 = !DILocation(line: 422, column: 15, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1625, file: !158, discriminator: 18)
!1632 = !DILocation(line: 422, column: 15, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1605, file: !158, discriminator: 20)
!1634 = !DILocation(line: 422, column: 15, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1636, file: !158, discriminator: 22)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !158, line: 422, column: 15)
!1637 = distinct !DILexicalBlock(scope: !1593, file: !158, line: 422, column: 15)
!1638 = !DILocation(line: 422, column: 15, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1637, file: !158, discriminator: 22)
!1640 = !DILocation(line: 422, column: 15, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1636, file: !158, discriminator: 23)
!1642 = !DILocation(line: 422, column: 15, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1637, file: !158, discriminator: 24)
!1644 = !DILocation(line: 430, column: 19, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1594, file: !158, line: 429, column: 19)
!1646 = !DILocation(line: 430, column: 24, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1645, file: !158, discriminator: 1)
!1648 = !DILocation(line: 430, column: 28, scope: !1647)
!1649 = !DILocation(line: 430, column: 38, scope: !1647)
!1650 = !DILocation(line: 430, column: 48, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1645, file: !158, discriminator: 2)
!1652 = !DILocation(line: 430, column: 59, scope: !1651)
!1653 = !DILocation(line: 432, column: 19, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !158, discriminator: 1)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !158, line: 432, column: 19)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !158, line: 432, column: 19)
!1657 = distinct !DILexicalBlock(scope: !1645, file: !158, line: 431, column: 17)
!1658 = !DILocation(line: 432, column: 19, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1656, file: !158, discriminator: 1)
!1660 = !DILocation(line: 432, column: 19, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1655, file: !158, discriminator: 2)
!1662 = !DILocation(line: 432, column: 19, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1656, file: !158, discriminator: 3)
!1664 = !DILocation(line: 433, column: 19, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1666, file: !158, discriminator: 1)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !158, line: 433, column: 19)
!1667 = distinct !DILexicalBlock(scope: !1657, file: !158, line: 433, column: 19)
!1668 = !DILocation(line: 433, column: 19, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1667, file: !158, discriminator: 1)
!1670 = !DILocation(line: 433, column: 19, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1666, file: !158, discriminator: 2)
!1672 = !DILocation(line: 433, column: 19, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1667, file: !158, discriminator: 3)
!1674 = !DILocation(line: 434, column: 17, scope: !1657)
!1675 = !DILocation(line: 441, column: 20, scope: !1595)
!1676 = !DILocation(line: 446, column: 11, scope: !1440)
!1677 = !DILocation(line: 449, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 447, column: 13)
!1679 = !DILocation(line: 455, column: 19, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1678, file: !158, line: 454, column: 19)
!1681 = !DILocation(line: 455, column: 24, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1680, file: !158, discriminator: 1)
!1683 = !DILocation(line: 455, column: 28, scope: !1682)
!1684 = !DILocation(line: 455, column: 38, scope: !1682)
!1685 = !DILocation(line: 455, column: 47, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1680, file: !158, discriminator: 2)
!1687 = !DILocation(line: 455, column: 41, scope: !1686)
!1688 = !DILocation(line: 455, column: 52, scope: !1686)
!1689 = !DILocation(line: 454, column: 19, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1678, file: !158, discriminator: 1)
!1691 = !DILocation(line: 456, column: 25, scope: !1680)
!1692 = !DILocation(line: 456, column: 17, scope: !1680)
!1693 = !DILocation(line: 463, column: 25, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1680, file: !158, line: 457, column: 19)
!1695 = !DILocation(line: 467, column: 21, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !158, discriminator: 1)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !158, line: 467, column: 21)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !158, line: 467, column: 21)
!1699 = !DILocation(line: 467, column: 21, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1698, file: !158, discriminator: 1)
!1701 = !DILocation(line: 467, column: 21, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1697, file: !158, discriminator: 2)
!1703 = !DILocation(line: 467, column: 21, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1698, file: !158, discriminator: 3)
!1705 = !DILocation(line: 468, column: 21, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1707, file: !158, discriminator: 1)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !158, line: 468, column: 21)
!1708 = distinct !DILexicalBlock(scope: !1694, file: !158, line: 468, column: 21)
!1709 = !DILocation(line: 468, column: 21, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1708, file: !158, discriminator: 1)
!1711 = !DILocation(line: 468, column: 21, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1707, file: !158, discriminator: 2)
!1713 = !DILocation(line: 468, column: 21, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1708, file: !158, discriminator: 3)
!1715 = !DILocation(line: 469, column: 21, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !158, discriminator: 1)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !158, line: 469, column: 21)
!1718 = distinct !DILexicalBlock(scope: !1694, file: !158, line: 469, column: 21)
!1719 = !DILocation(line: 469, column: 21, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1718, file: !158, discriminator: 1)
!1721 = !DILocation(line: 469, column: 21, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1717, file: !158, discriminator: 2)
!1723 = !DILocation(line: 469, column: 21, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1718, file: !158, discriminator: 3)
!1725 = !DILocation(line: 470, column: 21, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !158, discriminator: 1)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !158, line: 470, column: 21)
!1728 = distinct !DILexicalBlock(scope: !1694, file: !158, line: 470, column: 21)
!1729 = !DILocation(line: 470, column: 21, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1728, file: !158, discriminator: 1)
!1731 = !DILocation(line: 470, column: 21, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1727, file: !158, discriminator: 2)
!1733 = !DILocation(line: 470, column: 21, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1728, file: !158, discriminator: 3)
!1735 = !DILocation(line: 471, column: 21, scope: !1694)
!1736 = !DILocation(line: 395, column: 21, scope: !1431)
!1737 = !DILocation(line: 484, column: 31, scope: !1440)
!1738 = !DILocation(line: 485, column: 31, scope: !1440)
!1739 = !DILocation(line: 487, column: 31, scope: !1440)
!1740 = !DILocation(line: 488, column: 31, scope: !1440)
!1741 = !DILocation(line: 489, column: 31, scope: !1440)
!1742 = !DILocation(line: 492, column: 15, scope: !1440)
!1743 = !DILocation(line: 494, column: 19, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !158, line: 493, column: 13)
!1745 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 492, column: 15)
!1746 = !DILocation(line: 501, column: 33, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 501, column: 15)
!1748 = !DILocation(line: 506, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 505, column: 15)
!1750 = !DILocation(line: 510, column: 15, scope: !1440)
!1751 = !DILocation(line: 518, column: 26, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 518, column: 15)
!1753 = !DILocation(line: 518, column: 15, scope: !1440)
!1754 = !DILocation(line: 518, column: 40, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1752, file: !158, discriminator: 1)
!1756 = !DILocation(line: 518, column: 47, scope: !1755)
!1757 = !DILocation(line: 522, column: 17, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 522, column: 15)
!1759 = !DILocation(line: 518, column: 18, scope: !1755)
!1760 = !DILocation(line: 518, column: 65, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1752, file: !158, discriminator: 2)
!1762 = !DILocation(line: 518, column: 15, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1440, file: !158, discriminator: 2)
!1764 = !DILocation(line: 522, column: 15, scope: !1440)
!1765 = !DILocation(line: 526, column: 11, scope: !1440)
!1766 = !DILocation(line: 541, column: 15, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 540, column: 15)
!1768 = !DILocation(line: 548, column: 15, scope: !1440)
!1769 = !DILocation(line: 550, column: 19, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !158, line: 549, column: 13)
!1771 = distinct !DILexicalBlock(scope: !1440, file: !158, line: 548, column: 15)
!1772 = !DILocation(line: 553, column: 19, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !158, line: 553, column: 19)
!1774 = !DILocation(line: 553, column: 35, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1773, file: !158, discriminator: 1)
!1776 = !DILocation(line: 553, column: 30, scope: !1773)
!1777 = !DILocation(line: 562, column: 15, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1779, file: !158, discriminator: 1)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !158, line: 562, column: 15)
!1780 = distinct !DILexicalBlock(scope: !1770, file: !158, line: 562, column: 15)
!1781 = !DILocation(line: 562, column: 15, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1780, file: !158, discriminator: 1)
!1783 = !DILocation(line: 562, column: 15, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1779, file: !158, discriminator: 2)
!1785 = !DILocation(line: 562, column: 15, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1780, file: !158, discriminator: 3)
!1787 = !DILocation(line: 563, column: 15, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1789, file: !158, discriminator: 1)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !158, line: 563, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1770, file: !158, line: 563, column: 15)
!1791 = !DILocation(line: 563, column: 15, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1790, file: !158, discriminator: 1)
!1793 = !DILocation(line: 563, column: 15, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1789, file: !158, discriminator: 2)
!1795 = !DILocation(line: 563, column: 15, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1790, file: !158, discriminator: 3)
!1797 = !DILocation(line: 564, column: 15, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1799, file: !158, discriminator: 1)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !158, line: 564, column: 15)
!1800 = distinct !DILexicalBlock(scope: !1770, file: !158, line: 564, column: 15)
!1801 = !DILocation(line: 564, column: 15, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1800, file: !158, discriminator: 1)
!1803 = !DILocation(line: 564, column: 15, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1799, file: !158, discriminator: 2)
!1805 = !DILocation(line: 564, column: 15, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1800, file: !158, discriminator: 3)
!1807 = !DILocation(line: 566, column: 13, scope: !1770)
!1808 = !DILocation(line: 606, column: 17, scope: !1439)
!1809 = !DILocation(line: 602, column: 20, scope: !1439)
!1810 = !DILocation(line: 609, column: 29, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1444, file: !158, line: 607, column: 15)
!1812 = !DILocation(line: 609, column: 27, scope: !1811)
!1813 = !DILocation(line: 604, column: 18, scope: !1439)
!1814 = !DILocation(line: 610, column: 15, scope: !1811)
!1815 = !DILocation(line: 613, column: 17, scope: !1443)
!1816 = !DILocation(line: 614, column: 17, scope: !1443)
!1817 = !DILocation(line: 618, column: 29, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1443, file: !158, line: 618, column: 21)
!1819 = !DILocation(line: 618, column: 21, scope: !1443)
!1820 = distinct !{!1820, !1821, !1822}
!1821 = !DILocation(line: 621, column: 17, scope: !1443)
!1822 = !DILocation(line: 667, column: 44, scope: !1443)
!1823 = !DILocation(line: 619, column: 29, scope: !1818)
!1824 = !DILocation(line: 619, column: 19, scope: !1818)
!1825 = !DILocation(line: 623, column: 21, scope: !1460)
!1826 = !DILocation(line: 624, column: 56, scope: !1460)
!1827 = !DILocation(line: 624, column: 50, scope: !1460)
!1828 = !DILocation(line: 625, column: 53, scope: !1460)
!1829 = !DILocation(line: 613, column: 27, scope: !1443)
!1830 = !DILocation(line: 623, column: 29, scope: !1460)
!1831 = !DILocation(line: 624, column: 36, scope: !1460)
!1832 = !DILocation(line: 624, column: 28, scope: !1460)
!1833 = !DILocation(line: 626, column: 25, scope: !1460)
!1834 = !DILocation(line: 636, column: 38, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1836, file: !158, discriminator: 1)
!1836 = distinct !DILexicalBlock(scope: !1467, file: !158, line: 634, column: 23)
!1837 = !DILocation(line: 636, column: 48, scope: !1835)
!1838 = !DILocation(line: 636, column: 51, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1836, file: !158, discriminator: 2)
!1840 = !DILocation(line: 636, column: 48, scope: !1839)
!1841 = !DILocation(line: 636, column: 25, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1836, file: !158, discriminator: 3)
!1843 = !DILocation(line: 637, column: 28, scope: !1836)
!1844 = !DILocation(line: 636, column: 34, scope: !1835)
!1845 = distinct !{!1845, !1846, !1843}
!1846 = !DILocation(line: 636, column: 25, scope: !1836)
!1847 = !DILocation(line: 650, column: 43, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1849, file: !158, discriminator: 1)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !158, line: 650, column: 29)
!1850 = distinct !DILexicalBlock(scope: !1464, file: !158, line: 650, column: 29)
!1851 = !DILocation(line: 647, column: 29, scope: !1465)
!1852 = !DILocation(line: 649, column: 36, scope: !1464)
!1853 = !DILocation(line: 651, column: 49, scope: !1849)
!1854 = !DILocation(line: 651, column: 39, scope: !1849)
!1855 = !DILocation(line: 651, column: 31, scope: !1849)
!1856 = !DILocation(line: 650, column: 53, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1849, file: !158, discriminator: 2)
!1858 = !DILocation(line: 650, column: 29, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1850, file: !158, discriminator: 1)
!1860 = distinct !{!1860, !1861, !1862}
!1861 = !DILocation(line: 650, column: 29, scope: !1850)
!1862 = !DILocation(line: 659, column: 33, scope: !1850)
!1863 = !DILocation(line: 666, column: 19, scope: !1443)
!1864 = !DILocation(line: 662, column: 41, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1466, file: !158, line: 662, column: 29)
!1866 = !DILocation(line: 662, column: 31, scope: !1865)
!1867 = !DILocation(line: 662, column: 29, scope: !1466)
!1868 = !DILocation(line: 664, column: 27, scope: !1466)
!1869 = !DILocation(line: 667, column: 26, scope: !1443)
!1870 = !DILocation(line: 667, column: 24, scope: !1443)
!1871 = !DILocation(line: 666, column: 19, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1460, file: !158, discriminator: 3)
!1873 = !DILocation(line: 668, column: 15, scope: !1444)
!1874 = !DILocation(line: 670, column: 40, scope: !1439)
!1875 = !DILocation(line: 672, column: 19, scope: !1472)
!1876 = !DILocation(line: 672, column: 45, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1472, file: !158, discriminator: 1)
!1878 = !DILocation(line: 672, column: 23, scope: !1472)
!1879 = !DILocation(line: 676, column: 33, scope: !1471)
!1880 = !DILocation(line: 676, column: 24, scope: !1471)
!1881 = !DILocation(line: 678, column: 17, scope: !1471)
!1882 = !DILocation(line: 680, column: 43, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !158, line: 680, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !158, line: 679, column: 19)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !158, line: 678, column: 17)
!1886 = distinct !DILexicalBlock(scope: !1471, file: !158, line: 678, column: 17)
!1887 = !DILocation(line: 682, column: 25, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1889, file: !158, discriminator: 1)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !158, line: 682, column: 25)
!1890 = distinct !DILexicalBlock(scope: !1883, file: !158, line: 681, column: 23)
!1891 = !DILocation(line: 682, column: 25, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1893, file: !158, discriminator: 4)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !158, line: 682, column: 25)
!1894 = !DILocation(line: 682, column: 25, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1893, file: !158, discriminator: 3)
!1896 = !DILocation(line: 682, column: 25, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1898, file: !158, discriminator: 6)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !158, line: 682, column: 25)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !158, line: 682, column: 25)
!1900 = distinct !DILexicalBlock(scope: !1893, file: !158, line: 682, column: 25)
!1901 = !DILocation(line: 682, column: 25, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1899, file: !158, discriminator: 6)
!1903 = !DILocation(line: 682, column: 25, scope: !1904)
!1904 = !DILexicalBlockFile(scope: !1898, file: !158, discriminator: 7)
!1905 = !DILocation(line: 682, column: 25, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1899, file: !158, discriminator: 8)
!1907 = !DILocation(line: 682, column: 25, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1909, file: !158, discriminator: 11)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !158, line: 682, column: 25)
!1910 = distinct !DILexicalBlock(scope: !1900, file: !158, line: 682, column: 25)
!1911 = !DILocation(line: 682, column: 25, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1910, file: !158, discriminator: 11)
!1913 = !DILocation(line: 682, column: 25, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1909, file: !158, discriminator: 12)
!1915 = !DILocation(line: 682, column: 25, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1910, file: !158, discriminator: 13)
!1917 = !DILocation(line: 682, column: 25, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1919, file: !158, discriminator: 16)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !158, line: 682, column: 25)
!1920 = distinct !DILexicalBlock(scope: !1900, file: !158, line: 682, column: 25)
!1921 = !DILocation(line: 682, column: 25, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1920, file: !158, discriminator: 16)
!1923 = !DILocation(line: 682, column: 25, scope: !1924)
!1924 = !DILexicalBlockFile(scope: !1919, file: !158, discriminator: 17)
!1925 = !DILocation(line: 682, column: 25, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1920, file: !158, discriminator: 18)
!1927 = !DILocation(line: 682, column: 25, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1900, file: !158, discriminator: 20)
!1929 = !DILocation(line: 682, column: 25, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1931, file: !158, discriminator: 22)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !158, line: 682, column: 25)
!1932 = distinct !DILexicalBlock(scope: !1889, file: !158, line: 682, column: 25)
!1933 = !DILocation(line: 682, column: 25, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1932, file: !158, discriminator: 22)
!1935 = !DILocation(line: 682, column: 25, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1931, file: !158, discriminator: 23)
!1937 = !DILocation(line: 682, column: 25, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1932, file: !158, discriminator: 24)
!1939 = !DILocation(line: 683, column: 25, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1941, file: !158, discriminator: 1)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !158, line: 683, column: 25)
!1942 = distinct !DILexicalBlock(scope: !1890, file: !158, line: 683, column: 25)
!1943 = !DILocation(line: 683, column: 25, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1942, file: !158, discriminator: 1)
!1945 = !DILocation(line: 683, column: 25, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1941, file: !158, discriminator: 2)
!1947 = !DILocation(line: 683, column: 25, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1942, file: !158, discriminator: 3)
!1949 = !DILocation(line: 684, column: 25, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1951, file: !158, discriminator: 1)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !158, line: 684, column: 25)
!1952 = distinct !DILexicalBlock(scope: !1890, file: !158, line: 684, column: 25)
!1953 = !DILocation(line: 684, column: 25, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1952, file: !158, discriminator: 1)
!1955 = !DILocation(line: 684, column: 25, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1951, file: !158, discriminator: 2)
!1957 = !DILocation(line: 684, column: 25, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1952, file: !158, discriminator: 3)
!1959 = !DILocation(line: 685, column: 38, scope: !1890)
!1960 = !DILocation(line: 685, column: 33, scope: !1890)
!1961 = !DILocation(line: 686, column: 23, scope: !1890)
!1962 = !DILocation(line: 687, column: 30, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1883, file: !158, line: 687, column: 30)
!1964 = !DILocation(line: 687, column: 30, scope: !1883)
!1965 = !DILocation(line: 689, column: 25, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1967, file: !158, discriminator: 1)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !158, line: 689, column: 25)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !158, line: 689, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1963, file: !158, line: 688, column: 23)
!1970 = !DILocation(line: 689, column: 25, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1968, file: !158, discriminator: 1)
!1972 = !DILocation(line: 689, column: 25, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1967, file: !158, discriminator: 2)
!1974 = !DILocation(line: 689, column: 25, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1968, file: !158, discriminator: 3)
!1976 = !DILocation(line: 691, column: 23, scope: !1969)
!1977 = !DILocation(line: 692, column: 35, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1884, file: !158, line: 692, column: 25)
!1979 = !DILocation(line: 692, column: 30, scope: !1978)
!1980 = !DILocation(line: 692, column: 25, scope: !1884)
!1981 = !DILocation(line: 694, column: 21, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1983, file: !158, discriminator: 1)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !158, line: 694, column: 21)
!1984 = distinct !DILexicalBlock(scope: !1884, file: !158, line: 694, column: 21)
!1985 = !DILocation(line: 694, column: 21, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1983, file: !158, discriminator: 2)
!1987 = !DILocation(line: 694, column: 21, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1989, file: !158, discriminator: 4)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !158, line: 694, column: 21)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !158, line: 694, column: 21)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !158, line: 694, column: 21)
!1992 = !DILocation(line: 694, column: 21, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1990, file: !158, discriminator: 4)
!1994 = !DILocation(line: 694, column: 21, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1989, file: !158, discriminator: 5)
!1996 = !DILocation(line: 694, column: 21, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1990, file: !158, discriminator: 6)
!1998 = !DILocation(line: 694, column: 21, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !2000, file: !158, discriminator: 9)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !158, line: 694, column: 21)
!2001 = distinct !DILexicalBlock(scope: !1991, file: !158, line: 694, column: 21)
!2002 = !DILocation(line: 694, column: 21, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !2001, file: !158, discriminator: 9)
!2004 = !DILocation(line: 694, column: 21, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2000, file: !158, discriminator: 10)
!2006 = !DILocation(line: 694, column: 21, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2001, file: !158, discriminator: 11)
!2008 = !DILocation(line: 694, column: 21, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1991, file: !158, discriminator: 13)
!2010 = !DILocation(line: 695, column: 21, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2012, file: !158, discriminator: 1)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !158, line: 695, column: 21)
!2013 = distinct !DILexicalBlock(scope: !1884, file: !158, line: 695, column: 21)
!2014 = !DILocation(line: 695, column: 21, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !2013, file: !158, discriminator: 1)
!2016 = !DILocation(line: 695, column: 21, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2012, file: !158, discriminator: 2)
!2018 = !DILocation(line: 695, column: 21, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2013, file: !158, discriminator: 3)
!2020 = !DILocation(line: 696, column: 25, scope: !1884)
!2021 = !DILocation(line: 678, column: 17, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !1885, file: !158, discriminator: 1)
!2023 = distinct !{!2023, !2024, !2025}
!2024 = !DILocation(line: 678, column: 17, scope: !1886)
!2025 = !DILocation(line: 697, column: 19, scope: !1886)
!2026 = !DILocation(line: 704, column: 34, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1431, file: !158, line: 704, column: 11)
!2028 = !DILocation(line: 706, column: 14, scope: !2027)
!2029 = !DILocation(line: 707, column: 14, scope: !2027)
!2030 = !DILocation(line: 707, column: 35, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2027, file: !158, discriminator: 1)
!2032 = !DILocation(line: 707, column: 17, scope: !2031)
!2033 = !DILocation(line: 707, column: 53, scope: !2031)
!2034 = !DILocation(line: 707, column: 47, scope: !2031)
!2035 = !DILocation(line: 707, column: 65, scope: !2031)
!2036 = !DILocation(line: 708, column: 15, scope: !2031)
!2037 = !DILocation(line: 708, column: 11, scope: !2027)
!2038 = !DILocation(line: 704, column: 11, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !1431, file: !158, discriminator: 2)
!2040 = !DILocation(line: 712, column: 7, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2042, file: !158, discriminator: 1)
!2042 = distinct !DILexicalBlock(scope: !1431, file: !158, line: 712, column: 7)
!2043 = !DILocation(line: 712, column: 7, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2045, file: !158, discriminator: 4)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !158, line: 712, column: 7)
!2046 = !DILocation(line: 712, column: 7, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2045, file: !158, discriminator: 3)
!2048 = !DILocation(line: 712, column: 7, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2050, file: !158, discriminator: 6)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !158, line: 712, column: 7)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !158, line: 712, column: 7)
!2052 = distinct !DILexicalBlock(scope: !2045, file: !158, line: 712, column: 7)
!2053 = !DILocation(line: 712, column: 7, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2051, file: !158, discriminator: 6)
!2055 = !DILocation(line: 712, column: 7, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2050, file: !158, discriminator: 7)
!2057 = !DILocation(line: 712, column: 7, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2051, file: !158, discriminator: 8)
!2059 = !DILocation(line: 712, column: 7, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2061, file: !158, discriminator: 11)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !158, line: 712, column: 7)
!2062 = distinct !DILexicalBlock(scope: !2052, file: !158, line: 712, column: 7)
!2063 = !DILocation(line: 712, column: 7, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2062, file: !158, discriminator: 11)
!2065 = !DILocation(line: 712, column: 7, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2061, file: !158, discriminator: 12)
!2067 = !DILocation(line: 712, column: 7, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2062, file: !158, discriminator: 13)
!2069 = !DILocation(line: 712, column: 7, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2071, file: !158, discriminator: 16)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !158, line: 712, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2052, file: !158, line: 712, column: 7)
!2073 = !DILocation(line: 712, column: 7, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !2072, file: !158, discriminator: 16)
!2075 = !DILocation(line: 712, column: 7, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2071, file: !158, discriminator: 17)
!2077 = !DILocation(line: 712, column: 7, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2072, file: !158, discriminator: 18)
!2079 = !DILocation(line: 712, column: 7, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2052, file: !158, discriminator: 20)
!2081 = !DILocation(line: 712, column: 7, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2083, file: !158, discriminator: 22)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !158, line: 712, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2042, file: !158, line: 712, column: 7)
!2085 = !DILocation(line: 712, column: 7, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2084, file: !158, discriminator: 22)
!2087 = !DILocation(line: 712, column: 7, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2083, file: !158, discriminator: 23)
!2089 = !DILocation(line: 712, column: 7, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2084, file: !158, discriminator: 24)
!2091 = !DILocation(line: 715, column: 7, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2093, file: !158, discriminator: 1)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !158, line: 715, column: 7)
!2094 = distinct !DILexicalBlock(scope: !1431, file: !158, line: 715, column: 7)
!2095 = !DILocation(line: 715, column: 7, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2093, file: !158, discriminator: 2)
!2097 = !DILocation(line: 715, column: 7, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !158, discriminator: 4)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !158, line: 715, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !158, line: 715, column: 7)
!2101 = distinct !DILexicalBlock(scope: !2093, file: !158, line: 715, column: 7)
!2102 = !DILocation(line: 715, column: 7, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2100, file: !158, discriminator: 4)
!2104 = !DILocation(line: 715, column: 7, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2099, file: !158, discriminator: 5)
!2106 = !DILocation(line: 715, column: 7, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !2100, file: !158, discriminator: 6)
!2108 = !DILocation(line: 715, column: 7, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2110, file: !158, discriminator: 9)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !158, line: 715, column: 7)
!2111 = distinct !DILexicalBlock(scope: !2101, file: !158, line: 715, column: 7)
!2112 = !DILocation(line: 715, column: 7, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2111, file: !158, discriminator: 9)
!2114 = !DILocation(line: 715, column: 7, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2110, file: !158, discriminator: 10)
!2116 = !DILocation(line: 715, column: 7, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2111, file: !158, discriminator: 11)
!2118 = !DILocation(line: 715, column: 7, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2101, file: !158, discriminator: 13)
!2120 = !DILocation(line: 716, column: 7, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2122, file: !158, discriminator: 1)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !158, line: 716, column: 7)
!2123 = distinct !DILexicalBlock(scope: !1431, file: !158, line: 716, column: 7)
!2124 = !DILocation(line: 716, column: 7, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2123, file: !158, discriminator: 1)
!2126 = !DILocation(line: 716, column: 7, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2122, file: !158, discriminator: 2)
!2128 = !DILocation(line: 716, column: 7, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2123, file: !158, discriminator: 3)
!2130 = !DILocation(line: 718, column: 13, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1431, file: !158, line: 718, column: 11)
!2132 = !DILocation(line: 718, column: 11, scope: !1431)
!2133 = !DILocation(line: 720, column: 5, scope: !1432)
!2134 = !DILocation(line: 392, column: 75, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !1432, file: !158, discriminator: 5)
!2136 = !DILocation(line: 392, column: 3, scope: !2135)
!2137 = distinct !{!2137, !2138, !2139}
!2138 = !DILocation(line: 392, column: 3, scope: !1433)
!2139 = !DILocation(line: 720, column: 5, scope: !1433)
!2140 = !DILocation(line: 722, column: 11, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1404, file: !158, line: 722, column: 7)
!2142 = !DILocation(line: 722, column: 16, scope: !2141)
!2143 = !DILocation(line: 730, column: 51, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1404, file: !158, line: 730, column: 7)
!2145 = !DILocation(line: 731, column: 10, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2144, file: !158, discriminator: 1)
!2147 = !DILocation(line: 733, column: 11, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !158, line: 733, column: 11)
!2149 = distinct !DILexicalBlock(scope: !2144, file: !158, line: 732, column: 5)
!2150 = !DILocation(line: 733, column: 11, scope: !2149)
!2151 = !DILocation(line: 734, column: 16, scope: !2148)
!2152 = !DILocation(line: 734, column: 9, scope: !2148)
!2153 = !DILocation(line: 738, column: 18, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2148, file: !158, line: 738, column: 16)
!2155 = !DILocation(line: 738, column: 32, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2154, file: !158, discriminator: 1)
!2157 = !DILocation(line: 738, column: 29, scope: !2154)
!2158 = !DILocation(line: 747, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1404, file: !158, line: 747, column: 7)
!2160 = !DILocation(line: 747, column: 20, scope: !2159)
!2161 = !DILocation(line: 748, column: 12, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2163, file: !158, discriminator: 1)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !158, line: 748, column: 5)
!2164 = distinct !DILexicalBlock(scope: !2159, file: !158, line: 748, column: 5)
!2165 = !DILocation(line: 748, column: 5, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2164, file: !158, discriminator: 1)
!2167 = !DILocation(line: 749, column: 7, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !2169, file: !158, discriminator: 1)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !158, line: 749, column: 7)
!2170 = distinct !DILexicalBlock(scope: !2163, file: !158, line: 749, column: 7)
!2171 = !DILocation(line: 749, column: 7, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2170, file: !158, discriminator: 1)
!2173 = !DILocation(line: 749, column: 7, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2169, file: !158, discriminator: 2)
!2175 = !DILocation(line: 749, column: 7, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2170, file: !158, discriminator: 3)
!2177 = !DILocation(line: 748, column: 39, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2163, file: !158, discriminator: 2)
!2179 = distinct !{!2179, !2180, !2181}
!2180 = !DILocation(line: 748, column: 5, scope: !2164)
!2181 = !DILocation(line: 749, column: 7, scope: !2164)
!2182 = !DILocation(line: 751, column: 11, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !1404, file: !158, line: 751, column: 7)
!2184 = !DILocation(line: 751, column: 7, scope: !1404)
!2185 = !DILocation(line: 752, column: 5, scope: !2183)
!2186 = !DILocation(line: 752, column: 17, scope: !2183)
!2187 = !DILocation(line: 758, column: 21, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1404, file: !158, line: 758, column: 7)
!2189 = !DILocation(line: 758, column: 54, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2188, file: !158, discriminator: 1)
!2191 = !DILocation(line: 758, column: 51, scope: !2188)
!2192 = !DILocation(line: 762, column: 42, scope: !1404)
!2193 = !DILocation(line: 760, column: 10, scope: !1404)
!2194 = !DILocation(line: 760, column: 3, scope: !1404)
!2195 = !DILocation(line: 764, column: 1, scope: !1404)
!2196 = distinct !DISubprogram(name: "gettext_quote", scope: !158, file: !158, line: 199, type: !2197, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!61, !61, !28}
!2199 = !{!2200, !2201, !2202, !2203}
!2200 = !DILocalVariable(name: "msgid", arg: 1, scope: !2196, file: !158, line: 199, type: !61)
!2201 = !DILocalVariable(name: "s", arg: 2, scope: !2196, file: !158, line: 199, type: !28)
!2202 = !DILocalVariable(name: "translation", scope: !2196, file: !158, line: 201, type: !61)
!2203 = !DILocalVariable(name: "locale_code", scope: !2196, file: !158, line: 202, type: !61)
!2204 = !DILocation(line: 199, column: 28, scope: !2196)
!2205 = !DILocation(line: 199, column: 54, scope: !2196)
!2206 = !DILocation(line: 201, column: 29, scope: !2196)
!2207 = !DILocation(line: 201, column: 15, scope: !2196)
!2208 = !DILocation(line: 204, column: 19, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2196, file: !158, line: 204, column: 7)
!2210 = !DILocation(line: 204, column: 7, scope: !2196)
!2211 = !DILocation(line: 225, column: 17, scope: !2196)
!2212 = !DILocation(line: 202, column: 15, scope: !2196)
!2213 = !DILocalVariable(name: "s2", arg: 2, scope: !2214, file: !2215, line: 160, type: !61)
!2214 = distinct !DISubprogram(name: "strcaseeq0", scope: !2215, file: !2215, line: 160, type: !2216, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2218)
!2215 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!43, !61, !61, !51, !51, !51, !51, !51, !51, !51, !51, !51}
!2218 = !{!2219, !2213, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2219 = !DILocalVariable(name: "s1", arg: 1, scope: !2214, file: !2215, line: 160, type: !61)
!2220 = !DILocalVariable(name: "s20", arg: 3, scope: !2214, file: !2215, line: 160, type: !51)
!2221 = !DILocalVariable(name: "s21", arg: 4, scope: !2214, file: !2215, line: 160, type: !51)
!2222 = !DILocalVariable(name: "s22", arg: 5, scope: !2214, file: !2215, line: 160, type: !51)
!2223 = !DILocalVariable(name: "s23", arg: 6, scope: !2214, file: !2215, line: 160, type: !51)
!2224 = !DILocalVariable(name: "s24", arg: 7, scope: !2214, file: !2215, line: 160, type: !51)
!2225 = !DILocalVariable(name: "s25", arg: 8, scope: !2214, file: !2215, line: 160, type: !51)
!2226 = !DILocalVariable(name: "s26", arg: 9, scope: !2214, file: !2215, line: 160, type: !51)
!2227 = !DILocalVariable(name: "s27", arg: 10, scope: !2214, file: !2215, line: 160, type: !51)
!2228 = !DILocalVariable(name: "s28", arg: 11, scope: !2214, file: !2215, line: 160, type: !51)
!2229 = !DILocation(line: 160, column: 41, scope: !2214, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 226, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2196, file: !158, line: 226, column: 7)
!2232 = !DILocation(line: 160, column: 120, scope: !2214, inlinedAt: !2230)
!2233 = !DILocation(line: 160, column: 130, scope: !2214, inlinedAt: !2230)
!2234 = !DILocation(line: 162, column: 7, scope: !2235, inlinedAt: !2230)
!2235 = !DILexicalBlockFile(scope: !2236, file: !2215, discriminator: 1)
!2236 = distinct !DILexicalBlock(scope: !2214, file: !2215, line: 162, column: 7)
!2237 = !DILocalVariable(name: "s2", arg: 2, scope: !2238, file: !2215, line: 146, type: !61)
!2238 = distinct !DISubprogram(name: "strcaseeq1", scope: !2215, file: !2215, line: 146, type: !2239, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!43, !61, !61, !51, !51, !51, !51, !51, !51, !51, !51}
!2241 = !{!2242, !2237, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2242 = !DILocalVariable(name: "s1", arg: 1, scope: !2238, file: !2215, line: 146, type: !61)
!2243 = !DILocalVariable(name: "s21", arg: 3, scope: !2238, file: !2215, line: 146, type: !51)
!2244 = !DILocalVariable(name: "s22", arg: 4, scope: !2238, file: !2215, line: 146, type: !51)
!2245 = !DILocalVariable(name: "s23", arg: 5, scope: !2238, file: !2215, line: 146, type: !51)
!2246 = !DILocalVariable(name: "s24", arg: 6, scope: !2238, file: !2215, line: 146, type: !51)
!2247 = !DILocalVariable(name: "s25", arg: 7, scope: !2238, file: !2215, line: 146, type: !51)
!2248 = !DILocalVariable(name: "s26", arg: 8, scope: !2238, file: !2215, line: 146, type: !51)
!2249 = !DILocalVariable(name: "s27", arg: 9, scope: !2238, file: !2215, line: 146, type: !51)
!2250 = !DILocalVariable(name: "s28", arg: 10, scope: !2238, file: !2215, line: 146, type: !51)
!2251 = !DILocation(line: 146, column: 41, scope: !2238, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 167, column: 16, scope: !2253, inlinedAt: !2230)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !2215, line: 164, column: 11)
!2254 = distinct !DILexicalBlock(scope: !2236, file: !2215, line: 163, column: 5)
!2255 = !DILocation(line: 146, column: 110, scope: !2238, inlinedAt: !2252)
!2256 = !DILocation(line: 146, column: 120, scope: !2238, inlinedAt: !2252)
!2257 = !DILocation(line: 148, column: 7, scope: !2258, inlinedAt: !2252)
!2258 = !DILexicalBlockFile(scope: !2259, file: !2215, discriminator: 1)
!2259 = distinct !DILexicalBlock(scope: !2238, file: !2215, line: 148, column: 7)
!2260 = !DILocalVariable(name: "s2", arg: 2, scope: !2261, file: !2215, line: 132, type: !61)
!2261 = distinct !DISubprogram(name: "strcaseeq2", scope: !2215, file: !2215, line: 132, type: !2262, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!43, !61, !61, !51, !51, !51, !51, !51, !51, !51}
!2264 = !{!2265, !2260, !2266, !2267, !2268, !2269, !2270, !2271, !2272}
!2265 = !DILocalVariable(name: "s1", arg: 1, scope: !2261, file: !2215, line: 132, type: !61)
!2266 = !DILocalVariable(name: "s22", arg: 3, scope: !2261, file: !2215, line: 132, type: !51)
!2267 = !DILocalVariable(name: "s23", arg: 4, scope: !2261, file: !2215, line: 132, type: !51)
!2268 = !DILocalVariable(name: "s24", arg: 5, scope: !2261, file: !2215, line: 132, type: !51)
!2269 = !DILocalVariable(name: "s25", arg: 6, scope: !2261, file: !2215, line: 132, type: !51)
!2270 = !DILocalVariable(name: "s26", arg: 7, scope: !2261, file: !2215, line: 132, type: !51)
!2271 = !DILocalVariable(name: "s27", arg: 8, scope: !2261, file: !2215, line: 132, type: !51)
!2272 = !DILocalVariable(name: "s28", arg: 9, scope: !2261, file: !2215, line: 132, type: !51)
!2273 = !DILocation(line: 132, column: 41, scope: !2261, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 153, column: 16, scope: !2275, inlinedAt: !2252)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !2215, line: 150, column: 11)
!2276 = distinct !DILexicalBlock(scope: !2259, file: !2215, line: 149, column: 5)
!2277 = !DILocation(line: 132, column: 100, scope: !2261, inlinedAt: !2274)
!2278 = !DILocation(line: 132, column: 110, scope: !2261, inlinedAt: !2274)
!2279 = !DILocation(line: 134, column: 7, scope: !2280, inlinedAt: !2274)
!2280 = !DILexicalBlockFile(scope: !2281, file: !2215, discriminator: 1)
!2281 = distinct !DILexicalBlock(scope: !2261, file: !2215, line: 134, column: 7)
!2282 = !DILocalVariable(name: "s2", arg: 2, scope: !2283, file: !2215, line: 118, type: !61)
!2283 = distinct !DISubprogram(name: "strcaseeq3", scope: !2215, file: !2215, line: 118, type: !2284, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!43, !61, !61, !51, !51, !51, !51, !51, !51}
!2286 = !{!2287, !2282, !2288, !2289, !2290, !2291, !2292, !2293}
!2287 = !DILocalVariable(name: "s1", arg: 1, scope: !2283, file: !2215, line: 118, type: !61)
!2288 = !DILocalVariable(name: "s23", arg: 3, scope: !2283, file: !2215, line: 118, type: !51)
!2289 = !DILocalVariable(name: "s24", arg: 4, scope: !2283, file: !2215, line: 118, type: !51)
!2290 = !DILocalVariable(name: "s25", arg: 5, scope: !2283, file: !2215, line: 118, type: !51)
!2291 = !DILocalVariable(name: "s26", arg: 6, scope: !2283, file: !2215, line: 118, type: !51)
!2292 = !DILocalVariable(name: "s27", arg: 7, scope: !2283, file: !2215, line: 118, type: !51)
!2293 = !DILocalVariable(name: "s28", arg: 8, scope: !2283, file: !2215, line: 118, type: !51)
!2294 = !DILocation(line: 118, column: 41, scope: !2283, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 139, column: 16, scope: !2296, inlinedAt: !2274)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !2215, line: 136, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2281, file: !2215, line: 135, column: 5)
!2298 = !DILocation(line: 118, column: 90, scope: !2283, inlinedAt: !2295)
!2299 = !DILocation(line: 118, column: 100, scope: !2283, inlinedAt: !2295)
!2300 = !DILocation(line: 120, column: 7, scope: !2301, inlinedAt: !2295)
!2301 = !DILexicalBlockFile(scope: !2302, file: !2215, discriminator: 2)
!2302 = distinct !DILexicalBlock(scope: !2283, file: !2215, line: 120, column: 7)
!2303 = !DILocation(line: 120, column: 7, scope: !2304, inlinedAt: !2295)
!2304 = !DILexicalBlockFile(scope: !2283, file: !2215, discriminator: 2)
!2305 = !DILocalVariable(name: "s2", arg: 2, scope: !2306, file: !2215, line: 104, type: !61)
!2306 = distinct !DISubprogram(name: "strcaseeq4", scope: !2215, file: !2215, line: 104, type: !2307, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!43, !61, !61, !51, !51, !51, !51, !51}
!2309 = !{!2310, !2305, !2311, !2312, !2313, !2314, !2315}
!2310 = !DILocalVariable(name: "s1", arg: 1, scope: !2306, file: !2215, line: 104, type: !61)
!2311 = !DILocalVariable(name: "s24", arg: 3, scope: !2306, file: !2215, line: 104, type: !51)
!2312 = !DILocalVariable(name: "s25", arg: 4, scope: !2306, file: !2215, line: 104, type: !51)
!2313 = !DILocalVariable(name: "s26", arg: 5, scope: !2306, file: !2215, line: 104, type: !51)
!2314 = !DILocalVariable(name: "s27", arg: 6, scope: !2306, file: !2215, line: 104, type: !51)
!2315 = !DILocalVariable(name: "s28", arg: 7, scope: !2306, file: !2215, line: 104, type: !51)
!2316 = !DILocation(line: 104, column: 41, scope: !2306, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 125, column: 16, scope: !2318, inlinedAt: !2295)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !2215, line: 122, column: 11)
!2319 = distinct !DILexicalBlock(scope: !2302, file: !2215, line: 121, column: 5)
!2320 = !DILocation(line: 104, column: 80, scope: !2306, inlinedAt: !2317)
!2321 = !DILocation(line: 104, column: 90, scope: !2306, inlinedAt: !2317)
!2322 = !DILocation(line: 106, column: 7, scope: !2323, inlinedAt: !2317)
!2323 = !DILexicalBlockFile(scope: !2324, file: !2215, discriminator: 2)
!2324 = distinct !DILexicalBlock(scope: !2306, file: !2215, line: 106, column: 7)
!2325 = !DILocation(line: 106, column: 7, scope: !2326, inlinedAt: !2317)
!2326 = !DILexicalBlockFile(scope: !2306, file: !2215, discriminator: 2)
!2327 = !DILocalVariable(name: "s2", arg: 2, scope: !2328, file: !2215, line: 90, type: !61)
!2328 = distinct !DISubprogram(name: "strcaseeq5", scope: !2215, file: !2215, line: 90, type: !2329, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!43, !61, !61, !51, !51, !51, !51}
!2331 = !{!2332, !2327, !2333, !2334, !2335, !2336}
!2332 = !DILocalVariable(name: "s1", arg: 1, scope: !2328, file: !2215, line: 90, type: !61)
!2333 = !DILocalVariable(name: "s25", arg: 3, scope: !2328, file: !2215, line: 90, type: !51)
!2334 = !DILocalVariable(name: "s26", arg: 4, scope: !2328, file: !2215, line: 90, type: !51)
!2335 = !DILocalVariable(name: "s27", arg: 5, scope: !2328, file: !2215, line: 90, type: !51)
!2336 = !DILocalVariable(name: "s28", arg: 6, scope: !2328, file: !2215, line: 90, type: !51)
!2337 = !DILocation(line: 90, column: 41, scope: !2328, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 111, column: 16, scope: !2339, inlinedAt: !2317)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !2215, line: 108, column: 11)
!2340 = distinct !DILexicalBlock(scope: !2324, file: !2215, line: 107, column: 5)
!2341 = !DILocation(line: 90, column: 70, scope: !2328, inlinedAt: !2338)
!2342 = !DILocation(line: 90, column: 80, scope: !2328, inlinedAt: !2338)
!2343 = !DILocation(line: 92, column: 7, scope: !2344, inlinedAt: !2338)
!2344 = !DILexicalBlockFile(scope: !2345, file: !2215, discriminator: 2)
!2345 = distinct !DILexicalBlock(scope: !2328, file: !2215, line: 92, column: 7)
!2346 = !DILocation(line: 92, column: 7, scope: !2347, inlinedAt: !2338)
!2347 = !DILexicalBlockFile(scope: !2328, file: !2215, discriminator: 2)
!2348 = !DILocation(line: 227, column: 12, scope: !2231)
!2349 = !DILocation(line: 227, column: 21, scope: !2231)
!2350 = !DILocation(line: 227, column: 5, scope: !2231)
!2351 = !DILocation(line: 146, column: 41, scope: !2238, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 167, column: 16, scope: !2253, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 228, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2196, file: !158, line: 228, column: 7)
!2355 = !DILocation(line: 146, column: 110, scope: !2238, inlinedAt: !2352)
!2356 = !DILocation(line: 146, column: 120, scope: !2238, inlinedAt: !2352)
!2357 = !DILocation(line: 148, column: 7, scope: !2258, inlinedAt: !2352)
!2358 = !DILocation(line: 132, column: 41, scope: !2261, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 153, column: 16, scope: !2275, inlinedAt: !2352)
!2360 = !DILocation(line: 132, column: 100, scope: !2261, inlinedAt: !2359)
!2361 = !DILocation(line: 132, column: 110, scope: !2261, inlinedAt: !2359)
!2362 = !DILocation(line: 134, column: 7, scope: !2363, inlinedAt: !2359)
!2363 = !DILexicalBlockFile(scope: !2281, file: !2215, discriminator: 2)
!2364 = !DILocation(line: 134, column: 7, scope: !2365, inlinedAt: !2359)
!2365 = !DILexicalBlockFile(scope: !2261, file: !2215, discriminator: 2)
!2366 = !DILocation(line: 118, column: 41, scope: !2283, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 139, column: 16, scope: !2296, inlinedAt: !2359)
!2368 = !DILocation(line: 118, column: 90, scope: !2283, inlinedAt: !2367)
!2369 = !DILocation(line: 118, column: 100, scope: !2283, inlinedAt: !2367)
!2370 = !DILocation(line: 120, column: 7, scope: !2301, inlinedAt: !2367)
!2371 = !DILocation(line: 120, column: 7, scope: !2304, inlinedAt: !2367)
!2372 = !DILocation(line: 104, column: 41, scope: !2306, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 125, column: 16, scope: !2318, inlinedAt: !2367)
!2374 = !DILocation(line: 104, column: 80, scope: !2306, inlinedAt: !2373)
!2375 = !DILocation(line: 104, column: 90, scope: !2306, inlinedAt: !2373)
!2376 = !DILocation(line: 106, column: 7, scope: !2323, inlinedAt: !2373)
!2377 = !DILocation(line: 106, column: 7, scope: !2326, inlinedAt: !2373)
!2378 = !DILocation(line: 90, column: 41, scope: !2328, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 111, column: 16, scope: !2339, inlinedAt: !2373)
!2380 = !DILocation(line: 90, column: 70, scope: !2328, inlinedAt: !2379)
!2381 = !DILocation(line: 90, column: 80, scope: !2328, inlinedAt: !2379)
!2382 = !DILocation(line: 92, column: 7, scope: !2344, inlinedAt: !2379)
!2383 = !DILocation(line: 92, column: 7, scope: !2347, inlinedAt: !2379)
!2384 = !DILocalVariable(name: "s2", arg: 2, scope: !2385, file: !2215, line: 76, type: !61)
!2385 = distinct !DISubprogram(name: "strcaseeq6", scope: !2215, file: !2215, line: 76, type: !2386, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!43, !61, !61, !51, !51, !51}
!2388 = !{!2389, !2384, !2390, !2391, !2392}
!2389 = !DILocalVariable(name: "s1", arg: 1, scope: !2385, file: !2215, line: 76, type: !61)
!2390 = !DILocalVariable(name: "s26", arg: 3, scope: !2385, file: !2215, line: 76, type: !51)
!2391 = !DILocalVariable(name: "s27", arg: 4, scope: !2385, file: !2215, line: 76, type: !51)
!2392 = !DILocalVariable(name: "s28", arg: 5, scope: !2385, file: !2215, line: 76, type: !51)
!2393 = !DILocation(line: 76, column: 41, scope: !2385, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 97, column: 16, scope: !2395, inlinedAt: !2379)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !2215, line: 94, column: 11)
!2396 = distinct !DILexicalBlock(scope: !2345, file: !2215, line: 93, column: 5)
!2397 = !DILocation(line: 76, column: 60, scope: !2385, inlinedAt: !2394)
!2398 = !DILocation(line: 76, column: 70, scope: !2385, inlinedAt: !2394)
!2399 = !DILocation(line: 78, column: 7, scope: !2400, inlinedAt: !2394)
!2400 = !DILexicalBlockFile(scope: !2401, file: !2215, discriminator: 2)
!2401 = distinct !DILexicalBlock(scope: !2385, file: !2215, line: 78, column: 7)
!2402 = !DILocation(line: 78, column: 7, scope: !2403, inlinedAt: !2394)
!2403 = !DILexicalBlockFile(scope: !2385, file: !2215, discriminator: 2)
!2404 = !DILocalVariable(name: "s2", arg: 2, scope: !2405, file: !2215, line: 62, type: !61)
!2405 = distinct !DISubprogram(name: "strcaseeq7", scope: !2215, file: !2215, line: 62, type: !2406, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!43, !61, !61, !51, !51}
!2408 = !{!2409, !2404, !2410, !2411}
!2409 = !DILocalVariable(name: "s1", arg: 1, scope: !2405, file: !2215, line: 62, type: !61)
!2410 = !DILocalVariable(name: "s27", arg: 3, scope: !2405, file: !2215, line: 62, type: !51)
!2411 = !DILocalVariable(name: "s28", arg: 4, scope: !2405, file: !2215, line: 62, type: !51)
!2412 = !DILocation(line: 62, column: 41, scope: !2405, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 83, column: 16, scope: !2414, inlinedAt: !2394)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !2215, line: 80, column: 11)
!2415 = distinct !DILexicalBlock(scope: !2401, file: !2215, line: 79, column: 5)
!2416 = !DILocation(line: 62, column: 50, scope: !2405, inlinedAt: !2413)
!2417 = !DILocation(line: 62, column: 60, scope: !2405, inlinedAt: !2413)
!2418 = !DILocation(line: 64, column: 7, scope: !2419, inlinedAt: !2413)
!2419 = !DILexicalBlockFile(scope: !2420, file: !2215, discriminator: 2)
!2420 = distinct !DILexicalBlock(scope: !2405, file: !2215, line: 64, column: 7)
!2421 = !DILocation(line: 228, column: 7, scope: !2196)
!2422 = !DILocation(line: 229, column: 12, scope: !2354)
!2423 = !DILocation(line: 229, column: 21, scope: !2354)
!2424 = !DILocation(line: 229, column: 5, scope: !2354)
!2425 = !DILocation(line: 231, column: 13, scope: !2196)
!2426 = !DILocation(line: 231, column: 11, scope: !2196)
!2427 = !DILocation(line: 231, column: 3, scope: !2196)
!2428 = !DILocation(line: 232, column: 1, scope: !2196)
!2429 = distinct !DISubprogram(name: "quotearg_alloc", scope: !158, file: !158, line: 791, type: !2430, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!50, !61, !53, !1272}
!2432 = !{!2433, !2434, !2435}
!2433 = !DILocalVariable(name: "arg", arg: 1, scope: !2429, file: !158, line: 791, type: !61)
!2434 = !DILocalVariable(name: "argsize", arg: 2, scope: !2429, file: !158, line: 791, type: !53)
!2435 = !DILocalVariable(name: "o", arg: 3, scope: !2429, file: !158, line: 792, type: !1272)
!2436 = !DILocation(line: 791, column: 29, scope: !2429)
!2437 = !DILocation(line: 791, column: 41, scope: !2429)
!2438 = !DILocation(line: 792, column: 47, scope: !2429)
!2439 = !DILocalVariable(name: "arg", arg: 1, scope: !2440, file: !158, line: 804, type: !61)
!2440 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !158, file: !158, line: 804, type: !2441, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!50, !61, !53, !571, !1272}
!2443 = !{!2439, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451}
!2444 = !DILocalVariable(name: "argsize", arg: 2, scope: !2440, file: !158, line: 804, type: !53)
!2445 = !DILocalVariable(name: "size", arg: 3, scope: !2440, file: !158, line: 804, type: !571)
!2446 = !DILocalVariable(name: "o", arg: 4, scope: !2440, file: !158, line: 805, type: !1272)
!2447 = !DILocalVariable(name: "p", scope: !2440, file: !158, line: 807, type: !1272)
!2448 = !DILocalVariable(name: "e", scope: !2440, file: !158, line: 808, type: !43)
!2449 = !DILocalVariable(name: "flags", scope: !2440, file: !158, line: 810, type: !43)
!2450 = !DILocalVariable(name: "bufsize", scope: !2440, file: !158, line: 811, type: !53)
!2451 = !DILocalVariable(name: "buf", scope: !2440, file: !158, line: 815, type: !50)
!2452 = !DILocation(line: 804, column: 33, scope: !2440, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 794, column: 10, scope: !2429)
!2454 = !DILocation(line: 804, column: 45, scope: !2440, inlinedAt: !2453)
!2455 = !DILocation(line: 804, column: 62, scope: !2440, inlinedAt: !2453)
!2456 = !DILocation(line: 805, column: 51, scope: !2440, inlinedAt: !2453)
!2457 = !DILocation(line: 807, column: 37, scope: !2440, inlinedAt: !2453)
!2458 = !DILocation(line: 807, column: 33, scope: !2440, inlinedAt: !2453)
!2459 = !DILocation(line: 808, column: 11, scope: !2440, inlinedAt: !2453)
!2460 = !DILocation(line: 808, column: 7, scope: !2440, inlinedAt: !2453)
!2461 = !DILocation(line: 810, column: 18, scope: !2440, inlinedAt: !2453)
!2462 = !DILocation(line: 810, column: 24, scope: !2440, inlinedAt: !2453)
!2463 = !DILocation(line: 810, column: 7, scope: !2440, inlinedAt: !2453)
!2464 = !DILocation(line: 811, column: 69, scope: !2440, inlinedAt: !2453)
!2465 = !DILocation(line: 812, column: 53, scope: !2440, inlinedAt: !2453)
!2466 = !DILocation(line: 813, column: 49, scope: !2440, inlinedAt: !2453)
!2467 = !DILocation(line: 814, column: 49, scope: !2440, inlinedAt: !2453)
!2468 = !DILocation(line: 811, column: 20, scope: !2440, inlinedAt: !2453)
!2469 = !DILocation(line: 814, column: 62, scope: !2440, inlinedAt: !2453)
!2470 = !DILocation(line: 811, column: 10, scope: !2440, inlinedAt: !2453)
!2471 = !DILocalVariable(name: "n", arg: 1, scope: !2472, file: !567, line: 220, type: !53)
!2472 = distinct !DISubprogram(name: "xcharalloc", scope: !567, file: !567, line: 220, type: !2473, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!50, !53}
!2475 = !{!2471}
!2476 = !DILocation(line: 220, column: 20, scope: !2472, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 815, column: 15, scope: !2440, inlinedAt: !2453)
!2478 = !DILocation(line: 222, column: 10, scope: !2472, inlinedAt: !2477)
!2479 = !DILocation(line: 815, column: 9, scope: !2440, inlinedAt: !2453)
!2480 = !DILocation(line: 816, column: 60, scope: !2440, inlinedAt: !2453)
!2481 = !DILocation(line: 818, column: 32, scope: !2440, inlinedAt: !2453)
!2482 = !DILocation(line: 818, column: 47, scope: !2440, inlinedAt: !2453)
!2483 = !DILocation(line: 816, column: 3, scope: !2440, inlinedAt: !2453)
!2484 = !DILocation(line: 819, column: 9, scope: !2440, inlinedAt: !2453)
!2485 = !DILocation(line: 794, column: 3, scope: !2429)
!2486 = !DILocation(line: 804, column: 33, scope: !2440)
!2487 = !DILocation(line: 804, column: 45, scope: !2440)
!2488 = !DILocation(line: 804, column: 62, scope: !2440)
!2489 = !DILocation(line: 805, column: 51, scope: !2440)
!2490 = !DILocation(line: 807, column: 37, scope: !2440)
!2491 = !DILocation(line: 807, column: 33, scope: !2440)
!2492 = !DILocation(line: 808, column: 11, scope: !2440)
!2493 = !DILocation(line: 808, column: 7, scope: !2440)
!2494 = !DILocation(line: 810, column: 18, scope: !2440)
!2495 = !DILocation(line: 810, column: 27, scope: !2440)
!2496 = !DILocation(line: 810, column: 24, scope: !2440)
!2497 = !DILocation(line: 810, column: 7, scope: !2440)
!2498 = !DILocation(line: 811, column: 69, scope: !2440)
!2499 = !DILocation(line: 812, column: 53, scope: !2440)
!2500 = !DILocation(line: 813, column: 49, scope: !2440)
!2501 = !DILocation(line: 814, column: 49, scope: !2440)
!2502 = !DILocation(line: 811, column: 20, scope: !2440)
!2503 = !DILocation(line: 814, column: 62, scope: !2440)
!2504 = !DILocation(line: 811, column: 10, scope: !2440)
!2505 = !DILocation(line: 220, column: 20, scope: !2472, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 815, column: 15, scope: !2440)
!2507 = !DILocation(line: 222, column: 10, scope: !2472, inlinedAt: !2506)
!2508 = !DILocation(line: 815, column: 9, scope: !2440)
!2509 = !DILocation(line: 816, column: 60, scope: !2440)
!2510 = !DILocation(line: 818, column: 32, scope: !2440)
!2511 = !DILocation(line: 818, column: 47, scope: !2440)
!2512 = !DILocation(line: 816, column: 3, scope: !2440)
!2513 = !DILocation(line: 819, column: 9, scope: !2440)
!2514 = !DILocation(line: 820, column: 7, scope: !2440)
!2515 = !DILocation(line: 821, column: 11, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2440, file: !158, line: 820, column: 7)
!2517 = !{!912, !912, i64 0}
!2518 = !DILocation(line: 821, column: 5, scope: !2516)
!2519 = !DILocation(line: 822, column: 3, scope: !2440)
!2520 = distinct !DISubprogram(name: "quotearg_free", scope: !158, file: !158, line: 840, type: !646, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2521)
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "sv", scope: !2520, file: !158, line: 842, type: !185)
!2523 = !DILocalVariable(name: "i", scope: !2520, file: !158, line: 843, type: !43)
!2524 = !DILocation(line: 842, column: 24, scope: !2520)
!2525 = !DILocation(line: 842, column: 19, scope: !2520)
!2526 = !DILocation(line: 843, column: 7, scope: !2520)
!2527 = !DILocation(line: 844, column: 19, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2529, file: !158, discriminator: 1)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !158, line: 844, column: 3)
!2530 = distinct !DILexicalBlock(scope: !2520, file: !158, line: 844, column: 3)
!2531 = !DILocation(line: 844, column: 17, scope: !2528)
!2532 = !DILocation(line: 844, column: 3, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2530, file: !158, discriminator: 1)
!2534 = !DILocation(line: 845, column: 17, scope: !2529)
!2535 = !{!2536, !631, i64 8}
!2536 = !{!"slotvec", !912, i64 0, !631, i64 8}
!2537 = !DILocation(line: 845, column: 5, scope: !2529)
!2538 = !DILocation(line: 844, column: 28, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2529, file: !158, discriminator: 2)
!2540 = distinct !{!2540, !2541, !2542}
!2541 = !DILocation(line: 844, column: 3, scope: !2530)
!2542 = !DILocation(line: 845, column: 20, scope: !2530)
!2543 = !DILocation(line: 846, column: 13, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2520, file: !158, line: 846, column: 7)
!2545 = !DILocation(line: 846, column: 17, scope: !2544)
!2546 = !DILocation(line: 846, column: 7, scope: !2520)
!2547 = !DILocation(line: 848, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !158, line: 847, column: 5)
!2549 = !DILocation(line: 849, column: 21, scope: !2548)
!2550 = !{!2536, !912, i64 0}
!2551 = !DILocation(line: 850, column: 20, scope: !2548)
!2552 = !DILocation(line: 851, column: 5, scope: !2548)
!2553 = !DILocation(line: 852, column: 10, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2520, file: !158, line: 852, column: 7)
!2555 = !DILocation(line: 852, column: 7, scope: !2520)
!2556 = !DILocation(line: 854, column: 13, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2554, file: !158, line: 853, column: 5)
!2558 = !DILocation(line: 854, column: 7, scope: !2557)
!2559 = !DILocation(line: 855, column: 15, scope: !2557)
!2560 = !DILocation(line: 856, column: 5, scope: !2557)
!2561 = !DILocation(line: 857, column: 10, scope: !2520)
!2562 = !DILocation(line: 858, column: 1, scope: !2520)
!2563 = distinct !DISubprogram(name: "quotearg_n", scope: !158, file: !158, line: 922, type: !2564, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!50, !43, !61}
!2566 = !{!2567, !2568}
!2567 = !DILocalVariable(name: "n", arg: 1, scope: !2563, file: !158, line: 922, type: !43)
!2568 = !DILocalVariable(name: "arg", arg: 2, scope: !2563, file: !158, line: 922, type: !61)
!2569 = !DILocation(line: 922, column: 17, scope: !2563)
!2570 = !DILocation(line: 922, column: 32, scope: !2563)
!2571 = !DILocation(line: 924, column: 10, scope: !2563)
!2572 = !DILocation(line: 924, column: 3, scope: !2563)
!2573 = distinct !DISubprogram(name: "quotearg_n_options", scope: !158, file: !158, line: 869, type: !2574, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!50, !43, !61, !53, !1272}
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2586, !2588, !2589, !2590}
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2573, file: !158, line: 869, type: !43)
!2578 = !DILocalVariable(name: "arg", arg: 2, scope: !2573, file: !158, line: 869, type: !61)
!2579 = !DILocalVariable(name: "argsize", arg: 3, scope: !2573, file: !158, line: 869, type: !53)
!2580 = !DILocalVariable(name: "options", arg: 4, scope: !2573, file: !158, line: 870, type: !1272)
!2581 = !DILocalVariable(name: "e", scope: !2573, file: !158, line: 872, type: !43)
!2582 = !DILocalVariable(name: "sv", scope: !2573, file: !158, line: 874, type: !185)
!2583 = !DILocalVariable(name: "preallocated", scope: !2584, file: !158, line: 881, type: !71)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !158, line: 880, column: 5)
!2585 = distinct !DILexicalBlock(scope: !2573, file: !158, line: 879, column: 7)
!2586 = !DILocalVariable(name: "size", scope: !2587, file: !158, line: 894, type: !53)
!2587 = distinct !DILexicalBlock(scope: !2573, file: !158, line: 893, column: 3)
!2588 = !DILocalVariable(name: "val", scope: !2587, file: !158, line: 895, type: !50)
!2589 = !DILocalVariable(name: "flags", scope: !2587, file: !158, line: 897, type: !43)
!2590 = !DILocalVariable(name: "qsize", scope: !2587, file: !158, line: 898, type: !53)
!2591 = !DILocation(line: 869, column: 25, scope: !2573)
!2592 = !DILocation(line: 869, column: 40, scope: !2573)
!2593 = !DILocation(line: 869, column: 52, scope: !2573)
!2594 = !DILocation(line: 870, column: 51, scope: !2573)
!2595 = !DILocation(line: 872, column: 11, scope: !2573)
!2596 = !DILocation(line: 872, column: 7, scope: !2573)
!2597 = !DILocation(line: 874, column: 24, scope: !2573)
!2598 = !DILocation(line: 874, column: 19, scope: !2573)
!2599 = !DILocation(line: 876, column: 9, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2573, file: !158, line: 876, column: 7)
!2601 = !DILocation(line: 876, column: 7, scope: !2573)
!2602 = !DILocation(line: 877, column: 5, scope: !2600)
!2603 = !DILocation(line: 879, column: 7, scope: !2585)
!2604 = !DILocation(line: 879, column: 14, scope: !2585)
!2605 = !DILocation(line: 879, column: 7, scope: !2573)
!2606 = !DILocation(line: 881, column: 31, scope: !2584)
!2607 = !DILocation(line: 883, column: 67, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2584, file: !158, line: 883, column: 11)
!2609 = !DILocation(line: 883, column: 11, scope: !2584)
!2610 = !DILocation(line: 884, column: 9, scope: !2608)
!2611 = !DILocation(line: 886, column: 32, scope: !2612)
!2612 = !DILexicalBlockFile(scope: !2584, file: !158, discriminator: 3)
!2613 = !DILocation(line: 886, column: 61, scope: !2612)
!2614 = !DILocation(line: 886, column: 58, scope: !2612)
!2615 = !DILocation(line: 886, column: 66, scope: !2612)
!2616 = !DILocation(line: 886, column: 22, scope: !2612)
!2617 = !DILocation(line: 886, column: 15, scope: !2612)
!2618 = !DILocation(line: 887, column: 11, scope: !2584)
!2619 = !DILocation(line: 888, column: 15, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2584, file: !158, line: 887, column: 11)
!2621 = !{i64 0, i64 8, !2517, i64 8, i64 8, !630}
!2622 = !DILocation(line: 888, column: 9, scope: !2620)
!2623 = !DILocation(line: 889, column: 20, scope: !2584)
!2624 = !DILocation(line: 889, column: 18, scope: !2584)
!2625 = !DILocation(line: 889, column: 7, scope: !2584)
!2626 = !DILocation(line: 889, column: 38, scope: !2584)
!2627 = !DILocation(line: 889, column: 31, scope: !2584)
!2628 = !DILocation(line: 889, column: 48, scope: !2584)
!2629 = !DILocation(line: 890, column: 14, scope: !2584)
!2630 = !DILocation(line: 891, column: 5, scope: !2584)
!2631 = !DILocation(line: 894, column: 19, scope: !2587)
!2632 = !DILocation(line: 894, column: 25, scope: !2587)
!2633 = !DILocation(line: 894, column: 12, scope: !2587)
!2634 = !DILocation(line: 895, column: 23, scope: !2587)
!2635 = !DILocation(line: 895, column: 11, scope: !2587)
!2636 = !DILocation(line: 897, column: 26, scope: !2587)
!2637 = !DILocation(line: 897, column: 32, scope: !2587)
!2638 = !DILocation(line: 897, column: 9, scope: !2587)
!2639 = !DILocation(line: 899, column: 55, scope: !2587)
!2640 = !DILocation(line: 900, column: 46, scope: !2587)
!2641 = !DILocation(line: 901, column: 55, scope: !2587)
!2642 = !DILocation(line: 902, column: 55, scope: !2587)
!2643 = !DILocation(line: 898, column: 20, scope: !2587)
!2644 = !DILocation(line: 898, column: 12, scope: !2587)
!2645 = !DILocation(line: 904, column: 14, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2587, file: !158, line: 904, column: 9)
!2647 = !DILocation(line: 904, column: 9, scope: !2587)
!2648 = !DILocation(line: 906, column: 35, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !158, line: 905, column: 7)
!2650 = !DILocation(line: 906, column: 20, scope: !2649)
!2651 = !DILocation(line: 907, column: 17, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !158, line: 907, column: 13)
!2653 = !DILocation(line: 907, column: 13, scope: !2649)
!2654 = !DILocation(line: 908, column: 11, scope: !2652)
!2655 = !DILocation(line: 220, column: 20, scope: !2472, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 909, column: 27, scope: !2649)
!2657 = !DILocation(line: 222, column: 10, scope: !2472, inlinedAt: !2656)
!2658 = !DILocation(line: 909, column: 19, scope: !2649)
!2659 = !DILocation(line: 910, column: 69, scope: !2649)
!2660 = !DILocation(line: 912, column: 44, scope: !2649)
!2661 = !DILocation(line: 913, column: 44, scope: !2649)
!2662 = !DILocation(line: 910, column: 9, scope: !2649)
!2663 = !DILocation(line: 914, column: 7, scope: !2649)
!2664 = !DILocation(line: 916, column: 11, scope: !2587)
!2665 = !DILocation(line: 917, column: 5, scope: !2587)
!2666 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !158, file: !158, line: 928, type: !2667, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!50, !43, !61, !53}
!2669 = !{!2670, !2671, !2672}
!2670 = !DILocalVariable(name: "n", arg: 1, scope: !2666, file: !158, line: 928, type: !43)
!2671 = !DILocalVariable(name: "arg", arg: 2, scope: !2666, file: !158, line: 928, type: !61)
!2672 = !DILocalVariable(name: "argsize", arg: 3, scope: !2666, file: !158, line: 928, type: !53)
!2673 = !DILocation(line: 928, column: 21, scope: !2666)
!2674 = !DILocation(line: 928, column: 36, scope: !2666)
!2675 = !DILocation(line: 928, column: 48, scope: !2666)
!2676 = !DILocation(line: 930, column: 10, scope: !2666)
!2677 = !DILocation(line: 930, column: 3, scope: !2666)
!2678 = distinct !DISubprogram(name: "quotearg", scope: !158, file: !158, line: 934, type: !2679, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!50, !61}
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "arg", arg: 1, scope: !2678, file: !158, line: 934, type: !61)
!2683 = !DILocation(line: 934, column: 23, scope: !2678)
!2684 = !DILocation(line: 922, column: 17, scope: !2563, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 936, column: 10, scope: !2678)
!2686 = !DILocation(line: 922, column: 32, scope: !2563, inlinedAt: !2685)
!2687 = !DILocation(line: 924, column: 10, scope: !2563, inlinedAt: !2685)
!2688 = !DILocation(line: 936, column: 3, scope: !2678)
!2689 = distinct !DISubprogram(name: "quotearg_mem", scope: !158, file: !158, line: 940, type: !2690, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!50, !61, !53}
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "arg", arg: 1, scope: !2689, file: !158, line: 940, type: !61)
!2694 = !DILocalVariable(name: "argsize", arg: 2, scope: !2689, file: !158, line: 940, type: !53)
!2695 = !DILocation(line: 940, column: 27, scope: !2689)
!2696 = !DILocation(line: 940, column: 39, scope: !2689)
!2697 = !DILocation(line: 928, column: 21, scope: !2666, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 942, column: 10, scope: !2689)
!2699 = !DILocation(line: 928, column: 36, scope: !2666, inlinedAt: !2698)
!2700 = !DILocation(line: 928, column: 48, scope: !2666, inlinedAt: !2698)
!2701 = !DILocation(line: 930, column: 10, scope: !2666, inlinedAt: !2698)
!2702 = !DILocation(line: 942, column: 3, scope: !2689)
!2703 = distinct !DISubprogram(name: "quotearg_n_style", scope: !158, file: !158, line: 946, type: !2704, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!50, !43, !28, !61}
!2706 = !{!2707, !2708, !2709, !2710}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !158, line: 946, type: !43)
!2708 = !DILocalVariable(name: "s", arg: 2, scope: !2703, file: !158, line: 946, type: !28)
!2709 = !DILocalVariable(name: "arg", arg: 3, scope: !2703, file: !158, line: 946, type: !61)
!2710 = !DILocalVariable(name: "o", scope: !2703, file: !158, line: 948, type: !1273)
!2711 = !DILocalVariable(name: "o", scope: !2712, file: !158, line: 187, type: !165)
!2712 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !158, file: !158, line: 185, type: !2713, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!165, !28}
!2715 = !{!2716, !2711}
!2716 = !DILocalVariable(name: "style", arg: 1, scope: !2712, file: !158, line: 185, type: !28)
!2717 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!2718 = !DILocation(line: 187, column: 26, scope: !2712, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 948, column: 36, scope: !2703)
!2720 = !DILocation(line: 946, column: 23, scope: !2703)
!2721 = !DILocation(line: 946, column: 45, scope: !2703)
!2722 = !DILocation(line: 946, column: 60, scope: !2703)
!2723 = !DILocation(line: 948, column: 3, scope: !2703)
!2724 = !DILocation(line: 948, column: 32, scope: !2703)
!2725 = !DILocation(line: 185, column: 48, scope: !2712, inlinedAt: !2719)
!2726 = !DILocation(line: 187, column: 3, scope: !2712, inlinedAt: !2719)
!2727 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!2728 = !DILocation(line: 188, column: 13, scope: !2729, inlinedAt: !2719)
!2729 = distinct !DILexicalBlock(scope: !2712, file: !158, line: 188, column: 7)
!2730 = !DILocation(line: 188, column: 7, scope: !2712, inlinedAt: !2719)
!2731 = !DILocation(line: 189, column: 5, scope: !2729, inlinedAt: !2719)
!2732 = !{!2733}
!2733 = distinct !{!2733, !2734, !"quoting_options_from_style: argument 0"}
!2734 = distinct !{!2734, !"quoting_options_from_style"}
!2735 = !DILocation(line: 191, column: 10, scope: !2712, inlinedAt: !2719)
!2736 = !DILocation(line: 192, column: 1, scope: !2712, inlinedAt: !2719)
!2737 = !DILocation(line: 949, column: 10, scope: !2703)
!2738 = !DILocation(line: 950, column: 1, scope: !2703)
!2739 = !DILocation(line: 949, column: 3, scope: !2703)
!2740 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !158, file: !158, line: 953, type: !2741, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!50, !43, !28, !61, !53}
!2743 = !{!2744, !2745, !2746, !2747, !2748}
!2744 = !DILocalVariable(name: "n", arg: 1, scope: !2740, file: !158, line: 953, type: !43)
!2745 = !DILocalVariable(name: "s", arg: 2, scope: !2740, file: !158, line: 953, type: !28)
!2746 = !DILocalVariable(name: "arg", arg: 3, scope: !2740, file: !158, line: 954, type: !61)
!2747 = !DILocalVariable(name: "argsize", arg: 4, scope: !2740, file: !158, line: 954, type: !53)
!2748 = !DILocalVariable(name: "o", scope: !2740, file: !158, line: 956, type: !1273)
!2749 = !DILocation(line: 187, column: 26, scope: !2712, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 956, column: 36, scope: !2740)
!2751 = !DILocation(line: 953, column: 27, scope: !2740)
!2752 = !DILocation(line: 953, column: 49, scope: !2740)
!2753 = !DILocation(line: 954, column: 35, scope: !2740)
!2754 = !DILocation(line: 954, column: 47, scope: !2740)
!2755 = !DILocation(line: 956, column: 3, scope: !2740)
!2756 = !DILocation(line: 956, column: 32, scope: !2740)
!2757 = !DILocation(line: 185, column: 48, scope: !2712, inlinedAt: !2750)
!2758 = !DILocation(line: 187, column: 3, scope: !2712, inlinedAt: !2750)
!2759 = !DILocation(line: 188, column: 13, scope: !2729, inlinedAt: !2750)
!2760 = !DILocation(line: 188, column: 7, scope: !2712, inlinedAt: !2750)
!2761 = !DILocation(line: 189, column: 5, scope: !2729, inlinedAt: !2750)
!2762 = !{!2763}
!2763 = distinct !{!2763, !2764, !"quoting_options_from_style: argument 0"}
!2764 = distinct !{!2764, !"quoting_options_from_style"}
!2765 = !DILocation(line: 191, column: 10, scope: !2712, inlinedAt: !2750)
!2766 = !DILocation(line: 192, column: 1, scope: !2712, inlinedAt: !2750)
!2767 = !DILocation(line: 957, column: 10, scope: !2740)
!2768 = !DILocation(line: 958, column: 1, scope: !2740)
!2769 = !DILocation(line: 957, column: 3, scope: !2740)
!2770 = distinct !DISubprogram(name: "quotearg_style", scope: !158, file: !158, line: 961, type: !2771, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!50, !28, !61}
!2773 = !{!2774, !2775}
!2774 = !DILocalVariable(name: "s", arg: 1, scope: !2770, file: !158, line: 961, type: !28)
!2775 = !DILocalVariable(name: "arg", arg: 2, scope: !2770, file: !158, line: 961, type: !61)
!2776 = !DILocation(line: 187, column: 26, scope: !2712, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 948, column: 36, scope: !2703, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 963, column: 10, scope: !2770)
!2779 = !DILocation(line: 961, column: 36, scope: !2770)
!2780 = !DILocation(line: 961, column: 51, scope: !2770)
!2781 = !DILocation(line: 946, column: 23, scope: !2703, inlinedAt: !2778)
!2782 = !DILocation(line: 946, column: 45, scope: !2703, inlinedAt: !2778)
!2783 = !DILocation(line: 946, column: 60, scope: !2703, inlinedAt: !2778)
!2784 = !DILocation(line: 948, column: 3, scope: !2703, inlinedAt: !2778)
!2785 = !DILocation(line: 948, column: 32, scope: !2703, inlinedAt: !2778)
!2786 = !DILocation(line: 185, column: 48, scope: !2712, inlinedAt: !2777)
!2787 = !DILocation(line: 187, column: 3, scope: !2712, inlinedAt: !2777)
!2788 = !DILocation(line: 188, column: 13, scope: !2729, inlinedAt: !2777)
!2789 = !DILocation(line: 188, column: 7, scope: !2712, inlinedAt: !2777)
!2790 = !DILocation(line: 189, column: 5, scope: !2729, inlinedAt: !2777)
!2791 = !{!2792}
!2792 = distinct !{!2792, !2793, !"quoting_options_from_style: argument 0"}
!2793 = distinct !{!2793, !"quoting_options_from_style"}
!2794 = !DILocation(line: 191, column: 10, scope: !2712, inlinedAt: !2777)
!2795 = !DILocation(line: 192, column: 1, scope: !2712, inlinedAt: !2777)
!2796 = !DILocation(line: 949, column: 10, scope: !2703, inlinedAt: !2778)
!2797 = !DILocation(line: 950, column: 1, scope: !2703, inlinedAt: !2778)
!2798 = !DILocation(line: 963, column: 3, scope: !2770)
!2799 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !158, file: !158, line: 967, type: !2800, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!50, !28, !61, !53}
!2802 = !{!2803, !2804, !2805}
!2803 = !DILocalVariable(name: "s", arg: 1, scope: !2799, file: !158, line: 967, type: !28)
!2804 = !DILocalVariable(name: "arg", arg: 2, scope: !2799, file: !158, line: 967, type: !61)
!2805 = !DILocalVariable(name: "argsize", arg: 3, scope: !2799, file: !158, line: 967, type: !53)
!2806 = !DILocation(line: 187, column: 26, scope: !2712, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 956, column: 36, scope: !2740, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 969, column: 10, scope: !2799)
!2809 = !DILocation(line: 967, column: 40, scope: !2799)
!2810 = !DILocation(line: 967, column: 55, scope: !2799)
!2811 = !DILocation(line: 967, column: 67, scope: !2799)
!2812 = !DILocation(line: 953, column: 27, scope: !2740, inlinedAt: !2808)
!2813 = !DILocation(line: 953, column: 49, scope: !2740, inlinedAt: !2808)
!2814 = !DILocation(line: 954, column: 35, scope: !2740, inlinedAt: !2808)
!2815 = !DILocation(line: 954, column: 47, scope: !2740, inlinedAt: !2808)
!2816 = !DILocation(line: 956, column: 3, scope: !2740, inlinedAt: !2808)
!2817 = !DILocation(line: 956, column: 32, scope: !2740, inlinedAt: !2808)
!2818 = !DILocation(line: 185, column: 48, scope: !2712, inlinedAt: !2807)
!2819 = !DILocation(line: 187, column: 3, scope: !2712, inlinedAt: !2807)
!2820 = !DILocation(line: 188, column: 13, scope: !2729, inlinedAt: !2807)
!2821 = !DILocation(line: 188, column: 7, scope: !2712, inlinedAt: !2807)
!2822 = !DILocation(line: 189, column: 5, scope: !2729, inlinedAt: !2807)
!2823 = !{!2824}
!2824 = distinct !{!2824, !2825, !"quoting_options_from_style: argument 0"}
!2825 = distinct !{!2825, !"quoting_options_from_style"}
!2826 = !DILocation(line: 191, column: 10, scope: !2712, inlinedAt: !2807)
!2827 = !DILocation(line: 192, column: 1, scope: !2712, inlinedAt: !2807)
!2828 = !DILocation(line: 957, column: 10, scope: !2740, inlinedAt: !2808)
!2829 = !DILocation(line: 958, column: 1, scope: !2740, inlinedAt: !2808)
!2830 = !DILocation(line: 969, column: 3, scope: !2799)
!2831 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !158, file: !158, line: 973, type: !2832, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!50, !61, !53, !51}
!2834 = !{!2835, !2836, !2837, !2838}
!2835 = !DILocalVariable(name: "arg", arg: 1, scope: !2831, file: !158, line: 973, type: !61)
!2836 = !DILocalVariable(name: "argsize", arg: 2, scope: !2831, file: !158, line: 973, type: !53)
!2837 = !DILocalVariable(name: "ch", arg: 3, scope: !2831, file: !158, line: 973, type: !51)
!2838 = !DILocalVariable(name: "options", scope: !2831, file: !158, line: 975, type: !165)
!2839 = !DILocation(line: 973, column: 32, scope: !2831)
!2840 = !DILocation(line: 973, column: 44, scope: !2831)
!2841 = !DILocation(line: 973, column: 58, scope: !2831)
!2842 = !DILocation(line: 975, column: 3, scope: !2831)
!2843 = !DILocation(line: 976, column: 13, scope: !2831)
!2844 = !{i64 0, i64 4, !778, i64 4, i64 4, !829, i64 8, i64 32, !778, i64 40, i64 8, !630, i64 48, i64 8, !630}
!2845 = !DILocation(line: 975, column: 26, scope: !2831)
!2846 = !DILocation(line: 144, column: 43, scope: !1296, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 977, column: 3, scope: !2831)
!2848 = !DILocation(line: 144, column: 51, scope: !1296, inlinedAt: !2847)
!2849 = !DILocation(line: 144, column: 58, scope: !1296, inlinedAt: !2847)
!2850 = !DILocation(line: 146, column: 17, scope: !1296, inlinedAt: !2847)
!2851 = !DILocation(line: 148, column: 62, scope: !1314, inlinedAt: !2847)
!2852 = !DILocation(line: 148, column: 57, scope: !1314, inlinedAt: !2847)
!2853 = !DILocation(line: 147, column: 17, scope: !1296, inlinedAt: !2847)
!2854 = !DILocation(line: 149, column: 18, scope: !1296, inlinedAt: !2847)
!2855 = !DILocation(line: 149, column: 15, scope: !1296, inlinedAt: !2847)
!2856 = !DILocation(line: 149, column: 7, scope: !1296, inlinedAt: !2847)
!2857 = !DILocation(line: 150, column: 12, scope: !1296, inlinedAt: !2847)
!2858 = !DILocation(line: 150, column: 15, scope: !1296, inlinedAt: !2847)
!2859 = !DILocation(line: 150, column: 25, scope: !1296, inlinedAt: !2847)
!2860 = !DILocation(line: 150, column: 7, scope: !1296, inlinedAt: !2847)
!2861 = !DILocation(line: 151, column: 18, scope: !1296, inlinedAt: !2847)
!2862 = !DILocation(line: 151, column: 23, scope: !1296, inlinedAt: !2847)
!2863 = !DILocation(line: 151, column: 6, scope: !1296, inlinedAt: !2847)
!2864 = !DILocation(line: 978, column: 10, scope: !2831)
!2865 = !DILocation(line: 979, column: 1, scope: !2831)
!2866 = !DILocation(line: 978, column: 3, scope: !2831)
!2867 = distinct !DISubprogram(name: "quotearg_char", scope: !158, file: !158, line: 982, type: !2868, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!50, !61, !51}
!2870 = !{!2871, !2872}
!2871 = !DILocalVariable(name: "arg", arg: 1, scope: !2867, file: !158, line: 982, type: !61)
!2872 = !DILocalVariable(name: "ch", arg: 2, scope: !2867, file: !158, line: 982, type: !51)
!2873 = !DILocation(line: 982, column: 28, scope: !2867)
!2874 = !DILocation(line: 982, column: 38, scope: !2867)
!2875 = !DILocation(line: 973, column: 32, scope: !2831, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 984, column: 10, scope: !2867)
!2877 = !DILocation(line: 973, column: 44, scope: !2831, inlinedAt: !2876)
!2878 = !DILocation(line: 973, column: 58, scope: !2831, inlinedAt: !2876)
!2879 = !DILocation(line: 975, column: 3, scope: !2831, inlinedAt: !2876)
!2880 = !DILocation(line: 976, column: 13, scope: !2831, inlinedAt: !2876)
!2881 = !DILocation(line: 975, column: 26, scope: !2831, inlinedAt: !2876)
!2882 = !DILocation(line: 144, column: 43, scope: !1296, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 977, column: 3, scope: !2831, inlinedAt: !2876)
!2884 = !DILocation(line: 144, column: 51, scope: !1296, inlinedAt: !2883)
!2885 = !DILocation(line: 144, column: 58, scope: !1296, inlinedAt: !2883)
!2886 = !DILocation(line: 146, column: 17, scope: !1296, inlinedAt: !2883)
!2887 = !DILocation(line: 148, column: 62, scope: !1314, inlinedAt: !2883)
!2888 = !DILocation(line: 148, column: 57, scope: !1314, inlinedAt: !2883)
!2889 = !DILocation(line: 147, column: 17, scope: !1296, inlinedAt: !2883)
!2890 = !DILocation(line: 149, column: 18, scope: !1296, inlinedAt: !2883)
!2891 = !DILocation(line: 149, column: 15, scope: !1296, inlinedAt: !2883)
!2892 = !DILocation(line: 149, column: 7, scope: !1296, inlinedAt: !2883)
!2893 = !DILocation(line: 150, column: 12, scope: !1296, inlinedAt: !2883)
!2894 = !DILocation(line: 150, column: 15, scope: !1296, inlinedAt: !2883)
!2895 = !DILocation(line: 150, column: 25, scope: !1296, inlinedAt: !2883)
!2896 = !DILocation(line: 150, column: 7, scope: !1296, inlinedAt: !2883)
!2897 = !DILocation(line: 151, column: 18, scope: !1296, inlinedAt: !2883)
!2898 = !DILocation(line: 151, column: 23, scope: !1296, inlinedAt: !2883)
!2899 = !DILocation(line: 151, column: 6, scope: !1296, inlinedAt: !2883)
!2900 = !DILocation(line: 978, column: 10, scope: !2831, inlinedAt: !2876)
!2901 = !DILocation(line: 979, column: 1, scope: !2831, inlinedAt: !2876)
!2902 = !DILocation(line: 984, column: 3, scope: !2867)
!2903 = distinct !DISubprogram(name: "quotearg_colon", scope: !158, file: !158, line: 988, type: !2679, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2904)
!2904 = !{!2905}
!2905 = !DILocalVariable(name: "arg", arg: 1, scope: !2903, file: !158, line: 988, type: !61)
!2906 = !DILocation(line: 988, column: 29, scope: !2903)
!2907 = !DILocation(line: 982, column: 28, scope: !2867, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 990, column: 10, scope: !2903)
!2909 = !DILocation(line: 982, column: 38, scope: !2867, inlinedAt: !2908)
!2910 = !DILocation(line: 973, column: 32, scope: !2831, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 984, column: 10, scope: !2867, inlinedAt: !2908)
!2912 = !DILocation(line: 973, column: 44, scope: !2831, inlinedAt: !2911)
!2913 = !DILocation(line: 973, column: 58, scope: !2831, inlinedAt: !2911)
!2914 = !DILocation(line: 975, column: 3, scope: !2831, inlinedAt: !2911)
!2915 = !DILocation(line: 976, column: 13, scope: !2831, inlinedAt: !2911)
!2916 = !DILocation(line: 975, column: 26, scope: !2831, inlinedAt: !2911)
!2917 = !DILocation(line: 144, column: 43, scope: !1296, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 977, column: 3, scope: !2831, inlinedAt: !2911)
!2919 = !DILocation(line: 144, column: 51, scope: !1296, inlinedAt: !2918)
!2920 = !DILocation(line: 144, column: 58, scope: !1296, inlinedAt: !2918)
!2921 = !DILocation(line: 146, column: 17, scope: !1296, inlinedAt: !2918)
!2922 = !DILocation(line: 148, column: 57, scope: !1314, inlinedAt: !2918)
!2923 = !DILocation(line: 147, column: 17, scope: !1296, inlinedAt: !2918)
!2924 = !DILocation(line: 149, column: 7, scope: !1296, inlinedAt: !2918)
!2925 = !DILocation(line: 150, column: 12, scope: !1296, inlinedAt: !2918)
!2926 = !DILocation(line: 151, column: 6, scope: !1296, inlinedAt: !2918)
!2927 = !DILocation(line: 978, column: 10, scope: !2831, inlinedAt: !2911)
!2928 = !DILocation(line: 979, column: 1, scope: !2831, inlinedAt: !2911)
!2929 = !DILocation(line: 990, column: 3, scope: !2903)
!2930 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !158, file: !158, line: 994, type: !2690, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2931)
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "arg", arg: 1, scope: !2930, file: !158, line: 994, type: !61)
!2933 = !DILocalVariable(name: "argsize", arg: 2, scope: !2930, file: !158, line: 994, type: !53)
!2934 = !DILocation(line: 994, column: 33, scope: !2930)
!2935 = !DILocation(line: 994, column: 45, scope: !2930)
!2936 = !DILocation(line: 973, column: 32, scope: !2831, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 996, column: 10, scope: !2930)
!2938 = !DILocation(line: 973, column: 44, scope: !2831, inlinedAt: !2937)
!2939 = !DILocation(line: 973, column: 58, scope: !2831, inlinedAt: !2937)
!2940 = !DILocation(line: 975, column: 3, scope: !2831, inlinedAt: !2937)
!2941 = !DILocation(line: 976, column: 13, scope: !2831, inlinedAt: !2937)
!2942 = !DILocation(line: 975, column: 26, scope: !2831, inlinedAt: !2937)
!2943 = !DILocation(line: 144, column: 43, scope: !1296, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 977, column: 3, scope: !2831, inlinedAt: !2937)
!2945 = !DILocation(line: 144, column: 51, scope: !1296, inlinedAt: !2944)
!2946 = !DILocation(line: 144, column: 58, scope: !1296, inlinedAt: !2944)
!2947 = !DILocation(line: 146, column: 17, scope: !1296, inlinedAt: !2944)
!2948 = !DILocation(line: 148, column: 57, scope: !1314, inlinedAt: !2944)
!2949 = !DILocation(line: 147, column: 17, scope: !1296, inlinedAt: !2944)
!2950 = !DILocation(line: 149, column: 7, scope: !1296, inlinedAt: !2944)
!2951 = !DILocation(line: 150, column: 12, scope: !1296, inlinedAt: !2944)
!2952 = !DILocation(line: 151, column: 6, scope: !1296, inlinedAt: !2944)
!2953 = !DILocation(line: 978, column: 10, scope: !2831, inlinedAt: !2937)
!2954 = !DILocation(line: 979, column: 1, scope: !2831, inlinedAt: !2937)
!2955 = !DILocation(line: 996, column: 3, scope: !2930)
!2956 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !158, file: !158, line: 1000, type: !2704, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2957)
!2957 = !{!2958, !2959, !2960, !2961}
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2956, file: !158, line: 1000, type: !43)
!2959 = !DILocalVariable(name: "s", arg: 2, scope: !2956, file: !158, line: 1000, type: !28)
!2960 = !DILocalVariable(name: "arg", arg: 3, scope: !2956, file: !158, line: 1000, type: !61)
!2961 = !DILocalVariable(name: "options", scope: !2956, file: !158, line: 1002, type: !165)
!2962 = !DILocation(line: 187, column: 26, scope: !2712, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 1003, column: 13, scope: !2956)
!2964 = !DILocation(line: 1000, column: 29, scope: !2956)
!2965 = !DILocation(line: 1000, column: 51, scope: !2956)
!2966 = !DILocation(line: 1000, column: 66, scope: !2956)
!2967 = !DILocation(line: 1002, column: 3, scope: !2956)
!2968 = !DILocation(line: 185, column: 48, scope: !2712, inlinedAt: !2963)
!2969 = !DILocation(line: 187, column: 3, scope: !2712, inlinedAt: !2963)
!2970 = !DILocation(line: 188, column: 13, scope: !2729, inlinedAt: !2963)
!2971 = !DILocation(line: 188, column: 7, scope: !2712, inlinedAt: !2963)
!2972 = !DILocation(line: 189, column: 5, scope: !2729, inlinedAt: !2963)
!2973 = !{!2974}
!2974 = distinct !{!2974, !2975, !"quoting_options_from_style: argument 0"}
!2975 = distinct !{!2975, !"quoting_options_from_style"}
!2976 = !DILocation(line: 191, column: 10, scope: !2712, inlinedAt: !2963)
!2977 = !DILocation(line: 192, column: 1, scope: !2712, inlinedAt: !2963)
!2978 = !DILocation(line: 1003, column: 13, scope: !2956)
!2979 = !DILocation(line: 1002, column: 26, scope: !2956)
!2980 = !DILocation(line: 144, column: 43, scope: !1296, inlinedAt: !2981)
!2981 = distinct !DILocation(line: 1004, column: 3, scope: !2956)
!2982 = !DILocation(line: 144, column: 51, scope: !1296, inlinedAt: !2981)
!2983 = !DILocation(line: 144, column: 58, scope: !1296, inlinedAt: !2981)
!2984 = !DILocation(line: 146, column: 17, scope: !1296, inlinedAt: !2981)
!2985 = !DILocation(line: 148, column: 57, scope: !1314, inlinedAt: !2981)
!2986 = !DILocation(line: 147, column: 17, scope: !1296, inlinedAt: !2981)
!2987 = !DILocation(line: 149, column: 7, scope: !1296, inlinedAt: !2981)
!2988 = !DILocation(line: 150, column: 12, scope: !1296, inlinedAt: !2981)
!2989 = !DILocation(line: 151, column: 6, scope: !1296, inlinedAt: !2981)
!2990 = !DILocation(line: 1005, column: 10, scope: !2956)
!2991 = !DILocation(line: 1006, column: 1, scope: !2956)
!2992 = !DILocation(line: 1005, column: 3, scope: !2956)
!2993 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !158, file: !158, line: 1009, type: !2994, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!50, !43, !61, !61, !61}
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !158, line: 1009, type: !43)
!2998 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2993, file: !158, line: 1009, type: !61)
!2999 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2993, file: !158, line: 1010, type: !61)
!3000 = !DILocalVariable(name: "arg", arg: 4, scope: !2993, file: !158, line: 1010, type: !61)
!3001 = !DILocation(line: 1009, column: 24, scope: !2993)
!3002 = !DILocation(line: 1009, column: 39, scope: !2993)
!3003 = !DILocation(line: 1010, column: 32, scope: !2993)
!3004 = !DILocation(line: 1010, column: 57, scope: !2993)
!3005 = !DILocalVariable(name: "n", arg: 1, scope: !3006, file: !158, line: 1017, type: !43)
!3006 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !158, file: !158, line: 1017, type: !3007, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!50, !43, !61, !61, !61, !53}
!3009 = !{!3005, !3010, !3011, !3012, !3013, !3014}
!3010 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3006, file: !158, line: 1017, type: !61)
!3011 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3006, file: !158, line: 1018, type: !61)
!3012 = !DILocalVariable(name: "arg", arg: 4, scope: !3006, file: !158, line: 1019, type: !61)
!3013 = !DILocalVariable(name: "argsize", arg: 5, scope: !3006, file: !158, line: 1019, type: !53)
!3014 = !DILocalVariable(name: "o", scope: !3006, file: !158, line: 1021, type: !165)
!3015 = !DILocation(line: 1017, column: 28, scope: !3006, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 1012, column: 10, scope: !2993)
!3017 = !DILocation(line: 1017, column: 43, scope: !3006, inlinedAt: !3016)
!3018 = !DILocation(line: 1018, column: 36, scope: !3006, inlinedAt: !3016)
!3019 = !DILocation(line: 1019, column: 36, scope: !3006, inlinedAt: !3016)
!3020 = !DILocation(line: 1019, column: 48, scope: !3006, inlinedAt: !3016)
!3021 = !DILocation(line: 1021, column: 3, scope: !3006, inlinedAt: !3016)
!3022 = !DILocation(line: 1021, column: 30, scope: !3006, inlinedAt: !3016)
!3023 = !DILocation(line: 1021, column: 26, scope: !3006, inlinedAt: !3016)
!3024 = !DILocation(line: 171, column: 45, scope: !1346, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 1022, column: 3, scope: !3006, inlinedAt: !3016)
!3026 = !DILocation(line: 172, column: 33, scope: !1346, inlinedAt: !3025)
!3027 = !DILocation(line: 172, column: 57, scope: !1346, inlinedAt: !3025)
!3028 = !DILocation(line: 176, column: 6, scope: !1346, inlinedAt: !3025)
!3029 = !DILocation(line: 176, column: 12, scope: !1346, inlinedAt: !3025)
!3030 = !DILocation(line: 177, column: 8, scope: !1362, inlinedAt: !3025)
!3031 = !DILocation(line: 177, column: 23, scope: !1364, inlinedAt: !3025)
!3032 = !DILocation(line: 177, column: 19, scope: !1362, inlinedAt: !3025)
!3033 = !DILocation(line: 178, column: 5, scope: !1362, inlinedAt: !3025)
!3034 = !DILocation(line: 179, column: 6, scope: !1346, inlinedAt: !3025)
!3035 = !DILocation(line: 179, column: 17, scope: !1346, inlinedAt: !3025)
!3036 = !DILocation(line: 180, column: 6, scope: !1346, inlinedAt: !3025)
!3037 = !DILocation(line: 180, column: 18, scope: !1346, inlinedAt: !3025)
!3038 = !DILocation(line: 1023, column: 10, scope: !3006, inlinedAt: !3016)
!3039 = !DILocation(line: 1024, column: 1, scope: !3006, inlinedAt: !3016)
!3040 = !DILocation(line: 1012, column: 3, scope: !2993)
!3041 = !DILocation(line: 1017, column: 28, scope: !3006)
!3042 = !DILocation(line: 1017, column: 43, scope: !3006)
!3043 = !DILocation(line: 1018, column: 36, scope: !3006)
!3044 = !DILocation(line: 1019, column: 36, scope: !3006)
!3045 = !DILocation(line: 1019, column: 48, scope: !3006)
!3046 = !DILocation(line: 1021, column: 3, scope: !3006)
!3047 = !DILocation(line: 1021, column: 30, scope: !3006)
!3048 = !DILocation(line: 1021, column: 26, scope: !3006)
!3049 = !DILocation(line: 171, column: 45, scope: !1346, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1022, column: 3, scope: !3006)
!3051 = !DILocation(line: 172, column: 33, scope: !1346, inlinedAt: !3050)
!3052 = !DILocation(line: 172, column: 57, scope: !1346, inlinedAt: !3050)
!3053 = !DILocation(line: 176, column: 6, scope: !1346, inlinedAt: !3050)
!3054 = !DILocation(line: 176, column: 12, scope: !1346, inlinedAt: !3050)
!3055 = !DILocation(line: 177, column: 8, scope: !1362, inlinedAt: !3050)
!3056 = !DILocation(line: 177, column: 23, scope: !1364, inlinedAt: !3050)
!3057 = !DILocation(line: 177, column: 19, scope: !1362, inlinedAt: !3050)
!3058 = !DILocation(line: 178, column: 5, scope: !1362, inlinedAt: !3050)
!3059 = !DILocation(line: 179, column: 6, scope: !1346, inlinedAt: !3050)
!3060 = !DILocation(line: 179, column: 17, scope: !1346, inlinedAt: !3050)
!3061 = !DILocation(line: 180, column: 6, scope: !1346, inlinedAt: !3050)
!3062 = !DILocation(line: 180, column: 18, scope: !1346, inlinedAt: !3050)
!3063 = !DILocation(line: 1023, column: 10, scope: !3006)
!3064 = !DILocation(line: 1024, column: 1, scope: !3006)
!3065 = !DILocation(line: 1023, column: 3, scope: !3006)
!3066 = distinct !DISubprogram(name: "quotearg_custom", scope: !158, file: !158, line: 1027, type: !3067, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!50, !61, !61, !61}
!3069 = !{!3070, !3071, !3072}
!3070 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3066, file: !158, line: 1027, type: !61)
!3071 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3066, file: !158, line: 1027, type: !61)
!3072 = !DILocalVariable(name: "arg", arg: 3, scope: !3066, file: !158, line: 1028, type: !61)
!3073 = !DILocation(line: 1027, column: 30, scope: !3066)
!3074 = !DILocation(line: 1027, column: 54, scope: !3066)
!3075 = !DILocation(line: 1028, column: 30, scope: !3066)
!3076 = !DILocation(line: 1009, column: 24, scope: !2993, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 1030, column: 10, scope: !3066)
!3078 = !DILocation(line: 1009, column: 39, scope: !2993, inlinedAt: !3077)
!3079 = !DILocation(line: 1010, column: 32, scope: !2993, inlinedAt: !3077)
!3080 = !DILocation(line: 1010, column: 57, scope: !2993, inlinedAt: !3077)
!3081 = !DILocation(line: 1017, column: 28, scope: !3006, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 1012, column: 10, scope: !2993, inlinedAt: !3077)
!3083 = !DILocation(line: 1017, column: 43, scope: !3006, inlinedAt: !3082)
!3084 = !DILocation(line: 1018, column: 36, scope: !3006, inlinedAt: !3082)
!3085 = !DILocation(line: 1019, column: 36, scope: !3006, inlinedAt: !3082)
!3086 = !DILocation(line: 1019, column: 48, scope: !3006, inlinedAt: !3082)
!3087 = !DILocation(line: 1021, column: 3, scope: !3006, inlinedAt: !3082)
!3088 = !DILocation(line: 1021, column: 30, scope: !3006, inlinedAt: !3082)
!3089 = !DILocation(line: 1021, column: 26, scope: !3006, inlinedAt: !3082)
!3090 = !DILocation(line: 171, column: 45, scope: !1346, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 1022, column: 3, scope: !3006, inlinedAt: !3082)
!3092 = !DILocation(line: 172, column: 33, scope: !1346, inlinedAt: !3091)
!3093 = !DILocation(line: 172, column: 57, scope: !1346, inlinedAt: !3091)
!3094 = !DILocation(line: 176, column: 6, scope: !1346, inlinedAt: !3091)
!3095 = !DILocation(line: 176, column: 12, scope: !1346, inlinedAt: !3091)
!3096 = !DILocation(line: 177, column: 8, scope: !1362, inlinedAt: !3091)
!3097 = !DILocation(line: 177, column: 23, scope: !1364, inlinedAt: !3091)
!3098 = !DILocation(line: 177, column: 19, scope: !1362, inlinedAt: !3091)
!3099 = !DILocation(line: 178, column: 5, scope: !1362, inlinedAt: !3091)
!3100 = !DILocation(line: 179, column: 6, scope: !1346, inlinedAt: !3091)
!3101 = !DILocation(line: 179, column: 17, scope: !1346, inlinedAt: !3091)
!3102 = !DILocation(line: 180, column: 6, scope: !1346, inlinedAt: !3091)
!3103 = !DILocation(line: 180, column: 18, scope: !1346, inlinedAt: !3091)
!3104 = !DILocation(line: 1023, column: 10, scope: !3006, inlinedAt: !3082)
!3105 = !DILocation(line: 1024, column: 1, scope: !3006, inlinedAt: !3082)
!3106 = !DILocation(line: 1030, column: 3, scope: !3066)
!3107 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !158, file: !158, line: 1034, type: !3108, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!50, !61, !61, !61, !53}
!3110 = !{!3111, !3112, !3113, !3114}
!3111 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3107, file: !158, line: 1034, type: !61)
!3112 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3107, file: !158, line: 1034, type: !61)
!3113 = !DILocalVariable(name: "arg", arg: 3, scope: !3107, file: !158, line: 1035, type: !61)
!3114 = !DILocalVariable(name: "argsize", arg: 4, scope: !3107, file: !158, line: 1035, type: !53)
!3115 = !DILocation(line: 1034, column: 34, scope: !3107)
!3116 = !DILocation(line: 1034, column: 58, scope: !3107)
!3117 = !DILocation(line: 1035, column: 34, scope: !3107)
!3118 = !DILocation(line: 1035, column: 46, scope: !3107)
!3119 = !DILocation(line: 1017, column: 28, scope: !3006, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1037, column: 10, scope: !3107)
!3121 = !DILocation(line: 1017, column: 43, scope: !3006, inlinedAt: !3120)
!3122 = !DILocation(line: 1018, column: 36, scope: !3006, inlinedAt: !3120)
!3123 = !DILocation(line: 1019, column: 36, scope: !3006, inlinedAt: !3120)
!3124 = !DILocation(line: 1019, column: 48, scope: !3006, inlinedAt: !3120)
!3125 = !DILocation(line: 1021, column: 3, scope: !3006, inlinedAt: !3120)
!3126 = !DILocation(line: 1021, column: 30, scope: !3006, inlinedAt: !3120)
!3127 = !DILocation(line: 1021, column: 26, scope: !3006, inlinedAt: !3120)
!3128 = !DILocation(line: 171, column: 45, scope: !1346, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 1022, column: 3, scope: !3006, inlinedAt: !3120)
!3130 = !DILocation(line: 172, column: 33, scope: !1346, inlinedAt: !3129)
!3131 = !DILocation(line: 172, column: 57, scope: !1346, inlinedAt: !3129)
!3132 = !DILocation(line: 176, column: 6, scope: !1346, inlinedAt: !3129)
!3133 = !DILocation(line: 176, column: 12, scope: !1346, inlinedAt: !3129)
!3134 = !DILocation(line: 177, column: 8, scope: !1362, inlinedAt: !3129)
!3135 = !DILocation(line: 177, column: 23, scope: !1364, inlinedAt: !3129)
!3136 = !DILocation(line: 177, column: 19, scope: !1362, inlinedAt: !3129)
!3137 = !DILocation(line: 178, column: 5, scope: !1362, inlinedAt: !3129)
!3138 = !DILocation(line: 179, column: 6, scope: !1346, inlinedAt: !3129)
!3139 = !DILocation(line: 179, column: 17, scope: !1346, inlinedAt: !3129)
!3140 = !DILocation(line: 180, column: 6, scope: !1346, inlinedAt: !3129)
!3141 = !DILocation(line: 180, column: 18, scope: !1346, inlinedAt: !3129)
!3142 = !DILocation(line: 1023, column: 10, scope: !3006, inlinedAt: !3120)
!3143 = !DILocation(line: 1024, column: 1, scope: !3006, inlinedAt: !3120)
!3144 = !DILocation(line: 1037, column: 3, scope: !3107)
!3145 = distinct !DISubprogram(name: "quote_n_mem", scope: !158, file: !158, line: 1052, type: !3146, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!61, !43, !61, !53}
!3148 = !{!3149, !3150, !3151}
!3149 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !158, line: 1052, type: !43)
!3150 = !DILocalVariable(name: "arg", arg: 2, scope: !3145, file: !158, line: 1052, type: !61)
!3151 = !DILocalVariable(name: "argsize", arg: 3, scope: !3145, file: !158, line: 1052, type: !53)
!3152 = !DILocation(line: 1052, column: 18, scope: !3145)
!3153 = !DILocation(line: 1052, column: 33, scope: !3145)
!3154 = !DILocation(line: 1052, column: 45, scope: !3145)
!3155 = !DILocation(line: 1054, column: 10, scope: !3145)
!3156 = !DILocation(line: 1054, column: 3, scope: !3145)
!3157 = distinct !DISubprogram(name: "quote_mem", scope: !158, file: !158, line: 1058, type: !3158, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!61, !61, !53}
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "arg", arg: 1, scope: !3157, file: !158, line: 1058, type: !61)
!3162 = !DILocalVariable(name: "argsize", arg: 2, scope: !3157, file: !158, line: 1058, type: !53)
!3163 = !DILocation(line: 1058, column: 24, scope: !3157)
!3164 = !DILocation(line: 1058, column: 36, scope: !3157)
!3165 = !DILocation(line: 1052, column: 18, scope: !3145, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 1060, column: 10, scope: !3157)
!3167 = !DILocation(line: 1052, column: 33, scope: !3145, inlinedAt: !3166)
!3168 = !DILocation(line: 1052, column: 45, scope: !3145, inlinedAt: !3166)
!3169 = !DILocation(line: 1054, column: 10, scope: !3145, inlinedAt: !3166)
!3170 = !DILocation(line: 1060, column: 3, scope: !3157)
!3171 = distinct !DISubprogram(name: "quote_n", scope: !158, file: !158, line: 1064, type: !3172, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!61, !43, !61}
!3174 = !{!3175, !3176}
!3175 = !DILocalVariable(name: "n", arg: 1, scope: !3171, file: !158, line: 1064, type: !43)
!3176 = !DILocalVariable(name: "arg", arg: 2, scope: !3171, file: !158, line: 1064, type: !61)
!3177 = !DILocation(line: 1064, column: 14, scope: !3171)
!3178 = !DILocation(line: 1064, column: 29, scope: !3171)
!3179 = !DILocation(line: 1052, column: 18, scope: !3145, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1066, column: 10, scope: !3171)
!3181 = !DILocation(line: 1052, column: 33, scope: !3145, inlinedAt: !3180)
!3182 = !DILocation(line: 1052, column: 45, scope: !3145, inlinedAt: !3180)
!3183 = !DILocation(line: 1054, column: 10, scope: !3145, inlinedAt: !3180)
!3184 = !DILocation(line: 1066, column: 3, scope: !3171)
!3185 = distinct !DISubprogram(name: "quote", scope: !158, file: !158, line: 1070, type: !3186, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !146, variables: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!61, !61}
!3188 = !{!3189}
!3189 = !DILocalVariable(name: "arg", arg: 1, scope: !3185, file: !158, line: 1070, type: !61)
!3190 = !DILocation(line: 1070, column: 20, scope: !3185)
!3191 = !DILocation(line: 1064, column: 14, scope: !3171, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1072, column: 10, scope: !3185)
!3193 = !DILocation(line: 1064, column: 29, scope: !3171, inlinedAt: !3192)
!3194 = !DILocation(line: 1052, column: 18, scope: !3145, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 1066, column: 10, scope: !3171, inlinedAt: !3192)
!3196 = !DILocation(line: 1052, column: 33, scope: !3145, inlinedAt: !3195)
!3197 = !DILocation(line: 1052, column: 45, scope: !3145, inlinedAt: !3195)
!3198 = !DILocation(line: 1054, column: 10, scope: !3145, inlinedAt: !3195)
!3199 = !DILocation(line: 1072, column: 3, scope: !3185)
!3200 = distinct !DISubprogram(name: "version_etc_arn", scope: !559, file: !559, line: 62, type: !3201, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3255)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !3203, !61, !61, !61, !3254, !53}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 49, baseType: !3205)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3206, line: 241, size: 1728, elements: !3207)
!3206 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3228, !3229, !3230, !3231, !3232, !3233, !3235, !3239, !3242, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3205, file: !3206, line: 242, baseType: !43, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3205, file: !3206, line: 247, baseType: !50, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3205, file: !3206, line: 248, baseType: !50, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3205, file: !3206, line: 249, baseType: !50, size: 64, offset: 192)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3205, file: !3206, line: 250, baseType: !50, size: 64, offset: 256)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3205, file: !3206, line: 251, baseType: !50, size: 64, offset: 320)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3205, file: !3206, line: 252, baseType: !50, size: 64, offset: 384)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3205, file: !3206, line: 253, baseType: !50, size: 64, offset: 448)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3205, file: !3206, line: 254, baseType: !50, size: 64, offset: 512)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3205, file: !3206, line: 256, baseType: !50, size: 64, offset: 576)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3205, file: !3206, line: 257, baseType: !50, size: 64, offset: 640)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3205, file: !3206, line: 258, baseType: !50, size: 64, offset: 704)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3205, file: !3206, line: 260, baseType: !3221, size: 64, offset: 768)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3206, line: 156, size: 192, elements: !3223)
!3223 = !{!3224, !3225, !3227}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3222, file: !3206, line: 157, baseType: !3221, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3222, file: !3206, line: 158, baseType: !3226, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3222, file: !3206, line: 162, baseType: !43, size: 32, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3205, file: !3206, line: 262, baseType: !3226, size: 64, offset: 832)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3205, file: !3206, line: 264, baseType: !43, size: 32, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3205, file: !3206, line: 268, baseType: !43, size: 32, offset: 928)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3205, file: !3206, line: 270, baseType: !47, size: 64, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3205, file: !3206, line: 274, baseType: !44, size: 16, offset: 1024)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3205, file: !3206, line: 275, baseType: !3234, size: 8, offset: 1040)
!3234 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3205, file: !3206, line: 276, baseType: !3236, size: 8, offset: 1048)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, elements: !3237)
!3237 = !{!3238}
!3238 = !DISubrange(count: 1)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3205, file: !3206, line: 280, baseType: !3240, size: 64, offset: 1088)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3206, line: 150, baseType: null)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3205, file: !3206, line: 289, baseType: !3243, size: 64, offset: 1152)
!3243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !48, line: 141, baseType: !49)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3205, file: !3206, line: 297, baseType: !52, size: 64, offset: 1216)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3205, file: !3206, line: 298, baseType: !52, size: 64, offset: 1280)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3205, file: !3206, line: 299, baseType: !52, size: 64, offset: 1344)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3205, file: !3206, line: 300, baseType: !52, size: 64, offset: 1408)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3205, file: !3206, line: 302, baseType: !53, size: 64, offset: 1472)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3205, file: !3206, line: 303, baseType: !43, size: 32, offset: 1536)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3205, file: !3206, line: 305, baseType: !3251, size: 160, offset: 1568)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !3252)
!3252 = !{!3253}
!3253 = !DISubrange(count: 20)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261}
!3256 = !DILocalVariable(name: "stream", arg: 1, scope: !3200, file: !559, line: 62, type: !3203)
!3257 = !DILocalVariable(name: "command_name", arg: 2, scope: !3200, file: !559, line: 63, type: !61)
!3258 = !DILocalVariable(name: "package", arg: 3, scope: !3200, file: !559, line: 63, type: !61)
!3259 = !DILocalVariable(name: "version", arg: 4, scope: !3200, file: !559, line: 64, type: !61)
!3260 = !DILocalVariable(name: "authors", arg: 5, scope: !3200, file: !559, line: 65, type: !3254)
!3261 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3200, file: !559, line: 65, type: !53)
!3262 = !DILocation(line: 62, column: 24, scope: !3200)
!3263 = !DILocation(line: 63, column: 30, scope: !3200)
!3264 = !DILocation(line: 63, column: 56, scope: !3200)
!3265 = !DILocation(line: 64, column: 30, scope: !3200)
!3266 = !DILocation(line: 65, column: 39, scope: !3200)
!3267 = !DILocation(line: 65, column: 55, scope: !3200)
!3268 = !DILocation(line: 67, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3200, file: !559, line: 67, column: 7)
!3270 = !DILocation(line: 67, column: 7, scope: !3200)
!3271 = !DILocation(line: 68, column: 5, scope: !3269)
!3272 = !DILocation(line: 70, column: 5, scope: !3269)
!3273 = !DILocation(line: 84, column: 3, scope: !3200)
!3274 = !DILocation(line: 84, column: 3, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !3200, file: !559, discriminator: 1)
!3276 = !DILocation(line: 86, column: 3, scope: !3200)
!3277 = !DILocation(line: 86, column: 3, scope: !3275)
!3278 = !DILocation(line: 95, column: 3, scope: !3200)
!3279 = !DILocation(line: 99, column: 7, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3200, file: !559, line: 96, column: 5)
!3281 = !DILocation(line: 102, column: 7, scope: !3280)
!3282 = !DILocation(line: 102, column: 7, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3280, file: !559, discriminator: 1)
!3284 = !DILocation(line: 103, column: 7, scope: !3280)
!3285 = !DILocation(line: 106, column: 7, scope: !3280)
!3286 = !DILocation(line: 106, column: 7, scope: !3283)
!3287 = !DILocation(line: 107, column: 7, scope: !3280)
!3288 = !DILocation(line: 110, column: 7, scope: !3280)
!3289 = !DILocation(line: 110, column: 7, scope: !3283)
!3290 = !DILocation(line: 112, column: 7, scope: !3280)
!3291 = !DILocation(line: 117, column: 7, scope: !3280)
!3292 = !DILocation(line: 117, column: 7, scope: !3283)
!3293 = !DILocation(line: 119, column: 7, scope: !3280)
!3294 = !DILocation(line: 124, column: 7, scope: !3280)
!3295 = !DILocation(line: 124, column: 7, scope: !3283)
!3296 = !DILocation(line: 126, column: 7, scope: !3280)
!3297 = !DILocation(line: 131, column: 7, scope: !3280)
!3298 = !DILocation(line: 131, column: 7, scope: !3283)
!3299 = !DILocation(line: 134, column: 7, scope: !3280)
!3300 = !DILocation(line: 139, column: 7, scope: !3280)
!3301 = !DILocation(line: 139, column: 7, scope: !3283)
!3302 = !DILocation(line: 142, column: 7, scope: !3280)
!3303 = !DILocation(line: 147, column: 7, scope: !3280)
!3304 = !DILocation(line: 147, column: 7, scope: !3283)
!3305 = !DILocation(line: 151, column: 7, scope: !3280)
!3306 = !DILocation(line: 156, column: 7, scope: !3280)
!3307 = !DILocation(line: 156, column: 7, scope: !3283)
!3308 = !DILocation(line: 160, column: 7, scope: !3280)
!3309 = !DILocation(line: 167, column: 7, scope: !3280)
!3310 = !DILocation(line: 167, column: 7, scope: !3283)
!3311 = !DILocation(line: 171, column: 7, scope: !3280)
!3312 = !DILocation(line: 173, column: 1, scope: !3200)
!3313 = distinct !DISubprogram(name: "version_etc_ar", scope: !559, file: !559, line: 180, type: !3314, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !3203, !61, !61, !61, !3254}
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322}
!3317 = !DILocalVariable(name: "stream", arg: 1, scope: !3313, file: !559, line: 180, type: !3203)
!3318 = !DILocalVariable(name: "command_name", arg: 2, scope: !3313, file: !559, line: 181, type: !61)
!3319 = !DILocalVariable(name: "package", arg: 3, scope: !3313, file: !559, line: 181, type: !61)
!3320 = !DILocalVariable(name: "version", arg: 4, scope: !3313, file: !559, line: 182, type: !61)
!3321 = !DILocalVariable(name: "authors", arg: 5, scope: !3313, file: !559, line: 182, type: !3254)
!3322 = !DILocalVariable(name: "n_authors", scope: !3313, file: !559, line: 184, type: !53)
!3323 = !DILocation(line: 180, column: 23, scope: !3313)
!3324 = !DILocation(line: 181, column: 29, scope: !3313)
!3325 = !DILocation(line: 181, column: 55, scope: !3313)
!3326 = !DILocation(line: 182, column: 29, scope: !3313)
!3327 = !DILocation(line: 182, column: 59, scope: !3313)
!3328 = !DILocation(line: 184, column: 10, scope: !3313)
!3329 = !DILocation(line: 186, column: 8, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3313, file: !559, line: 186, column: 3)
!3331 = !DILocation(line: 186, column: 23, scope: !3332)
!3332 = !DILexicalBlockFile(scope: !3333, file: !559, discriminator: 1)
!3333 = distinct !DILexicalBlock(scope: !3330, file: !559, line: 186, column: 3)
!3334 = !DILocation(line: 186, column: 3, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3330, file: !559, discriminator: 1)
!3336 = !DILocation(line: 186, column: 52, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3333, file: !559, discriminator: 3)
!3338 = distinct !{!3338, !3339, !3340}
!3339 = !DILocation(line: 186, column: 3, scope: !3330)
!3340 = !DILocation(line: 187, column: 5, scope: !3330)
!3341 = !DILocation(line: 188, column: 3, scope: !3313)
!3342 = !DILocation(line: 189, column: 1, scope: !3313)
!3343 = distinct !DISubprogram(name: "version_etc_va", scope: !559, file: !559, line: 196, type: !3344, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3353)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !3203, !61, !61, !61, !3346}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !556, line: 189, size: 192, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3347, file: !556, line: 189, baseType: !171, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3347, file: !556, line: 189, baseType: !171, size: 32, offset: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3347, file: !556, line: 189, baseType: !52, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3347, file: !556, line: 189, baseType: !52, size: 64, offset: 128)
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360}
!3354 = !DILocalVariable(name: "stream", arg: 1, scope: !3343, file: !559, line: 196, type: !3203)
!3355 = !DILocalVariable(name: "command_name", arg: 2, scope: !3343, file: !559, line: 197, type: !61)
!3356 = !DILocalVariable(name: "package", arg: 3, scope: !3343, file: !559, line: 197, type: !61)
!3357 = !DILocalVariable(name: "version", arg: 4, scope: !3343, file: !559, line: 198, type: !61)
!3358 = !DILocalVariable(name: "authors", arg: 5, scope: !3343, file: !559, line: 198, type: !3346)
!3359 = !DILocalVariable(name: "n_authors", scope: !3343, file: !559, line: 200, type: !53)
!3360 = !DILocalVariable(name: "authtab", scope: !3343, file: !559, line: 201, type: !3361)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !161)
!3362 = !DILocation(line: 196, column: 23, scope: !3343)
!3363 = !DILocation(line: 197, column: 29, scope: !3343)
!3364 = !DILocation(line: 197, column: 55, scope: !3343)
!3365 = !DILocation(line: 198, column: 29, scope: !3343)
!3366 = !DILocation(line: 198, column: 46, scope: !3343)
!3367 = !DILocation(line: 201, column: 3, scope: !3343)
!3368 = !DILocation(line: 201, column: 15, scope: !3343)
!3369 = !DILocation(line: 200, column: 10, scope: !3343)
!3370 = !DILocation(line: 205, column: 35, scope: !3371)
!3371 = !DILexicalBlockFile(scope: !3372, file: !559, discriminator: 1)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !559, line: 203, column: 3)
!3373 = distinct !DILexicalBlock(scope: !3343, file: !559, line: 203, column: 3)
!3374 = !DILocation(line: 205, column: 35, scope: !3375)
!3375 = !DILexicalBlockFile(scope: !3372, file: !559, discriminator: 2)
!3376 = !DILocation(line: 205, column: 35, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !3372, file: !559, discriminator: 3)
!3378 = !DILocation(line: 205, column: 35, scope: !3379)
!3379 = !DILexicalBlockFile(scope: !3372, file: !559, discriminator: 4)
!3380 = !DILocation(line: 205, column: 14, scope: !3379)
!3381 = !DILocation(line: 205, column: 33, scope: !3379)
!3382 = !DILocation(line: 205, column: 67, scope: !3379)
!3383 = !DILocation(line: 203, column: 3, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3373, file: !559, discriminator: 1)
!3385 = !DILocation(line: 208, column: 3, scope: !3343)
!3386 = !DILocation(line: 210, column: 1, scope: !3343)
!3387 = distinct !DISubprogram(name: "version_etc", scope: !559, file: !559, line: 227, type: !3388, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !3203, !61, !61, !61, null}
!3390 = !{!3391, !3392, !3393, !3394, !3395}
!3391 = !DILocalVariable(name: "stream", arg: 1, scope: !3387, file: !559, line: 227, type: !3203)
!3392 = !DILocalVariable(name: "command_name", arg: 2, scope: !3387, file: !559, line: 228, type: !61)
!3393 = !DILocalVariable(name: "package", arg: 3, scope: !3387, file: !559, line: 228, type: !61)
!3394 = !DILocalVariable(name: "version", arg: 4, scope: !3387, file: !559, line: 229, type: !61)
!3395 = !DILocalVariable(name: "authors", scope: !3387, file: !559, line: 231, type: !3396)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !46, line: 80, baseType: !3397)
!3397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3398, line: 50, baseType: !3399)
!3398 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !556, line: 231, baseType: !3400)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3347, size: 192, elements: !3237)
!3401 = !DILocation(line: 227, column: 20, scope: !3387)
!3402 = !DILocation(line: 228, column: 26, scope: !3387)
!3403 = !DILocation(line: 228, column: 52, scope: !3387)
!3404 = !DILocation(line: 229, column: 26, scope: !3387)
!3405 = !DILocation(line: 231, column: 3, scope: !3387)
!3406 = !DILocation(line: 231, column: 11, scope: !3387)
!3407 = !DILocation(line: 233, column: 3, scope: !3387)
!3408 = !DILocation(line: 234, column: 3, scope: !3387)
!3409 = !DILocation(line: 235, column: 3, scope: !3387)
!3410 = !DILocation(line: 236, column: 1, scope: !3387)
!3411 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !559, file: !559, line: 239, type: !646, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !555, variables: !120)
!3412 = !DILocation(line: 245, column: 3, scope: !3411)
!3413 = !DILocation(line: 245, column: 3, scope: !3414)
!3414 = !DILexicalBlockFile(scope: !3411, file: !559, discriminator: 1)
!3415 = !DILocation(line: 251, column: 3, scope: !3411)
!3416 = !DILocation(line: 251, column: 3, scope: !3414)
!3417 = !DILocation(line: 256, column: 3, scope: !3411)
!3418 = !DILocation(line: 256, column: 3, scope: !3414)
!3419 = !DILocation(line: 258, column: 1, scope: !3411)
!3420 = distinct !DISubprogram(name: "xnmalloc", scope: !567, file: !567, line: 105, type: !3421, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!52, !53, !53}
!3423 = !{!3424, !3425}
!3424 = !DILocalVariable(name: "n", arg: 1, scope: !3420, file: !567, line: 105, type: !53)
!3425 = !DILocalVariable(name: "s", arg: 2, scope: !3420, file: !567, line: 105, type: !53)
!3426 = !DILocation(line: 105, column: 18, scope: !3420)
!3427 = !DILocation(line: 105, column: 28, scope: !3420)
!3428 = !DILocation(line: 107, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3420, file: !567, line: 107, column: 7)
!3430 = !DILocation(line: 107, column: 7, scope: !3420)
!3431 = !DILocation(line: 108, column: 5, scope: !3429)
!3432 = !DILocation(line: 109, column: 21, scope: !3420)
!3433 = !DILocalVariable(name: "n", arg: 1, scope: !3434, file: !3435, line: 39, type: !53)
!3434 = distinct !DISubprogram(name: "xmalloc", scope: !3435, file: !3435, line: 39, type: !3436, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3438)
!3435 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!52, !53}
!3438 = !{!3433, !3439}
!3439 = !DILocalVariable(name: "p", scope: !3434, file: !3435, line: 41, type: !52)
!3440 = !DILocation(line: 39, column: 17, scope: !3434, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 109, column: 10, scope: !3420)
!3442 = !DILocation(line: 41, column: 13, scope: !3434, inlinedAt: !3441)
!3443 = !DILocation(line: 41, column: 9, scope: !3434, inlinedAt: !3441)
!3444 = !DILocation(line: 42, column: 8, scope: !3445, inlinedAt: !3441)
!3445 = distinct !DILexicalBlock(scope: !3434, file: !3435, line: 42, column: 7)
!3446 = !DILocation(line: 42, column: 15, scope: !3447, inlinedAt: !3441)
!3447 = !DILexicalBlockFile(scope: !3445, file: !3435, discriminator: 1)
!3448 = !DILocation(line: 42, column: 10, scope: !3445, inlinedAt: !3441)
!3449 = !DILocation(line: 43, column: 5, scope: !3445, inlinedAt: !3441)
!3450 = !DILocation(line: 109, column: 3, scope: !3420)
!3451 = !DILocation(line: 39, column: 17, scope: !3434)
!3452 = !DILocation(line: 41, column: 13, scope: !3434)
!3453 = !DILocation(line: 41, column: 9, scope: !3434)
!3454 = !DILocation(line: 42, column: 8, scope: !3445)
!3455 = !DILocation(line: 42, column: 15, scope: !3447)
!3456 = !DILocation(line: 42, column: 10, scope: !3445)
!3457 = !DILocation(line: 43, column: 5, scope: !3445)
!3458 = !DILocation(line: 44, column: 3, scope: !3434)
!3459 = distinct !DISubprogram(name: "xnrealloc", scope: !567, file: !567, line: 118, type: !3460, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!52, !52, !53, !53}
!3462 = !{!3463, !3464, !3465}
!3463 = !DILocalVariable(name: "p", arg: 1, scope: !3459, file: !567, line: 118, type: !52)
!3464 = !DILocalVariable(name: "n", arg: 2, scope: !3459, file: !567, line: 118, type: !53)
!3465 = !DILocalVariable(name: "s", arg: 3, scope: !3459, file: !567, line: 118, type: !53)
!3466 = !DILocation(line: 118, column: 18, scope: !3459)
!3467 = !DILocation(line: 118, column: 28, scope: !3459)
!3468 = !DILocation(line: 118, column: 38, scope: !3459)
!3469 = !DILocation(line: 120, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3459, file: !567, line: 120, column: 7)
!3471 = !DILocation(line: 120, column: 7, scope: !3459)
!3472 = !DILocation(line: 121, column: 5, scope: !3470)
!3473 = !DILocation(line: 122, column: 25, scope: !3459)
!3474 = !DILocalVariable(name: "p", arg: 1, scope: !3475, file: !3435, line: 51, type: !52)
!3475 = distinct !DISubprogram(name: "xrealloc", scope: !3435, file: !3435, line: 51, type: !3476, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!52, !52, !53}
!3478 = !{!3474, !3479}
!3479 = !DILocalVariable(name: "n", arg: 2, scope: !3475, file: !3435, line: 51, type: !53)
!3480 = !DILocation(line: 51, column: 17, scope: !3475, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 122, column: 10, scope: !3459)
!3482 = !DILocation(line: 51, column: 27, scope: !3475, inlinedAt: !3481)
!3483 = !DILocation(line: 53, column: 8, scope: !3484, inlinedAt: !3481)
!3484 = distinct !DILexicalBlock(scope: !3475, file: !3435, line: 53, column: 7)
!3485 = !DILocation(line: 53, column: 13, scope: !3486, inlinedAt: !3481)
!3486 = !DILexicalBlockFile(scope: !3484, file: !3435, discriminator: 1)
!3487 = !DILocation(line: 53, column: 10, scope: !3484, inlinedAt: !3481)
!3488 = !DILocation(line: 57, column: 7, scope: !3489, inlinedAt: !3481)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !3435, line: 54, column: 5)
!3490 = !DILocation(line: 58, column: 7, scope: !3489, inlinedAt: !3481)
!3491 = !DILocation(line: 61, column: 7, scope: !3475, inlinedAt: !3481)
!3492 = !DILocation(line: 62, column: 8, scope: !3493, inlinedAt: !3481)
!3493 = distinct !DILexicalBlock(scope: !3475, file: !3435, line: 62, column: 7)
!3494 = !DILocation(line: 62, column: 13, scope: !3495, inlinedAt: !3481)
!3495 = !DILexicalBlockFile(scope: !3493, file: !3435, discriminator: 1)
!3496 = !DILocation(line: 62, column: 10, scope: !3493, inlinedAt: !3481)
!3497 = !DILocation(line: 63, column: 5, scope: !3493, inlinedAt: !3481)
!3498 = !DILocation(line: 122, column: 3, scope: !3459)
!3499 = !DILocation(line: 51, column: 17, scope: !3475)
!3500 = !DILocation(line: 51, column: 27, scope: !3475)
!3501 = !DILocation(line: 53, column: 8, scope: !3484)
!3502 = !DILocation(line: 53, column: 13, scope: !3486)
!3503 = !DILocation(line: 53, column: 10, scope: !3484)
!3504 = !DILocation(line: 57, column: 7, scope: !3489)
!3505 = !DILocation(line: 58, column: 7, scope: !3489)
!3506 = !DILocation(line: 61, column: 7, scope: !3475)
!3507 = !DILocation(line: 62, column: 8, scope: !3493)
!3508 = !DILocation(line: 62, column: 13, scope: !3495)
!3509 = !DILocation(line: 62, column: 10, scope: !3493)
!3510 = !DILocation(line: 63, column: 5, scope: !3493)
!3511 = !DILocation(line: 65, column: 1, scope: !3475)
!3512 = !DILocation(line: 180, column: 19, scope: !568)
!3513 = !DILocation(line: 180, column: 30, scope: !568)
!3514 = !DILocation(line: 180, column: 41, scope: !568)
!3515 = !DILocation(line: 182, column: 14, scope: !568)
!3516 = !DILocation(line: 182, column: 10, scope: !568)
!3517 = !DILocation(line: 184, column: 9, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !568, file: !567, line: 184, column: 7)
!3519 = !DILocation(line: 184, column: 7, scope: !568)
!3520 = !DILocation(line: 186, column: 13, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !567, line: 186, column: 11)
!3522 = distinct !DILexicalBlock(scope: !3518, file: !567, line: 185, column: 5)
!3523 = !DILocation(line: 186, column: 11, scope: !3522)
!3524 = !DILocation(line: 194, column: 30, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3521, file: !567, line: 187, column: 9)
!3526 = !DILocation(line: 195, column: 16, scope: !3525)
!3527 = !DILocation(line: 195, column: 13, scope: !3525)
!3528 = !DILocation(line: 196, column: 9, scope: !3525)
!3529 = !DILocation(line: 204, column: 69, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !567, line: 204, column: 11)
!3531 = distinct !DILexicalBlock(scope: !3518, file: !567, line: 199, column: 5)
!3532 = !DILocation(line: 205, column: 11, scope: !3530)
!3533 = !DILocation(line: 204, column: 11, scope: !3531)
!3534 = !DILocation(line: 206, column: 9, scope: !3530)
!3535 = !DILocation(line: 210, column: 7, scope: !568)
!3536 = !DILocation(line: 211, column: 25, scope: !568)
!3537 = !DILocation(line: 51, column: 17, scope: !3475, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 211, column: 10, scope: !568)
!3539 = !DILocation(line: 51, column: 27, scope: !3475, inlinedAt: !3538)
!3540 = !DILocation(line: 53, column: 10, scope: !3484, inlinedAt: !3538)
!3541 = !DILocation(line: 207, column: 14, scope: !3531)
!3542 = !DILocation(line: 207, column: 18, scope: !3531)
!3543 = !DILocation(line: 207, column: 9, scope: !3531)
!3544 = !DILocation(line: 53, column: 8, scope: !3484, inlinedAt: !3538)
!3545 = !DILocation(line: 57, column: 7, scope: !3489, inlinedAt: !3538)
!3546 = !DILocation(line: 58, column: 7, scope: !3489, inlinedAt: !3538)
!3547 = !DILocation(line: 61, column: 7, scope: !3475, inlinedAt: !3538)
!3548 = !DILocation(line: 62, column: 8, scope: !3493, inlinedAt: !3538)
!3549 = !DILocation(line: 62, column: 13, scope: !3495, inlinedAt: !3538)
!3550 = !DILocation(line: 62, column: 10, scope: !3493, inlinedAt: !3538)
!3551 = !DILocation(line: 63, column: 5, scope: !3493, inlinedAt: !3538)
!3552 = !DILocation(line: 211, column: 3, scope: !568)
!3553 = distinct !DISubprogram(name: "xcharalloc", scope: !567, file: !567, line: 220, type: !2473, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3554)
!3554 = !{!3555}
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3553, file: !567, line: 220, type: !53)
!3556 = !DILocation(line: 220, column: 20, scope: !3553)
!3557 = !DILocation(line: 39, column: 17, scope: !3434, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 222, column: 10, scope: !3553)
!3559 = !DILocation(line: 41, column: 13, scope: !3434, inlinedAt: !3558)
!3560 = !DILocation(line: 41, column: 9, scope: !3434, inlinedAt: !3558)
!3561 = !DILocation(line: 42, column: 8, scope: !3445, inlinedAt: !3558)
!3562 = !DILocation(line: 42, column: 15, scope: !3447, inlinedAt: !3558)
!3563 = !DILocation(line: 42, column: 10, scope: !3445, inlinedAt: !3558)
!3564 = !DILocation(line: 43, column: 5, scope: !3445, inlinedAt: !3558)
!3565 = !DILocation(line: 222, column: 3, scope: !3553)
!3566 = distinct !DISubprogram(name: "x2realloc", scope: !3435, file: !3435, line: 74, type: !3567, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!52, !52, !571}
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "p", arg: 1, scope: !3566, file: !3435, line: 74, type: !52)
!3571 = !DILocalVariable(name: "pn", arg: 2, scope: !3566, file: !3435, line: 74, type: !571)
!3572 = !DILocation(line: 74, column: 18, scope: !3566)
!3573 = !DILocation(line: 74, column: 29, scope: !3566)
!3574 = !DILocation(line: 180, column: 19, scope: !568, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 76, column: 10, scope: !3566)
!3576 = !DILocation(line: 180, column: 30, scope: !568, inlinedAt: !3575)
!3577 = !DILocation(line: 180, column: 41, scope: !568, inlinedAt: !3575)
!3578 = !DILocation(line: 182, column: 14, scope: !568, inlinedAt: !3575)
!3579 = !DILocation(line: 182, column: 10, scope: !568, inlinedAt: !3575)
!3580 = !DILocation(line: 184, column: 9, scope: !3518, inlinedAt: !3575)
!3581 = !DILocation(line: 184, column: 7, scope: !568, inlinedAt: !3575)
!3582 = !DILocation(line: 186, column: 13, scope: !3521, inlinedAt: !3575)
!3583 = !DILocation(line: 186, column: 11, scope: !3522, inlinedAt: !3575)
!3584 = !DILocation(line: 210, column: 7, scope: !568, inlinedAt: !3575)
!3585 = !DILocation(line: 51, column: 17, scope: !3475, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 211, column: 10, scope: !568, inlinedAt: !3575)
!3587 = !DILocation(line: 51, column: 27, scope: !3475, inlinedAt: !3586)
!3588 = !DILocation(line: 53, column: 10, scope: !3484, inlinedAt: !3586)
!3589 = !DILocation(line: 205, column: 11, scope: !3530, inlinedAt: !3575)
!3590 = !DILocation(line: 204, column: 11, scope: !3531, inlinedAt: !3575)
!3591 = !DILocation(line: 206, column: 9, scope: !3530, inlinedAt: !3575)
!3592 = !DILocation(line: 207, column: 14, scope: !3531, inlinedAt: !3575)
!3593 = !DILocation(line: 207, column: 18, scope: !3531, inlinedAt: !3575)
!3594 = !DILocation(line: 207, column: 9, scope: !3531, inlinedAt: !3575)
!3595 = !DILocation(line: 53, column: 8, scope: !3484, inlinedAt: !3586)
!3596 = !DILocation(line: 57, column: 7, scope: !3489, inlinedAt: !3586)
!3597 = !DILocation(line: 58, column: 7, scope: !3489, inlinedAt: !3586)
!3598 = !DILocation(line: 61, column: 7, scope: !3475, inlinedAt: !3586)
!3599 = !DILocation(line: 62, column: 8, scope: !3493, inlinedAt: !3586)
!3600 = !DILocation(line: 62, column: 13, scope: !3495, inlinedAt: !3586)
!3601 = !DILocation(line: 62, column: 10, scope: !3493, inlinedAt: !3586)
!3602 = !DILocation(line: 63, column: 5, scope: !3493, inlinedAt: !3586)
!3603 = !DILocation(line: 76, column: 3, scope: !3566)
!3604 = distinct !DISubprogram(name: "xzalloc", scope: !3435, file: !3435, line: 84, type: !3436, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3605)
!3605 = !{!3606}
!3606 = !DILocalVariable(name: "s", arg: 1, scope: !3604, file: !3435, line: 84, type: !53)
!3607 = !DILocation(line: 84, column: 17, scope: !3604)
!3608 = !DILocation(line: 39, column: 17, scope: !3434, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 86, column: 18, scope: !3604)
!3610 = !DILocation(line: 41, column: 13, scope: !3434, inlinedAt: !3609)
!3611 = !DILocation(line: 41, column: 9, scope: !3434, inlinedAt: !3609)
!3612 = !DILocation(line: 42, column: 8, scope: !3445, inlinedAt: !3609)
!3613 = !DILocation(line: 42, column: 15, scope: !3447, inlinedAt: !3609)
!3614 = !DILocation(line: 42, column: 10, scope: !3445, inlinedAt: !3609)
!3615 = !DILocation(line: 43, column: 5, scope: !3445, inlinedAt: !3609)
!3616 = !DILocation(line: 86, column: 10, scope: !3604)
!3617 = !DILocation(line: 86, column: 3, scope: !3604)
!3618 = distinct !DISubprogram(name: "xcalloc", scope: !3435, file: !3435, line: 93, type: !3421, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3619)
!3619 = !{!3620, !3621, !3622}
!3620 = !DILocalVariable(name: "n", arg: 1, scope: !3618, file: !3435, line: 93, type: !53)
!3621 = !DILocalVariable(name: "s", arg: 2, scope: !3618, file: !3435, line: 93, type: !53)
!3622 = !DILocalVariable(name: "p", scope: !3618, file: !3435, line: 95, type: !52)
!3623 = !DILocation(line: 93, column: 17, scope: !3618)
!3624 = !DILocation(line: 93, column: 27, scope: !3618)
!3625 = !DILocation(line: 100, column: 7, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3618, file: !3435, line: 100, column: 7)
!3627 = !DILocation(line: 101, column: 7, scope: !3626)
!3628 = !DILocation(line: 101, column: 18, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3626, file: !3435, discriminator: 1)
!3630 = !DILocation(line: 95, column: 9, scope: !3618)
!3631 = !DILocation(line: 101, column: 16, scope: !3629)
!3632 = !DILocation(line: 100, column: 7, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3618, file: !3435, discriminator: 1)
!3634 = !DILocation(line: 102, column: 5, scope: !3626)
!3635 = !DILocation(line: 103, column: 3, scope: !3618)
!3636 = distinct !DISubprogram(name: "xmemdup", scope: !3435, file: !3435, line: 111, type: !3637, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!52, !56, !53}
!3639 = !{!3640, !3641}
!3640 = !DILocalVariable(name: "p", arg: 1, scope: !3636, file: !3435, line: 111, type: !56)
!3641 = !DILocalVariable(name: "s", arg: 2, scope: !3636, file: !3435, line: 111, type: !53)
!3642 = !DILocation(line: 111, column: 22, scope: !3636)
!3643 = !DILocation(line: 111, column: 32, scope: !3636)
!3644 = !DILocation(line: 39, column: 17, scope: !3434, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 113, column: 18, scope: !3636)
!3646 = !DILocation(line: 41, column: 13, scope: !3434, inlinedAt: !3645)
!3647 = !DILocation(line: 41, column: 9, scope: !3434, inlinedAt: !3645)
!3648 = !DILocation(line: 42, column: 8, scope: !3445, inlinedAt: !3645)
!3649 = !DILocation(line: 42, column: 15, scope: !3447, inlinedAt: !3645)
!3650 = !DILocation(line: 42, column: 10, scope: !3445, inlinedAt: !3645)
!3651 = !DILocation(line: 43, column: 5, scope: !3445, inlinedAt: !3645)
!3652 = !DILocation(line: 113, column: 10, scope: !3636)
!3653 = !DILocation(line: 113, column: 3, scope: !3636)
!3654 = distinct !DISubprogram(name: "xstrdup", scope: !3435, file: !3435, line: 119, type: !2679, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !3655)
!3655 = !{!3656}
!3656 = !DILocalVariable(name: "string", arg: 1, scope: !3654, file: !3435, line: 119, type: !61)
!3657 = !DILocation(line: 119, column: 22, scope: !3654)
!3658 = !DILocation(line: 121, column: 27, scope: !3654)
!3659 = !DILocation(line: 121, column: 43, scope: !3654)
!3660 = !DILocation(line: 111, column: 22, scope: !3636, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 121, column: 10, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3654, file: !3435, discriminator: 1)
!3663 = !DILocation(line: 111, column: 32, scope: !3636, inlinedAt: !3661)
!3664 = !DILocation(line: 39, column: 17, scope: !3434, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 113, column: 18, scope: !3636, inlinedAt: !3661)
!3666 = !DILocation(line: 41, column: 13, scope: !3434, inlinedAt: !3665)
!3667 = !DILocation(line: 41, column: 9, scope: !3434, inlinedAt: !3665)
!3668 = !DILocation(line: 42, column: 8, scope: !3445, inlinedAt: !3665)
!3669 = !DILocation(line: 42, column: 15, scope: !3447, inlinedAt: !3665)
!3670 = !DILocation(line: 42, column: 10, scope: !3445, inlinedAt: !3665)
!3671 = !DILocation(line: 43, column: 5, scope: !3445, inlinedAt: !3665)
!3672 = !DILocation(line: 113, column: 10, scope: !3636, inlinedAt: !3661)
!3673 = !DILocation(line: 121, column: 3, scope: !3654)
!3674 = distinct !DISubprogram(name: "xalloc_die", scope: !3675, file: !3675, line: 32, type: !646, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !580, variables: !120)
!3675 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3676 = !DILocation(line: 34, column: 10, scope: !3674)
!3677 = !DILocation(line: 34, column: 33, scope: !3674)
!3678 = !DILocation(line: 34, column: 3, scope: !3679)
!3679 = !DILexicalBlockFile(scope: !3674, file: !3675, discriminator: 1)
!3680 = !DILocation(line: 40, column: 3, scope: !3674)
!3681 = distinct !DISubprogram(name: "xnumtoimax", scope: !3682, file: !3682, line: 36, type: !3683, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !3685)
!3682 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!63, !61, !43, !63, !63, !61, !61, !43}
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3695}
!3686 = !DILocalVariable(name: "n_str", arg: 1, scope: !3681, file: !3682, line: 36, type: !61)
!3687 = !DILocalVariable(name: "base", arg: 2, scope: !3681, file: !3682, line: 36, type: !43)
!3688 = !DILocalVariable(name: "min", arg: 3, scope: !3681, file: !3682, line: 36, type: !63)
!3689 = !DILocalVariable(name: "max", arg: 4, scope: !3681, file: !3682, line: 36, type: !63)
!3690 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3681, file: !3682, line: 37, type: !61)
!3691 = !DILocalVariable(name: "err", arg: 6, scope: !3681, file: !3682, line: 37, type: !61)
!3692 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3681, file: !3682, line: 37, type: !43)
!3693 = !DILocalVariable(name: "s_err", scope: !3681, file: !3682, line: 39, type: !3694)
!3694 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !586, line: 39, baseType: !585)
!3695 = !DILocalVariable(name: "tnum", scope: !3681, file: !3682, line: 41, type: !63)
!3696 = !DILocation(line: 36, column: 26, scope: !3681)
!3697 = !DILocation(line: 36, column: 37, scope: !3681)
!3698 = !DILocation(line: 36, column: 57, scope: !3681)
!3699 = !DILocation(line: 36, column: 76, scope: !3681)
!3700 = !DILocation(line: 37, column: 26, scope: !3681)
!3701 = !DILocation(line: 37, column: 48, scope: !3681)
!3702 = !DILocation(line: 37, column: 57, scope: !3681)
!3703 = !DILocation(line: 41, column: 3, scope: !3681)
!3704 = !DILocation(line: 41, column: 17, scope: !3681)
!3705 = !DILocation(line: 42, column: 11, scope: !3681)
!3706 = !DILocation(line: 39, column: 16, scope: !3681)
!3707 = !DILocation(line: 44, column: 7, scope: !3681)
!3708 = !DILocation(line: 69, column: 50, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3710, file: !3682, discriminator: 3)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !3682, line: 67, column: 5)
!3711 = distinct !DILexicalBlock(scope: !3681, file: !3682, line: 66, column: 7)
!3712 = !DILocation(line: 46, column: 11, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3682, line: 46, column: 11)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !3682, line: 45, column: 5)
!3715 = distinct !DILexicalBlock(scope: !3681, file: !3682, line: 44, column: 7)
!3716 = !DILocation(line: 46, column: 16, scope: !3713)
!3717 = !DILocation(line: 46, column: 29, scope: !3718)
!3718 = !DILexicalBlockFile(scope: !3713, file: !3682, discriminator: 1)
!3719 = !DILocation(line: 46, column: 22, scope: !3713)
!3720 = !DILocation(line: 51, column: 20, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !3682, line: 51, column: 15)
!3722 = distinct !DILexicalBlock(scope: !3713, file: !3682, line: 47, column: 9)
!3723 = !DILocation(line: 51, column: 15, scope: !3722)
!3724 = !DILocation(line: 52, column: 13, scope: !3721)
!3725 = !DILocation(line: 52, column: 19, scope: !3721)
!3726 = !DILocation(line: 54, column: 25, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3721, file: !3682, line: 54, column: 20)
!3728 = !DILocation(line: 55, column: 13, scope: !3727)
!3729 = !DILocation(line: 54, column: 20, scope: !3721)
!3730 = !DILocation(line: 62, column: 5, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3715, file: !3682, line: 61, column: 12)
!3732 = !DILocation(line: 62, column: 11, scope: !3731)
!3733 = !DILocation(line: 64, column: 5, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3731, file: !3682, line: 63, column: 12)
!3735 = !DILocation(line: 64, column: 11, scope: !3734)
!3736 = !DILocation(line: 69, column: 14, scope: !3710)
!3737 = !DILocation(line: 69, column: 56, scope: !3709)
!3738 = !DILocation(line: 70, column: 29, scope: !3710)
!3739 = !DILocation(line: 69, column: 7, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !3710, file: !3682, discriminator: 6)
!3741 = !DILocation(line: 71, column: 5, scope: !3710)
!3742 = !DILocation(line: 73, column: 10, scope: !3681)
!3743 = !DILocation(line: 74, column: 1, scope: !3681)
!3744 = !DILocation(line: 73, column: 3, scope: !3681)
!3745 = distinct !DISubprogram(name: "xdectoimax", scope: !3682, file: !3682, line: 82, type: !3746, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !582, variables: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!63, !61, !63, !63, !61, !61, !43}
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754}
!3749 = !DILocalVariable(name: "n_str", arg: 1, scope: !3745, file: !3682, line: 82, type: !61)
!3750 = !DILocalVariable(name: "min", arg: 2, scope: !3745, file: !3682, line: 82, type: !63)
!3751 = !DILocalVariable(name: "max", arg: 3, scope: !3745, file: !3682, line: 82, type: !63)
!3752 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3745, file: !3682, line: 83, type: !61)
!3753 = !DILocalVariable(name: "err", arg: 5, scope: !3745, file: !3682, line: 83, type: !61)
!3754 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3745, file: !3682, line: 83, type: !43)
!3755 = !DILocation(line: 82, column: 26, scope: !3745)
!3756 = !DILocation(line: 82, column: 47, scope: !3745)
!3757 = !DILocation(line: 82, column: 66, scope: !3745)
!3758 = !DILocation(line: 83, column: 26, scope: !3745)
!3759 = !DILocation(line: 83, column: 48, scope: !3745)
!3760 = !DILocation(line: 83, column: 57, scope: !3745)
!3761 = !DILocation(line: 85, column: 10, scope: !3745)
!3762 = !DILocation(line: 85, column: 3, scope: !3745)
!3763 = distinct !DISubprogram(name: "xstrtoimax", scope: !3764, file: !3764, line: 88, type: !3765, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !3768)
!3764 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!3694, !61, !694, !43, !3767, !61}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!3768 = !{!3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3781, !3782}
!3769 = !DILocalVariable(name: "s", arg: 1, scope: !3763, file: !3764, line: 88, type: !61)
!3770 = !DILocalVariable(name: "ptr", arg: 2, scope: !3763, file: !3764, line: 88, type: !694)
!3771 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3763, file: !3764, line: 88, type: !43)
!3772 = !DILocalVariable(name: "val", arg: 4, scope: !3763, file: !3764, line: 89, type: !3767)
!3773 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3763, file: !3764, line: 89, type: !61)
!3774 = !DILocalVariable(name: "t_ptr", scope: !3763, file: !3764, line: 91, type: !50)
!3775 = !DILocalVariable(name: "p", scope: !3763, file: !3764, line: 92, type: !694)
!3776 = !DILocalVariable(name: "tmp", scope: !3763, file: !3764, line: 93, type: !63)
!3777 = !DILocalVariable(name: "err", scope: !3763, file: !3764, line: 94, type: !3694)
!3778 = !DILocalVariable(name: "base", scope: !3779, file: !3764, line: 141, type: !43)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !3764, line: 140, column: 5)
!3780 = distinct !DILexicalBlock(scope: !3763, file: !3764, line: 139, column: 7)
!3781 = !DILocalVariable(name: "suffixes", scope: !3779, file: !3764, line: 142, type: !43)
!3782 = !DILocalVariable(name: "overflow", scope: !3779, file: !3764, line: 143, type: !3694)
!3783 = !DILocation(line: 88, column: 24, scope: !3763)
!3784 = !DILocation(line: 88, column: 34, scope: !3763)
!3785 = !DILocation(line: 88, column: 43, scope: !3763)
!3786 = !DILocation(line: 89, column: 24, scope: !3763)
!3787 = !DILocation(line: 89, column: 41, scope: !3763)
!3788 = !DILocation(line: 91, column: 3, scope: !3763)
!3789 = !DILocation(line: 94, column: 16, scope: !3763)
!3790 = !DILocation(line: 96, column: 3, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !3764, line: 96, column: 3)
!3792 = distinct !DILexicalBlock(scope: !3763, file: !3764, line: 96, column: 3)
!3793 = !DILocation(line: 96, column: 3, scope: !3794)
!3794 = !DILexicalBlockFile(scope: !3791, file: !3764, discriminator: 3)
!3795 = !DILocation(line: 98, column: 8, scope: !3763)
!3796 = !DILocation(line: 92, column: 10, scope: !3763)
!3797 = !DILocation(line: 100, column: 3, scope: !3763)
!3798 = !DILocation(line: 100, column: 9, scope: !3763)
!3799 = !DILocalVariable(name: "nptr", arg: 1, scope: !3800, file: !3801, line: 324, type: !3804)
!3800 = distinct !DISubprogram(name: "strtoimax", scope: !3801, file: !3801, line: 324, type: !3802, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !3806)
!3801 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!63, !3804, !3805, !43}
!3804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!3805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !694)
!3806 = !{!3799, !3807, !3808}
!3807 = !DILocalVariable(name: "endptr", arg: 2, scope: !3800, file: !3801, line: 324, type: !3805)
!3808 = !DILocalVariable(name: "base", arg: 3, scope: !3800, file: !3801, line: 324, type: !43)
!3809 = !DILocation(line: 324, column: 1, scope: !3800, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 112, column: 9, scope: !3763)
!3811 = !DILocation(line: 327, column: 10, scope: !3800, inlinedAt: !3810)
!3812 = !DILocation(line: 93, column: 14, scope: !3763)
!3813 = !DILocation(line: 114, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3763, file: !3764, line: 114, column: 7)
!3815 = !DILocation(line: 114, column: 10, scope: !3814)
!3816 = !DILocation(line: 114, column: 7, scope: !3763)
!3817 = !DILocation(line: 118, column: 11, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !3764, line: 118, column: 11)
!3819 = distinct !DILexicalBlock(scope: !3814, file: !3764, line: 115, column: 5)
!3820 = !DILocation(line: 118, column: 26, scope: !3818)
!3821 = !DILocation(line: 118, column: 29, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !3818, file: !3764, discriminator: 1)
!3823 = !DILocation(line: 118, column: 33, scope: !3822)
!3824 = !DILocation(line: 118, column: 36, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !3818, file: !3764, discriminator: 5)
!3826 = !DILocation(line: 118, column: 11, scope: !3827)
!3827 = !DILexicalBlockFile(scope: !3819, file: !3764, discriminator: 5)
!3828 = !DILocation(line: 123, column: 12, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3814, file: !3764, line: 123, column: 12)
!3830 = !DILocation(line: 123, column: 12, scope: !3814)
!3831 = !DILocation(line: 128, column: 5, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3829, file: !3764, line: 124, column: 5)
!3833 = !DILocation(line: 133, column: 8, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3763, file: !3764, line: 133, column: 7)
!3835 = !DILocation(line: 133, column: 7, scope: !3763)
!3836 = !DILocation(line: 135, column: 12, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3834, file: !3764, line: 134, column: 5)
!3838 = !DILocation(line: 136, column: 7, scope: !3837)
!3839 = !DILocation(line: 139, column: 7, scope: !3780)
!3840 = !DILocation(line: 139, column: 11, scope: !3780)
!3841 = !DILocation(line: 139, column: 7, scope: !3763)
!3842 = !DILocation(line: 141, column: 11, scope: !3779)
!3843 = !DILocation(line: 142, column: 11, scope: !3779)
!3844 = !DILocation(line: 145, column: 12, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3846, file: !3764, discriminator: 3)
!3846 = distinct !DILexicalBlock(scope: !3779, file: !3764, line: 145, column: 11)
!3847 = !DILocation(line: 145, column: 11, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3779, file: !3764, discriminator: 3)
!3849 = !DILocation(line: 147, column: 16, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3846, file: !3764, line: 146, column: 9)
!3851 = !DILocation(line: 148, column: 22, scope: !3850)
!3852 = !DILocation(line: 148, column: 11, scope: !3850)
!3853 = !DILocation(line: 151, column: 7, scope: !3779)
!3854 = !DILocation(line: 163, column: 15, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !3856, file: !3764, discriminator: 2)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !3764, line: 163, column: 15)
!3857 = distinct !DILexicalBlock(scope: !3779, file: !3764, line: 152, column: 9)
!3858 = !DILocation(line: 163, column: 15, scope: !3859)
!3859 = !DILexicalBlockFile(scope: !3857, file: !3764, discriminator: 2)
!3860 = !DILocation(line: 164, column: 21, scope: !3856)
!3861 = !DILocation(line: 164, column: 13, scope: !3856)
!3862 = !DILocation(line: 167, column: 21, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !3764, line: 167, column: 21)
!3864 = distinct !DILexicalBlock(scope: !3856, file: !3764, line: 165, column: 15)
!3865 = !DILocation(line: 167, column: 29, scope: !3863)
!3866 = !DILocation(line: 167, column: 21, scope: !3864)
!3867 = !DILocation(line: 175, column: 17, scope: !3864)
!3868 = !DILocation(line: 179, column: 7, scope: !3779)
!3869 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3870, file: !3764, line: 60, type: !43)
!3870 = distinct !DISubprogram(name: "bkm_scale", scope: !3764, file: !3764, line: 60, type: !3871, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!3694, !3767, !43}
!3873 = !{!3874, !3869}
!3874 = !DILocalVariable(name: "x", arg: 1, scope: !3870, file: !3764, line: 60, type: !3767)
!3875 = !DILocation(line: 60, column: 31, scope: !3870, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 182, column: 22, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3779, file: !3764, line: 180, column: 9)
!3878 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3876)
!3879 = distinct !DILexicalBlock(scope: !3870, file: !3764, line: 62, column: 7)
!3880 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3876)
!3881 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3876)
!3882 = distinct !DILexicalBlock(scope: !3870, file: !3764, line: 67, column: 7)
!3883 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3876)
!3884 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3876)
!3885 = !DILocation(line: 60, column: 31, scope: !3870, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 189, column: 22, scope: !3877)
!3887 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3886)
!3888 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3886)
!3889 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3886)
!3890 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3886)
!3891 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3886)
!3892 = !DILocalVariable(name: "power", arg: 3, scope: !3893, file: !3764, line: 77, type: !43)
!3893 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3764, file: !3764, line: 77, type: !3894, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !593, variables: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!3694, !3767, !43, !43}
!3896 = !{!3897, !3898, !3892, !3899}
!3897 = !DILocalVariable(name: "x", arg: 1, scope: !3893, file: !3764, line: 77, type: !3767)
!3898 = !DILocalVariable(name: "base", arg: 2, scope: !3893, file: !3764, line: 77, type: !43)
!3899 = !DILocalVariable(name: "err", scope: !3893, file: !3764, line: 79, type: !3694)
!3900 = !DILocation(line: 77, column: 50, scope: !3893, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 197, column: 22, scope: !3877)
!3902 = !DILocation(line: 79, column: 16, scope: !3893, inlinedAt: !3901)
!3903 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 81, column: 12, scope: !3893, inlinedAt: !3901)
!3905 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3904)
!3906 = !DILocation(line: 67, column: 24, scope: !3882, inlinedAt: !3904)
!3907 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3904)
!3908 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3904)
!3909 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3904)
!3910 = !DILocation(line: 77, column: 50, scope: !3893, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 202, column: 22, scope: !3877)
!3912 = !DILocation(line: 79, column: 16, scope: !3893, inlinedAt: !3911)
!3913 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 81, column: 12, scope: !3893, inlinedAt: !3911)
!3915 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3914)
!3916 = !DILocation(line: 67, column: 24, scope: !3882, inlinedAt: !3914)
!3917 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3914)
!3918 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3914)
!3919 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3914)
!3920 = !DILocation(line: 77, column: 50, scope: !3893, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 207, column: 22, scope: !3877)
!3922 = !DILocation(line: 79, column: 16, scope: !3893, inlinedAt: !3921)
!3923 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 81, column: 12, scope: !3893, inlinedAt: !3921)
!3925 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3924)
!3926 = !DILocation(line: 67, column: 24, scope: !3882, inlinedAt: !3924)
!3927 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3924)
!3928 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3924)
!3929 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3924)
!3930 = !DILocation(line: 77, column: 50, scope: !3893, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 212, column: 22, scope: !3877)
!3932 = !DILocation(line: 79, column: 16, scope: !3893, inlinedAt: !3931)
!3933 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 81, column: 12, scope: !3893, inlinedAt: !3931)
!3935 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3934)
!3936 = !DILocation(line: 67, column: 24, scope: !3882, inlinedAt: !3934)
!3937 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3934)
!3938 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3934)
!3939 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3934)
!3940 = !DILocation(line: 77, column: 50, scope: !3893, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 216, column: 22, scope: !3877)
!3942 = !DILocation(line: 79, column: 16, scope: !3893, inlinedAt: !3941)
!3943 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 81, column: 12, scope: !3893, inlinedAt: !3941)
!3945 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3944)
!3946 = !DILocation(line: 67, column: 24, scope: !3882, inlinedAt: !3944)
!3947 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3944)
!3948 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3944)
!3949 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3944)
!3950 = !DILocation(line: 77, column: 50, scope: !3893, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 221, column: 22, scope: !3877)
!3952 = !DILocation(line: 79, column: 16, scope: !3893, inlinedAt: !3951)
!3953 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 81, column: 12, scope: !3893, inlinedAt: !3951)
!3955 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3954)
!3956 = !DILocation(line: 67, column: 24, scope: !3882, inlinedAt: !3954)
!3957 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3954)
!3958 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3954)
!3959 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3954)
!3960 = !DILocation(line: 60, column: 31, scope: !3870, inlinedAt: !3961)
!3961 = distinct !DILocation(line: 225, column: 22, scope: !3877)
!3962 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3961)
!3963 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3961)
!3964 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3961)
!3965 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3961)
!3966 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3961)
!3967 = !DILocation(line: 77, column: 50, scope: !3893, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 229, column: 22, scope: !3877)
!3969 = !DILocation(line: 79, column: 16, scope: !3893, inlinedAt: !3968)
!3970 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 81, column: 12, scope: !3893, inlinedAt: !3968)
!3972 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3971)
!3973 = !DILocation(line: 67, column: 24, scope: !3882, inlinedAt: !3971)
!3974 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3971)
!3975 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3971)
!3976 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3971)
!3977 = !DILocation(line: 77, column: 50, scope: !3893, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 233, column: 22, scope: !3877)
!3979 = !DILocation(line: 79, column: 16, scope: !3893, inlinedAt: !3978)
!3980 = !DILocation(line: 62, column: 38, scope: !3879, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 81, column: 12, scope: !3893, inlinedAt: !3978)
!3982 = !DILocation(line: 62, column: 7, scope: !3870, inlinedAt: !3981)
!3983 = !DILocation(line: 67, column: 24, scope: !3882, inlinedAt: !3981)
!3984 = !DILocation(line: 67, column: 39, scope: !3882, inlinedAt: !3981)
!3985 = !DILocation(line: 72, column: 6, scope: !3870, inlinedAt: !3981)
!3986 = !DILocation(line: 67, column: 7, scope: !3870, inlinedAt: !3981)
!3987 = !DILocation(line: 237, column: 16, scope: !3877)
!3988 = !DILocation(line: 238, column: 22, scope: !3877)
!3989 = !DILocation(line: 238, column: 11, scope: !3877)
!3990 = !DILocation(line: 143, column: 20, scope: !3779)
!3991 = !DILocation(line: 241, column: 11, scope: !3779)
!3992 = !DILocation(line: 242, column: 10, scope: !3779)
!3993 = !DILocation(line: 243, column: 11, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3779, file: !3764, line: 243, column: 11)
!3995 = !DILocation(line: 244, column: 13, scope: !3994)
!3996 = !DILocation(line: 243, column: 11, scope: !3779)
!3997 = !DILocation(line: 247, column: 8, scope: !3763)
!3998 = !DILocation(line: 248, column: 3, scope: !3763)
!3999 = !DILocation(line: 249, column: 1, scope: !3763)
!4000 = !DILocation(line: 81, column: 9, scope: !3893, inlinedAt: !3901)
!4001 = !DILocation(line: 81, column: 9, scope: !3893, inlinedAt: !3911)
!4002 = !DILocation(line: 81, column: 9, scope: !3893, inlinedAt: !3931)
!4003 = !DILocation(line: 81, column: 9, scope: !3893, inlinedAt: !3941)
!4004 = !DILocation(line: 81, column: 9, scope: !3893, inlinedAt: !3951)
!4005 = !DILocation(line: 81, column: 9, scope: !3893, inlinedAt: !3968)
!4006 = !DILocation(line: 81, column: 9, scope: !3893, inlinedAt: !3978)
!4007 = distinct !DISubprogram(name: "rpl_calloc", scope: !4008, file: !4008, line: 42, type: !3421, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !4009)
!4008 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4009 = !{!4010, !4011, !4012, !4013}
!4010 = !DILocalVariable(name: "n", arg: 1, scope: !4007, file: !4008, line: 42, type: !53)
!4011 = !DILocalVariable(name: "s", arg: 2, scope: !4007, file: !4008, line: 42, type: !53)
!4012 = !DILocalVariable(name: "result", scope: !4007, file: !4008, line: 44, type: !52)
!4013 = !DILocalVariable(name: "bytes", scope: !4014, file: !4008, line: 56, type: !53)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !4008, line: 53, column: 5)
!4015 = distinct !DILexicalBlock(scope: !4007, file: !4008, line: 47, column: 7)
!4016 = !DILocation(line: 42, column: 20, scope: !4007)
!4017 = !DILocation(line: 42, column: 30, scope: !4007)
!4018 = !DILocation(line: 47, column: 9, scope: !4015)
!4019 = !DILocation(line: 47, column: 19, scope: !4020)
!4020 = !DILexicalBlockFile(scope: !4015, file: !4008, discriminator: 1)
!4021 = !DILocation(line: 47, column: 14, scope: !4015)
!4022 = !DILocation(line: 56, column: 24, scope: !4014)
!4023 = !DILocation(line: 56, column: 14, scope: !4014)
!4024 = !DILocation(line: 57, column: 17, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4014, file: !4008, line: 57, column: 11)
!4026 = !DILocation(line: 57, column: 21, scope: !4025)
!4027 = !DILocation(line: 57, column: 11, scope: !4014)
!4028 = !DILocation(line: 59, column: 11, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4025, file: !4008, line: 58, column: 9)
!4030 = !DILocation(line: 59, column: 17, scope: !4029)
!4031 = !DILocation(line: 65, column: 12, scope: !4007)
!4032 = !DILocation(line: 44, column: 9, scope: !4007)
!4033 = !DILocation(line: 72, column: 3, scope: !4007)
!4034 = !DILocation(line: 73, column: 1, scope: !4007)
!4035 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4036, file: !4036, line: 334, type: !4037, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !4051)
!4036 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!53, !4039, !61, !53, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1446, line: 107, baseType: !4042)
!4042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1446, line: 95, baseType: !4043)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1446, line: 83, size: 64, elements: !4044)
!4044 = !{!4045, !4046}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4043, file: !1446, line: 85, baseType: !43, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4043, file: !1446, line: 94, baseType: !4047, size: 32, offset: 32)
!4047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4043, file: !1446, line: 86, size: 32, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4047, file: !1446, line: 89, baseType: !171, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4047, file: !1446, line: 93, baseType: !1456, size: 32)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058}
!4052 = !DILocalVariable(name: "pwc", arg: 1, scope: !4035, file: !4036, line: 334, type: !4039)
!4053 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !4036, line: 334, type: !61)
!4054 = !DILocalVariable(name: "n", arg: 3, scope: !4035, file: !4036, line: 334, type: !53)
!4055 = !DILocalVariable(name: "ps", arg: 4, scope: !4035, file: !4036, line: 334, type: !4040)
!4056 = !DILocalVariable(name: "ret", scope: !4035, file: !4036, line: 336, type: !53)
!4057 = !DILocalVariable(name: "wc", scope: !4035, file: !4036, line: 337, type: !1461)
!4058 = !DILocalVariable(name: "uc", scope: !4059, file: !4036, line: 398, type: !60)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !4036, line: 397, column: 5)
!4060 = distinct !DILexicalBlock(scope: !4035, file: !4036, line: 396, column: 7)
!4061 = !DILocation(line: 334, column: 23, scope: !4035)
!4062 = !DILocation(line: 334, column: 40, scope: !4035)
!4063 = !DILocation(line: 334, column: 50, scope: !4035)
!4064 = !DILocation(line: 334, column: 64, scope: !4035)
!4065 = !DILocation(line: 337, column: 3, scope: !4035)
!4066 = !DILocation(line: 353, column: 9, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4035, file: !4036, line: 353, column: 7)
!4068 = !DILocation(line: 353, column: 7, scope: !4035)
!4069 = !DILocation(line: 388, column: 9, scope: !4035)
!4070 = !DILocation(line: 336, column: 10, scope: !4035)
!4071 = !DILocation(line: 396, column: 19, scope: !4060)
!4072 = !DILocation(line: 396, column: 31, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !4060, file: !4036, discriminator: 1)
!4074 = !DILocation(line: 396, column: 26, scope: !4060)
!4075 = !DILocation(line: 396, column: 41, scope: !4076)
!4076 = !DILexicalBlockFile(scope: !4060, file: !4036, discriminator: 2)
!4077 = !DILocation(line: 396, column: 7, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4035, file: !4036, discriminator: 2)
!4079 = !DILocation(line: 398, column: 26, scope: !4059)
!4080 = !DILocation(line: 398, column: 21, scope: !4059)
!4081 = !DILocation(line: 399, column: 14, scope: !4059)
!4082 = !DILocation(line: 399, column: 12, scope: !4059)
!4083 = !DILocation(line: 405, column: 1, scope: !4035)
!4084 = distinct !DISubprogram(name: "close_stream", scope: !4085, file: !4085, line: 56, type: !4086, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4128)
!4085 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!43, !4088}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 49, baseType: !4090)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3206, line: 241, size: 1728, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4090, file: !3206, line: 242, baseType: !43, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4090, file: !3206, line: 247, baseType: !50, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4090, file: !3206, line: 248, baseType: !50, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4090, file: !3206, line: 249, baseType: !50, size: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4090, file: !3206, line: 250, baseType: !50, size: 64, offset: 256)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4090, file: !3206, line: 251, baseType: !50, size: 64, offset: 320)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4090, file: !3206, line: 252, baseType: !50, size: 64, offset: 384)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4090, file: !3206, line: 253, baseType: !50, size: 64, offset: 448)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4090, file: !3206, line: 254, baseType: !50, size: 64, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4090, file: !3206, line: 256, baseType: !50, size: 64, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4090, file: !3206, line: 257, baseType: !50, size: 64, offset: 640)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4090, file: !3206, line: 258, baseType: !50, size: 64, offset: 704)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4090, file: !3206, line: 260, baseType: !4105, size: 64, offset: 768)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3206, line: 156, size: 192, elements: !4107)
!4107 = !{!4108, !4109, !4111}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4106, file: !3206, line: 157, baseType: !4105, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4106, file: !3206, line: 158, baseType: !4110, size: 64, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4106, file: !3206, line: 162, baseType: !43, size: 32, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4090, file: !3206, line: 262, baseType: !4110, size: 64, offset: 832)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4090, file: !3206, line: 264, baseType: !43, size: 32, offset: 896)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4090, file: !3206, line: 268, baseType: !43, size: 32, offset: 928)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4090, file: !3206, line: 270, baseType: !47, size: 64, offset: 960)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4090, file: !3206, line: 274, baseType: !44, size: 16, offset: 1024)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4090, file: !3206, line: 275, baseType: !3234, size: 8, offset: 1040)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4090, file: !3206, line: 276, baseType: !3236, size: 8, offset: 1048)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4090, file: !3206, line: 280, baseType: !3240, size: 64, offset: 1088)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4090, file: !3206, line: 289, baseType: !3243, size: 64, offset: 1152)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4090, file: !3206, line: 297, baseType: !52, size: 64, offset: 1216)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4090, file: !3206, line: 298, baseType: !52, size: 64, offset: 1280)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4090, file: !3206, line: 299, baseType: !52, size: 64, offset: 1344)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4090, file: !3206, line: 300, baseType: !52, size: 64, offset: 1408)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4090, file: !3206, line: 302, baseType: !53, size: 64, offset: 1472)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4090, file: !3206, line: 303, baseType: !43, size: 32, offset: 1536)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4090, file: !3206, line: 305, baseType: !3251, size: 160, offset: 1568)
!4128 = !{!4129, !4130, !4132, !4133}
!4129 = !DILocalVariable(name: "stream", arg: 1, scope: !4084, file: !4085, line: 56, type: !4088)
!4130 = !DILocalVariable(name: "some_pending", scope: !4084, file: !4085, line: 58, type: !4131)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!4132 = !DILocalVariable(name: "prev_fail", scope: !4084, file: !4085, line: 59, type: !4131)
!4133 = !DILocalVariable(name: "fclose_fail", scope: !4084, file: !4085, line: 60, type: !4131)
!4134 = !DILocation(line: 56, column: 21, scope: !4084)
!4135 = !DILocation(line: 58, column: 30, scope: !4084)
!4136 = !DILocalVariable(name: "__stream", arg: 1, scope: !4137, file: !4138, line: 132, type: !4088)
!4137 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4138, file: !4138, line: 132, type: !4086, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !601, variables: !4139)
!4138 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4139 = !{!4136}
!4140 = !DILocation(line: 132, column: 1, scope: !4137, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 59, column: 27, scope: !4084)
!4142 = !DILocation(line: 134, column: 10, scope: !4137, inlinedAt: !4141)
!4143 = !{!4144, !830, i64 0}
!4144 = !{!"_IO_FILE", !830, i64 0, !631, i64 8, !631, i64 16, !631, i64 24, !631, i64 32, !631, i64 40, !631, i64 48, !631, i64 56, !631, i64 64, !631, i64 72, !631, i64 80, !631, i64 88, !631, i64 96, !631, i64 104, !830, i64 112, !830, i64 116, !912, i64 120, !780, i64 128, !632, i64 130, !632, i64 131, !631, i64 136, !912, i64 144, !631, i64 152, !631, i64 160, !631, i64 168, !631, i64 176, !912, i64 184, !830, i64 192, !632, i64 196}
!4145 = !DILocation(line: 59, column: 43, scope: !4084)
!4146 = !DILocation(line: 60, column: 29, scope: !4084)
!4147 = !DILocation(line: 60, column: 45, scope: !4084)
!4148 = !DILocation(line: 70, column: 17, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4084, file: !4085, line: 70, column: 7)
!4150 = !DILocation(line: 70, column: 33, scope: !4151)
!4151 = !DILexicalBlockFile(scope: !4149, file: !4085, discriminator: 1)
!4152 = !DILocation(line: 70, column: 53, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !4149, file: !4085, discriminator: 3)
!4154 = !DILocation(line: 70, column: 7, scope: !4155)
!4155 = !DILexicalBlockFile(scope: !4084, file: !4085, discriminator: 3)
!4156 = !DILocation(line: 72, column: 11, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4149, file: !4085, line: 71, column: 5)
!4158 = !DILocation(line: 73, column: 9, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4157, file: !4085, line: 72, column: 11)
!4160 = !DILocation(line: 73, column: 15, scope: !4159)
!4161 = !DILocation(line: 78, column: 1, scope: !4084)
!4162 = distinct !DISubprogram(name: "hard_locale", scope: !4163, file: !4163, line: 38, type: !4164, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !4166)
!4163 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!71, !43}
!4166 = !{!4167, !4168, !4169, !4170, !4177, !4178, !4180, !4181, !4183, !4184, !4186}
!4167 = !DILocalVariable(name: "category", arg: 1, scope: !4162, file: !4163, line: 38, type: !43)
!4168 = !DILocalVariable(name: "hard", scope: !4162, file: !4163, line: 40, type: !71)
!4169 = !DILocalVariable(name: "p", scope: !4162, file: !4163, line: 41, type: !61)
!4170 = !DILocalVariable(name: "__s1_len", scope: !4171, file: !4163, line: 47, type: !53)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !4163, line: 47, column: 15)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !4163, line: 47, column: 15)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !4163, line: 46, column: 9)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !4163, line: 45, column: 11)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !4163, line: 44, column: 5)
!4176 = distinct !DILexicalBlock(scope: !4162, file: !4163, line: 43, column: 7)
!4177 = !DILocalVariable(name: "__s2_len", scope: !4171, file: !4163, line: 47, type: !53)
!4178 = !DILocalVariable(name: "__s2", scope: !4179, file: !4163, line: 47, type: !58)
!4179 = distinct !DILexicalBlock(scope: !4171, file: !4163, line: 47, column: 15)
!4180 = !DILocalVariable(name: "__result", scope: !4179, file: !4163, line: 47, type: !43)
!4181 = !DILocalVariable(name: "__s1_len", scope: !4182, file: !4163, line: 47, type: !53)
!4182 = distinct !DILexicalBlock(scope: !4172, file: !4163, line: 47, column: 39)
!4183 = !DILocalVariable(name: "__s2_len", scope: !4182, file: !4163, line: 47, type: !53)
!4184 = !DILocalVariable(name: "__s2", scope: !4185, file: !4163, line: 47, type: !58)
!4185 = distinct !DILexicalBlock(scope: !4182, file: !4163, line: 47, column: 39)
!4186 = !DILocalVariable(name: "__result", scope: !4185, file: !4163, line: 47, type: !43)
!4187 = !DILocation(line: 38, column: 18, scope: !4162)
!4188 = !DILocation(line: 40, column: 8, scope: !4162)
!4189 = !DILocation(line: 41, column: 19, scope: !4162)
!4190 = !DILocation(line: 41, column: 15, scope: !4162)
!4191 = !DILocation(line: 43, column: 7, scope: !4176)
!4192 = !DILocation(line: 43, column: 7, scope: !4162)
!4193 = !DILocation(line: 47, column: 15, scope: !4171)
!4194 = !DILocation(line: 47, column: 15, scope: !4179)
!4195 = !DILocation(line: 47, column: 15, scope: !4196)
!4196 = !DILexicalBlockFile(scope: !4179, file: !4163, discriminator: 2)
!4197 = !DILocation(line: 47, column: 15, scope: !4198)
!4198 = !DILexicalBlockFile(scope: !4199, file: !4163, discriminator: 3)
!4199 = distinct !DILexicalBlock(scope: !4179, file: !4163, line: 47, column: 15)
!4200 = !DILocation(line: 47, column: 15, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !4199, file: !4163, discriminator: 2)
!4202 = !DILocation(line: 47, column: 15, scope: !4203)
!4203 = !DILexicalBlockFile(scope: !4204, file: !4163, discriminator: 4)
!4204 = distinct !DILexicalBlock(scope: !4199, file: !4163, line: 47, column: 15)
!4205 = !DILocation(line: 47, column: 15, scope: !4206)
!4206 = !DILexicalBlockFile(scope: !4171, file: !4163, discriminator: 11)
!4207 = !DILocation(line: 47, column: 36, scope: !4208)
!4208 = !DILexicalBlockFile(scope: !4172, file: !4163, discriminator: 13)
!4209 = !DILocation(line: 47, column: 39, scope: !4182)
!4210 = !DILocation(line: 47, column: 39, scope: !4211)
!4211 = !DILexicalBlockFile(scope: !4182, file: !4163, discriminator: 26)
!4212 = !DILocation(line: 47, column: 59, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4172, file: !4163, discriminator: 27)
!4214 = !DILocation(line: 47, column: 15, scope: !4215)
!4215 = !DILexicalBlockFile(scope: !4173, file: !4163, discriminator: 27)
!4216 = !DILocation(line: 48, column: 13, scope: !4172)
!4217 = !DILocation(line: 71, column: 3, scope: !4162)
!4218 = distinct !DISubprogram(name: "locale_charset", scope: !553, file: !553, line: 393, type: !4219, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !209, variables: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!61}
!4221 = !{!4222, !4223, !4224, !4229}
!4222 = !DILocalVariable(name: "codeset", scope: !4218, file: !553, line: 395, type: !61)
!4223 = !DILocalVariable(name: "aliases", scope: !4218, file: !553, line: 396, type: !61)
!4224 = !DILocalVariable(name: "__s1_len", scope: !4225, file: !553, line: 592, type: !53)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !553, line: 592, column: 9)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !553, line: 592, column: 9)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !553, line: 589, column: 3)
!4228 = distinct !DILexicalBlock(scope: !4218, file: !553, line: 589, column: 3)
!4229 = !DILocalVariable(name: "__s2_len", scope: !4225, file: !553, line: 592, type: !53)
!4230 = !DILocalVariable(name: "buf1", scope: !4231, file: !553, line: 196, type: !4298)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !553, line: 194, column: 21)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !553, line: 193, column: 19)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !553, line: 193, column: 19)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !553, line: 188, column: 17)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !553, line: 181, column: 19)
!4236 = distinct !DILexicalBlock(scope: !4237, file: !553, line: 177, column: 13)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !553, line: 173, column: 15)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !553, line: 161, column: 9)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !553, line: 157, column: 11)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !553, line: 130, column: 5)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !553, line: 129, column: 7)
!4242 = distinct !DISubprogram(name: "get_charset_aliases", scope: !553, file: !553, line: 124, type: !4219, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !209, variables: !4243)
!4243 = !{!4244, !4245, !4246, !4247, !4248, !4250, !4251, !4252, !4253, !4294, !4295, !4296, !4230, !4297, !4301, !4302, !4303}
!4244 = !DILocalVariable(name: "cp", scope: !4242, file: !553, line: 126, type: !61)
!4245 = !DILocalVariable(name: "dir", scope: !4240, file: !553, line: 132, type: !61)
!4246 = !DILocalVariable(name: "base", scope: !4240, file: !553, line: 133, type: !61)
!4247 = !DILocalVariable(name: "file_name", scope: !4240, file: !553, line: 134, type: !50)
!4248 = !DILocalVariable(name: "dir_len", scope: !4249, file: !553, line: 144, type: !53)
!4249 = distinct !DILexicalBlock(scope: !4240, file: !553, line: 143, column: 7)
!4250 = !DILocalVariable(name: "base_len", scope: !4249, file: !553, line: 145, type: !53)
!4251 = !DILocalVariable(name: "add_slash", scope: !4249, file: !553, line: 146, type: !43)
!4252 = !DILocalVariable(name: "fd", scope: !4238, file: !553, line: 162, type: !43)
!4253 = !DILocalVariable(name: "fp", scope: !4236, file: !553, line: 178, type: !4254)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 49, baseType: !4256)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3206, line: 241, size: 1728, elements: !4257)
!4257 = !{!4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4256, file: !3206, line: 242, baseType: !43, size: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4256, file: !3206, line: 247, baseType: !50, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4256, file: !3206, line: 248, baseType: !50, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4256, file: !3206, line: 249, baseType: !50, size: 64, offset: 192)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4256, file: !3206, line: 250, baseType: !50, size: 64, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4256, file: !3206, line: 251, baseType: !50, size: 64, offset: 320)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4256, file: !3206, line: 252, baseType: !50, size: 64, offset: 384)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4256, file: !3206, line: 253, baseType: !50, size: 64, offset: 448)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4256, file: !3206, line: 254, baseType: !50, size: 64, offset: 512)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4256, file: !3206, line: 256, baseType: !50, size: 64, offset: 576)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4256, file: !3206, line: 257, baseType: !50, size: 64, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4256, file: !3206, line: 258, baseType: !50, size: 64, offset: 704)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4256, file: !3206, line: 260, baseType: !4271, size: 64, offset: 768)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3206, line: 156, size: 192, elements: !4273)
!4273 = !{!4274, !4275, !4277}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4272, file: !3206, line: 157, baseType: !4271, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4272, file: !3206, line: 158, baseType: !4276, size: 64, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4272, file: !3206, line: 162, baseType: !43, size: 32, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4256, file: !3206, line: 262, baseType: !4276, size: 64, offset: 832)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4256, file: !3206, line: 264, baseType: !43, size: 32, offset: 896)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4256, file: !3206, line: 268, baseType: !43, size: 32, offset: 928)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4256, file: !3206, line: 270, baseType: !47, size: 64, offset: 960)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4256, file: !3206, line: 274, baseType: !44, size: 16, offset: 1024)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4256, file: !3206, line: 275, baseType: !3234, size: 8, offset: 1040)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4256, file: !3206, line: 276, baseType: !3236, size: 8, offset: 1048)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4256, file: !3206, line: 280, baseType: !3240, size: 64, offset: 1088)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4256, file: !3206, line: 289, baseType: !3243, size: 64, offset: 1152)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4256, file: !3206, line: 297, baseType: !52, size: 64, offset: 1216)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4256, file: !3206, line: 298, baseType: !52, size: 64, offset: 1280)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4256, file: !3206, line: 299, baseType: !52, size: 64, offset: 1344)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4256, file: !3206, line: 300, baseType: !52, size: 64, offset: 1408)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4256, file: !3206, line: 302, baseType: !53, size: 64, offset: 1472)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4256, file: !3206, line: 303, baseType: !43, size: 32, offset: 1536)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4256, file: !3206, line: 305, baseType: !3251, size: 160, offset: 1568)
!4294 = !DILocalVariable(name: "res_ptr", scope: !4234, file: !553, line: 190, type: !50)
!4295 = !DILocalVariable(name: "res_size", scope: !4234, file: !553, line: 191, type: !53)
!4296 = !DILocalVariable(name: "c", scope: !4231, file: !553, line: 195, type: !43)
!4297 = !DILocalVariable(name: "buf2", scope: !4231, file: !553, line: 197, type: !4298)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 408, elements: !4299)
!4299 = !{!4300}
!4300 = !DISubrange(count: 51)
!4301 = !DILocalVariable(name: "l1", scope: !4231, file: !553, line: 198, type: !53)
!4302 = !DILocalVariable(name: "l2", scope: !4231, file: !553, line: 198, type: !53)
!4303 = !DILocalVariable(name: "old_res_ptr", scope: !4231, file: !553, line: 199, type: !50)
!4304 = !DILocation(line: 196, column: 28, scope: !4231, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 589, column: 18, scope: !4228)
!4306 = !DILocation(line: 197, column: 28, scope: !4231, inlinedAt: !4305)
!4307 = !DILocation(line: 403, column: 13, scope: !4218)
!4308 = !DILocation(line: 395, column: 15, scope: !4218)
!4309 = !DILocation(line: 584, column: 15, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4218, file: !553, line: 584, column: 7)
!4311 = !DILocation(line: 584, column: 7, scope: !4218)
!4312 = !DILocation(line: 128, column: 8, scope: !4242, inlinedAt: !4305)
!4313 = !DILocation(line: 126, column: 15, scope: !4242, inlinedAt: !4305)
!4314 = !DILocation(line: 129, column: 10, scope: !4241, inlinedAt: !4305)
!4315 = !DILocation(line: 129, column: 7, scope: !4242, inlinedAt: !4305)
!4316 = !DILocation(line: 138, column: 13, scope: !4240, inlinedAt: !4305)
!4317 = !DILocation(line: 132, column: 19, scope: !4240, inlinedAt: !4305)
!4318 = !DILocation(line: 139, column: 15, scope: !4319, inlinedAt: !4305)
!4319 = distinct !DILexicalBlock(scope: !4240, file: !553, line: 139, column: 11)
!4320 = !DILocation(line: 139, column: 23, scope: !4319, inlinedAt: !4305)
!4321 = !DILocation(line: 139, column: 26, scope: !4322, inlinedAt: !4305)
!4322 = !DILexicalBlockFile(scope: !4319, file: !553, discriminator: 1)
!4323 = !DILocation(line: 139, column: 33, scope: !4322, inlinedAt: !4305)
!4324 = !DILocation(line: 139, column: 11, scope: !4325, inlinedAt: !4305)
!4325 = !DILexicalBlockFile(scope: !4240, file: !553, discriminator: 1)
!4326 = !DILocation(line: 140, column: 9, scope: !4319, inlinedAt: !4305)
!4327 = !DILocation(line: 144, column: 26, scope: !4249, inlinedAt: !4305)
!4328 = !DILocation(line: 144, column: 16, scope: !4249, inlinedAt: !4305)
!4329 = !DILocation(line: 145, column: 16, scope: !4249, inlinedAt: !4305)
!4330 = !DILocation(line: 146, column: 34, scope: !4249, inlinedAt: !4305)
!4331 = !DILocation(line: 146, column: 38, scope: !4249, inlinedAt: !4305)
!4332 = !DILocation(line: 146, column: 42, scope: !4333, inlinedAt: !4305)
!4333 = !DILexicalBlockFile(scope: !4249, file: !553, discriminator: 1)
!4334 = !DILocation(line: 146, column: 41, scope: !4333, inlinedAt: !4305)
!4335 = !DILocation(line: 147, column: 48, scope: !4249, inlinedAt: !4305)
!4336 = !DILocation(line: 147, column: 46, scope: !4249, inlinedAt: !4305)
!4337 = !DILocation(line: 147, column: 69, scope: !4249, inlinedAt: !4305)
!4338 = !DILocation(line: 147, column: 30, scope: !4249, inlinedAt: !4305)
!4339 = !DILocation(line: 134, column: 13, scope: !4240, inlinedAt: !4305)
!4340 = !DILocation(line: 148, column: 13, scope: !4249, inlinedAt: !4305)
!4341 = !DILocation(line: 150, column: 13, scope: !4342, inlinedAt: !4305)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !553, line: 149, column: 11)
!4343 = distinct !DILexicalBlock(scope: !4249, file: !553, line: 148, column: 13)
!4344 = !DILocation(line: 151, column: 17, scope: !4342, inlinedAt: !4305)
!4345 = !DILocation(line: 152, column: 34, scope: !4346, inlinedAt: !4305)
!4346 = distinct !DILexicalBlock(scope: !4342, file: !553, line: 151, column: 17)
!4347 = !DILocation(line: 153, column: 41, scope: !4342, inlinedAt: !4305)
!4348 = !DILocation(line: 153, column: 13, scope: !4342, inlinedAt: !4305)
!4349 = !DILocation(line: 157, column: 11, scope: !4240, inlinedAt: !4305)
!4350 = !DILocation(line: 171, column: 16, scope: !4238, inlinedAt: !4305)
!4351 = !DILocation(line: 162, column: 15, scope: !4238, inlinedAt: !4305)
!4352 = !DILocation(line: 173, column: 18, scope: !4237, inlinedAt: !4305)
!4353 = !DILocation(line: 173, column: 15, scope: !4238, inlinedAt: !4305)
!4354 = !DILocation(line: 180, column: 20, scope: !4236, inlinedAt: !4305)
!4355 = !DILocation(line: 178, column: 21, scope: !4236, inlinedAt: !4305)
!4356 = !DILocation(line: 181, column: 22, scope: !4235, inlinedAt: !4305)
!4357 = !DILocation(line: 181, column: 19, scope: !4236, inlinedAt: !4305)
!4358 = !DILocation(line: 190, column: 25, scope: !4234, inlinedAt: !4305)
!4359 = !DILocation(line: 184, column: 19, scope: !4360, inlinedAt: !4305)
!4360 = distinct !DILexicalBlock(scope: !4235, file: !553, line: 182, column: 17)
!4361 = !DILocation(line: 186, column: 17, scope: !4360, inlinedAt: !4305)
!4362 = !DILocation(line: 191, column: 26, scope: !4234, inlinedAt: !4305)
!4363 = !DILocation(line: 196, column: 23, scope: !4231, inlinedAt: !4305)
!4364 = !DILocation(line: 197, column: 23, scope: !4231, inlinedAt: !4305)
!4365 = !DILocalVariable(name: "__fp", arg: 1, scope: !4366, file: !4138, line: 63, type: !4254)
!4366 = distinct !DISubprogram(name: "getc_unlocked", scope: !4138, file: !4138, line: 63, type: !4367, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !209, variables: !4369)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!43, !4254}
!4369 = !{!4365}
!4370 = !DILocation(line: 63, column: 22, scope: !4366, inlinedAt: !4371)
!4371 = distinct !DILocation(line: 201, column: 27, scope: !4231, inlinedAt: !4305)
!4372 = !DILocation(line: 65, column: 10, scope: !4366, inlinedAt: !4371)
!4373 = !{!4144, !631, i64 8}
!4374 = !{!4144, !631, i64 16}
!4375 = !{!"branch_weights", i32 2000, i32 1}
!4376 = !DILocation(line: 65, column: 10, scope: !4377, inlinedAt: !4371)
!4377 = !DILexicalBlockFile(scope: !4366, file: !4138, discriminator: 1)
!4378 = !DILocation(line: 65, column: 10, scope: !4379, inlinedAt: !4371)
!4379 = !DILexicalBlockFile(scope: !4366, file: !4138, discriminator: 2)
!4380 = !DILocation(line: 65, column: 10, scope: !4381, inlinedAt: !4371)
!4381 = !DILexicalBlockFile(scope: !4366, file: !4138, discriminator: 3)
!4382 = !DILocation(line: 195, column: 27, scope: !4231, inlinedAt: !4305)
!4383 = !DILocation(line: 202, column: 27, scope: !4231, inlinedAt: !4305)
!4384 = !DILocation(line: 63, column: 22, scope: !4366, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 210, column: 33, scope: !4386, inlinedAt: !4305)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !553, line: 207, column: 25)
!4387 = distinct !DILexicalBlock(scope: !4231, file: !553, line: 206, column: 27)
!4388 = !DILocation(line: 65, column: 10, scope: !4366, inlinedAt: !4385)
!4389 = !DILocation(line: 65, column: 10, scope: !4377, inlinedAt: !4385)
!4390 = !DILocation(line: 65, column: 10, scope: !4379, inlinedAt: !4385)
!4391 = !DILocation(line: 65, column: 10, scope: !4381, inlinedAt: !4385)
!4392 = !DILocation(line: 210, column: 29, scope: !4393, inlinedAt: !4305)
!4393 = !DILexicalBlockFile(scope: !4386, file: !553, discriminator: 1)
!4394 = distinct !{!4394, !4395, !4396}
!4395 = !DILocation(line: 193, column: 19, scope: !4233)
!4396 = !DILocation(line: 241, column: 21, scope: !4233)
!4397 = !DILocation(line: 216, column: 23, scope: !4231, inlinedAt: !4305)
!4398 = !DILocation(line: 217, column: 27, scope: !4399, inlinedAt: !4305)
!4399 = distinct !DILexicalBlock(scope: !4231, file: !553, line: 217, column: 27)
!4400 = !DILocation(line: 217, column: 64, scope: !4399, inlinedAt: !4305)
!4401 = !DILocation(line: 217, column: 27, scope: !4231, inlinedAt: !4305)
!4402 = !DILocation(line: 219, column: 28, scope: !4231, inlinedAt: !4305)
!4403 = !DILocation(line: 198, column: 30, scope: !4231, inlinedAt: !4305)
!4404 = !DILocation(line: 220, column: 28, scope: !4231, inlinedAt: !4305)
!4405 = !DILocation(line: 198, column: 34, scope: !4231, inlinedAt: !4305)
!4406 = !DILocation(line: 199, column: 29, scope: !4231, inlinedAt: !4305)
!4407 = !DILocation(line: 222, column: 36, scope: !4408, inlinedAt: !4305)
!4408 = distinct !DILexicalBlock(scope: !4231, file: !553, line: 222, column: 27)
!4409 = !DILocation(line: 222, column: 27, scope: !4231, inlinedAt: !4305)
!4410 = !DILocation(line: 225, column: 63, scope: !4411, inlinedAt: !4305)
!4411 = distinct !DILexicalBlock(scope: !4408, file: !553, line: 223, column: 25)
!4412 = !DILocation(line: 225, column: 46, scope: !4411, inlinedAt: !4305)
!4413 = !DILocation(line: 226, column: 25, scope: !4411, inlinedAt: !4305)
!4414 = !DILocation(line: 229, column: 36, scope: !4415, inlinedAt: !4305)
!4415 = distinct !DILexicalBlock(scope: !4408, file: !553, line: 228, column: 25)
!4416 = !DILocation(line: 230, column: 73, scope: !4415, inlinedAt: !4305)
!4417 = !DILocation(line: 230, column: 46, scope: !4415, inlinedAt: !4305)
!4418 = !DILocation(line: 232, column: 35, scope: !4419, inlinedAt: !4305)
!4419 = distinct !DILexicalBlock(scope: !4231, file: !553, line: 232, column: 27)
!4420 = !DILocation(line: 232, column: 27, scope: !4231, inlinedAt: !4305)
!4421 = !DILocation(line: 236, column: 27, scope: !4422, inlinedAt: !4305)
!4422 = distinct !DILexicalBlock(scope: !4419, file: !553, line: 233, column: 25)
!4423 = !DILocation(line: 237, column: 27, scope: !4422, inlinedAt: !4305)
!4424 = !DILocation(line: 239, column: 39, scope: !4231, inlinedAt: !4305)
!4425 = !DILocation(line: 239, column: 50, scope: !4231, inlinedAt: !4305)
!4426 = !DILocation(line: 239, column: 61, scope: !4231, inlinedAt: !4305)
!4427 = !DILocalVariable(name: "__dest", arg: 1, scope: !4428, file: !4429, line: 107, type: !4432)
!4428 = distinct !DISubprogram(name: "strcpy", scope: !4429, file: !4429, line: 107, type: !4430, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !209, variables: !4433)
!4429 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!50, !4432, !3804}
!4432 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!4433 = !{!4427, !4434}
!4434 = !DILocalVariable(name: "__src", arg: 2, scope: !4428, file: !4429, line: 107, type: !3804)
!4435 = !DILocation(line: 107, column: 1, scope: !4428, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 239, column: 23, scope: !4231, inlinedAt: !4305)
!4437 = !DILocation(line: 109, column: 49, scope: !4428, inlinedAt: !4436)
!4438 = !DILocation(line: 109, column: 10, scope: !4428, inlinedAt: !4436)
!4439 = !DILocation(line: 107, column: 1, scope: !4428, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 240, column: 23, scope: !4231, inlinedAt: !4305)
!4441 = !DILocation(line: 109, column: 49, scope: !4428, inlinedAt: !4440)
!4442 = !DILocation(line: 109, column: 10, scope: !4428, inlinedAt: !4440)
!4443 = !DILocation(line: 241, column: 21, scope: !4232, inlinedAt: !4305)
!4444 = !DILocation(line: 242, column: 19, scope: !4234, inlinedAt: !4305)
!4445 = !DILocation(line: 243, column: 32, scope: !4446, inlinedAt: !4305)
!4446 = distinct !DILexicalBlock(scope: !4234, file: !553, line: 243, column: 23)
!4447 = !DILocation(line: 243, column: 23, scope: !4234, inlinedAt: !4305)
!4448 = !DILocation(line: 247, column: 33, scope: !4449, inlinedAt: !4305)
!4449 = distinct !DILexicalBlock(scope: !4446, file: !553, line: 246, column: 21)
!4450 = !DILocation(line: 247, column: 45, scope: !4449, inlinedAt: !4305)
!4451 = !DILocation(line: 253, column: 11, scope: !4238, inlinedAt: !4305)
!4452 = !DILocation(line: 377, column: 23, scope: !4240, inlinedAt: !4305)
!4453 = !DILocation(line: 378, column: 5, scope: !4240, inlinedAt: !4305)
!4454 = !DILocation(line: 396, column: 15, scope: !4218)
!4455 = !DILocation(line: 590, column: 8, scope: !4227)
!4456 = !DILocation(line: 590, column: 17, scope: !4227)
!4457 = !DILocation(line: 589, column: 3, scope: !4458)
!4458 = !DILexicalBlockFile(scope: !4228, file: !553, discriminator: 1)
!4459 = !DILocation(line: 592, column: 9, scope: !4225)
!4460 = !DILocation(line: 592, column: 35, scope: !4226)
!4461 = !DILocation(line: 593, column: 9, scope: !4226)
!4462 = !DILocation(line: 593, column: 24, scope: !4463)
!4463 = !DILexicalBlockFile(scope: !4226, file: !553, discriminator: 1)
!4464 = !DILocation(line: 593, column: 31, scope: !4463)
!4465 = !DILocation(line: 593, column: 34, scope: !4466)
!4466 = !DILexicalBlockFile(scope: !4226, file: !553, discriminator: 2)
!4467 = !DILocation(line: 593, column: 45, scope: !4466)
!4468 = !DILocation(line: 592, column: 9, scope: !4469)
!4469 = !DILexicalBlockFile(scope: !4227, file: !553, discriminator: 1)
!4470 = !DILocation(line: 595, column: 29, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4226, file: !553, line: 594, column: 7)
!4472 = !DILocation(line: 595, column: 27, scope: !4471)
!4473 = !DILocation(line: 595, column: 46, scope: !4471)
!4474 = !DILocation(line: 596, column: 9, scope: !4471)
!4475 = !DILocation(line: 591, column: 19, scope: !4227)
!4476 = !DILocation(line: 591, column: 36, scope: !4227)
!4477 = !DILocation(line: 591, column: 16, scope: !4227)
!4478 = !DILocation(line: 591, column: 52, scope: !4469)
!4479 = !DILocation(line: 591, column: 69, scope: !4227)
!4480 = !DILocation(line: 591, column: 49, scope: !4227)
!4481 = distinct !{!4481, !4482, !4483}
!4482 = !DILocation(line: 589, column: 3, scope: !4228)
!4483 = !DILocation(line: 597, column: 7, scope: !4228)
!4484 = !DILocation(line: 602, column: 7, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4218, file: !553, line: 602, column: 7)
!4486 = !DILocation(line: 602, column: 18, scope: !4485)
!4487 = !DILocation(line: 602, column: 7, scope: !4218)
!4488 = !DILocation(line: 612, column: 3, scope: !4218)
!4489 = distinct !DISubprogram(name: "rpl_fclose", scope: !4490, file: !4490, line: 56, type: !4491, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !4533)
!4490 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!43, !4493}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 49, baseType: !4495)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3206, line: 241, size: 1728, elements: !4496)
!4496 = !{!4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4495, file: !3206, line: 242, baseType: !43, size: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4495, file: !3206, line: 247, baseType: !50, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4495, file: !3206, line: 248, baseType: !50, size: 64, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4495, file: !3206, line: 249, baseType: !50, size: 64, offset: 192)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4495, file: !3206, line: 250, baseType: !50, size: 64, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4495, file: !3206, line: 251, baseType: !50, size: 64, offset: 320)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4495, file: !3206, line: 252, baseType: !50, size: 64, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4495, file: !3206, line: 253, baseType: !50, size: 64, offset: 448)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4495, file: !3206, line: 254, baseType: !50, size: 64, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4495, file: !3206, line: 256, baseType: !50, size: 64, offset: 576)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4495, file: !3206, line: 257, baseType: !50, size: 64, offset: 640)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4495, file: !3206, line: 258, baseType: !50, size: 64, offset: 704)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4495, file: !3206, line: 260, baseType: !4510, size: 64, offset: 768)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3206, line: 156, size: 192, elements: !4512)
!4512 = !{!4513, !4514, !4516}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4511, file: !3206, line: 157, baseType: !4510, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4511, file: !3206, line: 158, baseType: !4515, size: 64, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4511, file: !3206, line: 162, baseType: !43, size: 32, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4495, file: !3206, line: 262, baseType: !4515, size: 64, offset: 832)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4495, file: !3206, line: 264, baseType: !43, size: 32, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4495, file: !3206, line: 268, baseType: !43, size: 32, offset: 928)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4495, file: !3206, line: 270, baseType: !47, size: 64, offset: 960)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4495, file: !3206, line: 274, baseType: !44, size: 16, offset: 1024)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4495, file: !3206, line: 275, baseType: !3234, size: 8, offset: 1040)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4495, file: !3206, line: 276, baseType: !3236, size: 8, offset: 1048)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4495, file: !3206, line: 280, baseType: !3240, size: 64, offset: 1088)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4495, file: !3206, line: 289, baseType: !3243, size: 64, offset: 1152)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4495, file: !3206, line: 297, baseType: !52, size: 64, offset: 1216)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4495, file: !3206, line: 298, baseType: !52, size: 64, offset: 1280)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4495, file: !3206, line: 299, baseType: !52, size: 64, offset: 1344)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4495, file: !3206, line: 300, baseType: !52, size: 64, offset: 1408)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4495, file: !3206, line: 302, baseType: !53, size: 64, offset: 1472)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4495, file: !3206, line: 303, baseType: !43, size: 32, offset: 1536)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4495, file: !3206, line: 305, baseType: !3251, size: 160, offset: 1568)
!4533 = !{!4534, !4535, !4536, !4537}
!4534 = !DILocalVariable(name: "fp", arg: 1, scope: !4489, file: !4490, line: 56, type: !4493)
!4535 = !DILocalVariable(name: "saved_errno", scope: !4489, file: !4490, line: 58, type: !43)
!4536 = !DILocalVariable(name: "fd", scope: !4489, file: !4490, line: 59, type: !43)
!4537 = !DILocalVariable(name: "result", scope: !4489, file: !4490, line: 60, type: !43)
!4538 = !DILocation(line: 56, column: 19, scope: !4489)
!4539 = !DILocation(line: 58, column: 7, scope: !4489)
!4540 = !DILocation(line: 60, column: 7, scope: !4489)
!4541 = !DILocation(line: 63, column: 8, scope: !4489)
!4542 = !DILocation(line: 59, column: 7, scope: !4489)
!4543 = !DILocation(line: 64, column: 10, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4489, file: !4490, line: 64, column: 7)
!4545 = !DILocation(line: 64, column: 7, scope: !4489)
!4546 = !DILocation(line: 65, column: 12, scope: !4544)
!4547 = !DILocation(line: 65, column: 5, scope: !4544)
!4548 = !DILocation(line: 70, column: 9, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4489, file: !4490, line: 70, column: 7)
!4550 = !DILocation(line: 70, column: 23, scope: !4549)
!4551 = !DILocation(line: 70, column: 33, scope: !4552)
!4552 = !DILexicalBlockFile(scope: !4549, file: !4490, discriminator: 1)
!4553 = !DILocation(line: 70, column: 26, scope: !4554)
!4554 = !DILexicalBlockFile(scope: !4549, file: !4490, discriminator: 3)
!4555 = !DILocation(line: 70, column: 59, scope: !4552)
!4556 = !DILocation(line: 71, column: 7, scope: !4549)
!4557 = !DILocation(line: 71, column: 10, scope: !4552)
!4558 = !DILocation(line: 70, column: 7, scope: !4559)
!4559 = !DILexicalBlockFile(scope: !4489, file: !4490, discriminator: 2)
!4560 = !DILocation(line: 98, column: 12, scope: !4489)
!4561 = !DILocation(line: 103, column: 7, scope: !4489)
!4562 = !DILocation(line: 72, column: 19, scope: !4549)
!4563 = !DILocation(line: 103, column: 19, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4489, file: !4490, line: 103, column: 7)
!4565 = !DILocation(line: 105, column: 13, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4564, file: !4490, line: 104, column: 5)
!4567 = !DILocation(line: 107, column: 5, scope: !4566)
!4568 = !DILocation(line: 110, column: 1, scope: !4489)
!4569 = distinct !DISubprogram(name: "rpl_fflush", scope: !4570, file: !4570, line: 127, type: !4571, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !4613)
!4570 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!43, !4573}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 49, baseType: !4575)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3206, line: 241, size: 1728, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4575, file: !3206, line: 242, baseType: !43, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4575, file: !3206, line: 247, baseType: !50, size: 64, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4575, file: !3206, line: 248, baseType: !50, size: 64, offset: 128)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4575, file: !3206, line: 249, baseType: !50, size: 64, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4575, file: !3206, line: 250, baseType: !50, size: 64, offset: 256)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4575, file: !3206, line: 251, baseType: !50, size: 64, offset: 320)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4575, file: !3206, line: 252, baseType: !50, size: 64, offset: 384)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4575, file: !3206, line: 253, baseType: !50, size: 64, offset: 448)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4575, file: !3206, line: 254, baseType: !50, size: 64, offset: 512)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4575, file: !3206, line: 256, baseType: !50, size: 64, offset: 576)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4575, file: !3206, line: 257, baseType: !50, size: 64, offset: 640)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4575, file: !3206, line: 258, baseType: !50, size: 64, offset: 704)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4575, file: !3206, line: 260, baseType: !4590, size: 64, offset: 768)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3206, line: 156, size: 192, elements: !4592)
!4592 = !{!4593, !4594, !4596}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4591, file: !3206, line: 157, baseType: !4590, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4591, file: !3206, line: 158, baseType: !4595, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4591, file: !3206, line: 162, baseType: !43, size: 32, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4575, file: !3206, line: 262, baseType: !4595, size: 64, offset: 832)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4575, file: !3206, line: 264, baseType: !43, size: 32, offset: 896)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4575, file: !3206, line: 268, baseType: !43, size: 32, offset: 928)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4575, file: !3206, line: 270, baseType: !47, size: 64, offset: 960)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4575, file: !3206, line: 274, baseType: !44, size: 16, offset: 1024)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4575, file: !3206, line: 275, baseType: !3234, size: 8, offset: 1040)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4575, file: !3206, line: 276, baseType: !3236, size: 8, offset: 1048)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4575, file: !3206, line: 280, baseType: !3240, size: 64, offset: 1088)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4575, file: !3206, line: 289, baseType: !3243, size: 64, offset: 1152)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4575, file: !3206, line: 297, baseType: !52, size: 64, offset: 1216)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4575, file: !3206, line: 298, baseType: !52, size: 64, offset: 1280)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4575, file: !3206, line: 299, baseType: !52, size: 64, offset: 1344)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4575, file: !3206, line: 300, baseType: !52, size: 64, offset: 1408)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4575, file: !3206, line: 302, baseType: !53, size: 64, offset: 1472)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4575, file: !3206, line: 303, baseType: !43, size: 32, offset: 1536)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4575, file: !3206, line: 305, baseType: !3251, size: 160, offset: 1568)
!4613 = !{!4614}
!4614 = !DILocalVariable(name: "stream", arg: 1, scope: !4569, file: !4570, line: 127, type: !4573)
!4615 = !DILocation(line: 127, column: 19, scope: !4569)
!4616 = !DILocation(line: 148, column: 14, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4569, file: !4570, line: 148, column: 7)
!4618 = !DILocation(line: 148, column: 22, scope: !4617)
!4619 = !DILocation(line: 148, column: 27, scope: !4620)
!4620 = !DILexicalBlockFile(scope: !4617, file: !4570, discriminator: 1)
!4621 = !DILocation(line: 148, column: 7, scope: !4622)
!4622 = !DILexicalBlockFile(scope: !4569, file: !4570, discriminator: 1)
!4623 = !DILocation(line: 149, column: 12, scope: !4617)
!4624 = !DILocation(line: 149, column: 5, scope: !4617)
!4625 = !DILocalVariable(name: "fp", arg: 1, scope: !4626, file: !4570, line: 40, type: !4573)
!4626 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4570, file: !4570, line: 40, type: !4627, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !4629)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !4573}
!4629 = !{!4625}
!4630 = !DILocation(line: 40, column: 48, scope: !4626, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 153, column: 3, scope: !4569)
!4632 = !DILocation(line: 42, column: 11, scope: !4633, inlinedAt: !4631)
!4633 = distinct !DILexicalBlock(scope: !4626, file: !4570, line: 42, column: 7)
!4634 = !DILocation(line: 42, column: 18, scope: !4633, inlinedAt: !4631)
!4635 = !DILocation(line: 42, column: 7, scope: !4626, inlinedAt: !4631)
!4636 = !DILocation(line: 44, column: 5, scope: !4633, inlinedAt: !4631)
!4637 = !DILocation(line: 155, column: 10, scope: !4569)
!4638 = !DILocation(line: 155, column: 3, scope: !4569)
!4639 = !DILocation(line: 229, column: 1, scope: !4569)
!4640 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4641, file: !4641, line: 28, type: !4642, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !610, variables: !4684)
!4641 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!43, !4644, !45, !43}
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 49, baseType: !4646)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3206, line: 241, size: 1728, elements: !4647)
!4647 = !{!4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4646, file: !3206, line: 242, baseType: !43, size: 32)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4646, file: !3206, line: 247, baseType: !50, size: 64, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4646, file: !3206, line: 248, baseType: !50, size: 64, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4646, file: !3206, line: 249, baseType: !50, size: 64, offset: 192)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4646, file: !3206, line: 250, baseType: !50, size: 64, offset: 256)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4646, file: !3206, line: 251, baseType: !50, size: 64, offset: 320)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4646, file: !3206, line: 252, baseType: !50, size: 64, offset: 384)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4646, file: !3206, line: 253, baseType: !50, size: 64, offset: 448)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4646, file: !3206, line: 254, baseType: !50, size: 64, offset: 512)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4646, file: !3206, line: 256, baseType: !50, size: 64, offset: 576)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4646, file: !3206, line: 257, baseType: !50, size: 64, offset: 640)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4646, file: !3206, line: 258, baseType: !50, size: 64, offset: 704)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4646, file: !3206, line: 260, baseType: !4661, size: 64, offset: 768)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3206, line: 156, size: 192, elements: !4663)
!4663 = !{!4664, !4665, !4667}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4662, file: !3206, line: 157, baseType: !4661, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4662, file: !3206, line: 158, baseType: !4666, size: 64, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4662, file: !3206, line: 162, baseType: !43, size: 32, offset: 128)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4646, file: !3206, line: 262, baseType: !4666, size: 64, offset: 832)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4646, file: !3206, line: 264, baseType: !43, size: 32, offset: 896)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4646, file: !3206, line: 268, baseType: !43, size: 32, offset: 928)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4646, file: !3206, line: 270, baseType: !47, size: 64, offset: 960)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4646, file: !3206, line: 274, baseType: !44, size: 16, offset: 1024)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4646, file: !3206, line: 275, baseType: !3234, size: 8, offset: 1040)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4646, file: !3206, line: 276, baseType: !3236, size: 8, offset: 1048)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4646, file: !3206, line: 280, baseType: !3240, size: 64, offset: 1088)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4646, file: !3206, line: 289, baseType: !3243, size: 64, offset: 1152)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4646, file: !3206, line: 297, baseType: !52, size: 64, offset: 1216)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4646, file: !3206, line: 298, baseType: !52, size: 64, offset: 1280)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4646, file: !3206, line: 299, baseType: !52, size: 64, offset: 1344)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4646, file: !3206, line: 300, baseType: !52, size: 64, offset: 1408)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4646, file: !3206, line: 302, baseType: !53, size: 64, offset: 1472)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4646, file: !3206, line: 303, baseType: !43, size: 32, offset: 1536)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4646, file: !3206, line: 305, baseType: !3251, size: 160, offset: 1568)
!4684 = !{!4685, !4686, !4687, !4688}
!4685 = !DILocalVariable(name: "fp", arg: 1, scope: !4640, file: !4641, line: 28, type: !4644)
!4686 = !DILocalVariable(name: "offset", arg: 2, scope: !4640, file: !4641, line: 28, type: !45)
!4687 = !DILocalVariable(name: "whence", arg: 3, scope: !4640, file: !4641, line: 28, type: !43)
!4688 = !DILocalVariable(name: "pos", scope: !4689, file: !4641, line: 116, type: !45)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !4641, line: 112, column: 5)
!4690 = distinct !DILexicalBlock(scope: !4640, file: !4641, line: 51, column: 7)
!4691 = !DILocation(line: 28, column: 15, scope: !4640)
!4692 = !DILocation(line: 28, column: 25, scope: !4640)
!4693 = !DILocation(line: 28, column: 37, scope: !4640)
!4694 = !DILocation(line: 51, column: 11, scope: !4690)
!4695 = !DILocation(line: 51, column: 31, scope: !4690)
!4696 = !DILocation(line: 51, column: 24, scope: !4690)
!4697 = !DILocation(line: 52, column: 7, scope: !4690)
!4698 = !DILocation(line: 52, column: 14, scope: !4699)
!4699 = !DILexicalBlockFile(scope: !4690, file: !4641, discriminator: 1)
!4700 = !{!4144, !631, i64 40}
!4701 = !DILocation(line: 52, column: 35, scope: !4699)
!4702 = !{!4144, !631, i64 32}
!4703 = !DILocation(line: 52, column: 28, scope: !4699)
!4704 = !DILocation(line: 53, column: 7, scope: !4690)
!4705 = !DILocation(line: 53, column: 14, scope: !4699)
!4706 = !{!4144, !631, i64 72}
!4707 = !DILocation(line: 53, column: 28, scope: !4699)
!4708 = !DILocation(line: 51, column: 7, scope: !4709)
!4709 = !DILexicalBlockFile(scope: !4640, file: !4641, discriminator: 1)
!4710 = !DILocation(line: 116, column: 26, scope: !4689)
!4711 = !DILocation(line: 116, column: 19, scope: !4712)
!4712 = !DILexicalBlockFile(scope: !4689, file: !4641, discriminator: 1)
!4713 = !DILocation(line: 116, column: 13, scope: !4689)
!4714 = !DILocation(line: 117, column: 15, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4689, file: !4641, line: 117, column: 11)
!4716 = !DILocation(line: 117, column: 11, scope: !4689)
!4717 = !DILocation(line: 127, column: 11, scope: !4689)
!4718 = !DILocation(line: 127, column: 18, scope: !4689)
!4719 = !DILocation(line: 128, column: 11, scope: !4689)
!4720 = !DILocation(line: 128, column: 19, scope: !4689)
!4721 = !{!4144, !912, i64 144}
!4722 = !DILocation(line: 159, column: 7, scope: !4689)
!4723 = !DILocation(line: 161, column: 10, scope: !4640)
!4724 = !DILocation(line: 161, column: 3, scope: !4640)
!4725 = !DILocation(line: 162, column: 1, scope: !4640)
