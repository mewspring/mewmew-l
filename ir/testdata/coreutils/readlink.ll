source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.F_triple = type { i8*, i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Print value of a symbolic link or canonical file name\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [437 x i8] c"  -f, --canonicalize            canonicalize by following every symlink in\0A                                every component of the given name recursively;\0A                                all but the last component must exist\0A  -e, --canonicalize-existing   canonicalize by following every symlink in\0A                                every component of the given name recursively,\0A                                all components must exist\0A\00", align 1
@.str.4 = private unnamed_addr constant [522 x i8] c"  -m, --canonicalize-missing    canonicalize by following every symlink in\0A                                every component of the given name recursively,\0A                                without requirements on components existence\0A  -n, --no-newline              do not output the trailing delimiter\0A  -q, --quiet,\0A  -s, --silent                  suppress most error messages (on by default)\0A  -v, --verbose                 report error messages\0A  -z, --zero                    end each output line with NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"efmnqsvz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@no_newline = internal unnamed_addr global i1 false, align 1
@verbose = internal unnamed_addr global i1 false, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Dmitry V. Levin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"ignoring --no-newline with multiple arguments\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"canonicalize\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"canonicalize-existing\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"canonicalize-missing\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"no-newline\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !89
@.str.17 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !95
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !100
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !103
@.str.51 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.52 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.53 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.54 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4, !dbg !110
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !128
@.str.73 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.79, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.85, i32 0, i32 0), i8* null], align 16, !dbg !135
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !163
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !170
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !183
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.87 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.89 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.90 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.91 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !190
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !197
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !185
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !199
@.str.98 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.102 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.115 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.116 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.117 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.118 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.119 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !203
@.str.1.132 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !212
@.str.3.158 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.159 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.160 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.161 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.162 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.163 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
define void @usage(i32) local_unnamed_addr #0 !dbg !630 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !634, metadata !635), !dbg !636
	%2 = icmp eq i32 %0, 0, !dbg !637
	br i1 %2, label %8, label %3, !dbg !639
	%4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !640, !tbaa !643
	%5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !640
	%6 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !643
	%7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12, !dbg !647
	br label %42, !dbg !649
	%9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !651
	%10 = load i8*, i8** @program_name, align 8, !dbg !651, !tbaa !643
	%11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12, !dbg !653
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !655
	%13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !655, !tbaa !643
	%14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12, !dbg !656
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([437 x i8], [437 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !657
	%16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !643
	%17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12, !dbg !658
	%18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([522 x i8], [522 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !659
	%19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !643
	%20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12, !dbg !660
	%21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !661
	%22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !643
	%23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12, !dbg !662
	%24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !663
	%25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !643
	%26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12, !dbg !664
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !54, metadata !635) #12, !dbg !665
	tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !54, metadata !635) #12, !dbg !665
	%27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !667
	%28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !668
	%29 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !670
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !65, metadata !635) #12, !dbg !671
	%30 = icmp eq i8* %29, null, !dbg !672
	br i1 %30, label %37, label %31, !dbg !673
	%32 = tail call i32 @strncmp(i8* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !674
	%33 = icmp eq i32 %32, 0, !dbg !674
	br i1 %33, label %37, label %34, !dbg !676
	%35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !678
	%36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !680
	br label %37, !dbg !682
	%38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !683
	%39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !684
	%40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !685
	%41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !686
	br label %42
	tail call void @exit(i32 %0) #15, !dbg !687
	unreachable, !dbg !687
}
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2
declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3
declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3
declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4
declare void @exit(i32) local_unnamed_addr #5
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !688 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !693, metadata !635), !dbg !704
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !694, metadata !635), !dbg !705
	tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !695, metadata !635), !dbg !706
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !635), !dbg !707
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !698, metadata !635), !dbg !708
	%3 = load i8*, i8** %1, align 8, !dbg !709, !tbaa !643
	tail call void @set_program_name(i8* %3) #12, !dbg !710
	%4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !711
	%5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !712
	%6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !713
	%7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !714
	br label %9, !dbg !715
	br label %9, !dbg !706
	%10 = phi i8 [ 0, %2 ], [ 1, %8 ]
	%11 = phi i32 [ -1, %2 ], [ %14, %8 ]
	br label %13, !dbg !706
	br label %19, !dbg !706
	%14 = phi i32 [ %11, %9 ], [ %20, %19 ]
	br label %15, !dbg !706
	tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !695, metadata !635), !dbg !706
	tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !698, metadata !635), !dbg !708
	%16 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !716
	tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !697, metadata !635), !dbg !718
	switch i32 %16, label %29 [
		i32 -1, label %30
		i32 101, label %12
		i32 102, label %17
		i32 109, label %18
		i32 110, label %21
		i32 113, label %22
		i32 115, label %22
		i32 118, label %23
		i32 122, label %8
		i32 -130, label %25
		i32 -131, label %26
	], !dbg !719, !llvm.loop !720
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !695, metadata !635), !dbg !706
	br label %19, !dbg !722
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !695, metadata !635), !dbg !706
	br label %19, !dbg !725
	%20 = phi i32 [ 1, %17 ], [ 2, %18 ], [ 0, %12 ]
	br label %13, !dbg !706, !llvm.loop !720
	store i1 true, i1* @no_newline, align 1
	br label %24, !dbg !726
	store i1 false, i1* @verbose, align 1
	br label %24, !dbg !727
	store i1 true, i1* @verbose, align 1
	br label %24, !dbg !728
	br label %15, !dbg !706, !llvm.loop !720
	tail call void @usage(i32 0) #16, !dbg !729
	unreachable, !dbg !729
	%27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !643
	%28 = load i8*, i8** @Version, align 8, !dbg !730, !tbaa !643
	tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #12, !dbg !730
	tail call void @exit(i32 0) #15, !dbg !731
	unreachable, !dbg !730
	tail call void @usage(i32 1) #16, !dbg !733
	unreachable, !dbg !733
	%31 = load i32, i32* @optind, align 4, !dbg !734, !tbaa !736
	%32 = icmp slt i32 %31, %0, !dbg !738
	br i1 %32, label %35, label %33, !dbg !739
	%34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !740
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %34) #12, !dbg !742
	tail call void @usage(i32 1) #16, !dbg !744
	unreachable, !dbg !744
	%36 = sub nsw i32 %0, %31, !dbg !745
	%37 = icmp sgt i32 %36, 1, !dbg !747
	br i1 %37, label %38, label %45, !dbg !748
	%39 = load i1, i1* @no_newline, align 1
	br i1 %39, label %40, label %43, !dbg !749
	%41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !751
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %41) #12, !dbg !753
	%42 = load i32, i32* @optind, align 4, !tbaa !736
	br label %43, !dbg !755
	%44 = phi i32 [ %42, %40 ], [ %31, %38 ]
	store i1 false, i1* @no_newline, align 1
	br label %45, !dbg !756
	%46 = phi i32 [ %44, %43 ], [ %31, %35 ], !dbg !757
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !696, metadata !635), !dbg !707
	%47 = icmp slt i32 %46, %0, !dbg !759
	br i1 %47, label %48, label %94, !dbg !760
	%49 = icmp eq i32 %14, -1
	%50 = icmp ne i8 %10, 0
	%51 = select i1 %50, i32 0, i32 10
	%52 = trunc i32 %51 to i8
	br label %53, !dbg !760
	%54 = phi i32 [ %46, %48 ], [ %91, %88 ]
	%55 = phi i32 [ 0, %48 ], [ %89, %88 ]
	%56 = sext i32 %54 to i64, !dbg !762
	%57 = getelementptr inbounds i8*, i8** %1, i64 %56, !dbg !762
	%58 = load i8*, i8** %57, align 8, !dbg !762, !tbaa !643
	tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !699, metadata !635), !dbg !763
	br i1 %49, label %61, label %59, !dbg !764
	%60 = tail call i8* @canonicalize_filename_mode(i8* %58, i32 %14) #12, !dbg !765
	br label %63, !dbg !766
	%62 = tail call i8* @areadlink_with_size(i8* %58, i64 63) #12, !dbg !768
	br label %63, !dbg !769
	%64 = phi i8* [ %60, %59 ], [ %62, %61 ], !dbg !771
	tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !703, metadata !635), !dbg !773
	%65 = icmp eq i8* %64, null, !dbg !774
	br i1 %65, label %82, label %66, !dbg !776
	%67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !777, !tbaa !643
	%68 = tail call i32 @fputs_unlocked(i8* nonnull %64, %struct._IO_FILE* %67) #12, !dbg !777
	%69 = load i1, i1* @no_newline, align 1
	br i1 %69, label %81, label %70, !dbg !779
	tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !780, metadata !635) #12, !dbg !786
	%71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !789, !tbaa !643
	%72 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 5, !dbg !789
	%73 = load i8*, i8** %72, align 8, !dbg !789, !tbaa !790
	%74 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 6, !dbg !789
	%75 = load i8*, i8** %74, align 8, !dbg !789, !tbaa !794
	%76 = icmp ult i8* %73, %75, !dbg !789
	br i1 %76, label %79, label %77, !dbg !789, !prof !795
	%78 = tail call i32 @__overflow(%struct._IO_FILE* %71, i32 %51) #12, !dbg !796
	br label %81, !dbg !796
	%80 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !798
	store i8* %80, i8** %72, align 8, !dbg !798, !tbaa !790
	store i8 %52, i8* %73, align 1, !dbg !798, !tbaa !800
	br label %81, !dbg !798
	tail call void @free(i8* nonnull %64) #12, !dbg !801
	br label %88, !dbg !802
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !696, metadata !635), !dbg !707
	%83 = load i1, i1* @verbose, align 1
	br i1 %83, label %84, label %88, !dbg !803
	%85 = tail call i32* @__errno_location() #1, !dbg !805
	%86 = load i32, i32* %85, align 4, !dbg !805, !tbaa !736
	%87 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %58) #12, !dbg !807
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %87) #12, !dbg !809
	br label %88, !dbg !811
	%89 = phi i32 [ %55, %81 ], [ 1, %84 ], [ 1, %82 ]
	tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !696, metadata !635), !dbg !707
	%90 = load i32, i32* @optind, align 4, !dbg !812, !tbaa !736
	%91 = add nsw i32 %90, 1, !dbg !812
	store i32 %91, i32* @optind, align 4, !dbg !812, !tbaa !736
	tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !696, metadata !635), !dbg !707
	%92 = icmp slt i32 %91, %0, !dbg !759
	br i1 %92, label %53, label %93, !dbg !760, !llvm.loop !814
	br label %94, !dbg !817
	%95 = phi i32 [ 0, %45 ], [ %89, %93 ]
	ret i32 %95, !dbg !817
}
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2
declare i8* @textdomain(i8*) local_unnamed_addr #2
declare i32 @atexit(void ()*) local_unnamed_addr #2
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2
declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3
declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3
declare void @free(i8* nocapture) local_unnamed_addr #2
declare i32* @__errno_location() local_unnamed_addr #7
define noalias i8* @areadlink_with_size(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !818 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !823, metadata !635), !dbg !841
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !824, metadata !635), !dbg !842
	tail call void @llvm.dbg.value(metadata i64 1024, i64 0, metadata !825, metadata !635), !dbg !843
	tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !826, metadata !635), !dbg !844
	tail call void @llvm.dbg.value(metadata i64 1025, i64 0, metadata !827, metadata !635), !dbg !845
	%3 = icmp ult i64 %1, 1025, !dbg !846
	%4 = add i64 %1, 1, !dbg !847
	%5 = select i1 %3, i64 %4, i64 1025, !dbg !849
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !828, metadata !635), !dbg !850
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !828, metadata !635), !dbg !850
	%6 = tail call noalias i8* @malloc(i64 %5) #12, !dbg !851
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !837, metadata !635), !dbg !852
	%7 = icmp eq i8* %6, null, !dbg !853
	br i1 %7, label %36, label %8, !dbg !855
	br label %9, !dbg !856
	%10 = phi i8* [ %29, %27 ], [ %6, %8 ]
	%11 = phi i64 [ %28, %27 ], [ %5, %8 ]
	%12 = tail call i64 @readlink(i8* %0, i8* nonnull %10, i64 %11) #12, !dbg !856
	tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !829, metadata !635), !dbg !857
	tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !836, metadata !635), !dbg !858
	%13 = icmp slt i64 %12, 0, !dbg !859
	br i1 %13, label %14, label %19, !dbg !860
	%15 = tail call i32* @__errno_location() #1, !dbg !861
	%16 = load i32, i32* %15, align 4, !dbg !861, !tbaa !736
	%17 = icmp eq i32 %16, 34, !dbg !863
	br i1 %17, label %19, label %18, !dbg !864
	tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !838, metadata !635), !dbg !866
	tail call void @free(i8* nonnull %10) #12, !dbg !867
	store i32 %16, i32* %15, align 4, !dbg !868, !tbaa !736
	br label %36
	%20 = icmp ult i64 %12, %11, !dbg !869
	br i1 %20, label %21, label %23, !dbg !871
	%22 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !872
	store i8 0, i8* %22, align 1, !dbg !874, !tbaa !800
	br label %36, !dbg !875
	tail call void @free(i8* nonnull %10) #12, !dbg !876
	%24 = icmp ult i64 %11, 4611686018427387904, !dbg !877
	br i1 %24, label %25, label %31, !dbg !879
	%26 = shl i64 %11, 1, !dbg !880
	tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !828, metadata !635), !dbg !850
	br label %27, !dbg !881
	%28 = phi i64 [ %26, %25 ], [ 9223372036854775807, %31 ]
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !828, metadata !635), !dbg !850
	%29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !851
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !837, metadata !635), !dbg !852
	%30 = icmp eq i8* %29, null, !dbg !853
	br i1 %30, label %35, label %9, !dbg !855
	%32 = icmp ult i64 %11, 9223372036854775807, !dbg !882
	br i1 %32, label %27, label %33, !dbg !884
	%34 = tail call i32* @__errno_location() #1, !dbg !885
	store i32 12, i32* %34, align 4, !dbg !887, !tbaa !736
	br label %36, !dbg !888
	br label %36, !dbg !889
	%37 = phi i8* [ null, %33 ], [ %10, %21 ], [ null, %18 ], [ null, %2 ], [ null, %35 ]
	ret i8* %37, !dbg !889
}
declare noalias i8* @malloc(i64) local_unnamed_addr #2
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2
define i8* @canonicalize_filename_mode(i8*, i32) local_unnamed_addr #6 !dbg !890 {
	%3 = alloca %struct.stat, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !896, metadata !635), !dbg !976
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !897, metadata !635), !dbg !977
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !900, metadata !635), !dbg !978
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !904, metadata !635), !dbg !979
	tail call void @llvm.dbg.value(metadata %struct.hash_table* null, i64 0, metadata !905, metadata !635), !dbg !980
	%4 = and i32 %1, 4, !dbg !981
	%5 = icmp eq i32 %4, 0, !dbg !982
	%6 = and i32 %1, 3, !dbg !983
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !897, metadata !635), !dbg !977
	%7 = add i32 %1, 3, !dbg !984
	%8 = and i32 %7, %6, !dbg !984
	%9 = icmp eq i32 %8, 0, !dbg !984
	br i1 %9, label %12, label %10, !dbg !986
	%11 = tail call i32* @__errno_location() #1, !dbg !987
	store i32 22, i32* %11, align 4, !dbg !989, !tbaa !736
	br label %312, !dbg !990
	%13 = icmp eq i8* %0, null, !dbg !991
	br i1 %13, label %14, label %16, !dbg !993
	%15 = tail call i32* @__errno_location() #1, !dbg !994
	store i32 22, i32* %15, align 4, !dbg !996, !tbaa !736
	br label %312, !dbg !997
	%17 = load i8, i8* %0, align 1, !dbg !998, !tbaa !800
	switch i8 %17, label %20 [
		i8 0, label %18
		i8 47, label %33
	], !dbg !1000
	%19 = tail call i32* @__errno_location() #1, !dbg !1001
	store i32 2, i32* %19, align 4, !dbg !1003, !tbaa !736
	br label %312, !dbg !1004
	%21 = tail call i8* @xgetcwd() #12, !dbg !1005
	tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !898, metadata !635), !dbg !1006
	%22 = icmp eq i8* %21, null, !dbg !1007
	br i1 %22, label %312, label %23, !dbg !1009
	%24 = tail call i8* @__rawmemchr(i8* nonnull %21, i32 0) #12, !dbg !1010
	tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !899, metadata !635), !dbg !1011
	%25 = ptrtoint i8* %24 to i64, !dbg !1012
	%26 = ptrtoint i8* %21 to i64, !dbg !1012
	%27 = sub i64 %25, %26, !dbg !1012
	%28 = icmp slt i64 %27, 4096, !dbg !1013
	br i1 %28, label %29, label %37, !dbg !1014
	%30 = tail call i8* @xrealloc(i8* nonnull %21, i64 4096) #12, !dbg !1015
	tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !913, metadata !635), !dbg !1016
	%31 = getelementptr inbounds i8, i8* %30, i64 %27, !dbg !1017
	tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !899, metadata !635), !dbg !1011
	tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !898, metadata !635), !dbg !1006
	%32 = getelementptr inbounds i8, i8* %30, i64 4096, !dbg !1018
	tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !903, metadata !635), !dbg !1019
	br label %37, !dbg !1020
	%34 = tail call noalias i8* @xmalloc(i64 4096) #12, !dbg !1021
	tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !898, metadata !635), !dbg !1006
	tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !903, metadata !635), !dbg !1019
	tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !899, metadata !635), !dbg !1011
	%35 = getelementptr inbounds i8, i8* %34, i64 4096, !dbg !1023
	tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !899, metadata !635), !dbg !1011
	%36 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1024
	tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !899, metadata !635), !dbg !1011
	store i8 47, i8* %34, align 1, !dbg !1025, !tbaa !800
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !901, metadata !635), !dbg !1026
	br label %37
	%38 = phi i8* [ %35, %33 ], [ %24, %23 ], [ %32, %29 ]
	%39 = phi i8* [ %36, %33 ], [ %24, %23 ], [ %31, %29 ]
	%40 = phi i8* [ %34, %33 ], [ %21, %23 ], [ %30, %29 ]
	call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !898, metadata !635), !dbg !1006
	call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !901, metadata !635), !dbg !1026
	call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !903, metadata !635), !dbg !1019
	%41 = load i8, i8* %0, align 1, !dbg !1029, !tbaa !800
	%42 = icmp eq i8 %41, 0, !dbg !1031
	br i1 %42, label %276, label %43, !dbg !1031
	%44 = bitcast %struct.stat* %3 to i8*
	%45 = icmp eq i32 %6, 2
	%46 = and i32 %1, 7
	%47 = icmp eq i32 %46, 6
	%48 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
	%49 = select i1 %45, i32 4, i32 13
	%50 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
	%51 = trunc i32 %1 to i2
	%52 = icmp ne i32 %6, 2
	br label %53, !dbg !1031
	%54 = phi i8 [ %41, %43 ], [ %256, %249 ]
	%55 = phi i8* [ %0, %43 ], [ %255, %249 ]
	%56 = phi i8* [ %40, %43 ], [ %154, %249 ]
	%57 = phi i8* [ %39, %43 ], [ %254, %249 ]
	%58 = phi i8* [ null, %43 ], [ %253, %249 ]
	%59 = phi i8* [ %0, %43 ], [ %252, %249 ]
	%60 = phi i32 [ undef, %43 ], [ %181, %249 ]
	%61 = phi i64 [ 0, %43 ], [ %251, %249 ]
	%62 = phi i8* [ %38, %43 ], [ %152, %249 ]
	%63 = phi %struct.hash_table* [ null, %43 ], [ %250, %249 ]
	br label %64, !dbg !1031
	%65 = phi i8 [ %54, %53 ], [ %270, %267 ]
	%66 = phi i8* [ %56, %53 ], [ %154, %267 ]
	%67 = phi i8* [ %57, %53 ], [ %155, %267 ]
	%68 = phi i8* [ %59, %53 ], [ %98, %267 ]
	%69 = phi i32 [ %60, %53 ], [ %269, %267 ]
	%70 = phi i8* [ %62, %53 ], [ %152, %267 ]
	%71 = phi %struct.hash_table* [ %63, %53 ], [ %268, %267 ]
	%72 = getelementptr inbounds i8, i8* %66, i64 1
	br label %75, !dbg !1031
	call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !898, metadata !635), !dbg !1006
	call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !901, metadata !635), !dbg !1026
	call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !903, metadata !635), !dbg !1019
	%74 = icmp eq i8 %97, 0, !dbg !1031
	br i1 %74, label %273, label %75, !dbg !1031
	%76 = phi i8 [ %65, %64 ], [ %97, %73 ]
	%77 = phi i8* [ %67, %64 ], [ %121, %73 ]
	%78 = phi i8* [ %68, %64 ], [ %98, %73 ]
	%79 = icmp ugt i8* %77, %72
	br label %80, !dbg !1031
	%81 = phi i8 [ %76, %75 ], [ %117, %116 ]
	%82 = phi i8* [ %78, %75 ], [ %98, %116 ]
	call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !901, metadata !635), !dbg !1026
	%83 = icmp eq i8 %81, 47, !dbg !1033
	%84 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1035
	call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !901, metadata !635), !dbg !1026
	br i1 %83, label %85, label %87, !dbg !1036, !llvm.loop !1037
	br label %91
	br label %87, !dbg !1040
	%88 = phi i8 [ %81, %80 ], [ %93, %86 ]
	%89 = phi i8* [ %82, %80 ], [ %92, %86 ]
	%90 = phi i8* [ %84, %80 ], [ %95, %86 ]
	br label %96, !dbg !1040
	%92 = phi i8* [ %95, %91 ], [ %84, %85 ]
	%93 = load i8, i8* %92, align 1, !tbaa !800
	call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !901, metadata !635), !dbg !1026
	%94 = icmp eq i8 %93, 47, !dbg !1033
	%95 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !1035
	call void @llvm.dbg.value(metadata i8* %95, i64 0, metadata !901, metadata !635), !dbg !1026
	br i1 %94, label %91, label %86, !dbg !1036, !llvm.loop !1037
	%97 = phi i8 [ %101, %99 ], [ %88, %87 ], !dbg !1029
	%98 = phi i8* [ %100, %99 ], [ %89, %87 ]
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !902, metadata !635), !dbg !1040
	switch i8 %97, label %99 [
		i8 0, label %102
		i8 47, label %102
	], !dbg !1041
	%100 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !1045
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !902, metadata !635), !dbg !1040
	%101 = load i8, i8* %100, align 1, !tbaa !800
	br label %96, !dbg !1047, !llvm.loop !1048
	%103 = ptrtoint i8* %98 to i64, !dbg !1051
	%104 = ptrtoint i8* %89 to i64, !dbg !1051
	%105 = sub i64 %103, %104, !dbg !1051
	switch i64 %105, label %127 [
		i64 0, label %272
		i64 1, label %106
		i64 2, label %109
	], !dbg !1052
	%107 = load i8, i8* %89, align 1, !dbg !1053, !tbaa !800
	%108 = icmp eq i8 %107, 46, !dbg !1055
	br i1 %108, label %116, label %127, !dbg !1056
	%110 = icmp eq i8 %88, 46, !dbg !1058
	br i1 %110, label %111, label %127, !dbg !1060
	%112 = load i8, i8* %90, align 1, !dbg !1061, !tbaa !800
	%113 = icmp eq i8 %112, 46, !dbg !1063
	br i1 %113, label %114, label %127, !dbg !1064
	br i1 %79, label %115, label %116, !dbg !1066
	br label %119
	call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !898, metadata !635), !dbg !1006
	call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !901, metadata !635), !dbg !1026
	call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !903, metadata !635), !dbg !1019
	%117 = load i8, i8* %98, align 1, !dbg !1029, !tbaa !800
	%118 = icmp eq i8 %117, 0, !dbg !1031
	br i1 %118, label %272, label %80, !dbg !1031, !llvm.loop !1068
	%120 = phi i8* [ %121, %123 ], [ %77, %115 ]
	%121 = getelementptr inbounds i8, i8* %120, i64 -1
	call void @llvm.dbg.value(metadata i8* %121, i64 0, metadata !899, metadata !635), !dbg !1011
	%122 = icmp ugt i8* %121, %66, !dbg !1071
	br i1 %122, label %123, label %73, !dbg !1076, !llvm.loop !1068
	%124 = getelementptr inbounds i8, i8* %120, i64 -2, !dbg !1077
	%125 = load i8, i8* %124, align 1, !dbg !1077, !tbaa !800
	%126 = icmp eq i8 %125, 47, !dbg !1079
	br i1 %126, label %73, label %119, !dbg !1080, !llvm.loop !1068
	%128 = phi i64 [ 1, %106 ], [ %105, %102 ], [ 2, %111 ], [ 2, %109 ]
	call void @llvm.lifetime.start(i64 144, i8* nonnull %44) #12, !dbg !1082
	%129 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1083
	%130 = load i8, i8* %129, align 1, !dbg !1083, !tbaa !800
	%131 = icmp eq i8 %130, 47, !dbg !1083
	br i1 %131, label %134, label %132, !dbg !1085
	%133 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1086
	call void @llvm.dbg.value(metadata i8* %133, i64 0, metadata !899, metadata !635), !dbg !1011
	store i8 47, i8* %77, align 1, !dbg !1087, !tbaa !800
	br label %134, !dbg !1088
	%135 = phi i8* [ %77, %127 ], [ %133, %132 ]
	call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !899, metadata !635), !dbg !1011
	%136 = getelementptr inbounds i8, i8* %135, i64 %128, !dbg !1089
	%137 = icmp ult i8* %136, %70, !dbg !1090
	br i1 %137, label %151, label %138, !dbg !1091
	%139 = ptrtoint i8* %135 to i64, !dbg !1092
	%140 = ptrtoint i8* %66 to i64, !dbg !1092
	%141 = sub i64 %139, %140, !dbg !1092
	call void @llvm.dbg.value(metadata i64 %141, i64 0, metadata !963, metadata !635), !dbg !1093
	%142 = ptrtoint i8* %70 to i64, !dbg !1094
	%143 = sub i64 %142, %140, !dbg !1094
	call void @llvm.dbg.value(metadata i64 %143, i64 0, metadata !967, metadata !635), !dbg !1095
	%144 = icmp sgt i64 %128, 4095, !dbg !1096
	%145 = add nsw i64 %128, 1, !dbg !1098
	%146 = select i1 %144, i64 %145, i64 4096, !dbg !1099
	%147 = add i64 %146, %143
	call void @llvm.dbg.value(metadata i64 %147, i64 0, metadata !967, metadata !635), !dbg !1095
	%148 = call i8* @xrealloc(i8* %66, i64 %147) #12, !dbg !1100
	call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !898, metadata !635), !dbg !1006
	%149 = getelementptr inbounds i8, i8* %148, i64 %147, !dbg !1101
	call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !903, metadata !635), !dbg !1019
	%150 = getelementptr inbounds i8, i8* %148, i64 %141, !dbg !1102
	call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !899, metadata !635), !dbg !1011
	br label %151, !dbg !1103
	%152 = phi i8* [ %149, %138 ], [ %70, %134 ]
	%153 = phi i8* [ %150, %138 ], [ %135, %134 ]
	%154 = phi i8* [ %148, %138 ], [ %66, %134 ]
	call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !898, metadata !635), !dbg !1006
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !903, metadata !635), !dbg !1019
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* %89, i64 %128, i32 1, i1 false), !dbg !1104
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !899, metadata !635), !dbg !1011
	%155 = getelementptr inbounds i8, i8* %153, i64 %128, !dbg !1105
	call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !899, metadata !635), !dbg !1011
	store i8 0, i8* %155, align 1, !dbg !1106, !tbaa !800
	br i1 %47, label %177, label %156, !dbg !1107
	call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !918, metadata !1109), !dbg !1110
	br i1 %5, label %159, label %157, !dbg !1111
	call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1113, metadata !635) #12, !dbg !1121
	call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1120, metadata !635) #12, !dbg !1121
	%158 = call i32 @__xstat(i32 1, i8* nonnull %154, %struct.stat* nonnull %3) #12, !dbg !1124
	br label %161, !dbg !1125
	call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !1126, metadata !635) #12, !dbg !1130
	call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1129, metadata !635) #12, !dbg !1130
	%160 = call i32 @__lxstat(i32 1, i8* nonnull %154, %struct.stat* nonnull %3) #12, !dbg !1133
	br label %161, !dbg !1134
	%162 = phi i32 [ %158, %157 ], [ %160, %159 ], !dbg !1135
	%163 = icmp eq i32 %162, 0, !dbg !1137
	br i1 %163, label %164, label %166, !dbg !1138
	%165 = load i32, i32* %48, align 8, !tbaa !1140
	br label %179, !dbg !1138
	%167 = tail call i32* @__errno_location() #1, !dbg !1143
	%168 = load i32, i32* %167, align 4, !dbg !1143, !tbaa !736
	call void @llvm.dbg.value(metadata i32 %168, i64 0, metadata !909, metadata !635), !dbg !1028
	switch i2 %51, label %177 [
		i2 0, label %258
		i2 1, label %169
	], !dbg !1145
	%170 = call i64 @strspn(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !1146
	%171 = getelementptr inbounds i8, i8* %98, i64 %170, !dbg !1150
	%172 = load i8, i8* %171, align 1, !dbg !1150, !tbaa !800
	%173 = icmp ne i8 %172, 0, !dbg !1150
	%174 = icmp ne i32 %168, 2, !dbg !1151
	%175 = or i1 %174, %173, !dbg !1153
	%176 = select i1 %175, i32 13, i32 4, !dbg !1154
	br label %262, !dbg !1154
	%178 = phi i32 [ %69, %151 ], [ %168, %166 ]
	call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !909, metadata !635), !dbg !1028
	store i32 0, i32* %48, align 8, !tbaa !1140
	br label %179, !dbg !1155
	%180 = phi i32 [ 0, %177 ], [ %165, %164 ], !dbg !1155
	%181 = phi i32 [ %178, %177 ], [ %69, %164 ]
	call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !909, metadata !635), !dbg !1028
	%182 = trunc i32 %180 to i16, !dbg !1156
	%183 = and i16 %182, -4096, !dbg !1156
	switch i16 %183, label %244 [
		i16 -24576, label %184
		i16 16384, label %248
	], !dbg !1156
	call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !918, metadata !1109), !dbg !1110
	call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !1157, metadata !635) #12, !dbg !1170
	call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1166, metadata !635) #12, !dbg !1173
	%185 = icmp eq %struct.hash_table* %71, null, !dbg !1174
	br i1 %185, label %186, label %190, !dbg !1175
	call void @llvm.dbg.value(metadata i64 7, i64 0, metadata !1167, metadata !635) #12, !dbg !1176
	%187 = call %struct.hash_table* @hash_initialize(i64 7, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @triple_hash, i1 (i8*, i8*)* nonnull @triple_compare_ino_str, void (i8*)* nonnull @triple_free) #12, !dbg !1177
	%188 = icmp eq %struct.hash_table* %187, null, !dbg !1178
	br i1 %188, label %189, label %190, !dbg !1180
	call void @xalloc_die() #15, !dbg !1181
	unreachable, !dbg !1181
	%191 = phi %struct.hash_table* [ %187, %186 ], [ %71, %184 ]
	%192 = call zeroext i1 @seen_file(%struct.hash_table* nonnull %191, i8* %55, %struct.stat* nonnull %3) #12, !dbg !1182
	br i1 %192, label %193, label %195, !dbg !1184
	%194 = select i1 %45, i32 %181, i32 40, !dbg !1185
	br label %262, !dbg !1185
	call void @record_file(%struct.hash_table* nonnull %191, i8* %55, %struct.stat* nonnull %3) #12, !dbg !1188
	%196 = load i64, i64* %50, align 8, !dbg !1189, !tbaa !1190
	%197 = call i8* @areadlink_with_size(i8* %154, i64 %196) #12, !dbg !1191
	call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !968, metadata !635), !dbg !1192
	%198 = icmp eq i8* %197, null, !dbg !1193
	br i1 %198, label %199, label %207, !dbg !1195
	%200 = tail call i32* @__errno_location() #1, !dbg !1196
	br i1 %45, label %201, label %205, !dbg !1200
	%202 = load i32, i32* %200, align 4, !dbg !1196, !tbaa !736
	%203 = icmp eq i32 %202, 12, !dbg !1201
	br i1 %203, label %205, label %204, !dbg !1202
	call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !902, metadata !635), !dbg !1040
	call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12, !dbg !1204
	br label %267
	%206 = load i32, i32* %200, align 4, !dbg !1205, !tbaa !736
	call void @llvm.dbg.value(metadata i32 %206, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !902, metadata !635), !dbg !1040
	call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12, !dbg !1204
	br label %304
	%208 = call i64 @strlen(i8* nonnull %197) #14, !dbg !1206
	call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !971, metadata !635), !dbg !1207
	%209 = call i64 @strlen(i8* %98) #14, !dbg !1208
	call void @llvm.dbg.value(metadata i64 %209, i64 0, metadata !972, metadata !635), !dbg !1209
	%210 = icmp eq i64 %61, 0, !dbg !1210
	%211 = add i64 %208, 1
	%212 = add i64 %211, %209
	br i1 %210, label %213, label %217, !dbg !1212
	%214 = icmp ugt i64 %212, 4096, !dbg !1213
	%215 = select i1 %214, i64 %212, i64 4096, !dbg !1215
	call void @llvm.dbg.value(metadata i64 %215, i64 0, metadata !904, metadata !635), !dbg !979
	%216 = call noalias i8* @xmalloc(i64 %215) #12, !dbg !1216
	call void @llvm.dbg.value(metadata i8* %216, i64 0, metadata !900, metadata !635), !dbg !978
	br label %221, !dbg !1217
	%218 = icmp ugt i64 %212, %61, !dbg !1218
	br i1 %218, label %219, label %221, !dbg !1220
	call void @llvm.dbg.value(metadata i64 %212, i64 0, metadata !904, metadata !635), !dbg !979
	%220 = call i8* @xrealloc(i8* %58, i64 %212) #12, !dbg !1221
	call void @llvm.dbg.value(metadata i8* %220, i64 0, metadata !900, metadata !635), !dbg !978
	br label %221, !dbg !1223
	%222 = phi i64 [ %212, %219 ], [ %61, %217 ], [ %215, %213 ]
	%223 = phi i8* [ %220, %219 ], [ %58, %217 ], [ %216, %213 ]
	call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 %222, i64 0, metadata !904, metadata !635), !dbg !979
	%224 = getelementptr inbounds i8, i8* %223, i64 %208, !dbg !1224
	%225 = add i64 %209, 1, !dbg !1225
	call void @llvm.memmove.p0i8.p0i8.i64(i8* %224, i8* %98, i64 %225, i32 1, i1 false), !dbg !1226
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* nonnull %197, i64 %208, i32 1, i1 false), !dbg !1227
	call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !902, metadata !635), !dbg !1040
	call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !896, metadata !635), !dbg !976
	%226 = load i8, i8* %197, align 1, !dbg !1228, !tbaa !800
	%227 = icmp eq i8 %226, 47, !dbg !1228
	%228 = getelementptr inbounds i8, i8* %154, i64 1
	br i1 %227, label %229, label %230, !dbg !1229
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !973, metadata !635), !dbg !1230
	call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %228, i64 0, metadata !899, metadata !635), !dbg !1011
	store i8 47, i8* %154, align 1, !dbg !1231, !tbaa !800
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	br label %242, !dbg !1232
	%231 = icmp ugt i8* %155, %228, !dbg !1233
	br i1 %231, label %232, label %242, !dbg !1236
	br label %233
	%234 = phi i8* [ %235, %237 ], [ %155, %232 ]
	%235 = getelementptr inbounds i8, i8* %234, i64 -1
	call void @llvm.dbg.value(metadata i8* %235, i64 0, metadata !899, metadata !635), !dbg !1011
	%236 = icmp ugt i8* %235, %154, !dbg !1237
	br i1 %236, label %237, label %241, !dbg !1241
	%238 = getelementptr inbounds i8, i8* %234, i64 -2, !dbg !1242
	%239 = load i8, i8* %238, align 1, !dbg !1242, !tbaa !800
	%240 = icmp eq i8 %239, 47, !dbg !1244
	br i1 %240, label %241, label %233, !dbg !1245, !llvm.loop !1247
	br label %242, !dbg !1011
	%243 = phi i8* [ %228, %229 ], [ %155, %230 ], [ %235, %241 ]
	call void @llvm.dbg.value(metadata i8* %243, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @free(i8* %197) #12, !dbg !1250
	call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %243, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !902, metadata !635), !dbg !1040
	call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 %222, i64 0, metadata !904, metadata !635), !dbg !979
	br label %249
	%245 = load i8, i8* %98, align 1, !dbg !1251, !tbaa !800
	%246 = icmp ne i8 %245, 0, !dbg !1251
	%247 = and i1 %52, %246, !dbg !1255
	br i1 %247, label %259, label %249, !dbg !1255
	br label %249, !dbg !976
	%250 = phi %struct.hash_table* [ %71, %244 ], [ %191, %242 ], [ %71, %248 ]
	%251 = phi i64 [ %61, %244 ], [ %222, %242 ], [ %61, %248 ]
	%252 = phi i8* [ %98, %244 ], [ %223, %242 ], [ %98, %248 ]
	%253 = phi i8* [ %58, %244 ], [ %223, %242 ], [ %58, %248 ]
	%254 = phi i8* [ %155, %244 ], [ %243, %242 ], [ %155, %248 ]
	%255 = phi i8* [ %55, %244 ], [ %223, %242 ], [ %55, %248 ]
	call void @llvm.dbg.value(metadata i8* %255, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %254, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %253, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !902, metadata !635), !dbg !1040
	call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !902, metadata !635), !dbg !1040
	call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12, !dbg !1204
	call void @llvm.dbg.value(metadata i8* %255, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !898, metadata !635), !dbg !1006
	call void @llvm.dbg.value(metadata i8* %254, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %253, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !901, metadata !635), !dbg !1026
	call void @llvm.dbg.value(metadata i32 %181, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 %251, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !903, metadata !635), !dbg !1019
	%256 = load i8, i8* %252, align 1, !dbg !1029, !tbaa !800
	%257 = icmp eq i8 %256, 0, !dbg !1031
	br i1 %257, label %275, label %53, !dbg !1031
	br label %260, !dbg !976
	br label %260, !dbg !976
	%261 = phi i32 [ %168, %258 ], [ 20, %259 ]
	call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !902, metadata !635), !dbg !1040
	call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12, !dbg !1204
	br label %304
	%263 = phi %struct.hash_table* [ %71, %169 ], [ %191, %193 ]
	%264 = phi i32 [ %168, %169 ], [ %194, %193 ]
	%265 = phi i32 [ %176, %169 ], [ %49, %193 ]
	call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !902, metadata !635), !dbg !1040
	call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12, !dbg !1204
	%266 = trunc i32 %265 to i4
	switch i4 %266, label %311 [
		i4 -3, label %303
		i4 4, label %267
	]
	%268 = phi %struct.hash_table* [ %191, %204 ], [ %263, %262 ]
	%269 = phi i32 [ %181, %204 ], [ %264, %262 ]
	call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !896, metadata !635), !dbg !976
	call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !898, metadata !635), !dbg !1006
	call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !899, metadata !635), !dbg !1011
	call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !900, metadata !635), !dbg !978
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !912, metadata !635), !dbg !1027
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !901, metadata !635), !dbg !1026
	call void @llvm.dbg.value(metadata i32 %269, i64 0, metadata !909, metadata !635), !dbg !1028
	call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !904, metadata !635), !dbg !979
	call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !903, metadata !635), !dbg !1019
	%270 = load i8, i8* %98, align 1, !dbg !1029, !tbaa !800
	%271 = icmp eq i8 %270, 0, !dbg !1031
	br i1 %271, label %274, label %64, !dbg !1031, !llvm.loop !1068
	br label %276, !dbg !1256
	br label %276, !dbg !1256
	br label %276, !dbg !1256
	br label %276, !dbg !1256
	%277 = phi i8* [ null, %37 ], [ %58, %272 ], [ %58, %273 ], [ %58, %274 ], [ %253, %275 ]
	%278 = phi %struct.hash_table* [ null, %37 ], [ %71, %272 ], [ %71, %273 ], [ %268, %274 ], [ %250, %275 ]
	%279 = phi i8* [ %38, %37 ], [ %70, %272 ], [ %70, %273 ], [ %152, %274 ], [ %152, %275 ]
	%280 = phi i8* [ %40, %37 ], [ %66, %272 ], [ %66, %273 ], [ %154, %274 ], [ %154, %275 ]
	%281 = phi i8* [ %39, %37 ], [ %77, %272 ], [ %121, %273 ], [ %155, %274 ], [ %254, %275 ]
	%282 = getelementptr inbounds i8, i8* %280, i64 1, !dbg !1256
	%283 = icmp ugt i8* %281, %282, !dbg !1258
	br i1 %283, label %284, label %289, !dbg !1259
	%285 = getelementptr inbounds i8, i8* %281, i64 -1, !dbg !1260
	%286 = load i8, i8* %285, align 1, !dbg !1260, !tbaa !800
	%287 = icmp eq i8 %286, 47, !dbg !1260
	call void @llvm.dbg.value(metadata i8* %285, i64 0, metadata !899, metadata !635), !dbg !1011
	%288 = select i1 %287, i8* %285, i8* %281, !dbg !1262
	br label %289, !dbg !1262
	%290 = phi i8* [ %281, %276 ], [ %288, %284 ]
	call void @llvm.dbg.value(metadata i8* %290, i64 0, metadata !899, metadata !635), !dbg !1011
	store i8 0, i8* %290, align 1, !dbg !1264, !tbaa !800
	%291 = getelementptr inbounds i8, i8* %290, i64 1, !dbg !1265
	%292 = icmp eq i8* %279, %291, !dbg !1267
	br i1 %292, label %299, label %293, !dbg !1268
	%294 = ptrtoint i8* %290 to i64, !dbg !1269
	%295 = ptrtoint i8* %280 to i64, !dbg !1269
	%296 = sub i64 1, %295, !dbg !1269
	%297 = add i64 %296, %294, !dbg !1270
	%298 = call i8* @xrealloc(i8* %280, i64 %297) #12, !dbg !1271
	call void @llvm.dbg.value(metadata i8* %298, i64 0, metadata !898, metadata !635), !dbg !1006
	br label %299, !dbg !1272
	%300 = phi i8* [ %298, %293 ], [ %280, %289 ]
	call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !898, metadata !635), !dbg !1006
	call void @free(i8* %277) #12, !dbg !1273
	call void @llvm.dbg.value(metadata %struct.hash_table* undef, i64 0, metadata !905, metadata !635), !dbg !980
	%301 = icmp eq %struct.hash_table* %278, null, !dbg !1274
	br i1 %301, label %312, label %302, !dbg !1276
	call void @hash_free(%struct.hash_table* nonnull %278) #12, !dbg !1277
	br label %312, !dbg !1277
	br label %304, !dbg !1278
	%305 = phi i32 [ %261, %260 ], [ %206, %205 ], [ %264, %303 ]
	%306 = phi %struct.hash_table* [ %71, %260 ], [ %191, %205 ], [ %263, %303 ]
	call void @free(i8* %58) #12, !dbg !1278
	call void @free(i8* %154) #12, !dbg !1279
	call void @llvm.dbg.value(metadata %struct.hash_table* %263, i64 0, metadata !905, metadata !635), !dbg !980
	%307 = icmp eq %struct.hash_table* %306, null, !dbg !1280
	br i1 %307, label %309, label %308, !dbg !1282
	call void @hash_free(%struct.hash_table* nonnull %306) #12, !dbg !1283
	br label %309, !dbg !1283
	%310 = tail call i32* @__errno_location() #1, !dbg !1284
	store i32 %305, i32* %310, align 4, !dbg !1285, !tbaa !736
	br label %312, !dbg !1286
	br label %312, !dbg !1287
	%313 = phi i8* [ null, %10 ], [ null, %14 ], [ null, %18 ], [ null, %309 ], [ null, %20 ], [ %300, %299 ], [ %300, %302 ], [ undef, %311 ]
	ret i8* %313, !dbg !1287
}
declare i8* @__rawmemchr(i8*, i32) local_unnamed_addr #3
declare void @llvm.lifetime.start(i64, i8* nocapture) #8
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4
declare void @llvm.lifetime.end(i64, i8* nocapture) #8
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1288 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1290, metadata !635), !dbg !1291
	store i8* %0, i8** @file_name, align 8, !dbg !1292, !tbaa !643
	ret void, !dbg !1293
}
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1294 {
	%2 = zext i1 %0 to i8
	tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1298, metadata !1299), !dbg !1300
	store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1301, !tbaa !1302
	ret void, !dbg !1304
}
define void @close_stdout() #6 !dbg !1305 {
	%1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1312, !tbaa !643
	%2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1313
	%3 = icmp eq i32 %2, 0, !dbg !1314
	br i1 %3, label %21, label %4, !dbg !1315
	%5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1316, !tbaa !1302, !range !1318
	%6 = icmp eq i8 %5, 0, !dbg !1316
	%7 = tail call i32* @__errno_location() #1, !dbg !1319
	br i1 %6, label %11, label %8, !dbg !1321
	%9 = load i32, i32* %7, align 4, !dbg !1322, !tbaa !736
	%10 = icmp eq i32 %9, 32, !dbg !1324
	br i1 %10, label %21, label %11, !dbg !1325
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !1327
	tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1309, metadata !635), !dbg !1328
	%13 = load i8*, i8** @file_name, align 8, !dbg !1329, !tbaa !643
	%14 = icmp eq i8* %13, null, !dbg !1329
	%15 = load i32, i32* %7, align 4, !tbaa !736
	br i1 %14, label %18, label %16, !dbg !1330
	%17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1331
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.43, i64 0, i64 0), i8* %17, i8* %12) #12, !dbg !1333
	br label %19, !dbg !1335
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #12, !dbg !1336
	br label %19
	%20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1337, !tbaa !736
	tail call void @_exit(i32 %20) #15, !dbg !1338
	unreachable, !dbg !1338
	%22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1339, !tbaa !643
	%23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #12, !dbg !1341
	%24 = icmp eq i32 %23, 0, !dbg !1342
	br i1 %24, label %27, label %25, !dbg !1343
	%26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1344, !tbaa !736
	tail call void @_exit(i32 %26) #15, !dbg !1345
	unreachable, !dbg !1345
	ret void, !dbg !1346
}
declare void @_exit(i32) local_unnamed_addr #9
define void @record_file(%struct.hash_table*, i8* nonnull, %struct.stat* nocapture nonnull readonly) local_unnamed_addr #6 !dbg !1347 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1375, metadata !635), !dbg !1390
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1376, metadata !635), !dbg !1391
	tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1377, metadata !635), !dbg !1392
	%4 = icmp eq %struct.hash_table* %0, null, !dbg !1393
	br i1 %4, label %23, label %5, !dbg !1395
	%6 = tail call noalias i8* @xmalloc(i64 24) #12, !dbg !1396
	%7 = tail call noalias i8* @xstrdup(i8* nonnull %1) #12, !dbg !1397
	%8 = bitcast i8* %6 to i8**, !dbg !1398
	store i8* %7, i8** %8, align 8, !dbg !1399, !tbaa !1400
	%9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1, !dbg !1402
	%10 = load i64, i64* %9, align 8, !dbg !1402, !tbaa !1403
	%11 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !1404
	%12 = bitcast i8* %11 to i64*, !dbg !1404
	store i64 %10, i64* %12, align 8, !dbg !1405, !tbaa !1406
	%13 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0, !dbg !1407
	%14 = load i64, i64* %13, align 8, !dbg !1407, !tbaa !1408
	%15 = getelementptr inbounds i8, i8* %6, i64 16, !dbg !1409
	%16 = bitcast i8* %15 to i64*, !dbg !1409
	store i64 %14, i64* %16, align 8, !dbg !1410, !tbaa !1411
	%17 = tail call i8* @hash_insert(%struct.hash_table* nonnull %0, i8* %6) #12, !dbg !1412
	%18 = icmp eq i8* %17, null, !dbg !1413
	br i1 %18, label %19, label %20, !dbg !1415
	tail call void @xalloc_die() #15, !dbg !1416
	unreachable, !dbg !1416
	%21 = icmp eq i8* %17, %6, !dbg !1418
	br i1 %21, label %23, label %22, !dbg !1420
	tail call void @triple_free(i8* %6) #12, !dbg !1421
	br label %23, !dbg !1423
	ret void, !dbg !1424
}
define zeroext i1 @seen_file(%struct.hash_table*, i8*, %struct.stat* nocapture readonly) local_unnamed_addr #6 !dbg !1426 {
	%4 = alloca %struct.F_triple, align 8
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1432, metadata !635), !dbg !1436
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1433, metadata !635), !dbg !1437
	tail call void @llvm.dbg.value(metadata %struct.stat* %2, i64 0, metadata !1434, metadata !635), !dbg !1438
	%5 = bitcast %struct.F_triple* %4 to i8*, !dbg !1439
	call void @llvm.lifetime.start(i64 24, i8* nonnull %5) #12, !dbg !1439
	%6 = icmp eq %struct.hash_table* %0, null, !dbg !1440
	br i1 %6, label %17, label %7, !dbg !1442
	%8 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 0, !dbg !1443
	store i8* %1, i8** %8, align 8, !dbg !1444, !tbaa !1400
	%9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1, !dbg !1445
	%10 = load i64, i64* %9, align 8, !dbg !1445, !tbaa !1403
	%11 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 1, !dbg !1446
	store i64 %10, i64* %11, align 8, !dbg !1447, !tbaa !1406
	%12 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0, !dbg !1448
	%13 = load i64, i64* %12, align 8, !dbg !1448, !tbaa !1408
	%14 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 2, !dbg !1449
	store i64 %13, i64* %14, align 8, !dbg !1450, !tbaa !1411
	%15 = call i8* @hash_lookup(%struct.hash_table* nonnull %0, i8* nonnull %5) #12, !dbg !1451
	%16 = icmp ne i8* %15, null, !dbg !1452
	br label %17, !dbg !1453
	%18 = phi i1 [ %16, %7 ], [ false, %3 ]
	call void @llvm.lifetime.end(i64 24, i8* nonnull %5) #12, !dbg !1454
	ret i1 %18, !dbg !1454
}
define i64 @hash_get_n_buckets(%struct.hash_table* nocapture readonly) local_unnamed_addr #10 !dbg !1455 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1494, metadata !635), !dbg !1495
	%2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1496
	%3 = load i64, i64* %2, align 8, !dbg !1496, !tbaa !1497
	ret i64 %3, !dbg !1499
}
define i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture readonly) local_unnamed_addr #10 !dbg !1500 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1502, metadata !635), !dbg !1503
	%2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1504
	%3 = load i64, i64* %2, align 8, !dbg !1504, !tbaa !1505
	ret i64 %3, !dbg !1506
}
define i64 @hash_get_n_entries(%struct.hash_table* nocapture readonly) local_unnamed_addr #10 !dbg !1507 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1509, metadata !635), !dbg !1510
	%2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1511
	%3 = load i64, i64* %2, align 8, !dbg !1511, !tbaa !1512
	ret i64 %3, !dbg !1513
}
define i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture readonly) local_unnamed_addr #10 !dbg !1514 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1516, metadata !635), !dbg !1526
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1518, metadata !635), !dbg !1527
	%2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1528
	%3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !1528, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !1517, metadata !635), !dbg !1530
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1518, metadata !635), !dbg !1527
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !1517, metadata !635), !dbg !1530
	%4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1531
	%5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1531, !tbaa !1533
	%6 = icmp ult %struct.hash_entry* %3, %5, !dbg !1534
	br i1 %6, label %7, label %65, !dbg !1535
	%8 = bitcast %struct.hash_entry* %5 to i8*
	%9 = ptrtoint %struct.hash_entry* %3 to i64
	%10 = xor i64 %9, -1, !dbg !1537
	%11 = getelementptr i8, i8* %8, i64 %10, !dbg !1537
	%12 = ptrtoint i8* %11 to i64
	%13 = lshr i64 %12, 4, !dbg !1537
	%14 = and i64 %13, 1, !dbg !1537
	%15 = icmp eq i64 %14, 0, !dbg !1537
	br i1 %15, label %16, label %33, !dbg !1537
	br label %17, !dbg !1537
	%18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 0, i32 0, !dbg !1537
	%19 = load i8*, i8** %18, align 8, !dbg !1537, !tbaa !1538
	%20 = icmp eq i8* %19, null, !dbg !1540
	br i1 %20, label %30, label %21, !dbg !1541
	br label %22, !dbg !1542
	%23 = phi %struct.hash_entry* [ %26, %22 ], [ %3, %21 ]
	%24 = phi i64 [ %28, %22 ], [ 1, %21 ]
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1525, metadata !635), !dbg !1542
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %23, i64 0, metadata !1519, metadata !635), !dbg !1543
	%25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i64 0, i32 1, !dbg !1544
	%26 = load %struct.hash_entry*, %struct.hash_entry** %25, align 8, !dbg !1544, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %26, i64 0, metadata !1519, metadata !635), !dbg !1543
	%27 = icmp eq %struct.hash_entry* %26, null, !dbg !1547
	%28 = add i64 %24, 1, !dbg !1548
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !1525, metadata !635), !dbg !1542
	br i1 %27, label %29, label %22, !dbg !1547, !llvm.loop !1549
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1518, metadata !635), !dbg !1527
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1518, metadata !635), !dbg !1527
	br label %30, !dbg !1551
	%31 = phi i64 [ %24, %29 ], [ 0, %17 ]
	tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1518, metadata !635), !dbg !1527
	%32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 1, !dbg !1552
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %32, i64 0, metadata !1517, metadata !635), !dbg !1530
	tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1518, metadata !635), !dbg !1527
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %32, i64 0, metadata !1517, metadata !635), !dbg !1530
	br label %33, !dbg !1535
	%34 = phi i64 [ 0, %7 ], [ %31, %30 ]
	%35 = phi %struct.hash_entry* [ %3, %7 ], [ %32, %30 ]
	%36 = phi i64 [ undef, %7 ], [ %31, %30 ]
	%37 = icmp eq i64 %13, 0, !dbg !1537
	br i1 %37, label %63, label %38, !dbg !1537
	br label %39, !dbg !1537
	%40 = phi i64 [ %34, %38 ], [ %79, %78 ]
	%41 = phi %struct.hash_entry* [ %35, %38 ], [ %80, %78 ]
	%42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0, !dbg !1537
	%43 = load i8*, i8** %42, align 8, !dbg !1537, !tbaa !1538
	%44 = icmp eq i8* %43, null, !dbg !1540
	br i1 %44, label %56, label %45, !dbg !1541
	br label %46, !dbg !1542
	%47 = phi %struct.hash_entry* [ %50, %46 ], [ %41, %45 ]
	%48 = phi i64 [ %52, %46 ], [ 1, %45 ]
	tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1525, metadata !635), !dbg !1542
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %47, i64 0, metadata !1519, metadata !635), !dbg !1543
	%49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i64 0, i32 1, !dbg !1544
	%50 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8, !dbg !1544, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %50, i64 0, metadata !1519, metadata !635), !dbg !1543
	%51 = icmp eq %struct.hash_entry* %50, null, !dbg !1547
	%52 = add i64 %48, 1, !dbg !1548
	tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1525, metadata !635), !dbg !1542
	br i1 %51, label %53, label %46, !dbg !1547, !llvm.loop !1549
	%54 = icmp ugt i64 %48, %40, !dbg !1554
	tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1518, metadata !635), !dbg !1527
	%55 = select i1 %54, i64 %48, i64 %40, !dbg !1556
	tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1518, metadata !635), !dbg !1527
	br label %56, !dbg !1551
	%57 = phi i64 [ %55, %53 ], [ %40, %39 ]
	tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1518, metadata !635), !dbg !1527
	%58 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 1, !dbg !1552
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %58, i64 0, metadata !1517, metadata !635), !dbg !1530
	tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1518, metadata !635), !dbg !1527
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %58, i64 0, metadata !1517, metadata !635), !dbg !1530
	%59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 0, !dbg !1537
	%60 = load i8*, i8** %59, align 8, !dbg !1537, !tbaa !1538
	%61 = icmp eq i8* %60, null, !dbg !1540
	br i1 %61, label %78, label %67, !dbg !1541
	br label %63, !dbg !1557
	%64 = phi i64 [ %36, %33 ], [ %79, %62 ]
	br label %65, !dbg !1557
	%66 = phi i64 [ 0, %1 ], [ %64, %63 ]
	ret i64 %66, !dbg !1557
	br label %68, !dbg !1542
	%69 = phi %struct.hash_entry* [ %72, %68 ], [ %58, %67 ]
	%70 = phi i64 [ %74, %68 ], [ 1, %67 ]
	tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1525, metadata !635), !dbg !1542
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %47, i64 0, metadata !1519, metadata !635), !dbg !1543
	%71 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %69, i64 0, i32 1, !dbg !1544
	%72 = load %struct.hash_entry*, %struct.hash_entry** %71, align 8, !dbg !1544, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %50, i64 0, metadata !1519, metadata !635), !dbg !1543
	%73 = icmp eq %struct.hash_entry* %72, null, !dbg !1547
	%74 = add i64 %70, 1, !dbg !1548
	tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1525, metadata !635), !dbg !1542
	br i1 %73, label %75, label %68, !dbg !1547, !llvm.loop !1549
	%76 = icmp ugt i64 %70, %57, !dbg !1554
	tail call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !1518, metadata !635), !dbg !1527
	%77 = select i1 %76, i64 %70, i64 %57, !dbg !1556
	tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1518, metadata !635), !dbg !1527
	br label %78, !dbg !1551
	%79 = phi i64 [ %77, %75 ], [ %57, %56 ]
	tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1518, metadata !635), !dbg !1527
	%80 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 2, !dbg !1552
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %58, i64 0, metadata !1517, metadata !635), !dbg !1530
	tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !1518, metadata !635), !dbg !1527
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %58, i64 0, metadata !1517, metadata !635), !dbg !1530
	%81 = icmp ult %struct.hash_entry* %80, %5, !dbg !1534
	br i1 %81, label %39, label %62, !dbg !1535, !llvm.loop !1558
}
define zeroext i1 @hash_table_ok(%struct.hash_table* nocapture readonly) local_unnamed_addr #10 !dbg !1561 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1565, metadata !635), !dbg !1575
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1567, metadata !635), !dbg !1576
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1568, metadata !635), !dbg !1577
	%2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1578
	%3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !1578, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !1566, metadata !635), !dbg !1579
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1568, metadata !635), !dbg !1577
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1567, metadata !635), !dbg !1576
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !1566, metadata !635), !dbg !1579
	%4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1580
	%5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1580, !tbaa !1533
	%6 = icmp ult %struct.hash_entry* %3, %5, !dbg !1582
	br i1 %6, label %7, label %70, !dbg !1583
	%8 = bitcast %struct.hash_entry* %5 to i8*
	%9 = ptrtoint %struct.hash_entry* %3 to i64
	%10 = xor i64 %9, -1, !dbg !1585
	%11 = getelementptr i8, i8* %8, i64 %10, !dbg !1585
	%12 = ptrtoint i8* %11 to i64
	%13 = lshr i64 %12, 4, !dbg !1585
	%14 = and i64 %13, 1, !dbg !1585
	%15 = icmp eq i64 %14, 0, !dbg !1585
	br i1 %15, label %16, label %34, !dbg !1585
	br label %17, !dbg !1585
	%18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 0, i32 0, !dbg !1585
	%19 = load i8*, i8** %18, align 8, !dbg !1585, !tbaa !1538
	%20 = icmp eq i8* %19, null, !dbg !1586
	br i1 %20, label %30, label %21, !dbg !1587
	br label %22
	%23 = phi i64 [ %25, %22 ], [ 0, %21 ]
	%24 = phi %struct.hash_entry* [ %27, %22 ], [ %3, %21 ]
	%25 = add i64 %23, 1
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %24, i64 0, metadata !1569, metadata !635), !dbg !1588
	tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1568, metadata !635), !dbg !1577
	%26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1, !dbg !1589
	%27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8, !dbg !1589, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !1569, metadata !635), !dbg !1588
	%28 = icmp eq %struct.hash_entry* %27, null, !dbg !1591
	br i1 %28, label %29, label %22, !dbg !1591, !llvm.loop !1592
	br label %30, !dbg !1577
	%31 = phi i64 [ 0, %17 ], [ 1, %29 ]
	%32 = phi i64 [ 0, %17 ], [ %25, %29 ]
	tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1568, metadata !635), !dbg !1577
	tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1567, metadata !635), !dbg !1576
	%33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 1, !dbg !1595
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %33, i64 0, metadata !1566, metadata !635), !dbg !1579
	tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1568, metadata !635), !dbg !1577
	tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1567, metadata !635), !dbg !1576
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %33, i64 0, metadata !1566, metadata !635), !dbg !1579
	br label %34, !dbg !1583
	%35 = phi i64 [ 0, %7 ], [ %32, %30 ]
	%36 = phi i64 [ 0, %7 ], [ %31, %30 ]
	%37 = phi %struct.hash_entry* [ %3, %7 ], [ %33, %30 ]
	%38 = phi i64 [ undef, %7 ], [ %31, %30 ]
	%39 = phi i64 [ undef, %7 ], [ %32, %30 ]
	%40 = icmp eq i64 %13, 0, !dbg !1585
	br i1 %40, label %67, label %41, !dbg !1585
	br label %42, !dbg !1585
	%43 = phi i64 [ %35, %41 ], [ %95, %93 ]
	%44 = phi i64 [ %36, %41 ], [ %94, %93 ]
	%45 = phi %struct.hash_entry* [ %37, %41 ], [ %96, %93 ]
	%46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 0, i32 0, !dbg !1585
	%47 = load i8*, i8** %46, align 8, !dbg !1585, !tbaa !1538
	%48 = icmp eq i8* %47, null, !dbg !1586
	br i1 %48, label %59, label %49, !dbg !1587
	br label %50
	%51 = phi i64 [ %53, %50 ], [ %43, %49 ]
	%52 = phi %struct.hash_entry* [ %55, %50 ], [ %45, %49 ]
	%53 = add i64 %51, 1
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %52, i64 0, metadata !1569, metadata !635), !dbg !1588
	tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !1568, metadata !635), !dbg !1577
	%54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 1, !dbg !1589
	%55 = load %struct.hash_entry*, %struct.hash_entry** %54, align 8, !dbg !1589, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %55, i64 0, metadata !1569, metadata !635), !dbg !1588
	%56 = icmp eq %struct.hash_entry* %55, null, !dbg !1591
	br i1 %56, label %57, label %50, !dbg !1591, !llvm.loop !1592
	%58 = add i64 %44, 1, !dbg !1597
	br label %59, !dbg !1577
	%60 = phi i64 [ %44, %42 ], [ %58, %57 ]
	%61 = phi i64 [ %43, %42 ], [ %53, %57 ]
	tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1568, metadata !635), !dbg !1577
	tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1567, metadata !635), !dbg !1576
	%62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 1, !dbg !1595
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !1566, metadata !635), !dbg !1579
	tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1568, metadata !635), !dbg !1577
	tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1567, metadata !635), !dbg !1576
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !1566, metadata !635), !dbg !1579
	%63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 0, !dbg !1585
	%64 = load i8*, i8** %63, align 8, !dbg !1585, !tbaa !1538
	%65 = icmp eq i8* %64, null, !dbg !1586
	br i1 %65, label %93, label %83, !dbg !1587
	br label %67, !dbg !1598
	%68 = phi i64 [ %38, %34 ], [ %94, %66 ]
	%69 = phi i64 [ %39, %34 ], [ %95, %66 ]
	br label %70, !dbg !1598
	%71 = phi i64 [ 0, %1 ], [ %68, %67 ]
	%72 = phi i64 [ 0, %1 ], [ %69, %67 ]
	%73 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1598
	%74 = load i64, i64* %73, align 8, !dbg !1598, !tbaa !1505
	%75 = icmp eq i64 %71, %74, !dbg !1600
	br i1 %75, label %76, label %80, !dbg !1601
	%77 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1602
	%78 = load i64, i64* %77, align 8, !dbg !1602, !tbaa !1512
	%79 = icmp eq i64 %72, %78, !dbg !1604
	br i1 %79, label %81, label %80, !dbg !1605
	br label %81, !dbg !1607
	%82 = phi i1 [ false, %80 ], [ true, %76 ]
	ret i1 %82, !dbg !1608
	br label %84
	%85 = phi i64 [ %87, %84 ], [ %61, %83 ]
	%86 = phi %struct.hash_entry* [ %89, %84 ], [ %62, %83 ]
	%87 = add i64 %85, 1
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %52, i64 0, metadata !1569, metadata !635), !dbg !1588
	tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !1568, metadata !635), !dbg !1577
	%88 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %86, i64 0, i32 1, !dbg !1589
	%89 = load %struct.hash_entry*, %struct.hash_entry** %88, align 8, !dbg !1589, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %55, i64 0, metadata !1569, metadata !635), !dbg !1588
	%90 = icmp eq %struct.hash_entry* %89, null, !dbg !1591
	br i1 %90, label %91, label %84, !dbg !1591, !llvm.loop !1592
	%92 = add i64 %60, 1, !dbg !1597
	br label %93, !dbg !1577
	%94 = phi i64 [ %60, %59 ], [ %92, %91 ]
	%95 = phi i64 [ %61, %59 ], [ %87, %91 ]
	tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1568, metadata !635), !dbg !1577
	tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1567, metadata !635), !dbg !1576
	%96 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 2, !dbg !1595
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !1566, metadata !635), !dbg !1579
	tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1568, metadata !635), !dbg !1577
	tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1567, metadata !635), !dbg !1576
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !1566, metadata !635), !dbg !1579
	%97 = icmp ult %struct.hash_entry* %96, %5, !dbg !1582
	br i1 %97, label %42, label %66, !dbg !1583, !llvm.loop !1609
}
define void @hash_print_statistics(%struct.hash_table* nocapture readonly, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1612 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1668, metadata !635), !dbg !1674
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1669, metadata !635), !dbg !1675
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1509, metadata !635), !dbg !1676
	%3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1678
	%4 = load i64, i64* %3, align 8, !dbg !1678, !tbaa !1512
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1670, metadata !635), !dbg !1679
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1494, metadata !635), !dbg !1680
	%5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1682
	%6 = load i64, i64* %5, align 8, !dbg !1682, !tbaa !1497
	tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1671, metadata !635), !dbg !1683
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1502, metadata !635), !dbg !1684
	%7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !1686
	%8 = load i64, i64* %7, align 8, !dbg !1686, !tbaa !1505
	tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1672, metadata !635), !dbg !1687
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1516, metadata !635), !dbg !1688
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1518, metadata !635), !dbg !1690
	%9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1691
	%10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !dbg !1691, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %10, i64 0, metadata !1517, metadata !635), !dbg !1692
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1518, metadata !635), !dbg !1690
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %10, i64 0, metadata !1517, metadata !635), !dbg !1692
	%11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1693
	%12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8, !dbg !1693, !tbaa !1533
	%13 = icmp ult %struct.hash_entry* %10, %12, !dbg !1694
	br i1 %13, label %14, label %72, !dbg !1695
	%15 = bitcast %struct.hash_entry* %12 to i8*
	%16 = ptrtoint %struct.hash_entry* %10 to i64
	%17 = xor i64 %16, -1, !dbg !1696
	%18 = getelementptr i8, i8* %15, i64 %17, !dbg !1696
	%19 = ptrtoint i8* %18 to i64
	%20 = lshr i64 %19, 4, !dbg !1696
	%21 = and i64 %20, 1, !dbg !1696
	%22 = icmp eq i64 %21, 0, !dbg !1696
	br i1 %22, label %23, label %40, !dbg !1696
	br label %24, !dbg !1696
	%25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 0, i32 0, !dbg !1696
	%26 = load i8*, i8** %25, align 8, !dbg !1696, !tbaa !1538
	%27 = icmp eq i8* %26, null, !dbg !1697
	br i1 %27, label %37, label %28, !dbg !1698
	br label %29, !dbg !1699
	%30 = phi %struct.hash_entry* [ %33, %29 ], [ %10, %28 ]
	%31 = phi i64 [ %35, %29 ], [ 1, %28 ]
	tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1525, metadata !635), !dbg !1699
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %30, i64 0, metadata !1519, metadata !635), !dbg !1700
	%32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1, !dbg !1701
	%33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !dbg !1701, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %33, i64 0, metadata !1519, metadata !635), !dbg !1700
	%34 = icmp eq %struct.hash_entry* %33, null, !dbg !1702
	%35 = add i64 %31, 1, !dbg !1703
	tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1525, metadata !635), !dbg !1699
	br i1 %34, label %36, label %29, !dbg !1702, !llvm.loop !1549
	tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1518, metadata !635), !dbg !1690
	tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1518, metadata !635), !dbg !1690
	br label %37, !dbg !1704
	%38 = phi i64 [ %31, %36 ], [ 0, %24 ]
	tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1518, metadata !635), !dbg !1690
	%39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 1, !dbg !1705
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %39, i64 0, metadata !1517, metadata !635), !dbg !1692
	tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !1518, metadata !635), !dbg !1690
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %39, i64 0, metadata !1517, metadata !635), !dbg !1692
	br label %40, !dbg !1695
	%41 = phi i64 [ 0, %14 ], [ %38, %37 ]
	%42 = phi %struct.hash_entry* [ %10, %14 ], [ %39, %37 ]
	%43 = phi i64 [ undef, %14 ], [ %38, %37 ]
	%44 = icmp eq i64 %20, 0, !dbg !1696
	br i1 %44, label %70, label %45, !dbg !1696
	br label %46, !dbg !1696
	%47 = phi i64 [ %41, %45 ], [ %94, %93 ]
	%48 = phi %struct.hash_entry* [ %42, %45 ], [ %95, %93 ]
	%49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 0, i32 0, !dbg !1696
	%50 = load i8*, i8** %49, align 8, !dbg !1696, !tbaa !1538
	%51 = icmp eq i8* %50, null, !dbg !1697
	br i1 %51, label %63, label %52, !dbg !1698
	br label %53, !dbg !1699
	%54 = phi %struct.hash_entry* [ %57, %53 ], [ %48, %52 ]
	%55 = phi i64 [ %59, %53 ], [ 1, %52 ]
	tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1525, metadata !635), !dbg !1699
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %54, i64 0, metadata !1519, metadata !635), !dbg !1700
	%56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %54, i64 0, i32 1, !dbg !1701
	%57 = load %struct.hash_entry*, %struct.hash_entry** %56, align 8, !dbg !1701, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %57, i64 0, metadata !1519, metadata !635), !dbg !1700
	%58 = icmp eq %struct.hash_entry* %57, null, !dbg !1702
	%59 = add i64 %55, 1, !dbg !1703
	tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1525, metadata !635), !dbg !1699
	br i1 %58, label %60, label %53, !dbg !1702, !llvm.loop !1549
	%61 = icmp ugt i64 %55, %47, !dbg !1706
	tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1518, metadata !635), !dbg !1690
	%62 = select i1 %61, i64 %55, i64 %47, !dbg !1707
	tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1518, metadata !635), !dbg !1690
	br label %63, !dbg !1704
	%64 = phi i64 [ %62, %60 ], [ %47, %46 ]
	tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !1518, metadata !635), !dbg !1690
	%65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 1, !dbg !1705
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %65, i64 0, metadata !1517, metadata !635), !dbg !1692
	tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !1518, metadata !635), !dbg !1690
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %65, i64 0, metadata !1517, metadata !635), !dbg !1692
	%66 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 0, !dbg !1696
	%67 = load i8*, i8** %66, align 8, !dbg !1696, !tbaa !1538
	%68 = icmp eq i8* %67, null, !dbg !1697
	br i1 %68, label %93, label %82, !dbg !1698
	br label %70, !dbg !1708
	%71 = phi i64 [ %43, %40 ], [ %94, %69 ]
	br label %72, !dbg !1708
	%73 = phi i64 [ 0, %2 ], [ %71, %70 ]
	tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !1673, metadata !635), !dbg !1708
	%74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0), i64 %4) #12, !dbg !1709
	%75 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.52, i64 0, i64 0), i64 %6) #12, !dbg !1710
	%76 = uitofp i64 %8 to double, !dbg !1711
	%77 = fmul double %76, 1.000000e+02, !dbg !1711
	%78 = uitofp i64 %6 to double, !dbg !1711
	%79 = fdiv double %77, %78, !dbg !1711
	%80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.53, i64 0, i64 0), i64 %8, double %79) #12, !dbg !1711
	%81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.54, i64 0, i64 0), i64 %73) #12, !dbg !1712
	ret void, !dbg !1713
	br label %83, !dbg !1699
	%84 = phi %struct.hash_entry* [ %87, %83 ], [ %65, %82 ]
	%85 = phi i64 [ %89, %83 ], [ 1, %82 ]
	tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1525, metadata !635), !dbg !1699
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %54, i64 0, metadata !1519, metadata !635), !dbg !1700
	%86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 1, !dbg !1701
	%87 = load %struct.hash_entry*, %struct.hash_entry** %86, align 8, !dbg !1701, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %57, i64 0, metadata !1519, metadata !635), !dbg !1700
	%88 = icmp eq %struct.hash_entry* %87, null, !dbg !1702
	%89 = add i64 %85, 1, !dbg !1703
	tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1525, metadata !635), !dbg !1699
	br i1 %88, label %90, label %83, !dbg !1702, !llvm.loop !1549
	%91 = icmp ugt i64 %85, %64, !dbg !1706
	tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1518, metadata !635), !dbg !1690
	%92 = select i1 %91, i64 %85, i64 %64, !dbg !1707
	tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1518, metadata !635), !dbg !1690
	br label %93, !dbg !1704
	%94 = phi i64 [ %92, %90 ], [ %64, %63 ]
	tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !1518, metadata !635), !dbg !1690
	%95 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 2, !dbg !1705
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %65, i64 0, metadata !1517, metadata !635), !dbg !1692
	tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !1518, metadata !635), !dbg !1690
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %65, i64 0, metadata !1517, metadata !635), !dbg !1692
	%96 = icmp ult %struct.hash_entry* %95, %12, !dbg !1694
	br i1 %96, label %46, label %69, !dbg !1695, !llvm.loop !1558
}
define i8* @hash_lookup(%struct.hash_table* nocapture readonly, i8*) local_unnamed_addr #6 !dbg !1714 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1718, metadata !635), !dbg !1722
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1719, metadata !635), !dbg !1723
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1724, metadata !635) #12, !dbg !1731
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1729, metadata !635) #12, !dbg !1733
	%3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !1734
	%4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !1734, !tbaa !1735
	%5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1736
	%6 = load i64, i64* %5, align 8, !dbg !1736, !tbaa !1497
	%7 = tail call i64 %4(i8* %1, i64 %6) #12, !dbg !1737
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1730, metadata !635) #12, !dbg !1738
	%8 = load i64, i64* %5, align 8, !dbg !1739, !tbaa !1497
	%9 = icmp ult i64 %7, %8, !dbg !1741
	br i1 %9, label %11, label %10, !dbg !1742
	tail call void @abort() #15, !dbg !1743
	unreachable, !dbg !1743
	%12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1744
	%13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !1744, !tbaa !1529
	%14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !1745
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1720, metadata !635), !dbg !1746
	%15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0, !dbg !1747
	%16 = load i8*, i8** %15, align 8, !dbg !1747, !tbaa !1538
	%17 = icmp eq i8* %16, null, !dbg !1749
	%18 = icmp eq %struct.hash_entry* %14, null, !dbg !1750
	%19 = or i1 %17, %18, !dbg !1753
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1721, metadata !635), !dbg !1754
	br i1 %19, label %42, label %20, !dbg !1753
	%21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
	%22 = icmp eq i8* %16, %1, !dbg !1755
	br i1 %22, label %42, label %23, !dbg !1758
	br label %24, !dbg !1759
	%25 = phi %struct.hash_entry* [ %34, %36 ], [ %14, %23 ]
	%26 = phi i8* [ %38, %36 ], [ %16, %23 ]
	%27 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !1759, !tbaa !1761
	%28 = tail call zeroext i1 %27(i8* %1, i8* %26) #12, !dbg !1762
	br i1 %28, label %29, label %32, !dbg !1763
	%30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 0, !dbg !1765
	%31 = load i8*, i8** %30, align 8, !tbaa !1538
	br label %42, !dbg !1763
	%33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 1, !dbg !1766
	%34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8, !dbg !1766, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %34, i64 0, metadata !1721, metadata !635), !dbg !1754
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %34, i64 0, metadata !1721, metadata !635), !dbg !1754
	%35 = icmp eq %struct.hash_entry* %34, null, !dbg !1750
	br i1 %35, label %40, label %36, !dbg !1750, !llvm.loop !1768
	%37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
	%38 = load i8*, i8** %37, align 8, !tbaa !1538
	%39 = icmp eq i8* %38, %1, !dbg !1755
	br i1 %39, label %40, label %24, !dbg !1758
	%41 = phi i8* [ null, %32 ], [ %1, %36 ]
	br label %42, !dbg !1771
	%43 = phi i8* [ null, %11 ], [ %31, %29 ], [ %1, %20 ], [ %41, %40 ]
	ret i8* %43, !dbg !1771
}
declare void @abort() local_unnamed_addr #5
define i8* @hash_get_first(%struct.hash_table* nocapture readonly) local_unnamed_addr #10 !dbg !1772 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1776, metadata !635), !dbg !1778
	%2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !1779
	%3 = load i64, i64* %2, align 8, !dbg !1779, !tbaa !1512
	%4 = icmp eq i64 %3, 0, !dbg !1781
	br i1 %4, label %23, label %5, !dbg !1782
	%6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1783
	%7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1783, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %7, i64 0, metadata !1777, metadata !635), !dbg !1785
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %7, i64 0, metadata !1777, metadata !635), !dbg !1785
	%8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1786
	%9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8, !dbg !1786, !tbaa !1533
	%10 = icmp ult %struct.hash_entry* %7, %9, !dbg !1789
	br i1 %10, label %11, label %15, !dbg !1790
	br label %16, !dbg !1791
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %21, i64 0, metadata !1777, metadata !635), !dbg !1785
	%13 = icmp ult %struct.hash_entry* %21, %9, !dbg !1789
	br i1 %13, label %16, label %14, !dbg !1790, !llvm.loop !1793
	br label %15, !dbg !1796
	tail call void @abort() #15, !dbg !1796
	unreachable, !dbg !1796
	%17 = phi %struct.hash_entry* [ %21, %12 ], [ %7, %11 ]
	%18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 0, i32 0, !dbg !1791
	%19 = load i8*, i8** %18, align 8, !dbg !1791, !tbaa !1538
	%20 = icmp eq i8* %19, null, !dbg !1797
	%21 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 1, !dbg !1798
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %21, i64 0, metadata !1777, metadata !635), !dbg !1785
	br i1 %20, label %12, label %22, !dbg !1800
	br label %23, !dbg !1801
	%24 = phi i8* [ null, %1 ], [ %19, %22 ]
	ret i8* %24, !dbg !1801
}
define i8* @hash_get_next(%struct.hash_table* nocapture readonly, i8*) local_unnamed_addr #6 !dbg !1802 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1804, metadata !635), !dbg !1808
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1805, metadata !635), !dbg !1809
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1724, metadata !635) #12, !dbg !1810
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1729, metadata !635) #12, !dbg !1812
	%3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !1813
	%4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !1813, !tbaa !1735
	%5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !1814
	%6 = load i64, i64* %5, align 8, !dbg !1814, !tbaa !1497
	%7 = tail call i64 %4(i8* %1, i64 %6) #12, !dbg !1815
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1730, metadata !635) #12, !dbg !1816
	%8 = load i64, i64* %5, align 8, !dbg !1817, !tbaa !1497
	%9 = icmp ult i64 %7, %8, !dbg !1818
	br i1 %9, label %11, label %10, !dbg !1819
	tail call void @abort() #15, !dbg !1820
	unreachable, !dbg !1820
	%12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1821
	%13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !1821, !tbaa !1529
	%14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !1822
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1806, metadata !635), !dbg !1823
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !1807, metadata !635), !dbg !1824
	br label %15, !dbg !1825, !llvm.loop !1826
	%16 = phi %struct.hash_entry* [ %14, %11 ], [ %21, %27 ]
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %16, i64 0, metadata !1807, metadata !635), !dbg !1824
	%17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0, !dbg !1828
	%18 = load i8*, i8** %17, align 8, !dbg !1828, !tbaa !1538
	%19 = icmp eq i8* %18, %1, !dbg !1831
	%20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
	%21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !tbaa !1546
	%22 = icmp eq %struct.hash_entry* %21, null
	br i1 %19, label %23, label %27, !dbg !1832
	br i1 %22, label %29, label %24, !dbg !1833
	%25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0, !dbg !1835
	%26 = load i8*, i8** %25, align 8, !dbg !1835, !tbaa !1538
	br label %42, !dbg !1836
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %21, i64 0, metadata !1807, metadata !635), !dbg !1824
	br i1 %22, label %28, label %15, !dbg !1837, !llvm.loop !1826
	br label %29
	%30 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
	%31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8, !tbaa !1533
	br label %32, !dbg !1823
	%33 = phi %struct.hash_entry* [ %34, %36 ], [ %14, %29 ]
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %33, i64 0, metadata !1806, metadata !635), !dbg !1823
	%34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 1, !dbg !1838
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %34, i64 0, metadata !1806, metadata !635), !dbg !1823
	%35 = icmp ult %struct.hash_entry* %34, %31, !dbg !1840
	br i1 %35, label %36, label %40, !dbg !1841
	%37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0, !dbg !1842
	%38 = load i8*, i8** %37, align 8, !dbg !1842, !tbaa !1538
	%39 = icmp eq i8* %38, null, !dbg !1844
	br i1 %39, label %32, label %40, !dbg !1845, !llvm.loop !1846
	%41 = phi i8* [ null, %32 ], [ %38, %36 ]
	br label %42, !dbg !1849
	%43 = phi i8* [ %26, %24 ], [ %41, %40 ]
	ret i8* %43, !dbg !1849
}
define i64 @hash_get_entries(%struct.hash_table* nocapture readonly, i8** nocapture, i64) local_unnamed_addr #6 !dbg !1850 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1855, metadata !635), !dbg !1861
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1856, metadata !635), !dbg !1862
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1857, metadata !635), !dbg !1863
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1858, metadata !635), !dbg !1864
	%4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1865
	%5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1865, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !1859, metadata !635), !dbg !1867
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !1859, metadata !635), !dbg !1867
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1858, metadata !635), !dbg !1864
	%6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1868
	%7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1868, !tbaa !1533
	%8 = icmp ult %struct.hash_entry* %5, %7, !dbg !1871
	br i1 %8, label %9, label %42, !dbg !1872
	br label %10, !dbg !1874
	%11 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %9 ]
	%12 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %9 ]
	%13 = phi i64 [ %37, %35 ], [ 0, %9 ]
	%14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0, !dbg !1874
	%15 = load i8*, i8** %14, align 8, !dbg !1874, !tbaa !1538
	%16 = icmp eq i8* %15, null, !dbg !1877
	%17 = icmp eq %struct.hash_entry* %12, null, !dbg !1878
	%18 = or i1 %16, %17, !dbg !1882
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1860, metadata !635), !dbg !1883
	tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1858, metadata !635), !dbg !1864
	br i1 %18, label %35, label %19, !dbg !1882
	br label %20, !dbg !1884
	%21 = phi %struct.hash_entry* [ %31, %24 ], [ %12, %19 ]
	%22 = phi i64 [ %27, %24 ], [ %13, %19 ]
	%23 = icmp ult i64 %22, %2, !dbg !1884
	br i1 %23, label %24, label %40, !dbg !1888
	%25 = bitcast %struct.hash_entry* %21 to i64*, !dbg !1889
	%26 = load i64, i64* %25, align 8, !dbg !1889, !tbaa !1538
	%27 = add i64 %22, 1, !dbg !1890
	tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1858, metadata !635), !dbg !1864
	%28 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !1891
	%29 = bitcast i8** %28 to i64*, !dbg !1892
	store i64 %26, i64* %29, align 8, !dbg !1892, !tbaa !643
	%30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1, !dbg !1893
	%31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8, !dbg !1893, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %31, i64 0, metadata !1860, metadata !635), !dbg !1883
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %31, i64 0, metadata !1860, metadata !635), !dbg !1883
	tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !1858, metadata !635), !dbg !1864
	%32 = icmp eq %struct.hash_entry* %31, null, !dbg !1878
	br i1 %32, label %33, label %20, !dbg !1878, !llvm.loop !1895
	%34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !1533
	br label %35, !dbg !1864
	%36 = phi %struct.hash_entry* [ %11, %10 ], [ %34, %33 ], !dbg !1868
	%37 = phi i64 [ %13, %10 ], [ %27, %33 ]
	tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1858, metadata !635), !dbg !1864
	%38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1, !dbg !1898
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1859, metadata !635), !dbg !1867
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1859, metadata !635), !dbg !1867
	tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1858, metadata !635), !dbg !1864
	%39 = icmp ult %struct.hash_entry* %38, %36, !dbg !1871
	br i1 %39, label %10, label %41, !dbg !1872, !llvm.loop !1900
	br label %42, !dbg !1903
	br label %42, !dbg !1903
	%43 = phi i64 [ 0, %3 ], [ %22, %40 ], [ %37, %41 ]
	ret i64 %43, !dbg !1903
}
define i64 @hash_do_for_each(%struct.hash_table* nocapture readonly, i1 (i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 !dbg !1904 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1912, metadata !635), !dbg !1918
	tail call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %1, i64 0, metadata !1913, metadata !635), !dbg !1919
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1914, metadata !635), !dbg !1920
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1915, metadata !635), !dbg !1921
	%4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !1922
	%5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !1922, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !1916, metadata !635), !dbg !1924
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !1916, metadata !635), !dbg !1924
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1915, metadata !635), !dbg !1921
	%6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !1925
	%7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !1925, !tbaa !1533
	%8 = icmp ult %struct.hash_entry* %5, %7, !dbg !1928
	br i1 %8, label %9, label %43, !dbg !1929
	br label %10, !dbg !1931
	%11 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %9 ]
	%12 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %9 ]
	%13 = phi i64 [ %37, %35 ], [ 0, %9 ]
	%14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0, !dbg !1931
	%15 = load i8*, i8** %14, align 8, !dbg !1931, !tbaa !1538
	%16 = icmp eq i8* %15, null, !dbg !1934
	%17 = icmp eq %struct.hash_entry* %12, null, !dbg !1935
	%18 = or i1 %16, %17, !dbg !1939
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %12, i64 0, metadata !1917, metadata !635), !dbg !1940
	tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1915, metadata !635), !dbg !1921
	br i1 %18, label %35, label %19, !dbg !1939
	%20 = tail call zeroext i1 %1(i8* %15, i8* %2) #12, !dbg !1941
	br i1 %20, label %21, label %41, !dbg !1945
	br label %22, !dbg !1946
	%23 = phi i64 [ %25, %29 ], [ %13, %21 ]
	%24 = phi %struct.hash_entry* [ %27, %29 ], [ %12, %21 ]
	%25 = add i64 %23, 1, !dbg !1946
	tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1915, metadata !635), !dbg !1921
	%26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1, !dbg !1947
	%27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8, !dbg !1947, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !1917, metadata !635), !dbg !1940
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !1917, metadata !635), !dbg !1940
	tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1915, metadata !635), !dbg !1921
	%28 = icmp eq %struct.hash_entry* %27, null, !dbg !1935
	br i1 %28, label %33, label %29, !dbg !1935, !llvm.loop !1949
	%30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 0
	%31 = load i8*, i8** %30, align 8, !tbaa !1538
	%32 = tail call zeroext i1 %1(i8* %31, i8* %2) #12, !dbg !1941
	br i1 %32, label %22, label %40, !dbg !1945
	%34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !1533
	br label %35, !dbg !1921
	%36 = phi %struct.hash_entry* [ %11, %10 ], [ %34, %33 ], !dbg !1925
	%37 = phi i64 [ %13, %10 ], [ %25, %33 ]
	tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1915, metadata !635), !dbg !1921
	%38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1, !dbg !1952
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1916, metadata !635), !dbg !1924
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %38, i64 0, metadata !1916, metadata !635), !dbg !1924
	tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !1915, metadata !635), !dbg !1921
	%39 = icmp ult %struct.hash_entry* %38, %36, !dbg !1928
	br i1 %39, label %10, label %41, !dbg !1929, !llvm.loop !1954
	br label %43, !dbg !1957
	%42 = phi i64 [ %37, %35 ], [ %13, %19 ]
	br label %43, !dbg !1957
	%44 = phi i64 [ 0, %3 ], [ %25, %40 ], [ %42, %41 ]
	ret i64 %44, !dbg !1957
}
define i64 @hash_string(i8* nocapture readonly, i64) local_unnamed_addr #10 !dbg !1958 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1962, metadata !635), !dbg !1966
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1963, metadata !635), !dbg !1967
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1964, metadata !635), !dbg !1968
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1962, metadata !635), !dbg !1966
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1964, metadata !635), !dbg !1968
	%3 = load i8, i8* %0, align 1, !dbg !1969, !tbaa !800
	tail call void @llvm.dbg.value(metadata i8 %3, i64 0, metadata !1965, metadata !635), !dbg !1973
	%4 = icmp eq i8 %3, 0, !dbg !1974
	br i1 %4, label %18, label %5, !dbg !1974
	br label %6, !dbg !1976
	%7 = phi i8 [ %15, %6 ], [ %3, %5 ]
	%8 = phi i8* [ %14, %6 ], [ %0, %5 ]
	%9 = phi i64 [ %13, %6 ], [ 0, %5 ]
	%10 = mul i64 %9, 31, !dbg !1976
	%11 = zext i8 %7 to i64, !dbg !1977
	%12 = add i64 %11, %10, !dbg !1978
	%13 = urem i64 %12, %1, !dbg !1979
	tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1964, metadata !635), !dbg !1968
	%14 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1980
	tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1962, metadata !635), !dbg !1966
	tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1962, metadata !635), !dbg !1966
	tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1964, metadata !635), !dbg !1968
	%15 = load i8, i8* %14, align 1, !dbg !1969, !tbaa !800
	tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1965, metadata !635), !dbg !1973
	%16 = icmp eq i8 %15, 0, !dbg !1974
	br i1 %16, label %17, label %6, !dbg !1974, !llvm.loop !1982
	br label %18, !dbg !1985
	%19 = phi i64 [ 0, %2 ], [ %13, %17 ]
	ret i64 %19, !dbg !1985
}
define void @hash_reset_tuning(%struct.hash_tuning* nocapture) local_unnamed_addr #6 !dbg !1986 {
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %0, i64 0, metadata !1991, metadata !635), !dbg !1992
	%2 = bitcast %struct.hash_tuning* %0 to i8*, !dbg !1993
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i32 4, i1 false), !dbg !1993, !tbaa.struct !1994
	ret void, !dbg !1997
}
define noalias %struct.hash_table* @hash_initialize(i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #6 !dbg !1998 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2003, metadata !635), !dbg !2009
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %1, i64 0, metadata !2004, metadata !635), !dbg !2010
	tail call void @llvm.dbg.value(metadata i64 (i8*, i64)* %2, i64 0, metadata !2005, metadata !635), !dbg !2011
	tail call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %3, i64 0, metadata !2006, metadata !635), !dbg !2012
	tail call void @llvm.dbg.value(metadata void (i8*)* %4, i64 0, metadata !2007, metadata !635), !dbg !2013
	%6 = icmp eq i64 (i8*, i64)* %2, null, !dbg !2014
	tail call void @llvm.dbg.value(metadata i64 (i8*, i64)* @raw_hasher, i64 0, metadata !2005, metadata !635), !dbg !2011
	%7 = select i1 %6, i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)* %2, !dbg !2016
	tail call void @llvm.dbg.value(metadata i64 (i8*, i64)* %7, i64 0, metadata !2005, metadata !635), !dbg !2011
	%8 = icmp eq i1 (i8*, i8*)* %3, null, !dbg !2017
	tail call void @llvm.dbg.value(metadata i1 (i8*, i8*)* @raw_comparator, i64 0, metadata !2006, metadata !635), !dbg !2012
	%9 = select i1 %8, i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)* %3, !dbg !2019
	tail call void @llvm.dbg.value(metadata i1 (i8*, i8*)* %9, i64 0, metadata !2006, metadata !635), !dbg !2012
	%10 = tail call noalias i8* @malloc(i64 80) #12, !dbg !2020
	%11 = bitcast i8* %10 to %struct.hash_table*, !dbg !2020
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %11, i64 0, metadata !2008, metadata !635), !dbg !2021
	%12 = icmp eq i8* %10, null, !dbg !2022
	br i1 %12, label %110, label %13, !dbg !2024
	%14 = icmp eq %struct.hash_tuning* %1, null, !dbg !2025
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* @default_tuning, i64 0, metadata !2004, metadata !635), !dbg !2010
	%15 = select i1 %14, %struct.hash_tuning* @default_tuning, %struct.hash_tuning* %1, !dbg !2027
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, i64 0, metadata !2004, metadata !635), !dbg !2010
	%16 = getelementptr inbounds i8, i8* %10, i64 40, !dbg !2028
	%17 = bitcast i8* %16 to %struct.hash_tuning**, !dbg !2028
	store %struct.hash_tuning* %15, %struct.hash_tuning** %17, align 8, !dbg !2029, !tbaa !2030
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %11, i64 0, metadata !2031, metadata !635), !dbg !2038
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, i64 0, metadata !2036, metadata !635), !dbg !2041
	%18 = icmp eq %struct.hash_tuning* %15, @default_tuning, !dbg !2042
	br i1 %18, label %42, label %19, !dbg !2044
	tail call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, i64 0, metadata !2037, metadata !635), !dbg !2045
	%20 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2, !dbg !2046
	%21 = load float, float* %20, align 4, !dbg !2046, !tbaa !2048
	%22 = fcmp ogt float %21, 0x3FB99999A0000000, !dbg !2050
	%23 = fcmp olt float %21, 0x3FECCCCCC0000000, !dbg !2051
	%24 = and i1 %22, %23, !dbg !2053
	br i1 %24, label %25, label %109, !dbg !2053
	%26 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 3, !dbg !2054
	%27 = load float, float* %26, align 4, !dbg !2054, !tbaa !2055
	%28 = fcmp ogt float %27, 0x3FF19999A0000000, !dbg !2056
	br i1 %28, label %29, label %109, !dbg !2057
	%30 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 0, !dbg !2058
	%31 = load float, float* %30, align 4, !dbg !2058, !tbaa !2059
	%32 = fcmp ult float %31, 0.000000e+00, !dbg !2060
	br i1 %32, label %109, label %33, !dbg !2061
	%34 = fadd float %31, 0x3FB99999A0000000, !dbg !2062
	%35 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 1, !dbg !2063
	%36 = load float, float* %35, align 4, !dbg !2063, !tbaa !2064
	%37 = fcmp olt float %34, %36, !dbg !2065
	%38 = fcmp ole float %36, 1.000000e+00, !dbg !2065
	%39 = and i1 %38, %37, !dbg !2065
	%40 = fcmp olt float %34, %21, !dbg !2066
	%41 = and i1 %40, %39, !dbg !2065
	br i1 %41, label %42, label %109, !dbg !2065
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2067, metadata !635), !dbg !2076
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %15, i64 0, metadata !2072, metadata !635), !dbg !2078
	%43 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 4, !dbg !2079
	%44 = load i8, i8* %43, align 4, !dbg !2079, !tbaa !2080, !range !1318
	%45 = icmp eq i8 %44, 0, !dbg !2079
	br i1 %45, label %46, label %53, !dbg !2081
	%47 = uitofp i64 %0 to float, !dbg !2082
	%48 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2, !dbg !2083
	%49 = load float, float* %48, align 4, !dbg !2083, !tbaa !2048
	%50 = fdiv float %47, %49, !dbg !2084
	tail call void @llvm.dbg.value(metadata float %50, i64 0, metadata !2073, metadata !635), !dbg !2085
	%51 = fcmp ult float %50, 0x43F0000000000000, !dbg !2086
	%52 = fptoui float %50 to i64, !dbg !2088
	tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !2067, metadata !635), !dbg !2076
	br i1 %51, label %53, label %109
	%54 = phi i64 [ %0, %42 ], [ %52, %46 ]
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2067, metadata !635), !dbg !2076
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2089, metadata !635), !dbg !2094
	%55 = icmp ugt i64 %54, 10, !dbg !2096
	%56 = select i1 %55, i64 %54, i64 10, !dbg !2096
	tail call void @llvm.dbg.value(metadata i64 %56, i64 0, metadata !2089, metadata !635), !dbg !2094
	%57 = or i64 %56, 1, !dbg !2097
	tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !2089, metadata !635), !dbg !2094
	tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !2089, metadata !635), !dbg !2094
	%58 = icmp eq i64 %57, -1, !dbg !2098
	br i1 %58, label %109, label %59, !dbg !2100
	br label %60, !dbg !2101
	%61 = phi i64 [ %82, %81 ], [ %57, %59 ]
	tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !2106, metadata !635), !dbg !2101
	tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !2107, metadata !635), !dbg !2111
	tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !2108, metadata !635), !dbg !2112
	tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !2108, metadata !635), !dbg !2112
	tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !2107, metadata !635), !dbg !2111
	%62 = icmp ugt i64 %61, 9, !dbg !2113
	br i1 %62, label %63, label %77, !dbg !2115
	br label %64, !dbg !2116
	%65 = phi i64 [ %72, %69 ], [ 9, %63 ]
	%66 = phi i64 [ %73, %69 ], [ 3, %63 ]
	%67 = urem i64 %61, %66, !dbg !2116
	%68 = icmp eq i64 %67, 0, !dbg !2118
	br i1 %68, label %75, label %69, !dbg !2119
	%70 = shl i64 %66, 2, !dbg !2121
	%71 = add i64 %65, 4, !dbg !2121
	%72 = add i64 %71, %70, !dbg !2123
	tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !2108, metadata !635), !dbg !2112
	%73 = add i64 %66, 2, !dbg !2124
	tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2107, metadata !635), !dbg !2111
	tail call void @llvm.dbg.value(metadata i64 %72, i64 0, metadata !2108, metadata !635), !dbg !2112
	tail call void @llvm.dbg.value(metadata i64 %73, i64 0, metadata !2107, metadata !635), !dbg !2111
	%74 = icmp ult i64 %72, %61, !dbg !2113
	br i1 %74, label %64, label %75, !dbg !2115, !llvm.loop !2125
	%76 = phi i64 [ %73, %69 ], [ %66, %64 ]
	br label %77, !dbg !2128
	%78 = phi i64 [ 3, %60 ], [ %76, %75 ]
	%79 = urem i64 %61, %78, !dbg !2128
	%80 = icmp eq i64 %79, 0, !dbg !2129
	br i1 %80, label %81, label %84, !dbg !2130
	%82 = add i64 %61, 2, !dbg !2132
	tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !2089, metadata !635), !dbg !2094
	tail call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !2089, metadata !635), !dbg !2094
	%83 = icmp eq i64 %82, -1, !dbg !2098
	br i1 %83, label %108, label %60, !dbg !2100, !llvm.loop !2133
	tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !2067, metadata !635), !dbg !2076
	%85 = icmp ugt i64 %61, 1152921504606846975, !dbg !2136
	br i1 %85, label %109, label %86
	%87 = getelementptr inbounds i8, i8* %10, i64 16, !dbg !2138
	%88 = bitcast i8* %87 to i64*, !dbg !2138
	store i64 %61, i64* %88, align 8, !dbg !2139, !tbaa !1497
	%89 = icmp eq i64 %61, 0, !dbg !2140
	br i1 %89, label %109, label %90, !dbg !2142
	%91 = tail call i8* @rpl_calloc(i64 %61, i64 16) #12, !dbg !2143
	%92 = bitcast i8* %10 to i8**, !dbg !2144
	store i8* %91, i8** %92, align 8, !dbg !2144, !tbaa !1529
	%93 = icmp eq i8* %91, null, !dbg !2145
	br i1 %93, label %109, label %94, !dbg !2147
	%95 = bitcast i8* %91 to %struct.hash_entry*, !dbg !2143
	%96 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %95, i64 %61, !dbg !2148
	%97 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !2149
	%98 = bitcast i8* %97 to %struct.hash_entry**, !dbg !2149
	store %struct.hash_entry* %96, %struct.hash_entry** %98, align 8, !dbg !2150, !tbaa !1533
	%99 = getelementptr inbounds i8, i8* %10, i64 24, !dbg !2151
	%100 = getelementptr inbounds i8, i8* %10, i64 48, !dbg !2152
	%101 = bitcast i8* %100 to i64 (i8*, i64)**, !dbg !2152
	call void @llvm.memset.p0i8.i64(i8* %99, i8 0, i64 16, i32 8, i1 false), !dbg !2153
	store i64 (i8*, i64)* %7, i64 (i8*, i64)** %101, align 8, !dbg !2154, !tbaa !1735
	%102 = getelementptr inbounds i8, i8* %10, i64 56, !dbg !2155
	%103 = bitcast i8* %102 to i1 (i8*, i8*)**, !dbg !2155
	store i1 (i8*, i8*)* %9, i1 (i8*, i8*)** %103, align 8, !dbg !2156, !tbaa !1761
	%104 = getelementptr inbounds i8, i8* %10, i64 64, !dbg !2157
	%105 = bitcast i8* %104 to void (i8*)**, !dbg !2157
	store void (i8*)* %4, void (i8*)** %105, align 8, !dbg !2158, !tbaa !2159
	%106 = getelementptr inbounds i8, i8* %10, i64 72, !dbg !2160
	%107 = bitcast i8* %106 to %struct.hash_entry**, !dbg !2160
	store %struct.hash_entry* null, %struct.hash_entry** %107, align 8, !dbg !2161, !tbaa !2162
	br label %110, !dbg !2163
	br label %109, !dbg !2164
	tail call void @free(i8* nonnull %10) #12, !dbg !2164
	br label %110, !dbg !2165
	%111 = phi %struct.hash_table* [ null, %109 ], [ %11, %94 ], [ null, %5 ]
	ret %struct.hash_table* %111, !dbg !2166
}
define internal i64 @raw_hasher(i8*, i64) #11 !dbg !2167 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2169, metadata !635), !dbg !2172
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2170, metadata !635), !dbg !2173
	%3 = ptrtoint i8* %0 to i64, !dbg !2174
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2175, metadata !635), !dbg !2182
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !2181, metadata !635), !dbg !2184
	%4 = lshr i64 %3, 3, !dbg !2185
	%5 = shl i64 %3, 61, !dbg !2186
	%6 = or i64 %5, %4, !dbg !2187
	tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !2171, metadata !635), !dbg !2188
	%7 = urem i64 %6, %1, !dbg !2189
	ret i64 %7, !dbg !2190
}
define internal zeroext i1 @raw_comparator(i8* readnone, i8* readnone) #11 !dbg !2191 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2193, metadata !635), !dbg !2195
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2194, metadata !635), !dbg !2196
	%3 = icmp eq i8* %0, %1, !dbg !2197
	ret i1 %3, !dbg !2198
}
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8
define void @hash_clear(%struct.hash_table* nocapture) local_unnamed_addr #6 !dbg !2199 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2203, metadata !635), !dbg !2212
	%2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2213
	%3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !dbg !2213, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !2204, metadata !635), !dbg !2214
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %3, i64 0, metadata !2204, metadata !635), !dbg !2214
	%4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2215
	%5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !2215, !tbaa !1533
	%6 = icmp ult %struct.hash_entry* %3, %5, !dbg !2217
	br i1 %6, label %7, label %54, !dbg !2218
	%8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
	%9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
	%10 = bitcast %struct.hash_entry** %9 to i64*
	br label %11, !dbg !2218
	%12 = phi %struct.hash_entry* [ %5, %7 ], [ %50, %49 ]
	%13 = phi %struct.hash_entry* [ %3, %7 ], [ %51, %49 ]
	%14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 0, i32 0, !dbg !2220
	%15 = load i8*, i8** %14, align 8, !dbg !2220, !tbaa !1538
	%16 = icmp eq i8* %15, null, !dbg !2221
	br i1 %16, label %49, label %17, !dbg !2222
	%18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 0, i32 1, !dbg !2223
	%19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8, !dbg !2223, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %19, i64 0, metadata !2205, metadata !635), !dbg !2225
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %19, i64 0, metadata !2205, metadata !635), !dbg !2225
	%20 = icmp eq %struct.hash_entry* %19, null, !dbg !2226
	%21 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !2159
	%22 = icmp ne void (i8*)* %21, null
	br i1 %20, label %41, label %23, !dbg !2226
	br label %24
	%25 = phi i1 [ %39, %32 ], [ %22, %23 ]
	%26 = phi void (i8*)* [ %33, %32 ], [ %21, %23 ]
	%27 = phi %struct.hash_entry* [ %35, %32 ], [ %19, %23 ]
	%28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 0
	br i1 %25, label %29, label %32, !dbg !2228
	%30 = load i8*, i8** %28, align 8, !dbg !2231, !tbaa !1538
	tail call void %26(i8* %30) #12, !dbg !2233
	%31 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !2159
	br label %32, !dbg !2233
	%33 = phi void (i8*)* [ %31, %29 ], [ %26, %24 ]
	store i8* null, i8** %28, align 8, !dbg !2234, !tbaa !1538
	%34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 1, !dbg !2235
	%35 = load %struct.hash_entry*, %struct.hash_entry** %34, align 8, !dbg !2235, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !2211, metadata !635), !dbg !2236
	%36 = load i64, i64* %10, align 8, !dbg !2237, !tbaa !2162
	%37 = bitcast %struct.hash_entry** %34 to i64*, !dbg !2238
	store i64 %36, i64* %37, align 8, !dbg !2238, !tbaa !1546
	store %struct.hash_entry* %27, %struct.hash_entry** %9, align 8, !dbg !2239, !tbaa !2162
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !2205, metadata !635), !dbg !2225
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %35, i64 0, metadata !2205, metadata !635), !dbg !2225
	%38 = icmp eq %struct.hash_entry* %35, null, !dbg !2226
	%39 = icmp ne void (i8*)* %33, null
	br i1 %38, label %40, label %24, !dbg !2226, !llvm.loop !2240
	br label %41, !dbg !2243
	%42 = phi void (i8*)* [ %21, %17 ], [ %33, %40 ]
	%43 = phi i1 [ %22, %17 ], [ %39, %40 ]
	br i1 %43, label %44, label %46, !dbg !2243
	%45 = load i8*, i8** %14, align 8, !dbg !2244, !tbaa !1538
	tail call void %42(i8* %45) #12, !dbg !2246
	br label %46, !dbg !2246
	%47 = bitcast %struct.hash_entry* %13 to i8*
	call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 16, i32 8, i1 false), !dbg !2247
	%48 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !1533
	br label %49, !dbg !2248
	%50 = phi %struct.hash_entry* [ %12, %11 ], [ %48, %46 ], !dbg !2215
	%51 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 1, !dbg !2249
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %51, i64 0, metadata !2204, metadata !635), !dbg !2214
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %51, i64 0, metadata !2204, metadata !635), !dbg !2214
	%52 = icmp ult %struct.hash_entry* %51, %50, !dbg !2217
	br i1 %52, label %11, label %53, !dbg !2218, !llvm.loop !2251
	br label %54, !dbg !2254
	%55 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2254
	%56 = bitcast i64* %55 to i8*, !dbg !2255
	call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 16, i32 8, i1 false), !dbg !2256
	ret void, !dbg !2255
}
define void @hash_free(%struct.hash_table* nocapture) local_unnamed_addr #6 !dbg !2257 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2259, metadata !635), !dbg !2263
	%2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8, !dbg !2264
	%3 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2264, !tbaa !2159
	%4 = icmp eq void (i8*)* %3, null, !dbg !2266
	br i1 %4, label %46, label %5, !dbg !2267
	%6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2268
	%7 = load i64, i64* %6, align 8, !dbg !2268, !tbaa !1512
	%8 = icmp eq i64 %7, 0, !dbg !2270
	br i1 %8, label %46, label %9, !dbg !2271
	%10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2273
	%11 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8, !dbg !2273, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %11, i64 0, metadata !2260, metadata !635), !dbg !2276
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %11, i64 0, metadata !2260, metadata !635), !dbg !2276
	%12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2277
	%13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2277, !tbaa !1533
	%14 = icmp ult %struct.hash_entry* %11, %13, !dbg !2280
	br i1 %14, label %15, label %46, !dbg !2281
	br label %16, !dbg !2283
	%17 = phi %struct.hash_entry* [ %42, %41 ], [ %13, %15 ]
	%18 = phi %struct.hash_entry* [ %43, %41 ], [ %11, %15 ]
	%19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0, !dbg !2283
	%20 = load i8*, i8** %19, align 8, !dbg !2283, !tbaa !1538
	%21 = icmp eq i8* %20, null, !dbg !2286
	%22 = icmp eq %struct.hash_entry* %18, null, !dbg !2287
	%23 = or i1 %21, %22, !dbg !2291
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2261, metadata !635), !dbg !2292
	br i1 %23, label %41, label %24, !dbg !2291
	%25 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2293, !tbaa !2159
	tail call void %25(i8* %20) #12, !dbg !2295
	%26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 1, !dbg !2296
	%27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8, !dbg !2296, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !2261, metadata !635), !dbg !2292
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %27, i64 0, metadata !2261, metadata !635), !dbg !2292
	%28 = icmp eq %struct.hash_entry* %27, null, !dbg !2287
	br i1 %28, label %39, label %29, !dbg !2287, !llvm.loop !2298
	br label %30
	%31 = phi %struct.hash_entry* [ %36, %30 ], [ %27, %29 ]
	%32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
	%33 = load i8*, i8** %32, align 8, !tbaa !1538
	%34 = load void (i8*)*, void (i8*)** %2, align 8, !dbg !2293, !tbaa !2159
	tail call void %34(i8* %33) #12, !dbg !2295
	%35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1, !dbg !2296
	%36 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8, !dbg !2296, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %36, i64 0, metadata !2261, metadata !635), !dbg !2292
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %36, i64 0, metadata !2261, metadata !635), !dbg !2292
	%37 = icmp eq %struct.hash_entry* %36, null, !dbg !2287
	br i1 %37, label %38, label %30, !dbg !2287, !llvm.loop !2298
	br label %39
	%40 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !1533
	br label %41, !dbg !2301
	%42 = phi %struct.hash_entry* [ %40, %39 ], [ %17, %16 ], !dbg !2277
	%43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 1, !dbg !2301
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %43, i64 0, metadata !2260, metadata !635), !dbg !2276
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %43, i64 0, metadata !2260, metadata !635), !dbg !2276
	%44 = icmp ult %struct.hash_entry* %43, %42, !dbg !2280
	br i1 %44, label %16, label %45, !dbg !2281, !llvm.loop !2303
	br label %46, !dbg !2306
	%47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2306
	%48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !dbg !2306, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %48, i64 0, metadata !2260, metadata !635), !dbg !2276
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %48, i64 0, metadata !2260, metadata !635), !dbg !2276
	%49 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1, !dbg !2308
	%50 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8, !dbg !2308, !tbaa !1533
	%51 = icmp ult %struct.hash_entry* %48, %50, !dbg !2311
	br i1 %51, label %52, label %73, !dbg !2312
	br label %53, !dbg !2314
	%54 = phi %struct.hash_entry* [ %69, %68 ], [ %50, %52 ]
	%55 = phi %struct.hash_entry* [ %70, %68 ], [ %48, %52 ]
	%56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 1, !dbg !2314
	%57 = load %struct.hash_entry*, %struct.hash_entry** %56, align 8, !dbg !2314, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %57, i64 0, metadata !2261, metadata !635), !dbg !2292
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %57, i64 0, metadata !2261, metadata !635), !dbg !2292
	%58 = icmp eq %struct.hash_entry* %57, null, !dbg !2317
	br i1 %58, label %68, label %59, !dbg !2317
	br label %60
	%61 = phi %struct.hash_entry* [ %64, %60 ], [ %57, %59 ]
	%62 = bitcast %struct.hash_entry* %61 to i8*
	%63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i64 0, i32 1, !dbg !2319
	%64 = load %struct.hash_entry*, %struct.hash_entry** %63, align 8, !dbg !2319, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %64, i64 0, metadata !2262, metadata !635), !dbg !2322
	tail call void @free(i8* %62) #12, !dbg !2323
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %64, i64 0, metadata !2261, metadata !635), !dbg !2292
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %64, i64 0, metadata !2261, metadata !635), !dbg !2292
	%65 = icmp eq %struct.hash_entry* %64, null, !dbg !2317
	br i1 %65, label %66, label %60, !dbg !2317, !llvm.loop !2324
	%67 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8, !tbaa !1533
	br label %68, !dbg !2327
	%69 = phi %struct.hash_entry* [ %67, %66 ], [ %54, %53 ], !dbg !2308
	%70 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 1, !dbg !2327
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %70, i64 0, metadata !2260, metadata !635), !dbg !2276
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %70, i64 0, metadata !2260, metadata !635), !dbg !2276
	%71 = icmp ult %struct.hash_entry* %70, %69, !dbg !2311
	br i1 %71, label %53, label %72, !dbg !2312, !llvm.loop !2329
	br label %73, !dbg !2332
	%74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2332
	%75 = load %struct.hash_entry*, %struct.hash_entry** %74, align 8, !dbg !2332, !tbaa !2162
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %75, i64 0, metadata !2261, metadata !635), !dbg !2292
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %75, i64 0, metadata !2261, metadata !635), !dbg !2292
	%76 = icmp eq %struct.hash_entry* %75, null, !dbg !2334
	br i1 %76, label %85, label %77, !dbg !2334
	br label %78
	%79 = phi %struct.hash_entry* [ %82, %78 ], [ %75, %77 ]
	%80 = bitcast %struct.hash_entry* %79 to i8*
	%81 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %79, i64 0, i32 1, !dbg !2336
	%82 = load %struct.hash_entry*, %struct.hash_entry** %81, align 8, !dbg !2336, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %82, i64 0, metadata !2262, metadata !635), !dbg !2322
	tail call void @free(i8* %80) #12, !dbg !2339
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %82, i64 0, metadata !2261, metadata !635), !dbg !2292
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %82, i64 0, metadata !2261, metadata !635), !dbg !2292
	%83 = icmp eq %struct.hash_entry* %82, null, !dbg !2334
	br i1 %83, label %84, label %78, !dbg !2334, !llvm.loop !2340
	br label %85, !dbg !2343
	%86 = bitcast %struct.hash_table* %0 to i8**, !dbg !2343
	%87 = load i8*, i8** %86, align 8, !dbg !2343, !tbaa !1529
	tail call void @free(i8* %87) #12, !dbg !2344
	%88 = bitcast %struct.hash_table* %0 to i8*, !dbg !2345
	tail call void @free(i8* %88) #12, !dbg !2346
	ret void, !dbg !2347
}
define zeroext i1 @hash_rehash(%struct.hash_table* nocapture, i64) local_unnamed_addr #6 !dbg !2348 {
	%3 = alloca %struct.hash_table, align 16
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2352, metadata !635), !dbg !2357
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2353, metadata !635), !dbg !2358
	%4 = bitcast %struct.hash_table* %3 to i8*, !dbg !2359
	call void @llvm.lifetime.start(i64 80, i8* nonnull %4) #12, !dbg !2359
	%5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2360
	%6 = load %struct.hash_tuning*, %struct.hash_tuning** %5, align 8, !dbg !2360, !tbaa !2030
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2067, metadata !635), !dbg !2361
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %6, i64 0, metadata !2072, metadata !635), !dbg !2363
	%7 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 4, !dbg !2364
	%8 = load i8, i8* %7, align 4, !dbg !2364, !tbaa !2080, !range !1318
	%9 = icmp eq i8 %8, 0, !dbg !2364
	br i1 %9, label %10, label %17, !dbg !2365
	%11 = uitofp i64 %1 to float, !dbg !2366
	%12 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 2, !dbg !2367
	%13 = load float, float* %12, align 4, !dbg !2367, !tbaa !2048
	%14 = fdiv float %11, %13, !dbg !2368
	tail call void @llvm.dbg.value(metadata float %14, i64 0, metadata !2073, metadata !635), !dbg !2369
	%15 = fcmp ult float %14, 0x43F0000000000000, !dbg !2370
	%16 = fptoui float %14 to i64, !dbg !2371
	tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !2067, metadata !635), !dbg !2361
	br i1 %15, label %17, label %152
	%18 = phi i64 [ %1, %2 ], [ %16, %10 ]
	tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !2067, metadata !635), !dbg !2361
	tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !2089, metadata !635), !dbg !2372
	%19 = icmp ugt i64 %18, 10, !dbg !2374
	%20 = select i1 %19, i64 %18, i64 10, !dbg !2374
	tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !2089, metadata !635), !dbg !2372
	%21 = or i64 %20, 1, !dbg !2375
	tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !2089, metadata !635), !dbg !2372
	tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !2089, metadata !635), !dbg !2372
	%22 = icmp eq i64 %21, -1, !dbg !2376
	br i1 %22, label %152, label %23, !dbg !2377
	br label %24, !dbg !2378
	%25 = phi i64 [ %46, %45 ], [ %21, %23 ]
	tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !2106, metadata !635), !dbg !2378
	tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !2107, metadata !635), !dbg !2380
	tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !2108, metadata !635), !dbg !2381
	tail call void @llvm.dbg.value(metadata i64 9, i64 0, metadata !2108, metadata !635), !dbg !2381
	tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !2107, metadata !635), !dbg !2380
	%26 = icmp ugt i64 %25, 9, !dbg !2382
	br i1 %26, label %27, label %41, !dbg !2383
	br label %28, !dbg !2384
	%29 = phi i64 [ %36, %33 ], [ 9, %27 ]
	%30 = phi i64 [ %37, %33 ], [ 3, %27 ]
	%31 = urem i64 %25, %30, !dbg !2384
	%32 = icmp eq i64 %31, 0, !dbg !2385
	br i1 %32, label %39, label %33, !dbg !2386
	%34 = shl i64 %30, 2, !dbg !2387
	%35 = add i64 %29, 4, !dbg !2387
	%36 = add i64 %35, %34, !dbg !2388
	tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !2108, metadata !635), !dbg !2381
	%37 = add i64 %30, 2, !dbg !2389
	tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !2107, metadata !635), !dbg !2380
	tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !2108, metadata !635), !dbg !2381
	tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !2107, metadata !635), !dbg !2380
	%38 = icmp ult i64 %36, %25, !dbg !2382
	br i1 %38, label %28, label %39, !dbg !2383, !llvm.loop !2125
	%40 = phi i64 [ %37, %33 ], [ %30, %28 ]
	br label %41, !dbg !2390
	%42 = phi i64 [ 3, %24 ], [ %40, %39 ]
	%43 = urem i64 %25, %42, !dbg !2390
	%44 = icmp eq i64 %43, 0, !dbg !2391
	br i1 %44, label %45, label %48, !dbg !2392
	%46 = add i64 %25, 2, !dbg !2393
	tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !2089, metadata !635), !dbg !2372
	tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !2089, metadata !635), !dbg !2372
	%47 = icmp eq i64 %46, -1, !dbg !2376
	br i1 %47, label %151, label %24, !dbg !2377, !llvm.loop !2133
	tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !2067, metadata !635), !dbg !2361
	%49 = add i64 %25, -1
	%50 = icmp ugt i64 %49, 1152921504606846974
	tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !2356, metadata !635), !dbg !2394
	br i1 %50, label %152, label %51
	%52 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2395
	%53 = load i64, i64* %52, align 8, !dbg !2395, !tbaa !1497
	%54 = icmp eq i64 %25, %53, !dbg !2397
	br i1 %54, label %152, label %55, !dbg !2398
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2355, metadata !635), !dbg !2399
	%56 = tail call i8* @rpl_calloc(i64 %25, i64 16) #12, !dbg !2400
	%57 = bitcast %struct.hash_table* %3 to i8**, !dbg !2401
	store i8* %56, i8** %57, align 16, !dbg !2401, !tbaa !1529
	%58 = icmp eq i8* %56, null, !dbg !2402
	br i1 %58, label %152, label %59, !dbg !2404
	%60 = bitcast i8* %56 to %struct.hash_entry*, !dbg !2404
	%61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 2, !dbg !2405
	store i64 %25, i64* %61, align 16, !dbg !2406, !tbaa !1497
	%62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %60, i64 %25, !dbg !2407
	%63 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 1, !dbg !2408
	store %struct.hash_entry* %62, %struct.hash_entry** %63, align 8, !dbg !2409, !tbaa !1533
	%64 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 3, !dbg !2410
	%65 = bitcast i64* %64 to i8*, !dbg !2411
	call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 16, i32 8, i1 false), !dbg !2412
	%66 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 5, !dbg !2413
	%67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2414
	%68 = bitcast %struct.hash_tuning** %5 to <2 x i64>*, !dbg !2411
	%69 = load <2 x i64>, <2 x i64>* %68, align 8, !dbg !2411, !tbaa !643
	%70 = bitcast %struct.hash_tuning** %66 to <2 x i64>*, !dbg !2415
	store <2 x i64> %69, <2 x i64>* %70, align 8, !dbg !2415, !tbaa !643
	%71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2416
	%72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 7, !dbg !2417
	%73 = bitcast i1 (i8*, i8*)** %71 to <2 x i64>*, !dbg !2416
	%74 = load <2 x i64>, <2 x i64>* %73, align 8, !dbg !2416, !tbaa !643
	%75 = bitcast i1 (i8*, i8*)** %72 to <2 x i64>*, !dbg !2418
	store <2 x i64> %74, <2 x i64>* %75, align 8, !dbg !2418, !tbaa !643
	%76 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2419
	%77 = bitcast %struct.hash_entry** %76 to i64*, !dbg !2419
	%78 = load i64, i64* %77, align 8, !dbg !2419, !tbaa !2162
	%79 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 9, !dbg !2420
	%80 = bitcast %struct.hash_entry** %79 to i64*, !dbg !2421
	store i64 %78, i64* %80, align 8, !dbg !2421, !tbaa !2162
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2354, metadata !1109), !dbg !2422
	%81 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* nonnull %3, %struct.hash_table* nonnull %0, i1 zeroext false), !dbg !2423
	br i1 %81, label %82, label %92, !dbg !2425
	%83 = bitcast %struct.hash_table* %0 to i8**, !dbg !2426
	%84 = load i8*, i8** %83, align 8, !dbg !2426, !tbaa !1529
	tail call void @free(i8* %84) #12, !dbg !2428
	%85 = bitcast %struct.hash_table* %3 to <2 x i64>*, !dbg !2429
	%86 = load <2 x i64>, <2 x i64>* %85, align 16, !dbg !2429, !tbaa !643
	%87 = bitcast %struct.hash_table* %0 to <2 x i64>*, !dbg !2430
	store <2 x i64> %86, <2 x i64>* %87, align 8, !dbg !2430, !tbaa !643
	%88 = bitcast i64* %61 to <2 x i64>*, !dbg !2431
	%89 = load <2 x i64>, <2 x i64>* %88, align 16, !dbg !2431, !tbaa !2432
	%90 = bitcast i64* %52 to <2 x i64>*, !dbg !2433
	store <2 x i64> %89, <2 x i64>* %90, align 8, !dbg !2433, !tbaa !2432
	%91 = load i64, i64* %80, align 8, !dbg !2434, !tbaa !2162
	store i64 %91, i64* %77, align 8, !dbg !2435, !tbaa !2162
	br label %152, !dbg !2436
	%93 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 0, !dbg !2437
	%94 = load i64, i64* %80, align 8, !dbg !2438, !tbaa !2162
	store i64 %94, i64* %77, align 8, !dbg !2439, !tbaa !2162
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2354, metadata !1109), !dbg !2422
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2440, metadata !635) #12, !dbg !2459
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2445, metadata !635) #12, !dbg !2462
	tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !2446, metadata !1299) #12, !dbg !2463
	%95 = load %struct.hash_entry*, %struct.hash_entry** %93, align 16, !dbg !2464, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %95, i64 0, metadata !2447, metadata !635) #12, !dbg !2465
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %95, i64 0, metadata !2447, metadata !635) #12, !dbg !2465
	%96 = load %struct.hash_entry*, %struct.hash_entry** %63, align 8, !dbg !2466, !tbaa !1533
	%97 = icmp ult %struct.hash_entry* %95, %96, !dbg !2468
	br i1 %97, label %98, label %146, !dbg !2469
	%99 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
	%100 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
	br label %101, !dbg !2469
	%102 = phi %struct.hash_entry* [ %95, %98 ], [ %143, %142 ]
	%103 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 0, i32 0, !dbg !2471
	%104 = load i8*, i8** %103, align 8, !dbg !2471, !tbaa !1538
	%105 = icmp eq i8* %104, null, !dbg !2472
	br i1 %105, label %142, label %106, !dbg !2473
	%107 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 0, i32 1, !dbg !2474
	%108 = load %struct.hash_entry*, %struct.hash_entry** %107, align 8, !dbg !2474, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %108, i64 0, metadata !2448, metadata !635) #12, !dbg !2476
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %108, i64 0, metadata !2448, metadata !635) #12, !dbg !2476
	%109 = icmp eq %struct.hash_entry* %108, null, !dbg !2477
	br i1 %109, label %141, label %110, !dbg !2477
	%111 = load i64, i64* %52, align 8, !tbaa !1497
	br label %112, !dbg !2479
	%113 = phi i64 [ %119, %131 ], [ %111, %110 ], !dbg !2482
	%114 = phi %struct.hash_entry* [ %125, %131 ], [ %108, %110 ]
	%115 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %114, i64 0, i32 0, !dbg !2479
	%116 = load i8*, i8** %115, align 8, !dbg !2479, !tbaa !1538
	tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !2450, metadata !635) #12, !dbg !2484
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1724, metadata !635) #12, !dbg !2485
	tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !1729, metadata !635) #12, !dbg !2486
	%117 = load i64 (i8*, i64)*, i64 (i8*, i64)** %67, align 8, !dbg !2487, !tbaa !1735
	%118 = tail call i64 %117(i8* %116, i64 %113) #12, !dbg !2488
	tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !1730, metadata !635) #12, !dbg !2489
	%119 = load i64, i64* %52, align 8, !dbg !2490, !tbaa !1497
	%120 = icmp ult i64 %118, %119, !dbg !2491
	br i1 %120, label %122, label %121, !dbg !2492
	tail call void @abort() #15, !dbg !2493
	unreachable, !dbg !2493
	%123 = load %struct.hash_entry*, %struct.hash_entry** %99, align 8, !dbg !2494, !tbaa !1529
	%124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %114, i64 0, i32 1, !dbg !2495
	%125 = load %struct.hash_entry*, %struct.hash_entry** %124, align 8, !dbg !2495, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %125, i64 0, metadata !2449, metadata !635) #12, !dbg !2496
	%126 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 0, !dbg !2497
	%127 = load i8*, i8** %126, align 8, !dbg !2497, !tbaa !1538
	%128 = icmp eq i8* %127, null, !dbg !2499
	br i1 %128, label %137, label %129, !dbg !2500
	%130 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 1, !dbg !2501
	br label %131, !dbg !2503
	%132 = phi %struct.hash_entry** [ %130, %129 ], [ %76, %137 ]
	%133 = bitcast %struct.hash_entry** %132 to i64*
	%134 = load i64, i64* %133, align 8, !tbaa !643
	%135 = bitcast %struct.hash_entry** %124 to i64*
	store i64 %134, i64* %135, align 8, !tbaa !1546
	store %struct.hash_entry* %114, %struct.hash_entry** %132, align 8, !tbaa !643
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %125, i64 0, metadata !2448, metadata !635) #12, !dbg !2476
	%136 = icmp eq %struct.hash_entry* %125, null, !dbg !2477
	br i1 %136, label %140, label %112, !dbg !2477, !llvm.loop !2504
	store i8* %116, i8** %126, align 8, !dbg !2507, !tbaa !1538
	%138 = load i64, i64* %100, align 8, !dbg !2509, !tbaa !1505
	%139 = add i64 %138, 1, !dbg !2509
	store i64 %139, i64* %100, align 8, !dbg !2509, !tbaa !1505
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2510, metadata !635) #12, !dbg !2516
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %114, i64 0, metadata !2515, metadata !635) #12, !dbg !2518
	store i8* null, i8** %115, align 8, !dbg !2519, !tbaa !1538
	br label %131
	br label %141, !dbg !2520
	store %struct.hash_entry* null, %struct.hash_entry** %107, align 8, !dbg !2520, !tbaa !1546
	br label %142
	%143 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 1, !dbg !2521
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %143, i64 0, metadata !2447, metadata !635) #12, !dbg !2465
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %143, i64 0, metadata !2447, metadata !635) #12, !dbg !2465
	%144 = icmp ult %struct.hash_entry* %143, %96, !dbg !2468
	br i1 %144, label %101, label %145, !dbg !2469, !llvm.loop !2523
	br label %146, !dbg !2422
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %3, i64 0, metadata !2354, metadata !1109), !dbg !2422
	%147 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* %0, %struct.hash_table* nonnull %3, i1 zeroext false), !dbg !2526
	br i1 %147, label %149, label %148, !dbg !2528
	tail call void @abort() #15, !dbg !2530
	unreachable, !dbg !2530
	%150 = load i8*, i8** %57, align 16, !dbg !2531, !tbaa !1529
	tail call void @free(i8* %150) #12, !dbg !2532
	br label %152, !dbg !2533
	br label %152, !dbg !2534
	%153 = phi i1 [ true, %82 ], [ false, %149 ], [ true, %51 ], [ false, %55 ], [ false, %10 ], [ false, %48 ], [ false, %17 ], [ false, %151 ]
	call void @llvm.lifetime.end(i64 80, i8* nonnull %4) #12, !dbg !2534
	ret i1 %153, !dbg !2534
}
define internal fastcc zeroext i1 @transfer_entries(%struct.hash_table* nocapture, %struct.hash_table* nocapture, i1 zeroext) unnamed_addr #6 !dbg !2441 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2440, metadata !635), !dbg !2535
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %1, i64 0, metadata !2445, metadata !635), !dbg !2536
	tail call void @llvm.dbg.value(metadata i1 %2, i64 0, metadata !2446, metadata !1299), !dbg !2537
	%4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 0, !dbg !2538
	%5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !dbg !2538, !tbaa !1529
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !2447, metadata !635), !dbg !2539
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %5, i64 0, metadata !2447, metadata !635), !dbg !2539
	%6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 1, !dbg !2540
	%7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !2540, !tbaa !1533
	%8 = icmp ult %struct.hash_entry* %5, %7, !dbg !2541
	br i1 %8, label %9, label %103, !dbg !2542
	%10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
	%11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
	%12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
	%13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
	%14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 3
	%15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
	%16 = bitcast %struct.hash_entry** %15 to i64*
	br label %17, !dbg !2542
	%18 = phi %struct.hash_entry* [ %5, %9 ], [ %98, %97 ]
	%19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0, !dbg !2543
	%20 = load i8*, i8** %19, align 8, !dbg !2543, !tbaa !1538
	%21 = icmp eq i8* %20, null, !dbg !2544
	br i1 %21, label %97, label %22, !dbg !2545
	%23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 1, !dbg !2546
	%24 = load %struct.hash_entry*, %struct.hash_entry** %23, align 8, !dbg !2546, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %24, i64 0, metadata !2448, metadata !635), !dbg !2547
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %24, i64 0, metadata !2448, metadata !635), !dbg !2547
	%25 = icmp eq %struct.hash_entry* %24, null, !dbg !2548
	br i1 %25, label %58, label %26, !dbg !2548
	%27 = load i64, i64* %11, align 8, !tbaa !1497
	br label %28, !dbg !2549
	%29 = phi i64 [ %35, %47 ], [ %27, %26 ], !dbg !2550
	%30 = phi %struct.hash_entry* [ %41, %47 ], [ %24, %26 ]
	%31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 0, !dbg !2549
	%32 = load i8*, i8** %31, align 8, !dbg !2549, !tbaa !1538
	tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2450, metadata !635), !dbg !2552
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1724, metadata !635) #12, !dbg !2553
	tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1729, metadata !635) #12, !dbg !2554
	%33 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !dbg !2555, !tbaa !1735
	%34 = tail call i64 %33(i8* %32, i64 %29) #12, !dbg !2556
	tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1730, metadata !635) #12, !dbg !2557
	%35 = load i64, i64* %11, align 8, !dbg !2558, !tbaa !1497
	%36 = icmp ult i64 %34, %35, !dbg !2559
	br i1 %36, label %38, label %37, !dbg !2560
	tail call void @abort() #15, !dbg !2561
	unreachable, !dbg !2561
	%39 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2562, !tbaa !1529
	%40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1, !dbg !2563
	%41 = load %struct.hash_entry*, %struct.hash_entry** %40, align 8, !dbg !2563, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %41, i64 0, metadata !2449, metadata !635), !dbg !2564
	%42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %34, i32 0, !dbg !2565
	%43 = load i8*, i8** %42, align 8, !dbg !2565, !tbaa !1538
	%44 = icmp eq i8* %43, null, !dbg !2566
	br i1 %44, label %53, label %45, !dbg !2567
	%46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %34, i32 1, !dbg !2568
	br label %47, !dbg !2569
	%48 = phi %struct.hash_entry** [ %46, %45 ], [ %15, %53 ]
	%49 = bitcast %struct.hash_entry** %48 to i64*
	%50 = load i64, i64* %49, align 8, !tbaa !643
	%51 = bitcast %struct.hash_entry** %40 to i64*
	store i64 %50, i64* %51, align 8, !tbaa !1546
	store %struct.hash_entry* %30, %struct.hash_entry** %48, align 8, !tbaa !643
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %41, i64 0, metadata !2448, metadata !635), !dbg !2547
	%52 = icmp eq %struct.hash_entry* %41, null, !dbg !2548
	br i1 %52, label %56, label %28, !dbg !2548, !llvm.loop !2504
	store i8* %32, i8** %42, align 8, !dbg !2570, !tbaa !1538
	%54 = load i64, i64* %13, align 8, !dbg !2571, !tbaa !1505
	%55 = add i64 %54, 1, !dbg !2571
	store i64 %55, i64* %13, align 8, !dbg !2571, !tbaa !1505
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2510, metadata !635), !dbg !2572
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %30, i64 0, metadata !2515, metadata !635), !dbg !2574
	store i8* null, i8** %31, align 8, !dbg !2575, !tbaa !1538
	br label %47
	%57 = load i8*, i8** %19, align 8, !tbaa !1538
	br label %58, !dbg !2576
	%59 = phi i8* [ %57, %56 ], [ %20, %22 ], !dbg !2576
	tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !2450, metadata !635), !dbg !2552
	store %struct.hash_entry* null, %struct.hash_entry** %23, align 8, !dbg !2577, !tbaa !1546
	br i1 %2, label %97, label %60, !dbg !2578
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1724, metadata !635) #12, !dbg !2579
	tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1729, metadata !635) #12, !dbg !2581
	%61 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !dbg !2582, !tbaa !1735
	%62 = load i64, i64* %11, align 8, !dbg !2583, !tbaa !1497
	%63 = tail call i64 %61(i8* %59, i64 %62) #12, !dbg !2584
	tail call void @llvm.dbg.value(metadata i64 %63, i64 0, metadata !1730, metadata !635) #12, !dbg !2585
	%64 = load i64, i64* %11, align 8, !dbg !2586, !tbaa !1497
	%65 = icmp ult i64 %63, %64, !dbg !2587
	br i1 %65, label %67, label %66, !dbg !2588
	tail call void @abort() #15, !dbg !2589
	unreachable, !dbg !2589
	%68 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2590, !tbaa !1529
	%69 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 %63, i32 0, !dbg !2591
	%70 = load i8*, i8** %69, align 8, !dbg !2591, !tbaa !1538
	%71 = icmp eq i8* %70, null, !dbg !2592
	br i1 %71, label %91, label %72, !dbg !2593
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2594, metadata !635) #12, !dbg !2600
	%73 = load %struct.hash_entry*, %struct.hash_entry** %15, align 8, !dbg !2602, !tbaa !2162
	%74 = icmp eq %struct.hash_entry* %73, null, !dbg !2604
	br i1 %74, label %79, label %75, !dbg !2605
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %73, i64 0, metadata !2599, metadata !635) #12, !dbg !2606
	%76 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %73, i64 0, i32 1, !dbg !2607
	%77 = bitcast %struct.hash_entry** %76 to i64*, !dbg !2607
	%78 = load i64, i64* %77, align 8, !dbg !2607, !tbaa !1546
	store i64 %78, i64* %16, align 8, !dbg !2609, !tbaa !2162
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2599, metadata !635) #12, !dbg !2606
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2456, metadata !635), !dbg !2610
	br label %83, !dbg !2611
	%80 = tail call noalias i8* @malloc(i64 16) #12, !dbg !2612
	%81 = bitcast i8* %80 to %struct.hash_entry*, !dbg !2612
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2599, metadata !635) #12, !dbg !2606
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2599, metadata !635) #12, !dbg !2606
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %81, i64 0, metadata !2456, metadata !635), !dbg !2610
	%82 = icmp eq i8* %80, null, !dbg !2614
	br i1 %82, label %101, label %83, !dbg !2611
	%84 = phi %struct.hash_entry* [ %73, %75 ], [ %81, %79 ]
	%85 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 0, !dbg !2616
	store i8* %59, i8** %85, align 8, !dbg !2617, !tbaa !1538
	%86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 %63, i32 1, !dbg !2618
	%87 = bitcast %struct.hash_entry** %86 to i64*, !dbg !2618
	%88 = load i64, i64* %87, align 8, !dbg !2618, !tbaa !1546
	%89 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 1, !dbg !2619
	%90 = bitcast %struct.hash_entry** %89 to i64*, !dbg !2620
	store i64 %88, i64* %90, align 8, !dbg !2620, !tbaa !1546
	store %struct.hash_entry* %84, %struct.hash_entry** %86, align 8, !dbg !2621, !tbaa !1546
	br label %94
	store i8* %59, i8** %69, align 8, !dbg !2622, !tbaa !1538
	%92 = load i64, i64* %13, align 8, !dbg !2624, !tbaa !1505
	%93 = add i64 %92, 1, !dbg !2624
	store i64 %93, i64* %13, align 8, !dbg !2624, !tbaa !1505
	br label %94
	store i8* null, i8** %19, align 8, !dbg !2625, !tbaa !1538
	%95 = load i64, i64* %14, align 8, !dbg !2626, !tbaa !1505
	%96 = add i64 %95, -1, !dbg !2626
	store i64 %96, i64* %14, align 8, !dbg !2626, !tbaa !1505
	br label %97, !dbg !2627
	%98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 1, !dbg !2628
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %98, i64 0, metadata !2447, metadata !635), !dbg !2539
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %98, i64 0, metadata !2447, metadata !635), !dbg !2539
	%99 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !dbg !2540, !tbaa !1533
	%100 = icmp ult %struct.hash_entry* %98, %99, !dbg !2541
	br i1 %100, label %17, label %101, !dbg !2542, !llvm.loop !2523
	%102 = phi i1 [ false, %79 ], [ true, %97 ]
	br label %103, !dbg !2629
	%104 = phi i1 [ true, %3 ], [ %102, %101 ]
	ret i1 %104, !dbg !2629
}
define i32 @hash_insert_if_absent(%struct.hash_table* nocapture, i8*, i8**) local_unnamed_addr #6 !dbg !2630 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2635, metadata !635), !dbg !2649
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2636, metadata !635), !dbg !2650
	tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !2637, metadata !635), !dbg !2651
	%4 = icmp eq i8* %1, null, !dbg !2652
	br i1 %4, label %5, label %6, !dbg !2654
	tail call void @abort() #15, !dbg !2655
	unreachable, !dbg !2655
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2656, metadata !635) #12, !dbg !2684
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !635) #12, !dbg !2687
	tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !2664, metadata !1299) #12, !dbg !2688
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1724, metadata !635) #12, !dbg !2689
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1729, metadata !635) #12, !dbg !2691
	%7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2692
	%8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !dbg !2692, !tbaa !1735
	%9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2693
	%10 = load i64, i64* %9, align 8, !dbg !2693, !tbaa !1497
	%11 = tail call i64 %8(i8* nonnull %1, i64 %10) #12, !dbg !2694
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !1730, metadata !635) #12, !dbg !2695
	%12 = load i64, i64* %9, align 8, !dbg !2696, !tbaa !1497
	%13 = icmp ult i64 %11, %12, !dbg !2697
	br i1 %13, label %15, label %14, !dbg !2698
	tail call void @abort() #15, !dbg !2699
	unreachable, !dbg !2699
	%16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2700
	%17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !dbg !2700, !tbaa !1529
	%18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, !dbg !2701
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2665, metadata !635) #12, !dbg !2702
	%19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0, !dbg !2703
	%20 = load i8*, i8** %19, align 8, !dbg !2703, !tbaa !1538
	%21 = icmp eq i8* %20, null, !dbg !2705
	br i1 %21, label %61, label %22, !dbg !2706
	%23 = icmp eq i8* %20, %1, !dbg !2707
	br i1 %23, label %56, label %24, !dbg !2708
	%25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2709
	%26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !dbg !2709, !tbaa !1761
	%27 = tail call zeroext i1 %26(i8* nonnull %1, i8* nonnull %20) #12, !dbg !2711
	br i1 %27, label %49, label %28, !dbg !2712
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %18, i64 0, metadata !2666, metadata !635) #12, !dbg !2714
	%29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, i32 1, !dbg !2715
	%30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !dbg !2715, !tbaa !1546
	%31 = icmp eq %struct.hash_entry* %30, null, !dbg !2717
	br i1 %31, label %61, label %32, !dbg !2717
	br label %33, !dbg !2719
	%34 = phi %struct.hash_entry* [ %47, %45 ], [ %30, %32 ]
	%35 = phi %struct.hash_entry** [ %46, %45 ], [ %29, %32 ]
	%36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0, !dbg !2719
	%37 = load i8*, i8** %36, align 8, !dbg !2719, !tbaa !1538
	%38 = icmp eq i8* %37, %1, !dbg !2720
	br i1 %38, label %52, label %39, !dbg !2721
	%40 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !dbg !2722, !tbaa !1761
	%41 = tail call zeroext i1 %40(i8* nonnull %1, i8* %37) #12, !dbg !2724
	%42 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8, !tbaa !1546
	br i1 %41, label %43, label %45, !dbg !2725
	%44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 0, i32 0
	br label %49, !dbg !2725
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %42, i64 0, metadata !2666, metadata !635) #12, !dbg !2714
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %42, i64 0, metadata !2666, metadata !635) #12, !dbg !2714
	%46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 0, i32 1, !dbg !2715
	%47 = load %struct.hash_entry*, %struct.hash_entry** %46, align 8, !dbg !2715, !tbaa !1546
	%48 = icmp eq %struct.hash_entry* %47, null, !dbg !2717
	br i1 %48, label %60, label %33, !dbg !2717, !llvm.loop !2727
	%50 = phi i8** [ %44, %43 ], [ %19, %24 ]
	%51 = load i8*, i8** %50, align 8, !tbaa !1538
	br label %53, !dbg !2730
	br label %53, !dbg !2730
	%54 = phi i8* [ %51, %49 ], [ %1, %52 ]
	tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !2638, metadata !635), !dbg !2730
	%55 = icmp eq i8* %54, null, !dbg !2731
	br i1 %55, label %61, label %56, !dbg !2732
	%57 = phi i8* [ %54, %53 ], [ %1, %22 ]
	%58 = icmp eq i8** %2, null, !dbg !2733
	br i1 %58, label %198, label %59, !dbg !2736
	store i8* %57, i8** %2, align 8, !dbg !2737, !tbaa !643
	br label %198, !dbg !2738
	br label %61, !dbg !2739
	%62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2739
	%63 = load i64, i64* %62, align 8, !dbg !2739, !tbaa !1505
	%64 = uitofp i64 %63 to float, !dbg !2740
	%65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2741
	%66 = load %struct.hash_tuning*, %struct.hash_tuning** %65, align 8, !dbg !2741, !tbaa !2030
	%67 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 2, !dbg !2742
	%68 = load float, float* %67, align 4, !dbg !2742, !tbaa !2048
	%69 = load i64, i64* %9, align 8, !dbg !2743, !tbaa !1497
	%70 = uitofp i64 %69 to float, !dbg !2744
	%71 = fmul float %68, %70, !dbg !2745
	%72 = fcmp ogt float %64, %71, !dbg !2746
	br i1 %72, label %73, label %164, !dbg !2747
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2031, metadata !635), !dbg !2748
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %66, i64 0, metadata !2036, metadata !635), !dbg !2750
	%74 = icmp eq %struct.hash_tuning* %66, @default_tuning, !dbg !2751
	br i1 %74, label %97, label %75, !dbg !2752
	tail call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, i64 0, metadata !2037, metadata !635), !dbg !2753
	%76 = fcmp ogt float %68, 0x3FB99999A0000000, !dbg !2754
	%77 = fcmp olt float %68, 0x3FECCCCCC0000000, !dbg !2755
	%78 = and i1 %76, %77, !dbg !2756
	br i1 %78, label %79, label %96, !dbg !2756
	%80 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 3, !dbg !2757
	%81 = load float, float* %80, align 4, !dbg !2757, !tbaa !2055
	%82 = fcmp ogt float %81, 0x3FF19999A0000000, !dbg !2758
	br i1 %82, label %83, label %96, !dbg !2759
	%84 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 0, !dbg !2760
	%85 = load float, float* %84, align 4, !dbg !2760, !tbaa !2059
	%86 = fcmp ult float %85, 0.000000e+00, !dbg !2761
	br i1 %86, label %96, label %87, !dbg !2762
	%88 = fadd float %85, 0x3FB99999A0000000, !dbg !2763
	%89 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 1, !dbg !2764
	%90 = load float, float* %89, align 4, !dbg !2764, !tbaa !2064
	%91 = fcmp olt float %88, %90, !dbg !2765
	%92 = fcmp ole float %90, 1.000000e+00, !dbg !2765
	%93 = and i1 %92, %91, !dbg !2765
	%94 = fcmp olt float %88, %68, !dbg !2766
	%95 = and i1 %94, %93, !dbg !2765
	br i1 %95, label %97, label %96, !dbg !2765
	store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %65, align 8, !dbg !2767, !tbaa !2030
	br label %97, !dbg !2768
	%98 = phi float [ %68, %73 ], [ %68, %87 ], [ 0x3FE99999A0000000, %96 ], !dbg !2769
	%99 = phi %struct.hash_tuning* [ @default_tuning, %73 ], [ %66, %87 ], [ @default_tuning, %96 ], !dbg !2770
	%100 = fmul float %98, %70, !dbg !2771
	%101 = fcmp ogt float %64, %100, !dbg !2772
	br i1 %101, label %102, label %164, !dbg !2773
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %99, i64 0, metadata !2640, metadata !635), !dbg !2774
	%103 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %99, i64 0, i32 4, !dbg !2775
	%104 = load i8, i8* %103, align 4, !dbg !2775, !tbaa !2080, !range !1318
	%105 = icmp eq i8 %104, 0, !dbg !2775
	%106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %99, i64 0, i32 3
	%107 = load float, float* %106, align 4, !tbaa !2055
	%108 = fmul float %70, %107
	%109 = fmul float %98, %108, !dbg !2776
	%110 = select i1 %105, float %109, float %108, !dbg !2777
	tail call void @llvm.dbg.value(metadata float %110, i64 0, metadata !2645, metadata !635), !dbg !2778
	%111 = fcmp ult float %110, 0x43F0000000000000, !dbg !2779
	br i1 %111, label %112, label %198, !dbg !2781
	%113 = fptoui float %110 to i64, !dbg !2782
	%114 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %113), !dbg !2784
	br i1 %114, label %115, label %198, !dbg !2785
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2656, metadata !635) #12, !dbg !2786
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !635) #12, !dbg !2789
	tail call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !2664, metadata !1299) #12, !dbg !2790
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1724, metadata !635) #12, !dbg !2791
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1729, metadata !635) #12, !dbg !2793
	%116 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !dbg !2794, !tbaa !1735
	%117 = load i64, i64* %9, align 8, !dbg !2795, !tbaa !1497
	%118 = tail call i64 %116(i8* nonnull %1, i64 %117) #12, !dbg !2796
	tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !1730, metadata !635) #12, !dbg !2797
	%119 = load i64, i64* %9, align 8, !dbg !2798, !tbaa !1497
	%120 = icmp ult i64 %118, %119, !dbg !2799
	br i1 %120, label %122, label %121, !dbg !2800
	tail call void @abort() #15, !dbg !2801
	unreachable, !dbg !2801
	%123 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !dbg !2802, !tbaa !1529
	%124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, !dbg !2803
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %124, i64 0, metadata !2665, metadata !635) #12, !dbg !2804
	%125 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %124, i64 0, i32 0, !dbg !2805
	%126 = load i8*, i8** %125, align 8, !dbg !2805, !tbaa !1538
	%127 = icmp eq i8* %126, null, !dbg !2806
	br i1 %127, label %164, label %128, !dbg !2807
	%129 = icmp eq i8* %126, %1, !dbg !2808
	br i1 %129, label %159, label %130, !dbg !2809
	%131 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2810
	%132 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %131, align 8, !dbg !2810, !tbaa !1761
	%133 = tail call zeroext i1 %132(i8* nonnull %1, i8* nonnull %126) #12, !dbg !2811
	br i1 %133, label %134, label %136, !dbg !2812
	%135 = load i8*, i8** %125, align 8, !tbaa !1538
	br label %159, !dbg !2812
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %124, i64 0, metadata !2666, metadata !635) #12, !dbg !2813
	%137 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 1, !dbg !2814
	%138 = load %struct.hash_entry*, %struct.hash_entry** %137, align 8, !dbg !2814, !tbaa !1546
	%139 = icmp eq %struct.hash_entry* %138, null, !dbg !2815
	br i1 %139, label %164, label %140, !dbg !2815
	br label %141, !dbg !2816
	%142 = phi %struct.hash_entry* [ %156, %154 ], [ %138, %140 ]
	%143 = phi %struct.hash_entry** [ %155, %154 ], [ %137, %140 ]
	%144 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %142, i64 0, i32 0, !dbg !2816
	%145 = load i8*, i8** %144, align 8, !dbg !2816, !tbaa !1538
	%146 = icmp eq i8* %145, %1, !dbg !2817
	br i1 %146, label %158, label %147, !dbg !2818
	%148 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %131, align 8, !dbg !2819, !tbaa !1761
	%149 = tail call zeroext i1 %148(i8* nonnull %1, i8* %145) #12, !dbg !2820
	%150 = load %struct.hash_entry*, %struct.hash_entry** %143, align 8, !tbaa !1546
	br i1 %149, label %151, label %154, !dbg !2821
	%152 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %150, i64 0, i32 0
	%153 = load i8*, i8** %152, align 8, !tbaa !1538
	br label %159, !dbg !2821
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %150, i64 0, metadata !2666, metadata !635) #12, !dbg !2813
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %150, i64 0, metadata !2666, metadata !635) #12, !dbg !2813
	%155 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %150, i64 0, i32 1, !dbg !2814
	%156 = load %struct.hash_entry*, %struct.hash_entry** %155, align 8, !dbg !2814, !tbaa !1546
	%157 = icmp eq %struct.hash_entry* %156, null, !dbg !2815
	br i1 %157, label %163, label %141, !dbg !2815, !llvm.loop !2727
	br label %159, !dbg !2822
	%160 = phi i8* [ %135, %134 ], [ %1, %128 ], [ %153, %151 ], [ %1, %158 ]
	%161 = icmp eq i8* %160, null, !dbg !2822
	br i1 %161, label %164, label %162, !dbg !2823
	tail call void @abort() #15, !dbg !2824
	unreachable, !dbg !2824
	br label %164, !dbg !2825
	%165 = phi %struct.hash_entry* [ %124, %159 ], [ %18, %97 ], [ %18, %61 ], [ %124, %122 ], [ %124, %136 ], [ %124, %163 ]
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %165, i64 0, metadata !2639, metadata !635), !dbg !2825
	%166 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %165, i64 0, i32 0, !dbg !2826
	%167 = load i8*, i8** %166, align 8, !dbg !2826, !tbaa !1538
	%168 = icmp eq i8* %167, null, !dbg !2827
	br i1 %168, label %193, label %169, !dbg !2828
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2594, metadata !635) #12, !dbg !2829
	%170 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2831
	%171 = load %struct.hash_entry*, %struct.hash_entry** %170, align 8, !dbg !2831, !tbaa !2162
	%172 = icmp eq %struct.hash_entry* %171, null, !dbg !2832
	br i1 %172, label %178, label %173, !dbg !2833
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %171, i64 0, metadata !2599, metadata !635) #12, !dbg !2834
	%174 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %171, i64 0, i32 1, !dbg !2835
	%175 = bitcast %struct.hash_entry** %174 to i64*, !dbg !2835
	%176 = load i64, i64* %175, align 8, !dbg !2835, !tbaa !1546
	%177 = bitcast %struct.hash_entry** %170 to i64*, !dbg !2836
	store i64 %176, i64* %177, align 8, !dbg !2836, !tbaa !2162
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %180, i64 0, metadata !2599, metadata !635) #12, !dbg !2834
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %180, i64 0, metadata !2646, metadata !635), !dbg !2837
	br label %182, !dbg !2838
	%179 = tail call noalias i8* @malloc(i64 16) #12, !dbg !2839
	%180 = bitcast i8* %179 to %struct.hash_entry*, !dbg !2839
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %180, i64 0, metadata !2599, metadata !635) #12, !dbg !2834
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %180, i64 0, metadata !2599, metadata !635) #12, !dbg !2834
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %180, i64 0, metadata !2646, metadata !635), !dbg !2837
	%181 = icmp eq i8* %179, null, !dbg !2840
	br i1 %181, label %198, label %182, !dbg !2838
	%183 = phi %struct.hash_entry* [ %171, %173 ], [ %180, %178 ]
	%184 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %183, i64 0, i32 0, !dbg !2842
	store i8* %1, i8** %184, align 8, !dbg !2843, !tbaa !1538
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %165, i64 0, metadata !2639, metadata !635), !dbg !2825
	%185 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %165, i64 0, i32 1, !dbg !2844
	%186 = bitcast %struct.hash_entry** %185 to i64*, !dbg !2844
	%187 = load i64, i64* %186, align 8, !dbg !2844, !tbaa !1546
	%188 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %183, i64 0, i32 1, !dbg !2845
	%189 = bitcast %struct.hash_entry** %188 to i64*, !dbg !2846
	store i64 %187, i64* %189, align 8, !dbg !2846, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %165, i64 0, metadata !2639, metadata !635), !dbg !2825
	store %struct.hash_entry* %183, %struct.hash_entry** %185, align 8, !dbg !2847, !tbaa !1546
	%190 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2848
	%191 = load i64, i64* %190, align 8, !dbg !2849, !tbaa !1512
	%192 = add i64 %191, 1, !dbg !2849
	store i64 %192, i64* %190, align 8, !dbg !2849, !tbaa !1512
	br label %198, !dbg !2850
	store i8* %1, i8** %166, align 8, !dbg !2851, !tbaa !1538
	%194 = bitcast i64* %62 to <2 x i64>*, !dbg !2852
	%195 = load <2 x i64>, <2 x i64>* %194, align 8, !dbg !2852, !tbaa !2432
	%196 = add <2 x i64> %195, <i64 1, i64 1>, !dbg !2852
	%197 = bitcast i64* %62 to <2 x i64>*, !dbg !2852
	store <2 x i64> %196, <2 x i64>* %197, align 8, !dbg !2852, !tbaa !2432
	br label %198, !dbg !2853
	%199 = phi i32 [ 1, %193 ], [ 0, %56 ], [ 0, %59 ], [ 1, %182 ], [ -1, %178 ], [ -1, %102 ], [ -1, %112 ]
	ret i32 %199, !dbg !2854
}
define i8* @hash_insert(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 !dbg !2855 {
	%3 = alloca i8*, align 8
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2859, metadata !635), !dbg !2863
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2860, metadata !635), !dbg !2864
	%4 = bitcast i8** %3 to i8*, !dbg !2865
	call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #12, !dbg !2865
	tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !2861, metadata !1109), !dbg !2866
	%5 = call i32 @hash_insert_if_absent(%struct.hash_table* %0, i8* %1, i8** nonnull %3), !dbg !2867
	call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2862, metadata !635), !dbg !2868
	%6 = icmp eq i32 %5, -1, !dbg !2869
	br i1 %6, label %11, label %7, !dbg !2870
	%8 = icmp eq i32 %5, 0, !dbg !2871
	%9 = load i8*, i8** %3, align 8, !dbg !2872
	call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !2861, metadata !635), !dbg !2866
	%10 = select i1 %8, i8* %9, i8* %1, !dbg !2874
	br label %11, !dbg !2874
	%12 = phi i8* [ null, %2 ], [ %10, %7 ], !dbg !2875
	call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #12, !dbg !2877
	ret i8* %12, !dbg !2878
}
define i8* @hash_delete(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 !dbg !2879 {
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2881, metadata !635), !dbg !2897
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2882, metadata !635), !dbg !2898
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2656, metadata !635) #12, !dbg !2899
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2662, metadata !635) #12, !dbg !2901
	tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !2664, metadata !1299) #12, !dbg !2902
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !1724, metadata !635) #12, !dbg !2903
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1729, metadata !635) #12, !dbg !2905
	%3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6, !dbg !2906
	%4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !dbg !2906, !tbaa !1735
	%5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2, !dbg !2907
	%6 = load i64, i64* %5, align 8, !dbg !2907, !tbaa !1497
	%7 = tail call i64 %4(i8* %1, i64 %6) #12, !dbg !2908
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1730, metadata !635) #12, !dbg !2909
	%8 = load i64, i64* %5, align 8, !dbg !2910, !tbaa !1497
	%9 = icmp ult i64 %7, %8, !dbg !2911
	br i1 %9, label %11, label %10, !dbg !2912
	tail call void @abort() #15, !dbg !2913
	unreachable, !dbg !2913
	%12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0, !dbg !2914
	%13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !dbg !2914, !tbaa !1529
	%14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, !dbg !2915
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !2665, metadata !635) #12, !dbg !2916
	%15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0, !dbg !2917
	%16 = load i8*, i8** %15, align 8, !dbg !2917, !tbaa !1538
	%17 = icmp eq i8* %16, null, !dbg !2918
	br i1 %17, label %155, label %18, !dbg !2919
	%19 = icmp eq i8* %16, %1, !dbg !2920
	br i1 %19, label %31, label %20, !dbg !2921
	%21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7, !dbg !2922
	%22 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !2922, !tbaa !1761
	%23 = tail call zeroext i1 %22(i8* %1, i8* nonnull %16) #12, !dbg !2923
	br i1 %23, label %24, label %26, !dbg !2924
	%25 = load i8*, i8** %15, align 8, !tbaa !1538
	br label %31, !dbg !2924
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !2666, metadata !635) #12, !dbg !2925
	%27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1, !dbg !2926
	%28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8, !dbg !2926, !tbaa !1546
	%29 = icmp eq %struct.hash_entry* %28, null, !dbg !2927
	br i1 %29, label %155, label %30, !dbg !2927
	br label %46, !dbg !2928
	%32 = phi i8* [ %25, %24 ], [ %1, %18 ], !dbg !2929
	tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2667, metadata !635) #12, !dbg !2930
	%33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1, !dbg !2931
	%34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8, !dbg !2931, !tbaa !1546
	%35 = icmp eq %struct.hash_entry* %34, null, !dbg !2932
	br i1 %35, label %45, label %36, !dbg !2933
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %34, i64 0, metadata !2670, metadata !635) #12, !dbg !2934
	%37 = bitcast %struct.hash_entry* %14 to i8*, !dbg !2935
	%38 = bitcast %struct.hash_entry* %34 to i8*, !dbg !2935
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false) #12, !dbg !2935, !tbaa.struct !2936
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2510, metadata !635) #12, !dbg !2937
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %34, i64 0, metadata !2515, metadata !635) #12, !dbg !2939
	%39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0, !dbg !2940
	store i8* null, i8** %39, align 8, !dbg !2941, !tbaa !1538
	%40 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2942
	%41 = bitcast %struct.hash_entry** %40 to i64*, !dbg !2942
	%42 = load i64, i64* %41, align 8, !dbg !2942, !tbaa !2162
	%43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 1, !dbg !2943
	%44 = bitcast %struct.hash_entry** %43 to i64*, !dbg !2944
	store i64 %42, i64* %44, align 8, !dbg !2944, !tbaa !1546
	store %struct.hash_entry* %34, %struct.hash_entry** %40, align 8, !dbg !2945, !tbaa !2162
	br label %75, !dbg !2946
	store i8* null, i8** %15, align 8, !dbg !2947, !tbaa !1538
	br label %75
	%47 = phi %struct.hash_entry* [ %73, %71 ], [ %28, %30 ]
	%48 = phi %struct.hash_entry** [ %72, %71 ], [ %27, %30 ]
	%49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i64 0, i32 0, !dbg !2928
	%50 = load i8*, i8** %49, align 8, !dbg !2928, !tbaa !1538
	%51 = icmp eq i8* %50, %1, !dbg !2949
	br i1 %51, label %59, label %52, !dbg !2950
	%53 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !dbg !2951, !tbaa !1761
	%54 = tail call zeroext i1 %53(i8* %1, i8* %50) #12, !dbg !2952
	%55 = load %struct.hash_entry*, %struct.hash_entry** %48, align 8, !tbaa !1546
	br i1 %54, label %56, label %71, !dbg !2953
	%57 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 0
	%58 = load i8*, i8** %57, align 8, !tbaa !1538
	br label %60, !dbg !2953
	br label %60, !dbg !2954
	%61 = phi i8* [ %58, %56 ], [ %1, %59 ], !dbg !2955
	%62 = phi %struct.hash_entry* [ %55, %56 ], [ %47, %59 ], !dbg !2956
	tail call void @llvm.dbg.value(metadata i8* %61, i64 0, metadata !2675, metadata !635) #12, !dbg !2954
	%63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 0, !dbg !2955
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !2681, metadata !635) #12, !dbg !2957
	%64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 1, !dbg !2958
	%65 = bitcast %struct.hash_entry** %64 to i64*, !dbg !2958
	%66 = load i64, i64* %65, align 8, !dbg !2958, !tbaa !1546
	%67 = bitcast %struct.hash_entry** %48 to i64*, !dbg !2959
	store i64 %66, i64* %67, align 8, !dbg !2959, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2510, metadata !635) #12, !dbg !2960
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %62, i64 0, metadata !2515, metadata !635) #12, !dbg !2962
	store i8* null, i8** %63, align 8, !dbg !2963, !tbaa !1538
	%68 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !2964
	%69 = bitcast %struct.hash_entry** %68 to i64*, !dbg !2964
	%70 = load i64, i64* %69, align 8, !dbg !2964, !tbaa !2162
	store i64 %70, i64* %65, align 8, !dbg !2965, !tbaa !1546
	store %struct.hash_entry* %62, %struct.hash_entry** %68, align 8, !dbg !2966, !tbaa !2162
	br label %75, !dbg !2967
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %55, i64 0, metadata !2666, metadata !635) #12, !dbg !2925
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %55, i64 0, metadata !2666, metadata !635) #12, !dbg !2925
	%72 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 1, !dbg !2926
	%73 = load %struct.hash_entry*, %struct.hash_entry** %72, align 8, !dbg !2926, !tbaa !1546
	%74 = icmp eq %struct.hash_entry* %73, null, !dbg !2927
	br i1 %74, label %154, label %46, !dbg !2927, !llvm.loop !2727
	%76 = phi i8* [ %32, %36 ], [ %32, %45 ], [ %61, %60 ]
	tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !2883, metadata !635), !dbg !2968
	%77 = icmp eq i8* %76, null, !dbg !2969
	br i1 %77, label %155, label %78, !dbg !2971
	%79 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4, !dbg !2972
	%80 = load i64, i64* %79, align 8, !dbg !2973, !tbaa !1512
	%81 = add i64 %80, -1, !dbg !2973
	store i64 %81, i64* %79, align 8, !dbg !2973, !tbaa !1512
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %14, i64 0, metadata !2884, metadata !635), !dbg !2974
	%82 = load i8*, i8** %15, align 8, !dbg !2975, !tbaa !1538
	%83 = icmp eq i8* %82, null, !dbg !2976
	br i1 %83, label %84, label %155, !dbg !2977
	%85 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3, !dbg !2978
	%86 = load i64, i64* %85, align 8, !dbg !2979, !tbaa !1505
	%87 = add i64 %86, -1, !dbg !2979
	store i64 %87, i64* %85, align 8, !dbg !2979, !tbaa !1505
	%88 = uitofp i64 %87 to float, !dbg !2980
	%89 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5, !dbg !2981
	%90 = load %struct.hash_tuning*, %struct.hash_tuning** %89, align 8, !dbg !2981, !tbaa !2030
	%91 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 0, !dbg !2982
	%92 = load float, float* %91, align 4, !dbg !2982, !tbaa !2059
	%93 = load i64, i64* %5, align 8, !dbg !2983, !tbaa !1497
	%94 = uitofp i64 %93 to float, !dbg !2984
	%95 = fmul float %92, %94, !dbg !2985
	%96 = fcmp olt float %88, %95, !dbg !2986
	br i1 %96, label %97, label %155, !dbg !2987
	tail call void @llvm.dbg.value(metadata %struct.hash_table* %0, i64 0, metadata !2031, metadata !635), !dbg !2988
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %90, i64 0, metadata !2036, metadata !635), !dbg !2990
	%98 = icmp eq %struct.hash_tuning* %90, @default_tuning, !dbg !2991
	br i1 %98, label %121, label %99, !dbg !2992
	tail call void @llvm.dbg.value(metadata float 0x3FB99999A0000000, i64 0, metadata !2037, metadata !635), !dbg !2993
	%100 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 2, !dbg !2994
	%101 = load float, float* %100, align 4, !dbg !2994, !tbaa !2048
	%102 = fcmp ogt float %101, 0x3FB99999A0000000, !dbg !2995
	%103 = fcmp olt float %101, 0x3FECCCCCC0000000, !dbg !2996
	%104 = and i1 %102, %103, !dbg !2997
	br i1 %104, label %105, label %120, !dbg !2997
	%106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 3, !dbg !2998
	%107 = load float, float* %106, align 4, !dbg !2998, !tbaa !2055
	%108 = fcmp ule float %107, 0x3FF19999A0000000, !dbg !2999
	%109 = fcmp ult float %92, 0.000000e+00, !dbg !3000
	%110 = or i1 %109, %108, !dbg !3001
	br i1 %110, label %120, label %111, !dbg !3001
	%112 = fadd float %92, 0x3FB99999A0000000, !dbg !3002
	%113 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 1, !dbg !3003
	%114 = load float, float* %113, align 4, !dbg !3003, !tbaa !2064
	%115 = fcmp olt float %112, %114, !dbg !3004
	%116 = fcmp ole float %114, 1.000000e+00, !dbg !3004
	%117 = and i1 %116, %115, !dbg !3004
	%118 = fcmp olt float %112, %101, !dbg !3005
	%119 = and i1 %118, %117, !dbg !3004
	br i1 %119, label %121, label %120, !dbg !3004
	store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %89, align 8, !dbg !3006, !tbaa !2030
	br label %121, !dbg !3007
	%122 = phi float [ %92, %97 ], [ %92, %111 ], [ 0.000000e+00, %120 ], !dbg !3008
	%123 = phi %struct.hash_tuning* [ @default_tuning, %97 ], [ %90, %111 ], [ @default_tuning, %120 ], !dbg !3009
	%124 = fmul float %122, %94, !dbg !3010
	%125 = fcmp olt float %88, %124, !dbg !3011
	br i1 %125, label %126, label %155, !dbg !3012
	tail call void @llvm.dbg.value(metadata %struct.hash_tuning* %123, i64 0, metadata !2885, metadata !635), !dbg !3013
	%127 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 4, !dbg !3014
	%128 = load i8, i8* %127, align 4, !dbg !3014, !tbaa !2080, !range !1318
	%129 = icmp eq i8 %128, 0, !dbg !3014
	%130 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 1
	%131 = load float, float* %130, align 4, !tbaa !2064
	%132 = fmul float %94, %131
	br i1 %129, label %133, label %137, !dbg !3015
	%134 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 2, !dbg !3016
	%135 = load float, float* %134, align 4, !dbg !3016, !tbaa !2048
	%136 = fmul float %132, %135, !dbg !3017
	br label %137, !dbg !3018
	%138 = phi float [ %136, %133 ], [ %132, %126 ], !dbg !3020
	%139 = fptoui float %138 to i64, !dbg !3022
	tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !2892, metadata !635), !dbg !3023
	%140 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %139), !dbg !3024
	br i1 %140, label %155, label %141, !dbg !3025
	%142 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9, !dbg !3026
	%143 = load %struct.hash_entry*, %struct.hash_entry** %142, align 8, !dbg !3026, !tbaa !2162
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %143, i64 0, metadata !2893, metadata !635), !dbg !3027
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %143, i64 0, metadata !2893, metadata !635), !dbg !3027
	%144 = icmp eq %struct.hash_entry* %143, null, !dbg !3028
	br i1 %144, label %153, label %145, !dbg !3028
	br label %146
	%147 = phi %struct.hash_entry* [ %150, %146 ], [ %143, %145 ]
	%148 = bitcast %struct.hash_entry* %147 to i8*
	%149 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %147, i64 0, i32 1, !dbg !3030
	%150 = load %struct.hash_entry*, %struct.hash_entry** %149, align 8, !dbg !3030, !tbaa !1546
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %150, i64 0, metadata !2896, metadata !635), !dbg !3032
	tail call void @free(i8* %148) #12, !dbg !3033
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %150, i64 0, metadata !2893, metadata !635), !dbg !3027
	tail call void @llvm.dbg.value(metadata %struct.hash_entry* %150, i64 0, metadata !2893, metadata !635), !dbg !3027
	%151 = icmp eq %struct.hash_entry* %150, null, !dbg !3028
	br i1 %151, label %152, label %146, !dbg !3028, !llvm.loop !3034
	br label %153, !dbg !3037
	store %struct.hash_entry* null, %struct.hash_entry** %142, align 8, !dbg !3037, !tbaa !2162
	br label %155, !dbg !3038
	br label %155, !dbg !3039
	%156 = phi i8* [ null, %75 ], [ %76, %137 ], [ %76, %153 ], [ %76, %78 ], [ %76, %84 ], [ %76, %121 ], [ null, %11 ], [ null, %26 ], [ null, %154 ]
	ret i8* %156, !dbg !3039
}
define i64 @triple_hash(i8* nocapture readonly, i64) #10 !dbg !3040 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3043, metadata !635), !dbg !3054
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3044, metadata !635), !dbg !3055
	%3 = bitcast i8* %0 to i8**, !dbg !3056
	%4 = load i8*, i8** %3, align 8, !dbg !3056, !tbaa !1400
	%5 = tail call i64 @hash_pjw(i8* %4, i64 %1) #14, !dbg !3057
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3053, metadata !635), !dbg !3058
	%6 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3059
	%7 = bitcast i8* %6 to i64*, !dbg !3059
	%8 = load i64, i64* %7, align 8, !dbg !3059, !tbaa !1406
	%9 = xor i64 %8, %5, !dbg !3060
	%10 = urem i64 %9, %1, !dbg !3061
	ret i64 %10, !dbg !3062
}
define i64 @triple_hash_no_name(i8* nocapture readonly, i64) local_unnamed_addr #10 !dbg !3063 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3065, metadata !635), !dbg !3068
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3066, metadata !635), !dbg !3069
	%3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3070
	%4 = bitcast i8* %3 to i64*, !dbg !3070
	%5 = load i64, i64* %4, align 8, !dbg !3070, !tbaa !1406
	%6 = urem i64 %5, %1, !dbg !3071
	ret i64 %6, !dbg !3072
}
define zeroext i1 @triple_compare(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 !dbg !3073 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3075, metadata !635), !dbg !3079
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3076, metadata !635), !dbg !3080
	%3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3081
	%4 = bitcast i8* %3 to i64*, !dbg !3081
	%5 = load i64, i64* %4, align 8, !dbg !3081, !tbaa !1406
	%6 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3081
	%7 = bitcast i8* %6 to i64*, !dbg !3081
	%8 = load i64, i64* %7, align 8, !dbg !3081, !tbaa !1406
	%9 = icmp eq i64 %5, %8, !dbg !3081
	br i1 %9, label %10, label %24, !dbg !3081
	%11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !3082
	%12 = bitcast i8* %11 to i64*, !dbg !3082
	%13 = load i64, i64* %12, align 8, !dbg !3082, !tbaa !1411
	%14 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !3082
	%15 = bitcast i8* %14 to i64*, !dbg !3082
	%16 = load i64, i64* %15, align 8, !dbg !3082, !tbaa !1411
	%17 = icmp eq i64 %13, %16, !dbg !3082
	br i1 %17, label %18, label %24, !dbg !3084
	%19 = bitcast i8* %0 to i8**, !dbg !3085
	%20 = load i8*, i8** %19, align 8, !dbg !3085, !tbaa !1400
	%21 = bitcast i8* %1 to i8**, !dbg !3087
	%22 = load i8*, i8** %21, align 8, !dbg !3087, !tbaa !1400
	%23 = tail call zeroext i1 @same_name(i8* %20, i8* %22) #12, !dbg !3088
	br label %24
	%25 = phi i1 [ false, %10 ], [ false, %2 ], [ %23, %18 ]
	ret i1 %25, !dbg !3089
}
define zeroext i1 @triple_compare_ino_str(i8* nocapture readonly, i8* nocapture readonly) #10 !dbg !3091 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3093, metadata !635), !dbg !3100
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3094, metadata !635), !dbg !3101
	%3 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3102
	%4 = bitcast i8* %3 to i64*, !dbg !3102
	%5 = load i64, i64* %4, align 8, !dbg !3102, !tbaa !1406
	%6 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3102
	%7 = bitcast i8* %6 to i64*, !dbg !3102
	%8 = load i64, i64* %7, align 8, !dbg !3102, !tbaa !1406
	%9 = icmp eq i64 %5, %8, !dbg !3102
	br i1 %9, label %10, label %25, !dbg !3102
	%11 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !3103
	%12 = bitcast i8* %11 to i64*, !dbg !3103
	%13 = load i64, i64* %12, align 8, !dbg !3103, !tbaa !1411
	%14 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !3103
	%15 = bitcast i8* %14 to i64*, !dbg !3103
	%16 = load i64, i64* %15, align 8, !dbg !3103, !tbaa !1411
	%17 = icmp eq i64 %13, %16, !dbg !3103
	br i1 %17, label %18, label %25, !dbg !3105
	%19 = bitcast i8* %0 to i8**, !dbg !3106
	%20 = load i8*, i8** %19, align 8, !dbg !3106, !tbaa !1400
	%21 = bitcast i8* %1 to i8**, !dbg !3106
	%22 = load i8*, i8** %21, align 8, !dbg !3106, !tbaa !1400
	%23 = tail call i32 @strcmp(i8* %20, i8* %22) #12, !dbg !3106
	%24 = icmp eq i32 %23, 0, !dbg !3108
	br label %25
	%26 = phi i1 [ false, %10 ], [ false, %2 ], [ %24, %18 ]
	ret i1 %26, !dbg !3110
}
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4
define void @triple_free(i8* nocapture) #6 !dbg !3112 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3114, metadata !635), !dbg !3117
	%2 = bitcast i8* %0 to i8**, !dbg !3118
	%3 = load i8*, i8** %2, align 8, !dbg !3118, !tbaa !1400
	tail call void @free(i8* %3) #12, !dbg !3119
	tail call void @free(i8* %0) #12, !dbg !3120
	ret void, !dbg !3121
}
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !3122 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3124, metadata !635), !dbg !3127
	%2 = icmp eq i8* %0, null, !dbg !3128
	br i1 %2, label %3, label %6, !dbg !3130
	%4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3131, !tbaa !643
	%5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !3133
	tail call void @abort() #15, !dbg !3134
	unreachable, !dbg !3134
	%7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !3135
	tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3125, metadata !635), !dbg !3136
	%8 = icmp ne i8* %7, null, !dbg !3137
	%9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3138
	%10 = select i1 %8, i8* %9, i8* %0, !dbg !3140
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3126, metadata !635), !dbg !3141
	%11 = ptrtoint i8* %10 to i64, !dbg !3142
	%12 = ptrtoint i8* %0 to i64, !dbg !3142
	%13 = sub i64 %11, %12, !dbg !3142
	%14 = icmp sgt i64 %13, 6, !dbg !3144
	br i1 %14, label %15, label %24, !dbg !3145
	%16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !3146
	%17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.74, i64 0, i64 0), i64 7) #14, !dbg !3146
	%18 = icmp eq i32 %17, 0, !dbg !3148
	br i1 %18, label %19, label %24, !dbg !3149
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3124, metadata !635), !dbg !3127
	%20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i64 3) #14, !dbg !3150
	%21 = icmp eq i32 %20, 0, !dbg !3153
	br i1 %21, label %22, label %24, !dbg !3154
	%23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !3155
	tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3124, metadata !635), !dbg !3127
	store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !3157, !tbaa !643
	br label %24, !dbg !3158
	%25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
	tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !3124, metadata !635), !dbg !3127
	store i8* %25, i8** @program_name, align 8, !dbg !3159, !tbaa !643
	store i8* %25, i8** @program_invocation_name, align 8, !dbg !3160, !tbaa !643
	ret void, !dbg !3161
}
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #12
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !3162 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3167, metadata !635), !dbg !3170
	%2 = tail call i32* @__errno_location() #1, !dbg !3171
	%3 = load i32, i32* %2, align 4, !dbg !3171, !tbaa !736
	tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3168, metadata !635), !dbg !3172
	%4 = icmp ne %struct.quoting_options* %0, null, !dbg !3173
	%5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3174
	%6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !3174
	%7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !3176
	%8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !3176
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !3169, metadata !635), !dbg !3177
	store i32 %3, i32* %2, align 4, !dbg !3178, !tbaa !736
	ret %struct.quoting_options* %8, !dbg !3179
}
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !3180 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3186, metadata !635), !dbg !3187
	%2 = icmp ne %struct.quoting_options* %0, null, !dbg !3188
	%3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3188
	%4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3189
	%5 = load i32, i32* %4, align 8, !dbg !3189, !tbaa !3191
	ret i32 %5, !dbg !3193
}
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !3194 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3198, metadata !635), !dbg !3200
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3199, metadata !635), !dbg !3201
	%3 = icmp ne %struct.quoting_options* %0, null, !dbg !3202
	%4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3202
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3203
	store i32 %1, i32* %5, align 8, !dbg !3205, !tbaa !3191
	ret void, !dbg !3206
}
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !3207 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3211, metadata !635), !dbg !3219
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3212, metadata !635), !dbg !3220
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3213, metadata !635), !dbg !3221
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3214, metadata !635), !dbg !3222
	%4 = icmp ne %struct.quoting_options* %0, null, !dbg !3223
	%5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3223
	%6 = lshr i8 %1, 5, !dbg !3224
	%7 = zext i8 %6 to i64, !dbg !3224
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3226
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3215, metadata !635), !dbg !3227
	%9 = and i8 %1, 31, !dbg !3228
	%10 = zext i8 %9 to i32, !dbg !3229
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3217, metadata !635), !dbg !3230
	%11 = load i32, i32* %8, align 4, !dbg !3231, !tbaa !736
	%12 = lshr i32 %11, %10, !dbg !3232
	%13 = and i32 %12, 1, !dbg !3233
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3218, metadata !635), !dbg !3234
	%14 = and i32 %2, 1, !dbg !3235
	%15 = xor i32 %13, %14, !dbg !3236
	%16 = shl i32 %15, %10, !dbg !3237
	%17 = xor i32 %16, %11, !dbg !3238
	store i32 %17, i32* %8, align 4, !dbg !3238, !tbaa !736
	ret i32 %13, !dbg !3239
}
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !3240 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3244, metadata !635), !dbg !3247
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3245, metadata !635), !dbg !3248
	%3 = icmp eq %struct.quoting_options* %0, null, !dbg !3249
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3244, metadata !635), !dbg !3247
	%4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3251
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3244, metadata !635), !dbg !3247
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3252
	%6 = load i32, i32* %5, align 4, !dbg !3252, !tbaa !3253
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3246, metadata !635), !dbg !3254
	store i32 %1, i32* %5, align 4, !dbg !3255, !tbaa !3253
	ret i32 %6, !dbg !3256
}
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !3257 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3261, metadata !635), !dbg !3264
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3262, metadata !635), !dbg !3265
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3263, metadata !635), !dbg !3266
	%4 = icmp eq %struct.quoting_options* %0, null, !dbg !3267
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3261, metadata !635), !dbg !3264
	%5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3269
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3261, metadata !635), !dbg !3264
	%6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3270
	store i32 10, i32* %6, align 8, !dbg !3271, !tbaa !3191
	%7 = icmp ne i8* %1, null, !dbg !3272
	%8 = icmp ne i8* %2, null, !dbg !3274
	%9 = and i1 %7, %8, !dbg !3276
	br i1 %9, label %11, label %10, !dbg !3276
	tail call void @abort() #15, !dbg !3277
	unreachable, !dbg !3277
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3278
	store i8* %1, i8** %12, align 8, !dbg !3279, !tbaa !3280
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3281
	store i8* %2, i8** %13, align 8, !dbg !3282, !tbaa !3283
	ret void, !dbg !3284
}
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !3285 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3289, metadata !635), !dbg !3297
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3290, metadata !635), !dbg !3298
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3291, metadata !635), !dbg !3299
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3292, metadata !635), !dbg !3300
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3293, metadata !635), !dbg !3301
	%6 = icmp ne %struct.quoting_options* %4, null, !dbg !3302
	%7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !3302
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !3294, metadata !635), !dbg !3303
	%8 = tail call i32* @__errno_location() #1, !dbg !3304
	%9 = load i32, i32* %8, align 4, !dbg !3304, !tbaa !736
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3295, metadata !635), !dbg !3305
	%10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3306
	%11 = load i32, i32* %10, align 8, !dbg !3306, !tbaa !3191
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3307
	%13 = load i32, i32* %12, align 4, !dbg !3307, !tbaa !3253
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3308
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3309
	%16 = load i8*, i8** %15, align 8, !dbg !3309, !tbaa !3280
	%17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3310
	%18 = load i8*, i8** %17, align 8, !dbg !3310, !tbaa !3283
	%19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !3311
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3296, metadata !635), !dbg !3312
	store i32 %9, i32* %8, align 4, !dbg !3313, !tbaa !736
	ret i64 %19, !dbg !3314
}
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !3315 {
	%10 = alloca i64, align 8
	%11 = bitcast i64* %10 to %struct.__mbstate_t*
	%12 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3321, metadata !635), !dbg !3384
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3322, metadata !635), !dbg !3385
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3323, metadata !635), !dbg !3386
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3324, metadata !635), !dbg !3387
	tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3325, metadata !635), !dbg !3388
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3326, metadata !635), !dbg !3389
	tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !3327, metadata !635), !dbg !3390
	tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3328, metadata !635), !dbg !3391
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3329, metadata !635), !dbg !3392
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3331, metadata !635), !dbg !3393
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3332, metadata !635), !dbg !3394
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3333, metadata !635), !dbg !3395
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3334, metadata !635), !dbg !3396
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3335, metadata !635), !dbg !3397
	%13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !3398
	%14 = icmp eq i64 %13, 1, !dbg !3399
	%15 = lshr i32 %5, 1, !dbg !3400
	%16 = trunc i32 %15 to i8, !dbg !3400
	%17 = and i8 %16, 1, !dbg !3400
	tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3337, metadata !635), !dbg !3400
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3338, metadata !635), !dbg !3401
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3339, metadata !635), !dbg !3402
	tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3340, metadata !635), !dbg !3403
	%18 = bitcast i64* %10 to i8*
	%19 = bitcast i32* %12 to i8*
	%20 = icmp eq i32* %6, null
	%21 = icmp ne i32* %6, null
	%22 = and i32 %5, 1
	%23 = icmp eq i32 %22, 0
	%24 = and i32 %5, 4
	%25 = icmp eq i32 %24, 0
	%26 = getelementptr inbounds i8, i8* %2, i64 1
	br label %27, !dbg !3404
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
	call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3322, metadata !635), !dbg !3385
	call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !3340, metadata !635), !dbg !3403
	call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !3339, metadata !635), !dbg !3402
	call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3337, metadata !635), !dbg !3400
	call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3324, metadata !635), !dbg !3387
	call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !3335, metadata !635), !dbg !3397
	call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3334, metadata !635), !dbg !3396
	call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !3333, metadata !635), !dbg !3395
	call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !3332, metadata !635), !dbg !3394
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !3329, metadata !635), !dbg !3392
	call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3328, metadata !635), !dbg !3391
	call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !3325, metadata !635), !dbg !3388
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
	], !dbg !3405
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3325, metadata !635), !dbg !3388
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3337, metadata !635), !dbg !3400
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3337, metadata !635), !dbg !3400
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3325, metadata !635), !dbg !3388
	br label %95, !dbg !3406
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3337, metadata !635), !dbg !3400
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3325, metadata !635), !dbg !3388
	%43 = and i8 %36, 1, !dbg !3408
	%44 = icmp eq i8 %43, 0, !dbg !3408
	br i1 %44, label %45, label %95, !dbg !3406
	%46 = icmp eq i64 %40, 0, !dbg !3410
	br i1 %46, label %95, label %47, !dbg !3414
	store i8 34, i8* %0, align 1, !dbg !3416, !tbaa !800
	br label %95, !dbg !3416
	%49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.86, i64 0, i64 0), i32 %28), !dbg !3418
	call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3328, metadata !635), !dbg !3391
	%50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), i32 %28), !dbg !3422
	call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3329, metadata !635), !dbg !3392
	br label %51, !dbg !3423
	%52 = phi i8* [ %49, %48 ], [ %29, %27 ]
	%53 = phi i8* [ %50, %48 ], [ %30, %27 ]
	call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3329, metadata !635), !dbg !3392
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3328, metadata !635), !dbg !3391
	%54 = and i8 %36, 1, !dbg !3424
	%55 = icmp eq i8 %54, 0, !dbg !3424
	br i1 %55, label %56, label %73, !dbg !3426
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3333, metadata !635), !dbg !3395
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3331, metadata !635), !dbg !3393
	%57 = load i8, i8* %52, align 1, !dbg !3427, !tbaa !800
	%58 = icmp eq i8 %57, 0, !dbg !3431
	br i1 %58, label %73, label %59, !dbg !3431
	br label %60, !dbg !3433
	%61 = phi i8 [ %70, %67 ], [ %57, %59 ]
	%62 = phi i8* [ %69, %67 ], [ %52, %59 ]
	%63 = phi i64 [ %68, %67 ], [ 0, %59 ]
	%64 = icmp ult i64 %63, %40, !dbg !3433
	br i1 %64, label %65, label %67, !dbg !3437
	%66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3439
	store i8 %61, i8* %66, align 1, !dbg !3439, !tbaa !800
	br label %67, !dbg !3439
	%68 = add i64 %63, 1, !dbg !3441
	call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3331, metadata !635), !dbg !3393
	%69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3443
	call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3333, metadata !635), !dbg !3395
	call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3333, metadata !635), !dbg !3395
	call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3331, metadata !635), !dbg !3393
	%70 = load i8, i8* %69, align 1, !dbg !3427, !tbaa !800
	%71 = icmp eq i8 %70, 0, !dbg !3431
	br i1 %71, label %72, label %60, !dbg !3431, !llvm.loop !3445
	br label %73, !dbg !3393
	%74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
	call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3335, metadata !635), !dbg !3397
	call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3333, metadata !635), !dbg !3395
	%75 = call i64 @strlen(i8* %53) #14, !dbg !3448
	call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !3334, metadata !635), !dbg !3396
	br label %95, !dbg !3449
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3335, metadata !635), !dbg !3397
	br label %77, !dbg !3450
	%78 = phi i8 [ %34, %27 ], [ 1, %76 ]
	call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !3335, metadata !635), !dbg !3397
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3337, metadata !635), !dbg !3400
	br label %79, !dbg !3451
	%80 = phi i8 [ %34, %27 ], [ %78, %77 ]
	%81 = phi i8 [ %36, %27 ], [ 1, %77 ]
	call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !3337, metadata !635), !dbg !3400
	call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !3335, metadata !635), !dbg !3397
	%82 = and i8 %81, 1, !dbg !3452
	%83 = icmp eq i8 %82, 0, !dbg !3452
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3335, metadata !635), !dbg !3397
	%84 = select i1 %83, i8 1, i8 %80, !dbg !3454
	br label %85, !dbg !3454
	%86 = phi i8 [ %34, %27 ], [ %84, %79 ]
	%87 = phi i8 [ %36, %27 ], [ %81, %79 ]
	call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !3337, metadata !635), !dbg !3400
	call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !3335, metadata !635), !dbg !3397
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3325, metadata !635), !dbg !3388
	%88 = and i8 %87, 1, !dbg !3455
	%89 = icmp eq i8 %88, 0, !dbg !3455
	br i1 %89, label %90, label %95, !dbg !3457
	%91 = icmp eq i64 %40, 0, !dbg !3458
	br i1 %91, label %95, label %92, !dbg !3462
	store i8 39, i8* %0, align 1, !dbg !3464, !tbaa !800
	br label %95, !dbg !3464
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3337, metadata !635), !dbg !3400
	br label %95, !dbg !3466
	call void @abort() #15, !dbg !3467
	unreachable, !dbg !3467
	%96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
	%97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
	%98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
	%99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
	%100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), %41 ]
	%101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
	%102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
	%103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
	call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !3337, metadata !635), !dbg !3400
	call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !3335, metadata !635), !dbg !3397
	call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !3334, metadata !635), !dbg !3396
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3333, metadata !635), !dbg !3395
	call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3329, metadata !635), !dbg !3392
	call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3328, metadata !635), !dbg !3391
	call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !3325, metadata !635), !dbg !3388
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3330, metadata !635), !dbg !3468
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
	br label %123, !dbg !3469
	%124 = phi i64 [ 0, %95 ], [ %596, %587 ]
	%125 = phi i64 [ %99, %95 ], [ %589, %587 ]
	%126 = phi i64 [ %31, %95 ], [ %590, %587 ]
	%127 = phi i64 [ %35, %95 ], [ %591, %587 ]
	%128 = phi i8 [ %37, %95 ], [ %592, %587 ]
	%129 = phi i8 [ %38, %95 ], [ %593, %587 ]
	%130 = phi i8 [ %39, %95 ], [ %594, %587 ]
	%131 = phi i64 [ %40, %95 ], [ %595, %587 ]
	call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3322, metadata !635), !dbg !3385
	call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !3340, metadata !635), !dbg !3403
	call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !3339, metadata !635), !dbg !3402
	call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !3324, metadata !635), !dbg !3387
	call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !3332, metadata !635), !dbg !3394
	call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !3330, metadata !635), !dbg !3468
	%132 = icmp eq i64 %127, -1, !dbg !3470
	br i1 %132, label %135, label %133, !dbg !3472
	%134 = icmp eq i64 %124, %127, !dbg !3473
	br i1 %134, label %597, label %139, !dbg !3475
	%136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3477
	%137 = load i8, i8* %136, align 1, !dbg !3477, !tbaa !800
	%138 = icmp eq i8 %137, 0, !dbg !3479
	br i1 %138, label %597, label %139, !dbg !3475
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3346, metadata !635), !dbg !3480
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3347, metadata !635), !dbg !3481
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3348, metadata !635), !dbg !3482
	br i1 %109, label %140, label %155, !dbg !3483
	%141 = add i64 %124, %101, !dbg !3485
	%142 = and i1 %110, %132, !dbg !3487
	br i1 %142, label %143, label %145, !dbg !3487
	%144 = call i64 @strlen(i8* %2) #14, !dbg !3488
	call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !3324, metadata !635), !dbg !3387
	br label %145, !dbg !3489
	%146 = phi i64 [ %144, %143 ], [ %127, %140 ]
	call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !3324, metadata !635), !dbg !3387
	%147 = icmp ugt i64 %141, %146, !dbg !3491
	br i1 %147, label %155, label %148, !dbg !3493
	%149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3494
	%150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14, !dbg !3495
	%151 = icmp ne i32 %150, 0, !dbg !3496
	%152 = or i1 %151, %112, !dbg !3496
	%153 = xor i1 %151, true, !dbg !3496
	%154 = zext i1 %153 to i8, !dbg !3496
	br i1 %152, label %155, label %644, !dbg !3496
	%156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
	%157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
	call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3346, metadata !635), !dbg !3480
	call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !3324, metadata !635), !dbg !3387
	%158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3498
	%159 = load i8, i8* %158, align 1, !dbg !3498, !tbaa !800
	call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3341, metadata !635), !dbg !3499
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
	], !dbg !3500
	br i1 %105, label %161, label %209, !dbg !3501
	br i1 %112, label %162, label %644, !dbg !3502
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3347, metadata !635), !dbg !3481
	%163 = and i8 %128, 1, !dbg !3507
	%164 = icmp eq i8 %163, 0, !dbg !3507
	%165 = and i1 %114, %164, !dbg !3510
	br i1 %165, label %166, label %182, !dbg !3510
	%167 = icmp ult i64 %125, %131, !dbg !3512
	br i1 %167, label %168, label %170, !dbg !3517
	%169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3519
	store i8 39, i8* %169, align 1, !dbg !3519, !tbaa !800
	br label %170, !dbg !3519
	%171 = add i64 %125, 1, !dbg !3521
	call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !3331, metadata !635), !dbg !3393
	%172 = icmp ult i64 %171, %131, !dbg !3523
	br i1 %172, label %173, label %175, !dbg !3527
	%174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3529
	store i8 36, i8* %174, align 1, !dbg !3529, !tbaa !800
	br label %175, !dbg !3529
	%176 = add i64 %125, 2, !dbg !3531
	call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !3331, metadata !635), !dbg !3393
	%177 = icmp ult i64 %176, %131, !dbg !3533
	br i1 %177, label %178, label %180, !dbg !3537
	%179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3539
	store i8 39, i8* %179, align 1, !dbg !3539, !tbaa !800
	br label %180, !dbg !3539
	%181 = add i64 %125, 3, !dbg !3541
	call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3338, metadata !635), !dbg !3401
	br label %182, !dbg !3543
	%183 = phi i64 [ %181, %180 ], [ %125, %162 ]
	%184 = phi i8 [ 1, %180 ], [ %128, %162 ]
	call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3331, metadata !635), !dbg !3393
	%185 = icmp ult i64 %183, %131, !dbg !3545
	br i1 %185, label %186, label %188, !dbg !3549
	%187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3551
	store i8 92, i8* %187, align 1, !dbg !3551, !tbaa !800
	br label %188, !dbg !3551
	%189 = add i64 %183, 1, !dbg !3553
	call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !3331, metadata !635), !dbg !3393
	br i1 %106, label %190, label %476, !dbg !3555
	%191 = add i64 %124, 1, !dbg !3557
	%192 = icmp ult i64 %191, %156, !dbg !3559
	br i1 %192, label %193, label %476, !dbg !3560
	%194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3561
	%195 = load i8, i8* %194, align 1, !dbg !3561, !tbaa !800
	%196 = add i8 %195, -48, !dbg !3563
	%197 = icmp ult i8 %196, 10, !dbg !3563
	br i1 %197, label %198, label %476, !dbg !3563
	%199 = icmp ult i64 %189, %131, !dbg !3564
	br i1 %199, label %200, label %202, !dbg !3569
	%201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3571
	store i8 48, i8* %201, align 1, !dbg !3571, !tbaa !800
	br label %202, !dbg !3571
	%203 = add i64 %183, 2, !dbg !3573
	call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !3331, metadata !635), !dbg !3393
	%204 = icmp ult i64 %203, %131, !dbg !3575
	br i1 %204, label %205, label %207, !dbg !3579
	%206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3581
	store i8 48, i8* %206, align 1, !dbg !3581, !tbaa !800
	br label %207, !dbg !3581
	%208 = add i64 %183, 3, !dbg !3583
	call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !3331, metadata !635), !dbg !3393
	br label %476, !dbg !3585
	br i1 %23, label %476, label %587, !dbg !3586
	switch i32 %96, label %476 [
		i32 2, label %211
		i32 5, label %212
	], !dbg !3587
	br i1 %112, label %476, label %644, !dbg !3588
	br i1 %25, label %476, label %213, !dbg !3590
	%214 = add i64 %124, 2, !dbg !3592
	%215 = icmp ult i64 %214, %156, !dbg !3594
	br i1 %215, label %216, label %476, !dbg !3595
	%217 = add i64 %124, 1, !dbg !3596
	%218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3598
	%219 = load i8, i8* %218, align 1, !dbg !3598, !tbaa !800
	%220 = icmp eq i8 %219, 63, !dbg !3599
	br i1 %220, label %221, label %476, !dbg !3600
	%222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3602
	%223 = load i8, i8* %222, align 1, !dbg !3602, !tbaa !800
	%224 = sext i8 %223 to i32, !dbg !3602
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
	], !dbg !3603
	br i1 %112, label %226, label %644, !dbg !3604
	call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !3341, metadata !635), !dbg !3499
	call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !3330, metadata !635), !dbg !3468
	%227 = icmp ult i64 %125, %131, !dbg !3606
	br i1 %227, label %228, label %230, !dbg !3610
	%229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3612
	store i8 63, i8* %229, align 1, !dbg !3612, !tbaa !800
	br label %230, !dbg !3612
	%231 = add i64 %125, 1, !dbg !3614
	call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !3331, metadata !635), !dbg !3393
	%232 = icmp ult i64 %231, %131, !dbg !3616
	br i1 %232, label %233, label %235, !dbg !3620
	%234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3622
	store i8 34, i8* %234, align 1, !dbg !3622, !tbaa !800
	br label %235, !dbg !3622
	%236 = add i64 %125, 2, !dbg !3624
	call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !3331, metadata !635), !dbg !3393
	%237 = icmp ult i64 %236, %131, !dbg !3626
	br i1 %237, label %238, label %240, !dbg !3630
	%239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3632
	store i8 34, i8* %239, align 1, !dbg !3632, !tbaa !800
	br label %240, !dbg !3632
	%241 = add i64 %125, 3, !dbg !3634
	call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !3331, metadata !635), !dbg !3393
	%242 = icmp ult i64 %241, %131, !dbg !3636
	br i1 %242, label %243, label %245, !dbg !3640
	%244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3642
	store i8 63, i8* %244, align 1, !dbg !3642, !tbaa !800
	br label %245, !dbg !3642
	%246 = add i64 %125, 4, !dbg !3644
	call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !3331, metadata !635), !dbg !3393
	br label %476, !dbg !3646
	call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !3345, metadata !635), !dbg !3647
	br label %257, !dbg !3648
	call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !3345, metadata !635), !dbg !3647
	br label %257, !dbg !3649
	call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !3345, metadata !635), !dbg !3647
	br label %255, !dbg !3650
	call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !3345, metadata !635), !dbg !3647
	br label %255, !dbg !3651
	call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !3345, metadata !635), !dbg !3647
	br label %257, !dbg !3652
	call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3345, metadata !635), !dbg !3647
	br i1 %114, label %253, label %254, !dbg !3653
	br i1 %112, label %542, label %644, !dbg !3654
	br i1 %122, label %542, label %255, !dbg !3657
	%256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
	call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !3345, metadata !635), !dbg !3647
	br i1 %118, label %257, label %644, !dbg !3659
	%258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
	call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !3345, metadata !635), !dbg !3647
	br i1 %105, label %503, label %476, !dbg !3661
	%260 = icmp eq i64 %156, -1, !dbg !3662
	br i1 %260, label %261, label %266, !dbg !3664
	%262 = load i8, i8* %26, align 1, !dbg !3665, !tbaa !800
	%263 = icmp ne i8 %262, 0, !dbg !3667
	%264 = icmp ne i64 %124, 0, !dbg !3668
	%265 = or i1 %264, %263, !dbg !3670
	br i1 %265, label %476, label %272, !dbg !3670
	%267 = icmp ne i64 %156, 1, !dbg !3671
	%268 = icmp ne i64 %124, 0, !dbg !3668
	%269 = or i1 %268, %267, !dbg !3673
	br i1 %269, label %476, label %272, !dbg !3673
	%271 = icmp eq i64 %124, 0, !dbg !3668
	br i1 %271, label %272, label %476, !dbg !3675
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3348, metadata !635), !dbg !3482
	br label %273, !dbg !3676
	%274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
	call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !3348, metadata !635), !dbg !3482
	br i1 %118, label %476, label %644, !dbg !3677
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3339, metadata !635), !dbg !3402
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3348, metadata !635), !dbg !3482
	br i1 %114, label %276, label %476, !dbg !3679
	br i1 %112, label %277, label %644, !dbg !3680
	%278 = icmp eq i64 %131, 0, !dbg !3683
	%279 = icmp ne i64 %126, 0, !dbg !3685
	%280 = or i1 %279, %278, !dbg !3687
	call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3332, metadata !635), !dbg !3394
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3322, metadata !635), !dbg !3385
	%281 = select i1 %280, i64 %126, i64 %131, !dbg !3687
	%282 = select i1 %280, i64 %131, i64 0, !dbg !3687
	call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !3322, metadata !635), !dbg !3385
	call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !3332, metadata !635), !dbg !3394
	%283 = icmp ult i64 %125, %282, !dbg !3688
	br i1 %283, label %284, label %286, !dbg !3692
	%285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3694
	store i8 39, i8* %285, align 1, !dbg !3694, !tbaa !800
	br label %286, !dbg !3694
	%287 = add i64 %125, 1, !dbg !3696
	call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !3331, metadata !635), !dbg !3393
	%288 = icmp ult i64 %287, %282, !dbg !3698
	br i1 %288, label %289, label %291, !dbg !3702
	%290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3704
	store i8 92, i8* %290, align 1, !dbg !3704, !tbaa !800
	br label %291, !dbg !3704
	%292 = add i64 %125, 2, !dbg !3706
	call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !3331, metadata !635), !dbg !3393
	%293 = icmp ult i64 %292, %282, !dbg !3708
	br i1 %293, label %294, label %296, !dbg !3712
	%295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3714
	store i8 39, i8* %295, align 1, !dbg !3714, !tbaa !800
	br label %296, !dbg !3714
	%297 = add i64 %125, 3, !dbg !3716
	call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3338, metadata !635), !dbg !3401
	br label %476, !dbg !3718
	br i1 %14, label %299, label %308, !dbg !3719
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3349, metadata !635), !dbg !3720
	%300 = tail call i16** @__ctype_b_loc() #1, !dbg !3721
	%301 = load i16*, i16** %300, align 8, !dbg !3721, !tbaa !643
	%302 = zext i8 %159 to i64, !dbg !3721
	%303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3721
	%304 = load i16, i16* %303, align 2, !dbg !3721, !tbaa !3723
	%305 = lshr i16 %304, 14, !dbg !3724
	%306 = trunc i16 %305 to i8, !dbg !3724
	%307 = and i8 %306, 1, !dbg !3724
	call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !3352, metadata !635), !dbg !3725
	br label %368, !dbg !3726
	call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #12, !dbg !3727
	store i64 0, i64* %10, align 8, !dbg !3728
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3349, metadata !635), !dbg !3720
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3352, metadata !635), !dbg !3725
	%309 = icmp eq i64 %156, -1, !dbg !3729
	br i1 %309, label %310, label %312, !dbg !3731, !llvm.loop !3732
	%311 = call i64 @strlen(i8* nonnull %2) #14, !dbg !3735
	call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !3324, metadata !635), !dbg !3387
	br label %312, !dbg !3736, !llvm.loop !3732
	%313 = phi i64 [ %156, %308 ], [ %311, %310 ]
	br label %314, !dbg !3725
	%315 = phi i64 [ %360, %355 ], [ 0, %312 ]
	%316 = phi i8 [ %359, %355 ], [ 1, %312 ]
	call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !3352, metadata !635), !dbg !3725
	call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3349, metadata !635), !dbg !3720
	call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !3324, metadata !635), !dbg !3387
	call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #12, !dbg !3737
	%317 = add i64 %315, %124, !dbg !3738
	%318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3739
	%319 = sub i64 %313, %317, !dbg !3740
	call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3353, metadata !1109), !dbg !3741
	call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !3370, metadata !1109), !dbg !3742
	%320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #12, !dbg !3743
	call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !3373, metadata !635), !dbg !3744
	switch i64 %320, label %334 [
		i64 0, label %350
		i64 -1, label %347
		i64 -2, label %321
	], !dbg !3745
	call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3349, metadata !635), !dbg !3720
	%322 = icmp ugt i64 %313, %317, !dbg !3746
	br i1 %322, label %323, label %351, !dbg !3749
	br label %324, !dbg !3750
	%325 = phi i64 [ %332, %330 ], [ %317, %323 ]
	%326 = phi i64 [ %331, %330 ], [ %315, %323 ]
	%327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3750
	%328 = load i8, i8* %327, align 1, !dbg !3750, !tbaa !800
	%329 = icmp eq i8 %328, 0, !dbg !3752
	br i1 %329, label %348, label %330, !dbg !3753
	%331 = add i64 %326, 1, !dbg !3755
	call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3349, metadata !635), !dbg !3720
	call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3349, metadata !635), !dbg !3720
	%332 = add i64 %331, %124, !dbg !3756
	%333 = icmp ult i64 %332, %313, !dbg !3746
	br i1 %333, label %324, label %348, !dbg !3749, !llvm.loop !3757
	%335 = icmp ugt i64 %320, 1, !dbg !3759
	%336 = and i1 %116, %335, !dbg !3763
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3374, metadata !635), !dbg !3764
	br i1 %336, label %337, label %355, !dbg !3763
	br label %338, !dbg !3765
	%339 = phi i64 [ %345, %344 ], [ 1, %337 ]
	%340 = add i64 %339, %317, !dbg !3765
	%341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3766
	%342 = load i8, i8* %341, align 1, !dbg !3766, !tbaa !800
	%343 = sext i8 %342 to i32, !dbg !3766
	switch i32 %343, label %344 [
		i32 91, label %367
		i32 92, label %367
		i32 94, label %367
		i32 96, label %367
		i32 124, label %367
	], !dbg !3767
	%345 = add nuw i64 %339, 1, !dbg !3768
	call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3374, metadata !635), !dbg !3764
	call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3374, metadata !635), !dbg !3764
	%346 = icmp ult i64 %345, %320, !dbg !3759
	br i1 %346, label %338, label %354, !dbg !3770, !llvm.loop !3772
	br label %351, !dbg !3725
	%349 = phi i64 [ %331, %330 ], [ %326, %324 ]
	br label %351, !dbg !3725
	br label %351, !dbg !3725
	%352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
	%353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3352, metadata !635), !dbg !3725
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3349, metadata !635), !dbg !3720
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12, !dbg !3775
	br label %364
	br label %355, !dbg !3776
	%356 = load i32, i32* %12, align 4, !dbg !3776, !tbaa !736
	call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !3370, metadata !635), !dbg !3742
	%357 = call i32 @iswprint(i32 %356) #12, !dbg !3778
	%358 = icmp eq i32 %357, 0, !dbg !3778
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3352, metadata !635), !dbg !3725
	%359 = select i1 %358, i8 0, i8 %316, !dbg !3779
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3352, metadata !635), !dbg !3725
	%360 = add i64 %320, %315, !dbg !3780
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3349, metadata !635), !dbg !3720
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3352, metadata !635), !dbg !3725
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3349, metadata !635), !dbg !3720
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12, !dbg !3775
	call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3353, metadata !1109), !dbg !3741
	%361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !3781
	%362 = icmp eq i32 %361, 0, !dbg !3782
	br i1 %362, label %314, label %363, !dbg !3783, !llvm.loop !3732
	br label %364, !dbg !3785
	%365 = phi i8 [ %353, %351 ], [ %359, %363 ]
	%366 = phi i64 [ %352, %351 ], [ %360, %363 ]
	call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #12, !dbg !3785
	br label %368
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3352, metadata !635), !dbg !3725
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3349, metadata !635), !dbg !3720
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12, !dbg !3775
	call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #12, !dbg !3785
	br label %649
	%369 = phi i64 [ %156, %299 ], [ %313, %364 ]
	%370 = phi i64 [ 1, %299 ], [ %366, %364 ]
	%371 = phi i8 [ %307, %299 ], [ %365, %364 ]
	call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !3352, metadata !635), !dbg !3725
	call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !3349, metadata !635), !dbg !3720
	call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !3324, metadata !635), !dbg !3387
	%372 = and i8 %371, 1, !dbg !3786
	%373 = icmp ne i8 %372, 0, !dbg !3786
	call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !3348, metadata !635), !dbg !3482
	%374 = icmp ult i64 %370, 2, !dbg !3787
	%375 = or i1 %373, %113, !dbg !3788
	%376 = and i1 %374, %375, !dbg !3790
	br i1 %376, label %476, label %377, !dbg !3790
	%378 = add i64 %370, %124, !dbg !3791
	call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !3381, metadata !635), !dbg !3792
	br label %379, !dbg !3793
	%380 = phi i64 [ %124, %377 ], [ %447, %472 ]
	%381 = phi i64 [ %125, %377 ], [ %473, %472 ]
	%382 = phi i8 [ %128, %377 ], [ %468, %472 ]
	%383 = phi i8 [ %159, %377 ], [ %475, %472 ]
	%384 = phi i8 [ %157, %377 ], [ %445, %472 ]
	%385 = phi i8 [ 0, %377 ], [ %446, %472 ]
	call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !3347, metadata !635), !dbg !3481
	call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !3346, metadata !635), !dbg !3480
	call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !3341, metadata !635), !dbg !3499
	call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !3330, metadata !635), !dbg !3468
	br i1 %375, label %432, label %386, !dbg !3794
	br i1 %112, label %387, label %643, !dbg !3799
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3347, metadata !635), !dbg !3481
	%388 = and i8 %382, 1, !dbg !3803
	%389 = icmp eq i8 %388, 0, !dbg !3803
	%390 = and i1 %114, %389, !dbg !3806
	br i1 %390, label %391, label %407, !dbg !3806
	%392 = icmp ult i64 %381, %131, !dbg !3808
	br i1 %392, label %393, label %395, !dbg !3813
	%394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3815
	store i8 39, i8* %394, align 1, !dbg !3815, !tbaa !800
	br label %395, !dbg !3815
	%396 = add i64 %381, 1, !dbg !3817
	call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !3331, metadata !635), !dbg !3393
	%397 = icmp ult i64 %396, %131, !dbg !3819
	br i1 %397, label %398, label %400, !dbg !3823
	%399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3825
	store i8 36, i8* %399, align 1, !dbg !3825, !tbaa !800
	br label %400, !dbg !3825
	%401 = add i64 %381, 2, !dbg !3827
	call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !3331, metadata !635), !dbg !3393
	%402 = icmp ult i64 %401, %131, !dbg !3829
	br i1 %402, label %403, label %405, !dbg !3833
	%404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3835
	store i8 39, i8* %404, align 1, !dbg !3835, !tbaa !800
	br label %405, !dbg !3835
	%406 = add i64 %381, 3, !dbg !3837
	call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3338, metadata !635), !dbg !3401
	br label %407, !dbg !3839
	%408 = phi i64 [ %406, %405 ], [ %381, %387 ]
	%409 = phi i8 [ 1, %405 ], [ %382, %387 ]
	call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !3331, metadata !635), !dbg !3393
	%410 = icmp ult i64 %408, %131, !dbg !3841
	br i1 %410, label %411, label %413, !dbg !3845
	%412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3847
	store i8 92, i8* %412, align 1, !dbg !3847, !tbaa !800
	br label %413, !dbg !3847
	%414 = add i64 %408, 1, !dbg !3849
	call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !3331, metadata !635), !dbg !3393
	%415 = icmp ult i64 %414, %131, !dbg !3851
	br i1 %415, label %416, label %420, !dbg !3855
	%417 = lshr i8 %383, 6, !dbg !3857
	%418 = or i8 %417, 48, !dbg !3857
	%419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3857
	store i8 %418, i8* %419, align 1, !dbg !3857, !tbaa !800
	br label %420, !dbg !3857
	%421 = add i64 %408, 2, !dbg !3859
	call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !3331, metadata !635), !dbg !3393
	%422 = icmp ult i64 %421, %131, !dbg !3861
	br i1 %422, label %423, label %428, !dbg !3865
	%424 = lshr i8 %383, 3, !dbg !3867
	%425 = and i8 %424, 7, !dbg !3867
	%426 = or i8 %425, 48, !dbg !3867
	%427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3867
	store i8 %426, i8* %427, align 1, !dbg !3867, !tbaa !800
	br label %428, !dbg !3867
	%429 = add i64 %408, 3, !dbg !3869
	call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !3331, metadata !635), !dbg !3393
	%430 = and i8 %383, 7, !dbg !3871
	%431 = or i8 %430, 48, !dbg !3872
	call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !3341, metadata !635), !dbg !3499
	br label %441, !dbg !3873
	%433 = and i8 %384, 1, !dbg !3874
	%434 = icmp eq i8 %433, 0, !dbg !3874
	br i1 %434, label %441, label %435, !dbg !3876
	%436 = icmp ult i64 %381, %131, !dbg !3877
	br i1 %436, label %437, label %439, !dbg !3882
	%438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3884
	store i8 92, i8* %438, align 1, !dbg !3884, !tbaa !800
	br label %439, !dbg !3884
	%440 = add i64 %381, 1, !dbg !3886
	call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3346, metadata !635), !dbg !3480
	br label %441, !dbg !3888
	%442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
	%443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
	%444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
	%445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
	%446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
	call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !3347, metadata !635), !dbg !3481
	call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !3346, metadata !635), !dbg !3480
	call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !3341, metadata !635), !dbg !3499
	call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !3331, metadata !635), !dbg !3393
	%447 = add i64 %380, 1, !dbg !3889
	%448 = icmp ugt i64 %378, %447, !dbg !3891
	br i1 %448, label %449, label %541, !dbg !3892
	%450 = and i8 %443, 1, !dbg !3893
	%451 = icmp ne i8 %450, 0, !dbg !3893
	%452 = and i8 %446, 1, !dbg !3897
	%453 = icmp eq i8 %452, 0, !dbg !3897
	%454 = and i1 %451, %453, !dbg !3893
	br i1 %454, label %455, label %466, !dbg !3893
	%456 = icmp ult i64 %442, %131, !dbg !3899
	br i1 %456, label %457, label %459, !dbg !3904
	%458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3906
	store i8 39, i8* %458, align 1, !dbg !3906, !tbaa !800
	br label %459, !dbg !3906
	%460 = add i64 %442, 1, !dbg !3908
	call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !3331, metadata !635), !dbg !3393
	%461 = icmp ult i64 %460, %131, !dbg !3910
	br i1 %461, label %462, label %464, !dbg !3914
	%463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3916
	store i8 39, i8* %463, align 1, !dbg !3916, !tbaa !800
	br label %464, !dbg !3916
	%465 = add i64 %442, 2, !dbg !3918
	call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3338, metadata !635), !dbg !3401
	br label %466, !dbg !3920
	%467 = phi i64 [ %465, %464 ], [ %442, %449 ]
	%468 = phi i8 [ 0, %464 ], [ %443, %449 ]
	call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !3331, metadata !635), !dbg !3393
	%469 = icmp ult i64 %467, %131, !dbg !3922
	br i1 %469, label %470, label %472, !dbg !3926
	%471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3928
	store i8 %444, i8* %471, align 1, !dbg !3928, !tbaa !800
	br label %472, !dbg !3928
	%473 = add i64 %467, 1, !dbg !3930
	call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !3330, metadata !635), !dbg !3468
	%474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3932
	%475 = load i8, i8* %474, align 1, !dbg !3932, !tbaa !800
	call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !3341, metadata !635), !dbg !3499
	br label %379, !dbg !3933, !llvm.loop !3935
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
	call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !3322, metadata !635), !dbg !3385
	call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !3348, metadata !635), !dbg !3482
	call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !3347, metadata !635), !dbg !3481
	call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3346, metadata !635), !dbg !3480
	call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !3341, metadata !635), !dbg !3499
	call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !3339, metadata !635), !dbg !3402
	call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !3324, metadata !635), !dbg !3387
	call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !3332, metadata !635), !dbg !3394
	call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !3330, metadata !635), !dbg !3468
	br i1 %107, label %488, label %487, !dbg !3938
	br i1 %117, label %489, label %501, !dbg !3940
	br i1 %20, label %501, label %489, !dbg !3941
	%490 = lshr i8 %483, 5, !dbg !3942
	%491 = zext i8 %490 to i64, !dbg !3942
	%492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3944
	%493 = load i32, i32* %492, align 4, !dbg !3944, !tbaa !736
	%494 = and i8 %483, 31, !dbg !3945
	%495 = zext i8 %494 to i32, !dbg !3946
	%496 = shl i32 1, %495, !dbg !3947
	%497 = and i32 %493, %496, !dbg !3947
	%498 = icmp eq i32 %497, 0, !dbg !3947
	%499 = icmp eq i8 %157, 0, !dbg !3948
	%500 = and i1 %499, %498, !dbg !3949
	br i1 %500, label %542, label %503, !dbg !3949
	%502 = icmp eq i8 %157, 0, !dbg !3948
	br i1 %502, label %542, label %503, !dbg !3950
	%504 = phi i64 [ %477, %489 ], [ %477, %501 ], [ %124, %257 ]
	%505 = phi i64 [ %478, %489 ], [ %478, %501 ], [ %125, %257 ]
	%506 = phi i64 [ %479, %489 ], [ %479, %501 ], [ %126, %257 ]
	%507 = phi i64 [ %480, %489 ], [ %480, %501 ], [ %156, %257 ]
	%508 = phi i8 [ %481, %489 ], [ %481, %501 ], [ %128, %257 ]
	%509 = phi i8 [ %482, %489 ], [ %482, %501 ], [ %129, %257 ]
	%510 = phi i8 [ %483, %489 ], [ %483, %501 ], [ %258, %257 ]
	%511 = phi i8 [ %485, %489 ], [ %485, %501 ], [ 0, %257 ]
	%512 = phi i64 [ %486, %489 ], [ %486, %501 ], [ %131, %257 ]
	call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !3322, metadata !635), !dbg !3385
	call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !3348, metadata !635), !dbg !3482
	call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !3341, metadata !635), !dbg !3499
	call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !3339, metadata !635), !dbg !3402
	call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !3324, metadata !635), !dbg !3387
	call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !3332, metadata !635), !dbg !3394
	call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !3330, metadata !635), !dbg !3468
	br i1 %112, label %513, label %644, !dbg !3952
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3347, metadata !635), !dbg !3481
	%514 = and i8 %508, 1, !dbg !3955
	%515 = icmp eq i8 %514, 0, !dbg !3955
	%516 = and i1 %114, %515, !dbg !3958
	br i1 %516, label %517, label %533, !dbg !3958
	%518 = icmp ult i64 %505, %512, !dbg !3960
	br i1 %518, label %519, label %521, !dbg !3965
	%520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3967
	store i8 39, i8* %520, align 1, !dbg !3967, !tbaa !800
	br label %521, !dbg !3967
	%522 = add i64 %505, 1, !dbg !3969
	call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !3331, metadata !635), !dbg !3393
	%523 = icmp ult i64 %522, %512, !dbg !3971
	br i1 %523, label %524, label %526, !dbg !3975
	%525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3977
	store i8 36, i8* %525, align 1, !dbg !3977, !tbaa !800
	br label %526, !dbg !3977
	%527 = add i64 %505, 2, !dbg !3979
	call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !3331, metadata !635), !dbg !3393
	%528 = icmp ult i64 %527, %512, !dbg !3981
	br i1 %528, label %529, label %531, !dbg !3985
	%530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3987
	store i8 39, i8* %530, align 1, !dbg !3987, !tbaa !800
	br label %531, !dbg !3987
	%532 = add i64 %505, 3, !dbg !3989
	call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3338, metadata !635), !dbg !3401
	br label %533, !dbg !3991
	%534 = phi i64 [ %532, %531 ], [ %505, %513 ]
	%535 = phi i8 [ 1, %531 ], [ %508, %513 ]
	call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !3331, metadata !635), !dbg !3393
	%536 = icmp ult i64 %534, %512, !dbg !3993
	br i1 %536, label %537, label %539, !dbg !3997
	%538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3999
	store i8 92, i8* %538, align 1, !dbg !3999, !tbaa !800
	br label %539, !dbg !3999
	%540 = add i64 %534, 1, !dbg !4001
	call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3322, metadata !635), !dbg !3385
	call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3348, metadata !635), !dbg !3482
	call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3347, metadata !635), !dbg !3481
	call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3341, metadata !635), !dbg !3499
	call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3339, metadata !635), !dbg !3402
	call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3324, metadata !635), !dbg !3387
	call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3332, metadata !635), !dbg !3394
	call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3330, metadata !635), !dbg !3468
	br label %569, !dbg !4003
	br label %542, !dbg !3385
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
	call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3322, metadata !635), !dbg !3385
	call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3348, metadata !635), !dbg !3482
	call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3347, metadata !635), !dbg !3481
	call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3341, metadata !635), !dbg !3499
	call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3339, metadata !635), !dbg !3402
	call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3324, metadata !635), !dbg !3387
	call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3332, metadata !635), !dbg !3394
	call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3330, metadata !635), !dbg !3468
	%553 = and i8 %547, 1, !dbg !4003
	%554 = icmp ne i8 %553, 0, !dbg !4003
	%555 = and i8 %550, 1, !dbg !4007
	%556 = icmp eq i8 %555, 0, !dbg !4007
	%557 = and i1 %554, %556, !dbg !4003
	br i1 %557, label %558, label %569, !dbg !4003
	%559 = icmp ult i64 %544, %552, !dbg !4009
	br i1 %559, label %560, label %562, !dbg !4014
	%561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !4016
	store i8 39, i8* %561, align 1, !dbg !4016, !tbaa !800
	br label %562, !dbg !4016
	%563 = add i64 %544, 1, !dbg !4018
	call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !3331, metadata !635), !dbg !3393
	%564 = icmp ult i64 %563, %552, !dbg !4020
	br i1 %564, label %565, label %567, !dbg !4024
	%566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !4026
	store i8 39, i8* %566, align 1, !dbg !4026, !tbaa !800
	br label %567, !dbg !4026
	%568 = add i64 %544, 2, !dbg !4028
	call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !3331, metadata !635), !dbg !3393
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3338, metadata !635), !dbg !3401
	br label %569, !dbg !4030
	%570 = phi i64 [ %552, %567 ], [ %552, %542 ], [ %512, %539 ]
	%571 = phi i8 [ %551, %567 ], [ %551, %542 ], [ %511, %539 ]
	%572 = phi i8 [ %549, %567 ], [ %549, %542 ], [ %510, %539 ]
	%573 = phi i8 [ %548, %567 ], [ %548, %542 ], [ %509, %539 ]
	%574 = phi i64 [ %546, %567 ], [ %546, %542 ], [ %507, %539 ]
	%575 = phi i64 [ %545, %567 ], [ %545, %542 ], [ %506, %539 ]
	%576 = phi i64 [ %543, %567 ], [ %543, %542 ], [ %504, %539 ]
	%577 = phi i64 [ %568, %567 ], [ %544, %542 ], [ %540, %539 ]
	%578 = phi i8 [ 0, %567 ], [ %547, %542 ], [ %535, %539 ]
	call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !3338, metadata !635), !dbg !3401
	call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !3331, metadata !635), !dbg !3393
	%579 = icmp ult i64 %577, %570, !dbg !4032
	br i1 %579, label %580, label %582, !dbg !4036
	%581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !4038
	store i8 %572, i8* %581, align 1, !dbg !4038, !tbaa !800
	br label %582, !dbg !4038
	%583 = add i64 %577, 1, !dbg !4040
	call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !3331, metadata !635), !dbg !3393
	%584 = and i8 %571, 1, !dbg !4042
	%585 = icmp eq i8 %584, 0, !dbg !4042
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3340, metadata !635), !dbg !3403
	%586 = select i1 %585, i8 0, i8 %130, !dbg !4044
	call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !3340, metadata !635), !dbg !3403
	br label %587, !dbg !4045
	%588 = phi i64 [ %124, %209 ], [ %576, %582 ]
	%589 = phi i64 [ %125, %209 ], [ %583, %582 ]
	%590 = phi i64 [ %126, %209 ], [ %575, %582 ]
	%591 = phi i64 [ %156, %209 ], [ %574, %582 ]
	%592 = phi i8 [ %128, %209 ], [ %578, %582 ]
	%593 = phi i8 [ %129, %209 ], [ %573, %582 ]
	%594 = phi i8 [ %130, %209 ], [ %586, %582 ]
	%595 = phi i64 [ %131, %209 ], [ %570, %582 ]
	%596 = add i64 %588, 1, !dbg !4046
	call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !3330, metadata !635), !dbg !3468
	br label %123, !dbg !4048, !llvm.loop !4049
	%598 = phi i64 [ %124, %133 ], [ -1, %135 ]
	%599 = icmp eq i64 %125, 0, !dbg !4052
	%600 = and i1 %114, %599, !dbg !4054
	%601 = xor i1 %600, true, !dbg !4054
	%602 = or i1 %112, %601, !dbg !4054
	br i1 %602, label %603, label %648, !dbg !4054
	%604 = and i1 %114, %112, !dbg !4055
	%605 = xor i1 %604, true, !dbg !4055
	%606 = and i8 %129, 1, !dbg !4057
	%607 = icmp eq i8 %606, 0, !dbg !4057
	%608 = or i1 %607, %605, !dbg !4055
	br i1 %608, label %618, label %609, !dbg !4055
	%610 = and i8 %130, 1, !dbg !4059
	%611 = icmp eq i8 %610, 0, !dbg !4059
	br i1 %611, label %614, label %612, !dbg !4062
	%613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !4063
	br label %659, !dbg !4064
	%615 = icmp eq i64 %131, 0, !dbg !4065
	%616 = icmp ne i64 %126, 0, !dbg !4067
	%617 = and i1 %616, %615, !dbg !4069
	br i1 %617, label %27, label %618, !dbg !4069
	%619 = icmp ne i8* %100, null, !dbg !4070
	%620 = and i1 %619, %112, !dbg !4072
	br i1 %620, label %621, label %638, !dbg !4072
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3333, metadata !635), !dbg !3395
	call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3331, metadata !635), !dbg !3393
	%622 = load i8, i8* %100, align 1, !dbg !4073, !tbaa !800
	%623 = icmp eq i8 %622, 0, !dbg !4077
	br i1 %623, label %638, label %624, !dbg !4077
	br label %625, !dbg !4079
	%626 = phi i8 [ %635, %632 ], [ %622, %624 ]
	%627 = phi i8* [ %634, %632 ], [ %100, %624 ]
	%628 = phi i64 [ %633, %632 ], [ %125, %624 ]
	%629 = icmp ult i64 %628, %131, !dbg !4079
	br i1 %629, label %630, label %632, !dbg !4083
	%631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !4085
	store i8 %626, i8* %631, align 1, !dbg !4085, !tbaa !800
	br label %632, !dbg !4085
	%633 = add i64 %628, 1, !dbg !4087
	call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3331, metadata !635), !dbg !3393
	%634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !4089
	call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3333, metadata !635), !dbg !3395
	call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3333, metadata !635), !dbg !3395
	call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3331, metadata !635), !dbg !3393
	%635 = load i8, i8* %634, align 1, !dbg !4073, !tbaa !800
	%636 = icmp eq i8 %635, 0, !dbg !4077
	br i1 %636, label %637, label %625, !dbg !4077, !llvm.loop !4091
	br label %638, !dbg !3393
	%639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
	call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !3331, metadata !635), !dbg !3393
	%640 = icmp ult i64 %639, %131, !dbg !4094
	br i1 %640, label %641, label %659, !dbg !4096
	%642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !4097
	store i8 0, i8* %642, align 1, !dbg !4098, !tbaa !800
	br label %659, !dbg !4097
	br label %649, !dbg !3385
	%645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
	%646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
	%647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
	br label %649, !dbg !3385
	br label %649, !dbg !3385
	%650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
	%651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
	%652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
	call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !3322, metadata !635), !dbg !3385
	call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !3324, metadata !635), !dbg !3387
	%653 = icmp ne i32 %650, 2, !dbg !4099
	%654 = icmp eq i8 %104, 0, !dbg !4101
	%655 = or i1 %653, %654, !dbg !4103
	call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3325, metadata !635), !dbg !3388
	%656 = select i1 %655, i32 %650, i32 4, !dbg !4103
	call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !3325, metadata !635), !dbg !3388
	%657 = and i32 %5, -3, !dbg !4104
	%658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !4105
	br label %659, !dbg !4106
	%660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
	ret i64 %660, !dbg !4107
}
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !4108 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4112, metadata !635), !dbg !4116
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4113, metadata !635), !dbg !4117
	%3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !4118
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4114, metadata !635), !dbg !4119
	%4 = icmp eq i8* %3, %0, !dbg !4120
	br i1 %4, label %5, label %75, !dbg !4122
	%6 = tail call i8* @locale_charset() #12, !dbg !4123
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4115, metadata !635), !dbg !4124
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4125, metadata !635), !dbg !4141
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4139, metadata !635), !dbg !4144
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4140, metadata !635), !dbg !4145
	%7 = load i8, i8* %6, align 1, !tbaa !800
	%8 = sext i8 %7 to i32
	%9 = and i32 %8, -33, !dbg !4146
	switch i32 %9, label %72 [
		i32 85, label %10
		i32 71, label %38
	], !dbg !4146
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4149, metadata !635), !dbg !4163
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4161, metadata !635), !dbg !4167
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4162, metadata !635), !dbg !4168
	%11 = getelementptr inbounds i8, i8* %6, i64 1
	%12 = load i8, i8* %11, align 1, !tbaa !800
	%13 = sext i8 %12 to i32
	%14 = and i32 %13, -33, !dbg !4169
	%15 = icmp eq i32 %14, 84, !dbg !4169
	br i1 %15, label %16, label %72, !dbg !4169
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4172, metadata !635), !dbg !4185
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4183, metadata !635), !dbg !4189
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4184, metadata !635), !dbg !4190
	%17 = getelementptr inbounds i8, i8* %6, i64 2
	%18 = load i8, i8* %17, align 1, !tbaa !800
	%19 = sext i8 %18 to i32
	%20 = and i32 %19, -33, !dbg !4191
	%21 = icmp eq i32 %20, 70, !dbg !4191
	br i1 %21, label %22, label %72, !dbg !4191
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4194, metadata !635), !dbg !4206
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4204, metadata !635), !dbg !4210
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4205, metadata !635), !dbg !4211
	%23 = getelementptr inbounds i8, i8* %6, i64 3
	%24 = load i8, i8* %23, align 1, !tbaa !800
	%25 = icmp eq i8 %24, 45, !dbg !4212
	br i1 %25, label %26, label %72, !dbg !4215
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4217, metadata !635), !dbg !4228
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4226, metadata !635), !dbg !4232
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4227, metadata !635), !dbg !4233
	%27 = getelementptr inbounds i8, i8* %6, i64 4
	%28 = load i8, i8* %27, align 1, !tbaa !800
	%29 = icmp eq i8 %28, 56, !dbg !4234
	br i1 %29, label %30, label %72, !dbg !4237
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4239, metadata !635), !dbg !4249
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4247, metadata !635), !dbg !4253
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4248, metadata !635), !dbg !4254
	%31 = getelementptr inbounds i8, i8* %6, i64 5
	%32 = load i8, i8* %31, align 1, !tbaa !800
	%33 = icmp eq i8 %32, 0, !dbg !4255
	br i1 %33, label %34, label %72, !dbg !4258
	%35 = load i8, i8* %0, align 1, !dbg !4260, !tbaa !800
	%36 = icmp eq i8 %35, 96, !dbg !4261
	%37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.89, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.90, i64 0, i64 0), !dbg !4260
	br label %75, !dbg !4262
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4149, metadata !635), !dbg !4263
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4161, metadata !635), !dbg !4267
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4162, metadata !635), !dbg !4268
	%39 = getelementptr inbounds i8, i8* %6, i64 1
	%40 = load i8, i8* %39, align 1, !tbaa !800
	%41 = sext i8 %40 to i32
	%42 = and i32 %41, -33, !dbg !4269
	%43 = icmp eq i32 %42, 66, !dbg !4269
	br i1 %43, label %44, label %72, !dbg !4269
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4172, metadata !635), !dbg !4270
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4183, metadata !635), !dbg !4272
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4184, metadata !635), !dbg !4273
	%45 = getelementptr inbounds i8, i8* %6, i64 2
	%46 = load i8, i8* %45, align 1, !tbaa !800
	%47 = icmp eq i8 %46, 49, !dbg !4274
	br i1 %47, label %48, label %72, !dbg !4276
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4194, metadata !635), !dbg !4278
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4204, metadata !635), !dbg !4280
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4205, metadata !635), !dbg !4281
	%49 = getelementptr inbounds i8, i8* %6, i64 3
	%50 = load i8, i8* %49, align 1, !tbaa !800
	%51 = icmp eq i8 %50, 56, !dbg !4282
	br i1 %51, label %52, label %72, !dbg !4283
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4217, metadata !635), !dbg !4284
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4226, metadata !635), !dbg !4286
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4227, metadata !635), !dbg !4287
	%53 = getelementptr inbounds i8, i8* %6, i64 4
	%54 = load i8, i8* %53, align 1, !tbaa !800
	%55 = icmp eq i8 %54, 48, !dbg !4288
	br i1 %55, label %56, label %72, !dbg !4289
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4239, metadata !635), !dbg !4290
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4247, metadata !635), !dbg !4292
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4248, metadata !635), !dbg !4293
	%57 = getelementptr inbounds i8, i8* %6, i64 5
	%58 = load i8, i8* %57, align 1, !tbaa !800
	%59 = icmp eq i8 %58, 51, !dbg !4294
	br i1 %59, label %60, label %72, !dbg !4295
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4296, metadata !635), !dbg !4305
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4303, metadata !635), !dbg !4309
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4304, metadata !635), !dbg !4310
	%61 = getelementptr inbounds i8, i8* %6, i64 6
	%62 = load i8, i8* %61, align 1, !tbaa !800
	%63 = icmp eq i8 %62, 48, !dbg !4311
	br i1 %63, label %64, label %72, !dbg !4314
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4316, metadata !635), !dbg !4324
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4322, metadata !635), !dbg !4328
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4323, metadata !635), !dbg !4329
	%65 = getelementptr inbounds i8, i8* %6, i64 7
	%66 = load i8, i8* %65, align 1, !tbaa !800
	%67 = icmp eq i8 %66, 0, !dbg !4330
	br i1 %67, label %68, label %72, !dbg !4333
	%69 = load i8, i8* %0, align 1, !dbg !4334, !tbaa !800
	%70 = icmp eq i8 %69, 96, !dbg !4335
	%71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), !dbg !4334
	br label %75, !dbg !4336
	%73 = icmp eq i32 %1, 9, !dbg !4337
	%74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.87, i64 0, i64 0), !dbg !4338
	br label %75, !dbg !4339
	%76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
	ret i8* %76, !dbg !4340
}
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4
declare i16** @__ctype_b_loc() local_unnamed_addr #7
declare i32 @iswprint(i32) local_unnamed_addr #2
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4341 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4345, metadata !635), !dbg !4348
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4346, metadata !635), !dbg !4349
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4347, metadata !635), !dbg !4350
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4351, metadata !635) #12, !dbg !4364
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4356, metadata !635) #12, !dbg !4366
	tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !4357, metadata !635) #12, !dbg !4367
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4358, metadata !635) #12, !dbg !4368
	%4 = icmp ne %struct.quoting_options* %2, null, !dbg !4369
	%5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !4369
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4359, metadata !635) #12, !dbg !4370
	%6 = tail call i32* @__errno_location() #1, !dbg !4371
	%7 = load i32, i32* %6, align 4, !dbg !4371, !tbaa !736
	tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4360, metadata !635) #12, !dbg !4372
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4373
	%9 = load i32, i32* %8, align 4, !dbg !4373, !tbaa !3253
	%10 = or i32 %9, 1, !dbg !4374
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4361, metadata !635) #12, !dbg !4375
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4376
	%12 = load i32, i32* %11, align 8, !dbg !4376, !tbaa !3191
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !4377
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4378
	%15 = load i8*, i8** %14, align 8, !dbg !4378, !tbaa !3280
	%16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4379
	%17 = load i8*, i8** %16, align 8, !dbg !4379, !tbaa !3283
	%18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #12, !dbg !4380
	%19 = add i64 %18, 1, !dbg !4381
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4362, metadata !635) #12, !dbg !4382
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4383, metadata !635) #12, !dbg !4388
	%20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !4390
	tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !4363, metadata !635) #12, !dbg !4391
	%21 = load i32, i32* %11, align 8, !dbg !4392, !tbaa !3191
	%22 = load i8*, i8** %14, align 8, !dbg !4393, !tbaa !3280
	%23 = load i8*, i8** %16, align 8, !dbg !4394, !tbaa !3283
	%24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #12, !dbg !4395
	store i32 %7, i32* %6, align 4, !dbg !4396, !tbaa !736
	ret i8* %20, !dbg !4397
}
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4352 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4351, metadata !635), !dbg !4398
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4356, metadata !635), !dbg !4399
	tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !4357, metadata !635), !dbg !4400
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4358, metadata !635), !dbg !4401
	%5 = icmp ne %struct.quoting_options* %3, null, !dbg !4402
	%6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !4402
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4359, metadata !635), !dbg !4403
	%7 = tail call i32* @__errno_location() #1, !dbg !4404
	%8 = load i32, i32* %7, align 4, !dbg !4404, !tbaa !736
	tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !4360, metadata !635), !dbg !4405
	%9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4406
	%10 = load i32, i32* %9, align 4, !dbg !4406, !tbaa !3253
	%11 = icmp ne i64* %2, null, !dbg !4407
	%12 = xor i1 %11, true, !dbg !4407
	%13 = zext i1 %12 to i32, !dbg !4407
	%14 = or i32 %10, %13, !dbg !4408
	tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4361, metadata !635), !dbg !4409
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4410
	%16 = load i32, i32* %15, align 8, !dbg !4410, !tbaa !3191
	%17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4411
	%18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4412
	%19 = load i8*, i8** %18, align 8, !dbg !4412, !tbaa !3280
	%20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4413
	%21 = load i8*, i8** %20, align 8, !dbg !4413, !tbaa !3283
	%22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !4414
	%23 = add i64 %22, 1, !dbg !4415
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4362, metadata !635), !dbg !4416
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4383, metadata !635) #12, !dbg !4417
	%24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !4419
	tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4363, metadata !635), !dbg !4420
	%25 = load i32, i32* %15, align 8, !dbg !4421, !tbaa !3191
	%26 = load i8*, i8** %18, align 8, !dbg !4422, !tbaa !3280
	%27 = load i8*, i8** %20, align 8, !dbg !4423, !tbaa !3283
	%28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !4424
	store i32 %8, i32* %7, align 4, !dbg !4425, !tbaa !736
	br i1 %11, label %29, label %30, !dbg !4426
	store i64 %22, i64* %2, align 8, !dbg !4427, !tbaa !2432
	br label %30, !dbg !4429
	ret i8* %24, !dbg !4430
}
define void @quotearg_free() local_unnamed_addr #6 !dbg !4431 {
	%1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4435, !tbaa !643
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !4433, metadata !635), !dbg !4436
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4434, metadata !635), !dbg !4437
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4434, metadata !635), !dbg !4437
	%2 = load i32, i32* @nslots, align 4, !dbg !4438, !tbaa !736
	%3 = icmp sgt i32 %2, 1, !dbg !4442
	br i1 %3, label %4, label %14, !dbg !4443
	br label %5, !dbg !4445
	%6 = phi i64 [ %9, %5 ], [ 1, %4 ]
	%7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !4445
	%8 = load i8*, i8** %7, align 8, !dbg !4445, !tbaa !4446
	tail call void @free(i8* %8) #12, !dbg !4448
	%9 = add nuw i64 %6, 1, !dbg !4449
	%10 = load i32, i32* @nslots, align 4, !dbg !4438, !tbaa !736
	%11 = sext i32 %10 to i64, !dbg !4442
	%12 = icmp slt i64 %9, %11, !dbg !4442
	br i1 %12, label %5, label %13, !dbg !4443, !llvm.loop !4451
	br label %14, !dbg !4454
	%15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4454
	%16 = load i8*, i8** %15, align 8, !dbg !4454, !tbaa !4446
	%17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4456
	br i1 %17, label %19, label %18, !dbg !4457
	tail call void @free(i8* %16) #12, !dbg !4458
	store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4460, !tbaa !4461
	store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4462, !tbaa !4446
	br label %19, !dbg !4463
	%20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4464
	br i1 %20, label %23, label %21, !dbg !4466
	%22 = bitcast %struct.slotvec* %1 to i8*, !dbg !4467
	tail call void @free(i8* %22) #12, !dbg !4469
	store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4470, !tbaa !643
	br label %23, !dbg !4471
	store i32 1, i32* @nslots, align 4, !dbg !4472, !tbaa !736
	ret void, !dbg !4473
}
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4474 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4478, metadata !635), !dbg !4480
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4479, metadata !635), !dbg !4481
	%3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4482
	ret i8* %3, !dbg !4483
}
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4484 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4488, metadata !635), !dbg !4502
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4489, metadata !635), !dbg !4503
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4490, metadata !635), !dbg !4504
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4491, metadata !635), !dbg !4505
	%5 = tail call i32* @__errno_location() #1, !dbg !4506
	%6 = load i32, i32* %5, align 4, !dbg !4506, !tbaa !736
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4492, metadata !635), !dbg !4507
	%7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4508, !tbaa !643
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4493, metadata !635), !dbg !4509
	%8 = icmp slt i32 %0, 0, !dbg !4510
	br i1 %8, label %9, label %10, !dbg !4512
	tail call void @abort() #15, !dbg !4513
	unreachable, !dbg !4513
	%11 = load i32, i32* @nslots, align 4, !dbg !4514, !tbaa !736
	%12 = icmp sgt i32 %11, %0, !dbg !4515
	br i1 %12, label %34, label %13, !dbg !4516
	%14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4517
	%15 = icmp ugt i32 %0, 2147483646, !dbg !4518
	br i1 %15, label %16, label %17, !dbg !4520
	tail call void @xalloc_die() #15, !dbg !4521
	unreachable, !dbg !4521
	%18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4522
	%19 = select i1 %14, i8* null, i8* %18, !dbg !4522
	%20 = add nsw i32 %0, 1, !dbg !4524
	%21 = sext i32 %20 to i64, !dbg !4525
	%22 = shl nsw i64 %21, 4, !dbg !4526
	%23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !4527
	%24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4527
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4493, metadata !635), !dbg !4509
	store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4528, !tbaa !643
	br i1 %14, label %25, label %26, !dbg !4529
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4530, !tbaa.struct !4532
	br label %26, !dbg !4533
	%27 = load i32, i32* @nslots, align 4, !dbg !4534, !tbaa !736
	%28 = sext i32 %27 to i64, !dbg !4535
	%29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4535
	%30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4536
	%31 = sub nsw i32 %20, %27, !dbg !4537
	%32 = sext i32 %31 to i64, !dbg !4538
	%33 = shl nsw i64 %32, 4, !dbg !4539
	tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4536
	store i32 %20, i32* @nslots, align 4, !dbg !4540, !tbaa !736
	br label %34, !dbg !4541
	%35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4493, metadata !635), !dbg !4509
	%36 = sext i32 %0 to i64, !dbg !4542
	%37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4543
	%38 = load i64, i64* %37, align 8, !dbg !4543, !tbaa !4461
	tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4497, metadata !635), !dbg !4544
	%39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4545
	%40 = load i8*, i8** %39, align 8, !dbg !4545, !tbaa !4446
	tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4499, metadata !635), !dbg !4546
	%41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4547
	%42 = load i32, i32* %41, align 4, !dbg !4547, !tbaa !3253
	%43 = or i32 %42, 1, !dbg !4548
	tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4500, metadata !635), !dbg !4549
	%44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4550
	%45 = load i32, i32* %44, align 8, !dbg !4550, !tbaa !3191
	%46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4551
	%47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4552
	%48 = load i8*, i8** %47, align 8, !dbg !4552, !tbaa !3280
	%49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4553
	%50 = load i8*, i8** %49, align 8, !dbg !4553, !tbaa !3283
	%51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4554
	tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4501, metadata !635), !dbg !4555
	%52 = icmp ugt i64 %38, %51, !dbg !4556
	br i1 %52, label %63, label %53, !dbg !4558
	%54 = add i64 %51, 1, !dbg !4559
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4497, metadata !635), !dbg !4544
	store i64 %54, i64* %37, align 8, !dbg !4561, !tbaa !4461
	%55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4562
	br i1 %55, label %57, label %56, !dbg !4564
	tail call void @free(i8* %40) #12, !dbg !4565
	br label %57, !dbg !4565
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4383, metadata !635) #12, !dbg !4566
	%58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !4568
	tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4499, metadata !635), !dbg !4546
	store i8* %58, i8** %39, align 8, !dbg !4569, !tbaa !4446
	%59 = load i32, i32* %44, align 8, !dbg !4570, !tbaa !3191
	%60 = load i8*, i8** %47, align 8, !dbg !4571, !tbaa !3280
	%61 = load i8*, i8** %49, align 8, !dbg !4572, !tbaa !3283
	%62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4573
	br label %63, !dbg !4574
	%64 = phi i8* [ %58, %57 ], [ %40, %34 ]
	tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4499, metadata !635), !dbg !4546
	store i32 %6, i32* %5, align 4, !dbg !4575, !tbaa !736
	ret i8* %64, !dbg !4576
}
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4577 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4581, metadata !635), !dbg !4584
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4582, metadata !635), !dbg !4585
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4583, metadata !635), !dbg !4586
	%4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4587
	ret i8* %4, !dbg !4588
}
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4589 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4593, metadata !635), !dbg !4594
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4478, metadata !635) #12, !dbg !4595
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4479, metadata !635) #12, !dbg !4597
	%2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !4598
	ret i8* %2, !dbg !4599
}
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4600 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4602, metadata !635), !dbg !4604
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4603, metadata !635), !dbg !4605
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4581, metadata !635) #12, !dbg !4606
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4582, metadata !635) #12, !dbg !4608
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4583, metadata !635) #12, !dbg !4609
	%3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !4610
	ret i8* %3, !dbg !4611
}
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4612 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4620, metadata !4626), !dbg !4627
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4616, metadata !635), !dbg !4629
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4617, metadata !635), !dbg !4630
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4618, metadata !635), !dbg !4631
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4632
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12, !dbg !4632
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4619, metadata !1109), !dbg !4633
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4625, metadata !635) #12, !dbg !4634
	%7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4635
	call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4635
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4620, metadata !635) #12, !dbg !4627
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4620, metadata !4636) #12, !dbg !4627
	call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4627
	%8 = icmp eq i32 %1, 10, !dbg !4637
	br i1 %8, label %9, label %10, !dbg !4639
	tail call void @abort() #15, !dbg !4640, !noalias !4641
	unreachable, !dbg !4640
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4620, metadata !4636) #12, !dbg !4627
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4644
	store i32 %1, i32* %11, align 8, !dbg !4644, !alias.scope !4641
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4644
	%13 = bitcast i32* %12 to i8*, !dbg !4644
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !4644
	call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4645
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4619, metadata !1109), !dbg !4633
	%14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4646
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12, !dbg !4647
	ret i8* %14, !dbg !4648
}
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4649 {
	%5 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4620, metadata !4626), !dbg !4658
	%6 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4653, metadata !635), !dbg !4660
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4654, metadata !635), !dbg !4661
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4655, metadata !635), !dbg !4662
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4656, metadata !635), !dbg !4663
	%7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4664
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12, !dbg !4664
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4657, metadata !1109), !dbg !4665
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4625, metadata !635) #12, !dbg !4666
	%8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4667
	call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4667
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4620, metadata !635) #12, !dbg !4658
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4620, metadata !4636) #12, !dbg !4658
	call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4658
	%9 = icmp eq i32 %1, 10, !dbg !4668
	br i1 %9, label %10, label %11, !dbg !4669
	tail call void @abort() #15, !dbg !4670, !noalias !4671
	unreachable, !dbg !4670
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4620, metadata !4636) #12, !dbg !4658
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4674
	store i32 %1, i32* %12, align 8, !dbg !4674, !alias.scope !4671
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4674
	%14 = bitcast i32* %13 to i8*, !dbg !4674
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #12, !dbg !4674
	call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4675
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4657, metadata !1109), !dbg !4665
	%15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4676
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12, !dbg !4677
	ret i8* %15, !dbg !4678
}
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4679 {
	%3 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4620, metadata !4626), !dbg !4685
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4683, metadata !635), !dbg !4688
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4684, metadata !635), !dbg !4689
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4616, metadata !635) #12, !dbg !4690
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4617, metadata !635) #12, !dbg !4691
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4618, metadata !635) #12, !dbg !4692
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4693
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12, !dbg !4693
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4619, metadata !1109) #12, !dbg !4694
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4625, metadata !635) #12, !dbg !4695
	%6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4696
	call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4696
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4620, metadata !635) #12, !dbg !4685
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4620, metadata !4636) #12, !dbg !4685
	call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4685
	%7 = icmp eq i32 %0, 10, !dbg !4697
	br i1 %7, label %8, label %9, !dbg !4698
	tail call void @abort() #15, !dbg !4699, !noalias !4700
	unreachable, !dbg !4699
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4620, metadata !4636) #12, !dbg !4685
	%10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4703
	store i32 %0, i32* %10, align 8, !dbg !4703, !alias.scope !4700
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4703
	%12 = bitcast i32* %11 to i8*, !dbg !4703
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #12, !dbg !4703
	call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4704
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4619, metadata !1109) #12, !dbg !4694
	%13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !4705
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12, !dbg !4706
	ret i8* %13, !dbg !4707
}
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4708 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4620, metadata !4626), !dbg !4715
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4712, metadata !635), !dbg !4718
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4713, metadata !635), !dbg !4719
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4714, metadata !635), !dbg !4720
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4653, metadata !635) #12, !dbg !4721
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4654, metadata !635) #12, !dbg !4722
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4655, metadata !635) #12, !dbg !4723
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4656, metadata !635) #12, !dbg !4724
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4725
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12, !dbg !4725
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4657, metadata !1109) #12, !dbg !4726
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4625, metadata !635) #12, !dbg !4727
	%7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4728
	call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4728
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4620, metadata !635) #12, !dbg !4715
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4620, metadata !4636) #12, !dbg !4715
	call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4715
	%8 = icmp eq i32 %0, 10, !dbg !4729
	br i1 %8, label %9, label %10, !dbg !4730
	tail call void @abort() #15, !dbg !4731, !noalias !4732
	unreachable, !dbg !4731
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4620, metadata !4636) #12, !dbg !4715
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4735
	store i32 %0, i32* %11, align 8, !dbg !4735, !alias.scope !4732
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4735
	%13 = bitcast i32* %12 to i8*, !dbg !4735
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #12, !dbg !4735
	call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4736
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4657, metadata !1109) #12, !dbg !4726
	%14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #12, !dbg !4737
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12, !dbg !4738
	ret i8* %14, !dbg !4739
}
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4740 {
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4744, metadata !635), !dbg !4748
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4745, metadata !635), !dbg !4749
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4746, metadata !635), !dbg !4750
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4751
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12, !dbg !4751
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4752, !tbaa.struct !4753
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4747, metadata !1109), !dbg !4754
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3211, metadata !635), !dbg !4755
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3212, metadata !635), !dbg !4757
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3213, metadata !635), !dbg !4758
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3214, metadata !635), !dbg !4759
	%6 = lshr i8 %2, 5, !dbg !4760
	%7 = zext i8 %6 to i64, !dbg !4760
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4761
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3215, metadata !635), !dbg !4762
	%9 = and i8 %2, 31, !dbg !4763
	%10 = zext i8 %9 to i32, !dbg !4764
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3217, metadata !635), !dbg !4765
	%11 = load i32, i32* %8, align 4, !dbg !4766, !tbaa !736
	%12 = lshr i32 %11, %10, !dbg !4767
	%13 = and i32 %12, 1, !dbg !4768
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3218, metadata !635), !dbg !4769
	%14 = xor i32 %13, 1, !dbg !4770
	%15 = shl i32 %14, %10, !dbg !4771
	%16 = xor i32 %15, %11, !dbg !4772
	store i32 %16, i32* %8, align 4, !dbg !4772, !tbaa !736
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4747, metadata !1109), !dbg !4754
	%17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4773
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12, !dbg !4774
	ret i8* %17, !dbg !4775
}
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4776 {
	%3 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4780, metadata !635), !dbg !4782
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4781, metadata !635), !dbg !4783
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4744, metadata !635) #12, !dbg !4784
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4745, metadata !635) #12, !dbg !4786
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4746, metadata !635) #12, !dbg !4787
	%4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4788
	call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #12, !dbg !4788
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !4789, !tbaa.struct !4753
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4747, metadata !1109) #12, !dbg !4790
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3211, metadata !635) #12, !dbg !4791
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3212, metadata !635) #12, !dbg !4793
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3213, metadata !635) #12, !dbg !4794
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3214, metadata !635) #12, !dbg !4795
	%5 = lshr i8 %1, 5, !dbg !4796
	%6 = zext i8 %5 to i64, !dbg !4796
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4797
	tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !3215, metadata !635) #12, !dbg !4798
	%8 = and i8 %1, 31, !dbg !4799
	%9 = zext i8 %8 to i32, !dbg !4800
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3217, metadata !635) #12, !dbg !4801
	%10 = load i32, i32* %7, align 4, !dbg !4802, !tbaa !736
	%11 = lshr i32 %10, %9, !dbg !4803
	%12 = and i32 %11, 1, !dbg !4804
	tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !3218, metadata !635) #12, !dbg !4805
	%13 = xor i32 %12, 1, !dbg !4806
	%14 = shl i32 %13, %9, !dbg !4807
	%15 = xor i32 %14, %10, !dbg !4808
	store i32 %15, i32* %7, align 4, !dbg !4808, !tbaa !736
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4747, metadata !1109) #12, !dbg !4790
	%16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !4809
	call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #12, !dbg !4810
	ret i8* %16, !dbg !4811
}
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4812 {
	%2 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4814, metadata !635), !dbg !4815
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4780, metadata !635) #12, !dbg !4816
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4781, metadata !635) #12, !dbg !4818
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4744, metadata !635) #12, !dbg !4819
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4745, metadata !635) #12, !dbg !4821
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4746, metadata !635) #12, !dbg !4822
	%3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4823
	call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #12, !dbg !4823
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !4824, !tbaa.struct !4753
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4747, metadata !1109) #12, !dbg !4825
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3211, metadata !635) #12, !dbg !4826
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3212, metadata !635) #12, !dbg !4828
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3213, metadata !635) #12, !dbg !4829
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3214, metadata !635) #12, !dbg !4830
	%4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4831
	tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !3215, metadata !635) #12, !dbg !4832
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3217, metadata !635) #12, !dbg !4833
	%5 = load i32, i32* %4, align 4, !dbg !4834, !tbaa !736
	%6 = or i32 %5, 67108864, !dbg !4835
	store i32 %6, i32* %4, align 4, !dbg !4835, !tbaa !736
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4747, metadata !1109) #12, !dbg !4825
	%7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !4836
	call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #12, !dbg !4837
	ret i8* %7, !dbg !4838
}
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4839 {
	%3 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4841, metadata !635), !dbg !4843
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4842, metadata !635), !dbg !4844
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4744, metadata !635) #12, !dbg !4845
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4745, metadata !635) #12, !dbg !4847
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4746, metadata !635) #12, !dbg !4848
	%4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4849
	call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #12, !dbg !4849
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !4850, !tbaa.struct !4753
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4747, metadata !1109) #12, !dbg !4851
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3211, metadata !635) #12, !dbg !4852
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3212, metadata !635) #12, !dbg !4854
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3213, metadata !635) #12, !dbg !4855
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3214, metadata !635) #12, !dbg !4856
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4857
	tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3215, metadata !635) #12, !dbg !4858
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3217, metadata !635) #12, !dbg !4859
	%6 = load i32, i32* %5, align 4, !dbg !4860, !tbaa !736
	%7 = or i32 %6, 67108864, !dbg !4861
	store i32 %7, i32* %5, align 4, !dbg !4861, !tbaa !736
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4747, metadata !1109) #12, !dbg !4851
	%8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !4862
	call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #12, !dbg !4863
	ret i8* %8, !dbg !4864
}
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4865 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4620, metadata !4626), !dbg !4871
	%5 = alloca %struct.quoting_options, align 8
	%6 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4867, metadata !635), !dbg !4873
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4868, metadata !635), !dbg !4874
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4869, metadata !635), !dbg !4875
	%7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4876
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12, !dbg !4876
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4625, metadata !635) #12, !dbg !4877
	%8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4878
	call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4878
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4620, metadata !635) #12, !dbg !4871
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4620, metadata !4636) #12, !dbg !4871
	call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4871
	%9 = icmp eq i32 %1, 10, !dbg !4879
	br i1 %9, label %10, label %11, !dbg !4880
	tail call void @abort() #15, !dbg !4881, !noalias !4882
	unreachable, !dbg !4881
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4620, metadata !4636) #12, !dbg !4871
	%12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4885
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4885
	call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4886
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4887
	store i32 %1, i32* %13, align 8, !dbg !4887
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4887
	%15 = bitcast i32* %14 to i8*, !dbg !4887
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4887
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4870, metadata !1109), !dbg !4888
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3211, metadata !635), !dbg !4889
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3212, metadata !635), !dbg !4891
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3213, metadata !635), !dbg !4892
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3214, metadata !635), !dbg !4893
	%16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4894
	tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !3215, metadata !635), !dbg !4895
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3217, metadata !635), !dbg !4896
	%17 = load i32, i32* %16, align 4, !dbg !4897, !tbaa !736
	%18 = or i32 %17, 67108864, !dbg !4898
	store i32 %18, i32* %16, align 4, !dbg !4898, !tbaa !736
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4870, metadata !1109), !dbg !4888
	%19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4899
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12, !dbg !4900
	ret i8* %19, !dbg !4901
}
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4902 {
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4906, metadata !635), !dbg !4910
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4907, metadata !635), !dbg !4911
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4908, metadata !635), !dbg !4912
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4909, metadata !635), !dbg !4913
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4914, metadata !635) #12, !dbg !4924
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4919, metadata !635) #12, !dbg !4926
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4920, metadata !635) #12, !dbg !4927
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4921, metadata !635) #12, !dbg !4928
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4922, metadata !635) #12, !dbg !4929
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4930
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12, !dbg !4930
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !4931, !tbaa.struct !4753
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4923, metadata !1109) #12, !dbg !4932
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3261, metadata !635) #12, !dbg !4933
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3262, metadata !635) #12, !dbg !4935
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3263, metadata !635) #12, !dbg !4936
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3261, metadata !635) #12, !dbg !4933
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3261, metadata !635) #12, !dbg !4933
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4937
	store i32 10, i32* %7, align 8, !dbg !4938, !tbaa !3191
	%8 = icmp ne i8* %1, null, !dbg !4939
	%9 = icmp ne i8* %2, null, !dbg !4940
	%10 = and i1 %8, %9, !dbg !4941
	br i1 %10, label %12, label %11, !dbg !4941
	tail call void @abort() #15, !dbg !4942
	unreachable, !dbg !4942
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4943
	store i8* %1, i8** %13, align 8, !dbg !4944, !tbaa !3280
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4945
	store i8* %2, i8** %14, align 8, !dbg !4946, !tbaa !3283
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4923, metadata !1109) #12, !dbg !4932
	%15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !4947
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12, !dbg !4948
	ret i8* %15, !dbg !4949
}
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4915 {
	%6 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4914, metadata !635), !dbg !4950
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4919, metadata !635), !dbg !4951
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4920, metadata !635), !dbg !4952
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4921, metadata !635), !dbg !4953
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4922, metadata !635), !dbg !4954
	%7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4955
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #12, !dbg !4955
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4956, !tbaa.struct !4753
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4923, metadata !1109), !dbg !4957
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3261, metadata !635) #12, !dbg !4958
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3262, metadata !635) #12, !dbg !4960
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3263, metadata !635) #12, !dbg !4961
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3261, metadata !635) #12, !dbg !4958
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3261, metadata !635) #12, !dbg !4958
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4962
	store i32 10, i32* %8, align 8, !dbg !4963, !tbaa !3191
	%9 = icmp ne i8* %1, null, !dbg !4964
	%10 = icmp ne i8* %2, null, !dbg !4965
	%11 = and i1 %9, %10, !dbg !4966
	br i1 %11, label %13, label %12, !dbg !4966
	tail call void @abort() #15, !dbg !4967
	unreachable, !dbg !4967
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4968
	store i8* %1, i8** %14, align 8, !dbg !4969, !tbaa !3280
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4970
	store i8* %2, i8** %15, align 8, !dbg !4971, !tbaa !3283
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4923, metadata !1109), !dbg !4957
	%16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4972
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #12, !dbg !4973
	ret i8* %16, !dbg !4974
}
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4975 {
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4979, metadata !635), !dbg !4982
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4980, metadata !635), !dbg !4983
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4981, metadata !635), !dbg !4984
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4906, metadata !635) #12, !dbg !4985
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4907, metadata !635) #12, !dbg !4987
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4908, metadata !635) #12, !dbg !4988
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4909, metadata !635) #12, !dbg !4989
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4914, metadata !635) #12, !dbg !4990
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4919, metadata !635) #12, !dbg !4992
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4920, metadata !635) #12, !dbg !4993
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4921, metadata !635) #12, !dbg !4994
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4922, metadata !635) #12, !dbg !4995
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4996
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #12, !dbg !4996
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !4997, !tbaa.struct !4753
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4923, metadata !1109) #12, !dbg !4998
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3261, metadata !635) #12, !dbg !4999
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3262, metadata !635) #12, !dbg !5001
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3263, metadata !635) #12, !dbg !5002
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3261, metadata !635) #12, !dbg !4999
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3261, metadata !635) #12, !dbg !4999
	%6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !5003
	store i32 10, i32* %6, align 8, !dbg !5004, !tbaa !3191
	%7 = icmp ne i8* %0, null, !dbg !5005
	%8 = icmp ne i8* %1, null, !dbg !5006
	%9 = and i1 %7, %8, !dbg !5007
	br i1 %9, label %11, label %10, !dbg !5007
	tail call void @abort() #15, !dbg !5008
	unreachable, !dbg !5008
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !5009
	store i8* %0, i8** %12, align 8, !dbg !5010, !tbaa !3280
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !5011
	store i8* %1, i8** %13, align 8, !dbg !5012, !tbaa !3283
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4923, metadata !1109) #12, !dbg !4998
	%14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !5013
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #12, !dbg !5014
	ret i8* %14, !dbg !5015
}
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !5016 {
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5020, metadata !635), !dbg !5024
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5021, metadata !635), !dbg !5025
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5022, metadata !635), !dbg !5026
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5023, metadata !635), !dbg !5027
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4914, metadata !635) #12, !dbg !5028
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4919, metadata !635) #12, !dbg !5030
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4920, metadata !635) #12, !dbg !5031
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4921, metadata !635) #12, !dbg !5032
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4922, metadata !635) #12, !dbg !5033
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !5034
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #12, !dbg !5034
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #12, !dbg !5035, !tbaa.struct !4753
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4923, metadata !1109) #12, !dbg !5036
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3261, metadata !635) #12, !dbg !5037
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3262, metadata !635) #12, !dbg !5039
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3263, metadata !635) #12, !dbg !5040
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3261, metadata !635) #12, !dbg !5037
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3261, metadata !635) #12, !dbg !5037
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !5041
	store i32 10, i32* %7, align 8, !dbg !5042, !tbaa !3191
	%8 = icmp ne i8* %0, null, !dbg !5043
	%9 = icmp ne i8* %1, null, !dbg !5044
	%10 = and i1 %8, %9, !dbg !5045
	br i1 %10, label %12, label %11, !dbg !5045
	tail call void @abort() #15, !dbg !5046
	unreachable, !dbg !5046
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !5047
	store i8* %0, i8** %13, align 8, !dbg !5048, !tbaa !3280
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !5049
	store i8* %1, i8** %14, align 8, !dbg !5050, !tbaa !3283
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4923, metadata !1109) #12, !dbg !5036
	%15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !5051
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #12, !dbg !5052
	ret i8* %15, !dbg !5053
}
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !5054 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5058, metadata !635), !dbg !5061
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5059, metadata !635), !dbg !5062
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5060, metadata !635), !dbg !5063
	%4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !5064
	ret i8* %4, !dbg !5065
}
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !5066 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5070, metadata !635), !dbg !5072
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5071, metadata !635), !dbg !5073
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5058, metadata !635) #12, !dbg !5074
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5059, metadata !635) #12, !dbg !5076
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5060, metadata !635) #12, !dbg !5077
	%3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !5078
	ret i8* %3, !dbg !5079
}
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !5080 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5084, metadata !635), !dbg !5086
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5085, metadata !635), !dbg !5087
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5058, metadata !635) #12, !dbg !5088
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5059, metadata !635) #12, !dbg !5090
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5060, metadata !635) #12, !dbg !5091
	%3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !5092
	ret i8* %3, !dbg !5093
}
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !5094 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5098, metadata !635), !dbg !5099
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5084, metadata !635) #12, !dbg !5100
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5085, metadata !635) #12, !dbg !5102
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5058, metadata !635) #12, !dbg !5103
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5059, metadata !635) #12, !dbg !5105
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5060, metadata !635) #12, !dbg !5106
	%2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !5107
	ret i8* %2, !dbg !5108
}
define zeroext i1 @same_name(i8*, i8*) local_unnamed_addr #6 !dbg !5109 {
	%3 = alloca %struct.stat, align 8
	%4 = alloca %struct.stat, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5114, metadata !635), !dbg !5150
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5115, metadata !635), !dbg !5151
	%5 = tail call i8* @last_component(i8* %0) #14, !dbg !5152
	tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5116, metadata !635), !dbg !5153
	%6 = tail call i8* @last_component(i8* %1) #14, !dbg !5154
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5117, metadata !635), !dbg !5155
	%7 = tail call i64 @base_len(i8* %5) #14, !dbg !5156
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5118, metadata !635), !dbg !5157
	%8 = tail call i64 @base_len(i8* %6) #14, !dbg !5158
	tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5119, metadata !635), !dbg !5159
	%9 = icmp eq i64 %7, %8, !dbg !5160
	br i1 %9, label %10, label %43, !dbg !5161
	%11 = tail call i32 @memcmp(i8* %5, i8* %6, i64 %7) #14, !dbg !5162
	%12 = icmp eq i32 %11, 0, !dbg !5164
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5122, metadata !635), !dbg !5165
	br i1 %12, label %13, label %43, !dbg !5166
	%14 = bitcast %struct.stat* %3 to i8*, !dbg !5167
	call void @llvm.lifetime.start(i64 144, i8* nonnull %14) #12, !dbg !5167
	%15 = bitcast %struct.stat* %4 to i8*, !dbg !5168
	call void @llvm.lifetime.start(i64 144, i8* nonnull %15) #12, !dbg !5168
	%16 = tail call i8* @dir_name(i8* %0) #12, !dbg !5169
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5148, metadata !635), !dbg !5170
	%17 = tail call i8* @dir_name(i8* %1) #12, !dbg !5171
	tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !5149, metadata !635), !dbg !5172
	tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !5123, metadata !1109), !dbg !5173
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5174, metadata !635) #12, !dbg !5181
	tail call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !5180, metadata !635) #12, !dbg !5181
	%18 = call i32 @__xstat(i32 1, i8* nonnull %16, %struct.stat* nonnull %3) #12, !dbg !5184
	%19 = icmp eq i32 %18, 0, !dbg !5185
	br i1 %19, label %23, label %20, !dbg !5186
	%21 = tail call i32* @__errno_location() #1, !dbg !5187
	%22 = load i32, i32* %21, align 4, !dbg !5187, !tbaa !736
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* %16) #12, !dbg !5189
	br label %23, !dbg !5191
	call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !5147, metadata !1109), !dbg !5192
	call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !5174, metadata !635) #12, !dbg !5193
	call void @llvm.dbg.value(metadata %struct.stat* %4, i64 0, metadata !5180, metadata !635) #12, !dbg !5193
	%24 = call i32 @__xstat(i32 1, i8* nonnull %17, %struct.stat* nonnull %4) #12, !dbg !5196
	%25 = icmp eq i32 %24, 0, !dbg !5197
	br i1 %25, label %29, label %26, !dbg !5198
	%27 = tail call i32* @__errno_location() #1, !dbg !5199
	%28 = load i32, i32* %27, align 4, !dbg !5199, !tbaa !736
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* %17) #12, !dbg !5201
	br label %29, !dbg !5203
	%30 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 1, !dbg !5204
	%31 = load i64, i64* %30, align 8, !dbg !5204, !tbaa !1403
	%32 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1, !dbg !5204
	%33 = load i64, i64* %32, align 8, !dbg !5204, !tbaa !1403
	%34 = icmp eq i64 %31, %33, !dbg !5204
	br i1 %34, label %35, label %41, !dbg !5204
	%36 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0, !dbg !5205
	%37 = load i64, i64* %36, align 8, !dbg !5205, !tbaa !1408
	%38 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0, !dbg !5205
	%39 = load i64, i64* %38, align 8, !dbg !5205, !tbaa !1408
	%40 = icmp eq i64 %37, %39, !dbg !5205
	br label %41
	%42 = phi i1 [ false, %29 ], [ %40, %35 ]
	call void @free(i8* %16) #12, !dbg !5207
	call void @free(i8* %17) #12, !dbg !5208
	call void @llvm.lifetime.end(i64 144, i8* nonnull %15) #12, !dbg !5209
	call void @llvm.lifetime.end(i64 144, i8* nonnull %14) #12, !dbg !5209
	br label %43, !dbg !5210
	%44 = phi i1 [ %42, %41 ], [ false, %10 ], [ false, %2 ]
	ret i1 %44, !dbg !5211
}
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !5212 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5257, metadata !635), !dbg !5263
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5258, metadata !635), !dbg !5264
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5259, metadata !635), !dbg !5265
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5260, metadata !635), !dbg !5266
	tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5261, metadata !635), !dbg !5267
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !5262, metadata !635), !dbg !5268
	%7 = icmp eq i8* %1, null, !dbg !5269
	br i1 %7, label %10, label %8, !dbg !5271
	%9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !5272
	br label %12, !dbg !5272
	%11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.100, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !5273
	br label %12
	%13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.101, i64 0, i64 0), i32 5) #12, !dbg !5274
	%14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12, !dbg !5275
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.102, i64 0, i64 0), i32 5) #12, !dbg !5277
	%16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #12, !dbg !5278
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
	], !dbg !5279
	tail call void @abort() #15, !dbg !5280
	unreachable, !dbg !5280
	%19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.103, i64 0, i64 0), i32 5) #12, !dbg !5282
	%20 = load i8*, i8** %4, align 8, !dbg !5282, !tbaa !643
	%21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !5283
	br label %146, !dbg !5285
	%23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.104, i64 0, i64 0), i32 5) #12, !dbg !5286
	%24 = load i8*, i8** %4, align 8, !dbg !5286, !tbaa !643
	%25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5286
	%26 = load i8*, i8** %25, align 8, !dbg !5286, !tbaa !643
	%27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !5287
	br label %146, !dbg !5288
	%29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.105, i64 0, i64 0), i32 5) #12, !dbg !5289
	%30 = load i8*, i8** %4, align 8, !dbg !5289, !tbaa !643
	%31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5289
	%32 = load i8*, i8** %31, align 8, !dbg !5289, !tbaa !643
	%33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5289
	%34 = load i8*, i8** %33, align 8, !dbg !5289, !tbaa !643
	%35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !5290
	br label %146, !dbg !5291
	%37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.106, i64 0, i64 0), i32 5) #12, !dbg !5292
	%38 = load i8*, i8** %4, align 8, !dbg !5292, !tbaa !643
	%39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5292
	%40 = load i8*, i8** %39, align 8, !dbg !5292, !tbaa !643
	%41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5292
	%42 = load i8*, i8** %41, align 8, !dbg !5292, !tbaa !643
	%43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5292
	%44 = load i8*, i8** %43, align 8, !dbg !5292, !tbaa !643
	%45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !5293
	br label %146, !dbg !5294
	%47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.107, i64 0, i64 0), i32 5) #12, !dbg !5295
	%48 = load i8*, i8** %4, align 8, !dbg !5295, !tbaa !643
	%49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5295
	%50 = load i8*, i8** %49, align 8, !dbg !5295, !tbaa !643
	%51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5295
	%52 = load i8*, i8** %51, align 8, !dbg !5295, !tbaa !643
	%53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5295
	%54 = load i8*, i8** %53, align 8, !dbg !5295, !tbaa !643
	%55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5295
	%56 = load i8*, i8** %55, align 8, !dbg !5295, !tbaa !643
	%57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !5296
	br label %146, !dbg !5297
	%59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.108, i64 0, i64 0), i32 5) #12, !dbg !5298
	%60 = load i8*, i8** %4, align 8, !dbg !5298, !tbaa !643
	%61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5298
	%62 = load i8*, i8** %61, align 8, !dbg !5298, !tbaa !643
	%63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5298
	%64 = load i8*, i8** %63, align 8, !dbg !5298, !tbaa !643
	%65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5298
	%66 = load i8*, i8** %65, align 8, !dbg !5298, !tbaa !643
	%67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5298
	%68 = load i8*, i8** %67, align 8, !dbg !5298, !tbaa !643
	%69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5298
	%70 = load i8*, i8** %69, align 8, !dbg !5298, !tbaa !643
	%71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !5299
	br label %146, !dbg !5300
	%73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.109, i64 0, i64 0), i32 5) #12, !dbg !5301
	%74 = load i8*, i8** %4, align 8, !dbg !5301, !tbaa !643
	%75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5301
	%76 = load i8*, i8** %75, align 8, !dbg !5301, !tbaa !643
	%77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5301
	%78 = load i8*, i8** %77, align 8, !dbg !5301, !tbaa !643
	%79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5301
	%80 = load i8*, i8** %79, align 8, !dbg !5301, !tbaa !643
	%81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5301
	%82 = load i8*, i8** %81, align 8, !dbg !5301, !tbaa !643
	%83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5301
	%84 = load i8*, i8** %83, align 8, !dbg !5301, !tbaa !643
	%85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5301
	%86 = load i8*, i8** %85, align 8, !dbg !5301, !tbaa !643
	%87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !5302
	br label %146, !dbg !5303
	%89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.110, i64 0, i64 0), i32 5) #12, !dbg !5304
	%90 = load i8*, i8** %4, align 8, !dbg !5304, !tbaa !643
	%91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5304
	%92 = load i8*, i8** %91, align 8, !dbg !5304, !tbaa !643
	%93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5304
	%94 = load i8*, i8** %93, align 8, !dbg !5304, !tbaa !643
	%95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5304
	%96 = load i8*, i8** %95, align 8, !dbg !5304, !tbaa !643
	%97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5304
	%98 = load i8*, i8** %97, align 8, !dbg !5304, !tbaa !643
	%99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5304
	%100 = load i8*, i8** %99, align 8, !dbg !5304, !tbaa !643
	%101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5304
	%102 = load i8*, i8** %101, align 8, !dbg !5304, !tbaa !643
	%103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5304
	%104 = load i8*, i8** %103, align 8, !dbg !5304, !tbaa !643
	%105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !5305
	br label %146, !dbg !5306
	%107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.111, i64 0, i64 0), i32 5) #12, !dbg !5307
	%108 = load i8*, i8** %4, align 8, !dbg !5307, !tbaa !643
	%109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5307
	%110 = load i8*, i8** %109, align 8, !dbg !5307, !tbaa !643
	%111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5307
	%112 = load i8*, i8** %111, align 8, !dbg !5307, !tbaa !643
	%113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5307
	%114 = load i8*, i8** %113, align 8, !dbg !5307, !tbaa !643
	%115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5307
	%116 = load i8*, i8** %115, align 8, !dbg !5307, !tbaa !643
	%117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5307
	%118 = load i8*, i8** %117, align 8, !dbg !5307, !tbaa !643
	%119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5307
	%120 = load i8*, i8** %119, align 8, !dbg !5307, !tbaa !643
	%121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5307
	%122 = load i8*, i8** %121, align 8, !dbg !5307, !tbaa !643
	%123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5307
	%124 = load i8*, i8** %123, align 8, !dbg !5307, !tbaa !643
	%125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !5308
	br label %146, !dbg !5309
	%127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.112, i64 0, i64 0), i32 5) #12, !dbg !5310
	%128 = load i8*, i8** %4, align 8, !dbg !5310, !tbaa !643
	%129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5310
	%130 = load i8*, i8** %129, align 8, !dbg !5310, !tbaa !643
	%131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5310
	%132 = load i8*, i8** %131, align 8, !dbg !5310, !tbaa !643
	%133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5310
	%134 = load i8*, i8** %133, align 8, !dbg !5310, !tbaa !643
	%135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5310
	%136 = load i8*, i8** %135, align 8, !dbg !5310, !tbaa !643
	%137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5310
	%138 = load i8*, i8** %137, align 8, !dbg !5310, !tbaa !643
	%139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5310
	%140 = load i8*, i8** %139, align 8, !dbg !5310, !tbaa !643
	%141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5310
	%142 = load i8*, i8** %141, align 8, !dbg !5310, !tbaa !643
	%143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5310
	%144 = load i8*, i8** %143, align 8, !dbg !5310, !tbaa !643
	%145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !5311
	br label %146, !dbg !5312
	ret void, !dbg !5313
}
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !5314 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5318, metadata !635), !dbg !5324
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5319, metadata !635), !dbg !5325
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5320, metadata !635), !dbg !5326
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5321, metadata !635), !dbg !5327
	tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5322, metadata !635), !dbg !5328
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5323, metadata !635), !dbg !5329
	br label %6, !dbg !5330
	%7 = phi i64 [ 0, %5 ], [ %11, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5323, metadata !635), !dbg !5329
	%8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !5332
	%9 = load i8*, i8** %8, align 8, !dbg !5332, !tbaa !643
	%10 = icmp eq i8* %9, null, !dbg !5335
	%11 = add i64 %7, 1, !dbg !5337
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5323, metadata !635), !dbg !5329
	br i1 %10, label %12, label %6, !dbg !5335, !llvm.loop !5339
	tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !5342
	ret void, !dbg !5343
}
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !5344 {
	%6 = alloca [10 x i8*], align 16
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5355, metadata !635), !dbg !5363
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5356, metadata !635), !dbg !5364
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5357, metadata !635), !dbg !5365
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5358, metadata !635), !dbg !5366
	tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !5359, metadata !635), !dbg !5367
	%7 = bitcast [10 x i8*]* %6 to i8*, !dbg !5368
	call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #12, !dbg !5368
	tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !5361, metadata !635), !dbg !5369
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5360, metadata !635), !dbg !5370
	%8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
	%9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
	%10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
	%11 = load i32, i32* %8, align 8, !dbg !5371
	%12 = icmp ult i32 %11, 41, !dbg !5371
	br i1 %12, label %13, label %18, !dbg !5371
	%14 = load i8*, i8** %9, align 8, !dbg !5375
	%15 = sext i32 %11 to i64, !dbg !5375
	%16 = getelementptr i8, i8* %14, i64 %15, !dbg !5375
	%17 = add i32 %11, 8, !dbg !5375
	store i32 %17, i32* %8, align 8, !dbg !5375
	br label %21, !dbg !5375
	%19 = load i8*, i8** %10, align 8, !dbg !5377
	%20 = getelementptr i8, i8* %19, i64 8, !dbg !5377
	store i8* %20, i8** %10, align 8, !dbg !5377
	br label %21, !dbg !5377
	%22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !5371
	%23 = phi i8* [ %16, %13 ], [ %19, %18 ]
	%24 = bitcast i8* %23 to i8**, !dbg !5379
	%25 = load i8*, i8** %24, align 8, !dbg !5379
	%26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !5381
	store i8* %25, i8** %26, align 16, !dbg !5382, !tbaa !643
	%27 = icmp eq i8* %25, null, !dbg !5383
	br i1 %27, label %30, label %28, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%29 = icmp ult i32 %22, 41, !dbg !5371
	br i1 %29, label %35, label %32, !dbg !5371
	%31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
	call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !5386
	call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #12, !dbg !5387
	ret void, !dbg !5387
	%33 = load i8*, i8** %10, align 8, !dbg !5377
	%34 = getelementptr i8, i8* %33, i64 8, !dbg !5377
	store i8* %34, i8** %10, align 8, !dbg !5377
	br label %40, !dbg !5377
	%36 = load i8*, i8** %9, align 8, !dbg !5375
	%37 = sext i32 %22 to i64, !dbg !5375
	%38 = getelementptr i8, i8* %36, i64 %37, !dbg !5375
	%39 = add i32 %22, 8, !dbg !5375
	store i32 %39, i32* %8, align 8, !dbg !5375
	br label %40, !dbg !5375
	%41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !5371
	%42 = phi i8* [ %38, %35 ], [ %33, %32 ]
	%43 = bitcast i8* %42 to i8**, !dbg !5379
	%44 = load i8*, i8** %43, align 8, !dbg !5379
	%45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !5381
	store i8* %44, i8** %45, align 8, !dbg !5382, !tbaa !643
	%46 = icmp eq i8* %44, null, !dbg !5383
	br i1 %46, label %30, label %47, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%48 = icmp ult i32 %41, 41, !dbg !5371
	br i1 %48, label %52, label %49, !dbg !5371
	%50 = load i8*, i8** %10, align 8, !dbg !5377
	%51 = getelementptr i8, i8* %50, i64 8, !dbg !5377
	store i8* %51, i8** %10, align 8, !dbg !5377
	br label %57, !dbg !5377
	%53 = load i8*, i8** %9, align 8, !dbg !5375
	%54 = sext i32 %41 to i64, !dbg !5375
	%55 = getelementptr i8, i8* %53, i64 %54, !dbg !5375
	%56 = add i32 %41, 8, !dbg !5375
	store i32 %56, i32* %8, align 8, !dbg !5375
	br label %57, !dbg !5375
	%58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !5371
	%59 = phi i8* [ %55, %52 ], [ %50, %49 ]
	%60 = bitcast i8* %59 to i8**, !dbg !5379
	%61 = load i8*, i8** %60, align 8, !dbg !5379
	%62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !5381
	store i8* %61, i8** %62, align 16, !dbg !5382, !tbaa !643
	%63 = icmp eq i8* %61, null, !dbg !5383
	br i1 %63, label %30, label %64, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%65 = icmp ult i32 %58, 41, !dbg !5371
	br i1 %65, label %69, label %66, !dbg !5371
	%67 = load i8*, i8** %10, align 8, !dbg !5377
	%68 = getelementptr i8, i8* %67, i64 8, !dbg !5377
	store i8* %68, i8** %10, align 8, !dbg !5377
	br label %74, !dbg !5377
	%70 = load i8*, i8** %9, align 8, !dbg !5375
	%71 = sext i32 %58 to i64, !dbg !5375
	%72 = getelementptr i8, i8* %70, i64 %71, !dbg !5375
	%73 = add i32 %58, 8, !dbg !5375
	store i32 %73, i32* %8, align 8, !dbg !5375
	br label %74, !dbg !5375
	%75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !5371
	%76 = phi i8* [ %72, %69 ], [ %67, %66 ]
	%77 = bitcast i8* %76 to i8**, !dbg !5379
	%78 = load i8*, i8** %77, align 8, !dbg !5379
	%79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !5381
	store i8* %78, i8** %79, align 8, !dbg !5382, !tbaa !643
	%80 = icmp eq i8* %78, null, !dbg !5383
	br i1 %80, label %30, label %81, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%82 = icmp ult i32 %75, 41, !dbg !5371
	br i1 %82, label %86, label %83, !dbg !5371
	%84 = load i8*, i8** %10, align 8, !dbg !5377
	%85 = getelementptr i8, i8* %84, i64 8, !dbg !5377
	store i8* %85, i8** %10, align 8, !dbg !5377
	br label %91, !dbg !5377
	%87 = load i8*, i8** %9, align 8, !dbg !5375
	%88 = sext i32 %75 to i64, !dbg !5375
	%89 = getelementptr i8, i8* %87, i64 %88, !dbg !5375
	%90 = add i32 %75, 8, !dbg !5375
	store i32 %90, i32* %8, align 8, !dbg !5375
	br label %91, !dbg !5375
	%92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !5371
	%93 = phi i8* [ %89, %86 ], [ %84, %83 ]
	%94 = bitcast i8* %93 to i8**, !dbg !5379
	%95 = load i8*, i8** %94, align 8, !dbg !5379
	%96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !5381
	store i8* %95, i8** %96, align 16, !dbg !5382, !tbaa !643
	%97 = icmp eq i8* %95, null, !dbg !5383
	br i1 %97, label %30, label %98, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%99 = icmp ult i32 %92, 41, !dbg !5371
	br i1 %99, label %103, label %100, !dbg !5371
	%101 = load i8*, i8** %10, align 8, !dbg !5377
	%102 = getelementptr i8, i8* %101, i64 8, !dbg !5377
	store i8* %102, i8** %10, align 8, !dbg !5377
	br label %108, !dbg !5377
	%104 = load i8*, i8** %9, align 8, !dbg !5375
	%105 = sext i32 %92 to i64, !dbg !5375
	%106 = getelementptr i8, i8* %104, i64 %105, !dbg !5375
	%107 = add i32 %92, 8, !dbg !5375
	store i32 %107, i32* %8, align 8, !dbg !5375
	br label %108, !dbg !5375
	%109 = phi i8* [ %106, %103 ], [ %101, %100 ]
	%110 = bitcast i8* %109 to i8**, !dbg !5379
	%111 = load i8*, i8** %110, align 8, !dbg !5379
	%112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !5381
	store i8* %111, i8** %112, align 8, !dbg !5382, !tbaa !643
	%113 = icmp eq i8* %111, null, !dbg !5383
	br i1 %113, label %30, label %114, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%115 = load i8*, i8** %10, align 8, !dbg !5377
	%116 = getelementptr i8, i8* %115, i64 8, !dbg !5377
	store i8* %116, i8** %10, align 8, !dbg !5377
	%117 = bitcast i8* %115 to i8**, !dbg !5379
	%118 = load i8*, i8** %117, align 8, !dbg !5379
	%119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !5381
	store i8* %118, i8** %119, align 16, !dbg !5382, !tbaa !643
	%120 = icmp eq i8* %118, null, !dbg !5383
	br i1 %120, label %30, label %121, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%122 = load i8*, i8** %10, align 8, !dbg !5377
	%123 = getelementptr i8, i8* %122, i64 8, !dbg !5377
	store i8* %123, i8** %10, align 8, !dbg !5377
	%124 = bitcast i8* %122 to i8**, !dbg !5379
	%125 = load i8*, i8** %124, align 8, !dbg !5379
	%126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !5381
	store i8* %125, i8** %126, align 8, !dbg !5382, !tbaa !643
	%127 = icmp eq i8* %125, null, !dbg !5383
	br i1 %127, label %30, label %128, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%129 = load i8*, i8** %10, align 8, !dbg !5377
	%130 = getelementptr i8, i8* %129, i64 8, !dbg !5377
	store i8* %130, i8** %10, align 8, !dbg !5377
	%131 = bitcast i8* %129 to i8**, !dbg !5379
	%132 = load i8*, i8** %131, align 8, !dbg !5379
	%133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !5381
	store i8* %132, i8** %133, align 16, !dbg !5382, !tbaa !643
	%134 = icmp eq i8* %132, null, !dbg !5383
	br i1 %134, label %30, label %135, !dbg !5384
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%136 = load i8*, i8** %10, align 8, !dbg !5377
	%137 = getelementptr i8, i8* %136, i64 8, !dbg !5377
	store i8* %137, i8** %10, align 8, !dbg !5377
	%138 = bitcast i8* %136 to i8**, !dbg !5379
	%139 = load i8*, i8** %138, align 8, !dbg !5379
	%140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !5381
	store i8* %139, i8** %140, align 8, !dbg !5382, !tbaa !643
	%141 = icmp eq i8* %139, null, !dbg !5383
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5360, metadata !635), !dbg !5370
	%142 = select i1 %141, i64 9, i64 10, !dbg !5384
	br label %30, !dbg !5384
}
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !5388 {
	%5 = alloca [1 x %struct.__va_list_tag], align 16
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5392, metadata !635), !dbg !5402
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5393, metadata !635), !dbg !5403
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5394, metadata !635), !dbg !5404
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5395, metadata !635), !dbg !5405
	%6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !5406
	call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #12, !dbg !5406
	tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !5396, metadata !635), !dbg !5407
	%7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !5408
	call void @llvm.va_start(i8* nonnull %6), !dbg !5408
	call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !5409
	call void @llvm.va_end(i8* nonnull %6), !dbg !5410
	call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #12, !dbg !5411
	ret void, !dbg !5411
}
declare void @llvm.va_start(i8*) #12
declare void @llvm.va_end(i8*) #12
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !5412 {
	%1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #12, !dbg !5413
	%2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.116, i64 0, i64 0)) #12, !dbg !5414
	%3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.117, i64 0, i64 0), i32 5) #12, !dbg !5416
	%4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.118, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.119, i64 0, i64 0)) #12, !dbg !5417
	%5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !5418
	%6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !5418, !tbaa !643
	%7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #12, !dbg !5419
	ret void, !dbg !5420
}
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !5421 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5425, metadata !635), !dbg !5427
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5426, metadata !635), !dbg !5428
	%3 = udiv i64 9223372036854775807, %1, !dbg !5429
	%4 = icmp ult i64 %3, %0, !dbg !5429
	br i1 %4, label %5, label %6, !dbg !5431
	tail call void @xalloc_die() #15, !dbg !5432
	unreachable, !dbg !5432
	%7 = mul i64 %1, %0, !dbg !5433
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5434, metadata !635) #12, !dbg !5441
	%8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !5443
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5440, metadata !635) #12, !dbg !5444
	%9 = icmp eq i8* %8, null, !dbg !5445
	%10 = icmp ne i64 %7, 0, !dbg !5447
	%11 = and i1 %10, %9, !dbg !5449
	br i1 %11, label %12, label %13, !dbg !5449
	tail call void @xalloc_die() #15, !dbg !5450
	unreachable, !dbg !5450
	ret i8* %8, !dbg !5451
}
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !5435 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5434, metadata !635), !dbg !5452
	%2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !5453
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5440, metadata !635), !dbg !5454
	%3 = icmp eq i8* %2, null, !dbg !5455
	%4 = icmp ne i64 %0, 0, !dbg !5456
	%5 = and i1 %4, %3, !dbg !5457
	br i1 %5, label %6, label %7, !dbg !5457
	tail call void @xalloc_die() #15, !dbg !5458
	unreachable, !dbg !5458
	ret i8* %2, !dbg !5459
}
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !5460 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5464, metadata !635), !dbg !5467
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5465, metadata !635), !dbg !5468
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5466, metadata !635), !dbg !5469
	%4 = udiv i64 9223372036854775807, %2, !dbg !5470
	%5 = icmp ult i64 %4, %1, !dbg !5470
	br i1 %5, label %6, label %7, !dbg !5472
	tail call void @xalloc_die() #15, !dbg !5473
	unreachable, !dbg !5473
	%8 = mul i64 %2, %1, !dbg !5474
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5475, metadata !635) #12, !dbg !5481
	tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5480, metadata !635) #12, !dbg !5483
	%9 = icmp eq i64 %8, 0, !dbg !5484
	%10 = icmp ne i8* %0, null, !dbg !5486
	%11 = and i1 %10, %9, !dbg !5488
	br i1 %11, label %12, label %13, !dbg !5488
	tail call void @free(i8* nonnull %0) #12, !dbg !5489
	br label %19, !dbg !5491
	%14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !5492
	tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5475, metadata !635) #12, !dbg !5481
	%15 = icmp eq i8* %14, null, !dbg !5493
	%16 = icmp ne i64 %8, 0, !dbg !5495
	%17 = and i1 %16, %15, !dbg !5497
	br i1 %17, label %18, label %19, !dbg !5497
	tail call void @xalloc_die() #15, !dbg !5498
	unreachable, !dbg !5498
	%20 = phi i8* [ null, %12 ], [ %14, %13 ]
	ret i8* %20, !dbg !5499
}
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !5476 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5475, metadata !635), !dbg !5500
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5480, metadata !635), !dbg !5501
	%3 = icmp eq i64 %1, 0, !dbg !5502
	%4 = icmp ne i8* %0, null, !dbg !5503
	%5 = and i1 %4, %3, !dbg !5504
	br i1 %5, label %6, label %7, !dbg !5504
	tail call void @free(i8* nonnull %0) #12, !dbg !5505
	br label %13, !dbg !5506
	%8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !5507
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5475, metadata !635), !dbg !5500
	%9 = icmp eq i8* %8, null, !dbg !5508
	%10 = icmp ne i64 %1, 0, !dbg !5509
	%11 = and i1 %10, %9, !dbg !5510
	br i1 %11, label %12, label %13, !dbg !5510
	tail call void @xalloc_die() #15, !dbg !5511
	unreachable, !dbg !5511
	%14 = phi i8* [ null, %6 ], [ %8, %7 ]
	ret i8* %14, !dbg !5512
}
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !584 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !589, metadata !635), !dbg !5513
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !590, metadata !635), !dbg !5514
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !591, metadata !635), !dbg !5515
	%4 = load i64, i64* %1, align 8, !dbg !5516, !tbaa !2432
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !592, metadata !635), !dbg !5517
	%5 = icmp eq i8* %0, null, !dbg !5518
	br i1 %5, label %6, label %13, !dbg !5520
	%7 = icmp eq i64 %4, 0, !dbg !5521
	br i1 %7, label %8, label %17, !dbg !5524
	%9 = udiv i64 128, %2, !dbg !5525
	tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !592, metadata !635), !dbg !5517
	%10 = icmp ugt i64 %2, 128, !dbg !5527
	%11 = zext i1 %10 to i64, !dbg !5527
	%12 = add nuw nsw i64 %9, %11, !dbg !5528
	tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !592, metadata !635), !dbg !5517
	br label %17, !dbg !5529
	%14 = udiv i64 6148914691236517204, %2, !dbg !5530
	%15 = icmp ugt i64 %14, %4, !dbg !5533
	br i1 %15, label %20, label %16, !dbg !5534
	tail call void @xalloc_die() #15, !dbg !5535
	unreachable, !dbg !5535
	%18 = phi i64 [ %12, %8 ], [ %4, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !592, metadata !635), !dbg !5517
	store i64 %18, i64* %1, align 8, !dbg !5536, !tbaa !2432
	%19 = mul i64 %18, %2, !dbg !5537
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5475, metadata !635) #12, !dbg !5538
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5480, metadata !635) #12, !dbg !5540
	br label %27, !dbg !5541
	%21 = lshr i64 %4, 1, !dbg !5542
	%22 = add i64 %4, 1, !dbg !5543
	%23 = add i64 %22, %21, !dbg !5544
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !592, metadata !635), !dbg !5517
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !592, metadata !635), !dbg !5517
	store i64 %23, i64* %1, align 8, !dbg !5536, !tbaa !2432
	%24 = mul i64 %23, %2, !dbg !5537
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5475, metadata !635) #12, !dbg !5538
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5480, metadata !635) #12, !dbg !5540
	%25 = icmp eq i64 %24, 0, !dbg !5545
	br i1 %25, label %26, label %27, !dbg !5541
	tail call void @free(i8* nonnull %0) #12, !dbg !5546
	br label %34, !dbg !5547
	%28 = phi i64 [ %19, %17 ], [ %24, %20 ]
	%29 = tail call i8* @realloc(i8* %0, i64 %28) #12, !dbg !5548
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5475, metadata !635) #12, !dbg !5538
	%30 = icmp eq i8* %29, null, !dbg !5549
	%31 = icmp ne i64 %28, 0, !dbg !5550
	%32 = and i1 %31, %30, !dbg !5551
	br i1 %32, label %33, label %34, !dbg !5551
	tail call void @xalloc_die() #15, !dbg !5552
	unreachable, !dbg !5552
	%35 = phi i8* [ null, %26 ], [ %29, %27 ]
	ret i8* %35, !dbg !5553
}
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !5554 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5556, metadata !635), !dbg !5557
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5434, metadata !635) #12, !dbg !5558
	%2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !5560
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5440, metadata !635) #12, !dbg !5561
	%3 = icmp eq i8* %2, null, !dbg !5562
	%4 = icmp ne i64 %0, 0, !dbg !5563
	%5 = and i1 %4, %3, !dbg !5564
	br i1 %5, label %6, label %7, !dbg !5564
	tail call void @xalloc_die() #15, !dbg !5565
	unreachable, !dbg !5565
	ret i8* %2, !dbg !5566
}
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5567 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5571, metadata !635), !dbg !5573
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5572, metadata !635), !dbg !5574
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !589, metadata !635) #12, !dbg !5575
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !590, metadata !635) #12, !dbg !5577
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !591, metadata !635) #12, !dbg !5578
	%3 = load i64, i64* %1, align 8, !dbg !5579, !tbaa !2432
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !592, metadata !635) #12, !dbg !5580
	%4 = icmp eq i8* %0, null, !dbg !5581
	br i1 %4, label %5, label %8, !dbg !5582
	%6 = icmp eq i64 %3, 0, !dbg !5583
	tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !592, metadata !635) #12, !dbg !5580
	tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !592, metadata !635) #12, !dbg !5580
	%7 = select i1 %6, i64 128, i64 %3, !dbg !5584
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !592, metadata !635) #12, !dbg !5580
	store i64 %7, i64* %1, align 8, !dbg !5585, !tbaa !2432
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5475, metadata !635) #12, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5480, metadata !635) #12, !dbg !5588
	br label %17, !dbg !5589
	%9 = icmp ult i64 %3, 6148914691236517204, !dbg !5590
	br i1 %9, label %11, label %10, !dbg !5591
	tail call void @xalloc_die() #15, !dbg !5592
	unreachable, !dbg !5592
	%12 = lshr i64 %3, 1, !dbg !5593
	%13 = add i64 %3, 1, !dbg !5594
	%14 = add i64 %13, %12, !dbg !5595
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !592, metadata !635) #12, !dbg !5580
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !592, metadata !635) #12, !dbg !5580
	store i64 %14, i64* %1, align 8, !dbg !5585, !tbaa !2432
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5475, metadata !635) #12, !dbg !5586
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5480, metadata !635) #12, !dbg !5588
	%15 = icmp eq i64 %14, 0, !dbg !5596
	br i1 %15, label %16, label %17, !dbg !5589
	tail call void @free(i8* nonnull %0) #12, !dbg !5597
	br label %24, !dbg !5598
	%18 = phi i64 [ %7, %5 ], [ %14, %11 ]
	%19 = tail call i8* @realloc(i8* %0, i64 %18) #12, !dbg !5599
	tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5475, metadata !635) #12, !dbg !5586
	%20 = icmp eq i8* %19, null, !dbg !5600
	%21 = icmp ne i64 %18, 0, !dbg !5601
	%22 = and i1 %21, %20, !dbg !5602
	br i1 %22, label %23, label %24, !dbg !5602
	tail call void @xalloc_die() #15, !dbg !5603
	unreachable, !dbg !5603
	%25 = phi i8* [ null, %16 ], [ %19, %17 ]
	ret i8* %25, !dbg !5604
}
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5605 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5607, metadata !635), !dbg !5608
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5434, metadata !635) #12, !dbg !5609
	%2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !5611
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5440, metadata !635) #12, !dbg !5612
	%3 = icmp eq i8* %2, null, !dbg !5613
	%4 = icmp ne i64 %0, 0, !dbg !5614
	%5 = and i1 %4, %3, !dbg !5615
	br i1 %5, label %6, label %7, !dbg !5615
	tail call void @xalloc_die() #15, !dbg !5616
	unreachable, !dbg !5616
	tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5617
	ret i8* %2, !dbg !5618
}
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5619 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5621, metadata !635), !dbg !5624
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5622, metadata !635), !dbg !5625
	%3 = udiv i64 9223372036854775807, %1, !dbg !5626
	%4 = icmp ult i64 %3, %0, !dbg !5626
	br i1 %4, label %8, label %5, !dbg !5628
	%6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !5629
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5623, metadata !635), !dbg !5631
	%7 = icmp eq i8* %6, null, !dbg !5632
	br i1 %7, label %8, label %9, !dbg !5633
	tail call void @xalloc_die() #15, !dbg !5635
	unreachable, !dbg !5635
	ret i8* %6, !dbg !5636
}
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5637 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5641, metadata !635), !dbg !5643
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5642, metadata !635), !dbg !5644
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5434, metadata !635) #12, !dbg !5645
	%3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !5647
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5440, metadata !635) #12, !dbg !5648
	%4 = icmp eq i8* %3, null, !dbg !5649
	%5 = icmp ne i64 %1, 0, !dbg !5650
	%6 = and i1 %5, %4, !dbg !5651
	br i1 %6, label %7, label %8, !dbg !5651
	tail call void @xalloc_die() #15, !dbg !5652
	unreachable, !dbg !5652
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5653
	ret i8* %3, !dbg !5654
}
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5655 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5657, metadata !635), !dbg !5658
	%2 = tail call i64 @strlen(i8* %0) #14, !dbg !5659
	%3 = add i64 %2, 1, !dbg !5660
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5641, metadata !635) #12, !dbg !5661
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5642, metadata !635) #12, !dbg !5664
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5434, metadata !635) #12, !dbg !5665
	%4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !5667
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5440, metadata !635) #12, !dbg !5668
	%5 = icmp eq i8* %4, null, !dbg !5669
	%6 = icmp ne i64 %3, 0, !dbg !5670
	%7 = and i1 %6, %5, !dbg !5671
	br i1 %7, label %8, label %9, !dbg !5671
	tail call void @xalloc_die() #15, !dbg !5672
	unreachable, !dbg !5672
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #12, !dbg !5673
	ret i8* %4, !dbg !5674
}
define void @xalloc_die() local_unnamed_addr #0 !dbg !5675 {
	%1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5677, !tbaa !736
	%2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.132, i64 0, i64 0), i32 5) #12, !dbg !5678
	tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* %2) #12, !dbg !5679
	tail call void @abort() #15, !dbg !5681
	unreachable, !dbg !5681
}
define i8* @xgetcwd() local_unnamed_addr #6 !dbg !5682 {
	%1 = tail call i8* @getcwd(i8* null, i64 0) #12, !dbg !5687
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5686, metadata !635), !dbg !5688
	%2 = icmp eq i8* %1, null, !dbg !5689
	br i1 %2, label %3, label %8, !dbg !5691
	%4 = tail call i32* @__errno_location() #1, !dbg !5692
	%5 = load i32, i32* %4, align 4, !dbg !5692, !tbaa !736
	%6 = icmp eq i32 %5, 12, !dbg !5694
	br i1 %6, label %7, label %8, !dbg !5695
	tail call void @xalloc_die() #15, !dbg !5697
	unreachable, !dbg !5697
	ret i8* %1, !dbg !5698
}
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5699 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5702, metadata !635), !dbg !5708
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5703, metadata !635), !dbg !5709
	%3 = icmp eq i64 %0, 0, !dbg !5710
	%4 = icmp eq i64 %1, 0, !dbg !5711
	%5 = or i1 %3, %4, !dbg !5713
	br i1 %5, label %12, label %6, !dbg !5713
	%7 = mul i64 %1, %0, !dbg !5714
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5705, metadata !635), !dbg !5715
	%8 = udiv i64 %7, %1, !dbg !5716
	%9 = icmp eq i64 %8, %0, !dbg !5718
	br i1 %9, label %12, label %10, !dbg !5719
	%11 = tail call i32* @__errno_location() #1, !dbg !5720
	store i32 12, i32* %11, align 4, !dbg !5722, !tbaa !736
	br label %16
	%13 = phi i64 [ 1, %2 ], [ %1, %6 ]
	%14 = phi i64 [ 1, %2 ], [ %0, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5702, metadata !635), !dbg !5708
	tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5703, metadata !635), !dbg !5709
	%15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !5723
	tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5704, metadata !635), !dbg !5724
	br label %16, !dbg !5725
	%17 = phi i8* [ %15, %12 ], [ null, %10 ]
	ret i8* %17, !dbg !5726
}
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5727 {
	%5 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5744, metadata !635), !dbg !5753
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5745, metadata !635), !dbg !5754
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5746, metadata !635), !dbg !5755
	tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5747, metadata !635), !dbg !5756
	%6 = bitcast i32* %5 to i8*, !dbg !5757
	call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #12, !dbg !5757
	%7 = icmp eq i32* %0, null, !dbg !5758
	tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5744, metadata !635), !dbg !5753
	%8 = select i1 %7, i32* %5, i32* %0, !dbg !5760
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5744, metadata !635), !dbg !5753
	%9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !5761
	call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5748, metadata !635), !dbg !5762
	%10 = icmp ugt i64 %9, -3, !dbg !5763
	%11 = icmp ne i64 %2, 0, !dbg !5764
	%12 = and i1 %11, %10, !dbg !5766
	br i1 %12, label %13, label %18, !dbg !5766
	%14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !5767
	br i1 %14, label %18, label %15, !dbg !5769
	%16 = load i8, i8* %1, align 1, !dbg !5771, !tbaa !800
	call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5750, metadata !635), !dbg !5772
	%17 = zext i8 %16 to i32, !dbg !5773
	store i32 %17, i32* %8, align 4, !dbg !5774, !tbaa !736
	br label %18
	%19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
	call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #12, !dbg !5775
	ret i64 %19, !dbg !5775
}
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5776 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5821, metadata !635), !dbg !5826
	%2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !5827
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5828, metadata !635), !dbg !5831
	%3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5833
	%4 = load i32, i32* %3, align 8, !dbg !5833, !tbaa !5834
	%5 = and i32 %4, 32, !dbg !5833
	%6 = icmp eq i32 %5, 0, !dbg !5835
	%7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !5836
	%8 = icmp ne i32 %7, 0, !dbg !5837
	br i1 %6, label %9, label %19, !dbg !5838
	%10 = xor i1 %8, true, !dbg !5840
	%11 = icmp ne i64 %2, 0, !dbg !5840
	%12 = or i1 %11, %10, !dbg !5840
	%13 = sext i1 %8 to i32, !dbg !5840
	br i1 %12, label %22, label %14, !dbg !5840
	%15 = tail call i32* @__errno_location() #1, !dbg !5842
	%16 = load i32, i32* %15, align 4, !dbg !5842, !tbaa !736
	%17 = icmp ne i32 %16, 9, !dbg !5844
	%18 = sext i1 %17 to i32, !dbg !5844
	br label %22, !dbg !5844
	br i1 %8, label %22, label %20, !dbg !5846
	%21 = tail call i32* @__errno_location() #1, !dbg !5848
	store i32 0, i32* %21, align 4, !dbg !5850, !tbaa !736
	br label %22, !dbg !5848
	%23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
	ret i32 %23, !dbg !5851
}
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2
define i8* @dir_name(i8*) local_unnamed_addr #6 !dbg !5852 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5855, metadata !635), !dbg !5857
	%2 = tail call i8* @mdir_name(i8* %0) #12, !dbg !5858
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5856, metadata !635), !dbg !5859
	%3 = icmp eq i8* %2, null, !dbg !5860
	br i1 %3, label %4, label %5, !dbg !5862
	tail call void @xalloc_die() #15, !dbg !5863
	unreachable, !dbg !5863
	ret i8* %2, !dbg !5864
}
define i64 @dir_len(i8*) local_unnamed_addr #10 !dbg !5865 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5870, metadata !635), !dbg !5873
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5871, metadata !635), !dbg !5874
	%2 = load i8, i8* %0, align 1, !dbg !5875, !tbaa !800
	%3 = icmp eq i8 %2, 47, !dbg !5875
	%4 = zext i1 %3 to i64, !dbg !5876
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !5871, metadata !635), !dbg !5874
	%5 = tail call i8* @last_component(i8* %0) #14, !dbg !5878
	%6 = ptrtoint i8* %5 to i64, !dbg !5880
	%7 = ptrtoint i8* %0 to i64, !dbg !5880
	%8 = sub i64 %6, %7, !dbg !5880
	tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5872, metadata !635), !dbg !5881
	br label %9, !dbg !5882
	%10 = phi i64 [ %8, %1 ], [ %13, %12 ]
	tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !5872, metadata !635), !dbg !5881
	%11 = icmp ult i64 %4, %10, !dbg !5883
	br i1 %11, label %12, label %17, !dbg !5885
	%13 = add i64 %10, -1, !dbg !5887
	%14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !5887
	%15 = load i8, i8* %14, align 1, !dbg !5887, !tbaa !800
	%16 = icmp eq i8 %15, 47, !dbg !5887
	br i1 %16, label %9, label %17, !dbg !5889, !llvm.loop !5890
	ret i64 %10, !dbg !5893
}
define noalias i8* @mdir_name(i8*) local_unnamed_addr #6 !dbg !5894 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5896, metadata !635), !dbg !5900
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5870, metadata !635) #12, !dbg !5901
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5871, metadata !635) #12, !dbg !5903
	%2 = load i8, i8* %0, align 1, !dbg !5904, !tbaa !800
	%3 = icmp eq i8 %2, 47, !dbg !5904
	%4 = zext i1 %3 to i64, !dbg !5905
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !5871, metadata !635) #12, !dbg !5903
	%5 = tail call i8* @last_component(i8* %0) #14, !dbg !5906
	%6 = ptrtoint i8* %5 to i64, !dbg !5907
	%7 = ptrtoint i8* %0 to i64, !dbg !5907
	%8 = sub i64 %6, %7, !dbg !5907
	tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5872, metadata !635) #12, !dbg !5908
	br label %9, !dbg !5909
	%10 = phi i64 [ %8, %1 ], [ %13, %12 ]
	tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !5872, metadata !635) #12, !dbg !5908
	%11 = icmp ult i64 %4, %10, !dbg !5910
	br i1 %11, label %12, label %17, !dbg !5911
	%13 = add i64 %10, -1, !dbg !5912
	%14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !5912
	%15 = load i8, i8* %14, align 1, !dbg !5912, !tbaa !800
	%16 = icmp eq i8 %15, 47, !dbg !5912
	br i1 %16, label %9, label %17, !dbg !5913, !llvm.loop !5890
	tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !5897, metadata !635), !dbg !5914
	%18 = icmp eq i64 %10, 0, !dbg !5915
	%19 = zext i1 %18 to i64, !dbg !5916
	%20 = add i64 %10, 1, !dbg !5917
	%21 = add i64 %20, %19, !dbg !5918
	%22 = tail call noalias i8* @malloc(i64 %21) #12, !dbg !5919
	tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !5899, metadata !635), !dbg !5920
	%23 = icmp eq i8* %22, null, !dbg !5921
	br i1 %23, label %29, label %24, !dbg !5923
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %22, i8* nonnull %0, i64 %10, i32 1, i1 false), !dbg !5924
	br i1 %18, label %25, label %26, !dbg !5925
	store i8 46, i8* %22, align 1, !dbg !5926, !tbaa !800
	br label %26, !dbg !5928
	%27 = phi i64 [ 1, %25 ], [ %10, %24 ]
	tail call void @llvm.dbg.value(metadata i64 %27, i64 0, metadata !5897, metadata !635), !dbg !5914
	%28 = getelementptr inbounds i8, i8* %22, i64 %27, !dbg !5929
	store i8 0, i8* %28, align 1, !dbg !5930, !tbaa !800
	br label %29, !dbg !5931
	%30 = phi i8* [ %22, %26 ], [ null, %17 ]
	ret i8* %30, !dbg !5932
}
define i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !5933 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5936, metadata !635), !dbg !5940
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5937, metadata !635), !dbg !5941
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5939, metadata !635), !dbg !5942
	br label %2, !dbg !5943
	%3 = phi i8* [ %0, %1 ], [ %6, %2 ]
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5937, metadata !635), !dbg !5941
	%4 = load i8, i8* %3, align 1, !dbg !5944, !tbaa !800
	%5 = icmp eq i8 %4, 47, !dbg !5944
	%6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !5946
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5937, metadata !635), !dbg !5941
	br i1 %5, label %2, label %7, !dbg !5947, !llvm.loop !5948
	br label %8, !dbg !5942
	%9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !5949
	%10 = phi i8* [ %19, %18 ], [ %3, %7 ]
	%11 = phi i8* [ %21, %18 ], [ %3, %7 ]
	%12 = phi i8 [ %20, %18 ], [ 0, %7 ]
	tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !5939, metadata !635), !dbg !5942
	tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !5938, metadata !635), !dbg !5953
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !5937, metadata !635), !dbg !5941
	switch i8 %9, label %13 [
		i8 0, label %23
		i8 47, label %18
	], !dbg !5954
	%14 = and i8 %12, 1, !dbg !5956
	%15 = icmp eq i8 %14, 0, !dbg !5956
	tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !5937, metadata !635), !dbg !5941
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5939, metadata !635), !dbg !5942
	%16 = select i1 %15, i8* %10, i8* %11, !dbg !5960
	%17 = select i1 %15, i8 %12, i8 0, !dbg !5960
	br label %18, !dbg !5960
	%19 = phi i8* [ %10, %8 ], [ %16, %13 ]
	%20 = phi i8 [ 1, %8 ], [ %17, %13 ]
	tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !5939, metadata !635), !dbg !5942
	tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5937, metadata !635), !dbg !5941
	%21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !5961
	tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !5938, metadata !635), !dbg !5953
	%22 = load i8, i8* %21, align 1, !tbaa !800
	br label %8, !dbg !5963, !llvm.loop !5964
	ret i8* %10, !dbg !5967
}
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !5968 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5970, metadata !635), !dbg !5973
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5972, metadata !635), !dbg !5974
	%2 = tail call i64 @strlen(i8* %0) #14, !dbg !5975
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5971, metadata !635), !dbg !5977
	br label %3, !dbg !5978
	%4 = phi i64 [ %2, %1 ], [ %7, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !5971, metadata !635), !dbg !5977
	%5 = icmp ugt i64 %4, 1, !dbg !5979
	br i1 %5, label %6, label %11, !dbg !5982
	%7 = add i64 %4, -1, !dbg !5983
	%8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !5983
	%9 = load i8, i8* %8, align 1, !dbg !5983, !tbaa !800
	%10 = icmp eq i8 %9, 47, !dbg !5983
	br i1 %10, label %3, label %11, !dbg !5985, !llvm.loop !5987
	ret i64 %4, !dbg !5990
}
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5991 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5996, metadata !635), !dbg !6016
	tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5997, metadata !635), !dbg !6017
	%2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !6018
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5998, metadata !635), !dbg !6019
	%3 = icmp eq i8* %2, null, !dbg !6020
	br i1 %3, label %15, label %4, !dbg !6021
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !6006, metadata !635), !dbg !6022
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6007, metadata !635), !dbg !6023
	%5 = load i8, i8* %2, align 1, !dbg !6024, !tbaa !800
	%6 = icmp eq i8 %5, 67, !dbg !6026
	br i1 %6, label %7, label %11, !dbg !6029
	%8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !6031
	%9 = load i8, i8* %8, align 1, !dbg !6031, !tbaa !800
	%10 = icmp eq i8 %9, 0, !dbg !6034
	br i1 %10, label %14, label %11, !dbg !6036
	tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !6012, metadata !635), !dbg !6038
	%12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0)) #12, !dbg !6039
	%13 = icmp eq i32 %12, 0, !dbg !6041
	br i1 %13, label %14, label %15, !dbg !6043
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5997, metadata !635), !dbg !6017
	br label %15, !dbg !6045
	%16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
	ret i1 %16, !dbg !6046
}
define i64 @hash_pjw(i8* nocapture readonly, i64) local_unnamed_addr #10 !dbg !6047 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6050, metadata !635), !dbg !6054
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6051, metadata !635), !dbg !6055
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6053, metadata !635), !dbg !6056
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6052, metadata !635), !dbg !6057
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6053, metadata !635), !dbg !6056
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6052, metadata !635), !dbg !6057
	%3 = load i8, i8* %0, align 1, !dbg !6058, !tbaa !800
	%4 = icmp eq i8 %3, 0, !dbg !6062
	br i1 %4, label %19, label %5, !dbg !6062
	br label %6, !dbg !6064
	%7 = phi i8 [ %16, %6 ], [ %3, %5 ]
	%8 = phi i64 [ %14, %6 ], [ 0, %5 ]
	%9 = phi i8* [ %15, %6 ], [ %0, %5 ]
	%10 = sext i8 %7 to i64, !dbg !6064
	%11 = shl i64 %8, 9, !dbg !6065
	%12 = lshr i64 %8, 55, !dbg !6066
	%13 = or i64 %11, %12, !dbg !6067
	%14 = add i64 %10, %13, !dbg !6068
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !6053, metadata !635), !dbg !6056
	%15 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !6069
	tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !6052, metadata !635), !dbg !6057
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !6053, metadata !635), !dbg !6056
	tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !6052, metadata !635), !dbg !6057
	%16 = load i8, i8* %15, align 1, !dbg !6058, !tbaa !800
	%17 = icmp eq i8 %16, 0, !dbg !6062
	br i1 %17, label %18, label %6, !dbg !6062, !llvm.loop !6071
	br label %19, !dbg !6074
	%20 = phi i64 [ 0, %2 ], [ %14, %18 ]
	%21 = urem i64 %20, %1, !dbg !6074
	ret i64 %21, !dbg !6075
}
define i8* @locale_charset() local_unnamed_addr #6 !dbg !6076 {
	%1 = alloca [51 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !6088, metadata !635), !dbg !6162
	%2 = alloca [51 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !6155, metadata !635), !dbg !6164
	%3 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !6165
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !6080, metadata !635), !dbg !6166
	%4 = icmp eq i8* %3, null, !dbg !6167
	%5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), i8* %3, !dbg !6169
	tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !6080, metadata !635), !dbg !6166
	%6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !6170, !tbaa !643
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !6102, metadata !635) #12, !dbg !6171
	%7 = icmp eq i8* %6, null, !dbg !6172
	br i1 %7, label %8, label %127, !dbg !6173
	%9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.158, i64 0, i64 0)) #12, !dbg !6174
	tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !6103, metadata !635) #12, !dbg !6175
	%10 = icmp eq i8* %9, null, !dbg !6176
	br i1 %10, label %14, label %11, !dbg !6178
	%12 = load i8, i8* %9, align 1, !dbg !6179, !tbaa !800
	%13 = icmp eq i8 %12, 0, !dbg !6181
	br i1 %13, label %14, label %15, !dbg !6182
	br label %15, !dbg !6184
	%16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.159, i64 0, i64 0), %14 ], [ %9, %11 ]
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !6103, metadata !635) #12, !dbg !6175
	%17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !6185
	tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !6106, metadata !635) #12, !dbg !6186
	tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !6108, metadata !635) #12, !dbg !6187
	%18 = icmp eq i64 %17, 0, !dbg !6188
	br i1 %18, label %24, label %19, !dbg !6189
	%20 = add i64 %17, -1, !dbg !6190
	%21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !6190
	%22 = load i8, i8* %21, align 1, !dbg !6190, !tbaa !800
	%23 = icmp ne i8 %22, 47, !dbg !6192
	br label %24
	%25 = phi i1 [ false, %15 ], [ %23, %19 ]
	%26 = zext i1 %25 to i64, !dbg !6193
	%27 = add i64 %17, 14, !dbg !6194
	%28 = add i64 %27, %26, !dbg !6195
	%29 = tail call noalias i8* @malloc(i64 %28) #12, !dbg !6196
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !6105, metadata !635) #12, !dbg !6197
	%30 = icmp eq i8* %29, null, !dbg !6198
	br i1 %30, label %125, label %31, !dbg !6198
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #12, !dbg !6199
	%32 = getelementptr inbounds i8, i8* %29, i64 %17
	br i1 %25, label %33, label %35, !dbg !6202
	store i8 47, i8* %32, align 1, !dbg !6203, !tbaa !800
	%34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6205
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.160, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !6206
	br label %37, !dbg !6207
	%36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6205
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.160, i64 0, i64 0), i64 14, i32 1, i1 false) #12, !dbg !6206
	br label %37, !dbg !6207
	%38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12, !dbg !6208
	tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !6110, metadata !635) #12, !dbg !6209
	%39 = icmp slt i32 %38, 0, !dbg !6210
	br i1 %39, label %123, label %40, !dbg !6211
	%41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.161, i64 0, i64 0)) #12, !dbg !6212
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6111, metadata !635) #12, !dbg !6213
	%42 = icmp eq %struct._IO_FILE* %41, null, !dbg !6214
	br i1 %42, label %48, label %43, !dbg !6215
	%44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
	%45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
	%46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
	%47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
	br label %50, !dbg !6216
	%49 = tail call i32 @close(i32 %38) #12, !dbg !6217
	br label %123, !dbg !6219
	%51 = phi i64 [ %112, %111 ], [ 0, %43 ]
	%52 = phi i8* [ %113, %111 ], [ null, %43 ]
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6152, metadata !635) #12, !dbg !6216
	call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !6153, metadata !635) #12, !dbg !6220
	call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #12, !dbg !6221
	call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #12, !dbg !6222
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6223, metadata !635) #12, !dbg !6228
	%53 = load i8*, i8** %46, align 8, !dbg !6230, !tbaa !6231
	%54 = load i8*, i8** %47, align 8, !dbg !6230, !tbaa !6232
	%55 = icmp ult i8* %53, %54, !dbg !6230
	br i1 %55, label %58, label %56, !dbg !6230, !prof !795
	%57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !6233
	br label %62, !dbg !6233
	%59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !6235
	store i8* %59, i8** %46, align 8, !dbg !6235, !tbaa !6231
	%60 = load i8, i8* %53, align 1, !dbg !6235, !tbaa !800
	%61 = zext i8 %60 to i32, !dbg !6235
	br label %62, !dbg !6235
	%63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !6237
	call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !6154, metadata !635) #12, !dbg !6239
	switch i32 %63, label %77 [
		i32 -1, label %115
		i32 32, label %111
		i32 10, label %111
		i32 9, label %111
		i32 35, label %64
	], !dbg !6240
	br label %65, !dbg !6241
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6223, metadata !635) #12, !dbg !6241
	%66 = load i8*, i8** %46, align 8, !dbg !6245, !tbaa !6231
	%67 = load i8*, i8** %47, align 8, !dbg !6245, !tbaa !6232
	%68 = icmp ult i8* %66, %67, !dbg !6245
	br i1 %68, label %71, label %69, !dbg !6245, !prof !795
	%70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #12, !dbg !6246
	br label %75, !dbg !6246
	%72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !6247
	store i8* %72, i8** %46, align 8, !dbg !6247, !tbaa !6231
	%73 = load i8, i8* %66, align 1, !dbg !6247, !tbaa !800
	%74 = zext i8 %73 to i32, !dbg !6247
	br label %75, !dbg !6247
	%76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !6248
	call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !6154, metadata !635) #12, !dbg !6239
	switch i32 %76, label %65 [
		i32 -1, label %114
		i32 10, label %110
	], !dbg !6249, !llvm.loop !6251
	%78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #12, !dbg !6254
	%79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.162, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #12, !dbg !6255
	%80 = icmp slt i32 %79, 2, !dbg !6257
	br i1 %80, label %115, label %81, !dbg !6258
	%82 = call i64 @strlen(i8* nonnull %44) #14, !dbg !6259
	call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !6159, metadata !635) #12, !dbg !6260
	%83 = call i64 @strlen(i8* nonnull %45) #14, !dbg !6261
	call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !6160, metadata !635) #12, !dbg !6262
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6161, metadata !635) #12, !dbg !6263
	%84 = icmp eq i64 %51, 0, !dbg !6264
	%85 = add i64 %82, 1
	%86 = add i64 %85, %83
	%87 = add i64 %86, 1
	br i1 %84, label %88, label %91, !dbg !6266
	call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !6153, metadata !635) #12, !dbg !6220
	%89 = add i64 %86, 2, !dbg !6267
	%90 = call noalias i8* @malloc(i64 %89) #12, !dbg !6269
	call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !6152, metadata !635) #12, !dbg !6216
	br label %95, !dbg !6270
	%92 = add i64 %87, %51, !dbg !6271
	call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !6153, metadata !635) #12, !dbg !6220
	%93 = add i64 %92, 1, !dbg !6273
	%94 = call i8* @realloc(i8* %52, i64 %93) #12, !dbg !6274
	call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !6152, metadata !635) #12, !dbg !6216
	br label %95
	%96 = phi i64 [ %87, %88 ], [ %92, %91 ]
	%97 = phi i8* [ %90, %88 ], [ %94, %91 ]
	call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !6152, metadata !635) #12, !dbg !6216
	call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !6153, metadata !635) #12, !dbg !6220
	%98 = icmp eq i8* %97, null, !dbg !6275
	br i1 %98, label %99, label %100, !dbg !6277
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6153, metadata !635) #12, !dbg !6220
	call void @free(i8* %52) #12, !dbg !6278
	br label %116, !dbg !6280
	%101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !6281
	%102 = xor i64 %83, -1, !dbg !6282
	%103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !6282
	%104 = xor i64 %82, -1, !dbg !6283
	%105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !6283
	call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !6284, metadata !635) #12, !dbg !6293
	call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !6292, metadata !635) #12, !dbg !6293
	%106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #12, !dbg !6295
	%107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #12, !dbg !6296
	call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !6284, metadata !635) #12, !dbg !6297
	call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !6292, metadata !635) #12, !dbg !6297
	%108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #12, !dbg !6299
	%109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #12, !dbg !6300
	br label %111, !dbg !6301
	br label %111, !dbg !6216
	%112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
	%113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6152, metadata !635) #12, !dbg !6216
	call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6153, metadata !635) #12, !dbg !6220
	call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #12, !dbg !6301
	call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #12, !dbg !6301
	br label %50
	br label %116, !dbg !6216
	br label %116, !dbg !6216
	%117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
	%118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6152, metadata !635) #12, !dbg !6216
	call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6153, metadata !635) #12, !dbg !6220
	call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #12, !dbg !6301
	call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #12, !dbg !6301
	%119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #12, !dbg !6302
	%120 = icmp eq i64 %117, 0, !dbg !6303
	br i1 %120, label %123, label %121, !dbg !6305
	%122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !6306
	store i8 0, i8* %122, align 1, !dbg !6308, !tbaa !800
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6102, metadata !635) #12, !dbg !6171
	br label %123
	%124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), %116 ]
	call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !6102, metadata !635) #12, !dbg !6171
	call void @free(i8* %29) #12, !dbg !6309
	br label %125
	%126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), %24 ]
	call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !6102, metadata !635) #12, !dbg !6171
	store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !6310, !tbaa !643
	br label %127, !dbg !6311
	%128 = phi i8* [ %6, %0 ], [ %126, %125 ]
	call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !6081, metadata !635), !dbg !6312
	%129 = load i8, i8* %128, align 1, !dbg !6313, !tbaa !800
	%130 = icmp eq i8 %129, 0, !dbg !6314
	br i1 %130, label %157, label %131, !dbg !6315
	br label %132, !dbg !6317
	%133 = phi i8 [ %154, %147 ], [ %129, %131 ]
	%134 = phi i8* [ %153, %147 ], [ %128, %131 ]
	%135 = call i32 @strcmp(i8* %5, i8* %134) #12, !dbg !6317
	%136 = icmp eq i32 %135, 0, !dbg !6318
	br i1 %136, label %143, label %137, !dbg !6319
	%138 = icmp eq i8 %133, 42, !dbg !6320
	br i1 %138, label %139, label %147, !dbg !6322
	%140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !6323
	%141 = load i8, i8* %140, align 1, !dbg !6323, !tbaa !800
	%142 = icmp eq i8 %141, 0, !dbg !6325
	br i1 %142, label %143, label %147, !dbg !6326
	%144 = call i64 @strlen(i8* %134) #14, !dbg !6328
	%145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !6330
	%146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !6331
	call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !6080, metadata !635), !dbg !6166
	br label %157, !dbg !6332
	%148 = call i64 @strlen(i8* %134) #14, !dbg !6333
	%149 = add i64 %148, 1, !dbg !6334
	%150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !6335
	call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !6081, metadata !635), !dbg !6312
	%151 = call i64 @strlen(i8* %150) #14, !dbg !6336
	%152 = add i64 %151, 1, !dbg !6337
	%153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !6338
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6081, metadata !635), !dbg !6312
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6081, metadata !635), !dbg !6312
	%154 = load i8, i8* %153, align 1, !dbg !6313, !tbaa !800
	%155 = icmp eq i8 %154, 0, !dbg !6314
	br i1 %155, label %156, label %132, !dbg !6315, !llvm.loop !6339
	br label %157, !dbg !6166
	%158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
	call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !6080, metadata !635), !dbg !6166
	%159 = load i8, i8* %158, align 1, !dbg !6342, !tbaa !800
	%160 = icmp eq i8 %159, 0, !dbg !6344
	%161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0), i8* %158, !dbg !6345
	call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !6080, metadata !635), !dbg !6166
	ret i8* %161, !dbg !6346
}
declare i8* @nl_langinfo(i32) local_unnamed_addr #2
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4
declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2
declare i32 @close(i32) local_unnamed_addr #3
declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !6347 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6392, metadata !635), !dbg !6396
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6393, metadata !635), !dbg !6397
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6395, metadata !635), !dbg !6398
	%2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !6399
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6394, metadata !635), !dbg !6400
	%3 = icmp slt i32 %2, 0, !dbg !6401
	br i1 %3, label %4, label %6, !dbg !6403
	%5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6404
	br label %24, !dbg !6405
	%7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !6406
	%8 = icmp eq i32 %7, 0, !dbg !6406
	br i1 %8, label %13, label %9, !dbg !6408
	%10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !6409
	%11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !6411
	%12 = icmp eq i64 %11, -1, !dbg !6413
	br i1 %12, label %16, label %13, !dbg !6414
	%14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !6415
	%15 = icmp eq i32 %14, 0, !dbg !6415
	br i1 %15, label %16, label %18, !dbg !6416
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6393, metadata !635), !dbg !6397
	%17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6418
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6395, metadata !635), !dbg !6398
	br label %24, !dbg !6419
	%19 = tail call i32* @__errno_location() #1, !dbg !6420
	%20 = load i32, i32* %19, align 4, !dbg !6420, !tbaa !736
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6393, metadata !635), !dbg !6397
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6393, metadata !635), !dbg !6397
	%21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6418
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6395, metadata !635), !dbg !6398
	%22 = icmp eq i32 %20, 0, !dbg !6421
	br i1 %22, label %24, label %23, !dbg !6419
	store i32 %20, i32* %19, align 4, !dbg !6423, !tbaa !736
	tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !6395, metadata !635), !dbg !6398
	br label %24, !dbg !6425
	%25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
	ret i32 %25, !dbg !6426
}
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !6427 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6472, metadata !635), !dbg !6473
	%2 = icmp eq %struct._IO_FILE* %0, null, !dbg !6474
	br i1 %2, label %6, label %3, !dbg !6476
	%4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !6477
	%5 = icmp eq i32 %4, 0, !dbg !6477
	br i1 %5, label %6, label %8, !dbg !6479
	%7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !6481
	br label %17, !dbg !6482
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6483, metadata !635) #12, !dbg !6488
	%9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6490
	%10 = load i32, i32* %9, align 8, !dbg !6490, !tbaa !5834
	%11 = and i32 %10, 256, !dbg !6492
	%12 = icmp eq i32 %11, 0, !dbg !6492
	br i1 %12, label %15, label %13, !dbg !6493
	%14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !6494
	br label %15, !dbg !6494
	%16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !6495
	br label %17, !dbg !6496
	%18 = phi i32 [ %7, %6 ], [ %16, %15 ]
	ret i32 %18, !dbg !6497
}
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !6498 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6544, metadata !635), !dbg !6550
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6545, metadata !635), !dbg !6551
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6546, metadata !635), !dbg !6552
	%4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !6553
	%5 = load i8*, i8** %4, align 8, !dbg !6553, !tbaa !6232
	%6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !6554
	%7 = load i8*, i8** %6, align 8, !dbg !6554, !tbaa !6231
	%8 = icmp eq i8* %5, %7, !dbg !6555
	br i1 %8, label %9, label %28, !dbg !6556
	%10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !6557
	%11 = load i8*, i8** %10, align 8, !dbg !6557, !tbaa !790
	%12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !6559
	%13 = load i8*, i8** %12, align 8, !dbg !6559, !tbaa !6560
	%14 = icmp eq i8* %11, %13, !dbg !6561
	br i1 %14, label %15, label %28, !dbg !6562
	%16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !6563
	%17 = load i8*, i8** %16, align 8, !dbg !6563, !tbaa !6564
	%18 = icmp eq i8* %17, null, !dbg !6565
	br i1 %18, label %19, label %28, !dbg !6566
	%20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !6568
	%21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !6569
	tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !6547, metadata !635), !dbg !6571
	%22 = icmp eq i64 %21, -1, !dbg !6572
	br i1 %22, label %30, label %23, !dbg !6574
	%24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6575
	%25 = load i32, i32* %24, align 8, !dbg !6576, !tbaa !5834
	%26 = and i32 %25, -17, !dbg !6576
	store i32 %26, i32* %24, align 8, !dbg !6576, !tbaa !5834
	%27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !6577
	store i64 %21, i64* %27, align 8, !dbg !6578, !tbaa !6579
	br label %30, !dbg !6580
	%29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !6581
	br label %30, !dbg !6582
	%31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
	ret i32 %31, !dbg !6583
}
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
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
!llvm.dbg.cu = !{!2, !91, !560, !563, !97, !105, !566, !112, !568, !130, !137, !570, !572, !205, !579, !596, !598, !600, !602, !605, !607, !609, !611, !614, !617, !214, !619, !621, !623}
!llvm.ident = !{!625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625, !625}
!llvm.module.flags = !{!626, !627, !628, !629}
!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !77, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !40)
!3 = !DIFile(filename: "src/readlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "canonicalize_mode_t", file: !6, line: 24, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/canonicalize.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "CAN_EXISTING", value: 0)
!9 = !DIEnumerator(name: "CAN_ALL_BUT_LAST", value: 1)
!10 = !DIEnumerator(name: "CAN_MISSING", value: 2)
!11 = !DIEnumerator(name: "CAN_NOLINKS", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !13, line: 32, size: 32, elements: !14)
!13 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!15 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!16 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!17 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!18 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!19 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!20 = !DIEnumerator(name: "c_quoting_style", value: 5)
!21 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!22 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!23 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!24 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!25 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!26 = !{!27, !29, !30, !33, !35, !38, !37}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 62, baseType: !32)
!31 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!40 = !{!41, !44, !46, !0}
!41 = !DIGlobalVariableExpression(var: !42)
!42 = distinct !DIGlobalVariable(name: "no_newline", scope: !2, file: !3, line: 35, type: !43, isLocal: true, isDefinition: true)
!43 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!44 = !DIGlobalVariableExpression(var: !45)
!45 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 38, type: !43, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47)
!47 = distinct !DIGlobalVariable(name: "infomap", scope: !48, file: !49, line: 632, type: !74, isLocal: true, isDefinition: true)
!48 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !49, file: !49, line: 630, type: !50, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !52)
!49 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !DISubroutineType(types: !51)
!51 = !{null, !38}
!52 = !{!53, !54, !55, !62, !64, !65, !66, !69, !70, !72}
!53 = !DILocalVariable(name: "program", arg: 1, scope: !48, file: !49, line: 630, type: !38)
!54 = !DILocalVariable(name: "node", scope: !48, file: !49, line: 642, type: !38)
!55 = !DILocalVariable(name: "map_prog", scope: !48, file: !49, line: 643, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !48, file: !49, line: 632, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !58, file: !49, line: 632, baseType: !38, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !58, file: !49, line: 632, baseType: !38, size: 64, offset: 64)
!62 = !DILocalVariable(name: "__s1_len", scope: !63, file: !49, line: 645, type: !30)
!63 = distinct !DILexicalBlock(scope: !48, file: !49, line: 645, column: 33)
!64 = !DILocalVariable(name: "__s2_len", scope: !63, file: !49, line: 645, type: !30)
!65 = !DILocalVariable(name: "lc_messages", scope: !48, file: !49, line: 655, type: !38)
!66 = !DILocalVariable(name: "__s1_len", scope: !67, file: !49, line: 656, type: !30)
!67 = distinct !DILexicalBlock(scope: !68, file: !49, line: 656, column: 22)
!68 = distinct !DILexicalBlock(scope: !48, file: !49, line: 656, column: 7)
!69 = !DILocalVariable(name: "__s2_len", scope: !67, file: !49, line: 656, type: !30)
!70 = !DILocalVariable(name: "__s2", scope: !71, file: !49, line: 656, type: !35)
!71 = distinct !DILexicalBlock(scope: !67, file: !49, line: 656, column: 22)
!72 = !DILocalVariable(name: "__result", scope: !71, file: !49, line: 656, type: !73)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 896, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 7)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2816, elements: !87)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !80, line: 104, size: 256, elements: !81)
!80 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!81 = !{!82, !83, !84, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !80, line: 106, baseType: !38, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !79, file: !80, line: 109, baseType: !73, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !79, file: !80, line: 110, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !79, file: !80, line: 111, baseType: !73, size: 32, offset: 192)
!87 = !{!88}
!88 = !DISubrange(count: 11)
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "Version", scope: !91, file: !92, line: 2, type: !38, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, globals: !94)
!92 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!93 = !{}
!94 = !{!89}
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "file_name", scope: !97, file: !102, line: 36, type: !38, isLocal: true, isDefinition: true)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, globals: !99)
!98 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!95, !100}
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !97, file: !102, line: 46, type: !43, isLocal: true, isDefinition: true)
!102 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "exit_failure", scope: !105, file: !108, line: 24, type: !109, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, globals: !107)
!106 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !{!103}
!108 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "default_tuning", scope: !112, file: !116, line: 130, type: !117, isLocal: true, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !114, globals: !115)
!113 = !DIFile(filename: "./lib/hash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!114 = !{!32, !29, !30}
!115 = !{!110}
!116 = !DIFile(filename: "lib/hash.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_tuning", file: !119, line: 65, baseType: !120)
!119 = !DIFile(filename: "./lib/hash.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_tuning", file: !119, line: 53, size: 160, elements: !121)
!121 = !{!122, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "shrink_threshold", scope: !120, file: !119, line: 58, baseType: !123, size: 32)
!123 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "shrink_factor", scope: !120, file: !119, line: 59, baseType: !123, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "growth_threshold", scope: !120, file: !119, line: 60, baseType: !123, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "growth_factor", scope: !120, file: !119, line: 61, baseType: !123, size: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "is_n_buckets", scope: !120, file: !119, line: 62, baseType: !43, size: 8, offset: 128)
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "program_name", scope: !130, file: !134, line: 33, type: !38, isDefinition: true)
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !132, globals: !133)
!131 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!132 = !{!29, !27}
!133 = !{!128}
!134 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !137, file: !165, line: 77, type: !201, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !139, retainedTypes: !160, globals: !162)
!138 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!12, !140, !145}
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !13, line: 242, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!143 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!144 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !146, line: 46, size: 32, elements: !147)
!146 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!148 = !DIEnumerator(name: "_ISupper", value: 256)
!149 = !DIEnumerator(name: "_ISlower", value: 512)
!150 = !DIEnumerator(name: "_ISalpha", value: 1024)
!151 = !DIEnumerator(name: "_ISdigit", value: 2048)
!152 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!153 = !DIEnumerator(name: "_ISspace", value: 8192)
!154 = !DIEnumerator(name: "_ISprint", value: 16384)
!155 = !DIEnumerator(name: "_ISgraph", value: 32768)
!156 = !DIEnumerator(name: "_ISblank", value: 1)
!157 = !DIEnumerator(name: "_IScntrl", value: 2)
!158 = !DIEnumerator(name: "_ISpunct", value: 4)
!159 = !DIEnumerator(name: "_ISalnum", value: 8)
!160 = !{!73, !161, !30, !27}
!161 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!162 = !{!135, !163, !170, !183, !185, !190, !197, !199}
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !137, file: !165, line: 93, type: !166, isDefinition: true)
!165 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 320, elements: !168)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!168 = !{!169}
!169 = !DISubrange(count: 10)
!170 = !DIGlobalVariableExpression(var: !171)
!171 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !137, file: !165, line: 1043, type: !172, isDefinition: true)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !165, line: 57, size: 448, elements: !173)
!173 = !{!174, !175, !176, !181, !182}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !172, file: !165, line: 60, baseType: !12, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !165, line: 63, baseType: !73, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !172, file: !165, line: 67, baseType: !177, size: 256, offset: 64)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !179)
!178 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!179 = !{!180}
!180 = !DISubrange(count: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !172, file: !165, line: 70, baseType: !38, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !172, file: !165, line: 73, baseType: !38, size: 64, offset: 384)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !137, file: !165, line: 108, type: !172, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "slot0", scope: !137, file: !165, line: 834, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 256)
!190 = !DIGlobalVariableExpression(var: !191)
!191 = distinct !DIGlobalVariable(name: "slotvec", scope: !137, file: !165, line: 837, type: !192, isLocal: true, isDefinition: true)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !165, line: 826, size: 128, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !165, line: 828, baseType: !30, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !193, file: !165, line: 829, baseType: !27, size: 64, offset: 64)
!197 = !DIGlobalVariableExpression(var: !198)
!198 = distinct !DIGlobalVariable(name: "nslots", scope: !137, file: !165, line: 835, type: !73, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200)
!200 = distinct !DIGlobalVariable(name: "slotvec0", scope: !137, file: !165, line: 836, type: !193, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 704, elements: !87)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !205, file: !208, line: 26, type: !209, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, globals: !207)
!206 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!207 = !{!203}
!208 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 376, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 47)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !214, file: !558, line: 120, type: !559, isLocal: true, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !216, retainedTypes: !555, globals: !557)
!215 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!216 = !{!217}
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !218, line: 41, size: 32, elements: !219)
!218 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!220 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!221 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!222 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!223 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!224 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!225 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!226 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!227 = !DIEnumerator(name: "DAY_1", value: 131079)
!228 = !DIEnumerator(name: "DAY_2", value: 131080)
!229 = !DIEnumerator(name: "DAY_3", value: 131081)
!230 = !DIEnumerator(name: "DAY_4", value: 131082)
!231 = !DIEnumerator(name: "DAY_5", value: 131083)
!232 = !DIEnumerator(name: "DAY_6", value: 131084)
!233 = !DIEnumerator(name: "DAY_7", value: 131085)
!234 = !DIEnumerator(name: "ABMON_1", value: 131086)
!235 = !DIEnumerator(name: "ABMON_2", value: 131087)
!236 = !DIEnumerator(name: "ABMON_3", value: 131088)
!237 = !DIEnumerator(name: "ABMON_4", value: 131089)
!238 = !DIEnumerator(name: "ABMON_5", value: 131090)
!239 = !DIEnumerator(name: "ABMON_6", value: 131091)
!240 = !DIEnumerator(name: "ABMON_7", value: 131092)
!241 = !DIEnumerator(name: "ABMON_8", value: 131093)
!242 = !DIEnumerator(name: "ABMON_9", value: 131094)
!243 = !DIEnumerator(name: "ABMON_10", value: 131095)
!244 = !DIEnumerator(name: "ABMON_11", value: 131096)
!245 = !DIEnumerator(name: "ABMON_12", value: 131097)
!246 = !DIEnumerator(name: "MON_1", value: 131098)
!247 = !DIEnumerator(name: "MON_2", value: 131099)
!248 = !DIEnumerator(name: "MON_3", value: 131100)
!249 = !DIEnumerator(name: "MON_4", value: 131101)
!250 = !DIEnumerator(name: "MON_5", value: 131102)
!251 = !DIEnumerator(name: "MON_6", value: 131103)
!252 = !DIEnumerator(name: "MON_7", value: 131104)
!253 = !DIEnumerator(name: "MON_8", value: 131105)
!254 = !DIEnumerator(name: "MON_9", value: 131106)
!255 = !DIEnumerator(name: "MON_10", value: 131107)
!256 = !DIEnumerator(name: "MON_11", value: 131108)
!257 = !DIEnumerator(name: "MON_12", value: 131109)
!258 = !DIEnumerator(name: "AM_STR", value: 131110)
!259 = !DIEnumerator(name: "PM_STR", value: 131111)
!260 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!261 = !DIEnumerator(name: "D_FMT", value: 131113)
!262 = !DIEnumerator(name: "T_FMT", value: 131114)
!263 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!264 = !DIEnumerator(name: "ERA", value: 131116)
!265 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!266 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!267 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!268 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!269 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!270 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!271 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!272 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!273 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!274 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!275 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!276 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!277 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!278 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!279 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!280 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!281 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!282 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!283 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!284 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!285 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!286 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!287 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!288 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!289 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!290 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!291 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!292 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!293 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!294 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!295 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!296 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!297 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!298 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!299 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!300 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!301 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!302 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!303 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!304 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!305 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!306 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!307 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!308 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!309 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!310 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!311 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!312 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!313 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!314 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!315 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!316 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!317 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!318 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!319 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!320 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!321 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!322 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!323 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!324 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!325 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!326 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!327 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!328 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!329 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!330 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!331 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!332 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!333 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!334 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!335 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!336 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!337 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!338 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!339 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!340 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!341 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!342 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!343 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!344 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!345 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!346 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!347 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!348 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!349 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!350 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!351 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!352 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!353 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!354 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!355 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!356 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!357 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!358 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!359 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!360 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!361 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!362 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!363 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!364 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!365 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!366 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!367 = !DIEnumerator(name: "CODESET", value: 14)
!368 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!369 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!370 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!371 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!372 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!373 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!374 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!375 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!376 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!377 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!394 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!395 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!396 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!397 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!398 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!399 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!414 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!415 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!416 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!417 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!418 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!419 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!423 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!424 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!425 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!426 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!427 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!428 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!429 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!430 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!439 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!440 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!441 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!442 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!443 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!444 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!445 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!446 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!447 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!448 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!449 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!450 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!451 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!452 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!453 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!454 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!455 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!456 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!457 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!458 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!459 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!460 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!461 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!462 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!463 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!464 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!465 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!466 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!467 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!478 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!479 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!482 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!483 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!484 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!485 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!486 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!487 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!488 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!489 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!490 = !DIEnumerator(name: "THOUSEP", value: 65537)
!491 = !DIEnumerator(name: "__GROUPING", value: 65538)
!492 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!493 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!494 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!495 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!496 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!497 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!498 = !DIEnumerator(name: "__YESSTR", value: 327682)
!499 = !DIEnumerator(name: "__NOSTR", value: 327683)
!500 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!501 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!502 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!503 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!504 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!505 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!506 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!507 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!508 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!509 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!510 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!511 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!512 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!513 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!514 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!515 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!516 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!517 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!518 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!519 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!520 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!522 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!523 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!524 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!525 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!526 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!527 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!528 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!529 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!530 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!531 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!532 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!533 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!534 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!535 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!536 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!537 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!538 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!539 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!540 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!541 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!542 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!553 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!554 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!555 = !{!29, !27, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!557 = !{!212}
!558 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!559 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !562)
!561 = !DIFile(filename: "./lib/areadlink-with-size.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!562 = !{!29}
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !565, retainedTypes: !132)
!564 = !DIFile(filename: "./lib/canonicalize.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !{!5}
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !132)
!567 = !DIFile(filename: "./lib/file-set.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!569 = !DIFile(filename: "./lib/hash-triple.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!571 = !DIFile(filename: "./lib/same.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !574, retainedTypes: !562)
!573 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = !{!575}
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !576, line: 41, size: 32, elements: !577)
!576 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = !{!578}
!578 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !581, retainedTypes: !595)
!580 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!581 = !{!582}
!582 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !584, file: !583, line: 192, size: 32, elements: !593)
!583 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!584 = distinct !DISubprogram(name: "x2nrealloc", scope: !583, file: !583, line: 180, type: !585, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !588)
!585 = !DISubroutineType(types: !586)
!586 = !{!29, !29, !587, !30}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!588 = !{!589, !590, !591, !592}
!589 = !DILocalVariable(name: "p", arg: 1, scope: !584, file: !583, line: 180, type: !29)
!590 = !DILocalVariable(name: "pn", arg: 2, scope: !584, file: !583, line: 180, type: !587)
!591 = !DILocalVariable(name: "s", arg: 3, scope: !584, file: !583, line: 180, type: !30)
!592 = !DILocalVariable(name: "n", scope: !584, file: !583, line: 182, type: !30)
!593 = !{!594}
!594 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!595 = !{!30, !27, !29}
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!597 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!599 = !DIFile(filename: "./lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !562)
!601 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !604)
!603 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !{!30}
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!606 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!608 = !DIFile(filename: "./lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!610 = !DIFile(filename: "./lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !613)
!612 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!613 = !{!27}
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !616)
!615 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!616 = !{!30, !33, !35, !38}
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!618 = !DIFile(filename: "./lib/hash-pjw.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93)
!620 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !562)
!622 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !93, retainedTypes: !562)
!624 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!625 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!626 = !{i32 2, !"Dwarf Version", i32 4}
!627 = !{i32 2, !"Debug Info Version", i32 3}
!628 = !{i32 1, !"PIC Level", i32 2}
!629 = !{i32 1, !"PIE Level", i32 2}
!630 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 56, type: !631, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !73}
!633 = !{!634}
!634 = !DILocalVariable(name: "status", arg: 1, scope: !630, file: !3, line: 56, type: !73)
!635 = !DIExpression()
!636 = !DILocation(line: 56, column: 12, scope: !630)
!637 = !DILocation(line: 58, column: 14, scope: !638)
!638 = distinct !DILexicalBlock(scope: !630, file: !3, line: 58, column: 7)
!639 = !DILocation(line: 58, column: 7, scope: !630)
!640 = !DILocation(line: 59, column: 5, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !3, discriminator: 1)
!642 = distinct !DILexicalBlock(scope: !638, file: !3, line: 59, column: 5)
!643 = !{!644, !644, i64 0}
!644 = !{!"any pointer", !645, i64 0}
!645 = !{!"omnipotent char", !646, i64 0}
!646 = !{!"Simple C/C++ TBAA"}
!647 = !DILocation(line: 59, column: 5, scope: !648)
!648 = !DILexicalBlockFile(scope: !642, file: !3, discriminator: 3)
!649 = !DILocation(line: 59, column: 5, scope: !650)
!650 = !DILexicalBlockFile(scope: !642, file: !3, discriminator: 2)
!651 = !DILocation(line: 62, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !638, file: !3, line: 61, column: 5)
!653 = !DILocation(line: 62, column: 7, scope: !654)
!654 = !DILexicalBlockFile(scope: !652, file: !3, discriminator: 1)
!655 = !DILocation(line: 63, column: 7, scope: !652)
!656 = !DILocation(line: 63, column: 7, scope: !654)
!657 = !DILocation(line: 65, column: 7, scope: !652)
!658 = !DILocation(line: 65, column: 7, scope: !654)
!659 = !DILocation(line: 75, column: 7, scope: !652)
!660 = !DILocation(line: 75, column: 7, scope: !654)
!661 = !DILocation(line: 86, column: 7, scope: !652)
!662 = !DILocation(line: 86, column: 7, scope: !654)
!663 = !DILocation(line: 87, column: 7, scope: !652)
!664 = !DILocation(line: 87, column: 7, scope: !654)
!665 = !DILocation(line: 642, column: 15, scope: !48, inlinedAt: !666)
!666 = distinct !DILocation(line: 88, column: 7, scope: !652)
!667 = !DILocation(line: 651, column: 3, scope: !48, inlinedAt: !666)
!668 = !DILocation(line: 651, column: 3, scope: !669, inlinedAt: !666)
!669 = !DILexicalBlockFile(scope: !48, file: !49, discriminator: 1)
!670 = !DILocation(line: 655, column: 29, scope: !48, inlinedAt: !666)
!671 = !DILocation(line: 655, column: 15, scope: !48, inlinedAt: !666)
!672 = !DILocation(line: 656, column: 7, scope: !68, inlinedAt: !666)
!673 = !DILocation(line: 656, column: 19, scope: !68, inlinedAt: !666)
!674 = !DILocation(line: 656, column: 22, scope: !675, inlinedAt: !666)
!675 = !DILexicalBlockFile(scope: !68, file: !49, discriminator: 16)
!676 = !DILocation(line: 656, column: 7, scope: !677, inlinedAt: !666)
!677 = !DILexicalBlockFile(scope: !48, file: !49, discriminator: 16)
!678 = !DILocation(line: 662, column: 7, scope: !679, inlinedAt: !666)
!679 = distinct !DILexicalBlock(scope: !68, file: !49, line: 657, column: 5)
!680 = !DILocation(line: 662, column: 7, scope: !681, inlinedAt: !666)
!681 = !DILexicalBlockFile(scope: !679, file: !49, discriminator: 1)
!682 = !DILocation(line: 664, column: 5, scope: !679, inlinedAt: !666)
!683 = !DILocation(line: 665, column: 3, scope: !48, inlinedAt: !666)
!684 = !DILocation(line: 665, column: 3, scope: !669, inlinedAt: !666)
!685 = !DILocation(line: 667, column: 3, scope: !48, inlinedAt: !666)
!686 = !DILocation(line: 667, column: 3, scope: !669, inlinedAt: !666)
!687 = !DILocation(line: 90, column: 3, scope: !630)
!688 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 94, type: !689, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !692)
!689 = !DISubroutineType(types: !690)
!690 = !{!73, !73, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !703}
!693 = !DILocalVariable(name: "argc", arg: 1, scope: !688, file: !3, line: 94, type: !73)
!694 = !DILocalVariable(name: "argv", arg: 2, scope: !688, file: !3, line: 94, type: !691)
!695 = !DILocalVariable(name: "can_mode", scope: !688, file: !3, line: 97, type: !73)
!696 = !DILocalVariable(name: "status", scope: !688, file: !3, line: 98, type: !73)
!697 = !DILocalVariable(name: "optc", scope: !688, file: !3, line: 99, type: !73)
!698 = !DILocalVariable(name: "use_nuls", scope: !688, file: !3, line: 100, type: !43)
!699 = !DILocalVariable(name: "fname", scope: !700, file: !3, line: 158, type: !38)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 157, column: 5)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 156, column: 3)
!702 = distinct !DILexicalBlock(scope: !688, file: !3, line: 156, column: 3)
!703 = !DILocalVariable(name: "value", scope: !700, file: !3, line: 159, type: !27)
!704 = !DILocation(line: 94, column: 11, scope: !688)
!705 = !DILocation(line: 94, column: 24, scope: !688)
!706 = !DILocation(line: 97, column: 7, scope: !688)
!707 = !DILocation(line: 98, column: 7, scope: !688)
!708 = !DILocation(line: 100, column: 8, scope: !688)
!709 = !DILocation(line: 103, column: 21, scope: !688)
!710 = !DILocation(line: 103, column: 3, scope: !688)
!711 = !DILocation(line: 104, column: 3, scope: !688)
!712 = !DILocation(line: 105, column: 3, scope: !688)
!713 = !DILocation(line: 106, column: 3, scope: !688)
!714 = !DILocation(line: 108, column: 3, scope: !688)
!715 = !DILocation(line: 110, column: 3, scope: !688)
!716 = !DILocation(line: 110, column: 18, scope: !717)
!717 = !DILexicalBlockFile(scope: !688, file: !3, discriminator: 1)
!718 = !DILocation(line: 99, column: 7, scope: !688)
!719 = !DILocation(line: 110, column: 3, scope: !717)
!720 = distinct !{!720, !715, !721}
!721 = !DILocation(line: 141, column: 5, scope: !688)
!722 = !DILocation(line: 119, column: 11, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 113, column: 9)
!724 = distinct !DILexicalBlock(scope: !688, file: !3, line: 111, column: 5)
!725 = !DILocation(line: 122, column: 11, scope: !723)
!726 = !DILocation(line: 125, column: 11, scope: !723)
!727 = !DILocation(line: 129, column: 11, scope: !723)
!728 = !DILocation(line: 132, column: 11, scope: !723)
!729 = !DILocation(line: 136, column: 9, scope: !723)
!730 = !DILocation(line: 137, column: 9, scope: !723)
!731 = !DILocation(line: 137, column: 9, scope: !732)
!732 = !DILexicalBlockFile(scope: !723, file: !3, discriminator: 1)
!733 = !DILocation(line: 139, column: 11, scope: !723)
!734 = !DILocation(line: 143, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !688, file: !3, line: 143, column: 7)
!736 = !{!737, !737, i64 0}
!737 = !{!"int", !645, i64 0}
!738 = !DILocation(line: 143, column: 14, scope: !735)
!739 = !DILocation(line: 143, column: 7, scope: !688)
!740 = !DILocation(line: 145, column: 20, scope: !741)
!741 = distinct !DILexicalBlock(scope: !735, file: !3, line: 144, column: 5)
!742 = !DILocation(line: 145, column: 7, scope: !743)
!743 = !DILexicalBlockFile(scope: !741, file: !3, discriminator: 1)
!744 = !DILocation(line: 146, column: 7, scope: !741)
!745 = !DILocation(line: 149, column: 12, scope: !746)
!746 = distinct !DILexicalBlock(scope: !688, file: !3, line: 149, column: 7)
!747 = !DILocation(line: 149, column: 21, scope: !746)
!748 = !DILocation(line: 149, column: 7, scope: !688)
!749 = !DILocation(line: 151, column: 11, scope: !750)
!750 = distinct !DILexicalBlock(scope: !746, file: !3, line: 150, column: 5)
!751 = !DILocation(line: 152, column: 22, scope: !752)
!752 = distinct !DILexicalBlock(scope: !750, file: !3, line: 151, column: 11)
!753 = !DILocation(line: 152, column: 9, scope: !754)
!754 = !DILexicalBlockFile(scope: !752, file: !3, discriminator: 1)
!755 = !DILocation(line: 152, column: 9, scope: !752)
!756 = !DILocation(line: 154, column: 5, scope: !750)
!757 = !DILocation(line: 156, column: 10, scope: !758)
!758 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!759 = !DILocation(line: 156, column: 17, scope: !758)
!760 = !DILocation(line: 156, column: 3, scope: !761)
!761 = !DILexicalBlockFile(scope: !702, file: !3, discriminator: 1)
!762 = !DILocation(line: 158, column: 27, scope: !700)
!763 = !DILocation(line: 158, column: 19, scope: !700)
!764 = !DILocation(line: 159, column: 22, scope: !700)
!765 = !DILocation(line: 160, column: 24, scope: !700)
!766 = !DILocation(line: 159, column: 22, scope: !767)
!767 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 1)
!768 = !DILocation(line: 161, column: 24, scope: !700)
!769 = !DILocation(line: 159, column: 22, scope: !770)
!770 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 2)
!771 = !DILocation(line: 159, column: 22, scope: !772)
!772 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 3)
!773 = !DILocation(line: 159, column: 13, scope: !700)
!774 = !DILocation(line: 162, column: 11, scope: !775)
!775 = distinct !DILexicalBlock(scope: !700, file: !3, line: 162, column: 11)
!776 = !DILocation(line: 162, column: 11, scope: !700)
!777 = !DILocation(line: 164, column: 11, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !3, line: 163, column: 9)
!779 = !DILocation(line: 165, column: 15, scope: !778)
!780 = !DILocalVariable(name: "__c", arg: 1, scope: !781, file: !782, line: 105, type: !73)
!781 = distinct !DISubprogram(name: "putchar_unlocked", scope: !782, file: !782, line: 105, type: !783, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !785)
!782 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!783 = !DISubroutineType(types: !784)
!784 = !{!73, !73}
!785 = !{!780}
!786 = !DILocation(line: 105, column: 23, scope: !781, inlinedAt: !787)
!787 = distinct !DILocation(line: 166, column: 13, scope: !788)
!788 = distinct !DILexicalBlock(scope: !778, file: !3, line: 165, column: 15)
!789 = !DILocation(line: 107, column: 10, scope: !781, inlinedAt: !787)
!790 = !{!791, !644, i64 40}
!791 = !{!"_IO_FILE", !737, i64 0, !644, i64 8, !644, i64 16, !644, i64 24, !644, i64 32, !644, i64 40, !644, i64 48, !644, i64 56, !644, i64 64, !644, i64 72, !644, i64 80, !644, i64 88, !644, i64 96, !644, i64 104, !737, i64 112, !737, i64 116, !792, i64 120, !793, i64 128, !645, i64 130, !645, i64 131, !644, i64 136, !792, i64 144, !644, i64 152, !644, i64 160, !644, i64 168, !644, i64 176, !792, i64 184, !737, i64 192, !645, i64 196}
!792 = !{!"long", !645, i64 0}
!793 = !{!"short", !645, i64 0}
!794 = !{!791, !644, i64 48}
!795 = !{!"branch_weights", i32 2000, i32 1}
!796 = !DILocation(line: 107, column: 10, scope: !797, inlinedAt: !787)
!797 = !DILexicalBlockFile(scope: !781, file: !782, discriminator: 1)
!798 = !DILocation(line: 107, column: 10, scope: !799, inlinedAt: !787)
!799 = !DILexicalBlockFile(scope: !781, file: !782, discriminator: 2)
!800 = !{!645, !645, i64 0}
!801 = !DILocation(line: 167, column: 11, scope: !778)
!802 = !DILocation(line: 168, column: 9, scope: !778)
!803 = !DILocation(line: 172, column: 15, scope: !804)
!804 = distinct !DILexicalBlock(scope: !775, file: !3, line: 170, column: 9)
!805 = !DILocation(line: 173, column: 23, scope: !806)
!806 = distinct !DILexicalBlock(scope: !804, file: !3, line: 172, column: 15)
!807 = !DILocation(line: 173, column: 36, scope: !808)
!808 = !DILexicalBlockFile(scope: !806, file: !3, discriminator: 1)
!809 = !DILocation(line: 173, column: 13, scope: !810)
!810 = !DILexicalBlockFile(scope: !806, file: !3, discriminator: 2)
!811 = !DILocation(line: 173, column: 13, scope: !806)
!812 = !DILocation(line: 156, column: 25, scope: !813)
!813 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 2)
!814 = distinct !{!814, !815, !816}
!815 = !DILocation(line: 156, column: 3, scope: !702)
!816 = !DILocation(line: 175, column: 5, scope: !702)
!817 = !DILocation(line: 177, column: 3, scope: !688)
!818 = distinct !DISubprogram(name: "areadlink_with_size", scope: !819, file: !819, line: 52, type: !820, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !560, variables: !822)
!819 = !DIFile(filename: "lib/areadlink-with-size.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!820 = !DISubroutineType(types: !821)
!821 = !{!27, !38, !30}
!822 = !{!823, !824, !825, !826, !827, !828, !829, !836, !837, !838}
!823 = !DILocalVariable(name: "file", arg: 1, scope: !818, file: !819, line: 52, type: !38)
!824 = !DILocalVariable(name: "size", arg: 2, scope: !818, file: !819, line: 52, type: !30)
!825 = !DILocalVariable(name: "symlink_max", scope: !818, file: !819, line: 57, type: !30)
!826 = !DILocalVariable(name: "INITIAL_LIMIT_BOUND", scope: !818, file: !819, line: 58, type: !30)
!827 = !DILocalVariable(name: "initial_limit", scope: !818, file: !819, line: 59, type: !30)
!828 = !DILocalVariable(name: "buf_size", scope: !818, file: !819, line: 64, type: !30)
!829 = !DILocalVariable(name: "r", scope: !830, file: !819, line: 68, type: !831)
!830 = distinct !DILexicalBlock(scope: !818, file: !819, line: 67, column: 5)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !832, line: 109, baseType: !833)
!832 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !834, line: 181, baseType: !835)
!834 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!835 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!836 = !DILocalVariable(name: "link_length", scope: !830, file: !819, line: 69, type: !30)
!837 = !DILocalVariable(name: "buffer", scope: !830, file: !819, line: 70, type: !27)
!838 = !DILocalVariable(name: "saved_errno", scope: !839, file: !819, line: 81, type: !73)
!839 = distinct !DILexicalBlock(scope: !840, file: !819, line: 80, column: 9)
!840 = distinct !DILexicalBlock(scope: !830, file: !819, line: 79, column: 11)
!841 = !DILocation(line: 52, column: 34, scope: !818)
!842 = !DILocation(line: 52, column: 47, scope: !818)
!843 = !DILocation(line: 57, column: 10, scope: !818)
!844 = !DILocation(line: 58, column: 10, scope: !818)
!845 = !DILocation(line: 59, column: 10, scope: !818)
!846 = !DILocation(line: 64, column: 26, scope: !818)
!847 = !DILocation(line: 64, column: 49, scope: !848)
!848 = !DILexicalBlockFile(scope: !818, file: !819, discriminator: 1)
!849 = !DILocation(line: 64, column: 21, scope: !818)
!850 = !DILocation(line: 64, column: 10, scope: !818)
!851 = !DILocation(line: 70, column: 22, scope: !830)
!852 = !DILocation(line: 70, column: 13, scope: !830)
!853 = !DILocation(line: 72, column: 18, scope: !854)
!854 = distinct !DILexicalBlock(scope: !830, file: !819, line: 72, column: 11)
!855 = !DILocation(line: 72, column: 11, scope: !830)
!856 = !DILocation(line: 74, column: 11, scope: !830)
!857 = !DILocation(line: 68, column: 15, scope: !830)
!858 = !DILocation(line: 69, column: 14, scope: !830)
!859 = !DILocation(line: 79, column: 13, scope: !840)
!860 = !DILocation(line: 79, column: 17, scope: !840)
!861 = !DILocation(line: 79, column: 20, scope: !862)
!862 = !DILexicalBlockFile(scope: !840, file: !819, discriminator: 1)
!863 = !DILocation(line: 79, column: 26, scope: !862)
!864 = !DILocation(line: 79, column: 11, scope: !865)
!865 = !DILexicalBlockFile(scope: !830, file: !819, discriminator: 1)
!866 = !DILocation(line: 81, column: 15, scope: !839)
!867 = !DILocation(line: 82, column: 11, scope: !839)
!868 = !DILocation(line: 83, column: 17, scope: !839)
!869 = !DILocation(line: 87, column: 23, scope: !870)
!870 = distinct !DILexicalBlock(scope: !830, file: !819, line: 87, column: 11)
!871 = !DILocation(line: 87, column: 11, scope: !830)
!872 = !DILocation(line: 89, column: 11, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !819, line: 88, column: 9)
!874 = !DILocation(line: 89, column: 31, scope: !873)
!875 = !DILocation(line: 90, column: 11, scope: !873)
!876 = !DILocation(line: 93, column: 7, scope: !830)
!877 = !DILocation(line: 94, column: 20, scope: !878)
!878 = distinct !DILexicalBlock(scope: !830, file: !819, line: 94, column: 11)
!879 = !DILocation(line: 94, column: 11, scope: !830)
!880 = !DILocation(line: 95, column: 18, scope: !878)
!881 = !DILocation(line: 95, column: 9, scope: !878)
!882 = !DILocation(line: 96, column: 25, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !819, line: 96, column: 16)
!884 = !DILocation(line: 96, column: 16, scope: !878)
!885 = !DILocation(line: 100, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !819, line: 99, column: 9)
!887 = !DILocation(line: 100, column: 17, scope: !886)
!888 = !DILocation(line: 101, column: 11, scope: !886)
!889 = !DILocation(line: 104, column: 1, scope: !818)
!890 = distinct !DISubprogram(name: "canonicalize_filename_mode", scope: !891, file: !891, line: 99, type: !892, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !895)
!891 = !DIFile(filename: "lib/canonicalize.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!892 = !DISubroutineType(types: !893)
!893 = !{!27, !38, !894}
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "canonicalize_mode_t", file: !6, line: 38, baseType: !5)
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !909, !910, !911, !912, !913, !918, !963, !967, !968, !971, !972, !973}
!896 = !DILocalVariable(name: "name", arg: 1, scope: !890, file: !891, line: 99, type: !38)
!897 = !DILocalVariable(name: "can_mode", arg: 2, scope: !890, file: !891, line: 99, type: !894)
!898 = !DILocalVariable(name: "rname", scope: !890, file: !891, line: 101, type: !27)
!899 = !DILocalVariable(name: "dest", scope: !890, file: !891, line: 101, type: !27)
!900 = !DILocalVariable(name: "extra_buf", scope: !890, file: !891, line: 101, type: !27)
!901 = !DILocalVariable(name: "start", scope: !890, file: !891, line: 102, type: !38)
!902 = !DILocalVariable(name: "end", scope: !890, file: !891, line: 103, type: !38)
!903 = !DILocalVariable(name: "rname_limit", scope: !890, file: !891, line: 104, type: !38)
!904 = !DILocalVariable(name: "extra_len", scope: !890, file: !891, line: 105, type: !30)
!905 = !DILocalVariable(name: "ht", scope: !890, file: !891, line: 106, type: !906)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_table", file: !119, line: 69, baseType: !908)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !119, line: 67, flags: DIFlagFwdDecl)
!909 = !DILocalVariable(name: "saved_errno", scope: !890, file: !891, line: 107, type: !73)
!910 = !DILocalVariable(name: "can_flags", scope: !890, file: !891, line: 108, type: !73)
!911 = !DILocalVariable(name: "logical", scope: !890, file: !891, line: 109, type: !43)
!912 = !DILocalVariable(name: "prefix_len", scope: !890, file: !891, line: 110, type: !30)
!913 = !DILocalVariable(name: "p", scope: !914, file: !891, line: 144, type: !27)
!914 = distinct !DILexicalBlock(scope: !915, file: !891, line: 143, column: 9)
!915 = distinct !DILexicalBlock(scope: !916, file: !891, line: 142, column: 11)
!916 = distinct !DILexicalBlock(scope: !917, file: !891, line: 137, column: 5)
!917 = distinct !DILexicalBlock(scope: !890, file: !891, line: 136, column: 7)
!918 = !DILocalVariable(name: "st", scope: !919, file: !891, line: 202, type: !926)
!919 = distinct !DILexicalBlock(scope: !920, file: !891, line: 201, column: 9)
!920 = distinct !DILexicalBlock(scope: !921, file: !891, line: 190, column: 16)
!921 = distinct !DILexicalBlock(scope: !922, file: !891, line: 188, column: 16)
!922 = distinct !DILexicalBlock(scope: !923, file: !891, line: 186, column: 11)
!923 = distinct !DILexicalBlock(scope: !924, file: !891, line: 177, column: 5)
!924 = distinct !DILexicalBlock(scope: !925, file: !891, line: 176, column: 3)
!925 = distinct !DILexicalBlock(scope: !890, file: !891, line: 176, column: 3)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !927, line: 46, size: 1152, elements: !928)
!927 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!928 = !{!929, !931, !933, !935, !937, !939, !941, !942, !943, !945, !947, !949, !957, !958, !959}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !926, file: !927, line: 48, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !834, line: 133, baseType: !32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !926, file: !927, line: 53, baseType: !932, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !834, line: 136, baseType: !32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !926, file: !927, line: 61, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !834, line: 139, baseType: !32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !926, file: !927, line: 62, baseType: !936, size: 32, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !834, line: 138, baseType: !178)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !926, file: !927, line: 64, baseType: !938, size: 32, offset: 224)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !834, line: 134, baseType: !178)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !926, file: !927, line: 65, baseType: !940, size: 32, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !834, line: 135, baseType: !178)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !926, file: !927, line: 67, baseType: !73, size: 32, offset: 288)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !926, file: !927, line: 69, baseType: !930, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !926, file: !927, line: 74, baseType: !944, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !834, line: 140, baseType: !835)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !926, file: !927, line: 78, baseType: !946, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !834, line: 162, baseType: !835)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !926, file: !927, line: 80, baseType: !948, size: 64, offset: 512)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !834, line: 167, baseType: !835)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !926, file: !927, line: 91, baseType: !950, size: 128, offset: 576)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !951, line: 8, size: 128, elements: !952)
!951 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!952 = !{!953, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !950, file: !951, line: 10, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !834, line: 148, baseType: !835)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !950, file: !951, line: 11, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !834, line: 184, baseType: !835)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !926, file: !927, line: 92, baseType: !950, size: 128, offset: 704)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !926, file: !927, line: 93, baseType: !950, size: 128, offset: 832)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !926, file: !927, line: 106, baseType: !960, size: 192, offset: 960)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 192, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 3)
!963 = !DILocalVariable(name: "dest_offset", scope: !964, file: !891, line: 209, type: !966)
!964 = distinct !DILexicalBlock(scope: !965, file: !891, line: 208, column: 13)
!965 = distinct !DILexicalBlock(scope: !919, file: !891, line: 207, column: 15)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !31, line: 51, baseType: !835)
!967 = !DILocalVariable(name: "new_size", scope: !964, file: !891, line: 210, type: !30)
!968 = !DILocalVariable(name: "buf", scope: !969, file: !891, line: 249, type: !27)
!969 = distinct !DILexicalBlock(scope: !970, file: !891, line: 248, column: 13)
!970 = distinct !DILexicalBlock(scope: !919, file: !891, line: 247, column: 15)
!971 = !DILocalVariable(name: "n", scope: !969, file: !891, line: 250, type: !30)
!972 = !DILocalVariable(name: "len", scope: !969, file: !891, line: 250, type: !30)
!973 = !DILocalVariable(name: "pfxlen", scope: !974, file: !891, line: 294, type: !30)
!974 = distinct !DILexicalBlock(scope: !975, file: !891, line: 293, column: 17)
!975 = distinct !DILexicalBlock(scope: !969, file: !891, line: 292, column: 19)
!976 = !DILocation(line: 99, column: 41, scope: !890)
!977 = !DILocation(line: 99, column: 67, scope: !890)
!978 = !DILocation(line: 101, column: 24, scope: !890)
!979 = !DILocation(line: 105, column: 10, scope: !890)
!980 = !DILocation(line: 106, column: 15, scope: !890)
!981 = !DILocation(line: 109, column: 28, scope: !890)
!982 = !DILocation(line: 109, column: 18, scope: !890)
!983 = !DILocation(line: 112, column: 12, scope: !890)
!984 = !DILocation(line: 114, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !890, file: !891, line: 114, column: 7)
!986 = !DILocation(line: 114, column: 7, scope: !890)
!987 = !DILocation(line: 116, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !891, line: 115, column: 5)
!989 = !DILocation(line: 116, column: 13, scope: !988)
!990 = !DILocation(line: 117, column: 7, scope: !988)
!991 = !DILocation(line: 120, column: 12, scope: !992)
!992 = distinct !DILexicalBlock(scope: !890, file: !891, line: 120, column: 7)
!993 = !DILocation(line: 120, column: 7, scope: !890)
!994 = !DILocation(line: 122, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !891, line: 121, column: 5)
!996 = !DILocation(line: 122, column: 13, scope: !995)
!997 = !DILocation(line: 123, column: 7, scope: !995)
!998 = !DILocation(line: 126, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !890, file: !891, line: 126, column: 7)
!1000 = !DILocation(line: 126, column: 7, scope: !890)
!1001 = !DILocation(line: 128, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !891, line: 127, column: 5)
!1003 = !DILocation(line: 128, column: 13, scope: !1002)
!1004 = !DILocation(line: 129, column: 7, scope: !1002)
!1005 = !DILocation(line: 138, column: 15, scope: !916)
!1006 = !DILocation(line: 101, column: 9, scope: !890)
!1007 = !DILocation(line: 139, column: 12, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !916, file: !891, line: 139, column: 11)
!1009 = !DILocation(line: 139, column: 11, scope: !916)
!1010 = !DILocation(line: 141, column: 14, scope: !916)
!1011 = !DILocation(line: 101, column: 17, scope: !890)
!1012 = !DILocation(line: 142, column: 16, scope: !915)
!1013 = !DILocation(line: 142, column: 24, scope: !915)
!1014 = !DILocation(line: 142, column: 11, scope: !916)
!1015 = !DILocation(line: 144, column: 21, scope: !914)
!1016 = !DILocation(line: 144, column: 17, scope: !914)
!1017 = !DILocation(line: 145, column: 20, scope: !914)
!1018 = !DILocation(line: 147, column: 31, scope: !914)
!1019 = !DILocation(line: 104, column: 15, scope: !890)
!1020 = !DILocation(line: 148, column: 9, scope: !914)
!1021 = !DILocation(line: 158, column: 15, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !917, file: !891, line: 157, column: 5)
!1023 = !DILocation(line: 159, column: 27, scope: !1022)
!1024 = !DILocation(line: 166, column: 12, scope: !1022)
!1025 = !DILocation(line: 166, column: 15, scope: !1022)
!1026 = !DILocation(line: 102, column: 15, scope: !890)
!1027 = !DILocation(line: 110, column: 10, scope: !890)
!1028 = !DILocation(line: 107, column: 7, scope: !890)
!1029 = !DILocation(line: 176, column: 11, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !924, file: !891, discriminator: 1)
!1031 = !DILocation(line: 176, column: 3, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !925, file: !891, discriminator: 1)
!1033 = !DILocation(line: 179, column: 14, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !923, file: !891, discriminator: 1)
!1035 = !DILocation(line: 180, column: 9, scope: !923)
!1036 = !DILocation(line: 179, column: 7, scope: !1034)
!1037 = distinct !{!1037, !1038, !1039}
!1038 = !DILocation(line: 179, column: 7, scope: !923)
!1039 = !DILocation(line: 180, column: 11, scope: !923)
!1040 = !DILocation(line: 103, column: 15, scope: !890)
!1041 = !DILocation(line: 183, column: 30, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1043, file: !891, discriminator: 1)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !891, line: 183, column: 7)
!1044 = distinct !DILexicalBlock(scope: !923, file: !891, line: 183, column: 7)
!1045 = !DILocation(line: 183, column: 50, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1043, file: !891, discriminator: 5)
!1047 = !DILocation(line: 183, column: 7, scope: !1046)
!1048 = distinct !{!1048, !1049, !1050}
!1049 = !DILocation(line: 183, column: 7, scope: !1044)
!1050 = !DILocation(line: 184, column: 24, scope: !1044)
!1051 = !DILocation(line: 186, column: 15, scope: !922)
!1052 = !DILocation(line: 186, column: 11, scope: !923)
!1053 = !DILocation(line: 188, column: 36, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !921, file: !891, discriminator: 1)
!1055 = !DILocation(line: 188, column: 45, scope: !1054)
!1056 = !DILocation(line: 188, column: 16, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !922, file: !891, discriminator: 1)
!1058 = !DILocation(line: 190, column: 45, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !920, file: !891, discriminator: 1)
!1060 = !DILocation(line: 190, column: 52, scope: !1059)
!1061 = !DILocation(line: 190, column: 55, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !920, file: !891, discriminator: 2)
!1063 = !DILocation(line: 190, column: 64, scope: !1062)
!1064 = !DILocation(line: 190, column: 16, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !921, file: !891, discriminator: 2)
!1066 = !DILocation(line: 193, column: 15, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !920, file: !891, line: 191, column: 9)
!1068 = distinct !{!1068, !1069, !1070}
!1069 = !DILocation(line: 176, column: 3, scope: !925)
!1070 = !DILocation(line: 332, column: 5, scope: !925)
!1071 = !DILocation(line: 194, column: 31, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1073, file: !891, discriminator: 1)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !891, line: 194, column: 13)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !891, line: 194, column: 13)
!1075 = distinct !DILexicalBlock(scope: !1067, file: !891, line: 193, column: 15)
!1076 = !DILocation(line: 194, column: 39, scope: !1072)
!1077 = !DILocation(line: 194, column: 43, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1073, file: !891, discriminator: 2)
!1079 = !DILocation(line: 194, column: 42, scope: !1078)
!1080 = !DILocation(line: 194, column: 13, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1074, file: !891, discriminator: 3)
!1082 = !DILocation(line: 202, column: 11, scope: !919)
!1083 = !DILocation(line: 204, column: 16, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !919, file: !891, line: 204, column: 15)
!1085 = !DILocation(line: 204, column: 15, scope: !919)
!1086 = !DILocation(line: 205, column: 18, scope: !1084)
!1087 = !DILocation(line: 205, column: 21, scope: !1084)
!1088 = !DILocation(line: 205, column: 13, scope: !1084)
!1089 = !DILocation(line: 207, column: 20, scope: !965)
!1090 = !DILocation(line: 207, column: 36, scope: !965)
!1091 = !DILocation(line: 207, column: 15, scope: !919)
!1092 = !DILocation(line: 209, column: 44, scope: !964)
!1093 = !DILocation(line: 209, column: 25, scope: !964)
!1094 = !DILocation(line: 210, column: 45, scope: !964)
!1095 = !DILocation(line: 210, column: 22, scope: !964)
!1096 = !DILocation(line: 212, column: 35, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !964, file: !891, line: 212, column: 19)
!1098 = !DILocation(line: 212, column: 31, scope: !1097)
!1099 = !DILocation(line: 212, column: 19, scope: !964)
!1100 = !DILocation(line: 216, column: 23, scope: !964)
!1101 = !DILocation(line: 217, column: 35, scope: !964)
!1102 = !DILocation(line: 219, column: 28, scope: !964)
!1103 = !DILocation(line: 220, column: 13, scope: !964)
!1104 = !DILocation(line: 222, column: 18, scope: !919)
!1105 = !DILocation(line: 223, column: 16, scope: !919)
!1106 = !DILocation(line: 224, column: 17, scope: !919)
!1107 = !DILocation(line: 226, column: 23, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !919, file: !891, line: 226, column: 15)
!1109 = !DIExpression(DW_OP_deref)
!1110 = !DILocation(line: 202, column: 23, scope: !919)
!1111 = !DILocation(line: 233, column: 21, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !891, line: 233, column: 20)
!1113 = !DILocalVariable(name: "__path", arg: 1, scope: !1114, file: !1115, line: 449, type: !38)
!1114 = distinct !DISubprogram(name: "stat", scope: !1115, file: !1115, line: 449, type: !1116, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !1119)
!1115 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!73, !38, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!1119 = !{!1113, !1120}
!1120 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1114, file: !1115, line: 449, type: !1118)
!1121 = !DILocation(line: 449, column: 1, scope: !1114, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 233, column: 31, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1112, file: !891, discriminator: 1)
!1124 = !DILocation(line: 451, column: 10, scope: !1114, inlinedAt: !1122)
!1125 = !DILocation(line: 233, column: 21, scope: !1123)
!1126 = !DILocalVariable(name: "__path", arg: 1, scope: !1127, file: !1115, line: 456, type: !38)
!1127 = distinct !DISubprogram(name: "lstat", scope: !1115, file: !1115, line: 456, type: !1116, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !1128)
!1128 = !{!1126, !1129}
!1129 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1127, file: !1115, line: 456, type: !1118)
!1130 = !DILocation(line: 456, column: 1, scope: !1127, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 233, column: 51, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1112, file: !891, discriminator: 2)
!1133 = !DILocation(line: 458, column: 10, scope: !1127, inlinedAt: !1131)
!1134 = !DILocation(line: 233, column: 21, scope: !1132)
!1135 = !DILocation(line: 233, column: 21, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1112, file: !891, discriminator: 3)
!1137 = !DILocation(line: 233, column: 71, scope: !1136)
!1138 = !DILocation(line: 233, column: 20, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1108, file: !891, discriminator: 3)
!1140 = !{!1141, !737, i64 24}
!1141 = !{!"stat", !792, i64 0, !792, i64 8, !792, i64 16, !737, i64 24, !737, i64 28, !737, i64 32, !737, i64 36, !792, i64 40, !792, i64 48, !792, i64 56, !792, i64 64, !1142, i64 72, !1142, i64 88, !1142, i64 104, !645, i64 120}
!1142 = !{!"timespec", !792, i64 0, !792, i64 8}
!1143 = !DILocation(line: 235, column: 29, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1112, file: !891, line: 234, column: 13)
!1145 = !DILocation(line: 236, column: 19, scope: !1144)
!1146 = !DILocation(line: 240, column: 27, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !891, line: 240, column: 23)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !891, line: 239, column: 17)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !891, line: 238, column: 19)
!1150 = !DILocation(line: 240, column: 23, scope: !1147)
!1151 = !DILocation(line: 240, column: 65, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1147, file: !891, discriminator: 1)
!1153 = !DILocation(line: 240, column: 50, scope: !1147)
!1154 = !DILocation(line: 241, column: 21, scope: !1147)
!1155 = !DILocation(line: 247, column: 15, scope: !970)
!1156 = !DILocation(line: 247, column: 15, scope: !919)
!1157 = !DILocalVariable(name: "filename", arg: 2, scope: !1158, file: !891, line: 70, type: !38)
!1158 = distinct !DISubprogram(name: "seen_triple", scope: !891, file: !891, line: 70, type: !1159, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !563, variables: !1164)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!43, !1161, !38, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!1164 = !{!1165, !1157, !1166, !1167}
!1165 = !DILocalVariable(name: "ht", arg: 1, scope: !1158, file: !891, line: 70, type: !1161)
!1166 = !DILocalVariable(name: "st", arg: 3, scope: !1158, file: !891, line: 70, type: !1162)
!1167 = !DILocalVariable(name: "initial_capacity", scope: !1168, file: !891, line: 74, type: !30)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !891, line: 73, column: 5)
!1169 = distinct !DILexicalBlock(scope: !1158, file: !891, line: 72, column: 7)
!1170 = !DILocation(line: 70, column: 43, scope: !1158, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 256, column: 19, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !969, file: !891, line: 256, column: 19)
!1173 = !DILocation(line: 70, column: 72, scope: !1158, inlinedAt: !1171)
!1174 = !DILocation(line: 72, column: 11, scope: !1169, inlinedAt: !1171)
!1175 = !DILocation(line: 72, column: 7, scope: !1158, inlinedAt: !1171)
!1176 = !DILocation(line: 74, column: 14, scope: !1168, inlinedAt: !1171)
!1177 = !DILocation(line: 75, column: 13, scope: !1168, inlinedAt: !1171)
!1178 = !DILocation(line: 80, column: 15, scope: !1179, inlinedAt: !1171)
!1179 = distinct !DILexicalBlock(scope: !1168, file: !891, line: 80, column: 11)
!1180 = !DILocation(line: 80, column: 11, scope: !1168, inlinedAt: !1171)
!1181 = !DILocation(line: 81, column: 9, scope: !1179, inlinedAt: !1171)
!1182 = !DILocation(line: 84, column: 7, scope: !1183, inlinedAt: !1171)
!1183 = distinct !DILexicalBlock(scope: !1158, file: !891, line: 84, column: 7)
!1184 = !DILocation(line: 84, column: 7, scope: !1158, inlinedAt: !1171)
!1185 = !DILocation(line: 259, column: 21, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !891, line: 258, column: 23)
!1187 = distinct !DILexicalBlock(scope: !1172, file: !891, line: 257, column: 17)
!1188 = !DILocation(line: 87, column: 3, scope: !1158, inlinedAt: !1171)
!1189 = !DILocation(line: 264, column: 52, scope: !969)
!1190 = !{!1141, !792, i64 48}
!1191 = !DILocation(line: 264, column: 21, scope: !969)
!1192 = !DILocation(line: 249, column: 21, scope: !969)
!1193 = !DILocation(line: 265, column: 20, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !969, file: !891, line: 265, column: 19)
!1195 = !DILocation(line: 265, column: 19, scope: !969)
!1196 = !DILocation(line: 267, column: 50, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1198, file: !891, discriminator: 1)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !891, line: 267, column: 23)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !891, line: 266, column: 17)
!1200 = !DILocation(line: 267, column: 47, scope: !1198)
!1201 = !DILocation(line: 267, column: 56, scope: !1197)
!1202 = !DILocation(line: 267, column: 23, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1199, file: !891, discriminator: 1)
!1204 = !DILocation(line: 331, column: 9, scope: !920)
!1205 = !DILocation(line: 269, column: 33, scope: !1199)
!1206 = !DILocation(line: 273, column: 19, scope: !969)
!1207 = !DILocation(line: 250, column: 22, scope: !969)
!1208 = !DILocation(line: 274, column: 21, scope: !969)
!1209 = !DILocation(line: 250, column: 25, scope: !969)
!1210 = !DILocation(line: 276, column: 20, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !969, file: !891, line: 276, column: 19)
!1212 = !DILocation(line: 276, column: 19, scope: !969)
!1213 = !DILocation(line: 279, column: 36, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !891, line: 277, column: 17)
!1215 = !DILocation(line: 279, column: 21, scope: !1214)
!1216 = !DILocation(line: 280, column: 31, scope: !1214)
!1217 = !DILocation(line: 281, column: 17, scope: !1214)
!1218 = !DILocation(line: 282, column: 38, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1211, file: !891, line: 282, column: 24)
!1220 = !DILocation(line: 282, column: 24, scope: !1211)
!1221 = !DILocation(line: 285, column: 31, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !891, line: 283, column: 17)
!1223 = !DILocation(line: 286, column: 17, scope: !1222)
!1224 = !DILocation(line: 289, column: 25, scope: !969)
!1225 = !DILocation(line: 289, column: 48, scope: !969)
!1226 = !DILocation(line: 289, column: 15, scope: !969)
!1227 = !DILocation(line: 290, column: 28, scope: !969)
!1228 = !DILocation(line: 292, column: 19, scope: !975)
!1229 = !DILocation(line: 292, column: 19, scope: !969)
!1230 = !DILocation(line: 294, column: 26, scope: !974)
!1231 = !DILocation(line: 299, column: 27, scope: !974)
!1232 = !DILocation(line: 308, column: 17, scope: !974)
!1233 = !DILocation(line: 313, column: 28, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !891, line: 313, column: 23)
!1235 = distinct !DILexicalBlock(scope: !975, file: !891, line: 310, column: 17)
!1236 = !DILocation(line: 313, column: 23, scope: !1235)
!1237 = !DILocation(line: 314, column: 39, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !891, discriminator: 1)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !891, line: 314, column: 21)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !891, line: 314, column: 21)
!1241 = !DILocation(line: 314, column: 47, scope: !1238)
!1242 = !DILocation(line: 314, column: 51, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1239, file: !891, discriminator: 2)
!1244 = !DILocation(line: 314, column: 50, scope: !1243)
!1245 = !DILocation(line: 314, column: 21, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1240, file: !891, discriminator: 3)
!1247 = distinct !{!1247, !1248, !1249}
!1248 = !DILocation(line: 314, column: 21, scope: !1240)
!1249 = !DILocation(line: 315, column: 23, scope: !1240)
!1250 = !DILocation(line: 321, column: 15, scope: !969)
!1251 = !DILocation(line: 325, column: 44, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1253, file: !891, discriminator: 1)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !891, line: 325, column: 19)
!1254 = distinct !DILexicalBlock(scope: !970, file: !891, line: 324, column: 13)
!1255 = !DILocation(line: 325, column: 49, scope: !1252)
!1256 = !DILocation(line: 333, column: 33, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !890, file: !891, line: 333, column: 7)
!1258 = !DILocation(line: 333, column: 12, scope: !1257)
!1259 = !DILocation(line: 333, column: 37, scope: !1257)
!1260 = !DILocation(line: 333, column: 40, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1257, file: !891, discriminator: 1)
!1262 = !DILocation(line: 333, column: 7, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !890, file: !891, discriminator: 1)
!1264 = !DILocation(line: 338, column: 9, scope: !890)
!1265 = !DILocation(line: 339, column: 27, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !890, file: !891, line: 339, column: 7)
!1267 = !DILocation(line: 339, column: 19, scope: !1266)
!1268 = !DILocation(line: 339, column: 7, scope: !890)
!1269 = !DILocation(line: 340, column: 35, scope: !1266)
!1270 = !DILocation(line: 340, column: 43, scope: !1266)
!1271 = !DILocation(line: 340, column: 13, scope: !1266)
!1272 = !DILocation(line: 340, column: 5, scope: !1266)
!1273 = !DILocation(line: 342, column: 3, scope: !890)
!1274 = !DILocation(line: 343, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !890, file: !891, line: 343, column: 7)
!1276 = !DILocation(line: 343, column: 7, scope: !890)
!1277 = !DILocation(line: 344, column: 5, scope: !1275)
!1278 = !DILocation(line: 348, column: 3, scope: !890)
!1279 = !DILocation(line: 349, column: 3, scope: !890)
!1280 = !DILocation(line: 350, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !890, file: !891, line: 350, column: 7)
!1282 = !DILocation(line: 350, column: 7, scope: !890)
!1283 = !DILocation(line: 351, column: 5, scope: !1281)
!1284 = !DILocation(line: 352, column: 3, scope: !890)
!1285 = !DILocation(line: 352, column: 9, scope: !890)
!1286 = !DILocation(line: 353, column: 3, scope: !890)
!1287 = !DILocation(line: 354, column: 1, scope: !890)
!1288 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !102, file: !102, line: 41, type: !50, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "file", arg: 1, scope: !1288, file: !102, line: 41, type: !38)
!1291 = !DILocation(line: 41, column: 41, scope: !1288)
!1292 = !DILocation(line: 43, column: 13, scope: !1288)
!1293 = !DILocation(line: 44, column: 1, scope: !1288)
!1294 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !102, file: !102, line: 78, type: !1295, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !43}
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "ignore", arg: 1, scope: !1294, file: !102, line: 78, type: !43)
!1299 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1300 = !DILocation(line: 78, column: 37, scope: !1294)
!1301 = !DILocation(line: 80, column: 16, scope: !1294)
!1302 = !{!1303, !1303, i64 0}
!1303 = !{!"_Bool", !645, i64 0}
!1304 = !DILocation(line: 81, column: 1, scope: !1294)
!1305 = distinct !DISubprogram(name: "close_stdout", scope: !102, file: !102, line: 107, type: !1306, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !97, variables: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null}
!1308 = !{!1309}
!1309 = !DILocalVariable(name: "write_error", scope: !1310, file: !102, line: 112, type: !38)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !102, line: 111, column: 5)
!1311 = distinct !DILexicalBlock(scope: !1305, file: !102, line: 109, column: 7)
!1312 = !DILocation(line: 109, column: 21, scope: !1311)
!1313 = !DILocation(line: 109, column: 7, scope: !1311)
!1314 = !DILocation(line: 109, column: 29, scope: !1311)
!1315 = !DILocation(line: 110, column: 7, scope: !1311)
!1316 = !DILocation(line: 110, column: 12, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1311, file: !102, discriminator: 1)
!1318 = !{i8 0, i8 2}
!1319 = !DILocation(line: 114, column: 19, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !102, line: 113, column: 11)
!1321 = !DILocation(line: 110, column: 25, scope: !1317)
!1322 = !DILocation(line: 110, column: 28, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1311, file: !102, discriminator: 2)
!1324 = !DILocation(line: 110, column: 34, scope: !1323)
!1325 = !DILocation(line: 109, column: 7, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1305, file: !102, discriminator: 1)
!1327 = !DILocation(line: 112, column: 33, scope: !1310)
!1328 = !DILocation(line: 112, column: 19, scope: !1310)
!1329 = !DILocation(line: 113, column: 11, scope: !1320)
!1330 = !DILocation(line: 113, column: 11, scope: !1310)
!1331 = !DILocation(line: 114, column: 36, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1320, file: !102, discriminator: 1)
!1333 = !DILocation(line: 114, column: 9, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1320, file: !102, discriminator: 2)
!1335 = !DILocation(line: 114, column: 9, scope: !1320)
!1336 = !DILocation(line: 117, column: 9, scope: !1332)
!1337 = !DILocation(line: 119, column: 14, scope: !1310)
!1338 = !DILocation(line: 119, column: 7, scope: !1310)
!1339 = !DILocation(line: 122, column: 22, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1305, file: !102, line: 122, column: 8)
!1341 = !DILocation(line: 122, column: 8, scope: !1340)
!1342 = !DILocation(line: 122, column: 30, scope: !1340)
!1343 = !DILocation(line: 122, column: 8, scope: !1305)
!1344 = !DILocation(line: 123, column: 13, scope: !1340)
!1345 = !DILocation(line: 123, column: 6, scope: !1340)
!1346 = !DILocation(line: 124, column: 1, scope: !1305)
!1347 = distinct !DISubprogram(name: "record_file", scope: !1348, file: !1348, line: 29, type: !1349, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !1374)
!1348 = !DIFile(filename: "lib/file-set.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !906, !38, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !927, line: 46, size: 1152, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1371, !1372, !1373}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1353, file: !927, line: 48, baseType: !930, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1353, file: !927, line: 53, baseType: !932, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1353, file: !927, line: 61, baseType: !934, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1353, file: !927, line: 62, baseType: !936, size: 32, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1353, file: !927, line: 64, baseType: !938, size: 32, offset: 224)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1353, file: !927, line: 65, baseType: !940, size: 32, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1353, file: !927, line: 67, baseType: !73, size: 32, offset: 288)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1353, file: !927, line: 69, baseType: !930, size: 64, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1353, file: !927, line: 74, baseType: !944, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1353, file: !927, line: 78, baseType: !946, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1353, file: !927, line: 80, baseType: !948, size: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1353, file: !927, line: 91, baseType: !1367, size: 128, offset: 576)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !951, line: 8, size: 128, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1367, file: !951, line: 10, baseType: !954, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1367, file: !951, line: 11, baseType: !956, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1353, file: !927, line: 92, baseType: !1367, size: 128, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1353, file: !927, line: 93, baseType: !1367, size: 128, offset: 832)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1353, file: !927, line: 106, baseType: !960, size: 192, offset: 960)
!1374 = !{!1375, !1376, !1377, !1378, !1388}
!1375 = !DILocalVariable(name: "ht", arg: 1, scope: !1347, file: !1348, line: 29, type: !906)
!1376 = !DILocalVariable(name: "file", arg: 2, scope: !1347, file: !1348, line: 29, type: !38)
!1377 = !DILocalVariable(name: "stats", arg: 3, scope: !1347, file: !1348, line: 29, type: !1351)
!1378 = !DILocalVariable(name: "ent", scope: !1347, file: !1348, line: 31, type: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "F_triple", file: !1381, line: 9, size: 192, elements: !1382)
!1381 = !DIFile(filename: "./lib/hash-triple.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1382 = !{!1383, !1384, !1386}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1380, file: !1381, line: 11, baseType: !27, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1380, file: !1381, line: 12, baseType: !1385, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !832, line: 48, baseType: !932)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1380, file: !1381, line: 13, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !832, line: 60, baseType: !930)
!1388 = !DILocalVariable(name: "ent_from_table", scope: !1389, file: !1348, line: 42, type: !1379)
!1389 = distinct !DILexicalBlock(scope: !1347, file: !1348, line: 41, column: 3)
!1390 = !DILocation(line: 29, column: 26, scope: !1347)
!1391 = !DILocation(line: 29, column: 42, scope: !1347)
!1392 = !DILocation(line: 29, column: 67, scope: !1347)
!1393 = !DILocation(line: 33, column: 10, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1347, file: !1348, line: 33, column: 7)
!1395 = !DILocation(line: 33, column: 7, scope: !1347)
!1396 = !DILocation(line: 36, column: 9, scope: !1347)
!1397 = !DILocation(line: 37, column: 15, scope: !1347)
!1398 = !DILocation(line: 37, column: 8, scope: !1347)
!1399 = !DILocation(line: 37, column: 13, scope: !1347)
!1400 = !{!1401, !644, i64 0}
!1401 = !{!"F_triple", !644, i64 0, !792, i64 8, !792, i64 16}
!1402 = !DILocation(line: 38, column: 24, scope: !1347)
!1403 = !{!1141, !792, i64 8}
!1404 = !DILocation(line: 38, column: 8, scope: !1347)
!1405 = !DILocation(line: 38, column: 15, scope: !1347)
!1406 = !{!1401, !792, i64 8}
!1407 = !DILocation(line: 39, column: 24, scope: !1347)
!1408 = !{!1141, !792, i64 0}
!1409 = !DILocation(line: 39, column: 8, scope: !1347)
!1410 = !DILocation(line: 39, column: 15, scope: !1347)
!1411 = !{!1401, !792, i64 16}
!1412 = !DILocation(line: 42, column: 39, scope: !1389)
!1413 = !DILocation(line: 43, column: 24, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1389, file: !1348, line: 43, column: 9)
!1415 = !DILocation(line: 43, column: 9, scope: !1389)
!1416 = !DILocation(line: 46, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !1348, line: 44, column: 7)
!1418 = !DILocation(line: 49, column: 24, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1389, file: !1348, line: 49, column: 9)
!1420 = !DILocation(line: 49, column: 9, scope: !1389)
!1421 = !DILocation(line: 53, column: 9, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !1348, line: 50, column: 7)
!1423 = !DILocation(line: 54, column: 7, scope: !1422)
!1424 = !DILocation(line: 56, column: 1, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1347, file: !1348, discriminator: 2)
!1426 = distinct !DISubprogram(name: "seen_file", scope: !1348, file: !1348, line: 61, type: !1427, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !1431)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!43, !1429, !38, !1351}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!1431 = !{!1432, !1433, !1434, !1435}
!1432 = !DILocalVariable(name: "ht", arg: 1, scope: !1426, file: !1348, line: 61, type: !1429)
!1433 = !DILocalVariable(name: "file", arg: 2, scope: !1426, file: !1348, line: 61, type: !38)
!1434 = !DILocalVariable(name: "stats", arg: 3, scope: !1426, file: !1348, line: 62, type: !1351)
!1435 = !DILocalVariable(name: "new_ent", scope: !1426, file: !1348, line: 64, type: !1380)
!1436 = !DILocation(line: 61, column: 30, scope: !1426)
!1437 = !DILocation(line: 61, column: 46, scope: !1426)
!1438 = !DILocation(line: 62, column: 31, scope: !1426)
!1439 = !DILocation(line: 64, column: 3, scope: !1426)
!1440 = !DILocation(line: 66, column: 10, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1426, file: !1348, line: 66, column: 7)
!1442 = !DILocation(line: 66, column: 7, scope: !1426)
!1443 = !DILocation(line: 69, column: 11, scope: !1426)
!1444 = !DILocation(line: 69, column: 16, scope: !1426)
!1445 = !DILocation(line: 70, column: 27, scope: !1426)
!1446 = !DILocation(line: 70, column: 11, scope: !1426)
!1447 = !DILocation(line: 70, column: 18, scope: !1426)
!1448 = !DILocation(line: 71, column: 27, scope: !1426)
!1449 = !DILocation(line: 71, column: 11, scope: !1426)
!1450 = !DILocation(line: 71, column: 18, scope: !1426)
!1451 = !DILocation(line: 73, column: 12, scope: !1426)
!1452 = !DILocation(line: 73, column: 11, scope: !1426)
!1453 = !DILocation(line: 73, column: 3, scope: !1426)
!1454 = !DILocation(line: 74, column: 1, scope: !1426)
!1455 = distinct !DISubprogram(name: "hash_get_n_buckets", scope: !116, file: !116, line: 150, type: !1456, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1493)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!30, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_table", file: !119, line: 69, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_table", file: !116, line: 52, size: 640, elements: !1462)
!1462 = !{!1463, !1469, !1472, !1473, !1474, !1475, !1477, !1482, !1487, !1492}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !1461, file: !116, line: 57, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hash_entry", file: !116, line: 46, size: 128, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1465, file: !116, line: 48, baseType: !29, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1465, file: !116, line: 49, baseType: !1464, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_limit", scope: !1461, file: !116, line: 58, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1465)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1461, file: !116, line: 59, baseType: !30, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets_used", scope: !1461, file: !116, line: 60, baseType: !30, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "n_entries", scope: !1461, file: !116, line: 61, baseType: !30, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tuning", scope: !1461, file: !116, line: 64, baseType: !1476, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "hasher", scope: !1461, file: !116, line: 71, baseType: !1478, size: 64, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_hasher", file: !119, line: 48, baseType: !1479)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!30, !33, !30}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "comparator", scope: !1461, file: !116, line: 72, baseType: !1483, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_comparator", file: !119, line: 49, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!43, !33, !33}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "data_freer", scope: !1461, file: !116, line: 73, baseType: !1488, size: 64, offset: 512)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_data_freer", file: !119, line: 50, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !29}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "free_entry_list", scope: !1461, file: !116, line: 76, baseType: !1464, size: 64, offset: 576)
!1493 = !{!1494}
!1494 = !DILocalVariable(name: "table", arg: 1, scope: !1455, file: !116, line: 150, type: !1458)
!1495 = !DILocation(line: 150, column: 39, scope: !1455)
!1496 = !DILocation(line: 152, column: 17, scope: !1455)
!1497 = !{!1498, !792, i64 16}
!1498 = !{!"hash_table", !644, i64 0, !644, i64 8, !792, i64 16, !792, i64 24, !792, i64 32, !644, i64 40, !644, i64 48, !644, i64 56, !644, i64 64, !644, i64 72}
!1499 = !DILocation(line: 152, column: 3, scope: !1455)
!1500 = distinct !DISubprogram(name: "hash_get_n_buckets_used", scope: !116, file: !116, line: 158, type: !1456, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1501)
!1501 = !{!1502}
!1502 = !DILocalVariable(name: "table", arg: 1, scope: !1500, file: !116, line: 158, type: !1458)
!1503 = !DILocation(line: 158, column: 44, scope: !1500)
!1504 = !DILocation(line: 160, column: 17, scope: !1500)
!1505 = !{!1498, !792, i64 24}
!1506 = !DILocation(line: 160, column: 3, scope: !1500)
!1507 = distinct !DISubprogram(name: "hash_get_n_entries", scope: !116, file: !116, line: 166, type: !1456, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1508)
!1508 = !{!1509}
!1509 = !DILocalVariable(name: "table", arg: 1, scope: !1507, file: !116, line: 166, type: !1458)
!1510 = !DILocation(line: 166, column: 39, scope: !1507)
!1511 = !DILocation(line: 168, column: 17, scope: !1507)
!1512 = !{!1498, !792, i64 32}
!1513 = !DILocation(line: 168, column: 3, scope: !1507)
!1514 = distinct !DISubprogram(name: "hash_get_max_bucket_length", scope: !116, file: !116, line: 174, type: !1456, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1525}
!1516 = !DILocalVariable(name: "table", arg: 1, scope: !1514, file: !116, line: 174, type: !1458)
!1517 = !DILocalVariable(name: "bucket", scope: !1514, file: !116, line: 176, type: !1470)
!1518 = !DILocalVariable(name: "max_bucket_length", scope: !1514, file: !116, line: 177, type: !30)
!1519 = !DILocalVariable(name: "cursor", scope: !1520, file: !116, line: 183, type: !1470)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !116, line: 182, column: 9)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !116, line: 181, column: 11)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !116, line: 180, column: 5)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !116, line: 179, column: 3)
!1524 = distinct !DILexicalBlock(scope: !1514, file: !116, line: 179, column: 3)
!1525 = !DILocalVariable(name: "bucket_length", scope: !1520, file: !116, line: 184, type: !30)
!1526 = !DILocation(line: 174, column: 47, scope: !1514)
!1527 = !DILocation(line: 177, column: 10, scope: !1514)
!1528 = !DILocation(line: 179, column: 24, scope: !1524)
!1529 = !{!1498, !644, i64 0}
!1530 = !DILocation(line: 176, column: 28, scope: !1514)
!1531 = !DILocation(line: 179, column: 48, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1523, file: !116, discriminator: 1)
!1533 = !{!1498, !644, i64 8}
!1534 = !DILocation(line: 179, column: 39, scope: !1532)
!1535 = !DILocation(line: 179, column: 3, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1524, file: !116, discriminator: 1)
!1537 = !DILocation(line: 181, column: 19, scope: !1521)
!1538 = !{!1539, !644, i64 0}
!1539 = !{!"hash_entry", !644, i64 0, !644, i64 8}
!1540 = !DILocation(line: 181, column: 11, scope: !1521)
!1541 = !DILocation(line: 181, column: 11, scope: !1522)
!1542 = !DILocation(line: 184, column: 18, scope: !1520)
!1543 = !DILocation(line: 183, column: 36, scope: !1520)
!1544 = !DILocation(line: 186, column: 35, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1520, file: !116, discriminator: 1)
!1546 = !{!1539, !644, i64 8}
!1547 = !DILocation(line: 186, column: 11, scope: !1545)
!1548 = !DILocation(line: 187, column: 26, scope: !1520)
!1549 = distinct !{!1549, !1550, !1548}
!1550 = !DILocation(line: 186, column: 11, scope: !1520)
!1551 = !DILocation(line: 191, column: 9, scope: !1520)
!1552 = !DILocation(line: 179, column: 68, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1523, file: !116, discriminator: 2)
!1554 = !DILocation(line: 189, column: 29, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1520, file: !116, line: 189, column: 15)
!1556 = !DILocation(line: 189, column: 15, scope: !1520)
!1557 = !DILocation(line: 194, column: 3, scope: !1514)
!1558 = distinct !{!1558, !1559, !1560}
!1559 = !DILocation(line: 179, column: 3, scope: !1524)
!1560 = !DILocation(line: 192, column: 5, scope: !1524)
!1561 = distinct !DISubprogram(name: "hash_table_ok", scope: !116, file: !116, line: 201, type: !1562, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!43, !1458}
!1564 = !{!1565, !1566, !1567, !1568, !1569}
!1565 = !DILocalVariable(name: "table", arg: 1, scope: !1561, file: !116, line: 201, type: !1458)
!1566 = !DILocalVariable(name: "bucket", scope: !1561, file: !116, line: 203, type: !1470)
!1567 = !DILocalVariable(name: "n_buckets_used", scope: !1561, file: !116, line: 204, type: !30)
!1568 = !DILocalVariable(name: "n_entries", scope: !1561, file: !116, line: 205, type: !30)
!1569 = !DILocalVariable(name: "cursor", scope: !1570, file: !116, line: 211, type: !1470)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !116, line: 210, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !116, line: 209, column: 11)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !116, line: 208, column: 5)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !116, line: 207, column: 3)
!1574 = distinct !DILexicalBlock(scope: !1561, file: !116, line: 207, column: 3)
!1575 = !DILocation(line: 201, column: 34, scope: !1561)
!1576 = !DILocation(line: 204, column: 10, scope: !1561)
!1577 = !DILocation(line: 205, column: 10, scope: !1561)
!1578 = !DILocation(line: 207, column: 24, scope: !1574)
!1579 = !DILocation(line: 203, column: 28, scope: !1561)
!1580 = !DILocation(line: 207, column: 48, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1573, file: !116, discriminator: 1)
!1582 = !DILocation(line: 207, column: 39, scope: !1581)
!1583 = !DILocation(line: 207, column: 3, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !1574, file: !116, discriminator: 1)
!1585 = !DILocation(line: 209, column: 19, scope: !1571)
!1586 = !DILocation(line: 209, column: 11, scope: !1571)
!1587 = !DILocation(line: 209, column: 11, scope: !1572)
!1588 = !DILocation(line: 211, column: 36, scope: !1570)
!1589 = !DILocation(line: 218, column: 35, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1570, file: !116, discriminator: 1)
!1591 = !DILocation(line: 218, column: 11, scope: !1590)
!1592 = distinct !{!1592, !1593, !1594}
!1593 = !DILocation(line: 218, column: 11, scope: !1570)
!1594 = !DILocation(line: 219, column: 22, scope: !1570)
!1595 = !DILocation(line: 207, column: 68, scope: !1596)
!1596 = !DILexicalBlockFile(scope: !1573, file: !116, discriminator: 2)
!1597 = !DILocation(line: 214, column: 25, scope: !1570)
!1598 = !DILocation(line: 223, column: 32, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1561, file: !116, line: 223, column: 7)
!1600 = !DILocation(line: 223, column: 22, scope: !1599)
!1601 = !DILocation(line: 223, column: 47, scope: !1599)
!1602 = !DILocation(line: 223, column: 70, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1599, file: !116, discriminator: 1)
!1604 = !DILocation(line: 223, column: 60, scope: !1603)
!1605 = !DILocation(line: 223, column: 7, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1561, file: !116, discriminator: 1)
!1607 = !DILocation(line: 226, column: 3, scope: !1561)
!1608 = !DILocation(line: 227, column: 1, scope: !1561)
!1609 = distinct !{!1609, !1610, !1611}
!1610 = !DILocation(line: 207, column: 3, scope: !1574)
!1611 = !DILocation(line: 221, column: 5, scope: !1574)
!1612 = distinct !DISubprogram(name: "hash_print_statistics", scope: !116, file: !116, line: 230, type: !1613, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1667)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1458, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1617, line: 49, baseType: !1618)
!1617 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1619, line: 241, size: 1728, elements: !1620)
!1619 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1641, !1642, !1643, !1644, !1645, !1646, !1648, !1652, !1655, !1657, !1658, !1659, !1660, !1661, !1662, !1663}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1618, file: !1619, line: 242, baseType: !73, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1618, file: !1619, line: 247, baseType: !27, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1618, file: !1619, line: 248, baseType: !27, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1618, file: !1619, line: 249, baseType: !27, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1618, file: !1619, line: 250, baseType: !27, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1618, file: !1619, line: 251, baseType: !27, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1618, file: !1619, line: 252, baseType: !27, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1618, file: !1619, line: 253, baseType: !27, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1618, file: !1619, line: 254, baseType: !27, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1618, file: !1619, line: 256, baseType: !27, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1618, file: !1619, line: 257, baseType: !27, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1618, file: !1619, line: 258, baseType: !27, size: 64, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1618, file: !1619, line: 260, baseType: !1634, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1619, line: 156, size: 192, elements: !1636)
!1636 = !{!1637, !1638, !1640}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1635, file: !1619, line: 157, baseType: !1634, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1635, file: !1619, line: 158, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1635, file: !1619, line: 162, baseType: !73, size: 32, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1618, file: !1619, line: 262, baseType: !1639, size: 64, offset: 832)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1618, file: !1619, line: 264, baseType: !73, size: 32, offset: 896)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1618, file: !1619, line: 268, baseType: !73, size: 32, offset: 928)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1618, file: !1619, line: 270, baseType: !944, size: 64, offset: 960)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1618, file: !1619, line: 274, baseType: !161, size: 16, offset: 1024)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1618, file: !1619, line: 275, baseType: !1647, size: 8, offset: 1040)
!1647 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1618, file: !1619, line: 276, baseType: !1649, size: 8, offset: 1048)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 1)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1618, file: !1619, line: 280, baseType: !1653, size: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1619, line: 150, baseType: null)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1618, file: !1619, line: 289, baseType: !1656, size: 64, offset: 1152)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !834, line: 141, baseType: !835)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1618, file: !1619, line: 297, baseType: !29, size: 64, offset: 1216)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1618, file: !1619, line: 298, baseType: !29, size: 64, offset: 1280)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1618, file: !1619, line: 299, baseType: !29, size: 64, offset: 1344)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1618, file: !1619, line: 300, baseType: !29, size: 64, offset: 1408)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1618, file: !1619, line: 302, baseType: !30, size: 64, offset: 1472)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1618, file: !1619, line: 303, baseType: !73, size: 32, offset: 1536)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1618, file: !1619, line: 305, baseType: !1664, size: 160, offset: 1568)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 20)
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673}
!1668 = !DILocalVariable(name: "table", arg: 1, scope: !1612, file: !116, line: 230, type: !1458)
!1669 = !DILocalVariable(name: "stream", arg: 2, scope: !1612, file: !116, line: 230, type: !1615)
!1670 = !DILocalVariable(name: "n_entries", scope: !1612, file: !116, line: 232, type: !30)
!1671 = !DILocalVariable(name: "n_buckets", scope: !1612, file: !116, line: 233, type: !30)
!1672 = !DILocalVariable(name: "n_buckets_used", scope: !1612, file: !116, line: 234, type: !30)
!1673 = !DILocalVariable(name: "max_bucket_length", scope: !1612, file: !116, line: 235, type: !30)
!1674 = !DILocation(line: 230, column: 42, scope: !1612)
!1675 = !DILocation(line: 230, column: 55, scope: !1612)
!1676 = !DILocation(line: 166, column: 39, scope: !1507, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 232, column: 22, scope: !1612)
!1678 = !DILocation(line: 168, column: 17, scope: !1507, inlinedAt: !1677)
!1679 = !DILocation(line: 232, column: 10, scope: !1612)
!1680 = !DILocation(line: 150, column: 39, scope: !1455, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 233, column: 22, scope: !1612)
!1682 = !DILocation(line: 152, column: 17, scope: !1455, inlinedAt: !1681)
!1683 = !DILocation(line: 233, column: 10, scope: !1612)
!1684 = !DILocation(line: 158, column: 44, scope: !1500, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 234, column: 27, scope: !1612)
!1686 = !DILocation(line: 160, column: 17, scope: !1500, inlinedAt: !1685)
!1687 = !DILocation(line: 234, column: 10, scope: !1612)
!1688 = !DILocation(line: 174, column: 47, scope: !1514, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 235, column: 30, scope: !1612)
!1690 = !DILocation(line: 177, column: 10, scope: !1514, inlinedAt: !1689)
!1691 = !DILocation(line: 179, column: 24, scope: !1524, inlinedAt: !1689)
!1692 = !DILocation(line: 176, column: 28, scope: !1514, inlinedAt: !1689)
!1693 = !DILocation(line: 179, column: 48, scope: !1532, inlinedAt: !1689)
!1694 = !DILocation(line: 179, column: 39, scope: !1532, inlinedAt: !1689)
!1695 = !DILocation(line: 179, column: 3, scope: !1536, inlinedAt: !1689)
!1696 = !DILocation(line: 181, column: 19, scope: !1521, inlinedAt: !1689)
!1697 = !DILocation(line: 181, column: 11, scope: !1521, inlinedAt: !1689)
!1698 = !DILocation(line: 181, column: 11, scope: !1522, inlinedAt: !1689)
!1699 = !DILocation(line: 184, column: 18, scope: !1520, inlinedAt: !1689)
!1700 = !DILocation(line: 183, column: 36, scope: !1520, inlinedAt: !1689)
!1701 = !DILocation(line: 186, column: 35, scope: !1545, inlinedAt: !1689)
!1702 = !DILocation(line: 186, column: 11, scope: !1545, inlinedAt: !1689)
!1703 = !DILocation(line: 187, column: 26, scope: !1520, inlinedAt: !1689)
!1704 = !DILocation(line: 191, column: 9, scope: !1520, inlinedAt: !1689)
!1705 = !DILocation(line: 179, column: 68, scope: !1553, inlinedAt: !1689)
!1706 = !DILocation(line: 189, column: 29, scope: !1555, inlinedAt: !1689)
!1707 = !DILocation(line: 189, column: 15, scope: !1520, inlinedAt: !1689)
!1708 = !DILocation(line: 235, column: 10, scope: !1612)
!1709 = !DILocation(line: 237, column: 3, scope: !1612)
!1710 = !DILocation(line: 238, column: 3, scope: !1612)
!1711 = !DILocation(line: 239, column: 3, scope: !1612)
!1712 = !DILocation(line: 242, column: 3, scope: !1612)
!1713 = !DILocation(line: 244, column: 1, scope: !1612)
!1714 = distinct !DISubprogram(name: "hash_lookup", scope: !116, file: !116, line: 261, type: !1715, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!29, !1458, !33}
!1717 = !{!1718, !1719, !1720, !1721}
!1718 = !DILocalVariable(name: "table", arg: 1, scope: !1714, file: !116, line: 261, type: !1458)
!1719 = !DILocalVariable(name: "entry", arg: 2, scope: !1714, file: !116, line: 261, type: !33)
!1720 = !DILocalVariable(name: "bucket", scope: !1714, file: !116, line: 263, type: !1470)
!1721 = !DILocalVariable(name: "cursor", scope: !1714, file: !116, line: 264, type: !1470)
!1722 = !DILocation(line: 261, column: 32, scope: !1714)
!1723 = !DILocation(line: 261, column: 51, scope: !1714)
!1724 = !DILocalVariable(name: "table", arg: 1, scope: !1725, file: !116, line: 249, type: !1458)
!1725 = distinct !DISubprogram(name: "safe_hasher", scope: !116, file: !116, line: 249, type: !1726, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1464, !1458, !33}
!1728 = !{!1724, !1729, !1730}
!1729 = !DILocalVariable(name: "key", arg: 2, scope: !1725, file: !116, line: 249, type: !33)
!1730 = !DILocalVariable(name: "n", scope: !1725, file: !116, line: 251, type: !30)
!1731 = !DILocation(line: 249, column: 32, scope: !1725, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 263, column: 37, scope: !1714)
!1733 = !DILocation(line: 249, column: 51, scope: !1725, inlinedAt: !1732)
!1734 = !DILocation(line: 251, column: 21, scope: !1725, inlinedAt: !1732)
!1735 = !{!1498, !644, i64 48}
!1736 = !DILocation(line: 251, column: 41, scope: !1725, inlinedAt: !1732)
!1737 = !DILocation(line: 251, column: 14, scope: !1725, inlinedAt: !1732)
!1738 = !DILocation(line: 251, column: 10, scope: !1725, inlinedAt: !1732)
!1739 = !DILocation(line: 252, column: 21, scope: !1740, inlinedAt: !1732)
!1740 = distinct !DILexicalBlock(scope: !1725, file: !116, line: 252, column: 7)
!1741 = !DILocation(line: 252, column: 12, scope: !1740, inlinedAt: !1732)
!1742 = !DILocation(line: 252, column: 7, scope: !1725, inlinedAt: !1732)
!1743 = !DILocation(line: 253, column: 5, scope: !1740, inlinedAt: !1732)
!1744 = !DILocation(line: 254, column: 17, scope: !1725, inlinedAt: !1732)
!1745 = !DILocation(line: 254, column: 24, scope: !1725, inlinedAt: !1732)
!1746 = !DILocation(line: 263, column: 28, scope: !1714)
!1747 = !DILocation(line: 266, column: 15, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1714, file: !116, line: 266, column: 7)
!1749 = !DILocation(line: 266, column: 20, scope: !1748)
!1750 = !DILocation(line: 269, column: 3, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1752, file: !116, discriminator: 1)
!1752 = distinct !DILexicalBlock(scope: !1714, file: !116, line: 269, column: 3)
!1753 = !DILocation(line: 266, column: 7, scope: !1714)
!1754 = !DILocation(line: 264, column: 28, scope: !1714)
!1755 = !DILocation(line: 270, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !116, line: 270, column: 9)
!1757 = distinct !DILexicalBlock(scope: !1752, file: !116, line: 269, column: 3)
!1758 = !DILocation(line: 270, column: 31, scope: !1756)
!1759 = !DILocation(line: 270, column: 41, scope: !1760)
!1760 = !DILexicalBlockFile(scope: !1756, file: !116, discriminator: 1)
!1761 = !{!1498, !644, i64 56}
!1762 = !DILocation(line: 270, column: 34, scope: !1760)
!1763 = !DILocation(line: 270, column: 9, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1757, file: !116, discriminator: 1)
!1765 = !DILocation(line: 270, column: 26, scope: !1756)
!1766 = !DILocation(line: 269, column: 50, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1757, file: !116, discriminator: 2)
!1768 = distinct !{!1768, !1769, !1770}
!1769 = !DILocation(line: 269, column: 3, scope: !1752)
!1770 = !DILocation(line: 271, column: 22, scope: !1752)
!1771 = !DILocation(line: 274, column: 1, scope: !1714)
!1772 = distinct !DISubprogram(name: "hash_get_first", scope: !116, file: !116, line: 288, type: !1773, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!29, !1458}
!1775 = !{!1776, !1777}
!1776 = !DILocalVariable(name: "table", arg: 1, scope: !1772, file: !116, line: 288, type: !1458)
!1777 = !DILocalVariable(name: "bucket", scope: !1772, file: !116, line: 290, type: !1470)
!1778 = !DILocation(line: 288, column: 35, scope: !1772)
!1779 = !DILocation(line: 292, column: 14, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1772, file: !116, line: 292, column: 7)
!1781 = !DILocation(line: 292, column: 24, scope: !1780)
!1782 = !DILocation(line: 292, column: 7, scope: !1772)
!1783 = !DILocation(line: 295, column: 24, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1772, file: !116, line: 295, column: 3)
!1785 = !DILocation(line: 290, column: 28, scope: !1772)
!1786 = !DILocation(line: 296, column: 28, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !116, line: 296, column: 9)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !116, line: 295, column: 3)
!1789 = !DILocation(line: 296, column: 19, scope: !1787)
!1790 = !DILocation(line: 296, column: 9, scope: !1788)
!1791 = !DILocation(line: 298, column: 22, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !116, line: 298, column: 14)
!1793 = distinct !{!1793, !1794, !1795}
!1794 = !DILocation(line: 295, column: 3, scope: !1784)
!1795 = !DILocation(line: 299, column: 22, scope: !1784)
!1796 = !DILocation(line: 297, column: 7, scope: !1787)
!1797 = !DILocation(line: 298, column: 14, scope: !1792)
!1798 = !DILocation(line: 295, column: 40, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1788, file: !116, discriminator: 1)
!1800 = !DILocation(line: 298, column: 14, scope: !1787)
!1801 = !DILocation(line: 300, column: 1, scope: !1772)
!1802 = distinct !DISubprogram(name: "hash_get_next", scope: !116, file: !116, line: 307, type: !1715, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1803)
!1803 = !{!1804, !1805, !1806, !1807}
!1804 = !DILocalVariable(name: "table", arg: 1, scope: !1802, file: !116, line: 307, type: !1458)
!1805 = !DILocalVariable(name: "entry", arg: 2, scope: !1802, file: !116, line: 307, type: !33)
!1806 = !DILocalVariable(name: "bucket", scope: !1802, file: !116, line: 309, type: !1470)
!1807 = !DILocalVariable(name: "cursor", scope: !1802, file: !116, line: 310, type: !1470)
!1808 = !DILocation(line: 307, column: 34, scope: !1802)
!1809 = !DILocation(line: 307, column: 53, scope: !1802)
!1810 = !DILocation(line: 249, column: 32, scope: !1725, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 309, column: 37, scope: !1802)
!1812 = !DILocation(line: 249, column: 51, scope: !1725, inlinedAt: !1811)
!1813 = !DILocation(line: 251, column: 21, scope: !1725, inlinedAt: !1811)
!1814 = !DILocation(line: 251, column: 41, scope: !1725, inlinedAt: !1811)
!1815 = !DILocation(line: 251, column: 14, scope: !1725, inlinedAt: !1811)
!1816 = !DILocation(line: 251, column: 10, scope: !1725, inlinedAt: !1811)
!1817 = !DILocation(line: 252, column: 21, scope: !1740, inlinedAt: !1811)
!1818 = !DILocation(line: 252, column: 12, scope: !1740, inlinedAt: !1811)
!1819 = !DILocation(line: 252, column: 7, scope: !1725, inlinedAt: !1811)
!1820 = !DILocation(line: 253, column: 5, scope: !1740, inlinedAt: !1811)
!1821 = !DILocation(line: 254, column: 17, scope: !1725, inlinedAt: !1811)
!1822 = !DILocation(line: 254, column: 24, scope: !1725, inlinedAt: !1811)
!1823 = !DILocation(line: 309, column: 28, scope: !1802)
!1824 = !DILocation(line: 310, column: 28, scope: !1802)
!1825 = !DILocation(line: 314, column: 3, scope: !1802)
!1826 = distinct !{!1826, !1825, !1827}
!1827 = !DILocation(line: 320, column: 24, scope: !1802)
!1828 = !DILocation(line: 316, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !116, line: 316, column: 11)
!1830 = distinct !DILexicalBlock(scope: !1802, file: !116, line: 315, column: 5)
!1831 = !DILocation(line: 316, column: 24, scope: !1829)
!1832 = !DILocation(line: 316, column: 33, scope: !1829)
!1833 = !DILocation(line: 316, column: 11, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1830, file: !116, discriminator: 1)
!1835 = !DILocation(line: 317, column: 30, scope: !1829)
!1836 = !DILocation(line: 317, column: 9, scope: !1829)
!1837 = !DILocation(line: 319, column: 5, scope: !1834)
!1838 = !DILocation(line: 323, column: 10, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1802, file: !116, discriminator: 1)
!1840 = !DILocation(line: 323, column: 19, scope: !1839)
!1841 = !DILocation(line: 323, column: 3, scope: !1839)
!1842 = !DILocation(line: 324, column: 17, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1802, file: !116, line: 324, column: 9)
!1844 = !DILocation(line: 324, column: 9, scope: !1843)
!1845 = !DILocation(line: 324, column: 9, scope: !1802)
!1846 = distinct !{!1846, !1847, !1848}
!1847 = !DILocation(line: 323, column: 3, scope: !1802)
!1848 = !DILocation(line: 325, column: 22, scope: !1802)
!1849 = !DILocation(line: 329, column: 1, scope: !1802)
!1850 = distinct !DISubprogram(name: "hash_get_entries", scope: !116, file: !116, line: 336, type: !1851, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1854)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!30, !1458, !1853, !30}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860}
!1855 = !DILocalVariable(name: "table", arg: 1, scope: !1850, file: !116, line: 336, type: !1458)
!1856 = !DILocalVariable(name: "buffer", arg: 2, scope: !1850, file: !116, line: 336, type: !1853)
!1857 = !DILocalVariable(name: "buffer_size", arg: 3, scope: !1850, file: !116, line: 337, type: !30)
!1858 = !DILocalVariable(name: "counter", scope: !1850, file: !116, line: 339, type: !30)
!1859 = !DILocalVariable(name: "bucket", scope: !1850, file: !116, line: 340, type: !1470)
!1860 = !DILocalVariable(name: "cursor", scope: !1850, file: !116, line: 341, type: !1470)
!1861 = !DILocation(line: 336, column: 37, scope: !1850)
!1862 = !DILocation(line: 336, column: 51, scope: !1850)
!1863 = !DILocation(line: 337, column: 26, scope: !1850)
!1864 = !DILocation(line: 339, column: 10, scope: !1850)
!1865 = !DILocation(line: 343, column: 24, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1850, file: !116, line: 343, column: 3)
!1867 = !DILocation(line: 340, column: 28, scope: !1850)
!1868 = !DILocation(line: 343, column: 48, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1870, file: !116, discriminator: 1)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !116, line: 343, column: 3)
!1871 = !DILocation(line: 343, column: 39, scope: !1869)
!1872 = !DILocation(line: 343, column: 3, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1866, file: !116, discriminator: 1)
!1874 = !DILocation(line: 345, column: 19, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !116, line: 345, column: 11)
!1876 = distinct !DILexicalBlock(scope: !1870, file: !116, line: 344, column: 5)
!1877 = !DILocation(line: 345, column: 11, scope: !1875)
!1878 = !DILocation(line: 347, column: 11, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1880, file: !116, discriminator: 1)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !116, line: 347, column: 11)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !116, line: 346, column: 9)
!1882 = !DILocation(line: 345, column: 11, scope: !1876)
!1883 = !DILocation(line: 341, column: 28, scope: !1850)
!1884 = !DILocation(line: 349, column: 27, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !116, line: 349, column: 19)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !116, line: 348, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1880, file: !116, line: 347, column: 11)
!1888 = !DILocation(line: 349, column: 19, scope: !1886)
!1889 = !DILocation(line: 351, column: 43, scope: !1886)
!1890 = !DILocation(line: 351, column: 29, scope: !1886)
!1891 = !DILocation(line: 351, column: 15, scope: !1886)
!1892 = !DILocation(line: 351, column: 33, scope: !1886)
!1893 = !DILocation(line: 347, column: 58, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1887, file: !116, discriminator: 2)
!1895 = distinct !{!1895, !1896, !1897}
!1896 = !DILocation(line: 347, column: 11, scope: !1880)
!1897 = !DILocation(line: 352, column: 13, scope: !1880)
!1898 = !DILocation(line: 343, column: 68, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1870, file: !116, discriminator: 2)
!1900 = distinct !{!1900, !1901, !1902}
!1901 = !DILocation(line: 343, column: 3, scope: !1866)
!1902 = !DILocation(line: 354, column: 5, scope: !1866)
!1903 = !DILocation(line: 357, column: 1, scope: !1850)
!1904 = distinct !DISubprogram(name: "hash_do_for_each", scope: !116, file: !116, line: 368, type: !1905, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1911)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!30, !1458, !1907, !29}
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hash_processor", file: !119, line: 51, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!43, !29, !29}
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917}
!1912 = !DILocalVariable(name: "table", arg: 1, scope: !1904, file: !116, line: 368, type: !1458)
!1913 = !DILocalVariable(name: "processor", arg: 2, scope: !1904, file: !116, line: 368, type: !1907)
!1914 = !DILocalVariable(name: "processor_data", arg: 3, scope: !1904, file: !116, line: 369, type: !29)
!1915 = !DILocalVariable(name: "counter", scope: !1904, file: !116, line: 371, type: !30)
!1916 = !DILocalVariable(name: "bucket", scope: !1904, file: !116, line: 372, type: !1470)
!1917 = !DILocalVariable(name: "cursor", scope: !1904, file: !116, line: 373, type: !1470)
!1918 = !DILocation(line: 368, column: 37, scope: !1904)
!1919 = !DILocation(line: 368, column: 59, scope: !1904)
!1920 = !DILocation(line: 369, column: 25, scope: !1904)
!1921 = !DILocation(line: 371, column: 10, scope: !1904)
!1922 = !DILocation(line: 375, column: 24, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1904, file: !116, line: 375, column: 3)
!1924 = !DILocation(line: 372, column: 28, scope: !1904)
!1925 = !DILocation(line: 375, column: 48, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1927, file: !116, discriminator: 1)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !116, line: 375, column: 3)
!1928 = !DILocation(line: 375, column: 39, scope: !1926)
!1929 = !DILocation(line: 375, column: 3, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1923, file: !116, discriminator: 1)
!1931 = !DILocation(line: 377, column: 19, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !116, line: 377, column: 11)
!1933 = distinct !DILexicalBlock(scope: !1927, file: !116, line: 376, column: 5)
!1934 = !DILocation(line: 377, column: 11, scope: !1932)
!1935 = !DILocation(line: 379, column: 11, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1937, file: !116, discriminator: 1)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !116, line: 379, column: 11)
!1938 = distinct !DILexicalBlock(scope: !1932, file: !116, line: 378, column: 9)
!1939 = !DILocation(line: 377, column: 11, scope: !1933)
!1940 = !DILocation(line: 373, column: 28, scope: !1904)
!1941 = !DILocation(line: 381, column: 21, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !116, line: 381, column: 19)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !116, line: 380, column: 13)
!1944 = distinct !DILexicalBlock(scope: !1937, file: !116, line: 379, column: 11)
!1945 = !DILocation(line: 381, column: 19, scope: !1943)
!1946 = !DILocation(line: 383, column: 22, scope: !1943)
!1947 = !DILocation(line: 379, column: 58, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1944, file: !116, discriminator: 2)
!1949 = distinct !{!1949, !1950, !1951}
!1950 = !DILocation(line: 379, column: 11, scope: !1937)
!1951 = !DILocation(line: 384, column: 13, scope: !1937)
!1952 = !DILocation(line: 375, column: 68, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1927, file: !116, discriminator: 2)
!1954 = distinct !{!1954, !1955, !1956}
!1955 = !DILocation(line: 375, column: 3, scope: !1923)
!1956 = !DILocation(line: 386, column: 5, scope: !1923)
!1957 = !DILocation(line: 389, column: 1, scope: !1904)
!1958 = distinct !DISubprogram(name: "hash_string", scope: !116, file: !116, line: 428, type: !1959, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!30, !38, !30}
!1961 = !{!1962, !1963, !1964, !1965}
!1962 = !DILocalVariable(name: "string", arg: 1, scope: !1958, file: !116, line: 428, type: !38)
!1963 = !DILocalVariable(name: "n_buckets", arg: 2, scope: !1958, file: !116, line: 428, type: !30)
!1964 = !DILocalVariable(name: "value", scope: !1958, file: !116, line: 430, type: !30)
!1965 = !DILocalVariable(name: "ch", scope: !1958, file: !116, line: 431, type: !37)
!1966 = !DILocation(line: 428, column: 26, scope: !1958)
!1967 = !DILocation(line: 428, column: 41, scope: !1958)
!1968 = !DILocation(line: 430, column: 10, scope: !1958)
!1969 = !DILocation(line: 433, column: 16, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1971, file: !116, discriminator: 1)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !116, line: 433, column: 3)
!1972 = distinct !DILexicalBlock(scope: !1958, file: !116, line: 433, column: 3)
!1973 = !DILocation(line: 431, column: 17, scope: !1958)
!1974 = !DILocation(line: 433, column: 3, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1972, file: !116, discriminator: 1)
!1976 = !DILocation(line: 434, column: 20, scope: !1971)
!1977 = !DILocation(line: 434, column: 27, scope: !1971)
!1978 = !DILocation(line: 434, column: 25, scope: !1971)
!1979 = !DILocation(line: 434, column: 31, scope: !1971)
!1980 = !DILocation(line: 433, column: 32, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1971, file: !116, discriminator: 2)
!1982 = distinct !{!1982, !1983, !1984}
!1983 = !DILocation(line: 433, column: 3, scope: !1972)
!1984 = !DILocation(line: 434, column: 33, scope: !1972)
!1985 = !DILocation(line: 435, column: 3, scope: !1958)
!1986 = distinct !DISubprogram(name: "hash_reset_tuning", scope: !116, file: !116, line: 479, type: !1987, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !1990)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1990 = !{!1991}
!1991 = !DILocalVariable(name: "tuning", arg: 1, scope: !1986, file: !116, line: 479, type: !1989)
!1992 = !DILocation(line: 479, column: 33, scope: !1986)
!1993 = !DILocation(line: 481, column: 13, scope: !1986)
!1994 = !{i64 0, i64 4, !1995, i64 4, i64 4, !1995, i64 8, i64 4, !1995, i64 12, i64 4, !1995, i64 16, i64 1, !1302}
!1995 = !{!1996, !1996, i64 0}
!1996 = !{!"float", !645, i64 0}
!1997 = !DILocation(line: 482, column: 1, scope: !1986)
!1998 = distinct !DISubprogram(name: "hash_initialize", scope: !116, file: !116, line: 594, type: !1999, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2002)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!2001, !30, !1476, !1478, !1483, !1488}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!2002 = !{!2003, !2004, !2005, !2006, !2007, !2008}
!2003 = !DILocalVariable(name: "candidate", arg: 1, scope: !1998, file: !116, line: 594, type: !30)
!2004 = !DILocalVariable(name: "tuning", arg: 2, scope: !1998, file: !116, line: 594, type: !1476)
!2005 = !DILocalVariable(name: "hasher", arg: 3, scope: !1998, file: !116, line: 595, type: !1478)
!2006 = !DILocalVariable(name: "comparator", arg: 4, scope: !1998, file: !116, line: 595, type: !1483)
!2007 = !DILocalVariable(name: "data_freer", arg: 5, scope: !1998, file: !116, line: 596, type: !1488)
!2008 = !DILocalVariable(name: "table", scope: !1998, file: !116, line: 598, type: !2001)
!2009 = !DILocation(line: 594, column: 25, scope: !1998)
!2010 = !DILocation(line: 594, column: 55, scope: !1998)
!2011 = !DILocation(line: 595, column: 30, scope: !1998)
!2012 = !DILocation(line: 595, column: 54, scope: !1998)
!2013 = !DILocation(line: 596, column: 34, scope: !1998)
!2014 = !DILocation(line: 600, column: 14, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1998, file: !116, line: 600, column: 7)
!2016 = !DILocation(line: 600, column: 7, scope: !1998)
!2017 = !DILocation(line: 602, column: 18, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1998, file: !116, line: 602, column: 7)
!2019 = !DILocation(line: 602, column: 7, scope: !1998)
!2020 = !DILocation(line: 605, column: 11, scope: !1998)
!2021 = !DILocation(line: 598, column: 15, scope: !1998)
!2022 = !DILocation(line: 606, column: 13, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1998, file: !116, line: 606, column: 7)
!2024 = !DILocation(line: 606, column: 7, scope: !1998)
!2025 = !DILocation(line: 609, column: 8, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1998, file: !116, line: 609, column: 7)
!2027 = !DILocation(line: 609, column: 7, scope: !1998)
!2028 = !DILocation(line: 611, column: 10, scope: !1998)
!2029 = !DILocation(line: 611, column: 17, scope: !1998)
!2030 = !{!1498, !644, i64 40}
!2031 = !DILocalVariable(name: "table", arg: 1, scope: !2032, file: !116, line: 512, type: !2001)
!2032 = distinct !DISubprogram(name: "check_tuning", scope: !116, file: !116, line: 512, type: !2033, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!43, !2001}
!2035 = !{!2031, !2036, !2037}
!2036 = !DILocalVariable(name: "tuning", scope: !2032, file: !116, line: 514, type: !1476)
!2037 = !DILocalVariable(name: "epsilon", scope: !2032, file: !116, line: 515, type: !123)
!2038 = !DILocation(line: 512, column: 27, scope: !2032, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 612, column: 8, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1998, file: !116, line: 612, column: 7)
!2041 = !DILocation(line: 514, column: 22, scope: !2032, inlinedAt: !2039)
!2042 = !DILocation(line: 516, column: 14, scope: !2043, inlinedAt: !2039)
!2043 = distinct !DILexicalBlock(scope: !2032, file: !116, line: 516, column: 7)
!2044 = !DILocation(line: 516, column: 7, scope: !2032, inlinedAt: !2039)
!2045 = !DILocation(line: 515, column: 9, scope: !2032, inlinedAt: !2039)
!2046 = !DILocation(line: 526, column: 25, scope: !2047, inlinedAt: !2039)
!2047 = distinct !DILexicalBlock(scope: !2032, file: !116, line: 526, column: 7)
!2048 = !{!2049, !1996, i64 8}
!2049 = !{!"hash_tuning", !1996, i64 0, !1996, i64 4, !1996, i64 8, !1996, i64 12, !1303, i64 16}
!2050 = !DILocation(line: 526, column: 15, scope: !2047, inlinedAt: !2039)
!2051 = !DILocation(line: 527, column: 35, scope: !2052, inlinedAt: !2039)
!2052 = !DILexicalBlockFile(scope: !2047, file: !116, discriminator: 1)
!2053 = !DILocation(line: 527, column: 7, scope: !2047, inlinedAt: !2039)
!2054 = !DILocation(line: 528, column: 32, scope: !2052, inlinedAt: !2039)
!2055 = !{!2049, !1996, i64 12}
!2056 = !DILocation(line: 528, column: 22, scope: !2052, inlinedAt: !2039)
!2057 = !DILocation(line: 529, column: 7, scope: !2047, inlinedAt: !2039)
!2058 = !DILocation(line: 529, column: 23, scope: !2052, inlinedAt: !2039)
!2059 = !{!2049, !1996, i64 0}
!2060 = !DILocation(line: 529, column: 12, scope: !2052, inlinedAt: !2039)
!2061 = !DILocation(line: 530, column: 7, scope: !2047, inlinedAt: !2039)
!2062 = !DILocation(line: 530, column: 35, scope: !2052, inlinedAt: !2039)
!2063 = !DILocation(line: 530, column: 55, scope: !2052, inlinedAt: !2039)
!2064 = !{!2049, !1996, i64 4}
!2065 = !DILocation(line: 531, column: 7, scope: !2047, inlinedAt: !2039)
!2066 = !DILocation(line: 532, column: 45, scope: !2052, inlinedAt: !2039)
!2067 = !DILocalVariable(name: "candidate", arg: 1, scope: !2068, file: !116, line: 544, type: !30)
!2068 = distinct !DISubprogram(name: "compute_bucket_size", scope: !116, file: !116, line: 544, type: !2069, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!30, !30, !1476}
!2071 = !{!2067, !2072, !2073}
!2072 = !DILocalVariable(name: "tuning", arg: 2, scope: !2068, file: !116, line: 544, type: !1476)
!2073 = !DILocalVariable(name: "new_candidate", scope: !2074, file: !116, line: 548, type: !123)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !116, line: 547, column: 5)
!2075 = distinct !DILexicalBlock(scope: !2068, file: !116, line: 546, column: 7)
!2076 = !DILocation(line: 544, column: 29, scope: !2068, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 622, column: 22, scope: !1998)
!2078 = !DILocation(line: 544, column: 59, scope: !2068, inlinedAt: !2077)
!2079 = !DILocation(line: 546, column: 16, scope: !2075, inlinedAt: !2077)
!2080 = !{!2049, !1303, i64 16}
!2081 = !DILocation(line: 546, column: 7, scope: !2068, inlinedAt: !2077)
!2082 = !DILocation(line: 548, column: 29, scope: !2074, inlinedAt: !2077)
!2083 = !DILocation(line: 548, column: 49, scope: !2074, inlinedAt: !2077)
!2084 = !DILocation(line: 548, column: 39, scope: !2074, inlinedAt: !2077)
!2085 = !DILocation(line: 548, column: 13, scope: !2074, inlinedAt: !2077)
!2086 = !DILocation(line: 549, column: 20, scope: !2087, inlinedAt: !2077)
!2087 = distinct !DILexicalBlock(scope: !2074, file: !116, line: 549, column: 11)
!2088 = !DILocation(line: 551, column: 19, scope: !2074, inlinedAt: !2077)
!2089 = !DILocalVariable(name: "candidate", arg: 1, scope: !2090, file: !116, line: 463, type: !30)
!2090 = distinct !DISubprogram(name: "next_prime", scope: !116, file: !116, line: 463, type: !2091, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!30, !30}
!2093 = !{!2089}
!2094 = !DILocation(line: 463, column: 20, scope: !2090, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 553, column: 15, scope: !2068, inlinedAt: !2077)
!2096 = !DILocation(line: 466, column: 7, scope: !2090, inlinedAt: !2095)
!2097 = !DILocation(line: 470, column: 13, scope: !2090, inlinedAt: !2095)
!2098 = !DILocation(line: 472, column: 19, scope: !2099, inlinedAt: !2095)
!2099 = !DILexicalBlockFile(scope: !2090, file: !116, discriminator: 1)
!2100 = !DILocation(line: 472, column: 32, scope: !2099, inlinedAt: !2095)
!2101 = !DILocation(line: 444, column: 18, scope: !2102, inlinedAt: !2109)
!2102 = distinct !DISubprogram(name: "is_prime", scope: !116, file: !116, line: 444, type: !2103, isLocal: true, isDefinition: true, scopeLine: 445, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!43, !30}
!2105 = !{!2106, !2107, !2108}
!2106 = !DILocalVariable(name: "candidate", arg: 1, scope: !2102, file: !116, line: 444, type: !30)
!2107 = !DILocalVariable(name: "divisor", scope: !2102, file: !116, line: 446, type: !30)
!2108 = !DILocalVariable(name: "square", scope: !2102, file: !116, line: 447, type: !30)
!2109 = distinct !DILocation(line: 472, column: 36, scope: !2110, inlinedAt: !2095)
!2110 = !DILexicalBlockFile(scope: !2090, file: !116, discriminator: 2)
!2111 = !DILocation(line: 446, column: 10, scope: !2102, inlinedAt: !2109)
!2112 = !DILocation(line: 447, column: 10, scope: !2102, inlinedAt: !2109)
!2113 = !DILocation(line: 449, column: 17, scope: !2114, inlinedAt: !2109)
!2114 = !DILexicalBlockFile(scope: !2102, file: !116, discriminator: 1)
!2115 = !DILocation(line: 449, column: 29, scope: !2114, inlinedAt: !2109)
!2116 = !DILocation(line: 449, column: 43, scope: !2117, inlinedAt: !2109)
!2117 = !DILexicalBlockFile(scope: !2102, file: !116, discriminator: 2)
!2118 = !DILocation(line: 449, column: 29, scope: !2117, inlinedAt: !2109)
!2119 = !DILocation(line: 449, column: 3, scope: !2120, inlinedAt: !2109)
!2120 = !DILexicalBlockFile(scope: !2102, file: !116, discriminator: 3)
!2121 = !DILocation(line: 452, column: 19, scope: !2122, inlinedAt: !2109)
!2122 = distinct !DILexicalBlock(scope: !2102, file: !116, line: 450, column: 5)
!2123 = !DILocation(line: 452, column: 14, scope: !2122, inlinedAt: !2109)
!2124 = !DILocation(line: 453, column: 14, scope: !2122, inlinedAt: !2109)
!2125 = distinct !{!2125, !2126, !2127}
!2126 = !DILocation(line: 449, column: 3, scope: !2102)
!2127 = !DILocation(line: 454, column: 5, scope: !2102)
!2128 = !DILocation(line: 456, column: 21, scope: !2102, inlinedAt: !2109)
!2129 = !DILocation(line: 472, column: 35, scope: !2110, inlinedAt: !2095)
!2130 = !DILocation(line: 472, column: 3, scope: !2131, inlinedAt: !2095)
!2131 = !DILexicalBlockFile(scope: !2090, file: !116, discriminator: 3)
!2132 = !DILocation(line: 473, column: 15, scope: !2090, inlinedAt: !2095)
!2133 = distinct !{!2133, !2134, !2135}
!2134 = !DILocation(line: 472, column: 3, scope: !2090)
!2135 = !DILocation(line: 473, column: 18, scope: !2090)
!2136 = !DILocation(line: 554, column: 7, scope: !2137, inlinedAt: !2077)
!2137 = distinct !DILexicalBlock(scope: !2068, file: !116, line: 554, column: 7)
!2138 = !DILocation(line: 622, column: 10, scope: !1998)
!2139 = !DILocation(line: 622, column: 20, scope: !1998)
!2140 = !DILocation(line: 623, column: 8, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1998, file: !116, line: 623, column: 7)
!2142 = !DILocation(line: 623, column: 7, scope: !1998)
!2143 = !DILocation(line: 626, column: 19, scope: !1998)
!2144 = !DILocation(line: 626, column: 17, scope: !1998)
!2145 = !DILocation(line: 627, column: 21, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1998, file: !116, line: 627, column: 7)
!2147 = !DILocation(line: 627, column: 7, scope: !1998)
!2148 = !DILocation(line: 629, column: 39, scope: !1998)
!2149 = !DILocation(line: 629, column: 10, scope: !1998)
!2150 = !DILocation(line: 629, column: 23, scope: !1998)
!2151 = !DILocation(line: 630, column: 10, scope: !1998)
!2152 = !DILocation(line: 633, column: 10, scope: !1998)
!2153 = !DILocation(line: 631, column: 20, scope: !1998)
!2154 = !DILocation(line: 633, column: 17, scope: !1998)
!2155 = !DILocation(line: 634, column: 10, scope: !1998)
!2156 = !DILocation(line: 634, column: 21, scope: !1998)
!2157 = !DILocation(line: 635, column: 10, scope: !1998)
!2158 = !DILocation(line: 635, column: 21, scope: !1998)
!2159 = !{!1498, !644, i64 64}
!2160 = !DILocation(line: 637, column: 10, scope: !1998)
!2161 = !DILocation(line: 637, column: 26, scope: !1998)
!2162 = !{!1498, !644, i64 72}
!2163 = !DILocation(line: 641, column: 3, scope: !1998)
!2164 = !DILocation(line: 644, column: 3, scope: !1998)
!2165 = !DILocation(line: 645, column: 3, scope: !1998)
!2166 = !DILocation(line: 646, column: 1, scope: !1998)
!2167 = distinct !DISubprogram(name: "raw_hasher", scope: !116, file: !116, line: 486, type: !1480, isLocal: true, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2168)
!2168 = !{!2169, !2170, !2171}
!2169 = !DILocalVariable(name: "data", arg: 1, scope: !2167, file: !116, line: 486, type: !33)
!2170 = !DILocalVariable(name: "n", arg: 2, scope: !2167, file: !116, line: 486, type: !30)
!2171 = !DILocalVariable(name: "val", scope: !2167, file: !116, line: 493, type: !30)
!2172 = !DILocation(line: 486, column: 25, scope: !2167)
!2173 = !DILocation(line: 486, column: 38, scope: !2167)
!2174 = !DILocation(line: 493, column: 25, scope: !2167)
!2175 = !DILocalVariable(name: "x", arg: 1, scope: !2176, file: !2177, line: 85, type: !30)
!2176 = distinct !DISubprogram(name: "rotr_sz", scope: !2177, file: !2177, line: 85, type: !2178, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2180)
!2177 = !DIFile(filename: "./lib/bitrotate.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!30, !30, !73}
!2180 = !{!2175, !2181}
!2181 = !DILocalVariable(name: "n", arg: 2, scope: !2176, file: !2177, line: 85, type: !73)
!2182 = !DILocation(line: 85, column: 17, scope: !2176, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 493, column: 16, scope: !2167)
!2184 = !DILocation(line: 85, column: 24, scope: !2176, inlinedAt: !2183)
!2185 = !DILocation(line: 87, column: 14, scope: !2176, inlinedAt: !2183)
!2186 = !DILocation(line: 87, column: 25, scope: !2176, inlinedAt: !2183)
!2187 = !DILocation(line: 87, column: 20, scope: !2176, inlinedAt: !2183)
!2188 = !DILocation(line: 493, column: 10, scope: !2167)
!2189 = !DILocation(line: 494, column: 14, scope: !2167)
!2190 = !DILocation(line: 494, column: 3, scope: !2167)
!2191 = distinct !DISubprogram(name: "raw_comparator", scope: !116, file: !116, line: 499, type: !1485, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2192)
!2192 = !{!2193, !2194}
!2193 = !DILocalVariable(name: "a", arg: 1, scope: !2191, file: !116, line: 499, type: !33)
!2194 = !DILocalVariable(name: "b", arg: 2, scope: !2191, file: !116, line: 499, type: !33)
!2195 = !DILocation(line: 499, column: 29, scope: !2191)
!2196 = !DILocation(line: 499, column: 44, scope: !2191)
!2197 = !DILocation(line: 501, column: 12, scope: !2191)
!2198 = !DILocation(line: 501, column: 3, scope: !2191)
!2199 = distinct !DISubprogram(name: "hash_clear", scope: !116, file: !116, line: 653, type: !2200, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2001}
!2202 = !{!2203, !2204, !2205, !2211}
!2203 = !DILocalVariable(name: "table", arg: 1, scope: !2199, file: !116, line: 653, type: !2001)
!2204 = !DILocalVariable(name: "bucket", scope: !2199, file: !116, line: 655, type: !1464)
!2205 = !DILocalVariable(name: "cursor", scope: !2206, file: !116, line: 661, type: !1464)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !116, line: 660, column: 9)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !116, line: 659, column: 11)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !116, line: 658, column: 5)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !116, line: 657, column: 3)
!2210 = distinct !DILexicalBlock(scope: !2199, file: !116, line: 657, column: 3)
!2211 = !DILocalVariable(name: "next", scope: !2206, file: !116, line: 662, type: !1464)
!2212 = !DILocation(line: 653, column: 25, scope: !2199)
!2213 = !DILocation(line: 657, column: 24, scope: !2210)
!2214 = !DILocation(line: 655, column: 22, scope: !2199)
!2215 = !DILocation(line: 657, column: 48, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2209, file: !116, discriminator: 1)
!2217 = !DILocation(line: 657, column: 39, scope: !2216)
!2218 = !DILocation(line: 657, column: 3, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2210, file: !116, discriminator: 1)
!2220 = !DILocation(line: 659, column: 19, scope: !2207)
!2221 = !DILocation(line: 659, column: 11, scope: !2207)
!2222 = !DILocation(line: 659, column: 11, scope: !2208)
!2223 = !DILocation(line: 665, column: 33, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2206, file: !116, line: 665, column: 11)
!2225 = !DILocation(line: 661, column: 30, scope: !2206)
!2226 = !DILocation(line: 665, column: 11, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2224, file: !116, discriminator: 1)
!2228 = !DILocation(line: 667, column: 19, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !116, line: 666, column: 13)
!2230 = distinct !DILexicalBlock(scope: !2224, file: !116, line: 665, column: 11)
!2231 = !DILocation(line: 668, column: 44, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !116, line: 667, column: 19)
!2233 = !DILocation(line: 668, column: 17, scope: !2232)
!2234 = !DILocation(line: 669, column: 28, scope: !2229)
!2235 = !DILocation(line: 671, column: 30, scope: !2229)
!2236 = !DILocation(line: 662, column: 30, scope: !2206)
!2237 = !DILocation(line: 674, column: 37, scope: !2229)
!2238 = !DILocation(line: 674, column: 28, scope: !2229)
!2239 = !DILocation(line: 675, column: 38, scope: !2229)
!2240 = distinct !{!2240, !2241, !2242}
!2241 = !DILocation(line: 665, column: 11, scope: !2224)
!2242 = !DILocation(line: 676, column: 13, scope: !2224)
!2243 = !DILocation(line: 679, column: 15, scope: !2206)
!2244 = !DILocation(line: 680, column: 40, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2206, file: !116, line: 679, column: 15)
!2246 = !DILocation(line: 680, column: 13, scope: !2245)
!2247 = !DILocation(line: 682, column: 24, scope: !2206)
!2248 = !DILocation(line: 683, column: 9, scope: !2206)
!2249 = !DILocation(line: 657, column: 68, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2209, file: !116, discriminator: 2)
!2251 = distinct !{!2251, !2252, !2253}
!2252 = !DILocation(line: 657, column: 3, scope: !2210)
!2253 = !DILocation(line: 684, column: 5, scope: !2210)
!2254 = !DILocation(line: 686, column: 10, scope: !2199)
!2255 = !DILocation(line: 688, column: 1, scope: !2199)
!2256 = !DILocation(line: 687, column: 20, scope: !2199)
!2257 = distinct !DISubprogram(name: "hash_free", scope: !116, file: !116, line: 696, type: !2200, isDefinition: true, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2258)
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DILocalVariable(name: "table", arg: 1, scope: !2257, file: !116, line: 696, type: !2001)
!2260 = !DILocalVariable(name: "bucket", scope: !2257, file: !116, line: 698, type: !1464)
!2261 = !DILocalVariable(name: "cursor", scope: !2257, file: !116, line: 699, type: !1464)
!2262 = !DILocalVariable(name: "next", scope: !2257, file: !116, line: 700, type: !1464)
!2263 = !DILocation(line: 696, column: 24, scope: !2257)
!2264 = !DILocation(line: 703, column: 14, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2257, file: !116, line: 703, column: 7)
!2266 = !DILocation(line: 703, column: 7, scope: !2265)
!2267 = !DILocation(line: 703, column: 25, scope: !2265)
!2268 = !DILocation(line: 703, column: 35, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2265, file: !116, discriminator: 1)
!2270 = !DILocation(line: 703, column: 28, scope: !2269)
!2271 = !DILocation(line: 703, column: 7, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2257, file: !116, discriminator: 1)
!2273 = !DILocation(line: 705, column: 28, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !116, line: 705, column: 7)
!2275 = distinct !DILexicalBlock(scope: !2265, file: !116, line: 704, column: 5)
!2276 = !DILocation(line: 698, column: 22, scope: !2257)
!2277 = !DILocation(line: 705, column: 52, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2279, file: !116, discriminator: 1)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !116, line: 705, column: 7)
!2280 = !DILocation(line: 705, column: 43, scope: !2278)
!2281 = !DILocation(line: 705, column: 7, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2274, file: !116, discriminator: 1)
!2283 = !DILocation(line: 707, column: 23, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !116, line: 707, column: 15)
!2285 = distinct !DILexicalBlock(scope: !2279, file: !116, line: 706, column: 9)
!2286 = !DILocation(line: 707, column: 15, scope: !2284)
!2287 = !DILocation(line: 709, column: 15, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2289, file: !116, discriminator: 1)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !116, line: 709, column: 15)
!2290 = distinct !DILexicalBlock(scope: !2284, file: !116, line: 708, column: 13)
!2291 = !DILocation(line: 707, column: 15, scope: !2285)
!2292 = !DILocation(line: 699, column: 22, scope: !2257)
!2293 = !DILocation(line: 710, column: 24, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !116, line: 709, column: 15)
!2295 = !DILocation(line: 710, column: 17, scope: !2294)
!2296 = !DILocation(line: 709, column: 62, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2294, file: !116, discriminator: 2)
!2298 = distinct !{!2298, !2299, !2300}
!2299 = !DILocation(line: 709, column: 15, scope: !2289)
!2300 = !DILocation(line: 710, column: 48, scope: !2289)
!2301 = !DILocation(line: 705, column: 72, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2279, file: !116, discriminator: 2)
!2303 = distinct !{!2303, !2304, !2305}
!2304 = !DILocation(line: 705, column: 7, scope: !2274)
!2305 = !DILocation(line: 712, column: 9, scope: !2274)
!2306 = !DILocation(line: 722, column: 24, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2257, file: !116, line: 722, column: 3)
!2308 = !DILocation(line: 722, column: 48, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2310, file: !116, discriminator: 1)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !116, line: 722, column: 3)
!2311 = !DILocation(line: 722, column: 39, scope: !2309)
!2312 = !DILocation(line: 722, column: 3, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2307, file: !116, discriminator: 1)
!2314 = !DILocation(line: 724, column: 29, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !116, line: 724, column: 7)
!2316 = distinct !DILexicalBlock(scope: !2310, file: !116, line: 723, column: 5)
!2317 = !DILocation(line: 724, column: 7, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2315, file: !116, discriminator: 1)
!2319 = !DILocation(line: 726, column: 26, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !116, line: 725, column: 9)
!2321 = distinct !DILexicalBlock(scope: !2315, file: !116, line: 724, column: 7)
!2322 = !DILocation(line: 700, column: 22, scope: !2257)
!2323 = !DILocation(line: 727, column: 11, scope: !2320)
!2324 = distinct !{!2324, !2325, !2326}
!2325 = !DILocation(line: 724, column: 7, scope: !2315)
!2326 = !DILocation(line: 728, column: 9, scope: !2315)
!2327 = !DILocation(line: 722, column: 68, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2310, file: !116, discriminator: 2)
!2329 = distinct !{!2329, !2330, !2331}
!2330 = !DILocation(line: 722, column: 3, scope: !2307)
!2331 = !DILocation(line: 729, column: 5, scope: !2307)
!2332 = !DILocation(line: 732, column: 24, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2257, file: !116, line: 732, column: 3)
!2334 = !DILocation(line: 732, column: 3, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2333, file: !116, discriminator: 1)
!2336 = !DILocation(line: 734, column: 22, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !116, line: 733, column: 5)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !116, line: 732, column: 3)
!2339 = !DILocation(line: 735, column: 7, scope: !2337)
!2340 = distinct !{!2340, !2341, !2342}
!2341 = !DILocation(line: 732, column: 3, scope: !2333)
!2342 = !DILocation(line: 736, column: 5, scope: !2333)
!2343 = !DILocation(line: 741, column: 16, scope: !2257)
!2344 = !DILocation(line: 741, column: 3, scope: !2257)
!2345 = !DILocation(line: 742, column: 9, scope: !2257)
!2346 = !DILocation(line: 742, column: 3, scope: !2257)
!2347 = !DILocation(line: 743, column: 1, scope: !2257)
!2348 = distinct !DISubprogram(name: "hash_rehash", scope: !116, file: !116, line: 943, type: !2349, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!43, !2001, !30}
!2351 = !{!2352, !2353, !2354, !2355, !2356}
!2352 = !DILocalVariable(name: "table", arg: 1, scope: !2348, file: !116, line: 943, type: !2001)
!2353 = !DILocalVariable(name: "candidate", arg: 2, scope: !2348, file: !116, line: 943, type: !30)
!2354 = !DILocalVariable(name: "storage", scope: !2348, file: !116, line: 945, type: !1460)
!2355 = !DILocalVariable(name: "new_table", scope: !2348, file: !116, line: 946, type: !2001)
!2356 = !DILocalVariable(name: "new_size", scope: !2348, file: !116, line: 947, type: !30)
!2357 = !DILocation(line: 943, column: 26, scope: !2348)
!2358 = !DILocation(line: 943, column: 40, scope: !2348)
!2359 = !DILocation(line: 945, column: 3, scope: !2348)
!2360 = !DILocation(line: 947, column: 60, scope: !2348)
!2361 = !DILocation(line: 544, column: 29, scope: !2068, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 947, column: 21, scope: !2348)
!2363 = !DILocation(line: 544, column: 59, scope: !2068, inlinedAt: !2362)
!2364 = !DILocation(line: 546, column: 16, scope: !2075, inlinedAt: !2362)
!2365 = !DILocation(line: 546, column: 7, scope: !2068, inlinedAt: !2362)
!2366 = !DILocation(line: 548, column: 29, scope: !2074, inlinedAt: !2362)
!2367 = !DILocation(line: 548, column: 49, scope: !2074, inlinedAt: !2362)
!2368 = !DILocation(line: 548, column: 39, scope: !2074, inlinedAt: !2362)
!2369 = !DILocation(line: 548, column: 13, scope: !2074, inlinedAt: !2362)
!2370 = !DILocation(line: 549, column: 20, scope: !2087, inlinedAt: !2362)
!2371 = !DILocation(line: 551, column: 19, scope: !2074, inlinedAt: !2362)
!2372 = !DILocation(line: 463, column: 20, scope: !2090, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 553, column: 15, scope: !2068, inlinedAt: !2362)
!2374 = !DILocation(line: 466, column: 7, scope: !2090, inlinedAt: !2373)
!2375 = !DILocation(line: 470, column: 13, scope: !2090, inlinedAt: !2373)
!2376 = !DILocation(line: 472, column: 19, scope: !2099, inlinedAt: !2373)
!2377 = !DILocation(line: 472, column: 32, scope: !2099, inlinedAt: !2373)
!2378 = !DILocation(line: 444, column: 18, scope: !2102, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 472, column: 36, scope: !2110, inlinedAt: !2373)
!2380 = !DILocation(line: 446, column: 10, scope: !2102, inlinedAt: !2379)
!2381 = !DILocation(line: 447, column: 10, scope: !2102, inlinedAt: !2379)
!2382 = !DILocation(line: 449, column: 17, scope: !2114, inlinedAt: !2379)
!2383 = !DILocation(line: 449, column: 29, scope: !2114, inlinedAt: !2379)
!2384 = !DILocation(line: 449, column: 43, scope: !2117, inlinedAt: !2379)
!2385 = !DILocation(line: 449, column: 29, scope: !2117, inlinedAt: !2379)
!2386 = !DILocation(line: 449, column: 3, scope: !2120, inlinedAt: !2379)
!2387 = !DILocation(line: 452, column: 19, scope: !2122, inlinedAt: !2379)
!2388 = !DILocation(line: 452, column: 14, scope: !2122, inlinedAt: !2379)
!2389 = !DILocation(line: 453, column: 14, scope: !2122, inlinedAt: !2379)
!2390 = !DILocation(line: 456, column: 21, scope: !2102, inlinedAt: !2379)
!2391 = !DILocation(line: 472, column: 35, scope: !2110, inlinedAt: !2373)
!2392 = !DILocation(line: 472, column: 3, scope: !2131, inlinedAt: !2373)
!2393 = !DILocation(line: 473, column: 15, scope: !2090, inlinedAt: !2373)
!2394 = !DILocation(line: 947, column: 10, scope: !2348)
!2395 = !DILocation(line: 951, column: 26, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2348, file: !116, line: 951, column: 7)
!2397 = !DILocation(line: 951, column: 16, scope: !2396)
!2398 = !DILocation(line: 951, column: 7, scope: !2348)
!2399 = !DILocation(line: 946, column: 15, scope: !2348)
!2400 = !DILocation(line: 954, column: 23, scope: !2348)
!2401 = !DILocation(line: 954, column: 21, scope: !2348)
!2402 = !DILocation(line: 955, column: 25, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2348, file: !116, line: 955, column: 7)
!2404 = !DILocation(line: 955, column: 7, scope: !2348)
!2405 = !DILocation(line: 957, column: 14, scope: !2348)
!2406 = !DILocation(line: 957, column: 24, scope: !2348)
!2407 = !DILocation(line: 958, column: 47, scope: !2348)
!2408 = !DILocation(line: 958, column: 14, scope: !2348)
!2409 = !DILocation(line: 958, column: 27, scope: !2348)
!2410 = !DILocation(line: 959, column: 14, scope: !2348)
!2411 = !DILocation(line: 961, column: 30, scope: !2348)
!2412 = !DILocation(line: 960, column: 24, scope: !2348)
!2413 = !DILocation(line: 961, column: 14, scope: !2348)
!2414 = !DILocation(line: 962, column: 30, scope: !2348)
!2415 = !DILocation(line: 961, column: 21, scope: !2348)
!2416 = !DILocation(line: 963, column: 34, scope: !2348)
!2417 = !DILocation(line: 963, column: 14, scope: !2348)
!2418 = !DILocation(line: 963, column: 25, scope: !2348)
!2419 = !DILocation(line: 984, column: 39, scope: !2348)
!2420 = !DILocation(line: 984, column: 14, scope: !2348)
!2421 = !DILocation(line: 984, column: 30, scope: !2348)
!2422 = !DILocation(line: 945, column: 14, scope: !2348)
!2423 = !DILocation(line: 986, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2348, file: !116, line: 986, column: 7)
!2425 = !DILocation(line: 986, column: 7, scope: !2348)
!2426 = !DILocation(line: 989, column: 20, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !116, line: 987, column: 5)
!2428 = !DILocation(line: 989, column: 7, scope: !2427)
!2429 = !DILocation(line: 990, column: 34, scope: !2427)
!2430 = !DILocation(line: 990, column: 21, scope: !2427)
!2431 = !DILocation(line: 992, column: 37, scope: !2427)
!2432 = !{!792, !792, i64 0}
!2433 = !DILocation(line: 992, column: 24, scope: !2427)
!2434 = !DILocation(line: 994, column: 43, scope: !2427)
!2435 = !DILocation(line: 994, column: 30, scope: !2427)
!2436 = !DILocation(line: 996, column: 7, scope: !2427)
!2437 = !DILocation(line: 954, column: 14, scope: !2348)
!2438 = !DILocation(line: 1012, column: 39, scope: !2348)
!2439 = !DILocation(line: 1012, column: 26, scope: !2348)
!2440 = !DILocalVariable(name: "dst", arg: 1, scope: !2441, file: !116, line: 860, type: !2001)
!2441 = distinct !DISubprogram(name: "transfer_entries", scope: !116, file: !116, line: 860, type: !2442, isLocal: true, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!43, !2001, !2001, !43}
!2444 = !{!2440, !2445, !2446, !2447, !2448, !2449, !2450, !2455, !2456}
!2445 = !DILocalVariable(name: "src", arg: 2, scope: !2441, file: !116, line: 860, type: !2001)
!2446 = !DILocalVariable(name: "safe", arg: 3, scope: !2441, file: !116, line: 860, type: !43)
!2447 = !DILocalVariable(name: "bucket", scope: !2441, file: !116, line: 862, type: !1464)
!2448 = !DILocalVariable(name: "cursor", scope: !2441, file: !116, line: 863, type: !1464)
!2449 = !DILocalVariable(name: "next", scope: !2441, file: !116, line: 864, type: !1464)
!2450 = !DILocalVariable(name: "data", scope: !2451, file: !116, line: 868, type: !29)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !116, line: 867, column: 7)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !116, line: 866, column: 9)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !116, line: 865, column: 3)
!2454 = distinct !DILexicalBlock(scope: !2441, file: !116, line: 865, column: 3)
!2455 = !DILocalVariable(name: "new_bucket", scope: !2451, file: !116, line: 869, type: !1464)
!2456 = !DILocalVariable(name: "new_entry", scope: !2457, file: !116, line: 913, type: !1464)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !116, line: 910, column: 11)
!2458 = distinct !DILexicalBlock(scope: !2451, file: !116, line: 909, column: 13)
!2459 = !DILocation(line: 860, column: 31, scope: !2441, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 1013, column: 10, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2348, file: !116, line: 1013, column: 7)
!2462 = !DILocation(line: 860, column: 48, scope: !2441, inlinedAt: !2460)
!2463 = !DILocation(line: 860, column: 58, scope: !2441, inlinedAt: !2460)
!2464 = !DILocation(line: 865, column: 22, scope: !2454, inlinedAt: !2460)
!2465 = !DILocation(line: 862, column: 22, scope: !2441, inlinedAt: !2460)
!2466 = !DILocation(line: 865, column: 44, scope: !2467, inlinedAt: !2460)
!2467 = !DILexicalBlockFile(scope: !2453, file: !116, discriminator: 1)
!2468 = !DILocation(line: 865, column: 37, scope: !2467, inlinedAt: !2460)
!2469 = !DILocation(line: 865, column: 3, scope: !2470, inlinedAt: !2460)
!2470 = !DILexicalBlockFile(scope: !2454, file: !116, discriminator: 1)
!2471 = !DILocation(line: 866, column: 17, scope: !2452, inlinedAt: !2460)
!2472 = !DILocation(line: 866, column: 9, scope: !2452, inlinedAt: !2460)
!2473 = !DILocation(line: 866, column: 9, scope: !2453, inlinedAt: !2460)
!2474 = !DILocation(line: 877, column: 31, scope: !2475, inlinedAt: !2460)
!2475 = distinct !DILexicalBlock(scope: !2451, file: !116, line: 877, column: 9)
!2476 = !DILocation(line: 863, column: 22, scope: !2441, inlinedAt: !2460)
!2477 = !DILocation(line: 877, column: 9, scope: !2478, inlinedAt: !2460)
!2478 = !DILexicalBlockFile(scope: !2475, file: !116, discriminator: 1)
!2479 = !DILocation(line: 879, column: 28, scope: !2480, inlinedAt: !2460)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !116, line: 878, column: 11)
!2481 = distinct !DILexicalBlock(scope: !2475, file: !116, line: 877, column: 9)
!2482 = !DILocation(line: 251, column: 41, scope: !1725, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 880, column: 26, scope: !2480, inlinedAt: !2460)
!2484 = !DILocation(line: 868, column: 15, scope: !2451, inlinedAt: !2460)
!2485 = !DILocation(line: 249, column: 32, scope: !1725, inlinedAt: !2483)
!2486 = !DILocation(line: 249, column: 51, scope: !1725, inlinedAt: !2483)
!2487 = !DILocation(line: 251, column: 21, scope: !1725, inlinedAt: !2483)
!2488 = !DILocation(line: 251, column: 14, scope: !1725, inlinedAt: !2483)
!2489 = !DILocation(line: 251, column: 10, scope: !1725, inlinedAt: !2483)
!2490 = !DILocation(line: 252, column: 21, scope: !1740, inlinedAt: !2483)
!2491 = !DILocation(line: 252, column: 12, scope: !1740, inlinedAt: !2483)
!2492 = !DILocation(line: 252, column: 7, scope: !1725, inlinedAt: !2483)
!2493 = !DILocation(line: 253, column: 5, scope: !1740, inlinedAt: !2483)
!2494 = !DILocation(line: 254, column: 17, scope: !1725, inlinedAt: !2483)
!2495 = !DILocation(line: 882, column: 28, scope: !2480, inlinedAt: !2460)
!2496 = !DILocation(line: 864, column: 22, scope: !2441, inlinedAt: !2460)
!2497 = !DILocation(line: 884, column: 29, scope: !2498, inlinedAt: !2460)
!2498 = distinct !DILexicalBlock(scope: !2480, file: !116, line: 884, column: 17)
!2499 = !DILocation(line: 884, column: 17, scope: !2498, inlinedAt: !2460)
!2500 = !DILocation(line: 884, column: 17, scope: !2480, inlinedAt: !2460)
!2501 = !DILocation(line: 888, column: 44, scope: !2502, inlinedAt: !2460)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !116, line: 885, column: 15)
!2503 = !DILocation(line: 890, column: 15, scope: !2502, inlinedAt: !2460)
!2504 = distinct !{!2504, !2505, !2506}
!2505 = !DILocation(line: 877, column: 9, scope: !2475)
!2506 = !DILocation(line: 899, column: 11, scope: !2475)
!2507 = !DILocation(line: 895, column: 34, scope: !2508, inlinedAt: !2460)
!2508 = distinct !DILexicalBlock(scope: !2498, file: !116, line: 892, column: 15)
!2509 = !DILocation(line: 896, column: 36, scope: !2508, inlinedAt: !2460)
!2510 = !DILocalVariable(name: "table", arg: 1, scope: !2511, file: !116, line: 776, type: !2001)
!2511 = distinct !DISubprogram(name: "free_entry", scope: !116, file: !116, line: 776, type: !2512, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !2001, !1464}
!2514 = !{!2510, !2515}
!2515 = !DILocalVariable(name: "entry", arg: 2, scope: !2511, file: !116, line: 776, type: !1464)
!2516 = !DILocation(line: 776, column: 25, scope: !2511, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 897, column: 17, scope: !2508, inlinedAt: !2460)
!2518 = !DILocation(line: 776, column: 51, scope: !2511, inlinedAt: !2517)
!2519 = !DILocation(line: 778, column: 15, scope: !2511, inlinedAt: !2517)
!2520 = !DILocation(line: 904, column: 22, scope: !2451, inlinedAt: !2460)
!2521 = !DILocation(line: 865, column: 64, scope: !2522, inlinedAt: !2460)
!2522 = !DILexicalBlockFile(scope: !2453, file: !116, discriminator: 2)
!2523 = distinct !{!2523, !2524, !2525}
!2524 = !DILocation(line: 865, column: 3, scope: !2454)
!2525 = !DILocation(line: 930, column: 7, scope: !2454)
!2526 = !DILocation(line: 1014, column: 13, scope: !2527)
!2527 = !DILexicalBlockFile(scope: !2461, file: !116, discriminator: 1)
!2528 = !DILocation(line: 1013, column: 7, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2348, file: !116, discriminator: 1)
!2530 = !DILocation(line: 1015, column: 5, scope: !2461)
!2531 = !DILocation(line: 1017, column: 20, scope: !2348)
!2532 = !DILocation(line: 1017, column: 3, scope: !2348)
!2533 = !DILocation(line: 1018, column: 3, scope: !2348)
!2534 = !DILocation(line: 1019, column: 1, scope: !2348)
!2535 = !DILocation(line: 860, column: 31, scope: !2441)
!2536 = !DILocation(line: 860, column: 48, scope: !2441)
!2537 = !DILocation(line: 860, column: 58, scope: !2441)
!2538 = !DILocation(line: 865, column: 22, scope: !2454)
!2539 = !DILocation(line: 862, column: 22, scope: !2441)
!2540 = !DILocation(line: 865, column: 44, scope: !2467)
!2541 = !DILocation(line: 865, column: 37, scope: !2467)
!2542 = !DILocation(line: 865, column: 3, scope: !2470)
!2543 = !DILocation(line: 866, column: 17, scope: !2452)
!2544 = !DILocation(line: 866, column: 9, scope: !2452)
!2545 = !DILocation(line: 866, column: 9, scope: !2453)
!2546 = !DILocation(line: 877, column: 31, scope: !2475)
!2547 = !DILocation(line: 863, column: 22, scope: !2441)
!2548 = !DILocation(line: 877, column: 9, scope: !2478)
!2549 = !DILocation(line: 879, column: 28, scope: !2480)
!2550 = !DILocation(line: 251, column: 41, scope: !1725, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 880, column: 26, scope: !2480)
!2552 = !DILocation(line: 868, column: 15, scope: !2451)
!2553 = !DILocation(line: 249, column: 32, scope: !1725, inlinedAt: !2551)
!2554 = !DILocation(line: 249, column: 51, scope: !1725, inlinedAt: !2551)
!2555 = !DILocation(line: 251, column: 21, scope: !1725, inlinedAt: !2551)
!2556 = !DILocation(line: 251, column: 14, scope: !1725, inlinedAt: !2551)
!2557 = !DILocation(line: 251, column: 10, scope: !1725, inlinedAt: !2551)
!2558 = !DILocation(line: 252, column: 21, scope: !1740, inlinedAt: !2551)
!2559 = !DILocation(line: 252, column: 12, scope: !1740, inlinedAt: !2551)
!2560 = !DILocation(line: 252, column: 7, scope: !1725, inlinedAt: !2551)
!2561 = !DILocation(line: 253, column: 5, scope: !1740, inlinedAt: !2551)
!2562 = !DILocation(line: 254, column: 17, scope: !1725, inlinedAt: !2551)
!2563 = !DILocation(line: 882, column: 28, scope: !2480)
!2564 = !DILocation(line: 864, column: 22, scope: !2441)
!2565 = !DILocation(line: 884, column: 29, scope: !2498)
!2566 = !DILocation(line: 884, column: 17, scope: !2498)
!2567 = !DILocation(line: 884, column: 17, scope: !2480)
!2568 = !DILocation(line: 888, column: 44, scope: !2502)
!2569 = !DILocation(line: 890, column: 15, scope: !2502)
!2570 = !DILocation(line: 895, column: 34, scope: !2508)
!2571 = !DILocation(line: 896, column: 36, scope: !2508)
!2572 = !DILocation(line: 776, column: 25, scope: !2511, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 897, column: 17, scope: !2508)
!2574 = !DILocation(line: 776, column: 51, scope: !2511, inlinedAt: !2573)
!2575 = !DILocation(line: 778, column: 15, scope: !2511, inlinedAt: !2573)
!2576 = !DILocation(line: 903, column: 24, scope: !2451)
!2577 = !DILocation(line: 904, column: 22, scope: !2451)
!2578 = !DILocation(line: 905, column: 13, scope: !2451)
!2579 = !DILocation(line: 249, column: 32, scope: !1725, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 907, column: 22, scope: !2451)
!2581 = !DILocation(line: 249, column: 51, scope: !1725, inlinedAt: !2580)
!2582 = !DILocation(line: 251, column: 21, scope: !1725, inlinedAt: !2580)
!2583 = !DILocation(line: 251, column: 41, scope: !1725, inlinedAt: !2580)
!2584 = !DILocation(line: 251, column: 14, scope: !1725, inlinedAt: !2580)
!2585 = !DILocation(line: 251, column: 10, scope: !1725, inlinedAt: !2580)
!2586 = !DILocation(line: 252, column: 21, scope: !1740, inlinedAt: !2580)
!2587 = !DILocation(line: 252, column: 12, scope: !1740, inlinedAt: !2580)
!2588 = !DILocation(line: 252, column: 7, scope: !1725, inlinedAt: !2580)
!2589 = !DILocation(line: 253, column: 5, scope: !1740, inlinedAt: !2580)
!2590 = !DILocation(line: 254, column: 17, scope: !1725, inlinedAt: !2580)
!2591 = !DILocation(line: 909, column: 25, scope: !2458)
!2592 = !DILocation(line: 909, column: 13, scope: !2458)
!2593 = !DILocation(line: 909, column: 13, scope: !2451)
!2594 = !DILocalVariable(name: "table", arg: 1, scope: !2595, file: !116, line: 751, type: !2001)
!2595 = distinct !DISubprogram(name: "allocate_entry", scope: !116, file: !116, line: 751, type: !2596, isLocal: true, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!1464, !2001}
!2598 = !{!2594, !2599}
!2599 = !DILocalVariable(name: "new", scope: !2595, file: !116, line: 753, type: !1464)
!2600 = !DILocation(line: 751, column: 29, scope: !2595, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 913, column: 44, scope: !2457)
!2602 = !DILocation(line: 755, column: 14, scope: !2603, inlinedAt: !2601)
!2603 = distinct !DILexicalBlock(scope: !2595, file: !116, line: 755, column: 7)
!2604 = !DILocation(line: 755, column: 7, scope: !2603, inlinedAt: !2601)
!2605 = !DILocation(line: 755, column: 7, scope: !2595, inlinedAt: !2601)
!2606 = !DILocation(line: 753, column: 22, scope: !2595, inlinedAt: !2601)
!2607 = !DILocation(line: 758, column: 37, scope: !2608, inlinedAt: !2601)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !116, line: 756, column: 5)
!2609 = !DILocation(line: 758, column: 30, scope: !2608, inlinedAt: !2601)
!2610 = !DILocation(line: 913, column: 32, scope: !2457)
!2611 = !DILocation(line: 915, column: 17, scope: !2457)
!2612 = !DILocation(line: 765, column: 13, scope: !2613, inlinedAt: !2601)
!2613 = distinct !DILexicalBlock(scope: !2603, file: !116, line: 761, column: 5)
!2614 = !DILocation(line: 915, column: 27, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2457, file: !116, line: 915, column: 17)
!2616 = !DILocation(line: 918, column: 24, scope: !2457)
!2617 = !DILocation(line: 918, column: 29, scope: !2457)
!2618 = !DILocation(line: 919, column: 43, scope: !2457)
!2619 = !DILocation(line: 919, column: 24, scope: !2457)
!2620 = !DILocation(line: 919, column: 29, scope: !2457)
!2621 = !DILocation(line: 920, column: 30, scope: !2457)
!2622 = !DILocation(line: 925, column: 30, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2458, file: !116, line: 923, column: 11)
!2624 = !DILocation(line: 926, column: 32, scope: !2623)
!2625 = !DILocation(line: 928, column: 22, scope: !2451)
!2626 = !DILocation(line: 929, column: 28, scope: !2451)
!2627 = !DILocation(line: 930, column: 7, scope: !2452)
!2628 = !DILocation(line: 865, column: 64, scope: !2522)
!2629 = !DILocation(line: 932, column: 1, scope: !2441)
!2630 = distinct !DISubprogram(name: "hash_insert_if_absent", scope: !116, file: !116, line: 1038, type: !2631, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2634)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!73, !2001, !33, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2645, !2646}
!2635 = !DILocalVariable(name: "table", arg: 1, scope: !2630, file: !116, line: 1038, type: !2001)
!2636 = !DILocalVariable(name: "entry", arg: 2, scope: !2630, file: !116, line: 1038, type: !33)
!2637 = !DILocalVariable(name: "matched_ent", arg: 3, scope: !2630, file: !116, line: 1039, type: !2633)
!2638 = !DILocalVariable(name: "data", scope: !2630, file: !116, line: 1041, type: !29)
!2639 = !DILocalVariable(name: "bucket", scope: !2630, file: !116, line: 1042, type: !1464)
!2640 = !DILocalVariable(name: "tuning", scope: !2641, file: !116, line: 1072, type: !1476)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !116, line: 1071, column: 9)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !116, line: 1069, column: 11)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !116, line: 1065, column: 5)
!2644 = distinct !DILexicalBlock(scope: !2630, file: !116, line: 1063, column: 7)
!2645 = !DILocalVariable(name: "candidate", scope: !2641, file: !116, line: 1073, type: !123)
!2646 = !DILocalVariable(name: "new_entry", scope: !2647, file: !116, line: 1096, type: !1464)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !116, line: 1095, column: 5)
!2648 = distinct !DILexicalBlock(scope: !2630, file: !116, line: 1094, column: 7)
!2649 = !DILocation(line: 1038, column: 36, scope: !2630)
!2650 = !DILocation(line: 1038, column: 55, scope: !2630)
!2651 = !DILocation(line: 1039, column: 37, scope: !2630)
!2652 = !DILocation(line: 1047, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2630, file: !116, line: 1047, column: 7)
!2654 = !DILocation(line: 1047, column: 7, scope: !2630)
!2655 = !DILocation(line: 1048, column: 5, scope: !2653)
!2656 = !DILocalVariable(name: "table", arg: 1, scope: !2657, file: !116, line: 790, type: !2001)
!2657 = distinct !DISubprogram(name: "hash_find_entry", scope: !116, file: !116, line: 790, type: !2658, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2661)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!29, !2001, !33, !2660, !43}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!2661 = !{!2656, !2662, !2663, !2664, !2665, !2666, !2667, !2670, !2675, !2681}
!2662 = !DILocalVariable(name: "entry", arg: 2, scope: !2657, file: !116, line: 790, type: !33)
!2663 = !DILocalVariable(name: "bucket_head", arg: 3, scope: !2657, file: !116, line: 791, type: !2660)
!2664 = !DILocalVariable(name: "delete", arg: 4, scope: !2657, file: !116, line: 791, type: !43)
!2665 = !DILocalVariable(name: "bucket", scope: !2657, file: !116, line: 793, type: !1464)
!2666 = !DILocalVariable(name: "cursor", scope: !2657, file: !116, line: 794, type: !1464)
!2667 = !DILocalVariable(name: "data", scope: !2668, file: !116, line: 805, type: !29)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !116, line: 804, column: 5)
!2669 = distinct !DILexicalBlock(scope: !2657, file: !116, line: 803, column: 7)
!2670 = !DILocalVariable(name: "next", scope: !2671, file: !116, line: 811, type: !1464)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !116, line: 810, column: 13)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !116, line: 809, column: 15)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !116, line: 808, column: 9)
!2674 = distinct !DILexicalBlock(scope: !2668, file: !116, line: 807, column: 11)
!2675 = !DILocalVariable(name: "data", scope: !2676, file: !116, line: 833, type: !29)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !116, line: 832, column: 9)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !116, line: 830, column: 11)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !116, line: 829, column: 5)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !116, line: 828, column: 3)
!2680 = distinct !DILexicalBlock(scope: !2657, file: !116, line: 828, column: 3)
!2681 = !DILocalVariable(name: "next", scope: !2682, file: !116, line: 837, type: !1464)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !116, line: 836, column: 13)
!2683 = distinct !DILexicalBlock(scope: !2676, file: !116, line: 835, column: 15)
!2684 = !DILocation(line: 790, column: 30, scope: !2657, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1051, column: 15, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2630, file: !116, line: 1051, column: 7)
!2687 = !DILocation(line: 790, column: 49, scope: !2657, inlinedAt: !2685)
!2688 = !DILocation(line: 791, column: 56, scope: !2657, inlinedAt: !2685)
!2689 = !DILocation(line: 249, column: 32, scope: !1725, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 793, column: 31, scope: !2657, inlinedAt: !2685)
!2691 = !DILocation(line: 249, column: 51, scope: !1725, inlinedAt: !2690)
!2692 = !DILocation(line: 251, column: 21, scope: !1725, inlinedAt: !2690)
!2693 = !DILocation(line: 251, column: 41, scope: !1725, inlinedAt: !2690)
!2694 = !DILocation(line: 251, column: 14, scope: !1725, inlinedAt: !2690)
!2695 = !DILocation(line: 251, column: 10, scope: !1725, inlinedAt: !2690)
!2696 = !DILocation(line: 252, column: 21, scope: !1740, inlinedAt: !2690)
!2697 = !DILocation(line: 252, column: 12, scope: !1740, inlinedAt: !2690)
!2698 = !DILocation(line: 252, column: 7, scope: !1725, inlinedAt: !2690)
!2699 = !DILocation(line: 253, column: 5, scope: !1740, inlinedAt: !2690)
!2700 = !DILocation(line: 254, column: 17, scope: !1725, inlinedAt: !2690)
!2701 = !DILocation(line: 254, column: 24, scope: !1725, inlinedAt: !2690)
!2702 = !DILocation(line: 793, column: 22, scope: !2657, inlinedAt: !2685)
!2703 = !DILocation(line: 799, column: 15, scope: !2704, inlinedAt: !2685)
!2704 = distinct !DILexicalBlock(scope: !2657, file: !116, line: 799, column: 7)
!2705 = !DILocation(line: 799, column: 20, scope: !2704, inlinedAt: !2685)
!2706 = !DILocation(line: 799, column: 7, scope: !2657, inlinedAt: !2685)
!2707 = !DILocation(line: 803, column: 13, scope: !2669, inlinedAt: !2685)
!2708 = !DILocation(line: 803, column: 29, scope: !2669, inlinedAt: !2685)
!2709 = !DILocation(line: 803, column: 39, scope: !2710, inlinedAt: !2685)
!2710 = !DILexicalBlockFile(scope: !2669, file: !116, discriminator: 1)
!2711 = !DILocation(line: 803, column: 32, scope: !2710, inlinedAt: !2685)
!2712 = !DILocation(line: 803, column: 7, scope: !2713, inlinedAt: !2685)
!2713 = !DILexicalBlockFile(scope: !2657, file: !116, discriminator: 1)
!2714 = !DILocation(line: 794, column: 22, scope: !2657, inlinedAt: !2685)
!2715 = !DILocation(line: 828, column: 33, scope: !2716, inlinedAt: !2685)
!2716 = !DILexicalBlockFile(scope: !2679, file: !116, discriminator: 1)
!2717 = !DILocation(line: 828, column: 3, scope: !2718, inlinedAt: !2685)
!2718 = !DILexicalBlockFile(scope: !2680, file: !116, discriminator: 1)
!2719 = !DILocation(line: 830, column: 34, scope: !2677, inlinedAt: !2685)
!2720 = !DILocation(line: 830, column: 17, scope: !2677, inlinedAt: !2685)
!2721 = !DILocation(line: 831, column: 11, scope: !2677, inlinedAt: !2685)
!2722 = !DILocation(line: 831, column: 21, scope: !2723, inlinedAt: !2685)
!2723 = !DILexicalBlockFile(scope: !2677, file: !116, discriminator: 1)
!2724 = !DILocation(line: 831, column: 14, scope: !2723, inlinedAt: !2685)
!2725 = !DILocation(line: 830, column: 11, scope: !2726, inlinedAt: !2685)
!2726 = !DILexicalBlockFile(scope: !2678, file: !116, discriminator: 1)
!2727 = distinct !{!2727, !2728, !2729}
!2728 = !DILocation(line: 828, column: 3, scope: !2680)
!2729 = !DILocation(line: 847, column: 5, scope: !2680)
!2730 = !DILocation(line: 1041, column: 9, scope: !2630)
!2731 = !DILocation(line: 1051, column: 63, scope: !2686)
!2732 = !DILocation(line: 1051, column: 7, scope: !2630)
!2733 = !DILocation(line: 1053, column: 11, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !116, line: 1053, column: 11)
!2735 = distinct !DILexicalBlock(scope: !2686, file: !116, line: 1052, column: 5)
!2736 = !DILocation(line: 1053, column: 11, scope: !2735)
!2737 = !DILocation(line: 1054, column: 22, scope: !2734)
!2738 = !DILocation(line: 1054, column: 9, scope: !2734)
!2739 = !DILocation(line: 1063, column: 14, scope: !2644)
!2740 = !DILocation(line: 1063, column: 7, scope: !2644)
!2741 = !DILocation(line: 1064, column: 16, scope: !2644)
!2742 = !DILocation(line: 1064, column: 24, scope: !2644)
!2743 = !DILocation(line: 1064, column: 50, scope: !2644)
!2744 = !DILocation(line: 1064, column: 43, scope: !2644)
!2745 = !DILocation(line: 1064, column: 41, scope: !2644)
!2746 = !DILocation(line: 1064, column: 7, scope: !2644)
!2747 = !DILocation(line: 1063, column: 7, scope: !2630)
!2748 = !DILocation(line: 512, column: 27, scope: !2032, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1068, column: 7, scope: !2643)
!2750 = !DILocation(line: 514, column: 22, scope: !2032, inlinedAt: !2749)
!2751 = !DILocation(line: 516, column: 14, scope: !2043, inlinedAt: !2749)
!2752 = !DILocation(line: 516, column: 7, scope: !2032, inlinedAt: !2749)
!2753 = !DILocation(line: 515, column: 9, scope: !2032, inlinedAt: !2749)
!2754 = !DILocation(line: 526, column: 15, scope: !2047, inlinedAt: !2749)
!2755 = !DILocation(line: 527, column: 35, scope: !2052, inlinedAt: !2749)
!2756 = !DILocation(line: 527, column: 7, scope: !2047, inlinedAt: !2749)
!2757 = !DILocation(line: 528, column: 32, scope: !2052, inlinedAt: !2749)
!2758 = !DILocation(line: 528, column: 22, scope: !2052, inlinedAt: !2749)
!2759 = !DILocation(line: 529, column: 7, scope: !2047, inlinedAt: !2749)
!2760 = !DILocation(line: 529, column: 23, scope: !2052, inlinedAt: !2749)
!2761 = !DILocation(line: 529, column: 12, scope: !2052, inlinedAt: !2749)
!2762 = !DILocation(line: 530, column: 7, scope: !2047, inlinedAt: !2749)
!2763 = !DILocation(line: 530, column: 35, scope: !2052, inlinedAt: !2749)
!2764 = !DILocation(line: 530, column: 55, scope: !2052, inlinedAt: !2749)
!2765 = !DILocation(line: 531, column: 7, scope: !2047, inlinedAt: !2749)
!2766 = !DILocation(line: 532, column: 45, scope: !2052, inlinedAt: !2749)
!2767 = !DILocation(line: 535, column: 17, scope: !2032, inlinedAt: !2749)
!2768 = !DILocation(line: 536, column: 3, scope: !2032, inlinedAt: !2749)
!2769 = !DILocation(line: 1070, column: 28, scope: !2642)
!2770 = !DILocation(line: 1070, column: 20, scope: !2642)
!2771 = !DILocation(line: 1070, column: 45, scope: !2642)
!2772 = !DILocation(line: 1070, column: 11, scope: !2642)
!2773 = !DILocation(line: 1069, column: 11, scope: !2643)
!2774 = !DILocation(line: 1072, column: 30, scope: !2641)
!2775 = !DILocation(line: 1074, column: 22, scope: !2641)
!2776 = !DILocation(line: 1077, column: 17, scope: !2641)
!2777 = !DILocation(line: 1074, column: 14, scope: !2641)
!2778 = !DILocation(line: 1073, column: 17, scope: !2641)
!2779 = !DILocation(line: 1079, column: 24, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2641, file: !116, line: 1079, column: 15)
!2781 = !DILocation(line: 1079, column: 15, scope: !2641)
!2782 = !DILocation(line: 1083, column: 36, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2641, file: !116, line: 1083, column: 15)
!2784 = !DILocation(line: 1083, column: 16, scope: !2783)
!2785 = !DILocation(line: 1083, column: 15, scope: !2641)
!2786 = !DILocation(line: 790, column: 30, scope: !2657, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1087, column: 15, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2641, file: !116, line: 1087, column: 15)
!2789 = !DILocation(line: 790, column: 49, scope: !2657, inlinedAt: !2787)
!2790 = !DILocation(line: 791, column: 56, scope: !2657, inlinedAt: !2787)
!2791 = !DILocation(line: 249, column: 32, scope: !1725, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 793, column: 31, scope: !2657, inlinedAt: !2787)
!2793 = !DILocation(line: 249, column: 51, scope: !1725, inlinedAt: !2792)
!2794 = !DILocation(line: 251, column: 21, scope: !1725, inlinedAt: !2792)
!2795 = !DILocation(line: 251, column: 41, scope: !1725, inlinedAt: !2792)
!2796 = !DILocation(line: 251, column: 14, scope: !1725, inlinedAt: !2792)
!2797 = !DILocation(line: 251, column: 10, scope: !1725, inlinedAt: !2792)
!2798 = !DILocation(line: 252, column: 21, scope: !1740, inlinedAt: !2792)
!2799 = !DILocation(line: 252, column: 12, scope: !1740, inlinedAt: !2792)
!2800 = !DILocation(line: 252, column: 7, scope: !1725, inlinedAt: !2792)
!2801 = !DILocation(line: 253, column: 5, scope: !1740, inlinedAt: !2792)
!2802 = !DILocation(line: 254, column: 17, scope: !1725, inlinedAt: !2792)
!2803 = !DILocation(line: 254, column: 24, scope: !1725, inlinedAt: !2792)
!2804 = !DILocation(line: 793, column: 22, scope: !2657, inlinedAt: !2787)
!2805 = !DILocation(line: 799, column: 15, scope: !2704, inlinedAt: !2787)
!2806 = !DILocation(line: 799, column: 20, scope: !2704, inlinedAt: !2787)
!2807 = !DILocation(line: 799, column: 7, scope: !2657, inlinedAt: !2787)
!2808 = !DILocation(line: 803, column: 13, scope: !2669, inlinedAt: !2787)
!2809 = !DILocation(line: 803, column: 29, scope: !2669, inlinedAt: !2787)
!2810 = !DILocation(line: 803, column: 39, scope: !2710, inlinedAt: !2787)
!2811 = !DILocation(line: 803, column: 32, scope: !2710, inlinedAt: !2787)
!2812 = !DILocation(line: 803, column: 7, scope: !2713, inlinedAt: !2787)
!2813 = !DILocation(line: 794, column: 22, scope: !2657, inlinedAt: !2787)
!2814 = !DILocation(line: 828, column: 33, scope: !2716, inlinedAt: !2787)
!2815 = !DILocation(line: 828, column: 3, scope: !2718, inlinedAt: !2787)
!2816 = !DILocation(line: 830, column: 34, scope: !2677, inlinedAt: !2787)
!2817 = !DILocation(line: 830, column: 17, scope: !2677, inlinedAt: !2787)
!2818 = !DILocation(line: 831, column: 11, scope: !2677, inlinedAt: !2787)
!2819 = !DILocation(line: 831, column: 21, scope: !2723, inlinedAt: !2787)
!2820 = !DILocation(line: 831, column: 14, scope: !2723, inlinedAt: !2787)
!2821 = !DILocation(line: 830, column: 11, scope: !2726, inlinedAt: !2787)
!2822 = !DILocation(line: 1087, column: 62, scope: !2788)
!2823 = !DILocation(line: 1087, column: 15, scope: !2641)
!2824 = !DILocation(line: 1088, column: 13, scope: !2788)
!2825 = !DILocation(line: 1042, column: 22, scope: !2630)
!2826 = !DILocation(line: 1094, column: 15, scope: !2648)
!2827 = !DILocation(line: 1094, column: 7, scope: !2648)
!2828 = !DILocation(line: 1094, column: 7, scope: !2630)
!2829 = !DILocation(line: 751, column: 29, scope: !2595, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1096, column: 38, scope: !2647)
!2831 = !DILocation(line: 755, column: 14, scope: !2603, inlinedAt: !2830)
!2832 = !DILocation(line: 755, column: 7, scope: !2603, inlinedAt: !2830)
!2833 = !DILocation(line: 755, column: 7, scope: !2595, inlinedAt: !2830)
!2834 = !DILocation(line: 753, column: 22, scope: !2595, inlinedAt: !2830)
!2835 = !DILocation(line: 758, column: 37, scope: !2608, inlinedAt: !2830)
!2836 = !DILocation(line: 758, column: 30, scope: !2608, inlinedAt: !2830)
!2837 = !DILocation(line: 1096, column: 26, scope: !2647)
!2838 = !DILocation(line: 1098, column: 11, scope: !2647)
!2839 = !DILocation(line: 765, column: 13, scope: !2613, inlinedAt: !2830)
!2840 = !DILocation(line: 1098, column: 21, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2647, file: !116, line: 1098, column: 11)
!2842 = !DILocation(line: 1103, column: 18, scope: !2647)
!2843 = !DILocation(line: 1103, column: 23, scope: !2647)
!2844 = !DILocation(line: 1104, column: 33, scope: !2647)
!2845 = !DILocation(line: 1104, column: 18, scope: !2647)
!2846 = !DILocation(line: 1104, column: 23, scope: !2647)
!2847 = !DILocation(line: 1105, column: 20, scope: !2647)
!2848 = !DILocation(line: 1106, column: 14, scope: !2647)
!2849 = !DILocation(line: 1106, column: 23, scope: !2647)
!2850 = !DILocation(line: 1107, column: 7, scope: !2647)
!2851 = !DILocation(line: 1112, column: 16, scope: !2630)
!2852 = !DILocation(line: 1114, column: 24, scope: !2630)
!2853 = !DILocation(line: 1116, column: 3, scope: !2630)
!2854 = !DILocation(line: 1117, column: 1, scope: !2630)
!2855 = distinct !DISubprogram(name: "hash_insert", scope: !116, file: !116, line: 1126, type: !2856, isDefinition: true, scopeLine: 1127, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!29, !2001, !33}
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DILocalVariable(name: "table", arg: 1, scope: !2855, file: !116, line: 1126, type: !2001)
!2860 = !DILocalVariable(name: "entry", arg: 2, scope: !2855, file: !116, line: 1126, type: !33)
!2861 = !DILocalVariable(name: "matched_ent", scope: !2855, file: !116, line: 1128, type: !33)
!2862 = !DILocalVariable(name: "err", scope: !2855, file: !116, line: 1129, type: !73)
!2863 = !DILocation(line: 1126, column: 26, scope: !2855)
!2864 = !DILocation(line: 1126, column: 45, scope: !2855)
!2865 = !DILocation(line: 1128, column: 3, scope: !2855)
!2866 = !DILocation(line: 1128, column: 15, scope: !2855)
!2867 = !DILocation(line: 1129, column: 13, scope: !2855)
!2868 = !DILocation(line: 1129, column: 7, scope: !2855)
!2869 = !DILocation(line: 1130, column: 15, scope: !2855)
!2870 = !DILocation(line: 1130, column: 11, scope: !2855)
!2871 = !DILocation(line: 1132, column: 27, scope: !2855)
!2872 = !DILocation(line: 1132, column: 34, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2855, file: !116, discriminator: 1)
!2874 = !DILocation(line: 1132, column: 23, scope: !2855)
!2875 = !DILocation(line: 1130, column: 11, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2855, file: !116, discriminator: 3)
!2877 = !DILocation(line: 1133, column: 1, scope: !2855)
!2878 = !DILocation(line: 1130, column: 3, scope: !2876)
!2879 = distinct !DISubprogram(name: "hash_delete", scope: !116, file: !116, line: 1140, type: !2856, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: true, unit: !112, variables: !2880)
!2880 = !{!2881, !2882, !2883, !2884, !2885, !2892, !2893, !2896}
!2881 = !DILocalVariable(name: "table", arg: 1, scope: !2879, file: !116, line: 1140, type: !2001)
!2882 = !DILocalVariable(name: "entry", arg: 2, scope: !2879, file: !116, line: 1140, type: !33)
!2883 = !DILocalVariable(name: "data", scope: !2879, file: !116, line: 1142, type: !29)
!2884 = !DILocalVariable(name: "bucket", scope: !2879, file: !116, line: 1143, type: !1464)
!2885 = !DILocalVariable(name: "tuning", scope: !2886, file: !116, line: 1166, type: !1476)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !116, line: 1165, column: 13)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !116, line: 1163, column: 15)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !116, line: 1159, column: 9)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !116, line: 1157, column: 11)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !116, line: 1151, column: 5)
!2891 = distinct !DILexicalBlock(scope: !2879, file: !116, line: 1150, column: 7)
!2892 = !DILocalVariable(name: "candidate", scope: !2886, file: !116, line: 1167, type: !30)
!2893 = !DILocalVariable(name: "cursor", scope: !2894, file: !116, line: 1181, type: !1464)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !116, line: 1174, column: 17)
!2895 = distinct !DILexicalBlock(scope: !2886, file: !116, line: 1173, column: 19)
!2896 = !DILocalVariable(name: "next", scope: !2894, file: !116, line: 1182, type: !1464)
!2897 = !DILocation(line: 1140, column: 26, scope: !2879)
!2898 = !DILocation(line: 1140, column: 45, scope: !2879)
!2899 = !DILocation(line: 790, column: 30, scope: !2657, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 1145, column: 10, scope: !2879)
!2901 = !DILocation(line: 790, column: 49, scope: !2657, inlinedAt: !2900)
!2902 = !DILocation(line: 791, column: 56, scope: !2657, inlinedAt: !2900)
!2903 = !DILocation(line: 249, column: 32, scope: !1725, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 793, column: 31, scope: !2657, inlinedAt: !2900)
!2905 = !DILocation(line: 249, column: 51, scope: !1725, inlinedAt: !2904)
!2906 = !DILocation(line: 251, column: 21, scope: !1725, inlinedAt: !2904)
!2907 = !DILocation(line: 251, column: 41, scope: !1725, inlinedAt: !2904)
!2908 = !DILocation(line: 251, column: 14, scope: !1725, inlinedAt: !2904)
!2909 = !DILocation(line: 251, column: 10, scope: !1725, inlinedAt: !2904)
!2910 = !DILocation(line: 252, column: 21, scope: !1740, inlinedAt: !2904)
!2911 = !DILocation(line: 252, column: 12, scope: !1740, inlinedAt: !2904)
!2912 = !DILocation(line: 252, column: 7, scope: !1725, inlinedAt: !2904)
!2913 = !DILocation(line: 253, column: 5, scope: !1740, inlinedAt: !2904)
!2914 = !DILocation(line: 254, column: 17, scope: !1725, inlinedAt: !2904)
!2915 = !DILocation(line: 254, column: 24, scope: !1725, inlinedAt: !2904)
!2916 = !DILocation(line: 793, column: 22, scope: !2657, inlinedAt: !2900)
!2917 = !DILocation(line: 799, column: 15, scope: !2704, inlinedAt: !2900)
!2918 = !DILocation(line: 799, column: 20, scope: !2704, inlinedAt: !2900)
!2919 = !DILocation(line: 799, column: 7, scope: !2657, inlinedAt: !2900)
!2920 = !DILocation(line: 803, column: 13, scope: !2669, inlinedAt: !2900)
!2921 = !DILocation(line: 803, column: 29, scope: !2669, inlinedAt: !2900)
!2922 = !DILocation(line: 803, column: 39, scope: !2710, inlinedAt: !2900)
!2923 = !DILocation(line: 803, column: 32, scope: !2710, inlinedAt: !2900)
!2924 = !DILocation(line: 803, column: 7, scope: !2713, inlinedAt: !2900)
!2925 = !DILocation(line: 794, column: 22, scope: !2657, inlinedAt: !2900)
!2926 = !DILocation(line: 828, column: 33, scope: !2716, inlinedAt: !2900)
!2927 = !DILocation(line: 828, column: 3, scope: !2718, inlinedAt: !2900)
!2928 = !DILocation(line: 830, column: 34, scope: !2677, inlinedAt: !2900)
!2929 = !DILocation(line: 805, column: 28, scope: !2668, inlinedAt: !2900)
!2930 = !DILocation(line: 805, column: 13, scope: !2668, inlinedAt: !2900)
!2931 = !DILocation(line: 809, column: 23, scope: !2672, inlinedAt: !2900)
!2932 = !DILocation(line: 809, column: 15, scope: !2672, inlinedAt: !2900)
!2933 = !DILocation(line: 809, column: 15, scope: !2673, inlinedAt: !2900)
!2934 = !DILocation(line: 811, column: 34, scope: !2671, inlinedAt: !2900)
!2935 = !DILocation(line: 815, column: 25, scope: !2671, inlinedAt: !2900)
!2936 = !{i64 0, i64 8, !643, i64 8, i64 8, !643}
!2937 = !DILocation(line: 776, column: 25, scope: !2511, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 816, column: 15, scope: !2671, inlinedAt: !2900)
!2939 = !DILocation(line: 776, column: 51, scope: !2511, inlinedAt: !2938)
!2940 = !DILocation(line: 778, column: 10, scope: !2511, inlinedAt: !2938)
!2941 = !DILocation(line: 778, column: 15, scope: !2511, inlinedAt: !2938)
!2942 = !DILocation(line: 779, column: 24, scope: !2511, inlinedAt: !2938)
!2943 = !DILocation(line: 779, column: 10, scope: !2511, inlinedAt: !2938)
!2944 = !DILocation(line: 779, column: 15, scope: !2511, inlinedAt: !2938)
!2945 = !DILocation(line: 780, column: 26, scope: !2511, inlinedAt: !2938)
!2946 = !DILocation(line: 817, column: 13, scope: !2671, inlinedAt: !2900)
!2947 = !DILocation(line: 820, column: 28, scope: !2948, inlinedAt: !2900)
!2948 = distinct !DILexicalBlock(scope: !2672, file: !116, line: 819, column: 13)
!2949 = !DILocation(line: 830, column: 17, scope: !2677, inlinedAt: !2900)
!2950 = !DILocation(line: 831, column: 11, scope: !2677, inlinedAt: !2900)
!2951 = !DILocation(line: 831, column: 21, scope: !2723, inlinedAt: !2900)
!2952 = !DILocation(line: 831, column: 14, scope: !2723, inlinedAt: !2900)
!2953 = !DILocation(line: 830, column: 11, scope: !2726, inlinedAt: !2900)
!2954 = !DILocation(line: 833, column: 17, scope: !2676, inlinedAt: !2900)
!2955 = !DILocation(line: 833, column: 38, scope: !2676, inlinedAt: !2900)
!2956 = !DILocation(line: 833, column: 32, scope: !2676, inlinedAt: !2900)
!2957 = !DILocation(line: 837, column: 34, scope: !2682, inlinedAt: !2900)
!2958 = !DILocation(line: 841, column: 36, scope: !2682, inlinedAt: !2900)
!2959 = !DILocation(line: 841, column: 28, scope: !2682, inlinedAt: !2900)
!2960 = !DILocation(line: 776, column: 25, scope: !2511, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 842, column: 15, scope: !2682, inlinedAt: !2900)
!2962 = !DILocation(line: 776, column: 51, scope: !2511, inlinedAt: !2961)
!2963 = !DILocation(line: 778, column: 15, scope: !2511, inlinedAt: !2961)
!2964 = !DILocation(line: 779, column: 24, scope: !2511, inlinedAt: !2961)
!2965 = !DILocation(line: 779, column: 15, scope: !2511, inlinedAt: !2961)
!2966 = !DILocation(line: 780, column: 26, scope: !2511, inlinedAt: !2961)
!2967 = !DILocation(line: 843, column: 13, scope: !2682, inlinedAt: !2900)
!2968 = !DILocation(line: 1142, column: 9, scope: !2879)
!2969 = !DILocation(line: 1146, column: 8, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2879, file: !116, line: 1146, column: 7)
!2971 = !DILocation(line: 1146, column: 7, scope: !2879)
!2972 = !DILocation(line: 1149, column: 10, scope: !2879)
!2973 = !DILocation(line: 1149, column: 19, scope: !2879)
!2974 = !DILocation(line: 1143, column: 22, scope: !2879)
!2975 = !DILocation(line: 1150, column: 16, scope: !2891)
!2976 = !DILocation(line: 1150, column: 8, scope: !2891)
!2977 = !DILocation(line: 1150, column: 7, scope: !2879)
!2978 = !DILocation(line: 1152, column: 14, scope: !2890)
!2979 = !DILocation(line: 1152, column: 28, scope: !2890)
!2980 = !DILocation(line: 1157, column: 11, scope: !2889)
!2981 = !DILocation(line: 1158, column: 20, scope: !2889)
!2982 = !DILocation(line: 1158, column: 28, scope: !2889)
!2983 = !DILocation(line: 1158, column: 54, scope: !2889)
!2984 = !DILocation(line: 1158, column: 47, scope: !2889)
!2985 = !DILocation(line: 1158, column: 45, scope: !2889)
!2986 = !DILocation(line: 1158, column: 11, scope: !2889)
!2987 = !DILocation(line: 1157, column: 11, scope: !2890)
!2988 = !DILocation(line: 512, column: 27, scope: !2032, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 1162, column: 11, scope: !2888)
!2990 = !DILocation(line: 514, column: 22, scope: !2032, inlinedAt: !2989)
!2991 = !DILocation(line: 516, column: 14, scope: !2043, inlinedAt: !2989)
!2992 = !DILocation(line: 516, column: 7, scope: !2032, inlinedAt: !2989)
!2993 = !DILocation(line: 515, column: 9, scope: !2032, inlinedAt: !2989)
!2994 = !DILocation(line: 526, column: 25, scope: !2047, inlinedAt: !2989)
!2995 = !DILocation(line: 526, column: 15, scope: !2047, inlinedAt: !2989)
!2996 = !DILocation(line: 527, column: 35, scope: !2052, inlinedAt: !2989)
!2997 = !DILocation(line: 527, column: 7, scope: !2047, inlinedAt: !2989)
!2998 = !DILocation(line: 528, column: 32, scope: !2052, inlinedAt: !2989)
!2999 = !DILocation(line: 528, column: 22, scope: !2052, inlinedAt: !2989)
!3000 = !DILocation(line: 529, column: 12, scope: !2052, inlinedAt: !2989)
!3001 = !DILocation(line: 529, column: 7, scope: !2047, inlinedAt: !2989)
!3002 = !DILocation(line: 530, column: 35, scope: !2052, inlinedAt: !2989)
!3003 = !DILocation(line: 530, column: 55, scope: !2052, inlinedAt: !2989)
!3004 = !DILocation(line: 531, column: 7, scope: !2047, inlinedAt: !2989)
!3005 = !DILocation(line: 532, column: 45, scope: !2052, inlinedAt: !2989)
!3006 = !DILocation(line: 535, column: 17, scope: !2032, inlinedAt: !2989)
!3007 = !DILocation(line: 536, column: 3, scope: !2032, inlinedAt: !2989)
!3008 = !DILocation(line: 1164, column: 32, scope: !2887)
!3009 = !DILocation(line: 1164, column: 24, scope: !2887)
!3010 = !DILocation(line: 1164, column: 49, scope: !2887)
!3011 = !DILocation(line: 1164, column: 15, scope: !2887)
!3012 = !DILocation(line: 1163, column: 15, scope: !2888)
!3013 = !DILocation(line: 1166, column: 34, scope: !2886)
!3014 = !DILocation(line: 1168, column: 26, scope: !2886)
!3015 = !DILocation(line: 1168, column: 18, scope: !2886)
!3016 = !DILocation(line: 1171, column: 31, scope: !2886)
!3017 = !DILocation(line: 1171, column: 21, scope: !2886)
!3018 = !DILocation(line: 1168, column: 18, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !2886, file: !116, discriminator: 2)
!3020 = !DILocation(line: 1168, column: 18, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !2886, file: !116, discriminator: 3)
!3022 = !DILocation(line: 1168, column: 17, scope: !3021)
!3023 = !DILocation(line: 1167, column: 22, scope: !2886)
!3024 = !DILocation(line: 1173, column: 20, scope: !2895)
!3025 = !DILocation(line: 1173, column: 19, scope: !2886)
!3026 = !DILocation(line: 1181, column: 54, scope: !2894)
!3027 = !DILocation(line: 1181, column: 38, scope: !2894)
!3028 = !DILocation(line: 1183, column: 19, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !2894, file: !116, discriminator: 1)
!3030 = !DILocation(line: 1185, column: 38, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2894, file: !116, line: 1184, column: 21)
!3032 = !DILocation(line: 1182, column: 38, scope: !2894)
!3033 = !DILocation(line: 1186, column: 23, scope: !3031)
!3034 = distinct !{!3034, !3035, !3036}
!3035 = !DILocation(line: 1183, column: 19, scope: !2894)
!3036 = !DILocation(line: 1188, column: 21, scope: !2894)
!3037 = !DILocation(line: 1189, column: 42, scope: !2894)
!3038 = !DILocation(line: 1191, column: 17, scope: !2894)
!3039 = !DILocation(line: 1197, column: 1, scope: !2879)
!3040 = distinct !DISubprogram(name: "triple_hash", scope: !3041, file: !3041, line: 34, type: !1480, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3042)
!3041 = !DIFile(filename: "lib/hash-triple.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3042 = !{!3043, !3044, !3045, !3053}
!3043 = !DILocalVariable(name: "x", arg: 1, scope: !3040, file: !3041, line: 34, type: !33)
!3044 = !DILocalVariable(name: "table_size", arg: 2, scope: !3040, file: !3041, line: 34, type: !30)
!3045 = !DILocalVariable(name: "p", scope: !3040, file: !3041, line: 36, type: !3046)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3048)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "F_triple", file: !1381, line: 9, size: 192, elements: !3049)
!3049 = !{!3050, !3051, !3052}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3048, file: !1381, line: 11, baseType: !27, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3048, file: !1381, line: 12, baseType: !1385, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3048, file: !1381, line: 13, baseType: !1387, size: 64, offset: 128)
!3053 = !DILocalVariable(name: "tmp", scope: !3040, file: !3041, line: 37, type: !30)
!3054 = !DILocation(line: 34, column: 26, scope: !3040)
!3055 = !DILocation(line: 34, column: 36, scope: !3040)
!3056 = !DILocation(line: 37, column: 29, scope: !3040)
!3057 = !DILocation(line: 37, column: 16, scope: !3040)
!3058 = !DILocation(line: 37, column: 10, scope: !3040)
!3059 = !DILocation(line: 40, column: 20, scope: !3040)
!3060 = !DILocation(line: 40, column: 15, scope: !3040)
!3061 = !DILocation(line: 40, column: 28, scope: !3040)
!3062 = !DILocation(line: 40, column: 3, scope: !3040)
!3063 = distinct !DISubprogram(name: "triple_hash_no_name", scope: !3041, file: !3041, line: 45, type: !1480, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3064)
!3064 = !{!3065, !3066, !3067}
!3065 = !DILocalVariable(name: "x", arg: 1, scope: !3063, file: !3041, line: 45, type: !33)
!3066 = !DILocalVariable(name: "table_size", arg: 2, scope: !3063, file: !3041, line: 45, type: !30)
!3067 = !DILocalVariable(name: "p", scope: !3063, file: !3041, line: 47, type: !3046)
!3068 = !DILocation(line: 45, column: 34, scope: !3063)
!3069 = !DILocation(line: 45, column: 44, scope: !3063)
!3070 = !DILocation(line: 50, column: 13, scope: !3063)
!3071 = !DILocation(line: 50, column: 20, scope: !3063)
!3072 = !DILocation(line: 50, column: 3, scope: !3063)
!3073 = distinct !DISubprogram(name: "triple_compare", scope: !3041, file: !3041, line: 55, type: !1485, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3074)
!3074 = !{!3075, !3076, !3077, !3078}
!3075 = !DILocalVariable(name: "x", arg: 1, scope: !3073, file: !3041, line: 55, type: !33)
!3076 = !DILocalVariable(name: "y", arg: 2, scope: !3073, file: !3041, line: 55, type: !33)
!3077 = !DILocalVariable(name: "a", scope: !3073, file: !3041, line: 57, type: !3046)
!3078 = !DILocalVariable(name: "b", scope: !3073, file: !3041, line: 58, type: !3046)
!3079 = !DILocation(line: 55, column: 29, scope: !3073)
!3080 = !DILocation(line: 55, column: 44, scope: !3073)
!3081 = !DILocation(line: 59, column: 11, scope: !3073)
!3082 = !DILocation(line: 59, column: 11, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3073, file: !3041, discriminator: 1)
!3084 = !DILocation(line: 59, column: 31, scope: !3083)
!3085 = !DILocation(line: 59, column: 48, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3073, file: !3041, discriminator: 2)
!3087 = !DILocation(line: 59, column: 57, scope: !3086)
!3088 = !DILocation(line: 59, column: 34, scope: !3086)
!3089 = !DILocation(line: 59, column: 3, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3073, file: !3041, discriminator: 3)
!3091 = distinct !DISubprogram(name: "triple_compare_ino_str", scope: !3041, file: !3041, line: 63, type: !1485, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3092)
!3092 = !{!3093, !3094, !3095, !3096, !3097, !3099}
!3093 = !DILocalVariable(name: "x", arg: 1, scope: !3091, file: !3041, line: 63, type: !33)
!3094 = !DILocalVariable(name: "y", arg: 2, scope: !3091, file: !3041, line: 63, type: !33)
!3095 = !DILocalVariable(name: "a", scope: !3091, file: !3041, line: 65, type: !3046)
!3096 = !DILocalVariable(name: "b", scope: !3091, file: !3041, line: 66, type: !3046)
!3097 = !DILocalVariable(name: "__s1_len", scope: !3098, file: !3041, line: 67, type: !30)
!3098 = distinct !DILexicalBlock(scope: !3091, file: !3041, line: 67, column: 34)
!3099 = !DILocalVariable(name: "__s2_len", scope: !3098, file: !3041, line: 67, type: !30)
!3100 = !DILocation(line: 63, column: 37, scope: !3091)
!3101 = !DILocation(line: 63, column: 52, scope: !3091)
!3102 = !DILocation(line: 67, column: 11, scope: !3091)
!3103 = !DILocation(line: 67, column: 11, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3091, file: !3041, discriminator: 1)
!3105 = !DILocation(line: 67, column: 31, scope: !3104)
!3106 = !DILocation(line: 67, column: 34, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !3098, file: !3041, discriminator: 2)
!3108 = !DILocation(line: 67, column: 34, scope: !3109)
!3109 = !DILexicalBlockFile(scope: !3091, file: !3041, discriminator: 2)
!3110 = !DILocation(line: 67, column: 3, scope: !3111)
!3111 = !DILexicalBlockFile(scope: !3091, file: !3041, discriminator: 3)
!3112 = distinct !DISubprogram(name: "triple_free", scope: !3041, file: !3041, line: 72, type: !1490, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !568, variables: !3113)
!3113 = !{!3114, !3115}
!3114 = !DILocalVariable(name: "x", arg: 1, scope: !3112, file: !3041, line: 72, type: !29)
!3115 = !DILocalVariable(name: "a", scope: !3112, file: !3041, line: 74, type: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3117 = !DILocation(line: 72, column: 20, scope: !3112)
!3118 = !DILocation(line: 75, column: 12, scope: !3112)
!3119 = !DILocation(line: 75, column: 3, scope: !3112)
!3120 = !DILocation(line: 76, column: 3, scope: !3112)
!3121 = !DILocation(line: 77, column: 1, scope: !3112)
!3122 = distinct !DISubprogram(name: "set_program_name", scope: !134, file: !134, line: 39, type: !50, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !130, variables: !3123)
!3123 = !{!3124, !3125, !3126}
!3124 = !DILocalVariable(name: "argv0", arg: 1, scope: !3122, file: !134, line: 39, type: !38)
!3125 = !DILocalVariable(name: "slash", scope: !3122, file: !134, line: 46, type: !38)
!3126 = !DILocalVariable(name: "base", scope: !3122, file: !134, line: 47, type: !38)
!3127 = !DILocation(line: 39, column: 31, scope: !3122)
!3128 = !DILocation(line: 51, column: 13, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3122, file: !134, line: 51, column: 7)
!3130 = !DILocation(line: 51, column: 7, scope: !3122)
!3131 = !DILocation(line: 55, column: 14, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3129, file: !134, line: 52, column: 5)
!3133 = !DILocation(line: 54, column: 7, scope: !3132)
!3134 = !DILocation(line: 56, column: 7, scope: !3132)
!3135 = !DILocation(line: 59, column: 11, scope: !3122)
!3136 = !DILocation(line: 46, column: 15, scope: !3122)
!3137 = !DILocation(line: 60, column: 17, scope: !3122)
!3138 = !DILocation(line: 60, column: 33, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !3122, file: !134, discriminator: 1)
!3140 = !DILocation(line: 60, column: 11, scope: !3122)
!3141 = !DILocation(line: 47, column: 15, scope: !3122)
!3142 = !DILocation(line: 61, column: 12, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3122, file: !134, line: 61, column: 7)
!3144 = !DILocation(line: 61, column: 20, scope: !3143)
!3145 = !DILocation(line: 61, column: 25, scope: !3143)
!3146 = !DILocation(line: 61, column: 28, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3143, file: !134, discriminator: 1)
!3148 = !DILocation(line: 61, column: 61, scope: !3147)
!3149 = !DILocation(line: 61, column: 7, scope: !3139)
!3150 = !DILocation(line: 64, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !134, line: 64, column: 11)
!3152 = distinct !DILexicalBlock(scope: !3143, file: !134, line: 62, column: 5)
!3153 = !DILocation(line: 64, column: 36, scope: !3151)
!3154 = !DILocation(line: 64, column: 11, scope: !3152)
!3155 = !DILocation(line: 66, column: 24, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3151, file: !134, line: 65, column: 9)
!3157 = !DILocation(line: 70, column: 41, scope: !3156)
!3158 = !DILocation(line: 72, column: 9, scope: !3156)
!3159 = !DILocation(line: 84, column: 16, scope: !3122)
!3160 = !DILocation(line: 90, column: 27, scope: !3122)
!3161 = !DILocation(line: 92, column: 1, scope: !3122)
!3162 = distinct !DISubprogram(name: "clone_quoting_options", scope: !165, file: !165, line: 114, type: !3163, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !3166)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!3165, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!3166 = !{!3167, !3168, !3169}
!3167 = !DILocalVariable(name: "o", arg: 1, scope: !3162, file: !165, line: 114, type: !3165)
!3168 = !DILocalVariable(name: "e", scope: !3162, file: !165, line: 116, type: !73)
!3169 = !DILocalVariable(name: "p", scope: !3162, file: !165, line: 117, type: !3165)
!3170 = !DILocation(line: 114, column: 48, scope: !3162)
!3171 = !DILocation(line: 116, column: 11, scope: !3162)
!3172 = !DILocation(line: 116, column: 7, scope: !3162)
!3173 = !DILocation(line: 117, column: 40, scope: !3162)
!3174 = !DILocation(line: 117, column: 40, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3162, file: !165, discriminator: 3)
!3176 = !DILocation(line: 117, column: 31, scope: !3175)
!3177 = !DILocation(line: 117, column: 27, scope: !3162)
!3178 = !DILocation(line: 119, column: 9, scope: !3162)
!3179 = !DILocation(line: 120, column: 3, scope: !3162)
!3180 = distinct !DISubprogram(name: "get_quoting_style", scope: !165, file: !165, line: 125, type: !3181, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !3185)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!12, !3183}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!3185 = !{!3186}
!3186 = !DILocalVariable(name: "o", arg: 1, scope: !3180, file: !165, line: 125, type: !3183)
!3187 = !DILocation(line: 125, column: 50, scope: !3180)
!3188 = !DILocation(line: 127, column: 11, scope: !3180)
!3189 = !DILocation(line: 127, column: 46, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !3180, file: !165, discriminator: 3)
!3191 = !{!3192, !645, i64 0}
!3192 = !{!"quoting_options", !645, i64 0, !737, i64 4, !645, i64 8, !644, i64 40, !644, i64 48}
!3193 = !DILocation(line: 127, column: 3, scope: !3190)
!3194 = distinct !DISubprogram(name: "set_quoting_style", scope: !165, file: !165, line: 133, type: !3195, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{null, !3165, !12}
!3197 = !{!3198, !3199}
!3198 = !DILocalVariable(name: "o", arg: 1, scope: !3194, file: !165, line: 133, type: !3165)
!3199 = !DILocalVariable(name: "s", arg: 2, scope: !3194, file: !165, line: 133, type: !12)
!3200 = !DILocation(line: 133, column: 44, scope: !3194)
!3201 = !DILocation(line: 133, column: 66, scope: !3194)
!3202 = !DILocation(line: 135, column: 4, scope: !3194)
!3203 = !DILocation(line: 135, column: 39, scope: !3204)
!3204 = !DILexicalBlockFile(scope: !3194, file: !165, discriminator: 3)
!3205 = !DILocation(line: 135, column: 45, scope: !3204)
!3206 = !DILocation(line: 136, column: 1, scope: !3194)
!3207 = distinct !DISubprogram(name: "set_char_quoting", scope: !165, file: !165, line: 144, type: !3208, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!73, !3165, !28, !73}
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3217, !3218}
!3211 = !DILocalVariable(name: "o", arg: 1, scope: !3207, file: !165, line: 144, type: !3165)
!3212 = !DILocalVariable(name: "c", arg: 2, scope: !3207, file: !165, line: 144, type: !28)
!3213 = !DILocalVariable(name: "i", arg: 3, scope: !3207, file: !165, line: 144, type: !73)
!3214 = !DILocalVariable(name: "uc", scope: !3207, file: !165, line: 146, type: !37)
!3215 = !DILocalVariable(name: "p", scope: !3207, file: !165, line: 147, type: !3216)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!3217 = !DILocalVariable(name: "shift", scope: !3207, file: !165, line: 149, type: !73)
!3218 = !DILocalVariable(name: "r", scope: !3207, file: !165, line: 150, type: !73)
!3219 = !DILocation(line: 144, column: 43, scope: !3207)
!3220 = !DILocation(line: 144, column: 51, scope: !3207)
!3221 = !DILocation(line: 144, column: 58, scope: !3207)
!3222 = !DILocation(line: 146, column: 17, scope: !3207)
!3223 = !DILocation(line: 148, column: 6, scope: !3207)
!3224 = !DILocation(line: 148, column: 62, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3207, file: !165, discriminator: 3)
!3226 = !DILocation(line: 148, column: 57, scope: !3225)
!3227 = !DILocation(line: 147, column: 17, scope: !3207)
!3228 = !DILocation(line: 149, column: 18, scope: !3207)
!3229 = !DILocation(line: 149, column: 15, scope: !3207)
!3230 = !DILocation(line: 149, column: 7, scope: !3207)
!3231 = !DILocation(line: 150, column: 12, scope: !3207)
!3232 = !DILocation(line: 150, column: 15, scope: !3207)
!3233 = !DILocation(line: 150, column: 25, scope: !3207)
!3234 = !DILocation(line: 150, column: 7, scope: !3207)
!3235 = !DILocation(line: 151, column: 13, scope: !3207)
!3236 = !DILocation(line: 151, column: 18, scope: !3207)
!3237 = !DILocation(line: 151, column: 23, scope: !3207)
!3238 = !DILocation(line: 151, column: 6, scope: !3207)
!3239 = !DILocation(line: 152, column: 3, scope: !3207)
!3240 = distinct !DISubprogram(name: "set_quoting_flags", scope: !165, file: !165, line: 160, type: !3241, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!73, !3165, !73}
!3243 = !{!3244, !3245, !3246}
!3244 = !DILocalVariable(name: "o", arg: 1, scope: !3240, file: !165, line: 160, type: !3165)
!3245 = !DILocalVariable(name: "i", arg: 2, scope: !3240, file: !165, line: 160, type: !73)
!3246 = !DILocalVariable(name: "r", scope: !3240, file: !165, line: 162, type: !73)
!3247 = !DILocation(line: 160, column: 44, scope: !3240)
!3248 = !DILocation(line: 160, column: 51, scope: !3240)
!3249 = !DILocation(line: 163, column: 8, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3240, file: !165, line: 163, column: 7)
!3251 = !DILocation(line: 163, column: 7, scope: !3240)
!3252 = !DILocation(line: 165, column: 10, scope: !3240)
!3253 = !{!3192, !737, i64 4}
!3254 = !DILocation(line: 162, column: 7, scope: !3240)
!3255 = !DILocation(line: 166, column: 12, scope: !3240)
!3256 = !DILocation(line: 167, column: 3, scope: !3240)
!3257 = distinct !DISubprogram(name: "set_custom_quoting", scope: !165, file: !165, line: 171, type: !3258, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !3165, !38, !38}
!3260 = !{!3261, !3262, !3263}
!3261 = !DILocalVariable(name: "o", arg: 1, scope: !3257, file: !165, line: 171, type: !3165)
!3262 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3257, file: !165, line: 172, type: !38)
!3263 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3257, file: !165, line: 172, type: !38)
!3264 = !DILocation(line: 171, column: 45, scope: !3257)
!3265 = !DILocation(line: 172, column: 33, scope: !3257)
!3266 = !DILocation(line: 172, column: 57, scope: !3257)
!3267 = !DILocation(line: 174, column: 8, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3257, file: !165, line: 174, column: 7)
!3269 = !DILocation(line: 174, column: 7, scope: !3257)
!3270 = !DILocation(line: 176, column: 6, scope: !3257)
!3271 = !DILocation(line: 176, column: 12, scope: !3257)
!3272 = !DILocation(line: 177, column: 8, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3257, file: !165, line: 177, column: 7)
!3274 = !DILocation(line: 177, column: 23, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !3273, file: !165, discriminator: 1)
!3276 = !DILocation(line: 177, column: 19, scope: !3273)
!3277 = !DILocation(line: 178, column: 5, scope: !3273)
!3278 = !DILocation(line: 179, column: 6, scope: !3257)
!3279 = !DILocation(line: 179, column: 17, scope: !3257)
!3280 = !{!3192, !644, i64 40}
!3281 = !DILocation(line: 180, column: 6, scope: !3257)
!3282 = !DILocation(line: 180, column: 18, scope: !3257)
!3283 = !{!3192, !644, i64 48}
!3284 = !DILocation(line: 181, column: 1, scope: !3257)
!3285 = distinct !DISubprogram(name: "quotearg_buffer", scope: !165, file: !165, line: 776, type: !3286, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!30, !27, !30, !38, !30, !3183}
!3288 = !{!3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3289 = !DILocalVariable(name: "buffer", arg: 1, scope: !3285, file: !165, line: 776, type: !27)
!3290 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3285, file: !165, line: 776, type: !30)
!3291 = !DILocalVariable(name: "arg", arg: 3, scope: !3285, file: !165, line: 777, type: !38)
!3292 = !DILocalVariable(name: "argsize", arg: 4, scope: !3285, file: !165, line: 777, type: !30)
!3293 = !DILocalVariable(name: "o", arg: 5, scope: !3285, file: !165, line: 778, type: !3183)
!3294 = !DILocalVariable(name: "p", scope: !3285, file: !165, line: 780, type: !3183)
!3295 = !DILocalVariable(name: "e", scope: !3285, file: !165, line: 781, type: !73)
!3296 = !DILocalVariable(name: "r", scope: !3285, file: !165, line: 782, type: !30)
!3297 = !DILocation(line: 776, column: 24, scope: !3285)
!3298 = !DILocation(line: 776, column: 39, scope: !3285)
!3299 = !DILocation(line: 777, column: 30, scope: !3285)
!3300 = !DILocation(line: 777, column: 42, scope: !3285)
!3301 = !DILocation(line: 778, column: 48, scope: !3285)
!3302 = !DILocation(line: 780, column: 37, scope: !3285)
!3303 = !DILocation(line: 780, column: 33, scope: !3285)
!3304 = !DILocation(line: 781, column: 11, scope: !3285)
!3305 = !DILocation(line: 781, column: 7, scope: !3285)
!3306 = !DILocation(line: 783, column: 43, scope: !3285)
!3307 = !DILocation(line: 783, column: 53, scope: !3285)
!3308 = !DILocation(line: 783, column: 60, scope: !3285)
!3309 = !DILocation(line: 784, column: 43, scope: !3285)
!3310 = !DILocation(line: 784, column: 58, scope: !3285)
!3311 = !DILocation(line: 782, column: 14, scope: !3285)
!3312 = !DILocation(line: 782, column: 10, scope: !3285)
!3313 = !DILocation(line: 785, column: 9, scope: !3285)
!3314 = !DILocation(line: 786, column: 3, scope: !3285)
!3315 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !165, file: !165, line: 248, type: !3316, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !3320)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!30, !27, !30, !38, !30, !12, !73, !3318, !38, !38}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3345, !3346, !3347, !3348, !3349, !3352, !3353, !3370, !3373, !3374, !3381}
!3321 = !DILocalVariable(name: "buffer", arg: 1, scope: !3315, file: !165, line: 248, type: !27)
!3322 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3315, file: !165, line: 248, type: !30)
!3323 = !DILocalVariable(name: "arg", arg: 3, scope: !3315, file: !165, line: 249, type: !38)
!3324 = !DILocalVariable(name: "argsize", arg: 4, scope: !3315, file: !165, line: 249, type: !30)
!3325 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3315, file: !165, line: 250, type: !12)
!3326 = !DILocalVariable(name: "flags", arg: 6, scope: !3315, file: !165, line: 250, type: !73)
!3327 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3315, file: !165, line: 251, type: !3318)
!3328 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3315, file: !165, line: 252, type: !38)
!3329 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3315, file: !165, line: 253, type: !38)
!3330 = !DILocalVariable(name: "i", scope: !3315, file: !165, line: 255, type: !30)
!3331 = !DILocalVariable(name: "len", scope: !3315, file: !165, line: 256, type: !30)
!3332 = !DILocalVariable(name: "orig_buffersize", scope: !3315, file: !165, line: 257, type: !30)
!3333 = !DILocalVariable(name: "quote_string", scope: !3315, file: !165, line: 258, type: !38)
!3334 = !DILocalVariable(name: "quote_string_len", scope: !3315, file: !165, line: 259, type: !30)
!3335 = !DILocalVariable(name: "backslash_escapes", scope: !3315, file: !165, line: 260, type: !43)
!3336 = !DILocalVariable(name: "unibyte_locale", scope: !3315, file: !165, line: 261, type: !43)
!3337 = !DILocalVariable(name: "elide_outer_quotes", scope: !3315, file: !165, line: 262, type: !43)
!3338 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3315, file: !165, line: 263, type: !43)
!3339 = !DILocalVariable(name: "encountered_single_quote", scope: !3315, file: !165, line: 264, type: !43)
!3340 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3315, file: !165, line: 265, type: !43)
!3341 = !DILocalVariable(name: "c", scope: !3342, file: !165, line: 394, type: !37)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !165, line: 393, column: 5)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !165, line: 392, column: 3)
!3344 = distinct !DILexicalBlock(scope: !3315, file: !165, line: 392, column: 3)
!3345 = !DILocalVariable(name: "esc", scope: !3342, file: !165, line: 395, type: !37)
!3346 = !DILocalVariable(name: "is_right_quote", scope: !3342, file: !165, line: 396, type: !43)
!3347 = !DILocalVariable(name: "escaping", scope: !3342, file: !165, line: 397, type: !43)
!3348 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3342, file: !165, line: 398, type: !43)
!3349 = !DILocalVariable(name: "m", scope: !3350, file: !165, line: 602, type: !30)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 600, column: 11)
!3351 = distinct !DILexicalBlock(scope: !3342, file: !165, line: 418, column: 9)
!3352 = !DILocalVariable(name: "printable", scope: !3350, file: !165, line: 604, type: !43)
!3353 = !DILocalVariable(name: "mbstate", scope: !3354, file: !165, line: 613, type: !3356)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !165, line: 612, column: 15)
!3355 = distinct !DILexicalBlock(scope: !3350, file: !165, line: 606, column: 17)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3357, line: 107, baseType: !3358)
!3357 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3357, line: 95, baseType: !3359)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3357, line: 83, size: 64, elements: !3360)
!3360 = !{!3361, !3362}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3359, file: !3357, line: 85, baseType: !73, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3359, file: !3357, line: 94, baseType: !3363, size: 32, offset: 32)
!3363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3359, file: !3357, line: 86, size: 32, elements: !3364)
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3363, file: !3357, line: 89, baseType: !178, size: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3363, file: !3357, line: 93, baseType: !3367, size: 32)
!3367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !3368)
!3368 = !{!3369}
!3369 = !DISubrange(count: 4)
!3370 = !DILocalVariable(name: "w", scope: !3371, file: !165, line: 623, type: !3372)
!3371 = distinct !DILexicalBlock(scope: !3354, file: !165, line: 622, column: 19)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !31, line: 90, baseType: !73)
!3373 = !DILocalVariable(name: "bytes", scope: !3371, file: !165, line: 624, type: !30)
!3374 = !DILocalVariable(name: "j", scope: !3375, file: !165, line: 649, type: !30)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !165, line: 648, column: 27)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !165, line: 646, column: 29)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !165, line: 641, column: 23)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !165, line: 633, column: 30)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !165, line: 628, column: 30)
!3380 = distinct !DILexicalBlock(scope: !3371, file: !165, line: 626, column: 25)
!3381 = !DILocalVariable(name: "ilim", scope: !3382, file: !165, line: 676, type: !30)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !165, line: 673, column: 15)
!3383 = distinct !DILexicalBlock(scope: !3350, file: !165, line: 672, column: 17)
!3384 = !DILocation(line: 248, column: 33, scope: !3315)
!3385 = !DILocation(line: 248, column: 48, scope: !3315)
!3386 = !DILocation(line: 249, column: 39, scope: !3315)
!3387 = !DILocation(line: 249, column: 51, scope: !3315)
!3388 = !DILocation(line: 250, column: 46, scope: !3315)
!3389 = !DILocation(line: 250, column: 65, scope: !3315)
!3390 = !DILocation(line: 251, column: 47, scope: !3315)
!3391 = !DILocation(line: 252, column: 39, scope: !3315)
!3392 = !DILocation(line: 253, column: 39, scope: !3315)
!3393 = !DILocation(line: 256, column: 10, scope: !3315)
!3394 = !DILocation(line: 257, column: 10, scope: !3315)
!3395 = !DILocation(line: 258, column: 15, scope: !3315)
!3396 = !DILocation(line: 259, column: 10, scope: !3315)
!3397 = !DILocation(line: 260, column: 8, scope: !3315)
!3398 = !DILocation(line: 261, column: 25, scope: !3315)
!3399 = !DILocation(line: 261, column: 36, scope: !3315)
!3400 = !DILocation(line: 262, column: 8, scope: !3315)
!3401 = !DILocation(line: 263, column: 8, scope: !3315)
!3402 = !DILocation(line: 264, column: 8, scope: !3315)
!3403 = !DILocation(line: 265, column: 8, scope: !3315)
!3404 = !DILocation(line: 265, column: 3, scope: !3315)
!3405 = !DILocation(line: 308, column: 3, scope: !3315)
!3406 = !DILocation(line: 315, column: 11, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3315, file: !165, line: 309, column: 5)
!3408 = !DILocation(line: 315, column: 12, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3407, file: !165, line: 315, column: 11)
!3410 = !DILocation(line: 316, column: 9, scope: !3411)
!3411 = !DILexicalBlockFile(scope: !3412, file: !165, discriminator: 1)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !165, line: 316, column: 9)
!3413 = distinct !DILexicalBlock(scope: !3409, file: !165, line: 316, column: 9)
!3414 = !DILocation(line: 316, column: 9, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3413, file: !165, discriminator: 1)
!3416 = !DILocation(line: 316, column: 9, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3412, file: !165, discriminator: 2)
!3418 = !DILocation(line: 354, column: 26, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !165, line: 332, column: 11)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !165, line: 331, column: 13)
!3421 = distinct !DILexicalBlock(scope: !3407, file: !165, line: 330, column: 7)
!3422 = !DILocation(line: 355, column: 27, scope: !3419)
!3423 = !DILocation(line: 356, column: 11, scope: !3419)
!3424 = !DILocation(line: 357, column: 14, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3421, file: !165, line: 357, column: 13)
!3426 = !DILocation(line: 357, column: 13, scope: !3421)
!3427 = !DILocation(line: 358, column: 43, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3429, file: !165, discriminator: 1)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !165, line: 358, column: 11)
!3430 = distinct !DILexicalBlock(scope: !3425, file: !165, line: 358, column: 11)
!3431 = !DILocation(line: 358, column: 11, scope: !3432)
!3432 = !DILexicalBlockFile(scope: !3430, file: !165, discriminator: 1)
!3433 = !DILocation(line: 359, column: 13, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !3435, file: !165, discriminator: 1)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !165, line: 359, column: 13)
!3436 = distinct !DILexicalBlock(scope: !3429, file: !165, line: 359, column: 13)
!3437 = !DILocation(line: 359, column: 13, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3436, file: !165, discriminator: 1)
!3439 = !DILocation(line: 359, column: 13, scope: !3440)
!3440 = !DILexicalBlockFile(scope: !3435, file: !165, discriminator: 2)
!3441 = !DILocation(line: 359, column: 13, scope: !3442)
!3442 = !DILexicalBlockFile(scope: !3436, file: !165, discriminator: 3)
!3443 = !DILocation(line: 358, column: 70, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3429, file: !165, discriminator: 2)
!3445 = distinct !{!3445, !3446, !3447}
!3446 = !DILocation(line: 358, column: 11, scope: !3430)
!3447 = !DILocation(line: 359, column: 13, scope: !3430)
!3448 = !DILocation(line: 362, column: 28, scope: !3421)
!3449 = !DILocation(line: 364, column: 7, scope: !3407)
!3450 = !DILocation(line: 367, column: 7, scope: !3407)
!3451 = !DILocation(line: 370, column: 7, scope: !3407)
!3452 = !DILocation(line: 373, column: 12, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3407, file: !165, line: 373, column: 11)
!3454 = !DILocation(line: 373, column: 11, scope: !3407)
!3455 = !DILocation(line: 378, column: 12, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3407, file: !165, line: 378, column: 11)
!3457 = !DILocation(line: 378, column: 11, scope: !3407)
!3458 = !DILocation(line: 379, column: 9, scope: !3459)
!3459 = !DILexicalBlockFile(scope: !3460, file: !165, discriminator: 1)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !165, line: 379, column: 9)
!3461 = distinct !DILexicalBlock(scope: !3456, file: !165, line: 379, column: 9)
!3462 = !DILocation(line: 379, column: 9, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !3461, file: !165, discriminator: 1)
!3464 = !DILocation(line: 379, column: 9, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3460, file: !165, discriminator: 2)
!3466 = !DILocation(line: 386, column: 7, scope: !3407)
!3467 = !DILocation(line: 389, column: 7, scope: !3407)
!3468 = !DILocation(line: 255, column: 10, scope: !3315)
!3469 = !DILocation(line: 392, column: 8, scope: !3344)
!3470 = !DILocation(line: 392, column: 27, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !3343, file: !165, discriminator: 1)
!3472 = !DILocation(line: 392, column: 19, scope: !3471)
!3473 = !DILocation(line: 392, column: 60, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3343, file: !165, discriminator: 3)
!3475 = !DILocation(line: 392, column: 3, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3344, file: !165, discriminator: 4)
!3477 = !DILocation(line: 392, column: 41, scope: !3478)
!3478 = !DILexicalBlockFile(scope: !3343, file: !165, discriminator: 2)
!3479 = !DILocation(line: 392, column: 48, scope: !3478)
!3480 = !DILocation(line: 396, column: 12, scope: !3342)
!3481 = !DILocation(line: 397, column: 12, scope: !3342)
!3482 = !DILocation(line: 398, column: 12, scope: !3342)
!3483 = !DILocation(line: 401, column: 11, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3342, file: !165, line: 400, column: 11)
!3485 = !DILocation(line: 403, column: 17, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !3484, file: !165, discriminator: 1)
!3487 = !DILocation(line: 404, column: 39, scope: !3484)
!3488 = !DILocation(line: 408, column: 32, scope: !3484)
!3489 = !DILocation(line: 404, column: 19, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !3484, file: !165, discriminator: 2)
!3491 = !DILocation(line: 404, column: 15, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3484, file: !165, discriminator: 4)
!3493 = !DILocation(line: 409, column: 11, scope: !3484)
!3494 = !DILocation(line: 409, column: 26, scope: !3486)
!3495 = !DILocation(line: 409, column: 14, scope: !3486)
!3496 = !DILocation(line: 400, column: 11, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3342, file: !165, discriminator: 1)
!3498 = !DILocation(line: 416, column: 11, scope: !3342)
!3499 = !DILocation(line: 394, column: 21, scope: !3342)
!3500 = !DILocation(line: 417, column: 7, scope: !3342)
!3501 = !DILocation(line: 420, column: 15, scope: !3351)
!3502 = !DILocation(line: 422, column: 15, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3504, file: !165, discriminator: 1)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !165, line: 422, column: 15)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !165, line: 421, column: 13)
!3506 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 420, column: 15)
!3507 = !DILocation(line: 422, column: 15, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3509, file: !165, discriminator: 4)
!3509 = distinct !DILexicalBlock(scope: !3504, file: !165, line: 422, column: 15)
!3510 = !DILocation(line: 422, column: 15, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !3509, file: !165, discriminator: 3)
!3512 = !DILocation(line: 422, column: 15, scope: !3513)
!3513 = !DILexicalBlockFile(scope: !3514, file: !165, discriminator: 6)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !165, line: 422, column: 15)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !165, line: 422, column: 15)
!3516 = distinct !DILexicalBlock(scope: !3509, file: !165, line: 422, column: 15)
!3517 = !DILocation(line: 422, column: 15, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3515, file: !165, discriminator: 6)
!3519 = !DILocation(line: 422, column: 15, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3514, file: !165, discriminator: 7)
!3521 = !DILocation(line: 422, column: 15, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3515, file: !165, discriminator: 8)
!3523 = !DILocation(line: 422, column: 15, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3525, file: !165, discriminator: 11)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !165, line: 422, column: 15)
!3526 = distinct !DILexicalBlock(scope: !3516, file: !165, line: 422, column: 15)
!3527 = !DILocation(line: 422, column: 15, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3526, file: !165, discriminator: 11)
!3529 = !DILocation(line: 422, column: 15, scope: !3530)
!3530 = !DILexicalBlockFile(scope: !3525, file: !165, discriminator: 12)
!3531 = !DILocation(line: 422, column: 15, scope: !3532)
!3532 = !DILexicalBlockFile(scope: !3526, file: !165, discriminator: 13)
!3533 = !DILocation(line: 422, column: 15, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3535, file: !165, discriminator: 16)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !165, line: 422, column: 15)
!3536 = distinct !DILexicalBlock(scope: !3516, file: !165, line: 422, column: 15)
!3537 = !DILocation(line: 422, column: 15, scope: !3538)
!3538 = !DILexicalBlockFile(scope: !3536, file: !165, discriminator: 16)
!3539 = !DILocation(line: 422, column: 15, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3535, file: !165, discriminator: 17)
!3541 = !DILocation(line: 422, column: 15, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !3536, file: !165, discriminator: 18)
!3543 = !DILocation(line: 422, column: 15, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !3516, file: !165, discriminator: 20)
!3545 = !DILocation(line: 422, column: 15, scope: !3546)
!3546 = !DILexicalBlockFile(scope: !3547, file: !165, discriminator: 22)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !165, line: 422, column: 15)
!3548 = distinct !DILexicalBlock(scope: !3504, file: !165, line: 422, column: 15)
!3549 = !DILocation(line: 422, column: 15, scope: !3550)
!3550 = !DILexicalBlockFile(scope: !3548, file: !165, discriminator: 22)
!3551 = !DILocation(line: 422, column: 15, scope: !3552)
!3552 = !DILexicalBlockFile(scope: !3547, file: !165, discriminator: 23)
!3553 = !DILocation(line: 422, column: 15, scope: !3554)
!3554 = !DILexicalBlockFile(scope: !3548, file: !165, discriminator: 24)
!3555 = !DILocation(line: 430, column: 19, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3505, file: !165, line: 429, column: 19)
!3557 = !DILocation(line: 430, column: 24, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !3556, file: !165, discriminator: 1)
!3559 = !DILocation(line: 430, column: 28, scope: !3558)
!3560 = !DILocation(line: 430, column: 38, scope: !3558)
!3561 = !DILocation(line: 430, column: 48, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3556, file: !165, discriminator: 2)
!3563 = !DILocation(line: 430, column: 59, scope: !3562)
!3564 = !DILocation(line: 432, column: 19, scope: !3565)
!3565 = !DILexicalBlockFile(scope: !3566, file: !165, discriminator: 1)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !165, line: 432, column: 19)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !165, line: 432, column: 19)
!3568 = distinct !DILexicalBlock(scope: !3556, file: !165, line: 431, column: 17)
!3569 = !DILocation(line: 432, column: 19, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3567, file: !165, discriminator: 1)
!3571 = !DILocation(line: 432, column: 19, scope: !3572)
!3572 = !DILexicalBlockFile(scope: !3566, file: !165, discriminator: 2)
!3573 = !DILocation(line: 432, column: 19, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !3567, file: !165, discriminator: 3)
!3575 = !DILocation(line: 433, column: 19, scope: !3576)
!3576 = !DILexicalBlockFile(scope: !3577, file: !165, discriminator: 1)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !165, line: 433, column: 19)
!3578 = distinct !DILexicalBlock(scope: !3568, file: !165, line: 433, column: 19)
!3579 = !DILocation(line: 433, column: 19, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3578, file: !165, discriminator: 1)
!3581 = !DILocation(line: 433, column: 19, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3577, file: !165, discriminator: 2)
!3583 = !DILocation(line: 433, column: 19, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3578, file: !165, discriminator: 3)
!3585 = !DILocation(line: 434, column: 17, scope: !3568)
!3586 = !DILocation(line: 441, column: 20, scope: !3506)
!3587 = !DILocation(line: 446, column: 11, scope: !3351)
!3588 = !DILocation(line: 449, column: 19, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 447, column: 13)
!3590 = !DILocation(line: 455, column: 19, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3589, file: !165, line: 454, column: 19)
!3592 = !DILocation(line: 455, column: 24, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3591, file: !165, discriminator: 1)
!3594 = !DILocation(line: 455, column: 28, scope: !3593)
!3595 = !DILocation(line: 455, column: 38, scope: !3593)
!3596 = !DILocation(line: 455, column: 47, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3591, file: !165, discriminator: 2)
!3598 = !DILocation(line: 455, column: 41, scope: !3597)
!3599 = !DILocation(line: 455, column: 52, scope: !3597)
!3600 = !DILocation(line: 454, column: 19, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3589, file: !165, discriminator: 1)
!3602 = !DILocation(line: 456, column: 25, scope: !3591)
!3603 = !DILocation(line: 456, column: 17, scope: !3591)
!3604 = !DILocation(line: 463, column: 25, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3591, file: !165, line: 457, column: 19)
!3606 = !DILocation(line: 467, column: 21, scope: !3607)
!3607 = !DILexicalBlockFile(scope: !3608, file: !165, discriminator: 1)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !165, line: 467, column: 21)
!3609 = distinct !DILexicalBlock(scope: !3605, file: !165, line: 467, column: 21)
!3610 = !DILocation(line: 467, column: 21, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3609, file: !165, discriminator: 1)
!3612 = !DILocation(line: 467, column: 21, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3608, file: !165, discriminator: 2)
!3614 = !DILocation(line: 467, column: 21, scope: !3615)
!3615 = !DILexicalBlockFile(scope: !3609, file: !165, discriminator: 3)
!3616 = !DILocation(line: 468, column: 21, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !3618, file: !165, discriminator: 1)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !165, line: 468, column: 21)
!3619 = distinct !DILexicalBlock(scope: !3605, file: !165, line: 468, column: 21)
!3620 = !DILocation(line: 468, column: 21, scope: !3621)
!3621 = !DILexicalBlockFile(scope: !3619, file: !165, discriminator: 1)
!3622 = !DILocation(line: 468, column: 21, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !3618, file: !165, discriminator: 2)
!3624 = !DILocation(line: 468, column: 21, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3619, file: !165, discriminator: 3)
!3626 = !DILocation(line: 469, column: 21, scope: !3627)
!3627 = !DILexicalBlockFile(scope: !3628, file: !165, discriminator: 1)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !165, line: 469, column: 21)
!3629 = distinct !DILexicalBlock(scope: !3605, file: !165, line: 469, column: 21)
!3630 = !DILocation(line: 469, column: 21, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3629, file: !165, discriminator: 1)
!3632 = !DILocation(line: 469, column: 21, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3628, file: !165, discriminator: 2)
!3634 = !DILocation(line: 469, column: 21, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !3629, file: !165, discriminator: 3)
!3636 = !DILocation(line: 470, column: 21, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !3638, file: !165, discriminator: 1)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !165, line: 470, column: 21)
!3639 = distinct !DILexicalBlock(scope: !3605, file: !165, line: 470, column: 21)
!3640 = !DILocation(line: 470, column: 21, scope: !3641)
!3641 = !DILexicalBlockFile(scope: !3639, file: !165, discriminator: 1)
!3642 = !DILocation(line: 470, column: 21, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3638, file: !165, discriminator: 2)
!3644 = !DILocation(line: 470, column: 21, scope: !3645)
!3645 = !DILexicalBlockFile(scope: !3639, file: !165, discriminator: 3)
!3646 = !DILocation(line: 471, column: 21, scope: !3605)
!3647 = !DILocation(line: 395, column: 21, scope: !3342)
!3648 = !DILocation(line: 484, column: 31, scope: !3351)
!3649 = !DILocation(line: 485, column: 31, scope: !3351)
!3650 = !DILocation(line: 487, column: 31, scope: !3351)
!3651 = !DILocation(line: 488, column: 31, scope: !3351)
!3652 = !DILocation(line: 489, column: 31, scope: !3351)
!3653 = !DILocation(line: 492, column: 15, scope: !3351)
!3654 = !DILocation(line: 494, column: 19, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !165, line: 493, column: 13)
!3656 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 492, column: 15)
!3657 = !DILocation(line: 501, column: 33, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 501, column: 15)
!3659 = !DILocation(line: 506, column: 15, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 505, column: 15)
!3661 = !DILocation(line: 510, column: 15, scope: !3351)
!3662 = !DILocation(line: 518, column: 26, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 518, column: 15)
!3664 = !DILocation(line: 518, column: 15, scope: !3351)
!3665 = !DILocation(line: 518, column: 40, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !3663, file: !165, discriminator: 1)
!3667 = !DILocation(line: 518, column: 47, scope: !3666)
!3668 = !DILocation(line: 522, column: 17, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 522, column: 15)
!3670 = !DILocation(line: 518, column: 18, scope: !3666)
!3671 = !DILocation(line: 518, column: 65, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3663, file: !165, discriminator: 2)
!3673 = !DILocation(line: 518, column: 15, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !3351, file: !165, discriminator: 2)
!3675 = !DILocation(line: 522, column: 15, scope: !3351)
!3676 = !DILocation(line: 526, column: 11, scope: !3351)
!3677 = !DILocation(line: 541, column: 15, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 540, column: 15)
!3679 = !DILocation(line: 548, column: 15, scope: !3351)
!3680 = !DILocation(line: 550, column: 19, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !165, line: 549, column: 13)
!3682 = distinct !DILexicalBlock(scope: !3351, file: !165, line: 548, column: 15)
!3683 = !DILocation(line: 553, column: 19, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3681, file: !165, line: 553, column: 19)
!3685 = !DILocation(line: 553, column: 35, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3684, file: !165, discriminator: 1)
!3687 = !DILocation(line: 553, column: 30, scope: !3684)
!3688 = !DILocation(line: 562, column: 15, scope: !3689)
!3689 = !DILexicalBlockFile(scope: !3690, file: !165, discriminator: 1)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !165, line: 562, column: 15)
!3691 = distinct !DILexicalBlock(scope: !3681, file: !165, line: 562, column: 15)
!3692 = !DILocation(line: 562, column: 15, scope: !3693)
!3693 = !DILexicalBlockFile(scope: !3691, file: !165, discriminator: 1)
!3694 = !DILocation(line: 562, column: 15, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !3690, file: !165, discriminator: 2)
!3696 = !DILocation(line: 562, column: 15, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3691, file: !165, discriminator: 3)
!3698 = !DILocation(line: 563, column: 15, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !3700, file: !165, discriminator: 1)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !165, line: 563, column: 15)
!3701 = distinct !DILexicalBlock(scope: !3681, file: !165, line: 563, column: 15)
!3702 = !DILocation(line: 563, column: 15, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !3701, file: !165, discriminator: 1)
!3704 = !DILocation(line: 563, column: 15, scope: !3705)
!3705 = !DILexicalBlockFile(scope: !3700, file: !165, discriminator: 2)
!3706 = !DILocation(line: 563, column: 15, scope: !3707)
!3707 = !DILexicalBlockFile(scope: !3701, file: !165, discriminator: 3)
!3708 = !DILocation(line: 564, column: 15, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3710, file: !165, discriminator: 1)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !165, line: 564, column: 15)
!3711 = distinct !DILexicalBlock(scope: !3681, file: !165, line: 564, column: 15)
!3712 = !DILocation(line: 564, column: 15, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !3711, file: !165, discriminator: 1)
!3714 = !DILocation(line: 564, column: 15, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !3710, file: !165, discriminator: 2)
!3716 = !DILocation(line: 564, column: 15, scope: !3717)
!3717 = !DILexicalBlockFile(scope: !3711, file: !165, discriminator: 3)
!3718 = !DILocation(line: 566, column: 13, scope: !3681)
!3719 = !DILocation(line: 606, column: 17, scope: !3350)
!3720 = !DILocation(line: 602, column: 20, scope: !3350)
!3721 = !DILocation(line: 609, column: 29, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3355, file: !165, line: 607, column: 15)
!3723 = !{!793, !793, i64 0}
!3724 = !DILocation(line: 609, column: 27, scope: !3722)
!3725 = !DILocation(line: 604, column: 18, scope: !3350)
!3726 = !DILocation(line: 610, column: 15, scope: !3722)
!3727 = !DILocation(line: 613, column: 17, scope: !3354)
!3728 = !DILocation(line: 614, column: 17, scope: !3354)
!3729 = !DILocation(line: 618, column: 29, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3354, file: !165, line: 618, column: 21)
!3731 = !DILocation(line: 618, column: 21, scope: !3354)
!3732 = distinct !{!3732, !3733, !3734}
!3733 = !DILocation(line: 621, column: 17, scope: !3354)
!3734 = !DILocation(line: 667, column: 44, scope: !3354)
!3735 = !DILocation(line: 619, column: 29, scope: !3730)
!3736 = !DILocation(line: 619, column: 19, scope: !3730)
!3737 = !DILocation(line: 623, column: 21, scope: !3371)
!3738 = !DILocation(line: 624, column: 56, scope: !3371)
!3739 = !DILocation(line: 624, column: 50, scope: !3371)
!3740 = !DILocation(line: 625, column: 53, scope: !3371)
!3741 = !DILocation(line: 613, column: 27, scope: !3354)
!3742 = !DILocation(line: 623, column: 29, scope: !3371)
!3743 = !DILocation(line: 624, column: 36, scope: !3371)
!3744 = !DILocation(line: 624, column: 28, scope: !3371)
!3745 = !DILocation(line: 626, column: 25, scope: !3371)
!3746 = !DILocation(line: 636, column: 38, scope: !3747)
!3747 = !DILexicalBlockFile(scope: !3748, file: !165, discriminator: 1)
!3748 = distinct !DILexicalBlock(scope: !3378, file: !165, line: 634, column: 23)
!3749 = !DILocation(line: 636, column: 48, scope: !3747)
!3750 = !DILocation(line: 636, column: 51, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3748, file: !165, discriminator: 2)
!3752 = !DILocation(line: 636, column: 48, scope: !3751)
!3753 = !DILocation(line: 636, column: 25, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !3748, file: !165, discriminator: 3)
!3755 = !DILocation(line: 637, column: 28, scope: !3748)
!3756 = !DILocation(line: 636, column: 34, scope: !3747)
!3757 = distinct !{!3757, !3758, !3755}
!3758 = !DILocation(line: 636, column: 25, scope: !3748)
!3759 = !DILocation(line: 650, column: 43, scope: !3760)
!3760 = !DILexicalBlockFile(scope: !3761, file: !165, discriminator: 1)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !165, line: 650, column: 29)
!3762 = distinct !DILexicalBlock(scope: !3375, file: !165, line: 650, column: 29)
!3763 = !DILocation(line: 647, column: 29, scope: !3376)
!3764 = !DILocation(line: 649, column: 36, scope: !3375)
!3765 = !DILocation(line: 651, column: 49, scope: !3761)
!3766 = !DILocation(line: 651, column: 39, scope: !3761)
!3767 = !DILocation(line: 651, column: 31, scope: !3761)
!3768 = !DILocation(line: 650, column: 53, scope: !3769)
!3769 = !DILexicalBlockFile(scope: !3761, file: !165, discriminator: 2)
!3770 = !DILocation(line: 650, column: 29, scope: !3771)
!3771 = !DILexicalBlockFile(scope: !3762, file: !165, discriminator: 1)
!3772 = distinct !{!3772, !3773, !3774}
!3773 = !DILocation(line: 650, column: 29, scope: !3762)
!3774 = !DILocation(line: 659, column: 33, scope: !3762)
!3775 = !DILocation(line: 666, column: 19, scope: !3354)
!3776 = !DILocation(line: 662, column: 41, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3377, file: !165, line: 662, column: 29)
!3778 = !DILocation(line: 662, column: 31, scope: !3777)
!3779 = !DILocation(line: 662, column: 29, scope: !3377)
!3780 = !DILocation(line: 664, column: 27, scope: !3377)
!3781 = !DILocation(line: 667, column: 26, scope: !3354)
!3782 = !DILocation(line: 667, column: 24, scope: !3354)
!3783 = !DILocation(line: 666, column: 19, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !3371, file: !165, discriminator: 3)
!3785 = !DILocation(line: 668, column: 15, scope: !3355)
!3786 = !DILocation(line: 670, column: 40, scope: !3350)
!3787 = !DILocation(line: 672, column: 19, scope: !3383)
!3788 = !DILocation(line: 672, column: 45, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !3383, file: !165, discriminator: 1)
!3790 = !DILocation(line: 672, column: 23, scope: !3383)
!3791 = !DILocation(line: 676, column: 33, scope: !3382)
!3792 = !DILocation(line: 676, column: 24, scope: !3382)
!3793 = !DILocation(line: 678, column: 17, scope: !3382)
!3794 = !DILocation(line: 680, column: 43, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !165, line: 680, column: 25)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !165, line: 679, column: 19)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !165, line: 678, column: 17)
!3798 = distinct !DILexicalBlock(scope: !3382, file: !165, line: 678, column: 17)
!3799 = !DILocation(line: 682, column: 25, scope: !3800)
!3800 = !DILexicalBlockFile(scope: !3801, file: !165, discriminator: 1)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !165, line: 682, column: 25)
!3802 = distinct !DILexicalBlock(scope: !3795, file: !165, line: 681, column: 23)
!3803 = !DILocation(line: 682, column: 25, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3805, file: !165, discriminator: 4)
!3805 = distinct !DILexicalBlock(scope: !3801, file: !165, line: 682, column: 25)
!3806 = !DILocation(line: 682, column: 25, scope: !3807)
!3807 = !DILexicalBlockFile(scope: !3805, file: !165, discriminator: 3)
!3808 = !DILocation(line: 682, column: 25, scope: !3809)
!3809 = !DILexicalBlockFile(scope: !3810, file: !165, discriminator: 6)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !165, line: 682, column: 25)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !165, line: 682, column: 25)
!3812 = distinct !DILexicalBlock(scope: !3805, file: !165, line: 682, column: 25)
!3813 = !DILocation(line: 682, column: 25, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !3811, file: !165, discriminator: 6)
!3815 = !DILocation(line: 682, column: 25, scope: !3816)
!3816 = !DILexicalBlockFile(scope: !3810, file: !165, discriminator: 7)
!3817 = !DILocation(line: 682, column: 25, scope: !3818)
!3818 = !DILexicalBlockFile(scope: !3811, file: !165, discriminator: 8)
!3819 = !DILocation(line: 682, column: 25, scope: !3820)
!3820 = !DILexicalBlockFile(scope: !3821, file: !165, discriminator: 11)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !165, line: 682, column: 25)
!3822 = distinct !DILexicalBlock(scope: !3812, file: !165, line: 682, column: 25)
!3823 = !DILocation(line: 682, column: 25, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !3822, file: !165, discriminator: 11)
!3825 = !DILocation(line: 682, column: 25, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3821, file: !165, discriminator: 12)
!3827 = !DILocation(line: 682, column: 25, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3822, file: !165, discriminator: 13)
!3829 = !DILocation(line: 682, column: 25, scope: !3830)
!3830 = !DILexicalBlockFile(scope: !3831, file: !165, discriminator: 16)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !165, line: 682, column: 25)
!3832 = distinct !DILexicalBlock(scope: !3812, file: !165, line: 682, column: 25)
!3833 = !DILocation(line: 682, column: 25, scope: !3834)
!3834 = !DILexicalBlockFile(scope: !3832, file: !165, discriminator: 16)
!3835 = !DILocation(line: 682, column: 25, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3831, file: !165, discriminator: 17)
!3837 = !DILocation(line: 682, column: 25, scope: !3838)
!3838 = !DILexicalBlockFile(scope: !3832, file: !165, discriminator: 18)
!3839 = !DILocation(line: 682, column: 25, scope: !3840)
!3840 = !DILexicalBlockFile(scope: !3812, file: !165, discriminator: 20)
!3841 = !DILocation(line: 682, column: 25, scope: !3842)
!3842 = !DILexicalBlockFile(scope: !3843, file: !165, discriminator: 22)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !165, line: 682, column: 25)
!3844 = distinct !DILexicalBlock(scope: !3801, file: !165, line: 682, column: 25)
!3845 = !DILocation(line: 682, column: 25, scope: !3846)
!3846 = !DILexicalBlockFile(scope: !3844, file: !165, discriminator: 22)
!3847 = !DILocation(line: 682, column: 25, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3843, file: !165, discriminator: 23)
!3849 = !DILocation(line: 682, column: 25, scope: !3850)
!3850 = !DILexicalBlockFile(scope: !3844, file: !165, discriminator: 24)
!3851 = !DILocation(line: 683, column: 25, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3853, file: !165, discriminator: 1)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !165, line: 683, column: 25)
!3854 = distinct !DILexicalBlock(scope: !3802, file: !165, line: 683, column: 25)
!3855 = !DILocation(line: 683, column: 25, scope: !3856)
!3856 = !DILexicalBlockFile(scope: !3854, file: !165, discriminator: 1)
!3857 = !DILocation(line: 683, column: 25, scope: !3858)
!3858 = !DILexicalBlockFile(scope: !3853, file: !165, discriminator: 2)
!3859 = !DILocation(line: 683, column: 25, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3854, file: !165, discriminator: 3)
!3861 = !DILocation(line: 684, column: 25, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3863, file: !165, discriminator: 1)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !165, line: 684, column: 25)
!3864 = distinct !DILexicalBlock(scope: !3802, file: !165, line: 684, column: 25)
!3865 = !DILocation(line: 684, column: 25, scope: !3866)
!3866 = !DILexicalBlockFile(scope: !3864, file: !165, discriminator: 1)
!3867 = !DILocation(line: 684, column: 25, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3863, file: !165, discriminator: 2)
!3869 = !DILocation(line: 684, column: 25, scope: !3870)
!3870 = !DILexicalBlockFile(scope: !3864, file: !165, discriminator: 3)
!3871 = !DILocation(line: 685, column: 38, scope: !3802)
!3872 = !DILocation(line: 685, column: 33, scope: !3802)
!3873 = !DILocation(line: 686, column: 23, scope: !3802)
!3874 = !DILocation(line: 687, column: 30, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3795, file: !165, line: 687, column: 30)
!3876 = !DILocation(line: 687, column: 30, scope: !3795)
!3877 = !DILocation(line: 689, column: 25, scope: !3878)
!3878 = !DILexicalBlockFile(scope: !3879, file: !165, discriminator: 1)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !165, line: 689, column: 25)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !165, line: 689, column: 25)
!3881 = distinct !DILexicalBlock(scope: !3875, file: !165, line: 688, column: 23)
!3882 = !DILocation(line: 689, column: 25, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !3880, file: !165, discriminator: 1)
!3884 = !DILocation(line: 689, column: 25, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3879, file: !165, discriminator: 2)
!3886 = !DILocation(line: 689, column: 25, scope: !3887)
!3887 = !DILexicalBlockFile(scope: !3880, file: !165, discriminator: 3)
!3888 = !DILocation(line: 691, column: 23, scope: !3881)
!3889 = !DILocation(line: 692, column: 35, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3796, file: !165, line: 692, column: 25)
!3891 = !DILocation(line: 692, column: 30, scope: !3890)
!3892 = !DILocation(line: 692, column: 25, scope: !3796)
!3893 = !DILocation(line: 694, column: 21, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3895, file: !165, discriminator: 1)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !165, line: 694, column: 21)
!3896 = distinct !DILexicalBlock(scope: !3796, file: !165, line: 694, column: 21)
!3897 = !DILocation(line: 694, column: 21, scope: !3898)
!3898 = !DILexicalBlockFile(scope: !3895, file: !165, discriminator: 2)
!3899 = !DILocation(line: 694, column: 21, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3901, file: !165, discriminator: 4)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !165, line: 694, column: 21)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !165, line: 694, column: 21)
!3903 = distinct !DILexicalBlock(scope: !3895, file: !165, line: 694, column: 21)
!3904 = !DILocation(line: 694, column: 21, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !3902, file: !165, discriminator: 4)
!3906 = !DILocation(line: 694, column: 21, scope: !3907)
!3907 = !DILexicalBlockFile(scope: !3901, file: !165, discriminator: 5)
!3908 = !DILocation(line: 694, column: 21, scope: !3909)
!3909 = !DILexicalBlockFile(scope: !3902, file: !165, discriminator: 6)
!3910 = !DILocation(line: 694, column: 21, scope: !3911)
!3911 = !DILexicalBlockFile(scope: !3912, file: !165, discriminator: 9)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !165, line: 694, column: 21)
!3913 = distinct !DILexicalBlock(scope: !3903, file: !165, line: 694, column: 21)
!3914 = !DILocation(line: 694, column: 21, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !3913, file: !165, discriminator: 9)
!3916 = !DILocation(line: 694, column: 21, scope: !3917)
!3917 = !DILexicalBlockFile(scope: !3912, file: !165, discriminator: 10)
!3918 = !DILocation(line: 694, column: 21, scope: !3919)
!3919 = !DILexicalBlockFile(scope: !3913, file: !165, discriminator: 11)
!3920 = !DILocation(line: 694, column: 21, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !3903, file: !165, discriminator: 13)
!3922 = !DILocation(line: 695, column: 21, scope: !3923)
!3923 = !DILexicalBlockFile(scope: !3924, file: !165, discriminator: 1)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !165, line: 695, column: 21)
!3925 = distinct !DILexicalBlock(scope: !3796, file: !165, line: 695, column: 21)
!3926 = !DILocation(line: 695, column: 21, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !3925, file: !165, discriminator: 1)
!3928 = !DILocation(line: 695, column: 21, scope: !3929)
!3929 = !DILexicalBlockFile(scope: !3924, file: !165, discriminator: 2)
!3930 = !DILocation(line: 695, column: 21, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !3925, file: !165, discriminator: 3)
!3932 = !DILocation(line: 696, column: 25, scope: !3796)
!3933 = !DILocation(line: 678, column: 17, scope: !3934)
!3934 = !DILexicalBlockFile(scope: !3797, file: !165, discriminator: 1)
!3935 = distinct !{!3935, !3936, !3937}
!3936 = !DILocation(line: 678, column: 17, scope: !3798)
!3937 = !DILocation(line: 697, column: 19, scope: !3798)
!3938 = !DILocation(line: 704, column: 34, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3342, file: !165, line: 704, column: 11)
!3940 = !DILocation(line: 706, column: 14, scope: !3939)
!3941 = !DILocation(line: 707, column: 14, scope: !3939)
!3942 = !DILocation(line: 707, column: 35, scope: !3943)
!3943 = !DILexicalBlockFile(scope: !3939, file: !165, discriminator: 1)
!3944 = !DILocation(line: 707, column: 17, scope: !3943)
!3945 = !DILocation(line: 707, column: 53, scope: !3943)
!3946 = !DILocation(line: 707, column: 47, scope: !3943)
!3947 = !DILocation(line: 707, column: 65, scope: !3943)
!3948 = !DILocation(line: 708, column: 15, scope: !3943)
!3949 = !DILocation(line: 708, column: 11, scope: !3939)
!3950 = !DILocation(line: 704, column: 11, scope: !3951)
!3951 = !DILexicalBlockFile(scope: !3342, file: !165, discriminator: 2)
!3952 = !DILocation(line: 712, column: 7, scope: !3953)
!3953 = !DILexicalBlockFile(scope: !3954, file: !165, discriminator: 1)
!3954 = distinct !DILexicalBlock(scope: !3342, file: !165, line: 712, column: 7)
!3955 = !DILocation(line: 712, column: 7, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3957, file: !165, discriminator: 4)
!3957 = distinct !DILexicalBlock(scope: !3954, file: !165, line: 712, column: 7)
!3958 = !DILocation(line: 712, column: 7, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !3957, file: !165, discriminator: 3)
!3960 = !DILocation(line: 712, column: 7, scope: !3961)
!3961 = !DILexicalBlockFile(scope: !3962, file: !165, discriminator: 6)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !165, line: 712, column: 7)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !165, line: 712, column: 7)
!3964 = distinct !DILexicalBlock(scope: !3957, file: !165, line: 712, column: 7)
!3965 = !DILocation(line: 712, column: 7, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3963, file: !165, discriminator: 6)
!3967 = !DILocation(line: 712, column: 7, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3962, file: !165, discriminator: 7)
!3969 = !DILocation(line: 712, column: 7, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !3963, file: !165, discriminator: 8)
!3971 = !DILocation(line: 712, column: 7, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3973, file: !165, discriminator: 11)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !165, line: 712, column: 7)
!3974 = distinct !DILexicalBlock(scope: !3964, file: !165, line: 712, column: 7)
!3975 = !DILocation(line: 712, column: 7, scope: !3976)
!3976 = !DILexicalBlockFile(scope: !3974, file: !165, discriminator: 11)
!3977 = !DILocation(line: 712, column: 7, scope: !3978)
!3978 = !DILexicalBlockFile(scope: !3973, file: !165, discriminator: 12)
!3979 = !DILocation(line: 712, column: 7, scope: !3980)
!3980 = !DILexicalBlockFile(scope: !3974, file: !165, discriminator: 13)
!3981 = !DILocation(line: 712, column: 7, scope: !3982)
!3982 = !DILexicalBlockFile(scope: !3983, file: !165, discriminator: 16)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !165, line: 712, column: 7)
!3984 = distinct !DILexicalBlock(scope: !3964, file: !165, line: 712, column: 7)
!3985 = !DILocation(line: 712, column: 7, scope: !3986)
!3986 = !DILexicalBlockFile(scope: !3984, file: !165, discriminator: 16)
!3987 = !DILocation(line: 712, column: 7, scope: !3988)
!3988 = !DILexicalBlockFile(scope: !3983, file: !165, discriminator: 17)
!3989 = !DILocation(line: 712, column: 7, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3984, file: !165, discriminator: 18)
!3991 = !DILocation(line: 712, column: 7, scope: !3992)
!3992 = !DILexicalBlockFile(scope: !3964, file: !165, discriminator: 20)
!3993 = !DILocation(line: 712, column: 7, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3995, file: !165, discriminator: 22)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !165, line: 712, column: 7)
!3996 = distinct !DILexicalBlock(scope: !3954, file: !165, line: 712, column: 7)
!3997 = !DILocation(line: 712, column: 7, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3996, file: !165, discriminator: 22)
!3999 = !DILocation(line: 712, column: 7, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !3995, file: !165, discriminator: 23)
!4001 = !DILocation(line: 712, column: 7, scope: !4002)
!4002 = !DILexicalBlockFile(scope: !3996, file: !165, discriminator: 24)
!4003 = !DILocation(line: 715, column: 7, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !4005, file: !165, discriminator: 1)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !165, line: 715, column: 7)
!4006 = distinct !DILexicalBlock(scope: !3342, file: !165, line: 715, column: 7)
!4007 = !DILocation(line: 715, column: 7, scope: !4008)
!4008 = !DILexicalBlockFile(scope: !4005, file: !165, discriminator: 2)
!4009 = !DILocation(line: 715, column: 7, scope: !4010)
!4010 = !DILexicalBlockFile(scope: !4011, file: !165, discriminator: 4)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !165, line: 715, column: 7)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !165, line: 715, column: 7)
!4013 = distinct !DILexicalBlock(scope: !4005, file: !165, line: 715, column: 7)
!4014 = !DILocation(line: 715, column: 7, scope: !4015)
!4015 = !DILexicalBlockFile(scope: !4012, file: !165, discriminator: 4)
!4016 = !DILocation(line: 715, column: 7, scope: !4017)
!4017 = !DILexicalBlockFile(scope: !4011, file: !165, discriminator: 5)
!4018 = !DILocation(line: 715, column: 7, scope: !4019)
!4019 = !DILexicalBlockFile(scope: !4012, file: !165, discriminator: 6)
!4020 = !DILocation(line: 715, column: 7, scope: !4021)
!4021 = !DILexicalBlockFile(scope: !4022, file: !165, discriminator: 9)
!4022 = distinct !DILexicalBlock(scope: !4023, file: !165, line: 715, column: 7)
!4023 = distinct !DILexicalBlock(scope: !4013, file: !165, line: 715, column: 7)
!4024 = !DILocation(line: 715, column: 7, scope: !4025)
!4025 = !DILexicalBlockFile(scope: !4023, file: !165, discriminator: 9)
!4026 = !DILocation(line: 715, column: 7, scope: !4027)
!4027 = !DILexicalBlockFile(scope: !4022, file: !165, discriminator: 10)
!4028 = !DILocation(line: 715, column: 7, scope: !4029)
!4029 = !DILexicalBlockFile(scope: !4023, file: !165, discriminator: 11)
!4030 = !DILocation(line: 715, column: 7, scope: !4031)
!4031 = !DILexicalBlockFile(scope: !4013, file: !165, discriminator: 13)
!4032 = !DILocation(line: 716, column: 7, scope: !4033)
!4033 = !DILexicalBlockFile(scope: !4034, file: !165, discriminator: 1)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !165, line: 716, column: 7)
!4035 = distinct !DILexicalBlock(scope: !3342, file: !165, line: 716, column: 7)
!4036 = !DILocation(line: 716, column: 7, scope: !4037)
!4037 = !DILexicalBlockFile(scope: !4035, file: !165, discriminator: 1)
!4038 = !DILocation(line: 716, column: 7, scope: !4039)
!4039 = !DILexicalBlockFile(scope: !4034, file: !165, discriminator: 2)
!4040 = !DILocation(line: 716, column: 7, scope: !4041)
!4041 = !DILexicalBlockFile(scope: !4035, file: !165, discriminator: 3)
!4042 = !DILocation(line: 718, column: 13, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3342, file: !165, line: 718, column: 11)
!4044 = !DILocation(line: 718, column: 11, scope: !3342)
!4045 = !DILocation(line: 720, column: 5, scope: !3343)
!4046 = !DILocation(line: 392, column: 75, scope: !4047)
!4047 = !DILexicalBlockFile(scope: !3343, file: !165, discriminator: 5)
!4048 = !DILocation(line: 392, column: 3, scope: !4047)
!4049 = distinct !{!4049, !4050, !4051}
!4050 = !DILocation(line: 392, column: 3, scope: !3344)
!4051 = !DILocation(line: 720, column: 5, scope: !3344)
!4052 = !DILocation(line: 722, column: 11, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !3315, file: !165, line: 722, column: 7)
!4054 = !DILocation(line: 722, column: 16, scope: !4053)
!4055 = !DILocation(line: 730, column: 51, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !3315, file: !165, line: 730, column: 7)
!4057 = !DILocation(line: 731, column: 10, scope: !4058)
!4058 = !DILexicalBlockFile(scope: !4056, file: !165, discriminator: 1)
!4059 = !DILocation(line: 733, column: 11, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !165, line: 733, column: 11)
!4061 = distinct !DILexicalBlock(scope: !4056, file: !165, line: 732, column: 5)
!4062 = !DILocation(line: 733, column: 11, scope: !4061)
!4063 = !DILocation(line: 734, column: 16, scope: !4060)
!4064 = !DILocation(line: 734, column: 9, scope: !4060)
!4065 = !DILocation(line: 738, column: 18, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4060, file: !165, line: 738, column: 16)
!4067 = !DILocation(line: 738, column: 32, scope: !4068)
!4068 = !DILexicalBlockFile(scope: !4066, file: !165, discriminator: 1)
!4069 = !DILocation(line: 738, column: 29, scope: !4066)
!4070 = !DILocation(line: 747, column: 7, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !3315, file: !165, line: 747, column: 7)
!4072 = !DILocation(line: 747, column: 20, scope: !4071)
!4073 = !DILocation(line: 748, column: 12, scope: !4074)
!4074 = !DILexicalBlockFile(scope: !4075, file: !165, discriminator: 1)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !165, line: 748, column: 5)
!4076 = distinct !DILexicalBlock(scope: !4071, file: !165, line: 748, column: 5)
!4077 = !DILocation(line: 748, column: 5, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4076, file: !165, discriminator: 1)
!4079 = !DILocation(line: 749, column: 7, scope: !4080)
!4080 = !DILexicalBlockFile(scope: !4081, file: !165, discriminator: 1)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !165, line: 749, column: 7)
!4082 = distinct !DILexicalBlock(scope: !4075, file: !165, line: 749, column: 7)
!4083 = !DILocation(line: 749, column: 7, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4082, file: !165, discriminator: 1)
!4085 = !DILocation(line: 749, column: 7, scope: !4086)
!4086 = !DILexicalBlockFile(scope: !4081, file: !165, discriminator: 2)
!4087 = !DILocation(line: 749, column: 7, scope: !4088)
!4088 = !DILexicalBlockFile(scope: !4082, file: !165, discriminator: 3)
!4089 = !DILocation(line: 748, column: 39, scope: !4090)
!4090 = !DILexicalBlockFile(scope: !4075, file: !165, discriminator: 2)
!4091 = distinct !{!4091, !4092, !4093}
!4092 = !DILocation(line: 748, column: 5, scope: !4076)
!4093 = !DILocation(line: 749, column: 7, scope: !4076)
!4094 = !DILocation(line: 751, column: 11, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !3315, file: !165, line: 751, column: 7)
!4096 = !DILocation(line: 751, column: 7, scope: !3315)
!4097 = !DILocation(line: 752, column: 5, scope: !4095)
!4098 = !DILocation(line: 752, column: 17, scope: !4095)
!4099 = !DILocation(line: 758, column: 21, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !3315, file: !165, line: 758, column: 7)
!4101 = !DILocation(line: 758, column: 54, scope: !4102)
!4102 = !DILexicalBlockFile(scope: !4100, file: !165, discriminator: 1)
!4103 = !DILocation(line: 758, column: 51, scope: !4100)
!4104 = !DILocation(line: 762, column: 42, scope: !3315)
!4105 = !DILocation(line: 760, column: 10, scope: !3315)
!4106 = !DILocation(line: 760, column: 3, scope: !3315)
!4107 = !DILocation(line: 764, column: 1, scope: !3315)
!4108 = distinct !DISubprogram(name: "gettext_quote", scope: !165, file: !165, line: 199, type: !4109, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!38, !38, !12}
!4111 = !{!4112, !4113, !4114, !4115}
!4112 = !DILocalVariable(name: "msgid", arg: 1, scope: !4108, file: !165, line: 199, type: !38)
!4113 = !DILocalVariable(name: "s", arg: 2, scope: !4108, file: !165, line: 199, type: !12)
!4114 = !DILocalVariable(name: "translation", scope: !4108, file: !165, line: 201, type: !38)
!4115 = !DILocalVariable(name: "locale_code", scope: !4108, file: !165, line: 202, type: !38)
!4116 = !DILocation(line: 199, column: 28, scope: !4108)
!4117 = !DILocation(line: 199, column: 54, scope: !4108)
!4118 = !DILocation(line: 201, column: 29, scope: !4108)
!4119 = !DILocation(line: 201, column: 15, scope: !4108)
!4120 = !DILocation(line: 204, column: 19, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4108, file: !165, line: 204, column: 7)
!4122 = !DILocation(line: 204, column: 7, scope: !4108)
!4123 = !DILocation(line: 225, column: 17, scope: !4108)
!4124 = !DILocation(line: 202, column: 15, scope: !4108)
!4125 = !DILocalVariable(name: "s2", arg: 2, scope: !4126, file: !4127, line: 160, type: !38)
!4126 = distinct !DISubprogram(name: "strcaseeq0", scope: !4127, file: !4127, line: 160, type: !4128, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4130)
!4127 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!73, !38, !38, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!4130 = !{!4131, !4125, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140}
!4131 = !DILocalVariable(name: "s1", arg: 1, scope: !4126, file: !4127, line: 160, type: !38)
!4132 = !DILocalVariable(name: "s20", arg: 3, scope: !4126, file: !4127, line: 160, type: !28)
!4133 = !DILocalVariable(name: "s21", arg: 4, scope: !4126, file: !4127, line: 160, type: !28)
!4134 = !DILocalVariable(name: "s22", arg: 5, scope: !4126, file: !4127, line: 160, type: !28)
!4135 = !DILocalVariable(name: "s23", arg: 6, scope: !4126, file: !4127, line: 160, type: !28)
!4136 = !DILocalVariable(name: "s24", arg: 7, scope: !4126, file: !4127, line: 160, type: !28)
!4137 = !DILocalVariable(name: "s25", arg: 8, scope: !4126, file: !4127, line: 160, type: !28)
!4138 = !DILocalVariable(name: "s26", arg: 9, scope: !4126, file: !4127, line: 160, type: !28)
!4139 = !DILocalVariable(name: "s27", arg: 10, scope: !4126, file: !4127, line: 160, type: !28)
!4140 = !DILocalVariable(name: "s28", arg: 11, scope: !4126, file: !4127, line: 160, type: !28)
!4141 = !DILocation(line: 160, column: 41, scope: !4126, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 226, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4108, file: !165, line: 226, column: 7)
!4144 = !DILocation(line: 160, column: 120, scope: !4126, inlinedAt: !4142)
!4145 = !DILocation(line: 160, column: 130, scope: !4126, inlinedAt: !4142)
!4146 = !DILocation(line: 162, column: 7, scope: !4147, inlinedAt: !4142)
!4147 = !DILexicalBlockFile(scope: !4148, file: !4127, discriminator: 1)
!4148 = distinct !DILexicalBlock(scope: !4126, file: !4127, line: 162, column: 7)
!4149 = !DILocalVariable(name: "s2", arg: 2, scope: !4150, file: !4127, line: 146, type: !38)
!4150 = distinct !DISubprogram(name: "strcaseeq1", scope: !4127, file: !4127, line: 146, type: !4151, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!73, !38, !38, !28, !28, !28, !28, !28, !28, !28, !28}
!4153 = !{!4154, !4149, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!4154 = !DILocalVariable(name: "s1", arg: 1, scope: !4150, file: !4127, line: 146, type: !38)
!4155 = !DILocalVariable(name: "s21", arg: 3, scope: !4150, file: !4127, line: 146, type: !28)
!4156 = !DILocalVariable(name: "s22", arg: 4, scope: !4150, file: !4127, line: 146, type: !28)
!4157 = !DILocalVariable(name: "s23", arg: 5, scope: !4150, file: !4127, line: 146, type: !28)
!4158 = !DILocalVariable(name: "s24", arg: 6, scope: !4150, file: !4127, line: 146, type: !28)
!4159 = !DILocalVariable(name: "s25", arg: 7, scope: !4150, file: !4127, line: 146, type: !28)
!4160 = !DILocalVariable(name: "s26", arg: 8, scope: !4150, file: !4127, line: 146, type: !28)
!4161 = !DILocalVariable(name: "s27", arg: 9, scope: !4150, file: !4127, line: 146, type: !28)
!4162 = !DILocalVariable(name: "s28", arg: 10, scope: !4150, file: !4127, line: 146, type: !28)
!4163 = !DILocation(line: 146, column: 41, scope: !4150, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 167, column: 16, scope: !4165, inlinedAt: !4142)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !4127, line: 164, column: 11)
!4166 = distinct !DILexicalBlock(scope: !4148, file: !4127, line: 163, column: 5)
!4167 = !DILocation(line: 146, column: 110, scope: !4150, inlinedAt: !4164)
!4168 = !DILocation(line: 146, column: 120, scope: !4150, inlinedAt: !4164)
!4169 = !DILocation(line: 148, column: 7, scope: !4170, inlinedAt: !4164)
!4170 = !DILexicalBlockFile(scope: !4171, file: !4127, discriminator: 1)
!4171 = distinct !DILexicalBlock(scope: !4150, file: !4127, line: 148, column: 7)
!4172 = !DILocalVariable(name: "s2", arg: 2, scope: !4173, file: !4127, line: 132, type: !38)
!4173 = distinct !DISubprogram(name: "strcaseeq2", scope: !4127, file: !4127, line: 132, type: !4174, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4176)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!73, !38, !38, !28, !28, !28, !28, !28, !28, !28}
!4176 = !{!4177, !4172, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4177 = !DILocalVariable(name: "s1", arg: 1, scope: !4173, file: !4127, line: 132, type: !38)
!4178 = !DILocalVariable(name: "s22", arg: 3, scope: !4173, file: !4127, line: 132, type: !28)
!4179 = !DILocalVariable(name: "s23", arg: 4, scope: !4173, file: !4127, line: 132, type: !28)
!4180 = !DILocalVariable(name: "s24", arg: 5, scope: !4173, file: !4127, line: 132, type: !28)
!4181 = !DILocalVariable(name: "s25", arg: 6, scope: !4173, file: !4127, line: 132, type: !28)
!4182 = !DILocalVariable(name: "s26", arg: 7, scope: !4173, file: !4127, line: 132, type: !28)
!4183 = !DILocalVariable(name: "s27", arg: 8, scope: !4173, file: !4127, line: 132, type: !28)
!4184 = !DILocalVariable(name: "s28", arg: 9, scope: !4173, file: !4127, line: 132, type: !28)
!4185 = !DILocation(line: 132, column: 41, scope: !4173, inlinedAt: !4186)
!4186 = distinct !DILocation(line: 153, column: 16, scope: !4187, inlinedAt: !4164)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !4127, line: 150, column: 11)
!4188 = distinct !DILexicalBlock(scope: !4171, file: !4127, line: 149, column: 5)
!4189 = !DILocation(line: 132, column: 100, scope: !4173, inlinedAt: !4186)
!4190 = !DILocation(line: 132, column: 110, scope: !4173, inlinedAt: !4186)
!4191 = !DILocation(line: 134, column: 7, scope: !4192, inlinedAt: !4186)
!4192 = !DILexicalBlockFile(scope: !4193, file: !4127, discriminator: 1)
!4193 = distinct !DILexicalBlock(scope: !4173, file: !4127, line: 134, column: 7)
!4194 = !DILocalVariable(name: "s2", arg: 2, scope: !4195, file: !4127, line: 118, type: !38)
!4195 = distinct !DISubprogram(name: "strcaseeq3", scope: !4127, file: !4127, line: 118, type: !4196, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!73, !38, !38, !28, !28, !28, !28, !28, !28}
!4198 = !{!4199, !4194, !4200, !4201, !4202, !4203, !4204, !4205}
!4199 = !DILocalVariable(name: "s1", arg: 1, scope: !4195, file: !4127, line: 118, type: !38)
!4200 = !DILocalVariable(name: "s23", arg: 3, scope: !4195, file: !4127, line: 118, type: !28)
!4201 = !DILocalVariable(name: "s24", arg: 4, scope: !4195, file: !4127, line: 118, type: !28)
!4202 = !DILocalVariable(name: "s25", arg: 5, scope: !4195, file: !4127, line: 118, type: !28)
!4203 = !DILocalVariable(name: "s26", arg: 6, scope: !4195, file: !4127, line: 118, type: !28)
!4204 = !DILocalVariable(name: "s27", arg: 7, scope: !4195, file: !4127, line: 118, type: !28)
!4205 = !DILocalVariable(name: "s28", arg: 8, scope: !4195, file: !4127, line: 118, type: !28)
!4206 = !DILocation(line: 118, column: 41, scope: !4195, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 139, column: 16, scope: !4208, inlinedAt: !4186)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !4127, line: 136, column: 11)
!4209 = distinct !DILexicalBlock(scope: !4193, file: !4127, line: 135, column: 5)
!4210 = !DILocation(line: 118, column: 90, scope: !4195, inlinedAt: !4207)
!4211 = !DILocation(line: 118, column: 100, scope: !4195, inlinedAt: !4207)
!4212 = !DILocation(line: 120, column: 7, scope: !4213, inlinedAt: !4207)
!4213 = !DILexicalBlockFile(scope: !4214, file: !4127, discriminator: 2)
!4214 = distinct !DILexicalBlock(scope: !4195, file: !4127, line: 120, column: 7)
!4215 = !DILocation(line: 120, column: 7, scope: !4216, inlinedAt: !4207)
!4216 = !DILexicalBlockFile(scope: !4195, file: !4127, discriminator: 2)
!4217 = !DILocalVariable(name: "s2", arg: 2, scope: !4218, file: !4127, line: 104, type: !38)
!4218 = distinct !DISubprogram(name: "strcaseeq4", scope: !4127, file: !4127, line: 104, type: !4219, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!73, !38, !38, !28, !28, !28, !28, !28}
!4221 = !{!4222, !4217, !4223, !4224, !4225, !4226, !4227}
!4222 = !DILocalVariable(name: "s1", arg: 1, scope: !4218, file: !4127, line: 104, type: !38)
!4223 = !DILocalVariable(name: "s24", arg: 3, scope: !4218, file: !4127, line: 104, type: !28)
!4224 = !DILocalVariable(name: "s25", arg: 4, scope: !4218, file: !4127, line: 104, type: !28)
!4225 = !DILocalVariable(name: "s26", arg: 5, scope: !4218, file: !4127, line: 104, type: !28)
!4226 = !DILocalVariable(name: "s27", arg: 6, scope: !4218, file: !4127, line: 104, type: !28)
!4227 = !DILocalVariable(name: "s28", arg: 7, scope: !4218, file: !4127, line: 104, type: !28)
!4228 = !DILocation(line: 104, column: 41, scope: !4218, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 125, column: 16, scope: !4230, inlinedAt: !4207)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !4127, line: 122, column: 11)
!4231 = distinct !DILexicalBlock(scope: !4214, file: !4127, line: 121, column: 5)
!4232 = !DILocation(line: 104, column: 80, scope: !4218, inlinedAt: !4229)
!4233 = !DILocation(line: 104, column: 90, scope: !4218, inlinedAt: !4229)
!4234 = !DILocation(line: 106, column: 7, scope: !4235, inlinedAt: !4229)
!4235 = !DILexicalBlockFile(scope: !4236, file: !4127, discriminator: 2)
!4236 = distinct !DILexicalBlock(scope: !4218, file: !4127, line: 106, column: 7)
!4237 = !DILocation(line: 106, column: 7, scope: !4238, inlinedAt: !4229)
!4238 = !DILexicalBlockFile(scope: !4218, file: !4127, discriminator: 2)
!4239 = !DILocalVariable(name: "s2", arg: 2, scope: !4240, file: !4127, line: 90, type: !38)
!4240 = distinct !DISubprogram(name: "strcaseeq5", scope: !4127, file: !4127, line: 90, type: !4241, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!73, !38, !38, !28, !28, !28, !28}
!4243 = !{!4244, !4239, !4245, !4246, !4247, !4248}
!4244 = !DILocalVariable(name: "s1", arg: 1, scope: !4240, file: !4127, line: 90, type: !38)
!4245 = !DILocalVariable(name: "s25", arg: 3, scope: !4240, file: !4127, line: 90, type: !28)
!4246 = !DILocalVariable(name: "s26", arg: 4, scope: !4240, file: !4127, line: 90, type: !28)
!4247 = !DILocalVariable(name: "s27", arg: 5, scope: !4240, file: !4127, line: 90, type: !28)
!4248 = !DILocalVariable(name: "s28", arg: 6, scope: !4240, file: !4127, line: 90, type: !28)
!4249 = !DILocation(line: 90, column: 41, scope: !4240, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 111, column: 16, scope: !4251, inlinedAt: !4229)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !4127, line: 108, column: 11)
!4252 = distinct !DILexicalBlock(scope: !4236, file: !4127, line: 107, column: 5)
!4253 = !DILocation(line: 90, column: 70, scope: !4240, inlinedAt: !4250)
!4254 = !DILocation(line: 90, column: 80, scope: !4240, inlinedAt: !4250)
!4255 = !DILocation(line: 92, column: 7, scope: !4256, inlinedAt: !4250)
!4256 = !DILexicalBlockFile(scope: !4257, file: !4127, discriminator: 2)
!4257 = distinct !DILexicalBlock(scope: !4240, file: !4127, line: 92, column: 7)
!4258 = !DILocation(line: 92, column: 7, scope: !4259, inlinedAt: !4250)
!4259 = !DILexicalBlockFile(scope: !4240, file: !4127, discriminator: 2)
!4260 = !DILocation(line: 227, column: 12, scope: !4143)
!4261 = !DILocation(line: 227, column: 21, scope: !4143)
!4262 = !DILocation(line: 227, column: 5, scope: !4143)
!4263 = !DILocation(line: 146, column: 41, scope: !4150, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 167, column: 16, scope: !4165, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 228, column: 7, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4108, file: !165, line: 228, column: 7)
!4267 = !DILocation(line: 146, column: 110, scope: !4150, inlinedAt: !4264)
!4268 = !DILocation(line: 146, column: 120, scope: !4150, inlinedAt: !4264)
!4269 = !DILocation(line: 148, column: 7, scope: !4170, inlinedAt: !4264)
!4270 = !DILocation(line: 132, column: 41, scope: !4173, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 153, column: 16, scope: !4187, inlinedAt: !4264)
!4272 = !DILocation(line: 132, column: 100, scope: !4173, inlinedAt: !4271)
!4273 = !DILocation(line: 132, column: 110, scope: !4173, inlinedAt: !4271)
!4274 = !DILocation(line: 134, column: 7, scope: !4275, inlinedAt: !4271)
!4275 = !DILexicalBlockFile(scope: !4193, file: !4127, discriminator: 2)
!4276 = !DILocation(line: 134, column: 7, scope: !4277, inlinedAt: !4271)
!4277 = !DILexicalBlockFile(scope: !4173, file: !4127, discriminator: 2)
!4278 = !DILocation(line: 118, column: 41, scope: !4195, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 139, column: 16, scope: !4208, inlinedAt: !4271)
!4280 = !DILocation(line: 118, column: 90, scope: !4195, inlinedAt: !4279)
!4281 = !DILocation(line: 118, column: 100, scope: !4195, inlinedAt: !4279)
!4282 = !DILocation(line: 120, column: 7, scope: !4213, inlinedAt: !4279)
!4283 = !DILocation(line: 120, column: 7, scope: !4216, inlinedAt: !4279)
!4284 = !DILocation(line: 104, column: 41, scope: !4218, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 125, column: 16, scope: !4230, inlinedAt: !4279)
!4286 = !DILocation(line: 104, column: 80, scope: !4218, inlinedAt: !4285)
!4287 = !DILocation(line: 104, column: 90, scope: !4218, inlinedAt: !4285)
!4288 = !DILocation(line: 106, column: 7, scope: !4235, inlinedAt: !4285)
!4289 = !DILocation(line: 106, column: 7, scope: !4238, inlinedAt: !4285)
!4290 = !DILocation(line: 90, column: 41, scope: !4240, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 111, column: 16, scope: !4251, inlinedAt: !4285)
!4292 = !DILocation(line: 90, column: 70, scope: !4240, inlinedAt: !4291)
!4293 = !DILocation(line: 90, column: 80, scope: !4240, inlinedAt: !4291)
!4294 = !DILocation(line: 92, column: 7, scope: !4256, inlinedAt: !4291)
!4295 = !DILocation(line: 92, column: 7, scope: !4259, inlinedAt: !4291)
!4296 = !DILocalVariable(name: "s2", arg: 2, scope: !4297, file: !4127, line: 76, type: !38)
!4297 = distinct !DISubprogram(name: "strcaseeq6", scope: !4127, file: !4127, line: 76, type: !4298, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!73, !38, !38, !28, !28, !28}
!4300 = !{!4301, !4296, !4302, !4303, !4304}
!4301 = !DILocalVariable(name: "s1", arg: 1, scope: !4297, file: !4127, line: 76, type: !38)
!4302 = !DILocalVariable(name: "s26", arg: 3, scope: !4297, file: !4127, line: 76, type: !28)
!4303 = !DILocalVariable(name: "s27", arg: 4, scope: !4297, file: !4127, line: 76, type: !28)
!4304 = !DILocalVariable(name: "s28", arg: 5, scope: !4297, file: !4127, line: 76, type: !28)
!4305 = !DILocation(line: 76, column: 41, scope: !4297, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 97, column: 16, scope: !4307, inlinedAt: !4291)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !4127, line: 94, column: 11)
!4308 = distinct !DILexicalBlock(scope: !4257, file: !4127, line: 93, column: 5)
!4309 = !DILocation(line: 76, column: 60, scope: !4297, inlinedAt: !4306)
!4310 = !DILocation(line: 76, column: 70, scope: !4297, inlinedAt: !4306)
!4311 = !DILocation(line: 78, column: 7, scope: !4312, inlinedAt: !4306)
!4312 = !DILexicalBlockFile(scope: !4313, file: !4127, discriminator: 2)
!4313 = distinct !DILexicalBlock(scope: !4297, file: !4127, line: 78, column: 7)
!4314 = !DILocation(line: 78, column: 7, scope: !4315, inlinedAt: !4306)
!4315 = !DILexicalBlockFile(scope: !4297, file: !4127, discriminator: 2)
!4316 = !DILocalVariable(name: "s2", arg: 2, scope: !4317, file: !4127, line: 62, type: !38)
!4317 = distinct !DISubprogram(name: "strcaseeq7", scope: !4127, file: !4127, line: 62, type: !4318, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4320)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!73, !38, !38, !28, !28}
!4320 = !{!4321, !4316, !4322, !4323}
!4321 = !DILocalVariable(name: "s1", arg: 1, scope: !4317, file: !4127, line: 62, type: !38)
!4322 = !DILocalVariable(name: "s27", arg: 3, scope: !4317, file: !4127, line: 62, type: !28)
!4323 = !DILocalVariable(name: "s28", arg: 4, scope: !4317, file: !4127, line: 62, type: !28)
!4324 = !DILocation(line: 62, column: 41, scope: !4317, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 83, column: 16, scope: !4326, inlinedAt: !4306)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !4127, line: 80, column: 11)
!4327 = distinct !DILexicalBlock(scope: !4313, file: !4127, line: 79, column: 5)
!4328 = !DILocation(line: 62, column: 50, scope: !4317, inlinedAt: !4325)
!4329 = !DILocation(line: 62, column: 60, scope: !4317, inlinedAt: !4325)
!4330 = !DILocation(line: 64, column: 7, scope: !4331, inlinedAt: !4325)
!4331 = !DILexicalBlockFile(scope: !4332, file: !4127, discriminator: 2)
!4332 = distinct !DILexicalBlock(scope: !4317, file: !4127, line: 64, column: 7)
!4333 = !DILocation(line: 228, column: 7, scope: !4108)
!4334 = !DILocation(line: 229, column: 12, scope: !4266)
!4335 = !DILocation(line: 229, column: 21, scope: !4266)
!4336 = !DILocation(line: 229, column: 5, scope: !4266)
!4337 = !DILocation(line: 231, column: 13, scope: !4108)
!4338 = !DILocation(line: 231, column: 11, scope: !4108)
!4339 = !DILocation(line: 231, column: 3, scope: !4108)
!4340 = !DILocation(line: 232, column: 1, scope: !4108)
!4341 = distinct !DISubprogram(name: "quotearg_alloc", scope: !165, file: !165, line: 791, type: !4342, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4344)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!27, !38, !30, !3183}
!4344 = !{!4345, !4346, !4347}
!4345 = !DILocalVariable(name: "arg", arg: 1, scope: !4341, file: !165, line: 791, type: !38)
!4346 = !DILocalVariable(name: "argsize", arg: 2, scope: !4341, file: !165, line: 791, type: !30)
!4347 = !DILocalVariable(name: "o", arg: 3, scope: !4341, file: !165, line: 792, type: !3183)
!4348 = !DILocation(line: 791, column: 29, scope: !4341)
!4349 = !DILocation(line: 791, column: 41, scope: !4341)
!4350 = !DILocation(line: 792, column: 47, scope: !4341)
!4351 = !DILocalVariable(name: "arg", arg: 1, scope: !4352, file: !165, line: 804, type: !38)
!4352 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !165, file: !165, line: 804, type: !4353, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4355)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!27, !38, !30, !587, !3183}
!4355 = !{!4351, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363}
!4356 = !DILocalVariable(name: "argsize", arg: 2, scope: !4352, file: !165, line: 804, type: !30)
!4357 = !DILocalVariable(name: "size", arg: 3, scope: !4352, file: !165, line: 804, type: !587)
!4358 = !DILocalVariable(name: "o", arg: 4, scope: !4352, file: !165, line: 805, type: !3183)
!4359 = !DILocalVariable(name: "p", scope: !4352, file: !165, line: 807, type: !3183)
!4360 = !DILocalVariable(name: "e", scope: !4352, file: !165, line: 808, type: !73)
!4361 = !DILocalVariable(name: "flags", scope: !4352, file: !165, line: 810, type: !73)
!4362 = !DILocalVariable(name: "bufsize", scope: !4352, file: !165, line: 811, type: !30)
!4363 = !DILocalVariable(name: "buf", scope: !4352, file: !165, line: 815, type: !27)
!4364 = !DILocation(line: 804, column: 33, scope: !4352, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 794, column: 10, scope: !4341)
!4366 = !DILocation(line: 804, column: 45, scope: !4352, inlinedAt: !4365)
!4367 = !DILocation(line: 804, column: 62, scope: !4352, inlinedAt: !4365)
!4368 = !DILocation(line: 805, column: 51, scope: !4352, inlinedAt: !4365)
!4369 = !DILocation(line: 807, column: 37, scope: !4352, inlinedAt: !4365)
!4370 = !DILocation(line: 807, column: 33, scope: !4352, inlinedAt: !4365)
!4371 = !DILocation(line: 808, column: 11, scope: !4352, inlinedAt: !4365)
!4372 = !DILocation(line: 808, column: 7, scope: !4352, inlinedAt: !4365)
!4373 = !DILocation(line: 810, column: 18, scope: !4352, inlinedAt: !4365)
!4374 = !DILocation(line: 810, column: 24, scope: !4352, inlinedAt: !4365)
!4375 = !DILocation(line: 810, column: 7, scope: !4352, inlinedAt: !4365)
!4376 = !DILocation(line: 811, column: 69, scope: !4352, inlinedAt: !4365)
!4377 = !DILocation(line: 812, column: 53, scope: !4352, inlinedAt: !4365)
!4378 = !DILocation(line: 813, column: 49, scope: !4352, inlinedAt: !4365)
!4379 = !DILocation(line: 814, column: 49, scope: !4352, inlinedAt: !4365)
!4380 = !DILocation(line: 811, column: 20, scope: !4352, inlinedAt: !4365)
!4381 = !DILocation(line: 814, column: 62, scope: !4352, inlinedAt: !4365)
!4382 = !DILocation(line: 811, column: 10, scope: !4352, inlinedAt: !4365)
!4383 = !DILocalVariable(name: "n", arg: 1, scope: !4384, file: !583, line: 220, type: !30)
!4384 = distinct !DISubprogram(name: "xcharalloc", scope: !583, file: !583, line: 220, type: !4385, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4387)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!27, !30}
!4387 = !{!4383}
!4388 = !DILocation(line: 220, column: 20, scope: !4384, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 815, column: 15, scope: !4352, inlinedAt: !4365)
!4390 = !DILocation(line: 222, column: 10, scope: !4384, inlinedAt: !4389)
!4391 = !DILocation(line: 815, column: 9, scope: !4352, inlinedAt: !4365)
!4392 = !DILocation(line: 816, column: 60, scope: !4352, inlinedAt: !4365)
!4393 = !DILocation(line: 818, column: 32, scope: !4352, inlinedAt: !4365)
!4394 = !DILocation(line: 818, column: 47, scope: !4352, inlinedAt: !4365)
!4395 = !DILocation(line: 816, column: 3, scope: !4352, inlinedAt: !4365)
!4396 = !DILocation(line: 819, column: 9, scope: !4352, inlinedAt: !4365)
!4397 = !DILocation(line: 794, column: 3, scope: !4341)
!4398 = !DILocation(line: 804, column: 33, scope: !4352)
!4399 = !DILocation(line: 804, column: 45, scope: !4352)
!4400 = !DILocation(line: 804, column: 62, scope: !4352)
!4401 = !DILocation(line: 805, column: 51, scope: !4352)
!4402 = !DILocation(line: 807, column: 37, scope: !4352)
!4403 = !DILocation(line: 807, column: 33, scope: !4352)
!4404 = !DILocation(line: 808, column: 11, scope: !4352)
!4405 = !DILocation(line: 808, column: 7, scope: !4352)
!4406 = !DILocation(line: 810, column: 18, scope: !4352)
!4407 = !DILocation(line: 810, column: 27, scope: !4352)
!4408 = !DILocation(line: 810, column: 24, scope: !4352)
!4409 = !DILocation(line: 810, column: 7, scope: !4352)
!4410 = !DILocation(line: 811, column: 69, scope: !4352)
!4411 = !DILocation(line: 812, column: 53, scope: !4352)
!4412 = !DILocation(line: 813, column: 49, scope: !4352)
!4413 = !DILocation(line: 814, column: 49, scope: !4352)
!4414 = !DILocation(line: 811, column: 20, scope: !4352)
!4415 = !DILocation(line: 814, column: 62, scope: !4352)
!4416 = !DILocation(line: 811, column: 10, scope: !4352)
!4417 = !DILocation(line: 220, column: 20, scope: !4384, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 815, column: 15, scope: !4352)
!4419 = !DILocation(line: 222, column: 10, scope: !4384, inlinedAt: !4418)
!4420 = !DILocation(line: 815, column: 9, scope: !4352)
!4421 = !DILocation(line: 816, column: 60, scope: !4352)
!4422 = !DILocation(line: 818, column: 32, scope: !4352)
!4423 = !DILocation(line: 818, column: 47, scope: !4352)
!4424 = !DILocation(line: 816, column: 3, scope: !4352)
!4425 = !DILocation(line: 819, column: 9, scope: !4352)
!4426 = !DILocation(line: 820, column: 7, scope: !4352)
!4427 = !DILocation(line: 821, column: 11, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4352, file: !165, line: 820, column: 7)
!4429 = !DILocation(line: 821, column: 5, scope: !4428)
!4430 = !DILocation(line: 822, column: 3, scope: !4352)
!4431 = distinct !DISubprogram(name: "quotearg_free", scope: !165, file: !165, line: 840, type: !1306, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4432)
!4432 = !{!4433, !4434}
!4433 = !DILocalVariable(name: "sv", scope: !4431, file: !165, line: 842, type: !192)
!4434 = !DILocalVariable(name: "i", scope: !4431, file: !165, line: 843, type: !73)
!4435 = !DILocation(line: 842, column: 24, scope: !4431)
!4436 = !DILocation(line: 842, column: 19, scope: !4431)
!4437 = !DILocation(line: 843, column: 7, scope: !4431)
!4438 = !DILocation(line: 844, column: 19, scope: !4439)
!4439 = !DILexicalBlockFile(scope: !4440, file: !165, discriminator: 1)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !165, line: 844, column: 3)
!4441 = distinct !DILexicalBlock(scope: !4431, file: !165, line: 844, column: 3)
!4442 = !DILocation(line: 844, column: 17, scope: !4439)
!4443 = !DILocation(line: 844, column: 3, scope: !4444)
!4444 = !DILexicalBlockFile(scope: !4441, file: !165, discriminator: 1)
!4445 = !DILocation(line: 845, column: 17, scope: !4440)
!4446 = !{!4447, !644, i64 8}
!4447 = !{!"slotvec", !792, i64 0, !644, i64 8}
!4448 = !DILocation(line: 845, column: 5, scope: !4440)
!4449 = !DILocation(line: 844, column: 28, scope: !4450)
!4450 = !DILexicalBlockFile(scope: !4440, file: !165, discriminator: 2)
!4451 = distinct !{!4451, !4452, !4453}
!4452 = !DILocation(line: 844, column: 3, scope: !4441)
!4453 = !DILocation(line: 845, column: 20, scope: !4441)
!4454 = !DILocation(line: 846, column: 13, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4431, file: !165, line: 846, column: 7)
!4456 = !DILocation(line: 846, column: 17, scope: !4455)
!4457 = !DILocation(line: 846, column: 7, scope: !4431)
!4458 = !DILocation(line: 848, column: 7, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4455, file: !165, line: 847, column: 5)
!4460 = !DILocation(line: 849, column: 21, scope: !4459)
!4461 = !{!4447, !792, i64 0}
!4462 = !DILocation(line: 850, column: 20, scope: !4459)
!4463 = !DILocation(line: 851, column: 5, scope: !4459)
!4464 = !DILocation(line: 852, column: 10, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4431, file: !165, line: 852, column: 7)
!4466 = !DILocation(line: 852, column: 7, scope: !4431)
!4467 = !DILocation(line: 854, column: 13, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4465, file: !165, line: 853, column: 5)
!4469 = !DILocation(line: 854, column: 7, scope: !4468)
!4470 = !DILocation(line: 855, column: 15, scope: !4468)
!4471 = !DILocation(line: 856, column: 5, scope: !4468)
!4472 = !DILocation(line: 857, column: 10, scope: !4431)
!4473 = !DILocation(line: 858, column: 1, scope: !4431)
!4474 = distinct !DISubprogram(name: "quotearg_n", scope: !165, file: !165, line: 922, type: !4475, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4477)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!27, !73, !38}
!4477 = !{!4478, !4479}
!4478 = !DILocalVariable(name: "n", arg: 1, scope: !4474, file: !165, line: 922, type: !73)
!4479 = !DILocalVariable(name: "arg", arg: 2, scope: !4474, file: !165, line: 922, type: !38)
!4480 = !DILocation(line: 922, column: 17, scope: !4474)
!4481 = !DILocation(line: 922, column: 32, scope: !4474)
!4482 = !DILocation(line: 924, column: 10, scope: !4474)
!4483 = !DILocation(line: 924, column: 3, scope: !4474)
!4484 = distinct !DISubprogram(name: "quotearg_n_options", scope: !165, file: !165, line: 869, type: !4485, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!27, !73, !38, !30, !3183}
!4487 = !{!4488, !4489, !4490, !4491, !4492, !4493, !4494, !4497, !4499, !4500, !4501}
!4488 = !DILocalVariable(name: "n", arg: 1, scope: !4484, file: !165, line: 869, type: !73)
!4489 = !DILocalVariable(name: "arg", arg: 2, scope: !4484, file: !165, line: 869, type: !38)
!4490 = !DILocalVariable(name: "argsize", arg: 3, scope: !4484, file: !165, line: 869, type: !30)
!4491 = !DILocalVariable(name: "options", arg: 4, scope: !4484, file: !165, line: 870, type: !3183)
!4492 = !DILocalVariable(name: "e", scope: !4484, file: !165, line: 872, type: !73)
!4493 = !DILocalVariable(name: "sv", scope: !4484, file: !165, line: 874, type: !192)
!4494 = !DILocalVariable(name: "preallocated", scope: !4495, file: !165, line: 881, type: !43)
!4495 = distinct !DILexicalBlock(scope: !4496, file: !165, line: 880, column: 5)
!4496 = distinct !DILexicalBlock(scope: !4484, file: !165, line: 879, column: 7)
!4497 = !DILocalVariable(name: "size", scope: !4498, file: !165, line: 894, type: !30)
!4498 = distinct !DILexicalBlock(scope: !4484, file: !165, line: 893, column: 3)
!4499 = !DILocalVariable(name: "val", scope: !4498, file: !165, line: 895, type: !27)
!4500 = !DILocalVariable(name: "flags", scope: !4498, file: !165, line: 897, type: !73)
!4501 = !DILocalVariable(name: "qsize", scope: !4498, file: !165, line: 898, type: !30)
!4502 = !DILocation(line: 869, column: 25, scope: !4484)
!4503 = !DILocation(line: 869, column: 40, scope: !4484)
!4504 = !DILocation(line: 869, column: 52, scope: !4484)
!4505 = !DILocation(line: 870, column: 51, scope: !4484)
!4506 = !DILocation(line: 872, column: 11, scope: !4484)
!4507 = !DILocation(line: 872, column: 7, scope: !4484)
!4508 = !DILocation(line: 874, column: 24, scope: !4484)
!4509 = !DILocation(line: 874, column: 19, scope: !4484)
!4510 = !DILocation(line: 876, column: 9, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4484, file: !165, line: 876, column: 7)
!4512 = !DILocation(line: 876, column: 7, scope: !4484)
!4513 = !DILocation(line: 877, column: 5, scope: !4511)
!4514 = !DILocation(line: 879, column: 7, scope: !4496)
!4515 = !DILocation(line: 879, column: 14, scope: !4496)
!4516 = !DILocation(line: 879, column: 7, scope: !4484)
!4517 = !DILocation(line: 881, column: 31, scope: !4495)
!4518 = !DILocation(line: 883, column: 67, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4495, file: !165, line: 883, column: 11)
!4520 = !DILocation(line: 883, column: 11, scope: !4495)
!4521 = !DILocation(line: 884, column: 9, scope: !4519)
!4522 = !DILocation(line: 886, column: 32, scope: !4523)
!4523 = !DILexicalBlockFile(scope: !4495, file: !165, discriminator: 3)
!4524 = !DILocation(line: 886, column: 61, scope: !4523)
!4525 = !DILocation(line: 886, column: 58, scope: !4523)
!4526 = !DILocation(line: 886, column: 66, scope: !4523)
!4527 = !DILocation(line: 886, column: 22, scope: !4523)
!4528 = !DILocation(line: 886, column: 15, scope: !4523)
!4529 = !DILocation(line: 887, column: 11, scope: !4495)
!4530 = !DILocation(line: 888, column: 15, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4495, file: !165, line: 887, column: 11)
!4532 = !{i64 0, i64 8, !2432, i64 8, i64 8, !643}
!4533 = !DILocation(line: 888, column: 9, scope: !4531)
!4534 = !DILocation(line: 889, column: 20, scope: !4495)
!4535 = !DILocation(line: 889, column: 18, scope: !4495)
!4536 = !DILocation(line: 889, column: 7, scope: !4495)
!4537 = !DILocation(line: 889, column: 38, scope: !4495)
!4538 = !DILocation(line: 889, column: 31, scope: !4495)
!4539 = !DILocation(line: 889, column: 48, scope: !4495)
!4540 = !DILocation(line: 890, column: 14, scope: !4495)
!4541 = !DILocation(line: 891, column: 5, scope: !4495)
!4542 = !DILocation(line: 894, column: 19, scope: !4498)
!4543 = !DILocation(line: 894, column: 25, scope: !4498)
!4544 = !DILocation(line: 894, column: 12, scope: !4498)
!4545 = !DILocation(line: 895, column: 23, scope: !4498)
!4546 = !DILocation(line: 895, column: 11, scope: !4498)
!4547 = !DILocation(line: 897, column: 26, scope: !4498)
!4548 = !DILocation(line: 897, column: 32, scope: !4498)
!4549 = !DILocation(line: 897, column: 9, scope: !4498)
!4550 = !DILocation(line: 899, column: 55, scope: !4498)
!4551 = !DILocation(line: 900, column: 46, scope: !4498)
!4552 = !DILocation(line: 901, column: 55, scope: !4498)
!4553 = !DILocation(line: 902, column: 55, scope: !4498)
!4554 = !DILocation(line: 898, column: 20, scope: !4498)
!4555 = !DILocation(line: 898, column: 12, scope: !4498)
!4556 = !DILocation(line: 904, column: 14, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4498, file: !165, line: 904, column: 9)
!4558 = !DILocation(line: 904, column: 9, scope: !4498)
!4559 = !DILocation(line: 906, column: 35, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4557, file: !165, line: 905, column: 7)
!4561 = !DILocation(line: 906, column: 20, scope: !4560)
!4562 = !DILocation(line: 907, column: 17, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4560, file: !165, line: 907, column: 13)
!4564 = !DILocation(line: 907, column: 13, scope: !4560)
!4565 = !DILocation(line: 908, column: 11, scope: !4563)
!4566 = !DILocation(line: 220, column: 20, scope: !4384, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 909, column: 27, scope: !4560)
!4568 = !DILocation(line: 222, column: 10, scope: !4384, inlinedAt: !4567)
!4569 = !DILocation(line: 909, column: 19, scope: !4560)
!4570 = !DILocation(line: 910, column: 69, scope: !4560)
!4571 = !DILocation(line: 912, column: 44, scope: !4560)
!4572 = !DILocation(line: 913, column: 44, scope: !4560)
!4573 = !DILocation(line: 910, column: 9, scope: !4560)
!4574 = !DILocation(line: 914, column: 7, scope: !4560)
!4575 = !DILocation(line: 916, column: 11, scope: !4498)
!4576 = !DILocation(line: 917, column: 5, scope: !4498)
!4577 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !165, file: !165, line: 928, type: !4578, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4580)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!27, !73, !38, !30}
!4580 = !{!4581, !4582, !4583}
!4581 = !DILocalVariable(name: "n", arg: 1, scope: !4577, file: !165, line: 928, type: !73)
!4582 = !DILocalVariable(name: "arg", arg: 2, scope: !4577, file: !165, line: 928, type: !38)
!4583 = !DILocalVariable(name: "argsize", arg: 3, scope: !4577, file: !165, line: 928, type: !30)
!4584 = !DILocation(line: 928, column: 21, scope: !4577)
!4585 = !DILocation(line: 928, column: 36, scope: !4577)
!4586 = !DILocation(line: 928, column: 48, scope: !4577)
!4587 = !DILocation(line: 930, column: 10, scope: !4577)
!4588 = !DILocation(line: 930, column: 3, scope: !4577)
!4589 = distinct !DISubprogram(name: "quotearg", scope: !165, file: !165, line: 934, type: !4590, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4592)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!27, !38}
!4592 = !{!4593}
!4593 = !DILocalVariable(name: "arg", arg: 1, scope: !4589, file: !165, line: 934, type: !38)
!4594 = !DILocation(line: 934, column: 23, scope: !4589)
!4595 = !DILocation(line: 922, column: 17, scope: !4474, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 936, column: 10, scope: !4589)
!4597 = !DILocation(line: 922, column: 32, scope: !4474, inlinedAt: !4596)
!4598 = !DILocation(line: 924, column: 10, scope: !4474, inlinedAt: !4596)
!4599 = !DILocation(line: 936, column: 3, scope: !4589)
!4600 = distinct !DISubprogram(name: "quotearg_mem", scope: !165, file: !165, line: 940, type: !820, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4601)
!4601 = !{!4602, !4603}
!4602 = !DILocalVariable(name: "arg", arg: 1, scope: !4600, file: !165, line: 940, type: !38)
!4603 = !DILocalVariable(name: "argsize", arg: 2, scope: !4600, file: !165, line: 940, type: !30)
!4604 = !DILocation(line: 940, column: 27, scope: !4600)
!4605 = !DILocation(line: 940, column: 39, scope: !4600)
!4606 = !DILocation(line: 928, column: 21, scope: !4577, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 942, column: 10, scope: !4600)
!4608 = !DILocation(line: 928, column: 36, scope: !4577, inlinedAt: !4607)
!4609 = !DILocation(line: 928, column: 48, scope: !4577, inlinedAt: !4607)
!4610 = !DILocation(line: 930, column: 10, scope: !4577, inlinedAt: !4607)
!4611 = !DILocation(line: 942, column: 3, scope: !4600)
!4612 = distinct !DISubprogram(name: "quotearg_n_style", scope: !165, file: !165, line: 946, type: !4613, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4615)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!27, !73, !12, !38}
!4615 = !{!4616, !4617, !4618, !4619}
!4616 = !DILocalVariable(name: "n", arg: 1, scope: !4612, file: !165, line: 946, type: !73)
!4617 = !DILocalVariable(name: "s", arg: 2, scope: !4612, file: !165, line: 946, type: !12)
!4618 = !DILocalVariable(name: "arg", arg: 3, scope: !4612, file: !165, line: 946, type: !38)
!4619 = !DILocalVariable(name: "o", scope: !4612, file: !165, line: 948, type: !3184)
!4620 = !DILocalVariable(name: "o", scope: !4621, file: !165, line: 187, type: !172)
!4621 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !165, file: !165, line: 185, type: !4622, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!172, !12}
!4624 = !{!4625, !4620}
!4625 = !DILocalVariable(name: "style", arg: 1, scope: !4621, file: !165, line: 185, type: !12)
!4626 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4627 = !DILocation(line: 187, column: 26, scope: !4621, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 948, column: 36, scope: !4612)
!4629 = !DILocation(line: 946, column: 23, scope: !4612)
!4630 = !DILocation(line: 946, column: 45, scope: !4612)
!4631 = !DILocation(line: 946, column: 60, scope: !4612)
!4632 = !DILocation(line: 948, column: 3, scope: !4612)
!4633 = !DILocation(line: 948, column: 32, scope: !4612)
!4634 = !DILocation(line: 185, column: 48, scope: !4621, inlinedAt: !4628)
!4635 = !DILocation(line: 187, column: 3, scope: !4621, inlinedAt: !4628)
!4636 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4637 = !DILocation(line: 188, column: 13, scope: !4638, inlinedAt: !4628)
!4638 = distinct !DILexicalBlock(scope: !4621, file: !165, line: 188, column: 7)
!4639 = !DILocation(line: 188, column: 7, scope: !4621, inlinedAt: !4628)
!4640 = !DILocation(line: 189, column: 5, scope: !4638, inlinedAt: !4628)
!4641 = !{!4642}
!4642 = distinct !{!4642, !4643, !"quoting_options_from_style: argument 0"}
!4643 = distinct !{!4643, !"quoting_options_from_style"}
!4644 = !DILocation(line: 191, column: 10, scope: !4621, inlinedAt: !4628)
!4645 = !DILocation(line: 192, column: 1, scope: !4621, inlinedAt: !4628)
!4646 = !DILocation(line: 949, column: 10, scope: !4612)
!4647 = !DILocation(line: 950, column: 1, scope: !4612)
!4648 = !DILocation(line: 949, column: 3, scope: !4612)
!4649 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !165, file: !165, line: 953, type: !4650, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4652)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!27, !73, !12, !38, !30}
!4652 = !{!4653, !4654, !4655, !4656, !4657}
!4653 = !DILocalVariable(name: "n", arg: 1, scope: !4649, file: !165, line: 953, type: !73)
!4654 = !DILocalVariable(name: "s", arg: 2, scope: !4649, file: !165, line: 953, type: !12)
!4655 = !DILocalVariable(name: "arg", arg: 3, scope: !4649, file: !165, line: 954, type: !38)
!4656 = !DILocalVariable(name: "argsize", arg: 4, scope: !4649, file: !165, line: 954, type: !30)
!4657 = !DILocalVariable(name: "o", scope: !4649, file: !165, line: 956, type: !3184)
!4658 = !DILocation(line: 187, column: 26, scope: !4621, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 956, column: 36, scope: !4649)
!4660 = !DILocation(line: 953, column: 27, scope: !4649)
!4661 = !DILocation(line: 953, column: 49, scope: !4649)
!4662 = !DILocation(line: 954, column: 35, scope: !4649)
!4663 = !DILocation(line: 954, column: 47, scope: !4649)
!4664 = !DILocation(line: 956, column: 3, scope: !4649)
!4665 = !DILocation(line: 956, column: 32, scope: !4649)
!4666 = !DILocation(line: 185, column: 48, scope: !4621, inlinedAt: !4659)
!4667 = !DILocation(line: 187, column: 3, scope: !4621, inlinedAt: !4659)
!4668 = !DILocation(line: 188, column: 13, scope: !4638, inlinedAt: !4659)
!4669 = !DILocation(line: 188, column: 7, scope: !4621, inlinedAt: !4659)
!4670 = !DILocation(line: 189, column: 5, scope: !4638, inlinedAt: !4659)
!4671 = !{!4672}
!4672 = distinct !{!4672, !4673, !"quoting_options_from_style: argument 0"}
!4673 = distinct !{!4673, !"quoting_options_from_style"}
!4674 = !DILocation(line: 191, column: 10, scope: !4621, inlinedAt: !4659)
!4675 = !DILocation(line: 192, column: 1, scope: !4621, inlinedAt: !4659)
!4676 = !DILocation(line: 957, column: 10, scope: !4649)
!4677 = !DILocation(line: 958, column: 1, scope: !4649)
!4678 = !DILocation(line: 957, column: 3, scope: !4649)
!4679 = distinct !DISubprogram(name: "quotearg_style", scope: !165, file: !165, line: 961, type: !4680, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4682)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!27, !12, !38}
!4682 = !{!4683, !4684}
!4683 = !DILocalVariable(name: "s", arg: 1, scope: !4679, file: !165, line: 961, type: !12)
!4684 = !DILocalVariable(name: "arg", arg: 2, scope: !4679, file: !165, line: 961, type: !38)
!4685 = !DILocation(line: 187, column: 26, scope: !4621, inlinedAt: !4686)
!4686 = distinct !DILocation(line: 948, column: 36, scope: !4612, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 963, column: 10, scope: !4679)
!4688 = !DILocation(line: 961, column: 36, scope: !4679)
!4689 = !DILocation(line: 961, column: 51, scope: !4679)
!4690 = !DILocation(line: 946, column: 23, scope: !4612, inlinedAt: !4687)
!4691 = !DILocation(line: 946, column: 45, scope: !4612, inlinedAt: !4687)
!4692 = !DILocation(line: 946, column: 60, scope: !4612, inlinedAt: !4687)
!4693 = !DILocation(line: 948, column: 3, scope: !4612, inlinedAt: !4687)
!4694 = !DILocation(line: 948, column: 32, scope: !4612, inlinedAt: !4687)
!4695 = !DILocation(line: 185, column: 48, scope: !4621, inlinedAt: !4686)
!4696 = !DILocation(line: 187, column: 3, scope: !4621, inlinedAt: !4686)
!4697 = !DILocation(line: 188, column: 13, scope: !4638, inlinedAt: !4686)
!4698 = !DILocation(line: 188, column: 7, scope: !4621, inlinedAt: !4686)
!4699 = !DILocation(line: 189, column: 5, scope: !4638, inlinedAt: !4686)
!4700 = !{!4701}
!4701 = distinct !{!4701, !4702, !"quoting_options_from_style: argument 0"}
!4702 = distinct !{!4702, !"quoting_options_from_style"}
!4703 = !DILocation(line: 191, column: 10, scope: !4621, inlinedAt: !4686)
!4704 = !DILocation(line: 192, column: 1, scope: !4621, inlinedAt: !4686)
!4705 = !DILocation(line: 949, column: 10, scope: !4612, inlinedAt: !4687)
!4706 = !DILocation(line: 950, column: 1, scope: !4612, inlinedAt: !4687)
!4707 = !DILocation(line: 963, column: 3, scope: !4679)
!4708 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !165, file: !165, line: 967, type: !4709, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4711)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!27, !12, !38, !30}
!4711 = !{!4712, !4713, !4714}
!4712 = !DILocalVariable(name: "s", arg: 1, scope: !4708, file: !165, line: 967, type: !12)
!4713 = !DILocalVariable(name: "arg", arg: 2, scope: !4708, file: !165, line: 967, type: !38)
!4714 = !DILocalVariable(name: "argsize", arg: 3, scope: !4708, file: !165, line: 967, type: !30)
!4715 = !DILocation(line: 187, column: 26, scope: !4621, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 956, column: 36, scope: !4649, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 969, column: 10, scope: !4708)
!4718 = !DILocation(line: 967, column: 40, scope: !4708)
!4719 = !DILocation(line: 967, column: 55, scope: !4708)
!4720 = !DILocation(line: 967, column: 67, scope: !4708)
!4721 = !DILocation(line: 953, column: 27, scope: !4649, inlinedAt: !4717)
!4722 = !DILocation(line: 953, column: 49, scope: !4649, inlinedAt: !4717)
!4723 = !DILocation(line: 954, column: 35, scope: !4649, inlinedAt: !4717)
!4724 = !DILocation(line: 954, column: 47, scope: !4649, inlinedAt: !4717)
!4725 = !DILocation(line: 956, column: 3, scope: !4649, inlinedAt: !4717)
!4726 = !DILocation(line: 956, column: 32, scope: !4649, inlinedAt: !4717)
!4727 = !DILocation(line: 185, column: 48, scope: !4621, inlinedAt: !4716)
!4728 = !DILocation(line: 187, column: 3, scope: !4621, inlinedAt: !4716)
!4729 = !DILocation(line: 188, column: 13, scope: !4638, inlinedAt: !4716)
!4730 = !DILocation(line: 188, column: 7, scope: !4621, inlinedAt: !4716)
!4731 = !DILocation(line: 189, column: 5, scope: !4638, inlinedAt: !4716)
!4732 = !{!4733}
!4733 = distinct !{!4733, !4734, !"quoting_options_from_style: argument 0"}
!4734 = distinct !{!4734, !"quoting_options_from_style"}
!4735 = !DILocation(line: 191, column: 10, scope: !4621, inlinedAt: !4716)
!4736 = !DILocation(line: 192, column: 1, scope: !4621, inlinedAt: !4716)
!4737 = !DILocation(line: 957, column: 10, scope: !4649, inlinedAt: !4717)
!4738 = !DILocation(line: 958, column: 1, scope: !4649, inlinedAt: !4717)
!4739 = !DILocation(line: 969, column: 3, scope: !4708)
!4740 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !165, file: !165, line: 973, type: !4741, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4743)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!27, !38, !30, !28}
!4743 = !{!4744, !4745, !4746, !4747}
!4744 = !DILocalVariable(name: "arg", arg: 1, scope: !4740, file: !165, line: 973, type: !38)
!4745 = !DILocalVariable(name: "argsize", arg: 2, scope: !4740, file: !165, line: 973, type: !30)
!4746 = !DILocalVariable(name: "ch", arg: 3, scope: !4740, file: !165, line: 973, type: !28)
!4747 = !DILocalVariable(name: "options", scope: !4740, file: !165, line: 975, type: !172)
!4748 = !DILocation(line: 973, column: 32, scope: !4740)
!4749 = !DILocation(line: 973, column: 44, scope: !4740)
!4750 = !DILocation(line: 973, column: 58, scope: !4740)
!4751 = !DILocation(line: 975, column: 3, scope: !4740)
!4752 = !DILocation(line: 976, column: 13, scope: !4740)
!4753 = !{i64 0, i64 4, !800, i64 4, i64 4, !736, i64 8, i64 32, !800, i64 40, i64 8, !643, i64 48, i64 8, !643}
!4754 = !DILocation(line: 975, column: 26, scope: !4740)
!4755 = !DILocation(line: 144, column: 43, scope: !3207, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 977, column: 3, scope: !4740)
!4757 = !DILocation(line: 144, column: 51, scope: !3207, inlinedAt: !4756)
!4758 = !DILocation(line: 144, column: 58, scope: !3207, inlinedAt: !4756)
!4759 = !DILocation(line: 146, column: 17, scope: !3207, inlinedAt: !4756)
!4760 = !DILocation(line: 148, column: 62, scope: !3225, inlinedAt: !4756)
!4761 = !DILocation(line: 148, column: 57, scope: !3225, inlinedAt: !4756)
!4762 = !DILocation(line: 147, column: 17, scope: !3207, inlinedAt: !4756)
!4763 = !DILocation(line: 149, column: 18, scope: !3207, inlinedAt: !4756)
!4764 = !DILocation(line: 149, column: 15, scope: !3207, inlinedAt: !4756)
!4765 = !DILocation(line: 149, column: 7, scope: !3207, inlinedAt: !4756)
!4766 = !DILocation(line: 150, column: 12, scope: !3207, inlinedAt: !4756)
!4767 = !DILocation(line: 150, column: 15, scope: !3207, inlinedAt: !4756)
!4768 = !DILocation(line: 150, column: 25, scope: !3207, inlinedAt: !4756)
!4769 = !DILocation(line: 150, column: 7, scope: !3207, inlinedAt: !4756)
!4770 = !DILocation(line: 151, column: 18, scope: !3207, inlinedAt: !4756)
!4771 = !DILocation(line: 151, column: 23, scope: !3207, inlinedAt: !4756)
!4772 = !DILocation(line: 151, column: 6, scope: !3207, inlinedAt: !4756)
!4773 = !DILocation(line: 978, column: 10, scope: !4740)
!4774 = !DILocation(line: 979, column: 1, scope: !4740)
!4775 = !DILocation(line: 978, column: 3, scope: !4740)
!4776 = distinct !DISubprogram(name: "quotearg_char", scope: !165, file: !165, line: 982, type: !4777, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4779)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!27, !38, !28}
!4779 = !{!4780, !4781}
!4780 = !DILocalVariable(name: "arg", arg: 1, scope: !4776, file: !165, line: 982, type: !38)
!4781 = !DILocalVariable(name: "ch", arg: 2, scope: !4776, file: !165, line: 982, type: !28)
!4782 = !DILocation(line: 982, column: 28, scope: !4776)
!4783 = !DILocation(line: 982, column: 38, scope: !4776)
!4784 = !DILocation(line: 973, column: 32, scope: !4740, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 984, column: 10, scope: !4776)
!4786 = !DILocation(line: 973, column: 44, scope: !4740, inlinedAt: !4785)
!4787 = !DILocation(line: 973, column: 58, scope: !4740, inlinedAt: !4785)
!4788 = !DILocation(line: 975, column: 3, scope: !4740, inlinedAt: !4785)
!4789 = !DILocation(line: 976, column: 13, scope: !4740, inlinedAt: !4785)
!4790 = !DILocation(line: 975, column: 26, scope: !4740, inlinedAt: !4785)
!4791 = !DILocation(line: 144, column: 43, scope: !3207, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 977, column: 3, scope: !4740, inlinedAt: !4785)
!4793 = !DILocation(line: 144, column: 51, scope: !3207, inlinedAt: !4792)
!4794 = !DILocation(line: 144, column: 58, scope: !3207, inlinedAt: !4792)
!4795 = !DILocation(line: 146, column: 17, scope: !3207, inlinedAt: !4792)
!4796 = !DILocation(line: 148, column: 62, scope: !3225, inlinedAt: !4792)
!4797 = !DILocation(line: 148, column: 57, scope: !3225, inlinedAt: !4792)
!4798 = !DILocation(line: 147, column: 17, scope: !3207, inlinedAt: !4792)
!4799 = !DILocation(line: 149, column: 18, scope: !3207, inlinedAt: !4792)
!4800 = !DILocation(line: 149, column: 15, scope: !3207, inlinedAt: !4792)
!4801 = !DILocation(line: 149, column: 7, scope: !3207, inlinedAt: !4792)
!4802 = !DILocation(line: 150, column: 12, scope: !3207, inlinedAt: !4792)
!4803 = !DILocation(line: 150, column: 15, scope: !3207, inlinedAt: !4792)
!4804 = !DILocation(line: 150, column: 25, scope: !3207, inlinedAt: !4792)
!4805 = !DILocation(line: 150, column: 7, scope: !3207, inlinedAt: !4792)
!4806 = !DILocation(line: 151, column: 18, scope: !3207, inlinedAt: !4792)
!4807 = !DILocation(line: 151, column: 23, scope: !3207, inlinedAt: !4792)
!4808 = !DILocation(line: 151, column: 6, scope: !3207, inlinedAt: !4792)
!4809 = !DILocation(line: 978, column: 10, scope: !4740, inlinedAt: !4785)
!4810 = !DILocation(line: 979, column: 1, scope: !4740, inlinedAt: !4785)
!4811 = !DILocation(line: 984, column: 3, scope: !4776)
!4812 = distinct !DISubprogram(name: "quotearg_colon", scope: !165, file: !165, line: 988, type: !4590, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4813)
!4813 = !{!4814}
!4814 = !DILocalVariable(name: "arg", arg: 1, scope: !4812, file: !165, line: 988, type: !38)
!4815 = !DILocation(line: 988, column: 29, scope: !4812)
!4816 = !DILocation(line: 982, column: 28, scope: !4776, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 990, column: 10, scope: !4812)
!4818 = !DILocation(line: 982, column: 38, scope: !4776, inlinedAt: !4817)
!4819 = !DILocation(line: 973, column: 32, scope: !4740, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 984, column: 10, scope: !4776, inlinedAt: !4817)
!4821 = !DILocation(line: 973, column: 44, scope: !4740, inlinedAt: !4820)
!4822 = !DILocation(line: 973, column: 58, scope: !4740, inlinedAt: !4820)
!4823 = !DILocation(line: 975, column: 3, scope: !4740, inlinedAt: !4820)
!4824 = !DILocation(line: 976, column: 13, scope: !4740, inlinedAt: !4820)
!4825 = !DILocation(line: 975, column: 26, scope: !4740, inlinedAt: !4820)
!4826 = !DILocation(line: 144, column: 43, scope: !3207, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 977, column: 3, scope: !4740, inlinedAt: !4820)
!4828 = !DILocation(line: 144, column: 51, scope: !3207, inlinedAt: !4827)
!4829 = !DILocation(line: 144, column: 58, scope: !3207, inlinedAt: !4827)
!4830 = !DILocation(line: 146, column: 17, scope: !3207, inlinedAt: !4827)
!4831 = !DILocation(line: 148, column: 57, scope: !3225, inlinedAt: !4827)
!4832 = !DILocation(line: 147, column: 17, scope: !3207, inlinedAt: !4827)
!4833 = !DILocation(line: 149, column: 7, scope: !3207, inlinedAt: !4827)
!4834 = !DILocation(line: 150, column: 12, scope: !3207, inlinedAt: !4827)
!4835 = !DILocation(line: 151, column: 6, scope: !3207, inlinedAt: !4827)
!4836 = !DILocation(line: 978, column: 10, scope: !4740, inlinedAt: !4820)
!4837 = !DILocation(line: 979, column: 1, scope: !4740, inlinedAt: !4820)
!4838 = !DILocation(line: 990, column: 3, scope: !4812)
!4839 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !165, file: !165, line: 994, type: !820, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4840)
!4840 = !{!4841, !4842}
!4841 = !DILocalVariable(name: "arg", arg: 1, scope: !4839, file: !165, line: 994, type: !38)
!4842 = !DILocalVariable(name: "argsize", arg: 2, scope: !4839, file: !165, line: 994, type: !30)
!4843 = !DILocation(line: 994, column: 33, scope: !4839)
!4844 = !DILocation(line: 994, column: 45, scope: !4839)
!4845 = !DILocation(line: 973, column: 32, scope: !4740, inlinedAt: !4846)
!4846 = distinct !DILocation(line: 996, column: 10, scope: !4839)
!4847 = !DILocation(line: 973, column: 44, scope: !4740, inlinedAt: !4846)
!4848 = !DILocation(line: 973, column: 58, scope: !4740, inlinedAt: !4846)
!4849 = !DILocation(line: 975, column: 3, scope: !4740, inlinedAt: !4846)
!4850 = !DILocation(line: 976, column: 13, scope: !4740, inlinedAt: !4846)
!4851 = !DILocation(line: 975, column: 26, scope: !4740, inlinedAt: !4846)
!4852 = !DILocation(line: 144, column: 43, scope: !3207, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 977, column: 3, scope: !4740, inlinedAt: !4846)
!4854 = !DILocation(line: 144, column: 51, scope: !3207, inlinedAt: !4853)
!4855 = !DILocation(line: 144, column: 58, scope: !3207, inlinedAt: !4853)
!4856 = !DILocation(line: 146, column: 17, scope: !3207, inlinedAt: !4853)
!4857 = !DILocation(line: 148, column: 57, scope: !3225, inlinedAt: !4853)
!4858 = !DILocation(line: 147, column: 17, scope: !3207, inlinedAt: !4853)
!4859 = !DILocation(line: 149, column: 7, scope: !3207, inlinedAt: !4853)
!4860 = !DILocation(line: 150, column: 12, scope: !3207, inlinedAt: !4853)
!4861 = !DILocation(line: 151, column: 6, scope: !3207, inlinedAt: !4853)
!4862 = !DILocation(line: 978, column: 10, scope: !4740, inlinedAt: !4846)
!4863 = !DILocation(line: 979, column: 1, scope: !4740, inlinedAt: !4846)
!4864 = !DILocation(line: 996, column: 3, scope: !4839)
!4865 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !165, file: !165, line: 1000, type: !4613, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4866)
!4866 = !{!4867, !4868, !4869, !4870}
!4867 = !DILocalVariable(name: "n", arg: 1, scope: !4865, file: !165, line: 1000, type: !73)
!4868 = !DILocalVariable(name: "s", arg: 2, scope: !4865, file: !165, line: 1000, type: !12)
!4869 = !DILocalVariable(name: "arg", arg: 3, scope: !4865, file: !165, line: 1000, type: !38)
!4870 = !DILocalVariable(name: "options", scope: !4865, file: !165, line: 1002, type: !172)
!4871 = !DILocation(line: 187, column: 26, scope: !4621, inlinedAt: !4872)
!4872 = distinct !DILocation(line: 1003, column: 13, scope: !4865)
!4873 = !DILocation(line: 1000, column: 29, scope: !4865)
!4874 = !DILocation(line: 1000, column: 51, scope: !4865)
!4875 = !DILocation(line: 1000, column: 66, scope: !4865)
!4876 = !DILocation(line: 1002, column: 3, scope: !4865)
!4877 = !DILocation(line: 185, column: 48, scope: !4621, inlinedAt: !4872)
!4878 = !DILocation(line: 187, column: 3, scope: !4621, inlinedAt: !4872)
!4879 = !DILocation(line: 188, column: 13, scope: !4638, inlinedAt: !4872)
!4880 = !DILocation(line: 188, column: 7, scope: !4621, inlinedAt: !4872)
!4881 = !DILocation(line: 189, column: 5, scope: !4638, inlinedAt: !4872)
!4882 = !{!4883}
!4883 = distinct !{!4883, !4884, !"quoting_options_from_style: argument 0"}
!4884 = distinct !{!4884, !"quoting_options_from_style"}
!4885 = !DILocation(line: 191, column: 10, scope: !4621, inlinedAt: !4872)
!4886 = !DILocation(line: 192, column: 1, scope: !4621, inlinedAt: !4872)
!4887 = !DILocation(line: 1003, column: 13, scope: !4865)
!4888 = !DILocation(line: 1002, column: 26, scope: !4865)
!4889 = !DILocation(line: 144, column: 43, scope: !3207, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 1004, column: 3, scope: !4865)
!4891 = !DILocation(line: 144, column: 51, scope: !3207, inlinedAt: !4890)
!4892 = !DILocation(line: 144, column: 58, scope: !3207, inlinedAt: !4890)
!4893 = !DILocation(line: 146, column: 17, scope: !3207, inlinedAt: !4890)
!4894 = !DILocation(line: 148, column: 57, scope: !3225, inlinedAt: !4890)
!4895 = !DILocation(line: 147, column: 17, scope: !3207, inlinedAt: !4890)
!4896 = !DILocation(line: 149, column: 7, scope: !3207, inlinedAt: !4890)
!4897 = !DILocation(line: 150, column: 12, scope: !3207, inlinedAt: !4890)
!4898 = !DILocation(line: 151, column: 6, scope: !3207, inlinedAt: !4890)
!4899 = !DILocation(line: 1005, column: 10, scope: !4865)
!4900 = !DILocation(line: 1006, column: 1, scope: !4865)
!4901 = !DILocation(line: 1005, column: 3, scope: !4865)
!4902 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !165, file: !165, line: 1009, type: !4903, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4905)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!27, !73, !38, !38, !38}
!4905 = !{!4906, !4907, !4908, !4909}
!4906 = !DILocalVariable(name: "n", arg: 1, scope: !4902, file: !165, line: 1009, type: !73)
!4907 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4902, file: !165, line: 1009, type: !38)
!4908 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4902, file: !165, line: 1010, type: !38)
!4909 = !DILocalVariable(name: "arg", arg: 4, scope: !4902, file: !165, line: 1010, type: !38)
!4910 = !DILocation(line: 1009, column: 24, scope: !4902)
!4911 = !DILocation(line: 1009, column: 39, scope: !4902)
!4912 = !DILocation(line: 1010, column: 32, scope: !4902)
!4913 = !DILocation(line: 1010, column: 57, scope: !4902)
!4914 = !DILocalVariable(name: "n", arg: 1, scope: !4915, file: !165, line: 1017, type: !73)
!4915 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !165, file: !165, line: 1017, type: !4916, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4918)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!27, !73, !38, !38, !38, !30}
!4918 = !{!4914, !4919, !4920, !4921, !4922, !4923}
!4919 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4915, file: !165, line: 1017, type: !38)
!4920 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4915, file: !165, line: 1018, type: !38)
!4921 = !DILocalVariable(name: "arg", arg: 4, scope: !4915, file: !165, line: 1019, type: !38)
!4922 = !DILocalVariable(name: "argsize", arg: 5, scope: !4915, file: !165, line: 1019, type: !30)
!4923 = !DILocalVariable(name: "o", scope: !4915, file: !165, line: 1021, type: !172)
!4924 = !DILocation(line: 1017, column: 28, scope: !4915, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 1012, column: 10, scope: !4902)
!4926 = !DILocation(line: 1017, column: 43, scope: !4915, inlinedAt: !4925)
!4927 = !DILocation(line: 1018, column: 36, scope: !4915, inlinedAt: !4925)
!4928 = !DILocation(line: 1019, column: 36, scope: !4915, inlinedAt: !4925)
!4929 = !DILocation(line: 1019, column: 48, scope: !4915, inlinedAt: !4925)
!4930 = !DILocation(line: 1021, column: 3, scope: !4915, inlinedAt: !4925)
!4931 = !DILocation(line: 1021, column: 30, scope: !4915, inlinedAt: !4925)
!4932 = !DILocation(line: 1021, column: 26, scope: !4915, inlinedAt: !4925)
!4933 = !DILocation(line: 171, column: 45, scope: !3257, inlinedAt: !4934)
!4934 = distinct !DILocation(line: 1022, column: 3, scope: !4915, inlinedAt: !4925)
!4935 = !DILocation(line: 172, column: 33, scope: !3257, inlinedAt: !4934)
!4936 = !DILocation(line: 172, column: 57, scope: !3257, inlinedAt: !4934)
!4937 = !DILocation(line: 176, column: 6, scope: !3257, inlinedAt: !4934)
!4938 = !DILocation(line: 176, column: 12, scope: !3257, inlinedAt: !4934)
!4939 = !DILocation(line: 177, column: 8, scope: !3273, inlinedAt: !4934)
!4940 = !DILocation(line: 177, column: 23, scope: !3275, inlinedAt: !4934)
!4941 = !DILocation(line: 177, column: 19, scope: !3273, inlinedAt: !4934)
!4942 = !DILocation(line: 178, column: 5, scope: !3273, inlinedAt: !4934)
!4943 = !DILocation(line: 179, column: 6, scope: !3257, inlinedAt: !4934)
!4944 = !DILocation(line: 179, column: 17, scope: !3257, inlinedAt: !4934)
!4945 = !DILocation(line: 180, column: 6, scope: !3257, inlinedAt: !4934)
!4946 = !DILocation(line: 180, column: 18, scope: !3257, inlinedAt: !4934)
!4947 = !DILocation(line: 1023, column: 10, scope: !4915, inlinedAt: !4925)
!4948 = !DILocation(line: 1024, column: 1, scope: !4915, inlinedAt: !4925)
!4949 = !DILocation(line: 1012, column: 3, scope: !4902)
!4950 = !DILocation(line: 1017, column: 28, scope: !4915)
!4951 = !DILocation(line: 1017, column: 43, scope: !4915)
!4952 = !DILocation(line: 1018, column: 36, scope: !4915)
!4953 = !DILocation(line: 1019, column: 36, scope: !4915)
!4954 = !DILocation(line: 1019, column: 48, scope: !4915)
!4955 = !DILocation(line: 1021, column: 3, scope: !4915)
!4956 = !DILocation(line: 1021, column: 30, scope: !4915)
!4957 = !DILocation(line: 1021, column: 26, scope: !4915)
!4958 = !DILocation(line: 171, column: 45, scope: !3257, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 1022, column: 3, scope: !4915)
!4960 = !DILocation(line: 172, column: 33, scope: !3257, inlinedAt: !4959)
!4961 = !DILocation(line: 172, column: 57, scope: !3257, inlinedAt: !4959)
!4962 = !DILocation(line: 176, column: 6, scope: !3257, inlinedAt: !4959)
!4963 = !DILocation(line: 176, column: 12, scope: !3257, inlinedAt: !4959)
!4964 = !DILocation(line: 177, column: 8, scope: !3273, inlinedAt: !4959)
!4965 = !DILocation(line: 177, column: 23, scope: !3275, inlinedAt: !4959)
!4966 = !DILocation(line: 177, column: 19, scope: !3273, inlinedAt: !4959)
!4967 = !DILocation(line: 178, column: 5, scope: !3273, inlinedAt: !4959)
!4968 = !DILocation(line: 179, column: 6, scope: !3257, inlinedAt: !4959)
!4969 = !DILocation(line: 179, column: 17, scope: !3257, inlinedAt: !4959)
!4970 = !DILocation(line: 180, column: 6, scope: !3257, inlinedAt: !4959)
!4971 = !DILocation(line: 180, column: 18, scope: !3257, inlinedAt: !4959)
!4972 = !DILocation(line: 1023, column: 10, scope: !4915)
!4973 = !DILocation(line: 1024, column: 1, scope: !4915)
!4974 = !DILocation(line: 1023, column: 3, scope: !4915)
!4975 = distinct !DISubprogram(name: "quotearg_custom", scope: !165, file: !165, line: 1027, type: !4976, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !4978)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!27, !38, !38, !38}
!4978 = !{!4979, !4980, !4981}
!4979 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4975, file: !165, line: 1027, type: !38)
!4980 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4975, file: !165, line: 1027, type: !38)
!4981 = !DILocalVariable(name: "arg", arg: 3, scope: !4975, file: !165, line: 1028, type: !38)
!4982 = !DILocation(line: 1027, column: 30, scope: !4975)
!4983 = !DILocation(line: 1027, column: 54, scope: !4975)
!4984 = !DILocation(line: 1028, column: 30, scope: !4975)
!4985 = !DILocation(line: 1009, column: 24, scope: !4902, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 1030, column: 10, scope: !4975)
!4987 = !DILocation(line: 1009, column: 39, scope: !4902, inlinedAt: !4986)
!4988 = !DILocation(line: 1010, column: 32, scope: !4902, inlinedAt: !4986)
!4989 = !DILocation(line: 1010, column: 57, scope: !4902, inlinedAt: !4986)
!4990 = !DILocation(line: 1017, column: 28, scope: !4915, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 1012, column: 10, scope: !4902, inlinedAt: !4986)
!4992 = !DILocation(line: 1017, column: 43, scope: !4915, inlinedAt: !4991)
!4993 = !DILocation(line: 1018, column: 36, scope: !4915, inlinedAt: !4991)
!4994 = !DILocation(line: 1019, column: 36, scope: !4915, inlinedAt: !4991)
!4995 = !DILocation(line: 1019, column: 48, scope: !4915, inlinedAt: !4991)
!4996 = !DILocation(line: 1021, column: 3, scope: !4915, inlinedAt: !4991)
!4997 = !DILocation(line: 1021, column: 30, scope: !4915, inlinedAt: !4991)
!4998 = !DILocation(line: 1021, column: 26, scope: !4915, inlinedAt: !4991)
!4999 = !DILocation(line: 171, column: 45, scope: !3257, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 1022, column: 3, scope: !4915, inlinedAt: !4991)
!5001 = !DILocation(line: 172, column: 33, scope: !3257, inlinedAt: !5000)
!5002 = !DILocation(line: 172, column: 57, scope: !3257, inlinedAt: !5000)
!5003 = !DILocation(line: 176, column: 6, scope: !3257, inlinedAt: !5000)
!5004 = !DILocation(line: 176, column: 12, scope: !3257, inlinedAt: !5000)
!5005 = !DILocation(line: 177, column: 8, scope: !3273, inlinedAt: !5000)
!5006 = !DILocation(line: 177, column: 23, scope: !3275, inlinedAt: !5000)
!5007 = !DILocation(line: 177, column: 19, scope: !3273, inlinedAt: !5000)
!5008 = !DILocation(line: 178, column: 5, scope: !3273, inlinedAt: !5000)
!5009 = !DILocation(line: 179, column: 6, scope: !3257, inlinedAt: !5000)
!5010 = !DILocation(line: 179, column: 17, scope: !3257, inlinedAt: !5000)
!5011 = !DILocation(line: 180, column: 6, scope: !3257, inlinedAt: !5000)
!5012 = !DILocation(line: 180, column: 18, scope: !3257, inlinedAt: !5000)
!5013 = !DILocation(line: 1023, column: 10, scope: !4915, inlinedAt: !4991)
!5014 = !DILocation(line: 1024, column: 1, scope: !4915, inlinedAt: !4991)
!5015 = !DILocation(line: 1030, column: 3, scope: !4975)
!5016 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !165, file: !165, line: 1034, type: !5017, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !5019)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!27, !38, !38, !38, !30}
!5019 = !{!5020, !5021, !5022, !5023}
!5020 = !DILocalVariable(name: "left_quote", arg: 1, scope: !5016, file: !165, line: 1034, type: !38)
!5021 = !DILocalVariable(name: "right_quote", arg: 2, scope: !5016, file: !165, line: 1034, type: !38)
!5022 = !DILocalVariable(name: "arg", arg: 3, scope: !5016, file: !165, line: 1035, type: !38)
!5023 = !DILocalVariable(name: "argsize", arg: 4, scope: !5016, file: !165, line: 1035, type: !30)
!5024 = !DILocation(line: 1034, column: 34, scope: !5016)
!5025 = !DILocation(line: 1034, column: 58, scope: !5016)
!5026 = !DILocation(line: 1035, column: 34, scope: !5016)
!5027 = !DILocation(line: 1035, column: 46, scope: !5016)
!5028 = !DILocation(line: 1017, column: 28, scope: !4915, inlinedAt: !5029)
!5029 = distinct !DILocation(line: 1037, column: 10, scope: !5016)
!5030 = !DILocation(line: 1017, column: 43, scope: !4915, inlinedAt: !5029)
!5031 = !DILocation(line: 1018, column: 36, scope: !4915, inlinedAt: !5029)
!5032 = !DILocation(line: 1019, column: 36, scope: !4915, inlinedAt: !5029)
!5033 = !DILocation(line: 1019, column: 48, scope: !4915, inlinedAt: !5029)
!5034 = !DILocation(line: 1021, column: 3, scope: !4915, inlinedAt: !5029)
!5035 = !DILocation(line: 1021, column: 30, scope: !4915, inlinedAt: !5029)
!5036 = !DILocation(line: 1021, column: 26, scope: !4915, inlinedAt: !5029)
!5037 = !DILocation(line: 171, column: 45, scope: !3257, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 1022, column: 3, scope: !4915, inlinedAt: !5029)
!5039 = !DILocation(line: 172, column: 33, scope: !3257, inlinedAt: !5038)
!5040 = !DILocation(line: 172, column: 57, scope: !3257, inlinedAt: !5038)
!5041 = !DILocation(line: 176, column: 6, scope: !3257, inlinedAt: !5038)
!5042 = !DILocation(line: 176, column: 12, scope: !3257, inlinedAt: !5038)
!5043 = !DILocation(line: 177, column: 8, scope: !3273, inlinedAt: !5038)
!5044 = !DILocation(line: 177, column: 23, scope: !3275, inlinedAt: !5038)
!5045 = !DILocation(line: 177, column: 19, scope: !3273, inlinedAt: !5038)
!5046 = !DILocation(line: 178, column: 5, scope: !3273, inlinedAt: !5038)
!5047 = !DILocation(line: 179, column: 6, scope: !3257, inlinedAt: !5038)
!5048 = !DILocation(line: 179, column: 17, scope: !3257, inlinedAt: !5038)
!5049 = !DILocation(line: 180, column: 6, scope: !3257, inlinedAt: !5038)
!5050 = !DILocation(line: 180, column: 18, scope: !3257, inlinedAt: !5038)
!5051 = !DILocation(line: 1023, column: 10, scope: !4915, inlinedAt: !5029)
!5052 = !DILocation(line: 1024, column: 1, scope: !4915, inlinedAt: !5029)
!5053 = !DILocation(line: 1037, column: 3, scope: !5016)
!5054 = distinct !DISubprogram(name: "quote_n_mem", scope: !165, file: !165, line: 1052, type: !5055, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !5057)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!38, !73, !38, !30}
!5057 = !{!5058, !5059, !5060}
!5058 = !DILocalVariable(name: "n", arg: 1, scope: !5054, file: !165, line: 1052, type: !73)
!5059 = !DILocalVariable(name: "arg", arg: 2, scope: !5054, file: !165, line: 1052, type: !38)
!5060 = !DILocalVariable(name: "argsize", arg: 3, scope: !5054, file: !165, line: 1052, type: !30)
!5061 = !DILocation(line: 1052, column: 18, scope: !5054)
!5062 = !DILocation(line: 1052, column: 33, scope: !5054)
!5063 = !DILocation(line: 1052, column: 45, scope: !5054)
!5064 = !DILocation(line: 1054, column: 10, scope: !5054)
!5065 = !DILocation(line: 1054, column: 3, scope: !5054)
!5066 = distinct !DISubprogram(name: "quote_mem", scope: !165, file: !165, line: 1058, type: !5067, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !5069)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!38, !38, !30}
!5069 = !{!5070, !5071}
!5070 = !DILocalVariable(name: "arg", arg: 1, scope: !5066, file: !165, line: 1058, type: !38)
!5071 = !DILocalVariable(name: "argsize", arg: 2, scope: !5066, file: !165, line: 1058, type: !30)
!5072 = !DILocation(line: 1058, column: 24, scope: !5066)
!5073 = !DILocation(line: 1058, column: 36, scope: !5066)
!5074 = !DILocation(line: 1052, column: 18, scope: !5054, inlinedAt: !5075)
!5075 = distinct !DILocation(line: 1060, column: 10, scope: !5066)
!5076 = !DILocation(line: 1052, column: 33, scope: !5054, inlinedAt: !5075)
!5077 = !DILocation(line: 1052, column: 45, scope: !5054, inlinedAt: !5075)
!5078 = !DILocation(line: 1054, column: 10, scope: !5054, inlinedAt: !5075)
!5079 = !DILocation(line: 1060, column: 3, scope: !5066)
!5080 = distinct !DISubprogram(name: "quote_n", scope: !165, file: !165, line: 1064, type: !5081, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !5083)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!38, !73, !38}
!5083 = !{!5084, !5085}
!5084 = !DILocalVariable(name: "n", arg: 1, scope: !5080, file: !165, line: 1064, type: !73)
!5085 = !DILocalVariable(name: "arg", arg: 2, scope: !5080, file: !165, line: 1064, type: !38)
!5086 = !DILocation(line: 1064, column: 14, scope: !5080)
!5087 = !DILocation(line: 1064, column: 29, scope: !5080)
!5088 = !DILocation(line: 1052, column: 18, scope: !5054, inlinedAt: !5089)
!5089 = distinct !DILocation(line: 1066, column: 10, scope: !5080)
!5090 = !DILocation(line: 1052, column: 33, scope: !5054, inlinedAt: !5089)
!5091 = !DILocation(line: 1052, column: 45, scope: !5054, inlinedAt: !5089)
!5092 = !DILocation(line: 1054, column: 10, scope: !5054, inlinedAt: !5089)
!5093 = !DILocation(line: 1066, column: 3, scope: !5080)
!5094 = distinct !DISubprogram(name: "quote", scope: !165, file: !165, line: 1070, type: !5095, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !5097)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!38, !38}
!5097 = !{!5098}
!5098 = !DILocalVariable(name: "arg", arg: 1, scope: !5094, file: !165, line: 1070, type: !38)
!5099 = !DILocation(line: 1070, column: 20, scope: !5094)
!5100 = !DILocation(line: 1064, column: 14, scope: !5080, inlinedAt: !5101)
!5101 = distinct !DILocation(line: 1072, column: 10, scope: !5094)
!5102 = !DILocation(line: 1064, column: 29, scope: !5080, inlinedAt: !5101)
!5103 = !DILocation(line: 1052, column: 18, scope: !5054, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 1066, column: 10, scope: !5080, inlinedAt: !5101)
!5105 = !DILocation(line: 1052, column: 33, scope: !5054, inlinedAt: !5104)
!5106 = !DILocation(line: 1052, column: 45, scope: !5054, inlinedAt: !5104)
!5107 = !DILocation(line: 1054, column: 10, scope: !5054, inlinedAt: !5104)
!5108 = !DILocation(line: 1072, column: 3, scope: !5094)
!5109 = distinct !DISubprogram(name: "same_name", scope: !5110, file: !5110, line: 51, type: !5111, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !5113)
!5110 = !DIFile(filename: "lib/same.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!43, !38, !38}
!5113 = !{!5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5147, !5148, !5149}
!5114 = !DILocalVariable(name: "source", arg: 1, scope: !5109, file: !5110, line: 51, type: !38)
!5115 = !DILocalVariable(name: "dest", arg: 2, scope: !5109, file: !5110, line: 51, type: !38)
!5116 = !DILocalVariable(name: "source_basename", scope: !5109, file: !5110, line: 54, type: !38)
!5117 = !DILocalVariable(name: "dest_basename", scope: !5109, file: !5110, line: 55, type: !38)
!5118 = !DILocalVariable(name: "source_baselen", scope: !5109, file: !5110, line: 56, type: !30)
!5119 = !DILocalVariable(name: "dest_baselen", scope: !5109, file: !5110, line: 57, type: !30)
!5120 = !DILocalVariable(name: "identical_basenames", scope: !5109, file: !5110, line: 58, type: !43)
!5121 = !DILocalVariable(name: "compare_dirs", scope: !5109, file: !5110, line: 61, type: !43)
!5122 = !DILocalVariable(name: "same", scope: !5109, file: !5110, line: 62, type: !43)
!5123 = !DILocalVariable(name: "source_dir_stats", scope: !5124, file: !5110, line: 77, type: !5126)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !5110, line: 76, column: 5)
!5125 = distinct !DILexicalBlock(scope: !5109, file: !5110, line: 75, column: 7)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !927, line: 46, size: 1152, elements: !5127)
!5127 = !{!5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5144, !5145, !5146}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5126, file: !927, line: 48, baseType: !930, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5126, file: !927, line: 53, baseType: !932, size: 64, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5126, file: !927, line: 61, baseType: !934, size: 64, offset: 128)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5126, file: !927, line: 62, baseType: !936, size: 32, offset: 192)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5126, file: !927, line: 64, baseType: !938, size: 32, offset: 224)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5126, file: !927, line: 65, baseType: !940, size: 32, offset: 256)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !5126, file: !927, line: 67, baseType: !73, size: 32, offset: 288)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5126, file: !927, line: 69, baseType: !930, size: 64, offset: 320)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5126, file: !927, line: 74, baseType: !944, size: 64, offset: 384)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5126, file: !927, line: 78, baseType: !946, size: 64, offset: 448)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5126, file: !927, line: 80, baseType: !948, size: 64, offset: 512)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5126, file: !927, line: 91, baseType: !5140, size: 128, offset: 576)
!5140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !951, line: 8, size: 128, elements: !5141)
!5141 = !{!5142, !5143}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5140, file: !951, line: 10, baseType: !954, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5140, file: !951, line: 11, baseType: !956, size: 64, offset: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5126, file: !927, line: 92, baseType: !5140, size: 128, offset: 704)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5126, file: !927, line: 93, baseType: !5140, size: 128, offset: 832)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !5126, file: !927, line: 106, baseType: !960, size: 192, offset: 960)
!5147 = !DILocalVariable(name: "dest_dir_stats", scope: !5124, file: !5110, line: 78, type: !5126)
!5148 = !DILocalVariable(name: "source_dirname", scope: !5124, file: !5110, line: 79, type: !27)
!5149 = !DILocalVariable(name: "dest_dirname", scope: !5124, file: !5110, line: 79, type: !27)
!5150 = !DILocation(line: 51, column: 24, scope: !5109)
!5151 = !DILocation(line: 51, column: 44, scope: !5109)
!5152 = !DILocation(line: 54, column: 33, scope: !5109)
!5153 = !DILocation(line: 54, column: 15, scope: !5109)
!5154 = !DILocation(line: 55, column: 31, scope: !5109)
!5155 = !DILocation(line: 55, column: 15, scope: !5109)
!5156 = !DILocation(line: 56, column: 27, scope: !5109)
!5157 = !DILocation(line: 56, column: 10, scope: !5109)
!5158 = !DILocation(line: 57, column: 25, scope: !5109)
!5159 = !DILocation(line: 57, column: 10, scope: !5109)
!5160 = !DILocation(line: 59, column: 21, scope: !5109)
!5161 = !DILocation(line: 60, column: 6, scope: !5109)
!5162 = !DILocation(line: 60, column: 9, scope: !5163)
!5163 = !DILexicalBlockFile(scope: !5109, file: !5110, discriminator: 1)
!5164 = !DILocation(line: 60, column: 63, scope: !5163)
!5165 = !DILocation(line: 62, column: 8, scope: !5109)
!5166 = !DILocation(line: 75, column: 7, scope: !5109)
!5167 = !DILocation(line: 77, column: 7, scope: !5124)
!5168 = !DILocation(line: 78, column: 7, scope: !5124)
!5169 = !DILocation(line: 82, column: 24, scope: !5124)
!5170 = !DILocation(line: 79, column: 13, scope: !5124)
!5171 = !DILocation(line: 83, column: 22, scope: !5124)
!5172 = !DILocation(line: 79, column: 30, scope: !5124)
!5173 = !DILocation(line: 77, column: 19, scope: !5124)
!5174 = !DILocalVariable(name: "__path", arg: 1, scope: !5175, file: !1115, line: 449, type: !38)
!5175 = distinct !DISubprogram(name: "stat", scope: !1115, file: !1115, line: 449, type: !5176, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !570, variables: !5179)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!73, !38, !5178}
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5179 = !{!5174, !5180}
!5180 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !5175, file: !1115, line: 449, type: !5178)
!5181 = !DILocation(line: 449, column: 1, scope: !5175, inlinedAt: !5182)
!5182 = distinct !DILocation(line: 85, column: 11, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5124, file: !5110, line: 85, column: 11)
!5184 = !DILocation(line: 451, column: 10, scope: !5175, inlinedAt: !5182)
!5185 = !DILocation(line: 85, column: 11, scope: !5183)
!5186 = !DILocation(line: 85, column: 11, scope: !5124)
!5187 = !DILocation(line: 88, column: 21, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5183, file: !5110, line: 86, column: 9)
!5189 = !DILocation(line: 88, column: 11, scope: !5190)
!5190 = !DILexicalBlockFile(scope: !5188, file: !5110, discriminator: 1)
!5191 = !DILocation(line: 89, column: 9, scope: !5188)
!5192 = !DILocation(line: 78, column: 19, scope: !5124)
!5193 = !DILocation(line: 449, column: 1, scope: !5175, inlinedAt: !5194)
!5194 = distinct !DILocation(line: 91, column: 11, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5124, file: !5110, line: 91, column: 11)
!5196 = !DILocation(line: 451, column: 10, scope: !5175, inlinedAt: !5194)
!5197 = !DILocation(line: 91, column: 11, scope: !5195)
!5198 = !DILocation(line: 91, column: 11, scope: !5124)
!5199 = !DILocation(line: 94, column: 21, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5195, file: !5110, line: 92, column: 9)
!5201 = !DILocation(line: 94, column: 11, scope: !5202)
!5202 = !DILexicalBlockFile(scope: !5200, file: !5110, discriminator: 1)
!5203 = !DILocation(line: 95, column: 9, scope: !5200)
!5204 = !DILocation(line: 97, column: 14, scope: !5124)
!5205 = !DILocation(line: 97, column: 14, scope: !5206)
!5206 = !DILexicalBlockFile(scope: !5124, file: !5110, discriminator: 1)
!5207 = !DILocation(line: 118, column: 7, scope: !5124)
!5208 = !DILocation(line: 119, column: 7, scope: !5124)
!5209 = !DILocation(line: 120, column: 5, scope: !5125)
!5210 = !DILocation(line: 120, column: 5, scope: !5124)
!5211 = !DILocation(line: 122, column: 3, scope: !5109)
!5212 = distinct !DISubprogram(name: "version_etc_arn", scope: !576, file: !576, line: 62, type: !5213, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !5256)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{null, !5215, !38, !38, !38, !5255, !30}
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1617, line: 49, baseType: !5217)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1619, line: 241, size: 1728, elements: !5218)
!5218 = !{!5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5217, file: !1619, line: 242, baseType: !73, size: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5217, file: !1619, line: 247, baseType: !27, size: 64, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5217, file: !1619, line: 248, baseType: !27, size: 64, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5217, file: !1619, line: 249, baseType: !27, size: 64, offset: 192)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5217, file: !1619, line: 250, baseType: !27, size: 64, offset: 256)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5217, file: !1619, line: 251, baseType: !27, size: 64, offset: 320)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5217, file: !1619, line: 252, baseType: !27, size: 64, offset: 384)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5217, file: !1619, line: 253, baseType: !27, size: 64, offset: 448)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5217, file: !1619, line: 254, baseType: !27, size: 64, offset: 512)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5217, file: !1619, line: 256, baseType: !27, size: 64, offset: 576)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5217, file: !1619, line: 257, baseType: !27, size: 64, offset: 640)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5217, file: !1619, line: 258, baseType: !27, size: 64, offset: 704)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5217, file: !1619, line: 260, baseType: !5232, size: 64, offset: 768)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1619, line: 156, size: 192, elements: !5234)
!5234 = !{!5235, !5236, !5238}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5233, file: !1619, line: 157, baseType: !5232, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5233, file: !1619, line: 158, baseType: !5237, size: 64, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5233, file: !1619, line: 162, baseType: !73, size: 32, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5217, file: !1619, line: 262, baseType: !5237, size: 64, offset: 832)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5217, file: !1619, line: 264, baseType: !73, size: 32, offset: 896)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5217, file: !1619, line: 268, baseType: !73, size: 32, offset: 928)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5217, file: !1619, line: 270, baseType: !944, size: 64, offset: 960)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5217, file: !1619, line: 274, baseType: !161, size: 16, offset: 1024)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5217, file: !1619, line: 275, baseType: !1647, size: 8, offset: 1040)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5217, file: !1619, line: 276, baseType: !1649, size: 8, offset: 1048)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5217, file: !1619, line: 280, baseType: !1653, size: 64, offset: 1088)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5217, file: !1619, line: 289, baseType: !1656, size: 64, offset: 1152)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5217, file: !1619, line: 297, baseType: !29, size: 64, offset: 1216)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5217, file: !1619, line: 298, baseType: !29, size: 64, offset: 1280)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5217, file: !1619, line: 299, baseType: !29, size: 64, offset: 1344)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5217, file: !1619, line: 300, baseType: !29, size: 64, offset: 1408)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5217, file: !1619, line: 302, baseType: !30, size: 64, offset: 1472)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5217, file: !1619, line: 303, baseType: !73, size: 32, offset: 1536)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5217, file: !1619, line: 305, baseType: !1664, size: 160, offset: 1568)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!5256 = !{!5257, !5258, !5259, !5260, !5261, !5262}
!5257 = !DILocalVariable(name: "stream", arg: 1, scope: !5212, file: !576, line: 62, type: !5215)
!5258 = !DILocalVariable(name: "command_name", arg: 2, scope: !5212, file: !576, line: 63, type: !38)
!5259 = !DILocalVariable(name: "package", arg: 3, scope: !5212, file: !576, line: 63, type: !38)
!5260 = !DILocalVariable(name: "version", arg: 4, scope: !5212, file: !576, line: 64, type: !38)
!5261 = !DILocalVariable(name: "authors", arg: 5, scope: !5212, file: !576, line: 65, type: !5255)
!5262 = !DILocalVariable(name: "n_authors", arg: 6, scope: !5212, file: !576, line: 65, type: !30)
!5263 = !DILocation(line: 62, column: 24, scope: !5212)
!5264 = !DILocation(line: 63, column: 30, scope: !5212)
!5265 = !DILocation(line: 63, column: 56, scope: !5212)
!5266 = !DILocation(line: 64, column: 30, scope: !5212)
!5267 = !DILocation(line: 65, column: 39, scope: !5212)
!5268 = !DILocation(line: 65, column: 55, scope: !5212)
!5269 = !DILocation(line: 67, column: 7, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5212, file: !576, line: 67, column: 7)
!5271 = !DILocation(line: 67, column: 7, scope: !5212)
!5272 = !DILocation(line: 68, column: 5, scope: !5270)
!5273 = !DILocation(line: 70, column: 5, scope: !5270)
!5274 = !DILocation(line: 84, column: 3, scope: !5212)
!5275 = !DILocation(line: 84, column: 3, scope: !5276)
!5276 = !DILexicalBlockFile(scope: !5212, file: !576, discriminator: 1)
!5277 = !DILocation(line: 86, column: 3, scope: !5212)
!5278 = !DILocation(line: 86, column: 3, scope: !5276)
!5279 = !DILocation(line: 95, column: 3, scope: !5212)
!5280 = !DILocation(line: 99, column: 7, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5212, file: !576, line: 96, column: 5)
!5282 = !DILocation(line: 102, column: 7, scope: !5281)
!5283 = !DILocation(line: 102, column: 7, scope: !5284)
!5284 = !DILexicalBlockFile(scope: !5281, file: !576, discriminator: 1)
!5285 = !DILocation(line: 103, column: 7, scope: !5281)
!5286 = !DILocation(line: 106, column: 7, scope: !5281)
!5287 = !DILocation(line: 106, column: 7, scope: !5284)
!5288 = !DILocation(line: 107, column: 7, scope: !5281)
!5289 = !DILocation(line: 110, column: 7, scope: !5281)
!5290 = !DILocation(line: 110, column: 7, scope: !5284)
!5291 = !DILocation(line: 112, column: 7, scope: !5281)
!5292 = !DILocation(line: 117, column: 7, scope: !5281)
!5293 = !DILocation(line: 117, column: 7, scope: !5284)
!5294 = !DILocation(line: 119, column: 7, scope: !5281)
!5295 = !DILocation(line: 124, column: 7, scope: !5281)
!5296 = !DILocation(line: 124, column: 7, scope: !5284)
!5297 = !DILocation(line: 126, column: 7, scope: !5281)
!5298 = !DILocation(line: 131, column: 7, scope: !5281)
!5299 = !DILocation(line: 131, column: 7, scope: !5284)
!5300 = !DILocation(line: 134, column: 7, scope: !5281)
!5301 = !DILocation(line: 139, column: 7, scope: !5281)
!5302 = !DILocation(line: 139, column: 7, scope: !5284)
!5303 = !DILocation(line: 142, column: 7, scope: !5281)
!5304 = !DILocation(line: 147, column: 7, scope: !5281)
!5305 = !DILocation(line: 147, column: 7, scope: !5284)
!5306 = !DILocation(line: 151, column: 7, scope: !5281)
!5307 = !DILocation(line: 156, column: 7, scope: !5281)
!5308 = !DILocation(line: 156, column: 7, scope: !5284)
!5309 = !DILocation(line: 160, column: 7, scope: !5281)
!5310 = !DILocation(line: 167, column: 7, scope: !5281)
!5311 = !DILocation(line: 167, column: 7, scope: !5284)
!5312 = !DILocation(line: 171, column: 7, scope: !5281)
!5313 = !DILocation(line: 173, column: 1, scope: !5212)
!5314 = distinct !DISubprogram(name: "version_etc_ar", scope: !576, file: !576, line: 180, type: !5315, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !5317)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !5215, !38, !38, !38, !5255}
!5317 = !{!5318, !5319, !5320, !5321, !5322, !5323}
!5318 = !DILocalVariable(name: "stream", arg: 1, scope: !5314, file: !576, line: 180, type: !5215)
!5319 = !DILocalVariable(name: "command_name", arg: 2, scope: !5314, file: !576, line: 181, type: !38)
!5320 = !DILocalVariable(name: "package", arg: 3, scope: !5314, file: !576, line: 181, type: !38)
!5321 = !DILocalVariable(name: "version", arg: 4, scope: !5314, file: !576, line: 182, type: !38)
!5322 = !DILocalVariable(name: "authors", arg: 5, scope: !5314, file: !576, line: 182, type: !5255)
!5323 = !DILocalVariable(name: "n_authors", scope: !5314, file: !576, line: 184, type: !30)
!5324 = !DILocation(line: 180, column: 23, scope: !5314)
!5325 = !DILocation(line: 181, column: 29, scope: !5314)
!5326 = !DILocation(line: 181, column: 55, scope: !5314)
!5327 = !DILocation(line: 182, column: 29, scope: !5314)
!5328 = !DILocation(line: 182, column: 59, scope: !5314)
!5329 = !DILocation(line: 184, column: 10, scope: !5314)
!5330 = !DILocation(line: 186, column: 8, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5314, file: !576, line: 186, column: 3)
!5332 = !DILocation(line: 186, column: 23, scope: !5333)
!5333 = !DILexicalBlockFile(scope: !5334, file: !576, discriminator: 1)
!5334 = distinct !DILexicalBlock(scope: !5331, file: !576, line: 186, column: 3)
!5335 = !DILocation(line: 186, column: 3, scope: !5336)
!5336 = !DILexicalBlockFile(scope: !5331, file: !576, discriminator: 1)
!5337 = !DILocation(line: 186, column: 52, scope: !5338)
!5338 = !DILexicalBlockFile(scope: !5334, file: !576, discriminator: 3)
!5339 = distinct !{!5339, !5340, !5341}
!5340 = !DILocation(line: 186, column: 3, scope: !5331)
!5341 = !DILocation(line: 187, column: 5, scope: !5331)
!5342 = !DILocation(line: 188, column: 3, scope: !5314)
!5343 = !DILocation(line: 189, column: 1, scope: !5314)
!5344 = distinct !DISubprogram(name: "version_etc_va", scope: !576, file: !576, line: 196, type: !5345, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !5354)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{null, !5215, !38, !38, !38, !5347}
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !573, line: 189, size: 192, elements: !5349)
!5349 = !{!5350, !5351, !5352, !5353}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5348, file: !573, line: 189, baseType: !178, size: 32)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5348, file: !573, line: 189, baseType: !178, size: 32, offset: 32)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5348, file: !573, line: 189, baseType: !29, size: 64, offset: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5348, file: !573, line: 189, baseType: !29, size: 64, offset: 128)
!5354 = !{!5355, !5356, !5357, !5358, !5359, !5360, !5361}
!5355 = !DILocalVariable(name: "stream", arg: 1, scope: !5344, file: !576, line: 196, type: !5215)
!5356 = !DILocalVariable(name: "command_name", arg: 2, scope: !5344, file: !576, line: 197, type: !38)
!5357 = !DILocalVariable(name: "package", arg: 3, scope: !5344, file: !576, line: 197, type: !38)
!5358 = !DILocalVariable(name: "version", arg: 4, scope: !5344, file: !576, line: 198, type: !38)
!5359 = !DILocalVariable(name: "authors", arg: 5, scope: !5344, file: !576, line: 198, type: !5347)
!5360 = !DILocalVariable(name: "n_authors", scope: !5344, file: !576, line: 200, type: !30)
!5361 = !DILocalVariable(name: "authtab", scope: !5344, file: !576, line: 201, type: !5362)
!5362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !168)
!5363 = !DILocation(line: 196, column: 23, scope: !5344)
!5364 = !DILocation(line: 197, column: 29, scope: !5344)
!5365 = !DILocation(line: 197, column: 55, scope: !5344)
!5366 = !DILocation(line: 198, column: 29, scope: !5344)
!5367 = !DILocation(line: 198, column: 46, scope: !5344)
!5368 = !DILocation(line: 201, column: 3, scope: !5344)
!5369 = !DILocation(line: 201, column: 15, scope: !5344)
!5370 = !DILocation(line: 200, column: 10, scope: !5344)
!5371 = !DILocation(line: 205, column: 35, scope: !5372)
!5372 = !DILexicalBlockFile(scope: !5373, file: !576, discriminator: 1)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !576, line: 203, column: 3)
!5374 = distinct !DILexicalBlock(scope: !5344, file: !576, line: 203, column: 3)
!5375 = !DILocation(line: 205, column: 35, scope: !5376)
!5376 = !DILexicalBlockFile(scope: !5373, file: !576, discriminator: 2)
!5377 = !DILocation(line: 205, column: 35, scope: !5378)
!5378 = !DILexicalBlockFile(scope: !5373, file: !576, discriminator: 3)
!5379 = !DILocation(line: 205, column: 35, scope: !5380)
!5380 = !DILexicalBlockFile(scope: !5373, file: !576, discriminator: 4)
!5381 = !DILocation(line: 205, column: 14, scope: !5380)
!5382 = !DILocation(line: 205, column: 33, scope: !5380)
!5383 = !DILocation(line: 205, column: 67, scope: !5380)
!5384 = !DILocation(line: 203, column: 3, scope: !5385)
!5385 = !DILexicalBlockFile(scope: !5374, file: !576, discriminator: 1)
!5386 = !DILocation(line: 208, column: 3, scope: !5344)
!5387 = !DILocation(line: 210, column: 1, scope: !5344)
!5388 = distinct !DISubprogram(name: "version_etc", scope: !576, file: !576, line: 227, type: !5389, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !5391)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{null, !5215, !38, !38, !38, null}
!5391 = !{!5392, !5393, !5394, !5395, !5396}
!5392 = !DILocalVariable(name: "stream", arg: 1, scope: !5388, file: !576, line: 227, type: !5215)
!5393 = !DILocalVariable(name: "command_name", arg: 2, scope: !5388, file: !576, line: 228, type: !38)
!5394 = !DILocalVariable(name: "package", arg: 3, scope: !5388, file: !576, line: 228, type: !38)
!5395 = !DILocalVariable(name: "version", arg: 4, scope: !5388, file: !576, line: 229, type: !38)
!5396 = !DILocalVariable(name: "authors", scope: !5388, file: !576, line: 231, type: !5397)
!5397 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1617, line: 80, baseType: !5398)
!5398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !5399, line: 50, baseType: !5400)
!5399 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !573, line: 231, baseType: !5401)
!5401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5348, size: 192, elements: !1650)
!5402 = !DILocation(line: 227, column: 20, scope: !5388)
!5403 = !DILocation(line: 228, column: 26, scope: !5388)
!5404 = !DILocation(line: 228, column: 52, scope: !5388)
!5405 = !DILocation(line: 229, column: 26, scope: !5388)
!5406 = !DILocation(line: 231, column: 3, scope: !5388)
!5407 = !DILocation(line: 231, column: 11, scope: !5388)
!5408 = !DILocation(line: 233, column: 3, scope: !5388)
!5409 = !DILocation(line: 234, column: 3, scope: !5388)
!5410 = !DILocation(line: 235, column: 3, scope: !5388)
!5411 = !DILocation(line: 236, column: 1, scope: !5388)
!5412 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !576, file: !576, line: 239, type: !1306, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !572, variables: !93)
!5413 = !DILocation(line: 245, column: 3, scope: !5412)
!5414 = !DILocation(line: 245, column: 3, scope: !5415)
!5415 = !DILexicalBlockFile(scope: !5412, file: !576, discriminator: 1)
!5416 = !DILocation(line: 251, column: 3, scope: !5412)
!5417 = !DILocation(line: 251, column: 3, scope: !5415)
!5418 = !DILocation(line: 256, column: 3, scope: !5412)
!5419 = !DILocation(line: 256, column: 3, scope: !5415)
!5420 = !DILocation(line: 258, column: 1, scope: !5412)
!5421 = distinct !DISubprogram(name: "xnmalloc", scope: !583, file: !583, line: 105, type: !5422, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5424)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!29, !30, !30}
!5424 = !{!5425, !5426}
!5425 = !DILocalVariable(name: "n", arg: 1, scope: !5421, file: !583, line: 105, type: !30)
!5426 = !DILocalVariable(name: "s", arg: 2, scope: !5421, file: !583, line: 105, type: !30)
!5427 = !DILocation(line: 105, column: 18, scope: !5421)
!5428 = !DILocation(line: 105, column: 28, scope: !5421)
!5429 = !DILocation(line: 107, column: 7, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5421, file: !583, line: 107, column: 7)
!5431 = !DILocation(line: 107, column: 7, scope: !5421)
!5432 = !DILocation(line: 108, column: 5, scope: !5430)
!5433 = !DILocation(line: 109, column: 21, scope: !5421)
!5434 = !DILocalVariable(name: "n", arg: 1, scope: !5435, file: !5436, line: 39, type: !30)
!5435 = distinct !DISubprogram(name: "xmalloc", scope: !5436, file: !5436, line: 39, type: !5437, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5439)
!5436 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5437 = !DISubroutineType(types: !5438)
!5438 = !{!29, !30}
!5439 = !{!5434, !5440}
!5440 = !DILocalVariable(name: "p", scope: !5435, file: !5436, line: 41, type: !29)
!5441 = !DILocation(line: 39, column: 17, scope: !5435, inlinedAt: !5442)
!5442 = distinct !DILocation(line: 109, column: 10, scope: !5421)
!5443 = !DILocation(line: 41, column: 13, scope: !5435, inlinedAt: !5442)
!5444 = !DILocation(line: 41, column: 9, scope: !5435, inlinedAt: !5442)
!5445 = !DILocation(line: 42, column: 8, scope: !5446, inlinedAt: !5442)
!5446 = distinct !DILexicalBlock(scope: !5435, file: !5436, line: 42, column: 7)
!5447 = !DILocation(line: 42, column: 15, scope: !5448, inlinedAt: !5442)
!5448 = !DILexicalBlockFile(scope: !5446, file: !5436, discriminator: 1)
!5449 = !DILocation(line: 42, column: 10, scope: !5446, inlinedAt: !5442)
!5450 = !DILocation(line: 43, column: 5, scope: !5446, inlinedAt: !5442)
!5451 = !DILocation(line: 109, column: 3, scope: !5421)
!5452 = !DILocation(line: 39, column: 17, scope: !5435)
!5453 = !DILocation(line: 41, column: 13, scope: !5435)
!5454 = !DILocation(line: 41, column: 9, scope: !5435)
!5455 = !DILocation(line: 42, column: 8, scope: !5446)
!5456 = !DILocation(line: 42, column: 15, scope: !5448)
!5457 = !DILocation(line: 42, column: 10, scope: !5446)
!5458 = !DILocation(line: 43, column: 5, scope: !5446)
!5459 = !DILocation(line: 44, column: 3, scope: !5435)
!5460 = distinct !DISubprogram(name: "xnrealloc", scope: !583, file: !583, line: 118, type: !5461, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5463)
!5461 = !DISubroutineType(types: !5462)
!5462 = !{!29, !29, !30, !30}
!5463 = !{!5464, !5465, !5466}
!5464 = !DILocalVariable(name: "p", arg: 1, scope: !5460, file: !583, line: 118, type: !29)
!5465 = !DILocalVariable(name: "n", arg: 2, scope: !5460, file: !583, line: 118, type: !30)
!5466 = !DILocalVariable(name: "s", arg: 3, scope: !5460, file: !583, line: 118, type: !30)
!5467 = !DILocation(line: 118, column: 18, scope: !5460)
!5468 = !DILocation(line: 118, column: 28, scope: !5460)
!5469 = !DILocation(line: 118, column: 38, scope: !5460)
!5470 = !DILocation(line: 120, column: 7, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5460, file: !583, line: 120, column: 7)
!5472 = !DILocation(line: 120, column: 7, scope: !5460)
!5473 = !DILocation(line: 121, column: 5, scope: !5471)
!5474 = !DILocation(line: 122, column: 25, scope: !5460)
!5475 = !DILocalVariable(name: "p", arg: 1, scope: !5476, file: !5436, line: 51, type: !29)
!5476 = distinct !DISubprogram(name: "xrealloc", scope: !5436, file: !5436, line: 51, type: !5477, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5479)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{!29, !29, !30}
!5479 = !{!5475, !5480}
!5480 = !DILocalVariable(name: "n", arg: 2, scope: !5476, file: !5436, line: 51, type: !30)
!5481 = !DILocation(line: 51, column: 17, scope: !5476, inlinedAt: !5482)
!5482 = distinct !DILocation(line: 122, column: 10, scope: !5460)
!5483 = !DILocation(line: 51, column: 27, scope: !5476, inlinedAt: !5482)
!5484 = !DILocation(line: 53, column: 8, scope: !5485, inlinedAt: !5482)
!5485 = distinct !DILexicalBlock(scope: !5476, file: !5436, line: 53, column: 7)
!5486 = !DILocation(line: 53, column: 13, scope: !5487, inlinedAt: !5482)
!5487 = !DILexicalBlockFile(scope: !5485, file: !5436, discriminator: 1)
!5488 = !DILocation(line: 53, column: 10, scope: !5485, inlinedAt: !5482)
!5489 = !DILocation(line: 57, column: 7, scope: !5490, inlinedAt: !5482)
!5490 = distinct !DILexicalBlock(scope: !5485, file: !5436, line: 54, column: 5)
!5491 = !DILocation(line: 58, column: 7, scope: !5490, inlinedAt: !5482)
!5492 = !DILocation(line: 61, column: 7, scope: !5476, inlinedAt: !5482)
!5493 = !DILocation(line: 62, column: 8, scope: !5494, inlinedAt: !5482)
!5494 = distinct !DILexicalBlock(scope: !5476, file: !5436, line: 62, column: 7)
!5495 = !DILocation(line: 62, column: 13, scope: !5496, inlinedAt: !5482)
!5496 = !DILexicalBlockFile(scope: !5494, file: !5436, discriminator: 1)
!5497 = !DILocation(line: 62, column: 10, scope: !5494, inlinedAt: !5482)
!5498 = !DILocation(line: 63, column: 5, scope: !5494, inlinedAt: !5482)
!5499 = !DILocation(line: 122, column: 3, scope: !5460)
!5500 = !DILocation(line: 51, column: 17, scope: !5476)
!5501 = !DILocation(line: 51, column: 27, scope: !5476)
!5502 = !DILocation(line: 53, column: 8, scope: !5485)
!5503 = !DILocation(line: 53, column: 13, scope: !5487)
!5504 = !DILocation(line: 53, column: 10, scope: !5485)
!5505 = !DILocation(line: 57, column: 7, scope: !5490)
!5506 = !DILocation(line: 58, column: 7, scope: !5490)
!5507 = !DILocation(line: 61, column: 7, scope: !5476)
!5508 = !DILocation(line: 62, column: 8, scope: !5494)
!5509 = !DILocation(line: 62, column: 13, scope: !5496)
!5510 = !DILocation(line: 62, column: 10, scope: !5494)
!5511 = !DILocation(line: 63, column: 5, scope: !5494)
!5512 = !DILocation(line: 65, column: 1, scope: !5476)
!5513 = !DILocation(line: 180, column: 19, scope: !584)
!5514 = !DILocation(line: 180, column: 30, scope: !584)
!5515 = !DILocation(line: 180, column: 41, scope: !584)
!5516 = !DILocation(line: 182, column: 14, scope: !584)
!5517 = !DILocation(line: 182, column: 10, scope: !584)
!5518 = !DILocation(line: 184, column: 9, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !584, file: !583, line: 184, column: 7)
!5520 = !DILocation(line: 184, column: 7, scope: !584)
!5521 = !DILocation(line: 186, column: 13, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !583, line: 186, column: 11)
!5523 = distinct !DILexicalBlock(scope: !5519, file: !583, line: 185, column: 5)
!5524 = !DILocation(line: 186, column: 11, scope: !5523)
!5525 = !DILocation(line: 194, column: 30, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5522, file: !583, line: 187, column: 9)
!5527 = !DILocation(line: 195, column: 16, scope: !5526)
!5528 = !DILocation(line: 195, column: 13, scope: !5526)
!5529 = !DILocation(line: 196, column: 9, scope: !5526)
!5530 = !DILocation(line: 204, column: 69, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5532, file: !583, line: 204, column: 11)
!5532 = distinct !DILexicalBlock(scope: !5519, file: !583, line: 199, column: 5)
!5533 = !DILocation(line: 205, column: 11, scope: !5531)
!5534 = !DILocation(line: 204, column: 11, scope: !5532)
!5535 = !DILocation(line: 206, column: 9, scope: !5531)
!5536 = !DILocation(line: 210, column: 7, scope: !584)
!5537 = !DILocation(line: 211, column: 25, scope: !584)
!5538 = !DILocation(line: 51, column: 17, scope: !5476, inlinedAt: !5539)
!5539 = distinct !DILocation(line: 211, column: 10, scope: !584)
!5540 = !DILocation(line: 51, column: 27, scope: !5476, inlinedAt: !5539)
!5541 = !DILocation(line: 53, column: 10, scope: !5485, inlinedAt: !5539)
!5542 = !DILocation(line: 207, column: 14, scope: !5532)
!5543 = !DILocation(line: 207, column: 18, scope: !5532)
!5544 = !DILocation(line: 207, column: 9, scope: !5532)
!5545 = !DILocation(line: 53, column: 8, scope: !5485, inlinedAt: !5539)
!5546 = !DILocation(line: 57, column: 7, scope: !5490, inlinedAt: !5539)
!5547 = !DILocation(line: 58, column: 7, scope: !5490, inlinedAt: !5539)
!5548 = !DILocation(line: 61, column: 7, scope: !5476, inlinedAt: !5539)
!5549 = !DILocation(line: 62, column: 8, scope: !5494, inlinedAt: !5539)
!5550 = !DILocation(line: 62, column: 13, scope: !5496, inlinedAt: !5539)
!5551 = !DILocation(line: 62, column: 10, scope: !5494, inlinedAt: !5539)
!5552 = !DILocation(line: 63, column: 5, scope: !5494, inlinedAt: !5539)
!5553 = !DILocation(line: 211, column: 3, scope: !584)
!5554 = distinct !DISubprogram(name: "xcharalloc", scope: !583, file: !583, line: 220, type: !4385, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5555)
!5555 = !{!5556}
!5556 = !DILocalVariable(name: "n", arg: 1, scope: !5554, file: !583, line: 220, type: !30)
!5557 = !DILocation(line: 220, column: 20, scope: !5554)
!5558 = !DILocation(line: 39, column: 17, scope: !5435, inlinedAt: !5559)
!5559 = distinct !DILocation(line: 222, column: 10, scope: !5554)
!5560 = !DILocation(line: 41, column: 13, scope: !5435, inlinedAt: !5559)
!5561 = !DILocation(line: 41, column: 9, scope: !5435, inlinedAt: !5559)
!5562 = !DILocation(line: 42, column: 8, scope: !5446, inlinedAt: !5559)
!5563 = !DILocation(line: 42, column: 15, scope: !5448, inlinedAt: !5559)
!5564 = !DILocation(line: 42, column: 10, scope: !5446, inlinedAt: !5559)
!5565 = !DILocation(line: 43, column: 5, scope: !5446, inlinedAt: !5559)
!5566 = !DILocation(line: 222, column: 3, scope: !5554)
!5567 = distinct !DISubprogram(name: "x2realloc", scope: !5436, file: !5436, line: 74, type: !5568, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5570)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!29, !29, !587}
!5570 = !{!5571, !5572}
!5571 = !DILocalVariable(name: "p", arg: 1, scope: !5567, file: !5436, line: 74, type: !29)
!5572 = !DILocalVariable(name: "pn", arg: 2, scope: !5567, file: !5436, line: 74, type: !587)
!5573 = !DILocation(line: 74, column: 18, scope: !5567)
!5574 = !DILocation(line: 74, column: 29, scope: !5567)
!5575 = !DILocation(line: 180, column: 19, scope: !584, inlinedAt: !5576)
!5576 = distinct !DILocation(line: 76, column: 10, scope: !5567)
!5577 = !DILocation(line: 180, column: 30, scope: !584, inlinedAt: !5576)
!5578 = !DILocation(line: 180, column: 41, scope: !584, inlinedAt: !5576)
!5579 = !DILocation(line: 182, column: 14, scope: !584, inlinedAt: !5576)
!5580 = !DILocation(line: 182, column: 10, scope: !584, inlinedAt: !5576)
!5581 = !DILocation(line: 184, column: 9, scope: !5519, inlinedAt: !5576)
!5582 = !DILocation(line: 184, column: 7, scope: !584, inlinedAt: !5576)
!5583 = !DILocation(line: 186, column: 13, scope: !5522, inlinedAt: !5576)
!5584 = !DILocation(line: 186, column: 11, scope: !5523, inlinedAt: !5576)
!5585 = !DILocation(line: 210, column: 7, scope: !584, inlinedAt: !5576)
!5586 = !DILocation(line: 51, column: 17, scope: !5476, inlinedAt: !5587)
!5587 = distinct !DILocation(line: 211, column: 10, scope: !584, inlinedAt: !5576)
!5588 = !DILocation(line: 51, column: 27, scope: !5476, inlinedAt: !5587)
!5589 = !DILocation(line: 53, column: 10, scope: !5485, inlinedAt: !5587)
!5590 = !DILocation(line: 205, column: 11, scope: !5531, inlinedAt: !5576)
!5591 = !DILocation(line: 204, column: 11, scope: !5532, inlinedAt: !5576)
!5592 = !DILocation(line: 206, column: 9, scope: !5531, inlinedAt: !5576)
!5593 = !DILocation(line: 207, column: 14, scope: !5532, inlinedAt: !5576)
!5594 = !DILocation(line: 207, column: 18, scope: !5532, inlinedAt: !5576)
!5595 = !DILocation(line: 207, column: 9, scope: !5532, inlinedAt: !5576)
!5596 = !DILocation(line: 53, column: 8, scope: !5485, inlinedAt: !5587)
!5597 = !DILocation(line: 57, column: 7, scope: !5490, inlinedAt: !5587)
!5598 = !DILocation(line: 58, column: 7, scope: !5490, inlinedAt: !5587)
!5599 = !DILocation(line: 61, column: 7, scope: !5476, inlinedAt: !5587)
!5600 = !DILocation(line: 62, column: 8, scope: !5494, inlinedAt: !5587)
!5601 = !DILocation(line: 62, column: 13, scope: !5496, inlinedAt: !5587)
!5602 = !DILocation(line: 62, column: 10, scope: !5494, inlinedAt: !5587)
!5603 = !DILocation(line: 63, column: 5, scope: !5494, inlinedAt: !5587)
!5604 = !DILocation(line: 76, column: 3, scope: !5567)
!5605 = distinct !DISubprogram(name: "xzalloc", scope: !5436, file: !5436, line: 84, type: !5437, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5606)
!5606 = !{!5607}
!5607 = !DILocalVariable(name: "s", arg: 1, scope: !5605, file: !5436, line: 84, type: !30)
!5608 = !DILocation(line: 84, column: 17, scope: !5605)
!5609 = !DILocation(line: 39, column: 17, scope: !5435, inlinedAt: !5610)
!5610 = distinct !DILocation(line: 86, column: 18, scope: !5605)
!5611 = !DILocation(line: 41, column: 13, scope: !5435, inlinedAt: !5610)
!5612 = !DILocation(line: 41, column: 9, scope: !5435, inlinedAt: !5610)
!5613 = !DILocation(line: 42, column: 8, scope: !5446, inlinedAt: !5610)
!5614 = !DILocation(line: 42, column: 15, scope: !5448, inlinedAt: !5610)
!5615 = !DILocation(line: 42, column: 10, scope: !5446, inlinedAt: !5610)
!5616 = !DILocation(line: 43, column: 5, scope: !5446, inlinedAt: !5610)
!5617 = !DILocation(line: 86, column: 10, scope: !5605)
!5618 = !DILocation(line: 86, column: 3, scope: !5605)
!5619 = distinct !DISubprogram(name: "xcalloc", scope: !5436, file: !5436, line: 93, type: !5422, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5620)
!5620 = !{!5621, !5622, !5623}
!5621 = !DILocalVariable(name: "n", arg: 1, scope: !5619, file: !5436, line: 93, type: !30)
!5622 = !DILocalVariable(name: "s", arg: 2, scope: !5619, file: !5436, line: 93, type: !30)
!5623 = !DILocalVariable(name: "p", scope: !5619, file: !5436, line: 95, type: !29)
!5624 = !DILocation(line: 93, column: 17, scope: !5619)
!5625 = !DILocation(line: 93, column: 27, scope: !5619)
!5626 = !DILocation(line: 100, column: 7, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5619, file: !5436, line: 100, column: 7)
!5628 = !DILocation(line: 101, column: 7, scope: !5627)
!5629 = !DILocation(line: 101, column: 18, scope: !5630)
!5630 = !DILexicalBlockFile(scope: !5627, file: !5436, discriminator: 1)
!5631 = !DILocation(line: 95, column: 9, scope: !5619)
!5632 = !DILocation(line: 101, column: 16, scope: !5630)
!5633 = !DILocation(line: 100, column: 7, scope: !5634)
!5634 = !DILexicalBlockFile(scope: !5619, file: !5436, discriminator: 1)
!5635 = !DILocation(line: 102, column: 5, scope: !5627)
!5636 = !DILocation(line: 103, column: 3, scope: !5619)
!5637 = distinct !DISubprogram(name: "xmemdup", scope: !5436, file: !5436, line: 111, type: !5638, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5640)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!29, !33, !30}
!5640 = !{!5641, !5642}
!5641 = !DILocalVariable(name: "p", arg: 1, scope: !5637, file: !5436, line: 111, type: !33)
!5642 = !DILocalVariable(name: "s", arg: 2, scope: !5637, file: !5436, line: 111, type: !30)
!5643 = !DILocation(line: 111, column: 22, scope: !5637)
!5644 = !DILocation(line: 111, column: 32, scope: !5637)
!5645 = !DILocation(line: 39, column: 17, scope: !5435, inlinedAt: !5646)
!5646 = distinct !DILocation(line: 113, column: 18, scope: !5637)
!5647 = !DILocation(line: 41, column: 13, scope: !5435, inlinedAt: !5646)
!5648 = !DILocation(line: 41, column: 9, scope: !5435, inlinedAt: !5646)
!5649 = !DILocation(line: 42, column: 8, scope: !5446, inlinedAt: !5646)
!5650 = !DILocation(line: 42, column: 15, scope: !5448, inlinedAt: !5646)
!5651 = !DILocation(line: 42, column: 10, scope: !5446, inlinedAt: !5646)
!5652 = !DILocation(line: 43, column: 5, scope: !5446, inlinedAt: !5646)
!5653 = !DILocation(line: 113, column: 10, scope: !5637)
!5654 = !DILocation(line: 113, column: 3, scope: !5637)
!5655 = distinct !DISubprogram(name: "xstrdup", scope: !5436, file: !5436, line: 119, type: !4590, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !579, variables: !5656)
!5656 = !{!5657}
!5657 = !DILocalVariable(name: "string", arg: 1, scope: !5655, file: !5436, line: 119, type: !38)
!5658 = !DILocation(line: 119, column: 22, scope: !5655)
!5659 = !DILocation(line: 121, column: 27, scope: !5655)
!5660 = !DILocation(line: 121, column: 43, scope: !5655)
!5661 = !DILocation(line: 111, column: 22, scope: !5637, inlinedAt: !5662)
!5662 = distinct !DILocation(line: 121, column: 10, scope: !5663)
!5663 = !DILexicalBlockFile(scope: !5655, file: !5436, discriminator: 1)
!5664 = !DILocation(line: 111, column: 32, scope: !5637, inlinedAt: !5662)
!5665 = !DILocation(line: 39, column: 17, scope: !5435, inlinedAt: !5666)
!5666 = distinct !DILocation(line: 113, column: 18, scope: !5637, inlinedAt: !5662)
!5667 = !DILocation(line: 41, column: 13, scope: !5435, inlinedAt: !5666)
!5668 = !DILocation(line: 41, column: 9, scope: !5435, inlinedAt: !5666)
!5669 = !DILocation(line: 42, column: 8, scope: !5446, inlinedAt: !5666)
!5670 = !DILocation(line: 42, column: 15, scope: !5448, inlinedAt: !5666)
!5671 = !DILocation(line: 42, column: 10, scope: !5446, inlinedAt: !5666)
!5672 = !DILocation(line: 43, column: 5, scope: !5446, inlinedAt: !5666)
!5673 = !DILocation(line: 113, column: 10, scope: !5637, inlinedAt: !5662)
!5674 = !DILocation(line: 121, column: 3, scope: !5655)
!5675 = distinct !DISubprogram(name: "xalloc_die", scope: !5676, file: !5676, line: 32, type: !1306, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !596, variables: !93)
!5676 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5677 = !DILocation(line: 34, column: 10, scope: !5675)
!5678 = !DILocation(line: 34, column: 33, scope: !5675)
!5679 = !DILocation(line: 34, column: 3, scope: !5680)
!5680 = !DILexicalBlockFile(scope: !5675, file: !5676, discriminator: 1)
!5681 = !DILocation(line: 40, column: 3, scope: !5675)
!5682 = distinct !DISubprogram(name: "xgetcwd", scope: !5683, file: !5683, line: 35, type: !5684, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !5685)
!5683 = !DIFile(filename: "lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5684 = !DISubroutineType(types: !613)
!5685 = !{!5686}
!5686 = !DILocalVariable(name: "cwd", scope: !5682, file: !5683, line: 37, type: !27)
!5687 = !DILocation(line: 37, column: 15, scope: !5682)
!5688 = !DILocation(line: 37, column: 9, scope: !5682)
!5689 = !DILocation(line: 38, column: 9, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5682, file: !5683, line: 38, column: 7)
!5691 = !DILocation(line: 38, column: 13, scope: !5690)
!5692 = !DILocation(line: 38, column: 16, scope: !5693)
!5693 = !DILexicalBlockFile(scope: !5690, file: !5683, discriminator: 1)
!5694 = !DILocation(line: 38, column: 22, scope: !5693)
!5695 = !DILocation(line: 38, column: 7, scope: !5696)
!5696 = !DILexicalBlockFile(scope: !5682, file: !5683, discriminator: 1)
!5697 = !DILocation(line: 39, column: 5, scope: !5690)
!5698 = !DILocation(line: 40, column: 3, scope: !5682)
!5699 = distinct !DISubprogram(name: "rpl_calloc", scope: !5700, file: !5700, line: 42, type: !5422, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !600, variables: !5701)
!5700 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5701 = !{!5702, !5703, !5704, !5705}
!5702 = !DILocalVariable(name: "n", arg: 1, scope: !5699, file: !5700, line: 42, type: !30)
!5703 = !DILocalVariable(name: "s", arg: 2, scope: !5699, file: !5700, line: 42, type: !30)
!5704 = !DILocalVariable(name: "result", scope: !5699, file: !5700, line: 44, type: !29)
!5705 = !DILocalVariable(name: "bytes", scope: !5706, file: !5700, line: 56, type: !30)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !5700, line: 53, column: 5)
!5707 = distinct !DILexicalBlock(scope: !5699, file: !5700, line: 47, column: 7)
!5708 = !DILocation(line: 42, column: 20, scope: !5699)
!5709 = !DILocation(line: 42, column: 30, scope: !5699)
!5710 = !DILocation(line: 47, column: 9, scope: !5707)
!5711 = !DILocation(line: 47, column: 19, scope: !5712)
!5712 = !DILexicalBlockFile(scope: !5707, file: !5700, discriminator: 1)
!5713 = !DILocation(line: 47, column: 14, scope: !5707)
!5714 = !DILocation(line: 56, column: 24, scope: !5706)
!5715 = !DILocation(line: 56, column: 14, scope: !5706)
!5716 = !DILocation(line: 57, column: 17, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5706, file: !5700, line: 57, column: 11)
!5718 = !DILocation(line: 57, column: 21, scope: !5717)
!5719 = !DILocation(line: 57, column: 11, scope: !5706)
!5720 = !DILocation(line: 59, column: 11, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5717, file: !5700, line: 58, column: 9)
!5722 = !DILocation(line: 59, column: 17, scope: !5721)
!5723 = !DILocation(line: 65, column: 12, scope: !5699)
!5724 = !DILocation(line: 44, column: 9, scope: !5699)
!5725 = !DILocation(line: 72, column: 3, scope: !5699)
!5726 = !DILocation(line: 73, column: 1, scope: !5699)
!5727 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5728, file: !5728, line: 334, type: !5729, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !602, variables: !5743)
!5728 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!30, !5731, !38, !30, !5732}
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3357, line: 107, baseType: !5734)
!5734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3357, line: 95, baseType: !5735)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3357, line: 83, size: 64, elements: !5736)
!5736 = !{!5737, !5738}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5735, file: !3357, line: 85, baseType: !73, size: 32)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5735, file: !3357, line: 94, baseType: !5739, size: 32, offset: 32)
!5739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5735, file: !3357, line: 86, size: 32, elements: !5740)
!5740 = !{!5741, !5742}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5739, file: !3357, line: 89, baseType: !178, size: 32)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5739, file: !3357, line: 93, baseType: !3367, size: 32)
!5743 = !{!5744, !5745, !5746, !5747, !5748, !5749, !5750}
!5744 = !DILocalVariable(name: "pwc", arg: 1, scope: !5727, file: !5728, line: 334, type: !5731)
!5745 = !DILocalVariable(name: "s", arg: 2, scope: !5727, file: !5728, line: 334, type: !38)
!5746 = !DILocalVariable(name: "n", arg: 3, scope: !5727, file: !5728, line: 334, type: !30)
!5747 = !DILocalVariable(name: "ps", arg: 4, scope: !5727, file: !5728, line: 334, type: !5732)
!5748 = !DILocalVariable(name: "ret", scope: !5727, file: !5728, line: 336, type: !30)
!5749 = !DILocalVariable(name: "wc", scope: !5727, file: !5728, line: 337, type: !3372)
!5750 = !DILocalVariable(name: "uc", scope: !5751, file: !5728, line: 398, type: !37)
!5751 = distinct !DILexicalBlock(scope: !5752, file: !5728, line: 397, column: 5)
!5752 = distinct !DILexicalBlock(scope: !5727, file: !5728, line: 396, column: 7)
!5753 = !DILocation(line: 334, column: 23, scope: !5727)
!5754 = !DILocation(line: 334, column: 40, scope: !5727)
!5755 = !DILocation(line: 334, column: 50, scope: !5727)
!5756 = !DILocation(line: 334, column: 64, scope: !5727)
!5757 = !DILocation(line: 337, column: 3, scope: !5727)
!5758 = !DILocation(line: 353, column: 9, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5727, file: !5728, line: 353, column: 7)
!5760 = !DILocation(line: 353, column: 7, scope: !5727)
!5761 = !DILocation(line: 388, column: 9, scope: !5727)
!5762 = !DILocation(line: 336, column: 10, scope: !5727)
!5763 = !DILocation(line: 396, column: 19, scope: !5752)
!5764 = !DILocation(line: 396, column: 31, scope: !5765)
!5765 = !DILexicalBlockFile(scope: !5752, file: !5728, discriminator: 1)
!5766 = !DILocation(line: 396, column: 26, scope: !5752)
!5767 = !DILocation(line: 396, column: 41, scope: !5768)
!5768 = !DILexicalBlockFile(scope: !5752, file: !5728, discriminator: 2)
!5769 = !DILocation(line: 396, column: 7, scope: !5770)
!5770 = !DILexicalBlockFile(scope: !5727, file: !5728, discriminator: 2)
!5771 = !DILocation(line: 398, column: 26, scope: !5751)
!5772 = !DILocation(line: 398, column: 21, scope: !5751)
!5773 = !DILocation(line: 399, column: 14, scope: !5751)
!5774 = !DILocation(line: 399, column: 12, scope: !5751)
!5775 = !DILocation(line: 405, column: 1, scope: !5727)
!5776 = distinct !DISubprogram(name: "close_stream", scope: !5777, file: !5777, line: 56, type: !5778, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !5820)
!5777 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!73, !5780}
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1617, line: 49, baseType: !5782)
!5782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1619, line: 241, size: 1728, elements: !5783)
!5783 = !{!5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5782, file: !1619, line: 242, baseType: !73, size: 32)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5782, file: !1619, line: 247, baseType: !27, size: 64, offset: 64)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5782, file: !1619, line: 248, baseType: !27, size: 64, offset: 128)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5782, file: !1619, line: 249, baseType: !27, size: 64, offset: 192)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5782, file: !1619, line: 250, baseType: !27, size: 64, offset: 256)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5782, file: !1619, line: 251, baseType: !27, size: 64, offset: 320)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5782, file: !1619, line: 252, baseType: !27, size: 64, offset: 384)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5782, file: !1619, line: 253, baseType: !27, size: 64, offset: 448)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5782, file: !1619, line: 254, baseType: !27, size: 64, offset: 512)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5782, file: !1619, line: 256, baseType: !27, size: 64, offset: 576)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5782, file: !1619, line: 257, baseType: !27, size: 64, offset: 640)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5782, file: !1619, line: 258, baseType: !27, size: 64, offset: 704)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5782, file: !1619, line: 260, baseType: !5797, size: 64, offset: 768)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1619, line: 156, size: 192, elements: !5799)
!5799 = !{!5800, !5801, !5803}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5798, file: !1619, line: 157, baseType: !5797, size: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5798, file: !1619, line: 158, baseType: !5802, size: 64, offset: 64)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5782, size: 64)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5798, file: !1619, line: 162, baseType: !73, size: 32, offset: 128)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5782, file: !1619, line: 262, baseType: !5802, size: 64, offset: 832)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5782, file: !1619, line: 264, baseType: !73, size: 32, offset: 896)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5782, file: !1619, line: 268, baseType: !73, size: 32, offset: 928)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5782, file: !1619, line: 270, baseType: !944, size: 64, offset: 960)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5782, file: !1619, line: 274, baseType: !161, size: 16, offset: 1024)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5782, file: !1619, line: 275, baseType: !1647, size: 8, offset: 1040)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5782, file: !1619, line: 276, baseType: !1649, size: 8, offset: 1048)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5782, file: !1619, line: 280, baseType: !1653, size: 64, offset: 1088)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5782, file: !1619, line: 289, baseType: !1656, size: 64, offset: 1152)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5782, file: !1619, line: 297, baseType: !29, size: 64, offset: 1216)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5782, file: !1619, line: 298, baseType: !29, size: 64, offset: 1280)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5782, file: !1619, line: 299, baseType: !29, size: 64, offset: 1344)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5782, file: !1619, line: 300, baseType: !29, size: 64, offset: 1408)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5782, file: !1619, line: 302, baseType: !30, size: 64, offset: 1472)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5782, file: !1619, line: 303, baseType: !73, size: 32, offset: 1536)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5782, file: !1619, line: 305, baseType: !1664, size: 160, offset: 1568)
!5820 = !{!5821, !5822, !5824, !5825}
!5821 = !DILocalVariable(name: "stream", arg: 1, scope: !5776, file: !5777, line: 56, type: !5780)
!5822 = !DILocalVariable(name: "some_pending", scope: !5776, file: !5777, line: 58, type: !5823)
!5823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!5824 = !DILocalVariable(name: "prev_fail", scope: !5776, file: !5777, line: 59, type: !5823)
!5825 = !DILocalVariable(name: "fclose_fail", scope: !5776, file: !5777, line: 60, type: !5823)
!5826 = !DILocation(line: 56, column: 21, scope: !5776)
!5827 = !DILocation(line: 58, column: 30, scope: !5776)
!5828 = !DILocalVariable(name: "__stream", arg: 1, scope: !5829, file: !782, line: 132, type: !5780)
!5829 = distinct !DISubprogram(name: "ferror_unlocked", scope: !782, file: !782, line: 132, type: !5778, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !5830)
!5830 = !{!5828}
!5831 = !DILocation(line: 132, column: 1, scope: !5829, inlinedAt: !5832)
!5832 = distinct !DILocation(line: 59, column: 27, scope: !5776)
!5833 = !DILocation(line: 134, column: 10, scope: !5829, inlinedAt: !5832)
!5834 = !{!791, !737, i64 0}
!5835 = !DILocation(line: 59, column: 43, scope: !5776)
!5836 = !DILocation(line: 60, column: 29, scope: !5776)
!5837 = !DILocation(line: 60, column: 45, scope: !5776)
!5838 = !DILocation(line: 70, column: 17, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5776, file: !5777, line: 70, column: 7)
!5840 = !DILocation(line: 70, column: 33, scope: !5841)
!5841 = !DILexicalBlockFile(scope: !5839, file: !5777, discriminator: 1)
!5842 = !DILocation(line: 70, column: 53, scope: !5843)
!5843 = !DILexicalBlockFile(scope: !5839, file: !5777, discriminator: 3)
!5844 = !DILocation(line: 70, column: 7, scope: !5845)
!5845 = !DILexicalBlockFile(scope: !5776, file: !5777, discriminator: 3)
!5846 = !DILocation(line: 72, column: 11, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5839, file: !5777, line: 71, column: 5)
!5848 = !DILocation(line: 73, column: 9, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5847, file: !5777, line: 72, column: 11)
!5850 = !DILocation(line: 73, column: 15, scope: !5849)
!5851 = !DILocation(line: 78, column: 1, scope: !5776)
!5852 = distinct !DISubprogram(name: "dir_name", scope: !5853, file: !5853, line: 32, type: !4590, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !5854)
!5853 = !DIFile(filename: "lib/dirname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5854 = !{!5855, !5856}
!5855 = !DILocalVariable(name: "file", arg: 1, scope: !5852, file: !5853, line: 32, type: !38)
!5856 = !DILocalVariable(name: "result", scope: !5852, file: !5853, line: 34, type: !27)
!5857 = !DILocation(line: 32, column: 23, scope: !5852)
!5858 = !DILocation(line: 34, column: 18, scope: !5852)
!5859 = !DILocation(line: 34, column: 9, scope: !5852)
!5860 = !DILocation(line: 35, column: 8, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5852, file: !5853, line: 35, column: 7)
!5862 = !DILocation(line: 35, column: 7, scope: !5852)
!5863 = !DILocation(line: 36, column: 5, scope: !5861)
!5864 = !DILocation(line: 37, column: 3, scope: !5852)
!5865 = distinct !DISubprogram(name: "dir_len", scope: !5866, file: !5866, line: 32, type: !5867, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !5869)
!5866 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5867 = !DISubroutineType(types: !5868)
!5868 = !{!30, !38}
!5869 = !{!5870, !5871, !5872}
!5870 = !DILocalVariable(name: "file", arg: 1, scope: !5865, file: !5866, line: 32, type: !38)
!5871 = !DILocalVariable(name: "prefix_length", scope: !5865, file: !5866, line: 34, type: !30)
!5872 = !DILocalVariable(name: "length", scope: !5865, file: !5866, line: 35, type: !30)
!5873 = !DILocation(line: 32, column: 22, scope: !5865)
!5874 = !DILocation(line: 34, column: 10, scope: !5865)
!5875 = !DILocation(line: 41, column: 24, scope: !5865)
!5876 = !DILocation(line: 38, column: 21, scope: !5877)
!5877 = !DILexicalBlockFile(scope: !5865, file: !5866, discriminator: 2)
!5878 = !DILocation(line: 48, column: 17, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5865, file: !5866, line: 48, column: 3)
!5880 = !DILocation(line: 48, column: 39, scope: !5879)
!5881 = !DILocation(line: 35, column: 10, scope: !5865)
!5882 = !DILocation(line: 48, column: 8, scope: !5879)
!5883 = !DILocation(line: 49, column: 22, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5879, file: !5866, line: 48, column: 3)
!5885 = !DILocation(line: 48, column: 3, scope: !5886)
!5886 = !DILexicalBlockFile(scope: !5879, file: !5866, discriminator: 1)
!5887 = !DILocation(line: 50, column: 11, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5884, file: !5866, line: 50, column: 9)
!5889 = !DILocation(line: 50, column: 9, scope: !5884)
!5890 = distinct !{!5890, !5891, !5892}
!5891 = !DILocation(line: 48, column: 3, scope: !5879)
!5892 = !DILocation(line: 51, column: 7, scope: !5879)
!5893 = !DILocation(line: 52, column: 3, scope: !5865)
!5894 = distinct !DISubprogram(name: "mdir_name", scope: !5866, file: !5866, line: 71, type: !4590, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !609, variables: !5895)
!5895 = !{!5896, !5897, !5898, !5899}
!5896 = !DILocalVariable(name: "file", arg: 1, scope: !5894, file: !5866, line: 71, type: !38)
!5897 = !DILocalVariable(name: "length", scope: !5894, file: !5866, line: 73, type: !30)
!5898 = !DILocalVariable(name: "append_dot", scope: !5894, file: !5866, line: 74, type: !43)
!5899 = !DILocalVariable(name: "dir", scope: !5894, file: !5866, line: 78, type: !27)
!5900 = !DILocation(line: 71, column: 24, scope: !5894)
!5901 = !DILocation(line: 32, column: 22, scope: !5865, inlinedAt: !5902)
!5902 = distinct !DILocation(line: 73, column: 19, scope: !5894)
!5903 = !DILocation(line: 34, column: 10, scope: !5865, inlinedAt: !5902)
!5904 = !DILocation(line: 41, column: 24, scope: !5865, inlinedAt: !5902)
!5905 = !DILocation(line: 38, column: 21, scope: !5877, inlinedAt: !5902)
!5906 = !DILocation(line: 48, column: 17, scope: !5879, inlinedAt: !5902)
!5907 = !DILocation(line: 48, column: 39, scope: !5879, inlinedAt: !5902)
!5908 = !DILocation(line: 35, column: 10, scope: !5865, inlinedAt: !5902)
!5909 = !DILocation(line: 48, column: 8, scope: !5879, inlinedAt: !5902)
!5910 = !DILocation(line: 49, column: 22, scope: !5884, inlinedAt: !5902)
!5911 = !DILocation(line: 48, column: 3, scope: !5886, inlinedAt: !5902)
!5912 = !DILocation(line: 50, column: 11, scope: !5888, inlinedAt: !5902)
!5913 = !DILocation(line: 50, column: 9, scope: !5884, inlinedAt: !5902)
!5914 = !DILocation(line: 73, column: 10, scope: !5894)
!5915 = !DILocation(line: 74, column: 29, scope: !5894)
!5916 = !DILocation(line: 78, column: 32, scope: !5894)
!5917 = !DILocation(line: 78, column: 30, scope: !5894)
!5918 = !DILocation(line: 78, column: 43, scope: !5894)
!5919 = !DILocation(line: 78, column: 15, scope: !5894)
!5920 = !DILocation(line: 78, column: 9, scope: !5894)
!5921 = !DILocation(line: 79, column: 8, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5894, file: !5866, line: 79, column: 7)
!5923 = !DILocation(line: 79, column: 7, scope: !5894)
!5924 = !DILocation(line: 81, column: 3, scope: !5894)
!5925 = !DILocation(line: 82, column: 7, scope: !5894)
!5926 = !DILocation(line: 83, column: 19, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5894, file: !5866, line: 82, column: 7)
!5928 = !DILocation(line: 83, column: 5, scope: !5927)
!5929 = !DILocation(line: 84, column: 3, scope: !5894)
!5930 = !DILocation(line: 84, column: 15, scope: !5894)
!5931 = !DILocation(line: 85, column: 3, scope: !5894)
!5932 = !DILocation(line: 86, column: 1, scope: !5894)
!5933 = distinct !DISubprogram(name: "last_component", scope: !5934, file: !5934, line: 30, type: !4590, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !5935)
!5934 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5935 = !{!5936, !5937, !5938, !5939}
!5936 = !DILocalVariable(name: "name", arg: 1, scope: !5933, file: !5934, line: 30, type: !38)
!5937 = !DILocalVariable(name: "base", scope: !5933, file: !5934, line: 32, type: !38)
!5938 = !DILocalVariable(name: "p", scope: !5933, file: !5934, line: 33, type: !38)
!5939 = !DILocalVariable(name: "saw_slash", scope: !5933, file: !5934, line: 34, type: !43)
!5940 = !DILocation(line: 30, column: 29, scope: !5933)
!5941 = !DILocation(line: 32, column: 15, scope: !5933)
!5942 = !DILocation(line: 34, column: 8, scope: !5933)
!5943 = !DILocation(line: 36, column: 3, scope: !5933)
!5944 = !DILocation(line: 36, column: 10, scope: !5945)
!5945 = !DILexicalBlockFile(scope: !5933, file: !5934, discriminator: 1)
!5946 = !DILocation(line: 37, column: 9, scope: !5933)
!5947 = !DILocation(line: 36, column: 3, scope: !5945)
!5948 = distinct !{!5948, !5943, !5946}
!5949 = !DILocation(line: 39, column: 18, scope: !5950)
!5950 = !DILexicalBlockFile(scope: !5951, file: !5934, discriminator: 1)
!5951 = distinct !DILexicalBlock(scope: !5952, file: !5934, line: 39, column: 3)
!5952 = distinct !DILexicalBlock(scope: !5933, file: !5934, line: 39, column: 3)
!5953 = !DILocation(line: 33, column: 15, scope: !5933)
!5954 = !DILocation(line: 39, column: 3, scope: !5955)
!5955 = !DILexicalBlockFile(scope: !5952, file: !5934, discriminator: 1)
!5956 = !DILocation(line: 43, column: 16, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5958, file: !5934, line: 43, column: 16)
!5958 = distinct !DILexicalBlock(scope: !5959, file: !5934, line: 41, column: 11)
!5959 = distinct !DILexicalBlock(scope: !5951, file: !5934, line: 40, column: 5)
!5960 = !DILocation(line: 43, column: 16, scope: !5958)
!5961 = !DILocation(line: 39, column: 23, scope: !5962)
!5962 = !DILexicalBlockFile(scope: !5951, file: !5934, discriminator: 2)
!5963 = !DILocation(line: 39, column: 3, scope: !5962)
!5964 = distinct !{!5964, !5965, !5966}
!5965 = !DILocation(line: 39, column: 3, scope: !5952)
!5966 = !DILocation(line: 48, column: 5, scope: !5952)
!5967 = !DILocation(line: 50, column: 3, scope: !5933)
!5968 = distinct !DISubprogram(name: "base_len", scope: !5934, file: !5934, line: 58, type: !5867, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !5969)
!5969 = !{!5970, !5971, !5972}
!5970 = !DILocalVariable(name: "name", arg: 1, scope: !5968, file: !5934, line: 58, type: !38)
!5971 = !DILocalVariable(name: "len", scope: !5968, file: !5934, line: 60, type: !30)
!5972 = !DILocalVariable(name: "prefix_len", scope: !5968, file: !5934, line: 61, type: !30)
!5973 = !DILocation(line: 58, column: 23, scope: !5968)
!5974 = !DILocation(line: 61, column: 10, scope: !5968)
!5975 = !DILocation(line: 63, column: 14, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5968, file: !5934, line: 63, column: 3)
!5977 = !DILocation(line: 60, column: 10, scope: !5968)
!5978 = !DILocation(line: 63, column: 8, scope: !5976)
!5979 = !DILocation(line: 63, column: 32, scope: !5980)
!5980 = !DILexicalBlockFile(scope: !5981, file: !5934, discriminator: 1)
!5981 = distinct !DILexicalBlock(scope: !5976, file: !5934, line: 63, column: 3)
!5982 = !DILocation(line: 63, column: 38, scope: !5980)
!5983 = !DILocation(line: 63, column: 41, scope: !5984)
!5984 = !DILexicalBlockFile(scope: !5981, file: !5934, discriminator: 2)
!5985 = !DILocation(line: 63, column: 3, scope: !5986)
!5986 = !DILexicalBlockFile(scope: !5976, file: !5934, discriminator: 3)
!5987 = distinct !{!5987, !5988, !5989}
!5988 = !DILocation(line: 63, column: 3, scope: !5976)
!5989 = !DILocation(line: 64, column: 5, scope: !5976)
!5990 = !DILocation(line: 74, column: 3, scope: !5968)
!5991 = distinct !DISubprogram(name: "hard_locale", scope: !5992, file: !5992, line: 38, type: !5993, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !614, variables: !5995)
!5992 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!43, !73}
!5995 = !{!5996, !5997, !5998, !5999, !6006, !6007, !6009, !6010, !6012, !6013, !6015}
!5996 = !DILocalVariable(name: "category", arg: 1, scope: !5991, file: !5992, line: 38, type: !73)
!5997 = !DILocalVariable(name: "hard", scope: !5991, file: !5992, line: 40, type: !43)
!5998 = !DILocalVariable(name: "p", scope: !5991, file: !5992, line: 41, type: !38)
!5999 = !DILocalVariable(name: "__s1_len", scope: !6000, file: !5992, line: 47, type: !30)
!6000 = distinct !DILexicalBlock(scope: !6001, file: !5992, line: 47, column: 15)
!6001 = distinct !DILexicalBlock(scope: !6002, file: !5992, line: 47, column: 15)
!6002 = distinct !DILexicalBlock(scope: !6003, file: !5992, line: 46, column: 9)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !5992, line: 45, column: 11)
!6004 = distinct !DILexicalBlock(scope: !6005, file: !5992, line: 44, column: 5)
!6005 = distinct !DILexicalBlock(scope: !5991, file: !5992, line: 43, column: 7)
!6006 = !DILocalVariable(name: "__s2_len", scope: !6000, file: !5992, line: 47, type: !30)
!6007 = !DILocalVariable(name: "__s2", scope: !6008, file: !5992, line: 47, type: !35)
!6008 = distinct !DILexicalBlock(scope: !6000, file: !5992, line: 47, column: 15)
!6009 = !DILocalVariable(name: "__result", scope: !6008, file: !5992, line: 47, type: !73)
!6010 = !DILocalVariable(name: "__s1_len", scope: !6011, file: !5992, line: 47, type: !30)
!6011 = distinct !DILexicalBlock(scope: !6001, file: !5992, line: 47, column: 39)
!6012 = !DILocalVariable(name: "__s2_len", scope: !6011, file: !5992, line: 47, type: !30)
!6013 = !DILocalVariable(name: "__s2", scope: !6014, file: !5992, line: 47, type: !35)
!6014 = distinct !DILexicalBlock(scope: !6011, file: !5992, line: 47, column: 39)
!6015 = !DILocalVariable(name: "__result", scope: !6014, file: !5992, line: 47, type: !73)
!6016 = !DILocation(line: 38, column: 18, scope: !5991)
!6017 = !DILocation(line: 40, column: 8, scope: !5991)
!6018 = !DILocation(line: 41, column: 19, scope: !5991)
!6019 = !DILocation(line: 41, column: 15, scope: !5991)
!6020 = !DILocation(line: 43, column: 7, scope: !6005)
!6021 = !DILocation(line: 43, column: 7, scope: !5991)
!6022 = !DILocation(line: 47, column: 15, scope: !6000)
!6023 = !DILocation(line: 47, column: 15, scope: !6008)
!6024 = !DILocation(line: 47, column: 15, scope: !6025)
!6025 = !DILexicalBlockFile(scope: !6008, file: !5992, discriminator: 2)
!6026 = !DILocation(line: 47, column: 15, scope: !6027)
!6027 = !DILexicalBlockFile(scope: !6028, file: !5992, discriminator: 3)
!6028 = distinct !DILexicalBlock(scope: !6008, file: !5992, line: 47, column: 15)
!6029 = !DILocation(line: 47, column: 15, scope: !6030)
!6030 = !DILexicalBlockFile(scope: !6028, file: !5992, discriminator: 2)
!6031 = !DILocation(line: 47, column: 15, scope: !6032)
!6032 = !DILexicalBlockFile(scope: !6033, file: !5992, discriminator: 4)
!6033 = distinct !DILexicalBlock(scope: !6028, file: !5992, line: 47, column: 15)
!6034 = !DILocation(line: 47, column: 15, scope: !6035)
!6035 = !DILexicalBlockFile(scope: !6000, file: !5992, discriminator: 11)
!6036 = !DILocation(line: 47, column: 36, scope: !6037)
!6037 = !DILexicalBlockFile(scope: !6001, file: !5992, discriminator: 13)
!6038 = !DILocation(line: 47, column: 39, scope: !6011)
!6039 = !DILocation(line: 47, column: 39, scope: !6040)
!6040 = !DILexicalBlockFile(scope: !6011, file: !5992, discriminator: 26)
!6041 = !DILocation(line: 47, column: 59, scope: !6042)
!6042 = !DILexicalBlockFile(scope: !6001, file: !5992, discriminator: 27)
!6043 = !DILocation(line: 47, column: 15, scope: !6044)
!6044 = !DILexicalBlockFile(scope: !6002, file: !5992, discriminator: 27)
!6045 = !DILocation(line: 48, column: 13, scope: !6001)
!6046 = !DILocation(line: 71, column: 3, scope: !5991)
!6047 = distinct !DISubprogram(name: "hash_pjw", scope: !6048, file: !6048, line: 31, type: !1480, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !6049)
!6048 = !DIFile(filename: "lib/hash-pjw.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6049 = !{!6050, !6051, !6052, !6053}
!6050 = !DILocalVariable(name: "x", arg: 1, scope: !6047, file: !6048, line: 31, type: !33)
!6051 = !DILocalVariable(name: "tablesize", arg: 2, scope: !6047, file: !6048, line: 31, type: !30)
!6052 = !DILocalVariable(name: "s", scope: !6047, file: !6048, line: 33, type: !38)
!6053 = !DILocalVariable(name: "h", scope: !6047, file: !6048, line: 34, type: !30)
!6054 = !DILocation(line: 31, column: 23, scope: !6047)
!6055 = !DILocation(line: 31, column: 33, scope: !6047)
!6056 = !DILocation(line: 34, column: 10, scope: !6047)
!6057 = !DILocation(line: 33, column: 15, scope: !6047)
!6058 = !DILocation(line: 36, column: 15, scope: !6059)
!6059 = !DILexicalBlockFile(scope: !6060, file: !6048, discriminator: 1)
!6060 = distinct !DILexicalBlock(scope: !6061, file: !6048, line: 36, column: 3)
!6061 = distinct !DILexicalBlock(scope: !6047, file: !6048, line: 36, column: 3)
!6062 = !DILocation(line: 36, column: 3, scope: !6063)
!6063 = !DILexicalBlockFile(scope: !6061, file: !6048, discriminator: 1)
!6064 = !DILocation(line: 37, column: 9, scope: !6060)
!6065 = !DILocation(line: 37, column: 18, scope: !6060)
!6066 = !DILocation(line: 37, column: 29, scope: !6060)
!6067 = !DILocation(line: 37, column: 24, scope: !6060)
!6068 = !DILocation(line: 37, column: 12, scope: !6060)
!6069 = !DILocation(line: 36, column: 20, scope: !6070)
!6070 = !DILexicalBlockFile(scope: !6060, file: !6048, discriminator: 2)
!6071 = distinct !{!6071, !6072, !6073}
!6072 = !DILocation(line: 36, column: 3, scope: !6061)
!6073 = !DILocation(line: 37, column: 48, scope: !6061)
!6074 = !DILocation(line: 39, column: 12, scope: !6047)
!6075 = !DILocation(line: 39, column: 3, scope: !6047)
!6076 = distinct !DISubprogram(name: "locale_charset", scope: !558, file: !558, line: 393, type: !6077, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !214, variables: !6079)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!38}
!6079 = !{!6080, !6081, !6082, !6087}
!6080 = !DILocalVariable(name: "codeset", scope: !6076, file: !558, line: 395, type: !38)
!6081 = !DILocalVariable(name: "aliases", scope: !6076, file: !558, line: 396, type: !38)
!6082 = !DILocalVariable(name: "__s1_len", scope: !6083, file: !558, line: 592, type: !30)
!6083 = distinct !DILexicalBlock(scope: !6084, file: !558, line: 592, column: 9)
!6084 = distinct !DILexicalBlock(scope: !6085, file: !558, line: 592, column: 9)
!6085 = distinct !DILexicalBlock(scope: !6086, file: !558, line: 589, column: 3)
!6086 = distinct !DILexicalBlock(scope: !6076, file: !558, line: 589, column: 3)
!6087 = !DILocalVariable(name: "__s2_len", scope: !6083, file: !558, line: 592, type: !30)
!6088 = !DILocalVariable(name: "buf1", scope: !6089, file: !558, line: 196, type: !6156)
!6089 = distinct !DILexicalBlock(scope: !6090, file: !558, line: 194, column: 21)
!6090 = distinct !DILexicalBlock(scope: !6091, file: !558, line: 193, column: 19)
!6091 = distinct !DILexicalBlock(scope: !6092, file: !558, line: 193, column: 19)
!6092 = distinct !DILexicalBlock(scope: !6093, file: !558, line: 188, column: 17)
!6093 = distinct !DILexicalBlock(scope: !6094, file: !558, line: 181, column: 19)
!6094 = distinct !DILexicalBlock(scope: !6095, file: !558, line: 177, column: 13)
!6095 = distinct !DILexicalBlock(scope: !6096, file: !558, line: 173, column: 15)
!6096 = distinct !DILexicalBlock(scope: !6097, file: !558, line: 161, column: 9)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !558, line: 157, column: 11)
!6098 = distinct !DILexicalBlock(scope: !6099, file: !558, line: 130, column: 5)
!6099 = distinct !DILexicalBlock(scope: !6100, file: !558, line: 129, column: 7)
!6100 = distinct !DISubprogram(name: "get_charset_aliases", scope: !558, file: !558, line: 124, type: !6077, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !214, variables: !6101)
!6101 = !{!6102, !6103, !6104, !6105, !6106, !6108, !6109, !6110, !6111, !6152, !6153, !6154, !6088, !6155, !6159, !6160, !6161}
!6102 = !DILocalVariable(name: "cp", scope: !6100, file: !558, line: 126, type: !38)
!6103 = !DILocalVariable(name: "dir", scope: !6098, file: !558, line: 132, type: !38)
!6104 = !DILocalVariable(name: "base", scope: !6098, file: !558, line: 133, type: !38)
!6105 = !DILocalVariable(name: "file_name", scope: !6098, file: !558, line: 134, type: !27)
!6106 = !DILocalVariable(name: "dir_len", scope: !6107, file: !558, line: 144, type: !30)
!6107 = distinct !DILexicalBlock(scope: !6098, file: !558, line: 143, column: 7)
!6108 = !DILocalVariable(name: "base_len", scope: !6107, file: !558, line: 145, type: !30)
!6109 = !DILocalVariable(name: "add_slash", scope: !6107, file: !558, line: 146, type: !73)
!6110 = !DILocalVariable(name: "fd", scope: !6096, file: !558, line: 162, type: !73)
!6111 = !DILocalVariable(name: "fp", scope: !6094, file: !558, line: 178, type: !6112)
!6112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6113, size: 64)
!6113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1617, line: 49, baseType: !6114)
!6114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1619, line: 241, size: 1728, elements: !6115)
!6115 = !{!6116, !6117, !6118, !6119, !6120, !6121, !6122, !6123, !6124, !6125, !6126, !6127, !6128, !6136, !6137, !6138, !6139, !6140, !6141, !6142, !6143, !6144, !6145, !6146, !6147, !6148, !6149, !6150, !6151}
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6114, file: !1619, line: 242, baseType: !73, size: 32)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6114, file: !1619, line: 247, baseType: !27, size: 64, offset: 64)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6114, file: !1619, line: 248, baseType: !27, size: 64, offset: 128)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6114, file: !1619, line: 249, baseType: !27, size: 64, offset: 192)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6114, file: !1619, line: 250, baseType: !27, size: 64, offset: 256)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6114, file: !1619, line: 251, baseType: !27, size: 64, offset: 320)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6114, file: !1619, line: 252, baseType: !27, size: 64, offset: 384)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6114, file: !1619, line: 253, baseType: !27, size: 64, offset: 448)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6114, file: !1619, line: 254, baseType: !27, size: 64, offset: 512)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6114, file: !1619, line: 256, baseType: !27, size: 64, offset: 576)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6114, file: !1619, line: 257, baseType: !27, size: 64, offset: 640)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6114, file: !1619, line: 258, baseType: !27, size: 64, offset: 704)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6114, file: !1619, line: 260, baseType: !6129, size: 64, offset: 768)
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1619, line: 156, size: 192, elements: !6131)
!6131 = !{!6132, !6133, !6135}
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6130, file: !1619, line: 157, baseType: !6129, size: 64)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6130, file: !1619, line: 158, baseType: !6134, size: 64, offset: 64)
!6134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6114, size: 64)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6130, file: !1619, line: 162, baseType: !73, size: 32, offset: 128)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6114, file: !1619, line: 262, baseType: !6134, size: 64, offset: 832)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6114, file: !1619, line: 264, baseType: !73, size: 32, offset: 896)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6114, file: !1619, line: 268, baseType: !73, size: 32, offset: 928)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6114, file: !1619, line: 270, baseType: !944, size: 64, offset: 960)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6114, file: !1619, line: 274, baseType: !161, size: 16, offset: 1024)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6114, file: !1619, line: 275, baseType: !1647, size: 8, offset: 1040)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6114, file: !1619, line: 276, baseType: !1649, size: 8, offset: 1048)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6114, file: !1619, line: 280, baseType: !1653, size: 64, offset: 1088)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6114, file: !1619, line: 289, baseType: !1656, size: 64, offset: 1152)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6114, file: !1619, line: 297, baseType: !29, size: 64, offset: 1216)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6114, file: !1619, line: 298, baseType: !29, size: 64, offset: 1280)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6114, file: !1619, line: 299, baseType: !29, size: 64, offset: 1344)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6114, file: !1619, line: 300, baseType: !29, size: 64, offset: 1408)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6114, file: !1619, line: 302, baseType: !30, size: 64, offset: 1472)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6114, file: !1619, line: 303, baseType: !73, size: 32, offset: 1536)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6114, file: !1619, line: 305, baseType: !1664, size: 160, offset: 1568)
!6152 = !DILocalVariable(name: "res_ptr", scope: !6092, file: !558, line: 190, type: !27)
!6153 = !DILocalVariable(name: "res_size", scope: !6092, file: !558, line: 191, type: !30)
!6154 = !DILocalVariable(name: "c", scope: !6089, file: !558, line: 195, type: !73)
!6155 = !DILocalVariable(name: "buf2", scope: !6089, file: !558, line: 197, type: !6156)
!6156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 408, elements: !6157)
!6157 = !{!6158}
!6158 = !DISubrange(count: 51)
!6159 = !DILocalVariable(name: "l1", scope: !6089, file: !558, line: 198, type: !30)
!6160 = !DILocalVariable(name: "l2", scope: !6089, file: !558, line: 198, type: !30)
!6161 = !DILocalVariable(name: "old_res_ptr", scope: !6089, file: !558, line: 199, type: !27)
!6162 = !DILocation(line: 196, column: 28, scope: !6089, inlinedAt: !6163)
!6163 = distinct !DILocation(line: 589, column: 18, scope: !6086)
!6164 = !DILocation(line: 197, column: 28, scope: !6089, inlinedAt: !6163)
!6165 = !DILocation(line: 403, column: 13, scope: !6076)
!6166 = !DILocation(line: 395, column: 15, scope: !6076)
!6167 = !DILocation(line: 584, column: 15, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6076, file: !558, line: 584, column: 7)
!6169 = !DILocation(line: 584, column: 7, scope: !6076)
!6170 = !DILocation(line: 128, column: 8, scope: !6100, inlinedAt: !6163)
!6171 = !DILocation(line: 126, column: 15, scope: !6100, inlinedAt: !6163)
!6172 = !DILocation(line: 129, column: 10, scope: !6099, inlinedAt: !6163)
!6173 = !DILocation(line: 129, column: 7, scope: !6100, inlinedAt: !6163)
!6174 = !DILocation(line: 138, column: 13, scope: !6098, inlinedAt: !6163)
!6175 = !DILocation(line: 132, column: 19, scope: !6098, inlinedAt: !6163)
!6176 = !DILocation(line: 139, column: 15, scope: !6177, inlinedAt: !6163)
!6177 = distinct !DILexicalBlock(scope: !6098, file: !558, line: 139, column: 11)
!6178 = !DILocation(line: 139, column: 23, scope: !6177, inlinedAt: !6163)
!6179 = !DILocation(line: 139, column: 26, scope: !6180, inlinedAt: !6163)
!6180 = !DILexicalBlockFile(scope: !6177, file: !558, discriminator: 1)
!6181 = !DILocation(line: 139, column: 33, scope: !6180, inlinedAt: !6163)
!6182 = !DILocation(line: 139, column: 11, scope: !6183, inlinedAt: !6163)
!6183 = !DILexicalBlockFile(scope: !6098, file: !558, discriminator: 1)
!6184 = !DILocation(line: 140, column: 9, scope: !6177, inlinedAt: !6163)
!6185 = !DILocation(line: 144, column: 26, scope: !6107, inlinedAt: !6163)
!6186 = !DILocation(line: 144, column: 16, scope: !6107, inlinedAt: !6163)
!6187 = !DILocation(line: 145, column: 16, scope: !6107, inlinedAt: !6163)
!6188 = !DILocation(line: 146, column: 34, scope: !6107, inlinedAt: !6163)
!6189 = !DILocation(line: 146, column: 38, scope: !6107, inlinedAt: !6163)
!6190 = !DILocation(line: 146, column: 42, scope: !6191, inlinedAt: !6163)
!6191 = !DILexicalBlockFile(scope: !6107, file: !558, discriminator: 1)
!6192 = !DILocation(line: 146, column: 41, scope: !6191, inlinedAt: !6163)
!6193 = !DILocation(line: 147, column: 48, scope: !6107, inlinedAt: !6163)
!6194 = !DILocation(line: 147, column: 46, scope: !6107, inlinedAt: !6163)
!6195 = !DILocation(line: 147, column: 69, scope: !6107, inlinedAt: !6163)
!6196 = !DILocation(line: 147, column: 30, scope: !6107, inlinedAt: !6163)
!6197 = !DILocation(line: 134, column: 13, scope: !6098, inlinedAt: !6163)
!6198 = !DILocation(line: 148, column: 13, scope: !6107, inlinedAt: !6163)
!6199 = !DILocation(line: 150, column: 13, scope: !6200, inlinedAt: !6163)
!6200 = distinct !DILexicalBlock(scope: !6201, file: !558, line: 149, column: 11)
!6201 = distinct !DILexicalBlock(scope: !6107, file: !558, line: 148, column: 13)
!6202 = !DILocation(line: 151, column: 17, scope: !6200, inlinedAt: !6163)
!6203 = !DILocation(line: 152, column: 34, scope: !6204, inlinedAt: !6163)
!6204 = distinct !DILexicalBlock(scope: !6200, file: !558, line: 151, column: 17)
!6205 = !DILocation(line: 153, column: 41, scope: !6200, inlinedAt: !6163)
!6206 = !DILocation(line: 153, column: 13, scope: !6200, inlinedAt: !6163)
!6207 = !DILocation(line: 157, column: 11, scope: !6098, inlinedAt: !6163)
!6208 = !DILocation(line: 171, column: 16, scope: !6096, inlinedAt: !6163)
!6209 = !DILocation(line: 162, column: 15, scope: !6096, inlinedAt: !6163)
!6210 = !DILocation(line: 173, column: 18, scope: !6095, inlinedAt: !6163)
!6211 = !DILocation(line: 173, column: 15, scope: !6096, inlinedAt: !6163)
!6212 = !DILocation(line: 180, column: 20, scope: !6094, inlinedAt: !6163)
!6213 = !DILocation(line: 178, column: 21, scope: !6094, inlinedAt: !6163)
!6214 = !DILocation(line: 181, column: 22, scope: !6093, inlinedAt: !6163)
!6215 = !DILocation(line: 181, column: 19, scope: !6094, inlinedAt: !6163)
!6216 = !DILocation(line: 190, column: 25, scope: !6092, inlinedAt: !6163)
!6217 = !DILocation(line: 184, column: 19, scope: !6218, inlinedAt: !6163)
!6218 = distinct !DILexicalBlock(scope: !6093, file: !558, line: 182, column: 17)
!6219 = !DILocation(line: 186, column: 17, scope: !6218, inlinedAt: !6163)
!6220 = !DILocation(line: 191, column: 26, scope: !6092, inlinedAt: !6163)
!6221 = !DILocation(line: 196, column: 23, scope: !6089, inlinedAt: !6163)
!6222 = !DILocation(line: 197, column: 23, scope: !6089, inlinedAt: !6163)
!6223 = !DILocalVariable(name: "__fp", arg: 1, scope: !6224, file: !782, line: 63, type: !6112)
!6224 = distinct !DISubprogram(name: "getc_unlocked", scope: !782, file: !782, line: 63, type: !6225, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !214, variables: !6227)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!73, !6112}
!6227 = !{!6223}
!6228 = !DILocation(line: 63, column: 22, scope: !6224, inlinedAt: !6229)
!6229 = distinct !DILocation(line: 201, column: 27, scope: !6089, inlinedAt: !6163)
!6230 = !DILocation(line: 65, column: 10, scope: !6224, inlinedAt: !6229)
!6231 = !{!791, !644, i64 8}
!6232 = !{!791, !644, i64 16}
!6233 = !DILocation(line: 65, column: 10, scope: !6234, inlinedAt: !6229)
!6234 = !DILexicalBlockFile(scope: !6224, file: !782, discriminator: 1)
!6235 = !DILocation(line: 65, column: 10, scope: !6236, inlinedAt: !6229)
!6236 = !DILexicalBlockFile(scope: !6224, file: !782, discriminator: 2)
!6237 = !DILocation(line: 65, column: 10, scope: !6238, inlinedAt: !6229)
!6238 = !DILexicalBlockFile(scope: !6224, file: !782, discriminator: 3)
!6239 = !DILocation(line: 195, column: 27, scope: !6089, inlinedAt: !6163)
!6240 = !DILocation(line: 202, column: 27, scope: !6089, inlinedAt: !6163)
!6241 = !DILocation(line: 63, column: 22, scope: !6224, inlinedAt: !6242)
!6242 = distinct !DILocation(line: 210, column: 33, scope: !6243, inlinedAt: !6163)
!6243 = distinct !DILexicalBlock(scope: !6244, file: !558, line: 207, column: 25)
!6244 = distinct !DILexicalBlock(scope: !6089, file: !558, line: 206, column: 27)
!6245 = !DILocation(line: 65, column: 10, scope: !6224, inlinedAt: !6242)
!6246 = !DILocation(line: 65, column: 10, scope: !6234, inlinedAt: !6242)
!6247 = !DILocation(line: 65, column: 10, scope: !6236, inlinedAt: !6242)
!6248 = !DILocation(line: 65, column: 10, scope: !6238, inlinedAt: !6242)
!6249 = !DILocation(line: 210, column: 29, scope: !6250, inlinedAt: !6163)
!6250 = !DILexicalBlockFile(scope: !6243, file: !558, discriminator: 1)
!6251 = distinct !{!6251, !6252, !6253}
!6252 = !DILocation(line: 193, column: 19, scope: !6091)
!6253 = !DILocation(line: 241, column: 21, scope: !6091)
!6254 = !DILocation(line: 216, column: 23, scope: !6089, inlinedAt: !6163)
!6255 = !DILocation(line: 217, column: 27, scope: !6256, inlinedAt: !6163)
!6256 = distinct !DILexicalBlock(scope: !6089, file: !558, line: 217, column: 27)
!6257 = !DILocation(line: 217, column: 64, scope: !6256, inlinedAt: !6163)
!6258 = !DILocation(line: 217, column: 27, scope: !6089, inlinedAt: !6163)
!6259 = !DILocation(line: 219, column: 28, scope: !6089, inlinedAt: !6163)
!6260 = !DILocation(line: 198, column: 30, scope: !6089, inlinedAt: !6163)
!6261 = !DILocation(line: 220, column: 28, scope: !6089, inlinedAt: !6163)
!6262 = !DILocation(line: 198, column: 34, scope: !6089, inlinedAt: !6163)
!6263 = !DILocation(line: 199, column: 29, scope: !6089, inlinedAt: !6163)
!6264 = !DILocation(line: 222, column: 36, scope: !6265, inlinedAt: !6163)
!6265 = distinct !DILexicalBlock(scope: !6089, file: !558, line: 222, column: 27)
!6266 = !DILocation(line: 222, column: 27, scope: !6089, inlinedAt: !6163)
!6267 = !DILocation(line: 225, column: 63, scope: !6268, inlinedAt: !6163)
!6268 = distinct !DILexicalBlock(scope: !6265, file: !558, line: 223, column: 25)
!6269 = !DILocation(line: 225, column: 46, scope: !6268, inlinedAt: !6163)
!6270 = !DILocation(line: 226, column: 25, scope: !6268, inlinedAt: !6163)
!6271 = !DILocation(line: 229, column: 36, scope: !6272, inlinedAt: !6163)
!6272 = distinct !DILexicalBlock(scope: !6265, file: !558, line: 228, column: 25)
!6273 = !DILocation(line: 230, column: 73, scope: !6272, inlinedAt: !6163)
!6274 = !DILocation(line: 230, column: 46, scope: !6272, inlinedAt: !6163)
!6275 = !DILocation(line: 232, column: 35, scope: !6276, inlinedAt: !6163)
!6276 = distinct !DILexicalBlock(scope: !6089, file: !558, line: 232, column: 27)
!6277 = !DILocation(line: 232, column: 27, scope: !6089, inlinedAt: !6163)
!6278 = !DILocation(line: 236, column: 27, scope: !6279, inlinedAt: !6163)
!6279 = distinct !DILexicalBlock(scope: !6276, file: !558, line: 233, column: 25)
!6280 = !DILocation(line: 237, column: 27, scope: !6279, inlinedAt: !6163)
!6281 = !DILocation(line: 239, column: 39, scope: !6089, inlinedAt: !6163)
!6282 = !DILocation(line: 239, column: 50, scope: !6089, inlinedAt: !6163)
!6283 = !DILocation(line: 239, column: 61, scope: !6089, inlinedAt: !6163)
!6284 = !DILocalVariable(name: "__dest", arg: 1, scope: !6285, file: !6286, line: 107, type: !6289)
!6285 = distinct !DISubprogram(name: "strcpy", scope: !6286, file: !6286, line: 107, type: !6287, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !214, variables: !6291)
!6286 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6287 = !DISubroutineType(types: !6288)
!6288 = !{!27, !6289, !6290}
!6289 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!6290 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!6291 = !{!6284, !6292}
!6292 = !DILocalVariable(name: "__src", arg: 2, scope: !6285, file: !6286, line: 107, type: !6290)
!6293 = !DILocation(line: 107, column: 1, scope: !6285, inlinedAt: !6294)
!6294 = distinct !DILocation(line: 239, column: 23, scope: !6089, inlinedAt: !6163)
!6295 = !DILocation(line: 109, column: 49, scope: !6285, inlinedAt: !6294)
!6296 = !DILocation(line: 109, column: 10, scope: !6285, inlinedAt: !6294)
!6297 = !DILocation(line: 107, column: 1, scope: !6285, inlinedAt: !6298)
!6298 = distinct !DILocation(line: 240, column: 23, scope: !6089, inlinedAt: !6163)
!6299 = !DILocation(line: 109, column: 49, scope: !6285, inlinedAt: !6298)
!6300 = !DILocation(line: 109, column: 10, scope: !6285, inlinedAt: !6298)
!6301 = !DILocation(line: 241, column: 21, scope: !6090, inlinedAt: !6163)
!6302 = !DILocation(line: 242, column: 19, scope: !6092, inlinedAt: !6163)
!6303 = !DILocation(line: 243, column: 32, scope: !6304, inlinedAt: !6163)
!6304 = distinct !DILexicalBlock(scope: !6092, file: !558, line: 243, column: 23)
!6305 = !DILocation(line: 243, column: 23, scope: !6092, inlinedAt: !6163)
!6306 = !DILocation(line: 247, column: 33, scope: !6307, inlinedAt: !6163)
!6307 = distinct !DILexicalBlock(scope: !6304, file: !558, line: 246, column: 21)
!6308 = !DILocation(line: 247, column: 45, scope: !6307, inlinedAt: !6163)
!6309 = !DILocation(line: 253, column: 11, scope: !6096, inlinedAt: !6163)
!6310 = !DILocation(line: 377, column: 23, scope: !6098, inlinedAt: !6163)
!6311 = !DILocation(line: 378, column: 5, scope: !6098, inlinedAt: !6163)
!6312 = !DILocation(line: 396, column: 15, scope: !6076)
!6313 = !DILocation(line: 590, column: 8, scope: !6085)
!6314 = !DILocation(line: 590, column: 17, scope: !6085)
!6315 = !DILocation(line: 589, column: 3, scope: !6316)
!6316 = !DILexicalBlockFile(scope: !6086, file: !558, discriminator: 1)
!6317 = !DILocation(line: 592, column: 9, scope: !6083)
!6318 = !DILocation(line: 592, column: 35, scope: !6084)
!6319 = !DILocation(line: 593, column: 9, scope: !6084)
!6320 = !DILocation(line: 593, column: 24, scope: !6321)
!6321 = !DILexicalBlockFile(scope: !6084, file: !558, discriminator: 1)
!6322 = !DILocation(line: 593, column: 31, scope: !6321)
!6323 = !DILocation(line: 593, column: 34, scope: !6324)
!6324 = !DILexicalBlockFile(scope: !6084, file: !558, discriminator: 2)
!6325 = !DILocation(line: 593, column: 45, scope: !6324)
!6326 = !DILocation(line: 592, column: 9, scope: !6327)
!6327 = !DILexicalBlockFile(scope: !6085, file: !558, discriminator: 1)
!6328 = !DILocation(line: 595, column: 29, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6084, file: !558, line: 594, column: 7)
!6330 = !DILocation(line: 595, column: 27, scope: !6329)
!6331 = !DILocation(line: 595, column: 46, scope: !6329)
!6332 = !DILocation(line: 596, column: 9, scope: !6329)
!6333 = !DILocation(line: 591, column: 19, scope: !6085)
!6334 = !DILocation(line: 591, column: 36, scope: !6085)
!6335 = !DILocation(line: 591, column: 16, scope: !6085)
!6336 = !DILocation(line: 591, column: 52, scope: !6327)
!6337 = !DILocation(line: 591, column: 69, scope: !6085)
!6338 = !DILocation(line: 591, column: 49, scope: !6085)
!6339 = distinct !{!6339, !6340, !6341}
!6340 = !DILocation(line: 589, column: 3, scope: !6086)
!6341 = !DILocation(line: 597, column: 7, scope: !6086)
!6342 = !DILocation(line: 602, column: 7, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6076, file: !558, line: 602, column: 7)
!6344 = !DILocation(line: 602, column: 18, scope: !6343)
!6345 = !DILocation(line: 602, column: 7, scope: !6076)
!6346 = !DILocation(line: 612, column: 3, scope: !6076)
!6347 = distinct !DISubprogram(name: "rpl_fclose", scope: !6348, file: !6348, line: 56, type: !6349, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !6391)
!6348 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!73, !6351}
!6351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6352, size: 64)
!6352 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1617, line: 49, baseType: !6353)
!6353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1619, line: 241, size: 1728, elements: !6354)
!6354 = !{!6355, !6356, !6357, !6358, !6359, !6360, !6361, !6362, !6363, !6364, !6365, !6366, !6367, !6375, !6376, !6377, !6378, !6379, !6380, !6381, !6382, !6383, !6384, !6385, !6386, !6387, !6388, !6389, !6390}
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6353, file: !1619, line: 242, baseType: !73, size: 32)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6353, file: !1619, line: 247, baseType: !27, size: 64, offset: 64)
!6357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6353, file: !1619, line: 248, baseType: !27, size: 64, offset: 128)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6353, file: !1619, line: 249, baseType: !27, size: 64, offset: 192)
!6359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6353, file: !1619, line: 250, baseType: !27, size: 64, offset: 256)
!6360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6353, file: !1619, line: 251, baseType: !27, size: 64, offset: 320)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6353, file: !1619, line: 252, baseType: !27, size: 64, offset: 384)
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6353, file: !1619, line: 253, baseType: !27, size: 64, offset: 448)
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6353, file: !1619, line: 254, baseType: !27, size: 64, offset: 512)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6353, file: !1619, line: 256, baseType: !27, size: 64, offset: 576)
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6353, file: !1619, line: 257, baseType: !27, size: 64, offset: 640)
!6366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6353, file: !1619, line: 258, baseType: !27, size: 64, offset: 704)
!6367 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6353, file: !1619, line: 260, baseType: !6368, size: 64, offset: 768)
!6368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6369, size: 64)
!6369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1619, line: 156, size: 192, elements: !6370)
!6370 = !{!6371, !6372, !6374}
!6371 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6369, file: !1619, line: 157, baseType: !6368, size: 64)
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6369, file: !1619, line: 158, baseType: !6373, size: 64, offset: 64)
!6373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6353, size: 64)
!6374 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6369, file: !1619, line: 162, baseType: !73, size: 32, offset: 128)
!6375 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6353, file: !1619, line: 262, baseType: !6373, size: 64, offset: 832)
!6376 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6353, file: !1619, line: 264, baseType: !73, size: 32, offset: 896)
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6353, file: !1619, line: 268, baseType: !73, size: 32, offset: 928)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6353, file: !1619, line: 270, baseType: !944, size: 64, offset: 960)
!6379 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6353, file: !1619, line: 274, baseType: !161, size: 16, offset: 1024)
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6353, file: !1619, line: 275, baseType: !1647, size: 8, offset: 1040)
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6353, file: !1619, line: 276, baseType: !1649, size: 8, offset: 1048)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6353, file: !1619, line: 280, baseType: !1653, size: 64, offset: 1088)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6353, file: !1619, line: 289, baseType: !1656, size: 64, offset: 1152)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6353, file: !1619, line: 297, baseType: !29, size: 64, offset: 1216)
!6385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6353, file: !1619, line: 298, baseType: !29, size: 64, offset: 1280)
!6386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6353, file: !1619, line: 299, baseType: !29, size: 64, offset: 1344)
!6387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6353, file: !1619, line: 300, baseType: !29, size: 64, offset: 1408)
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6353, file: !1619, line: 302, baseType: !30, size: 64, offset: 1472)
!6389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6353, file: !1619, line: 303, baseType: !73, size: 32, offset: 1536)
!6390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6353, file: !1619, line: 305, baseType: !1664, size: 160, offset: 1568)
!6391 = !{!6392, !6393, !6394, !6395}
!6392 = !DILocalVariable(name: "fp", arg: 1, scope: !6347, file: !6348, line: 56, type: !6351)
!6393 = !DILocalVariable(name: "saved_errno", scope: !6347, file: !6348, line: 58, type: !73)
!6394 = !DILocalVariable(name: "fd", scope: !6347, file: !6348, line: 59, type: !73)
!6395 = !DILocalVariable(name: "result", scope: !6347, file: !6348, line: 60, type: !73)
!6396 = !DILocation(line: 56, column: 19, scope: !6347)
!6397 = !DILocation(line: 58, column: 7, scope: !6347)
!6398 = !DILocation(line: 60, column: 7, scope: !6347)
!6399 = !DILocation(line: 63, column: 8, scope: !6347)
!6400 = !DILocation(line: 59, column: 7, scope: !6347)
!6401 = !DILocation(line: 64, column: 10, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6347, file: !6348, line: 64, column: 7)
!6403 = !DILocation(line: 64, column: 7, scope: !6347)
!6404 = !DILocation(line: 65, column: 12, scope: !6402)
!6405 = !DILocation(line: 65, column: 5, scope: !6402)
!6406 = !DILocation(line: 70, column: 9, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6347, file: !6348, line: 70, column: 7)
!6408 = !DILocation(line: 70, column: 23, scope: !6407)
!6409 = !DILocation(line: 70, column: 33, scope: !6410)
!6410 = !DILexicalBlockFile(scope: !6407, file: !6348, discriminator: 1)
!6411 = !DILocation(line: 70, column: 26, scope: !6412)
!6412 = !DILexicalBlockFile(scope: !6407, file: !6348, discriminator: 3)
!6413 = !DILocation(line: 70, column: 59, scope: !6410)
!6414 = !DILocation(line: 71, column: 7, scope: !6407)
!6415 = !DILocation(line: 71, column: 10, scope: !6410)
!6416 = !DILocation(line: 70, column: 7, scope: !6417)
!6417 = !DILexicalBlockFile(scope: !6347, file: !6348, discriminator: 2)
!6418 = !DILocation(line: 98, column: 12, scope: !6347)
!6419 = !DILocation(line: 103, column: 7, scope: !6347)
!6420 = !DILocation(line: 72, column: 19, scope: !6407)
!6421 = !DILocation(line: 103, column: 19, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6347, file: !6348, line: 103, column: 7)
!6423 = !DILocation(line: 105, column: 13, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6422, file: !6348, line: 104, column: 5)
!6425 = !DILocation(line: 107, column: 5, scope: !6424)
!6426 = !DILocation(line: 110, column: 1, scope: !6347)
!6427 = distinct !DISubprogram(name: "rpl_fflush", scope: !6428, file: !6428, line: 127, type: !6429, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !621, variables: !6471)
!6428 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!73, !6431}
!6431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6432, size: 64)
!6432 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1617, line: 49, baseType: !6433)
!6433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1619, line: 241, size: 1728, elements: !6434)
!6434 = !{!6435, !6436, !6437, !6438, !6439, !6440, !6441, !6442, !6443, !6444, !6445, !6446, !6447, !6455, !6456, !6457, !6458, !6459, !6460, !6461, !6462, !6463, !6464, !6465, !6466, !6467, !6468, !6469, !6470}
!6435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6433, file: !1619, line: 242, baseType: !73, size: 32)
!6436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6433, file: !1619, line: 247, baseType: !27, size: 64, offset: 64)
!6437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6433, file: !1619, line: 248, baseType: !27, size: 64, offset: 128)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6433, file: !1619, line: 249, baseType: !27, size: 64, offset: 192)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6433, file: !1619, line: 250, baseType: !27, size: 64, offset: 256)
!6440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6433, file: !1619, line: 251, baseType: !27, size: 64, offset: 320)
!6441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6433, file: !1619, line: 252, baseType: !27, size: 64, offset: 384)
!6442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6433, file: !1619, line: 253, baseType: !27, size: 64, offset: 448)
!6443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6433, file: !1619, line: 254, baseType: !27, size: 64, offset: 512)
!6444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6433, file: !1619, line: 256, baseType: !27, size: 64, offset: 576)
!6445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6433, file: !1619, line: 257, baseType: !27, size: 64, offset: 640)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6433, file: !1619, line: 258, baseType: !27, size: 64, offset: 704)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6433, file: !1619, line: 260, baseType: !6448, size: 64, offset: 768)
!6448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6449, size: 64)
!6449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1619, line: 156, size: 192, elements: !6450)
!6450 = !{!6451, !6452, !6454}
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6449, file: !1619, line: 157, baseType: !6448, size: 64)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6449, file: !1619, line: 158, baseType: !6453, size: 64, offset: 64)
!6453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6433, size: 64)
!6454 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6449, file: !1619, line: 162, baseType: !73, size: 32, offset: 128)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6433, file: !1619, line: 262, baseType: !6453, size: 64, offset: 832)
!6456 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6433, file: !1619, line: 264, baseType: !73, size: 32, offset: 896)
!6457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6433, file: !1619, line: 268, baseType: !73, size: 32, offset: 928)
!6458 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6433, file: !1619, line: 270, baseType: !944, size: 64, offset: 960)
!6459 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6433, file: !1619, line: 274, baseType: !161, size: 16, offset: 1024)
!6460 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6433, file: !1619, line: 275, baseType: !1647, size: 8, offset: 1040)
!6461 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6433, file: !1619, line: 276, baseType: !1649, size: 8, offset: 1048)
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6433, file: !1619, line: 280, baseType: !1653, size: 64, offset: 1088)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6433, file: !1619, line: 289, baseType: !1656, size: 64, offset: 1152)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6433, file: !1619, line: 297, baseType: !29, size: 64, offset: 1216)
!6465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6433, file: !1619, line: 298, baseType: !29, size: 64, offset: 1280)
!6466 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6433, file: !1619, line: 299, baseType: !29, size: 64, offset: 1344)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6433, file: !1619, line: 300, baseType: !29, size: 64, offset: 1408)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6433, file: !1619, line: 302, baseType: !30, size: 64, offset: 1472)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6433, file: !1619, line: 303, baseType: !73, size: 32, offset: 1536)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6433, file: !1619, line: 305, baseType: !1664, size: 160, offset: 1568)
!6471 = !{!6472}
!6472 = !DILocalVariable(name: "stream", arg: 1, scope: !6427, file: !6428, line: 127, type: !6431)
!6473 = !DILocation(line: 127, column: 19, scope: !6427)
!6474 = !DILocation(line: 148, column: 14, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6427, file: !6428, line: 148, column: 7)
!6476 = !DILocation(line: 148, column: 22, scope: !6475)
!6477 = !DILocation(line: 148, column: 27, scope: !6478)
!6478 = !DILexicalBlockFile(scope: !6475, file: !6428, discriminator: 1)
!6479 = !DILocation(line: 148, column: 7, scope: !6480)
!6480 = !DILexicalBlockFile(scope: !6427, file: !6428, discriminator: 1)
!6481 = !DILocation(line: 149, column: 12, scope: !6475)
!6482 = !DILocation(line: 149, column: 5, scope: !6475)
!6483 = !DILocalVariable(name: "fp", arg: 1, scope: !6484, file: !6428, line: 40, type: !6431)
!6484 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !6428, file: !6428, line: 40, type: !6485, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !621, variables: !6487)
!6485 = !DISubroutineType(types: !6486)
!6486 = !{null, !6431}
!6487 = !{!6483}
!6488 = !DILocation(line: 40, column: 48, scope: !6484, inlinedAt: !6489)
!6489 = distinct !DILocation(line: 153, column: 3, scope: !6427)
!6490 = !DILocation(line: 42, column: 11, scope: !6491, inlinedAt: !6489)
!6491 = distinct !DILexicalBlock(scope: !6484, file: !6428, line: 42, column: 7)
!6492 = !DILocation(line: 42, column: 18, scope: !6491, inlinedAt: !6489)
!6493 = !DILocation(line: 42, column: 7, scope: !6484, inlinedAt: !6489)
!6494 = !DILocation(line: 44, column: 5, scope: !6491, inlinedAt: !6489)
!6495 = !DILocation(line: 155, column: 10, scope: !6427)
!6496 = !DILocation(line: 155, column: 3, scope: !6427)
!6497 = !DILocation(line: 229, column: 1, scope: !6427)
!6498 = distinct !DISubprogram(name: "rpl_fseeko", scope: !6499, file: !6499, line: 28, type: !6500, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !623, variables: !6543)
!6499 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6500 = !DISubroutineType(types: !6501)
!6501 = !{!73, !6502, !6542, !73}
!6502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6503, size: 64)
!6503 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1617, line: 49, baseType: !6504)
!6504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1619, line: 241, size: 1728, elements: !6505)
!6505 = !{!6506, !6507, !6508, !6509, !6510, !6511, !6512, !6513, !6514, !6515, !6516, !6517, !6518, !6526, !6527, !6528, !6529, !6530, !6531, !6532, !6533, !6534, !6535, !6536, !6537, !6538, !6539, !6540, !6541}
!6506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6504, file: !1619, line: 242, baseType: !73, size: 32)
!6507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6504, file: !1619, line: 247, baseType: !27, size: 64, offset: 64)
!6508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6504, file: !1619, line: 248, baseType: !27, size: 64, offset: 128)
!6509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6504, file: !1619, line: 249, baseType: !27, size: 64, offset: 192)
!6510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6504, file: !1619, line: 250, baseType: !27, size: 64, offset: 256)
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6504, file: !1619, line: 251, baseType: !27, size: 64, offset: 320)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6504, file: !1619, line: 252, baseType: !27, size: 64, offset: 384)
!6513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6504, file: !1619, line: 253, baseType: !27, size: 64, offset: 448)
!6514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6504, file: !1619, line: 254, baseType: !27, size: 64, offset: 512)
!6515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6504, file: !1619, line: 256, baseType: !27, size: 64, offset: 576)
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6504, file: !1619, line: 257, baseType: !27, size: 64, offset: 640)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6504, file: !1619, line: 258, baseType: !27, size: 64, offset: 704)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6504, file: !1619, line: 260, baseType: !6519, size: 64, offset: 768)
!6519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6520, size: 64)
!6520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1619, line: 156, size: 192, elements: !6521)
!6521 = !{!6522, !6523, !6525}
!6522 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6520, file: !1619, line: 157, baseType: !6519, size: 64)
!6523 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6520, file: !1619, line: 158, baseType: !6524, size: 64, offset: 64)
!6524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6504, size: 64)
!6525 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6520, file: !1619, line: 162, baseType: !73, size: 32, offset: 128)
!6526 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6504, file: !1619, line: 262, baseType: !6524, size: 64, offset: 832)
!6527 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6504, file: !1619, line: 264, baseType: !73, size: 32, offset: 896)
!6528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6504, file: !1619, line: 268, baseType: !73, size: 32, offset: 928)
!6529 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6504, file: !1619, line: 270, baseType: !944, size: 64, offset: 960)
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6504, file: !1619, line: 274, baseType: !161, size: 16, offset: 1024)
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6504, file: !1619, line: 275, baseType: !1647, size: 8, offset: 1040)
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6504, file: !1619, line: 276, baseType: !1649, size: 8, offset: 1048)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6504, file: !1619, line: 280, baseType: !1653, size: 64, offset: 1088)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6504, file: !1619, line: 289, baseType: !1656, size: 64, offset: 1152)
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6504, file: !1619, line: 297, baseType: !29, size: 64, offset: 1216)
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6504, file: !1619, line: 298, baseType: !29, size: 64, offset: 1280)
!6537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6504, file: !1619, line: 299, baseType: !29, size: 64, offset: 1344)
!6538 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6504, file: !1619, line: 300, baseType: !29, size: 64, offset: 1408)
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6504, file: !1619, line: 302, baseType: !30, size: 64, offset: 1472)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6504, file: !1619, line: 303, baseType: !73, size: 32, offset: 1536)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6504, file: !1619, line: 305, baseType: !1664, size: 160, offset: 1568)
!6542 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1617, line: 91, baseType: !944)
!6543 = !{!6544, !6545, !6546, !6547}
!6544 = !DILocalVariable(name: "fp", arg: 1, scope: !6498, file: !6499, line: 28, type: !6502)
!6545 = !DILocalVariable(name: "offset", arg: 2, scope: !6498, file: !6499, line: 28, type: !6542)
!6546 = !DILocalVariable(name: "whence", arg: 3, scope: !6498, file: !6499, line: 28, type: !73)
!6547 = !DILocalVariable(name: "pos", scope: !6548, file: !6499, line: 116, type: !6542)
!6548 = distinct !DILexicalBlock(scope: !6549, file: !6499, line: 112, column: 5)
!6549 = distinct !DILexicalBlock(scope: !6498, file: !6499, line: 51, column: 7)
!6550 = !DILocation(line: 28, column: 15, scope: !6498)
!6551 = !DILocation(line: 28, column: 25, scope: !6498)
!6552 = !DILocation(line: 28, column: 37, scope: !6498)
!6553 = !DILocation(line: 51, column: 11, scope: !6549)
!6554 = !DILocation(line: 51, column: 31, scope: !6549)
!6555 = !DILocation(line: 51, column: 24, scope: !6549)
!6556 = !DILocation(line: 52, column: 7, scope: !6549)
!6557 = !DILocation(line: 52, column: 14, scope: !6558)
!6558 = !DILexicalBlockFile(scope: !6549, file: !6499, discriminator: 1)
!6559 = !DILocation(line: 52, column: 35, scope: !6558)
!6560 = !{!791, !644, i64 32}
!6561 = !DILocation(line: 52, column: 28, scope: !6558)
!6562 = !DILocation(line: 53, column: 7, scope: !6549)
!6563 = !DILocation(line: 53, column: 14, scope: !6558)
!6564 = !{!791, !644, i64 72}
!6565 = !DILocation(line: 53, column: 28, scope: !6558)
!6566 = !DILocation(line: 51, column: 7, scope: !6567)
!6567 = !DILexicalBlockFile(scope: !6498, file: !6499, discriminator: 1)
!6568 = !DILocation(line: 116, column: 26, scope: !6548)
!6569 = !DILocation(line: 116, column: 19, scope: !6570)
!6570 = !DILexicalBlockFile(scope: !6548, file: !6499, discriminator: 1)
!6571 = !DILocation(line: 116, column: 13, scope: !6548)
!6572 = !DILocation(line: 117, column: 15, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6548, file: !6499, line: 117, column: 11)
!6574 = !DILocation(line: 117, column: 11, scope: !6548)
!6575 = !DILocation(line: 127, column: 11, scope: !6548)
!6576 = !DILocation(line: 127, column: 18, scope: !6548)
!6577 = !DILocation(line: 128, column: 11, scope: !6548)
!6578 = !DILocation(line: 128, column: 19, scope: !6548)
!6579 = !{!791, !792, i64 144}
!6580 = !DILocation(line: 159, column: 7, scope: !6548)
!6581 = !DILocation(line: 161, column: 10, scope: !6498)
!6582 = !DILocation(line: 161, column: 3, scope: !6498)
!6583 = !DILocation(line: 162, column: 1, scope: !6498)
