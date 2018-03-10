; ModuleID = 'coreutils-8.27/src/base32.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.base32_decode_context = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"Usage: %s [OPTION]... [FILE]\0ABase%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.2 = private unnamed_addr constant [243 x i8] c"  -d, --decode          decode data\0A  -i, --ignore-garbage  when decoding, ignore non-alphabet characters\0A  -w, --wrap=COLS       wrap encoded lines after COLS character (default 76).\0A                          Use 0 to disable line wrapping\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [268 x i8] c"\0AThe data are encoded as described for the %s alphabet in RFC 4648.\0AWhen decoding, the input may contain newlines in addition to the bytes of\0Athe formal %s alphabet.  Use --ignore-garbage to attempt to recover\0Afrom any other non-alphabet bytes in the encoded stream.\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"base32\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"diw:\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"invalid wrap size\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Simon Josefsson\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"ignore-garbage\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), align 8, !dbg !86
@.str.21 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@base32_encode.b32str = internal unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", align 16, !dbg !92
@b32 = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !104
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !119
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !124
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !128
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !135
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !141
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !169
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !176
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !189
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !194
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !201
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !191
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !203
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.84 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.100 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.101 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.102 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !209
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.121 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !218
@.str.3.140 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.141 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.142 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.143 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.144 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !632 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !636, metadata !637), !dbg !638
  %2 = icmp eq i32 %0, 0, !dbg !639
  br i1 %2, label %8, label %3, !dbg !641

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !642, !tbaa !645
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !642
  %6 = load i8*, i8** @program_name, align 8, !dbg !642, !tbaa !645
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !649
  br label %44, !dbg !651

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !653
  %10 = load i8*, i8** @program_name, align 8, !dbg !653, !tbaa !645
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i32 32) #11, !dbg !655
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !657
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !645
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !662
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !664
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !645
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !667
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !669
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !645
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !670
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !671
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !645
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !672
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !673
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !645
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !674
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !675
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !676
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !51, metadata !637) #11, !dbg !677
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !51, metadata !637) #11, !dbg !677
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !679
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !680
  %31 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !682
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !62, metadata !637) #11, !dbg !683
  %32 = icmp eq i8* %31, null, !dbg !684
  br i1 %32, label %39, label %33, !dbg !685

; <label>:33:                                     ; preds = %8
  %34 = tail call i32 @strncmp(i8* nonnull %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !686
  %35 = icmp eq i32 %34, 0, !dbg !686
  br i1 %35, label %39, label %36, !dbg !688

; <label>:36:                                     ; preds = %33
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !690
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !692
  br label %39, !dbg !694

; <label>:39:                                     ; preds = %8, %33, %36
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !695
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !696
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !697
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !698
  br label %44

; <label>:44:                                     ; preds = %39, %3
  tail call void @exit(i32 %0) #15, !dbg !699
  unreachable, !dbg !699
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !700 {
  %3 = alloca [8192 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %3, metadata !786, metadata !637), !dbg !817
  %4 = alloca [5120 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [5120 x i8]* %4, metadata !794, metadata !637), !dbg !820
  %5 = alloca %struct.base32_decode_context, align 4
  %6 = alloca i64, align 8
  %7 = alloca [30720 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [30720 x i8]* %7, metadata !821, metadata !637), !dbg !840
  %8 = alloca [49152 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [49152 x i8]* %8, metadata !830, metadata !637), !dbg !842
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !705, metadata !637), !dbg !843
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !706, metadata !637), !dbg !844
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !764, metadata !637), !dbg !845
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !765, metadata !637), !dbg !846
  tail call void @llvm.dbg.value(metadata i64 76, i64 0, metadata !766, metadata !637), !dbg !847
  %9 = load i8*, i8** %1, align 8, !dbg !848, !tbaa !645
  tail call void @set_program_name(i8* %9) #11, !dbg !849
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !850
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !851
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !852
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !853
  br label %14, !dbg !854

; <label>:14:                                     ; preds = %25, %2
  %15 = phi i64 [ %28, %25 ], [ 76, %2 ]
  %16 = phi i8 [ %20, %25 ], [ 0, %2 ]
  %17 = phi i8 [ %23, %25 ], [ 0, %2 ]
  br label %19, !dbg !845

; <label>:18:                                     ; preds = %22
  br label %19, !dbg !845

; <label>:19:                                     ; preds = %18, %14
  %20 = phi i8 [ %16, %14 ], [ 1, %18 ]
  %21 = phi i8 [ %17, %14 ], [ %23, %18 ]
  br label %22, !dbg !845

; <label>:22:                                     ; preds = %19, %22
  %23 = phi i8 [ 1, %22 ], [ %21, %19 ]
  tail call void @llvm.dbg.value(metadata i8 %23, i64 0, metadata !764, metadata !637), !dbg !845
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !765, metadata !637), !dbg !846
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !766, metadata !637), !dbg !847
  %24 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !855
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !707, metadata !637), !dbg !857
  switch i32 %24, label %33 [
    i32 -1, label %34
    i32 100, label %22
    i32 119, label %25
    i32 105, label %18
    i32 -130, label %29
    i32 -131, label %30
  ], !dbg !858, !llvm.loop !859

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** @optarg, align 8, !dbg !861, !tbaa !645
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !863
  %28 = tail call i64 @xdectoumax(i8* %26, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %27, i32 0) #11, !dbg !864
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !766, metadata !637), !dbg !847
  br label %14, !dbg !865, !llvm.loop !859

; <label>:29:                                     ; preds = %22
  tail call void @usage(i32 0) #16, !dbg !866
  unreachable, !dbg !866

; <label>:30:                                     ; preds = %22
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !867, !tbaa !645
  %32 = load i8*, i8** @Version, align 8, !dbg !867, !tbaa !645
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #11, !dbg !867
  tail call void @exit(i32 0) #15, !dbg !868
  unreachable, !dbg !867

; <label>:33:                                     ; preds = %22
  tail call void @usage(i32 1) #16, !dbg !870
  unreachable, !dbg !870

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* @optind, align 4, !dbg !871, !tbaa !873
  %36 = sub nsw i32 %0, %35, !dbg !875
  %37 = icmp sgt i32 %36, 1, !dbg !876
  br i1 %37, label %38, label %45, !dbg !877

; <label>:38:                                     ; preds = %34
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !878
  %40 = load i32, i32* @optind, align 4, !dbg !880, !tbaa !873
  %41 = sext i32 %40 to i64, !dbg !881
  %42 = getelementptr inbounds i8*, i8** %1, i64 %41, !dbg !881
  %43 = load i8*, i8** %42, align 8, !dbg !881, !tbaa !645
  %44 = tail call i8* @quote(i8* %43) #11, !dbg !882
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39, i8* %44) #11, !dbg !884
  tail call void @usage(i32 1) #16, !dbg !886
  unreachable, !dbg !886

; <label>:45:                                     ; preds = %34
  %46 = icmp slt i32 %35, %0, !dbg !887
  br i1 %46, label %47, label %51, !dbg !889

; <label>:47:                                     ; preds = %45
  %48 = sext i32 %35 to i64, !dbg !890
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !890
  %50 = load i8*, i8** %49, align 8, !dbg !890, !tbaa !645
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !763, metadata !637), !dbg !891
  br label %51, !dbg !892

; <label>:51:                                     ; preds = %45, %47
  %52 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %45 ]
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !763, metadata !637), !dbg !891
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !773, metadata !637), !dbg !893
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !774, metadata !637), !dbg !894
  %53 = load i8, i8* %52, align 1, !dbg !895, !tbaa !897
  %54 = icmp eq i8 %53, 45, !dbg !898
  br i1 %54, label %55, label %61, !dbg !901

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !903
  %57 = load i8, i8* %56, align 1, !dbg !903, !tbaa !897
  %58 = icmp eq i8 %57, 0, !dbg !906
  br i1 %58, label %59, label %61, !dbg !908

; <label>:59:                                     ; preds = %55
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !910, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, i64 0, metadata !708, metadata !637), !dbg !912
  br label %68, !dbg !913

; <label>:61:                                     ; preds = %51, %55
  %62 = tail call %struct._IO_FILE* @fopen(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)), !dbg !914
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %62, i64 0, metadata !708, metadata !637), !dbg !912
  %63 = icmp eq %struct._IO_FILE* %62, null, !dbg !916
  br i1 %63, label %64, label %68, !dbg !918

; <label>:64:                                     ; preds = %61
  %65 = tail call i32* @__errno_location() #1, !dbg !919
  %66 = load i32, i32* %65, align 4, !dbg !919, !tbaa !873
  %67 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %52) #11, !dbg !920
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %67) #11, !dbg !922
  unreachable, !dbg !919

; <label>:68:                                     ; preds = %61, %59
  %69 = phi %struct._IO_FILE* [ %60, %59 ], [ %62, %61 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !708, metadata !637), !dbg !912
  tail call void @fadvise(%struct._IO_FILE* %69, i32 2) #11, !dbg !924
  %70 = icmp eq i8 %23, 0, !dbg !925
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !645
  br i1 %70, label %161, label %72, !dbg !926

; <label>:72:                                     ; preds = %68
  %73 = icmp eq i8 %20, 0, !dbg !927
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !791, metadata !637) #11, !dbg !928
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !792, metadata !637) #11, !dbg !929
  tail call void @llvm.dbg.value(metadata i1 %73, i64 0, metadata !793, metadata !930) #11, !dbg !931
  %74 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0, !dbg !932
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %74) #11, !dbg !932
  %75 = getelementptr inbounds [5120 x i8], [5120 x i8]* %4, i64 0, i64 0, !dbg !933
  call void @llvm.lifetime.start(i64 5120, i8* nonnull %75) #11, !dbg !933
  %76 = bitcast %struct.base32_decode_context* %5 to i8*, !dbg !934
  call void @llvm.lifetime.start(i64 12, i8* nonnull %76) #11, !dbg !934
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %5, i64 0, metadata !799, metadata !935) #11, !dbg !936
  call void @base32_decode_ctx_init(%struct.base32_decode_context* nonnull %5) #11, !dbg !937
  %77 = bitcast i64* %6 to i8*
  %78 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %69, i64 0, i32 0
  %79 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %5, i64 0, i32 0
  br label %80, !dbg !938, !llvm.loop !939

; <label>:80:                                     ; preds = %156, %72
  call void @llvm.lifetime.start(i64 8, i8* nonnull %77) #11, !dbg !942
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !798, metadata !637) #11, !dbg !943
  br label %81, !dbg !944, !llvm.loop !945

; <label>:81:                                     ; preds = %121, %80
  %82 = phi i64 [ 0, %80 ], [ %113, %121 ]
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !798, metadata !637) #11, !dbg !943
  %83 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %82, !dbg !948
  %84 = sub i64 8192, %82, !dbg !948
  %85 = call i64 @fread_unlocked(i8* %83, i64 1, i64 %84, %struct._IO_FILE* %69) #11, !dbg !948
  call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !808, metadata !637) #11, !dbg !949
  store i64 %85, i64* %6, align 8, !dbg !950, !tbaa !951
  br i1 %73, label %111, label %86, !dbg !953

; <label>:86:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !810, metadata !637) #11, !dbg !954
  call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !808, metadata !637) #11, !dbg !949
  %87 = icmp eq i64 %85, 0, !dbg !955
  br i1 %87, label %111, label %88, !dbg !959

; <label>:88:                                     ; preds = %86
  br label %89

; <label>:89:                                     ; preds = %88, %102
  %90 = phi i64 [ %97, %102 ], [ %85, %88 ]
  %91 = phi i64 [ %103, %102 ], [ 0, %88 ]
  %92 = add i64 %91, %82
  %93 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 %92
  %94 = getelementptr inbounds i8, i8* %83, i64 %91
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  br label %96, !dbg !959

; <label>:96:                                     ; preds = %105, %89
  %97 = phi i64 [ %90, %89 ], [ %106, %105 ], !dbg !961
  %98 = load i8, i8* %93, align 1, !dbg !962, !tbaa !897
  %99 = call zeroext i1 @isbase32(i8 signext %98) #1, !dbg !964
  %100 = icmp eq i8 %98, 61, !dbg !965
  %101 = or i1 %99, %100, !dbg !967
  br i1 %101, label %102, label %105, !dbg !967

; <label>:102:                                    ; preds = %96
  %103 = add i64 %91, 1, !dbg !968
  call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !810, metadata !637) #11, !dbg !954
  call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !810, metadata !637) #11, !dbg !954
  call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !808, metadata !637) #11, !dbg !949
  %104 = icmp ult i64 %103, %97, !dbg !955
  br i1 %104, label %89, label %110, !dbg !959, !llvm.loop !969

; <label>:105:                                    ; preds = %96
  %106 = add i64 %97, -1, !dbg !972
  call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !808, metadata !637) #11, !dbg !949
  store i64 %106, i64* %6, align 8, !dbg !972, !tbaa !951
  %107 = sub i64 %106, %91, !dbg !973
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %94, i8* nonnull %95, i64 %107, i32 1, i1 false) #11, !dbg !974
  call void @llvm.dbg.value(metadata i64 %91, i64 0, metadata !810, metadata !637) #11, !dbg !954
  call void @llvm.dbg.value(metadata i64 %106, i64 0, metadata !808, metadata !637) #11, !dbg !949
  %108 = icmp ugt i64 %106, %91, !dbg !955
  br i1 %108, label %96, label %109, !dbg !959, !llvm.loop !969

; <label>:109:                                    ; preds = %105
  br label %111, !dbg !949

; <label>:110:                                    ; preds = %102
  br label %111, !dbg !949

; <label>:111:                                    ; preds = %110, %109, %81, %86
  %112 = phi i64 [ 0, %86 ], [ %85, %81 ], [ %106, %109 ], [ %97, %110 ], !dbg !975
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !808, metadata !637) #11, !dbg !949
  %113 = add i64 %112, %82, !dbg !976
  call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !798, metadata !637) #11, !dbg !943
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !977, metadata !637) #11, !dbg !983
  %114 = load i32, i32* %78, align 8, !dbg !986, !tbaa !987
  %115 = and i32 %114, 32, !dbg !986
  %116 = icmp eq i32 %115, 0, !dbg !990
  br i1 %116, label %121, label %117, !dbg !991

; <label>:117:                                    ; preds = %111
  %118 = tail call i32* @__errno_location() #1, !dbg !992
  %119 = load i32, i32* %118, align 4, !dbg !992, !tbaa !873
  %120 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !993
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %119, i8* %120) #11, !dbg !995
  unreachable, !dbg !992

; <label>:121:                                    ; preds = %111
  %122 = icmp ult i64 %113, 8192, !dbg !997
  %123 = and i32 %114, 16, !dbg !998
  %124 = icmp eq i32 %123, 0, !dbg !1004
  %125 = and i1 %122, %124, !dbg !1005
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !1001, metadata !637) #11, !dbg !1006
  br i1 %125, label %81, label %126, !dbg !1005, !llvm.loop !945

; <label>:126:                                    ; preds = %121
  br label %133, !dbg !1007

; <label>:127:                                    ; preds = %152
  call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !809, metadata !637) #11, !dbg !1012
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !1001, metadata !637) #11, !dbg !1013
  %128 = load i32, i32* %78, align 8, !dbg !1016, !tbaa !987
  %129 = lshr i32 %128, 4, !dbg !1017
  %130 = and i32 %129, 1, !dbg !1017
  %131 = add nuw nsw i32 %130, 1, !dbg !1017
  %132 = icmp ult i32 %153, %131, !dbg !1018
  br i1 %132, label %133, label %156, !dbg !1019, !llvm.loop !1021

; <label>:133:                                    ; preds = %126, %127
  %134 = phi i32 [ %128, %127 ], [ %114, %126 ]
  %135 = phi i32 [ %153, %127 ], [ 0, %126 ]
  %136 = icmp eq i32 %135, 1, !dbg !1007
  %137 = load i32, i32* %79, align 4, !dbg !1024
  %138 = icmp eq i32 %137, 0, !dbg !1026
  %139 = and i1 %136, %138, !dbg !1027
  br i1 %139, label %156, label %140, !dbg !1027

; <label>:140:                                    ; preds = %133
  call void @llvm.dbg.value(metadata i64 5120, i64 0, metadata !808, metadata !637) #11, !dbg !949
  store i64 5120, i64* %6, align 8, !dbg !1028, !tbaa !951
  %141 = icmp eq i32 %135, 0, !dbg !1029
  %142 = select i1 %141, i64 %113, i64 0, !dbg !1030
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %5, i64 0, metadata !799, metadata !935) #11, !dbg !936
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !808, metadata !935) #11, !dbg !949
  %143 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* nonnull %5, i8* nonnull %74, i64 %142, i8* nonnull %75, i64* nonnull %6) #11, !dbg !1031
  %144 = load i64, i64* %6, align 8, !dbg !1033, !tbaa !951
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !808, metadata !637) #11, !dbg !949
  %145 = call i64 @fwrite_unlocked(i8* nonnull %75, i64 1, i64 %144, %struct._IO_FILE* %71) #11, !dbg !1033
  %146 = load i64, i64* %6, align 8, !dbg !1035, !tbaa !951
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !808, metadata !637) #11, !dbg !949
  %147 = icmp ult i64 %145, %146, !dbg !1036
  br i1 %147, label %148, label %152, !dbg !1037

; <label>:148:                                    ; preds = %140
  %149 = tail call i32* @__errno_location() #1, !dbg !1038
  %150 = load i32, i32* %149, align 4, !dbg !1038, !tbaa !873
  %151 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1039
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %150, i8* %151) #11, !dbg !1041
  unreachable, !dbg !1038

; <label>:152:                                    ; preds = %140
  %153 = add i32 %135, 1, !dbg !1043
  call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !809, metadata !637) #11, !dbg !1012
  br i1 %143, label %127, label %154, !dbg !1045

; <label>:154:                                    ; preds = %152
  %155 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1046
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %155) #11, !dbg !1048
  unreachable, !dbg !1046

; <label>:156:                                    ; preds = %133, %127
  %157 = phi i32 [ %134, %133 ], [ %128, %127 ], !dbg !1050
  call void @llvm.lifetime.end(i64 8, i8* nonnull %77) #11, !dbg !1052
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !1001, metadata !637) #11, !dbg !1053
  %158 = and i32 %157, 16, !dbg !1050
  %159 = icmp eq i32 %158, 0, !dbg !1054
  br i1 %159, label %80, label %160, !dbg !1055, !llvm.loop !939

; <label>:160:                                    ; preds = %156
  call void @llvm.lifetime.end(i64 12, i8* nonnull %76) #11, !dbg !1056
  call void @llvm.lifetime.end(i64 5120, i8* nonnull %75) #11, !dbg !1056
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %74) #11, !dbg !1056
  br label %280, !dbg !1057

; <label>:161:                                    ; preds = %68
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !826, metadata !637) #11, !dbg !1058
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !827, metadata !637) #11, !dbg !1059
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !828, metadata !637) #11, !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !829, metadata !637) #11, !dbg !1061
  %162 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 0, !dbg !1062
  call void @llvm.lifetime.start(i64 30720, i8* nonnull %162) #11, !dbg !1062
  %163 = getelementptr inbounds [49152 x i8], [49152 x i8]* %8, i64 0, i64 0, !dbg !1063
  call void @llvm.lifetime.start(i64 49152, i8* nonnull %163) #11, !dbg !1063
  %164 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %69, i64 0, i32 0
  %165 = icmp eq i64 %15, 0
  %166 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 5
  %167 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 6
  br label %168, !dbg !1064, !llvm.loop !1065

; <label>:168:                                    ; preds = %249, %161
  %169 = phi i64 [ 0, %161 ], [ %245, %249 ]
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !834, metadata !637) #11, !dbg !1068
  br label %170, !dbg !1069, !llvm.loop !1070

; <label>:170:                                    ; preds = %179, %168
  %171 = phi i64 [ 0, %168 ], [ %175, %179 ]
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !834, metadata !637) #11, !dbg !1068
  %172 = getelementptr inbounds [30720 x i8], [30720 x i8]* %7, i64 0, i64 %171, !dbg !1073
  %173 = sub i64 30720, %171, !dbg !1073
  %174 = call i64 @fread_unlocked(i8* %172, i64 1, i64 %173, %struct._IO_FILE* %69) #11, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %174, i64 0, metadata !835, metadata !637) #11, !dbg !1075
  %175 = add i64 %174, %171, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %175, i64 0, metadata !834, metadata !637) #11, !dbg !1068
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !1001, metadata !637) #11, !dbg !1077
  %176 = load i32, i32* %164, align 8, !dbg !1079, !tbaa !987
  %177 = and i32 %176, 16, !dbg !1079
  %178 = icmp eq i32 %177, 0, !dbg !1080
  br i1 %178, label %179, label %184, !dbg !1081

; <label>:179:                                    ; preds = %170
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !977, metadata !637) #11, !dbg !1082
  %180 = and i32 %176, 32, !dbg !1085
  %181 = icmp eq i32 %180, 0, !dbg !1086
  %182 = icmp ult i64 %175, 30720, !dbg !1087
  %183 = and i1 %182, %181, !dbg !1089
  br i1 %183, label %170, label %184, !dbg !1089, !llvm.loop !1070

; <label>:184:                                    ; preds = %179, %170
  %185 = icmp eq i64 %175, 0, !dbg !1090
  br i1 %185, label %244, label %186, !dbg !1092

; <label>:186:                                    ; preds = %184
  %187 = add i64 %175, 4, !dbg !1093
  %188 = udiv i64 %187, 5, !dbg !1093
  %189 = shl i64 %188, 3, !dbg !1093
  call void @base32_encode(i8* nonnull %162, i64 %175, i8* nonnull %163, i64 %189) #11, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !1096, metadata !637) #11, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1101, metadata !637) #11, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1102, metadata !637) #11, !dbg !1115
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !1104, metadata !637) #11, !dbg !1116
  br i1 %165, label %193, label %190, !dbg !1117

; <label>:190:                                    ; preds = %186
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1105, metadata !637) #11, !dbg !1118
  %191 = icmp eq i64 %189, 0, !dbg !1119
  br i1 %191, label %244, label %192, !dbg !1121

; <label>:192:                                    ; preds = %190
  br label %231

; <label>:193:                                    ; preds = %186
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1123, !tbaa !645
  %195 = call i64 @fwrite_unlocked(i8* nonnull %163, i64 1, i64 %189, %struct._IO_FILE* %194) #11, !dbg !1123
  %196 = icmp ult i64 %195, %189, !dbg !1126
  br i1 %196, label %197, label %244, !dbg !1127

; <label>:197:                                    ; preds = %193
  %198 = tail call i32* @__errno_location() #1, !dbg !1128
  %199 = load i32, i32* %198, align 4, !dbg !1128, !tbaa !873
  %200 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1129
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %199, i8* %200) #11, !dbg !1131
  unreachable, !dbg !1128

; <label>:201:                                    ; preds = %239, %210
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1133, metadata !637) #11, !dbg !1139
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !1138, metadata !637) #11, !dbg !1144
  %202 = load i8*, i8** %166, align 8, !dbg !1145, !tbaa !1146
  %203 = load i8*, i8** %167, align 8, !dbg !1145, !tbaa !1147
  %204 = icmp ult i8* %202, %203, !dbg !1145
  br i1 %204, label %205, label %207, !dbg !1145, !prof !1148

; <label>:205:                                    ; preds = %201
  %206 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !1149
  store i8* %206, i8** %166, align 8, !dbg !1149, !tbaa !1146
  store i8 10, i8* %202, align 1, !dbg !1149, !tbaa !897
  br label %210, !dbg !1151

; <label>:207:                                    ; preds = %201
  %208 = call i32 @__overflow(%struct._IO_FILE* nonnull %71, i32 10) #11, !dbg !1152
  %209 = icmp eq i32 %208, -1, !dbg !1154
  br i1 %209, label %211, label %210, !dbg !1151

; <label>:210:                                    ; preds = %207, %205
  call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1106, metadata !637) #11, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !1111, metadata !637) #11, !dbg !1156
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1111, metadata !637) #11, !dbg !1156
  br i1 %242, label %201, label %215, !dbg !1157

; <label>:211:                                    ; preds = %207
  %212 = tail call i32* @__errno_location() #1, !dbg !1158
  %213 = load i32, i32* %212, align 4, !dbg !1158, !tbaa !873
  %214 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1159
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %213, i8* %214) #11, !dbg !1161
  unreachable, !dbg !1158

; <label>:215:                                    ; preds = %210
  br label %216, !dbg !1163

; <label>:216:                                    ; preds = %215, %231
  %217 = phi i64 [ %232, %231 ], [ 0, %215 ]
  %218 = phi i64 [ %237, %231 ], [ %241, %215 ]
  %219 = getelementptr inbounds [49152 x i8], [49152 x i8]* %8, i64 0, i64 %233, !dbg !1163
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1163, !tbaa !645
  %221 = call i64 @fwrite_unlocked(i8* %219, i64 1, i64 %218, %struct._IO_FILE* %220) #11, !dbg !1163
  %222 = icmp ult i64 %221, %218, !dbg !1166
  br i1 %222, label %223, label %227, !dbg !1167

; <label>:223:                                    ; preds = %216
  %224 = tail call i32* @__errno_location() #1, !dbg !1168
  %225 = load i32, i32* %224, align 4, !dbg !1168, !tbaa !873
  %226 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1169
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %225, i8* %226) #11, !dbg !1171
  unreachable, !dbg !1168

; <label>:227:                                    ; preds = %216
  %228 = add i64 %218, %217, !dbg !1173
  %229 = add i64 %218, %233, !dbg !1174
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1105, metadata !637) #11, !dbg !1118
  call void @llvm.dbg.value(metadata i64 %229, i64 0, metadata !1105, metadata !637) #11, !dbg !1118
  %230 = icmp ult i64 %229, %189, !dbg !1119
  br i1 %230, label %231, label %243, !dbg !1121, !llvm.loop !1175

; <label>:231:                                    ; preds = %192, %227
  %232 = phi i64 [ %228, %227 ], [ %169, %192 ]
  %233 = phi i64 [ %229, %227 ], [ 0, %192 ]
  %234 = sub i64 %189, %233
  %235 = sub i64 %15, %232, !dbg !1178
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1106, metadata !637) #11, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !1111, metadata !637) #11, !dbg !1156
  %236 = icmp ult i64 %235, %234, !dbg !1179
  %237 = select i1 %236, i64 %235, i64 %234, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %237, i64 0, metadata !1111, metadata !637) #11, !dbg !1156
  %238 = icmp eq i64 %237, 0, !dbg !1182
  br i1 %238, label %239, label %216, !dbg !1157

; <label>:239:                                    ; preds = %231
  %240 = icmp ugt i64 %234, %15
  %241 = select i1 %240, i64 %15, i64 %234
  %242 = icmp eq i64 %241, 0
  br label %201, !dbg !1157

; <label>:243:                                    ; preds = %227
  br label %244, !dbg !1183

; <label>:244:                                    ; preds = %243, %193, %190, %184
  %245 = phi i64 [ %169, %184 ], [ %169, %193 ], [ %169, %190 ], [ %228, %243 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !1001, metadata !637) #11, !dbg !1183
  %246 = load i32, i32* %164, align 8, !dbg !1185, !tbaa !987
  %247 = and i32 %246, 16, !dbg !1185
  %248 = icmp eq i32 %247, 0, !dbg !1186
  br i1 %248, label %249, label %254, !dbg !1187

; <label>:249:                                    ; preds = %244
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !977, metadata !637) #11, !dbg !1188
  %250 = and i32 %246, 32, !dbg !1191
  %251 = icmp eq i32 %250, 0, !dbg !1192
  %252 = icmp eq i64 %175, 30720, !dbg !1193
  %253 = and i1 %252, %251, !dbg !1195
  br i1 %253, label %168, label %254, !dbg !1195, !llvm.loop !1065

; <label>:254:                                    ; preds = %249, %244
  %255 = icmp ne i64 %15, 0, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %245, i64 0, metadata !829, metadata !637) #11, !dbg !1061
  %256 = icmp ne i64 %245, 0, !dbg !1198
  %257 = and i1 %255, %256, !dbg !1200
  br i1 %257, label %258, label %271, !dbg !1200

; <label>:258:                                    ; preds = %254
  call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1133, metadata !637) #11, !dbg !1201
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %71, i64 0, metadata !1138, metadata !637) #11, !dbg !1204
  %259 = load i8*, i8** %166, align 8, !dbg !1205, !tbaa !1146
  %260 = load i8*, i8** %167, align 8, !dbg !1205, !tbaa !1147
  %261 = icmp ult i8* %259, %260, !dbg !1205
  br i1 %261, label %262, label %264, !dbg !1205, !prof !1148

; <label>:262:                                    ; preds = %258
  %263 = getelementptr inbounds i8, i8* %259, i64 1, !dbg !1206
  store i8* %263, i8** %166, align 8, !dbg !1206, !tbaa !1146
  store i8 10, i8* %259, align 1, !dbg !1206, !tbaa !897
  br label %271, !dbg !1207

; <label>:264:                                    ; preds = %258
  %265 = call i32 @__overflow(%struct._IO_FILE* nonnull %71, i32 10) #11, !dbg !1208
  %266 = icmp eq i32 %265, -1, !dbg !1209
  br i1 %266, label %267, label %271, !dbg !1207

; <label>:267:                                    ; preds = %264
  %268 = tail call i32* @__errno_location() #1, !dbg !1210
  %269 = load i32, i32* %268, align 4, !dbg !1210, !tbaa !873
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1211
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %269, i8* %270) #11, !dbg !1212
  unreachable, !dbg !1210

; <label>:271:                                    ; preds = %264, %262, %254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %69, i64 0, metadata !977, metadata !637) #11, !dbg !1213
  %272 = load i32, i32* %164, align 8, !dbg !1216, !tbaa !987
  %273 = and i32 %272, 32, !dbg !1216
  %274 = icmp eq i32 %273, 0, !dbg !1217
  br i1 %274, label %279, label %275, !dbg !1218

; <label>:275:                                    ; preds = %271
  %276 = tail call i32* @__errno_location() #1, !dbg !1219
  %277 = load i32, i32* %276, align 4, !dbg !1219, !tbaa !873
  %278 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !1220
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %277, i8* %278) #11, !dbg !1222
  unreachable, !dbg !1219

; <label>:279:                                    ; preds = %271
  call void @llvm.lifetime.end(i64 49152, i8* nonnull %163) #11, !dbg !1224
  call void @llvm.lifetime.end(i64 30720, i8* nonnull %162) #11, !dbg !1224
  br label %280

; <label>:280:                                    ; preds = %279, %160
  %281 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %69) #11, !dbg !1225
  %282 = icmp eq i32 %281, -1, !dbg !1226
  br i1 %282, label %283, label %300, !dbg !1227

; <label>:283:                                    ; preds = %280
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !782, metadata !637), !dbg !1228
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !783, metadata !637), !dbg !1229
  %284 = load i8, i8* %52, align 1, !dbg !1230, !tbaa !897
  %285 = icmp eq i8 %284, 45, !dbg !1232
  br i1 %285, label %289, label %286, !dbg !1235

; <label>:286:                                    ; preds = %283
  %287 = tail call i32* @__errno_location() #1, !dbg !1237
  %288 = load i32, i32* %287, align 4, !tbaa !873
  br label %297, !dbg !1238

; <label>:289:                                    ; preds = %283
  %290 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1240
  %291 = load i8, i8* %290, align 1, !dbg !1240, !tbaa !897
  %292 = icmp eq i8 %291, 0, !dbg !1243
  %293 = tail call i32* @__errno_location() #1, !dbg !1237
  %294 = load i32, i32* %293, align 4, !tbaa !873
  br i1 %292, label %295, label %297, !dbg !1238

; <label>:295:                                    ; preds = %289
  %296 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !1245
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %294, i8* %296) #11, !dbg !1247
  unreachable, !dbg !1237

; <label>:297:                                    ; preds = %286, %289
  %298 = phi i32 [ %288, %286 ], [ %294, %289 ]
  %299 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %52) #11, !dbg !1249
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %299) #11, !dbg !1250
  unreachable, !dbg !1251

; <label>:300:                                    ; preds = %280
  ret i32 0, !dbg !1252
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

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @base32_encode(i8* noalias nocapture readonly, i64, i8* noalias nocapture, i64) local_unnamed_addr #6 !dbg !94 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !112, metadata !637), !dbg !1253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !113, metadata !637), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !114, metadata !637), !dbg !1255
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !115, metadata !637), !dbg !1256
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !115, metadata !637), !dbg !1256
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !114, metadata !637), !dbg !1255
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !113, metadata !637), !dbg !1254
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !112, metadata !637), !dbg !1253
  %5 = icmp ne i64 %1, 0, !dbg !1257
  %6 = icmp ne i64 %3, 0, !dbg !1259
  %7 = and i1 %5, %6, !dbg !1261
  br i1 %7, label %8, label %163, !dbg !1262

; <label>:8:                                      ; preds = %4
  br label %9, !dbg !1264

; <label>:9:                                      ; preds = %8, %156
  %10 = phi i64 [ %154, %156 ], [ %3, %8 ]
  %11 = phi i8* [ %157, %156 ], [ %2, %8 ]
  %12 = phi i64 [ %158, %156 ], [ %1, %8 ]
  %13 = phi i8* [ %162, %156 ], [ %0, %8 ]
  %14 = load i8, i8* %13, align 1, !dbg !1264, !tbaa !897
  %15 = zext i8 %14 to i64, !dbg !1266
  %16 = lshr i64 %15, 3, !dbg !1267
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %16, !dbg !1268
  %18 = load i8, i8* %17, align 1, !dbg !1268, !tbaa !897
  %19 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1269
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !114, metadata !637), !dbg !1255
  store i8 %18, i8* %11, align 1, !dbg !1270, !tbaa !897
  %20 = icmp eq i64 %10, 1, !dbg !1271
  br i1 %20, label %168, label %21, !dbg !1273

; <label>:21:                                     ; preds = %9
  %22 = load i8, i8* %13, align 1, !dbg !1274, !tbaa !897
  %23 = zext i8 %22 to i32, !dbg !1275
  %24 = shl nuw nsw i32 %23, 2, !dbg !1276
  %25 = icmp ne i64 %12, 1, !dbg !1277
  br i1 %25, label %26, label %31, !dbg !1277

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1278
  %28 = load i8, i8* %27, align 1, !dbg !1278, !tbaa !897
  %29 = zext i8 %28 to i32, !dbg !1280
  %30 = lshr i32 %29, 6, !dbg !1281
  br label %31, !dbg !1282

; <label>:31:                                     ; preds = %21, %26
  %32 = phi i32 [ %30, %26 ], [ 0, %21 ], !dbg !1283
  %33 = add nuw nsw i32 %32, %24, !dbg !1285
  %34 = and i32 %33, 31, !dbg !1286
  %35 = zext i32 %34 to i64, !dbg !1287
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %35, !dbg !1287
  %37 = load i8, i8* %36, align 1, !dbg !1287, !tbaa !897
  %38 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !1288
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !114, metadata !637), !dbg !1255
  store i8 %37, i8* %19, align 1, !dbg !1289, !tbaa !897
  %39 = icmp eq i64 %10, 2, !dbg !1290
  br i1 %39, label %168, label %40, !dbg !1292

; <label>:40:                                     ; preds = %31
  br i1 %25, label %41, label %49, !dbg !1293

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1294
  %43 = load i8, i8* %42, align 1, !dbg !1294, !tbaa !897
  %44 = zext i8 %43 to i64, !dbg !1295
  %45 = lshr i64 %44, 1, !dbg !1296
  %46 = and i64 %45, 31, !dbg !1297
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %46, !dbg !1298
  %48 = load i8, i8* %47, align 1, !dbg !1298, !tbaa !897
  br label %49, !dbg !1299

; <label>:49:                                     ; preds = %40, %41
  %50 = phi i8 [ %48, %41 ], [ 61, %40 ], !dbg !1300
  %51 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !1301
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !114, metadata !637), !dbg !1255
  store i8 %50, i8* %38, align 1, !dbg !1302, !tbaa !897
  %52 = icmp eq i64 %10, 3, !dbg !1303
  br i1 %52, label %168, label %53, !dbg !1305

; <label>:53:                                     ; preds = %49
  br i1 %25, label %54, label %73, !dbg !1306

; <label>:54:                                     ; preds = %53
  %55 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !1307
  %56 = load i8, i8* %55, align 1, !dbg !1307, !tbaa !897
  %57 = zext i8 %56 to i32, !dbg !1308
  %58 = shl nuw nsw i32 %57, 4, !dbg !1309
  %59 = add i64 %12, -2, !dbg !1310
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !113, metadata !637), !dbg !1254
  %60 = icmp eq i64 %59, 0, !dbg !1310
  br i1 %60, label %66, label %61, !dbg !1310

; <label>:61:                                     ; preds = %54
  %62 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1311
  %63 = load i8, i8* %62, align 1, !dbg !1311, !tbaa !897
  %64 = zext i8 %63 to i32, !dbg !1312
  %65 = lshr i32 %64, 4, !dbg !1313
  br label %66, !dbg !1314

; <label>:66:                                     ; preds = %54, %61
  %67 = phi i32 [ %65, %61 ], [ 0, %54 ], !dbg !1315
  %68 = add nuw nsw i32 %67, %58, !dbg !1316
  %69 = and i32 %68, 31, !dbg !1317
  %70 = zext i32 %69 to i64, !dbg !1318
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %70, !dbg !1318
  %72 = load i8, i8* %71, align 1, !dbg !1318, !tbaa !897
  br label %73, !dbg !1319

; <label>:73:                                     ; preds = %53, %66
  %74 = phi i64 [ %59, %66 ], [ 0, %53 ]
  %75 = phi i8 [ %72, %66 ], [ 61, %53 ], !dbg !1320
  tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !113, metadata !637), !dbg !1254
  %76 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !1321
  tail call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !114, metadata !637), !dbg !1255
  store i8 %75, i8* %51, align 1, !dbg !1322, !tbaa !897
  %77 = icmp eq i64 %10, 4, !dbg !1323
  br i1 %77, label %168, label %78, !dbg !1325

; <label>:78:                                     ; preds = %73
  %79 = icmp eq i64 %74, 0, !dbg !1326
  br i1 %79, label %99, label %80, !dbg !1326

; <label>:80:                                     ; preds = %78
  %81 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1327
  %82 = load i8, i8* %81, align 1, !dbg !1327, !tbaa !897
  %83 = zext i8 %82 to i32, !dbg !1328
  %84 = shl nuw nsw i32 %83, 1, !dbg !1329
  %85 = add i64 %74, -1, !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %85, i64 0, metadata !113, metadata !637), !dbg !1254
  %86 = icmp eq i64 %85, 0, !dbg !1330
  br i1 %86, label %92, label %87, !dbg !1330

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !1331
  %89 = load i8, i8* %88, align 1, !dbg !1331, !tbaa !897
  %90 = zext i8 %89 to i32, !dbg !1332
  %91 = lshr i32 %90, 7, !dbg !1333
  br label %92, !dbg !1334

; <label>:92:                                     ; preds = %80, %87
  %93 = phi i32 [ %91, %87 ], [ 0, %80 ], !dbg !1335
  %94 = add nuw nsw i32 %93, %84, !dbg !1336
  %95 = and i32 %94, 31, !dbg !1337
  %96 = zext i32 %95 to i64, !dbg !1338
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %96, !dbg !1338
  %98 = load i8, i8* %97, align 1, !dbg !1338, !tbaa !897
  br label %99, !dbg !1339

; <label>:99:                                     ; preds = %78, %92
  %100 = phi i64 [ %85, %92 ], [ 0, %78 ]
  %101 = phi i8 [ %98, %92 ], [ 61, %78 ], !dbg !1340
  tail call void @llvm.dbg.value(metadata i64 %100, i64 0, metadata !113, metadata !637), !dbg !1254
  %102 = getelementptr inbounds i8, i8* %11, i64 5, !dbg !1341
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !114, metadata !637), !dbg !1255
  store i8 %101, i8* %76, align 1, !dbg !1342, !tbaa !897
  %103 = icmp eq i64 %10, 5, !dbg !1343
  br i1 %103, label %168, label %104, !dbg !1345

; <label>:104:                                    ; preds = %99
  %105 = icmp ne i64 %100, 0, !dbg !1346
  br i1 %105, label %106, label %114, !dbg !1346

; <label>:106:                                    ; preds = %104
  %107 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !1347
  %108 = load i8, i8* %107, align 1, !dbg !1347, !tbaa !897
  %109 = zext i8 %108 to i64, !dbg !1348
  %110 = lshr i64 %109, 2, !dbg !1349
  %111 = and i64 %110, 31, !dbg !1350
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %111, !dbg !1351
  %113 = load i8, i8* %112, align 1, !dbg !1351, !tbaa !897
  br label %114, !dbg !1352

; <label>:114:                                    ; preds = %104, %106
  %115 = phi i8 [ %113, %106 ], [ 61, %104 ], !dbg !1353
  %116 = getelementptr inbounds i8, i8* %11, i64 6, !dbg !1354
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !114, metadata !637), !dbg !1255
  store i8 %115, i8* %102, align 1, !dbg !1355, !tbaa !897
  %117 = icmp eq i64 %10, 6, !dbg !1356
  br i1 %117, label %168, label %118, !dbg !1358

; <label>:118:                                    ; preds = %114
  br i1 %105, label %119, label %138, !dbg !1359

; <label>:119:                                    ; preds = %118
  %120 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !1360
  %121 = load i8, i8* %120, align 1, !dbg !1360, !tbaa !897
  %122 = zext i8 %121 to i32, !dbg !1361
  %123 = shl nuw nsw i32 %122, 3, !dbg !1362
  %124 = add i64 %100, -1, !dbg !1363
  tail call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !113, metadata !637), !dbg !1254
  %125 = icmp eq i64 %124, 0, !dbg !1363
  br i1 %125, label %131, label %126, !dbg !1363

; <label>:126:                                    ; preds = %119
  %127 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !1364
  %128 = load i8, i8* %127, align 1, !dbg !1364, !tbaa !897
  %129 = zext i8 %128 to i32, !dbg !1365
  %130 = lshr i32 %129, 5, !dbg !1366
  br label %131, !dbg !1367

; <label>:131:                                    ; preds = %119, %126
  %132 = phi i32 [ %130, %126 ], [ 0, %119 ], !dbg !1368
  %133 = add nuw nsw i32 %132, %123, !dbg !1369
  %134 = and i32 %133, 31, !dbg !1370
  %135 = zext i32 %134 to i64, !dbg !1371
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %135, !dbg !1371
  %137 = load i8, i8* %136, align 1, !dbg !1371, !tbaa !897
  br label %138, !dbg !1372

; <label>:138:                                    ; preds = %118, %131
  %139 = phi i64 [ %124, %131 ], [ 0, %118 ]
  %140 = phi i8 [ %137, %131 ], [ 61, %118 ], !dbg !1373
  tail call void @llvm.dbg.value(metadata i64 %139, i64 0, metadata !113, metadata !637), !dbg !1254
  %141 = getelementptr inbounds i8, i8* %11, i64 7, !dbg !1374
  tail call void @llvm.dbg.value(metadata i8* %141, i64 0, metadata !114, metadata !637), !dbg !1255
  store i8 %140, i8* %116, align 1, !dbg !1375, !tbaa !897
  %142 = icmp eq i64 %10, 7, !dbg !1376
  br i1 %142, label %168, label %143, !dbg !1378

; <label>:143:                                    ; preds = %138
  %144 = icmp ne i64 %139, 0, !dbg !1379
  br i1 %144, label %145, label %152, !dbg !1379

; <label>:145:                                    ; preds = %143
  %146 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !1380
  %147 = load i8, i8* %146, align 1, !dbg !1380, !tbaa !897
  %148 = and i8 %147, 31, !dbg !1381
  %149 = zext i8 %148 to i64, !dbg !1382
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %149, !dbg !1382
  %151 = load i8, i8* %150, align 1, !dbg !1382, !tbaa !897
  br label %152, !dbg !1383

; <label>:152:                                    ; preds = %143, %145
  %153 = phi i8 [ %151, %145 ], [ 61, %143 ], !dbg !1384
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !114, metadata !637), !dbg !1255
  store i8 %153, i8* %141, align 1, !dbg !1385, !tbaa !897
  %154 = add i64 %10, -8, !dbg !1386
  tail call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !115, metadata !637), !dbg !1256
  %155 = icmp eq i64 %154, 0, !dbg !1386
  br i1 %155, label %168, label %156, !dbg !1388

; <label>:156:                                    ; preds = %152
  %157 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !1389
  %158 = add i64 %139, -1, !dbg !1390
  tail call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !113, metadata !637), !dbg !1254
  %159 = icmp eq i64 %158, 0, !dbg !1392
  %160 = xor i1 %144, true, !dbg !1392
  %161 = or i1 %159, %160, !dbg !1392
  %162 = getelementptr inbounds i8, i8* %13, i64 5, !dbg !1394
  tail call void @llvm.dbg.value(metadata i8* %162, i64 0, metadata !112, metadata !637), !dbg !1253
  tail call void @llvm.dbg.value(metadata i64 %154, i64 0, metadata !115, metadata !637), !dbg !1256
  tail call void @llvm.dbg.value(metadata i8* %157, i64 0, metadata !114, metadata !637), !dbg !1255
  br i1 %161, label %165, label %9, !dbg !1262

; <label>:163:                                    ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !115, metadata !637), !dbg !1256
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !114, metadata !637), !dbg !1255
  %164 = icmp eq i64 %3, 0, !dbg !1395
  br i1 %164, label %169, label %166, !dbg !1397

; <label>:165:                                    ; preds = %156
  br label %166, !dbg !1398

; <label>:166:                                    ; preds = %165, %163
  %167 = phi i8* [ %2, %163 ], [ %157, %165 ]
  store i8 0, i8* %167, align 1, !dbg !1398, !tbaa !897
  br label %169, !dbg !1399

; <label>:168:                                    ; preds = %152, %138, %114, %99, %73, %49, %31, %9
  br label %169, !dbg !1400

; <label>:169:                                    ; preds = %168, %163, %166
  ret void, !dbg !1400
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @base32_encode_alloc(i8* nocapture readonly, i64, i8** nocapture) local_unnamed_addr #6 !dbg !1401 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1405, metadata !637), !dbg !1409
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1406, metadata !637), !dbg !1410
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1407, metadata !637), !dbg !1411
  %4 = add i64 %1, 4, !dbg !1412
  %5 = udiv i64 %4, 5, !dbg !1412
  %6 = shl i64 %5, 3, !dbg !1412
  %7 = or i64 %6, 1, !dbg !1413
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1408, metadata !637), !dbg !1414
  %8 = icmp ult i64 %7, %1, !dbg !1415
  br i1 %8, label %9, label %10, !dbg !1417

; <label>:9:                                      ; preds = %3
  store i8* null, i8** %2, align 8, !dbg !1418, !tbaa !645
  br label %14, !dbg !1420

; <label>:10:                                     ; preds = %3
  %11 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !1421
  store i8* %11, i8** %2, align 8, !dbg !1422, !tbaa !645
  %12 = icmp eq i8* %11, null, !dbg !1423
  br i1 %12, label %14, label %13, !dbg !1425

; <label>:13:                                     ; preds = %10
  tail call void @base32_encode(i8* %0, i64 %1, i8* nonnull %11, i64 %7), !dbg !1426
  br label %14, !dbg !1427

; <label>:14:                                     ; preds = %10, %13, %9
  %15 = phi i64 [ 0, %9 ], [ %6, %13 ], [ %7, %10 ]
  ret i64 %15, !dbg !1428
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define zeroext i1 @isbase32(i8 signext) local_unnamed_addr #9 !dbg !1429 {
  tail call void @llvm.dbg.value(metadata i8 %0, i64 0, metadata !1433, metadata !637), !dbg !1434
  %2 = zext i8 %0 to i64, !dbg !1435
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %2, !dbg !1435
  %4 = load i8, i8* %3, align 1, !dbg !1435, !tbaa !897
  %5 = icmp sgt i8 %4, -1, !dbg !1436
  ret i1 %5, !dbg !1437
}

; Function Attrs: nounwind sspstrong uwtable
define void @base32_decode_ctx_init(%struct.base32_decode_context* nocapture) local_unnamed_addr #6 !dbg !1438 {
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, i64 0, metadata !1447, metadata !637), !dbg !1448
  %2 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1449
  store i32 0, i32* %2, align 4, !dbg !1450, !tbaa !1451
  ret void, !dbg !1453
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @base32_decode_ctx(%struct.base32_decode_context*, i8* noalias, i64, i8* noalias, i64* nocapture) local_unnamed_addr #6 !dbg !1454 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, i64 0, metadata !1458, metadata !637), !dbg !1472
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1459, metadata !637), !dbg !1473
  %8 = ptrtoint i8* %1 to i64
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1460, metadata !637), !dbg !1474
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1461, metadata !637), !dbg !1475
  store i8* %3, i8** %6, align 8, !tbaa !645
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1462, metadata !637), !dbg !1476
  %9 = bitcast i64* %7 to i8*, !dbg !1477
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #11, !dbg !1477
  %10 = load i64, i64* %4, align 8, !dbg !1478, !tbaa !951
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1463, metadata !637), !dbg !1479
  store i64 %10, i64* %7, align 8, !dbg !1479, !tbaa !951
  %11 = icmp ne %struct.base32_decode_context* %0, null, !dbg !1480
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1465, metadata !637), !dbg !1481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1466, metadata !637), !dbg !1482
  %12 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0
  br i1 %11, label %13, label %17, !dbg !1483

; <label>:13:                                     ; preds = %5
  %14 = load i32, i32* %12, align 4, !dbg !1484, !tbaa !1451
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !1466, metadata !637), !dbg !1482
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1460, metadata !637), !dbg !1474
  %15 = icmp eq i32 %14, 0, !dbg !1487
  %16 = icmp ne i64 %2, 0, !dbg !1487
  br label %17, !dbg !1487

; <label>:17:                                     ; preds = %5, %13
  %18 = phi i1 [ %15, %13 ], [ true, %5 ]
  %19 = phi i1 [ %16, %13 ], [ true, %5 ]
  %20 = and i1 %18, %19
  %21 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 0
  %22 = xor i1 %11, true
  br label %23, !dbg !1481

; <label>:23:                                     ; preds = %56, %17
  %24 = phi i64 [ %10, %17 ], [ %59, %56 ], !dbg !1488
  %25 = phi i64 [ %8, %17 ], [ %57, %56 ]
  %26 = phi i64 [ %2, %17 ], [ %58, %56 ]
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1463, metadata !637), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1467, metadata !637), !dbg !1492
  br i1 %20, label %27, label %40, !dbg !1493

; <label>:27:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1463, metadata !637), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1467, metadata !637), !dbg !1492
  %28 = inttoptr i64 %25 to i8*, !dbg !1494
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !1459, metadata !637), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !1460, metadata !637), !dbg !1474
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1461, metadata !935), !dbg !1475
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1463, metadata !935), !dbg !1479
  %29 = call fastcc zeroext i1 @decode_8(i8* %28, i64 %26, i8** nonnull %6, i64* nonnull %7), !dbg !1496
  br i1 %29, label %30, label %40, !dbg !1497

; <label>:30:                                     ; preds = %27
  br label %31, !dbg !1473

; <label>:31:                                     ; preds = %30, %31
  %32 = phi i8* [ %34, %31 ], [ %28, %30 ]
  %33 = phi i64 [ %35, %31 ], [ %26, %30 ]
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1459, metadata !637), !dbg !1473
  %34 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !1498
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1459, metadata !637), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1460, metadata !637), !dbg !1474
  %35 = add i64 %33, -8, !dbg !1499
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1460, metadata !637), !dbg !1474
  %36 = load i64, i64* %7, align 8, !dbg !1488, !tbaa !951
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1463, metadata !637), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !1467, metadata !637), !dbg !1492
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1459, metadata !637), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1460, metadata !637), !dbg !1474
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1461, metadata !935), !dbg !1475
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1463, metadata !935), !dbg !1479
  %37 = call fastcc zeroext i1 @decode_8(i8* %34, i64 %35, i8** nonnull %6, i64* nonnull %7), !dbg !1496
  br i1 %37, label %31, label %38, !dbg !1497, !llvm.loop !1500

; <label>:38:                                     ; preds = %31
  %39 = ptrtoint i8* %34 to i64, !dbg !1498
  br label %40, !dbg !1492

; <label>:40:                                     ; preds = %38, %27, %23
  %41 = phi i64 [ %25, %23 ], [ %25, %27 ], [ %39, %38 ]
  %42 = phi i64 [ %26, %23 ], [ %26, %27 ], [ %35, %38 ]
  %43 = phi i64 [ %24, %23 ], [ %24, %27 ], [ %36, %38 ]
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1467, metadata !637), !dbg !1492
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1460, metadata !637), !dbg !1474
  %44 = icmp eq i64 %42, 0, !dbg !1503
  %45 = and i1 %19, %44, !dbg !1505
  br i1 %45, label %124, label %46, !dbg !1505

; <label>:46:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1460, metadata !637), !dbg !1474
  %47 = inttoptr i64 %41 to i8*
  br i1 %44, label %60, label %48, !dbg !1506

; <label>:48:                                     ; preds = %46
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1459, metadata !637), !dbg !1473
  %49 = load i8, i8* %47, align 1, !dbg !1508, !tbaa !897
  %50 = icmp ne i8 %49, 10, !dbg !1510
  %51 = or i1 %50, %22, !dbg !1510
  br i1 %51, label %60, label %52, !dbg !1510

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1511
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1459, metadata !637), !dbg !1473
  %54 = ptrtoint i8* %53 to i64, !dbg !1511
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1460, metadata !637), !dbg !1474
  %55 = add i64 %42, -1, !dbg !1513
  tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !1460, metadata !637), !dbg !1474
  br label %56

; <label>:56:                                     ; preds = %52, %121
  %57 = phi i64 [ %117, %121 ], [ %54, %52 ]
  %58 = phi i64 [ %123, %121 ], [ %55, %52 ]
  %59 = load i64, i64* %7, align 8, !tbaa !951
  br label %23, !dbg !1514

; <label>:60:                                     ; preds = %46, %48
  %61 = load i64, i64* %7, align 8, !dbg !1515, !tbaa !951
  tail call void @llvm.dbg.value(metadata i64 %61, i64 0, metadata !1463, metadata !637), !dbg !1479
  %62 = load i8*, i8** %6, align 8, !dbg !1516, !tbaa !645
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !1461, metadata !637), !dbg !1475
  %63 = sub i64 %61, %43, !dbg !1516
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !1516
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1461, metadata !637), !dbg !1475
  store i8* %64, i8** %6, align 8, !dbg !1516, !tbaa !645
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1463, metadata !637), !dbg !1479
  store i64 %43, i64* %7, align 8, !dbg !1517, !tbaa !951
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1459, metadata !637), !dbg !1473
  tail call void @llvm.dbg.value(metadata i64 %42, i64 0, metadata !1460, metadata !637), !dbg !1474
  %65 = getelementptr inbounds i8, i8* %47, i64 %42, !dbg !1518
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1469, metadata !637), !dbg !1519
  br i1 %11, label %66, label %107, !dbg !1520

; <label>:66:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1459, metadata !935), !dbg !1473
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, i64 0, metadata !1521, metadata !637) #11, !dbg !1537
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1527, metadata !637) #11, !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %65, i64 0, metadata !1528, metadata !637) #11, !dbg !1541
  %67 = load i32, i32* %12, align 4, !dbg !1542, !tbaa !1451, !noalias !1544
  switch i32 %67, label %79 [
    i32 8, label %68
    i32 0, label %69
  ], !dbg !1547

; <label>:68:                                     ; preds = %66
  store i32 0, i32* %12, align 4, !dbg !1548, !tbaa !1451, !noalias !1544
  br label %69, !dbg !1549

; <label>:69:                                     ; preds = %68, %66
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1530, metadata !637) #11, !dbg !1550
  %70 = ptrtoint i8* %65 to i64, !dbg !1551
  %71 = sub i64 %70, %41, !dbg !1551
  %72 = icmp sgt i64 %71, 7, !dbg !1553
  br i1 %72, label %73, label %79, !dbg !1554

; <label>:73:                                     ; preds = %69
  %74 = tail call i8* @memchr(i8* %47, i32 10, i64 8) #14, !dbg !1555
  %75 = icmp eq i8* %74, null, !dbg !1557
  br i1 %75, label %76, label %79, !dbg !1558

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds i8, i8* %47, i64 8, !dbg !1560
  %78 = ptrtoint i8* %77 to i64, !dbg !1560
  tail call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !1471, metadata !637), !dbg !1562
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1460, metadata !637), !dbg !1474
  br label %116, !dbg !1563

; <label>:79:                                     ; preds = %66, %73, %69
  %80 = phi i32 [ 0, %73 ], [ 0, %69 ], [ %67, %66 ]
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1533, metadata !637) #11, !dbg !1566
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1533, metadata !637) #11, !dbg !1566
  %81 = icmp sgt i64 %42, 0, !dbg !1567
  br i1 %81, label %82, label %102, !dbg !1569

; <label>:82:                                     ; preds = %79
  br label %83, !dbg !1570

; <label>:83:                                     ; preds = %82, %93
  %84 = phi i32 [ %94, %93 ], [ %80, %82 ]
  %85 = phi i8* [ %88, %93 ], [ %47, %82 ]
  br label %86, !dbg !1570

; <label>:86:                                     ; preds = %91, %83
  %87 = phi i8* [ %88, %91 ], [ %85, %83 ]
  %88 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1570
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !1533, metadata !637) #11, !dbg !1566
  %89 = load i8, i8* %87, align 1, !dbg !1571, !tbaa !897
  tail call void @llvm.dbg.value(metadata i8 %89, i64 0, metadata !1535, metadata !637) #11, !dbg !1572
  %90 = icmp eq i8 %89, 10, !dbg !1573
  br i1 %90, label %91, label %93, !dbg !1575

; <label>:91:                                     ; preds = %86
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !1533, metadata !637) #11, !dbg !1566
  %92 = icmp ult i8* %88, %65, !dbg !1567
  br i1 %92, label %86, label %100, !dbg !1569

; <label>:93:                                     ; preds = %86
  %94 = add i32 %84, 1, !dbg !1576
  store i32 %94, i32* %12, align 4, !dbg !1576, !tbaa !1451, !noalias !1544
  %95 = zext i32 %84 to i64, !dbg !1578
  %96 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 %95, !dbg !1578
  store i8 %89, i8* %96, align 1, !dbg !1579, !tbaa !897, !noalias !1544
  %97 = icmp ne i32 %94, 8, !dbg !1580
  %98 = icmp ult i8* %88, %65, !dbg !1567
  %99 = and i1 %97, %98, !dbg !1582
  tail call void @llvm.dbg.value(metadata i8* %88, i64 0, metadata !1533, metadata !637) #11, !dbg !1566
  br i1 %99, label %83, label %101, !dbg !1582

; <label>:100:                                    ; preds = %91
  br label %102, !dbg !1566

; <label>:101:                                    ; preds = %93
  br label %102, !dbg !1566

; <label>:102:                                    ; preds = %101, %100, %79
  %103 = phi i32 [ %80, %79 ], [ %84, %100 ], [ %94, %101 ], !dbg !1583
  %104 = phi i8* [ %47, %79 ], [ %88, %100 ], [ %88, %101 ]
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1533, metadata !637) #11, !dbg !1566
  %105 = ptrtoint i8* %104 to i64, !dbg !1584
  %106 = zext i32 %103 to i64, !dbg !1585
  br label %107

; <label>:107:                                    ; preds = %102, %60
  %108 = phi i64 [ %41, %60 ], [ %105, %102 ]
  %109 = phi i64 [ %42, %60 ], [ %106, %102 ]
  %110 = phi i8* [ %47, %60 ], [ %21, %102 ]
  tail call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !1471, metadata !637), !dbg !1562
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1460, metadata !637), !dbg !1474
  %111 = icmp eq i64 %109, 0, !dbg !1586
  br i1 %111, label %124, label %112, !dbg !1587

; <label>:112:                                    ; preds = %107
  %113 = icmp ult i64 %109, 8, !dbg !1588
  %114 = and i1 %19, %113, !dbg !1563
  %115 = and i1 %11, %114, !dbg !1563
  br i1 %115, label %124, label %116, !dbg !1563

; <label>:116:                                    ; preds = %112, %76
  %117 = phi i64 [ %78, %76 ], [ %108, %112 ]
  %118 = phi i64 [ 8, %76 ], [ %109, %112 ]
  %119 = phi i8* [ %47, %76 ], [ %110, %112 ]
  tail call void @llvm.dbg.value(metadata i64 %109, i64 0, metadata !1460, metadata !637), !dbg !1474
  tail call void @llvm.dbg.value(metadata i8** %6, i64 0, metadata !1461, metadata !935), !dbg !1475
  tail call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !1463, metadata !935), !dbg !1479
  %120 = call fastcc zeroext i1 @decode_8(i8* %119, i64 %118, i8** nonnull %6, i64* nonnull %7), !dbg !1589
  br i1 %120, label %121, label %124, !dbg !1591

; <label>:121:                                    ; preds = %116
  %122 = ptrtoint i8* %65 to i64, !dbg !1592
  %123 = sub i64 %122, %117, !dbg !1592
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1460, metadata !637), !dbg !1474
  br label %56

; <label>:124:                                    ; preds = %112, %107, %116, %40
  %125 = phi i64 [ 0, %40 ], [ 0, %107 ], [ 0, %112 ], [ %118, %116 ]
  %126 = load i64, i64* %7, align 8, !dbg !1593, !tbaa !951
  tail call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1463, metadata !637), !dbg !1479
  %127 = load i64, i64* %4, align 8, !dbg !1594, !tbaa !951
  %128 = sub i64 %127, %126, !dbg !1594
  store i64 %128, i64* %4, align 8, !dbg !1594, !tbaa !951
  tail call void @llvm.dbg.value(metadata i64 %123, i64 0, metadata !1460, metadata !637), !dbg !1474
  %129 = icmp eq i64 %125, 0, !dbg !1595
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #11, !dbg !1596
  ret i1 %129, !dbg !1597
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @decode_8(i8* noalias nocapture readonly, i64, i8** nocapture, i64* nocapture) unnamed_addr #6 !dbg !1598 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1603, metadata !637), !dbg !1608
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1604, metadata !637), !dbg !1609
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1605, metadata !637), !dbg !1610
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !1606, metadata !637), !dbg !1611
  %5 = load i8*, i8** %2, align 8, !dbg !1612, !tbaa !645
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1607, metadata !637), !dbg !1613
  %6 = icmp ult i64 %1, 8, !dbg !1614
  br i1 %6, label %198, label %7, !dbg !1616

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %0, align 1, !dbg !1617, !tbaa !897
  tail call void @llvm.dbg.value(metadata i8 %8, i64 0, metadata !1433, metadata !637), !dbg !1619
  %9 = zext i8 %8 to i64, !dbg !1621
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %9, !dbg !1621
  %11 = load i8, i8* %10, align 1, !dbg !1621, !tbaa !897
  %12 = icmp sgt i8 %11, -1, !dbg !1622
  br i1 %12, label %13, label %198, !dbg !1623

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1624
  %15 = load i8, i8* %14, align 1, !dbg !1624, !tbaa !897
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1433, metadata !637), !dbg !1626
  %16 = zext i8 %15 to i64, !dbg !1628
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %16, !dbg !1628
  %18 = load i8, i8* %17, align 1, !dbg !1628, !tbaa !897
  %19 = icmp sgt i8 %18, -1, !dbg !1629
  br i1 %19, label %20, label %198, !dbg !1630

; <label>:20:                                     ; preds = %13
  %21 = load i64, i64* %3, align 8, !dbg !1632, !tbaa !951
  %22 = icmp eq i64 %21, 0, !dbg !1632
  br i1 %22, label %33, label %23, !dbg !1634

; <label>:23:                                     ; preds = %20
  %24 = sext i8 %11 to i32, !dbg !1635
  %25 = shl nsw i32 %24, 3, !dbg !1637
  %26 = sext i8 %18 to i32, !dbg !1638
  %27 = lshr i32 %26, 2, !dbg !1639
  %28 = or i32 %27, %25, !dbg !1640
  %29 = trunc i32 %28 to i8, !dbg !1641
  %30 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1642
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1607, metadata !637), !dbg !1613
  store i8 %29, i8* %5, align 1, !dbg !1643, !tbaa !897
  %31 = load i64, i64* %3, align 8, !dbg !1644, !tbaa !951
  %32 = add i64 %31, -1, !dbg !1644
  store i64 %32, i64* %3, align 8, !dbg !1644, !tbaa !951
  br label %33, !dbg !1645

; <label>:33:                                     ; preds = %20, %23
  %34 = phi i64 [ %32, %23 ], [ 0, %20 ], !dbg !1646
  %35 = phi i8* [ %30, %23 ], [ %5, %20 ]
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !1607, metadata !637), !dbg !1613
  %36 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1650
  %37 = load i8, i8* %36, align 1, !dbg !1650, !tbaa !897
  %38 = icmp eq i8 %37, 61, !dbg !1651
  br i1 %38, label %39, label %60, !dbg !1652

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1653
  %41 = load i8, i8* %40, align 1, !dbg !1653, !tbaa !897
  %42 = icmp eq i8 %41, 61, !dbg !1656
  br i1 %42, label %43, label %59, !dbg !1657

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1658
  %45 = load i8, i8* %44, align 1, !dbg !1658, !tbaa !897
  %46 = icmp eq i8 %45, 61, !dbg !1660
  br i1 %46, label %47, label %59, !dbg !1661

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1662
  %49 = load i8, i8* %48, align 1, !dbg !1662, !tbaa !897
  %50 = icmp eq i8 %49, 61, !dbg !1664
  br i1 %50, label %51, label %59, !dbg !1665

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1666
  %53 = load i8, i8* %52, align 1, !dbg !1666, !tbaa !897
  %54 = icmp eq i8 %53, 61, !dbg !1667
  br i1 %54, label %55, label %59, !dbg !1668

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1669
  %57 = load i8, i8* %56, align 1, !dbg !1669, !tbaa !897
  %58 = icmp eq i8 %57, 61, !dbg !1670
  br i1 %58, label %196, label %59, !dbg !1671

; <label>:59:                                     ; preds = %55, %51, %47, %43, %39
  store i8* %35, i8** %2, align 8, !dbg !1673, !tbaa !645
  br label %198, !dbg !1673

; <label>:60:                                     ; preds = %33
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1433, metadata !637), !dbg !1676
  %61 = zext i8 %37 to i64, !dbg !1679
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %61, !dbg !1679
  %63 = load i8, i8* %62, align 1, !dbg !1679, !tbaa !897
  %64 = icmp sgt i8 %63, -1, !dbg !1680
  br i1 %64, label %65, label %72, !dbg !1681

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1682
  %67 = load i8, i8* %66, align 1, !dbg !1682, !tbaa !897
  tail call void @llvm.dbg.value(metadata i8 %67, i64 0, metadata !1433, metadata !637), !dbg !1684
  %68 = zext i8 %67 to i64, !dbg !1686
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %68, !dbg !1686
  %70 = load i8, i8* %69, align 1, !dbg !1686, !tbaa !897
  %71 = icmp sgt i8 %70, -1, !dbg !1687
  br i1 %71, label %73, label %72, !dbg !1688

; <label>:72:                                     ; preds = %60, %65
  store i8* %35, i8** %2, align 8, !dbg !1690, !tbaa !645
  br label %198, !dbg !1690

; <label>:73:                                     ; preds = %65
  %74 = icmp eq i64 %34, 0, !dbg !1646
  br i1 %74, label %88, label %75, !dbg !1693

; <label>:75:                                     ; preds = %73
  %76 = sext i8 %18 to i32, !dbg !1694
  %77 = shl nsw i32 %76, 6, !dbg !1696
  %78 = sext i8 %63 to i32, !dbg !1697
  %79 = shl nsw i32 %78, 1, !dbg !1698
  %80 = sext i8 %70 to i32, !dbg !1699
  %81 = lshr i32 %80, 4, !dbg !1700
  %82 = or i32 %81, %79, !dbg !1701
  %83 = or i32 %82, %77, !dbg !1702
  %84 = trunc i32 %83 to i8, !dbg !1703
  %85 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1704
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1607, metadata !637), !dbg !1613
  store i8 %84, i8* %35, align 1, !dbg !1705, !tbaa !897
  %86 = load i64, i64* %3, align 8, !dbg !1706, !tbaa !951
  %87 = add i64 %86, -1, !dbg !1706
  store i64 %87, i64* %3, align 8, !dbg !1706, !tbaa !951
  br label %88, !dbg !1707

; <label>:88:                                     ; preds = %73, %75
  %89 = phi i64 [ %87, %75 ], [ 0, %73 ], !dbg !1708
  %90 = phi i8* [ %85, %75 ], [ %35, %73 ]
  tail call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1607, metadata !637), !dbg !1613
  %91 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1712
  %92 = load i8, i8* %91, align 1, !dbg !1712, !tbaa !897
  %93 = icmp eq i8 %92, 61, !dbg !1713
  br i1 %93, label %94, label %107, !dbg !1714

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1715
  %96 = load i8, i8* %95, align 1, !dbg !1715, !tbaa !897
  %97 = icmp eq i8 %96, 61, !dbg !1718
  br i1 %97, label %98, label %106, !dbg !1719

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1720
  %100 = load i8, i8* %99, align 1, !dbg !1720, !tbaa !897
  %101 = icmp eq i8 %100, 61, !dbg !1722
  br i1 %101, label %102, label %106, !dbg !1723

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1724
  %104 = load i8, i8* %103, align 1, !dbg !1724, !tbaa !897
  %105 = icmp eq i8 %104, 61, !dbg !1726
  br i1 %105, label %196, label %106, !dbg !1727

; <label>:106:                                    ; preds = %102, %98, %94
  store i8* %90, i8** %2, align 8, !dbg !1729, !tbaa !645
  br label %198, !dbg !1729

; <label>:107:                                    ; preds = %88
  tail call void @llvm.dbg.value(metadata i8 %92, i64 0, metadata !1433, metadata !637), !dbg !1732
  %108 = zext i8 %92 to i64, !dbg !1735
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %108, !dbg !1735
  %110 = load i8, i8* %109, align 1, !dbg !1735, !tbaa !897
  %111 = icmp sgt i8 %110, -1, !dbg !1736
  br i1 %111, label %113, label %112, !dbg !1737

; <label>:112:                                    ; preds = %107
  store i8* %90, i8** %2, align 8, !dbg !1738, !tbaa !645
  br label %198, !dbg !1738

; <label>:113:                                    ; preds = %107
  %114 = icmp eq i64 %89, 0, !dbg !1708
  br i1 %114, label %125, label %115, !dbg !1741

; <label>:115:                                    ; preds = %113
  %116 = sext i8 %70 to i32, !dbg !1742
  %117 = shl nsw i32 %116, 4, !dbg !1744
  %118 = sext i8 %110 to i32, !dbg !1745
  %119 = lshr i32 %118, 1, !dbg !1746
  %120 = or i32 %117, %119, !dbg !1747
  %121 = trunc i32 %120 to i8, !dbg !1748
  %122 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1749
  tail call void @llvm.dbg.value(metadata i8* %122, i64 0, metadata !1607, metadata !637), !dbg !1613
  store i8 %121, i8* %90, align 1, !dbg !1750, !tbaa !897
  %123 = load i64, i64* %3, align 8, !dbg !1751, !tbaa !951
  %124 = add i64 %123, -1, !dbg !1751
  store i64 %124, i64* %3, align 8, !dbg !1751, !tbaa !951
  br label %125, !dbg !1752

; <label>:125:                                    ; preds = %113, %115
  %126 = phi i64 [ %124, %115 ], [ 0, %113 ], !dbg !1753
  %127 = phi i8* [ %122, %115 ], [ %90, %113 ]
  tail call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !1607, metadata !637), !dbg !1613
  %128 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1757
  %129 = load i8, i8* %128, align 1, !dbg !1757, !tbaa !897
  %130 = icmp eq i8 %129, 61, !dbg !1758
  br i1 %130, label %131, label %140, !dbg !1759

; <label>:131:                                    ; preds = %125
  %132 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1760
  %133 = load i8, i8* %132, align 1, !dbg !1760, !tbaa !897
  %134 = icmp eq i8 %133, 61, !dbg !1763
  br i1 %134, label %135, label %139, !dbg !1764

; <label>:135:                                    ; preds = %131
  %136 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1765
  %137 = load i8, i8* %136, align 1, !dbg !1765, !tbaa !897
  %138 = icmp eq i8 %137, 61, !dbg !1767
  br i1 %138, label %196, label %139, !dbg !1768

; <label>:139:                                    ; preds = %135, %131
  store i8* %127, i8** %2, align 8, !dbg !1770, !tbaa !645
  br label %198, !dbg !1770

; <label>:140:                                    ; preds = %125
  tail call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1433, metadata !637), !dbg !1773
  %141 = zext i8 %129 to i64, !dbg !1776
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %141, !dbg !1776
  %143 = load i8, i8* %142, align 1, !dbg !1776, !tbaa !897
  %144 = icmp sgt i8 %143, -1, !dbg !1777
  br i1 %144, label %145, label %152, !dbg !1778

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1779
  %147 = load i8, i8* %146, align 1, !dbg !1779, !tbaa !897
  tail call void @llvm.dbg.value(metadata i8 %147, i64 0, metadata !1433, metadata !637), !dbg !1781
  %148 = zext i8 %147 to i64, !dbg !1783
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %148, !dbg !1783
  %150 = load i8, i8* %149, align 1, !dbg !1783, !tbaa !897
  %151 = icmp sgt i8 %150, -1, !dbg !1784
  br i1 %151, label %153, label %152, !dbg !1785

; <label>:152:                                    ; preds = %140, %145
  store i8* %127, i8** %2, align 8, !dbg !1787, !tbaa !645
  br label %198, !dbg !1787

; <label>:153:                                    ; preds = %145
  %154 = icmp eq i64 %126, 0, !dbg !1753
  br i1 %154, label %172, label %155, !dbg !1790

; <label>:155:                                    ; preds = %153
  %156 = load i8, i8* %91, align 1, !dbg !1791, !tbaa !897
  %157 = zext i8 %156 to i64, !dbg !1793
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %157, !dbg !1793
  %159 = load i8, i8* %158, align 1, !dbg !1793, !tbaa !897
  %160 = sext i8 %159 to i32, !dbg !1793
  %161 = shl nsw i32 %160, 7, !dbg !1794
  %162 = sext i8 %143 to i32, !dbg !1795
  %163 = shl nsw i32 %162, 2, !dbg !1796
  %164 = sext i8 %150 to i32, !dbg !1797
  %165 = lshr i32 %164, 3, !dbg !1798
  %166 = or i32 %165, %163, !dbg !1799
  %167 = or i32 %166, %161, !dbg !1800
  %168 = trunc i32 %167 to i8, !dbg !1801
  %169 = getelementptr inbounds i8, i8* %127, i64 1, !dbg !1802
  tail call void @llvm.dbg.value(metadata i8* %169, i64 0, metadata !1607, metadata !637), !dbg !1613
  store i8 %168, i8* %127, align 1, !dbg !1803, !tbaa !897
  %170 = load i64, i64* %3, align 8, !dbg !1804, !tbaa !951
  %171 = add i64 %170, -1, !dbg !1804
  store i64 %171, i64* %3, align 8, !dbg !1804, !tbaa !951
  br label %172, !dbg !1805

; <label>:172:                                    ; preds = %153, %155
  %173 = phi i64 [ %171, %155 ], [ 0, %153 ], !dbg !1806
  %174 = phi i8* [ %169, %155 ], [ %127, %153 ]
  tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !1607, metadata !637), !dbg !1613
  %175 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1810
  %176 = load i8, i8* %175, align 1, !dbg !1810, !tbaa !897
  %177 = icmp eq i8 %176, 61, !dbg !1811
  br i1 %177, label %196, label %178, !dbg !1812

; <label>:178:                                    ; preds = %172
  tail call void @llvm.dbg.value(metadata i8 %176, i64 0, metadata !1433, metadata !637), !dbg !1813
  %179 = zext i8 %176 to i64, !dbg !1816
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %179, !dbg !1816
  %181 = load i8, i8* %180, align 1, !dbg !1816, !tbaa !897
  %182 = icmp sgt i8 %181, -1, !dbg !1817
  br i1 %182, label %184, label %183, !dbg !1818

; <label>:183:                                    ; preds = %178
  store i8* %174, i8** %2, align 8, !dbg !1819, !tbaa !645
  br label %198, !dbg !1819

; <label>:184:                                    ; preds = %178
  %185 = icmp eq i64 %173, 0, !dbg !1806
  br i1 %185, label %196, label %186, !dbg !1822

; <label>:186:                                    ; preds = %184
  %187 = load i8, i8* %146, align 1, !dbg !1823, !tbaa !897
  %188 = zext i8 %187 to i64, !dbg !1825
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* @b32, i64 0, i64 %188, !dbg !1825
  %190 = load i8, i8* %189, align 1, !dbg !1825, !tbaa !897
  %191 = shl i8 %190, 5, !dbg !1826
  %192 = or i8 %191, %181, !dbg !1827
  %193 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !1828
  tail call void @llvm.dbg.value(metadata i8* %193, i64 0, metadata !1607, metadata !637), !dbg !1613
  store i8 %192, i8* %174, align 1, !dbg !1829, !tbaa !897
  %194 = load i64, i64* %3, align 8, !dbg !1830, !tbaa !951
  %195 = add i64 %194, -1, !dbg !1830
  store i64 %195, i64* %3, align 8, !dbg !1830, !tbaa !951
  br label %196, !dbg !1831

; <label>:196:                                    ; preds = %55, %102, %135, %184, %172, %186
  %197 = phi i8* [ %35, %55 ], [ %90, %102 ], [ %127, %135 ], [ %193, %186 ], [ %174, %184 ], [ %174, %172 ]
  tail call void @llvm.dbg.value(metadata i8* %197, i64 0, metadata !1607, metadata !637), !dbg !1613
  store i8* %197, i8** %2, align 8, !dbg !1832, !tbaa !645
  br label %198, !dbg !1833

; <label>:198:                                    ; preds = %7, %13, %4, %196, %183, %152, %139, %112, %106, %72, %59
  %199 = phi i1 [ false, %59 ], [ true, %196 ], [ false, %106 ], [ false, %139 ], [ false, %183 ], [ false, %152 ], [ false, %112 ], [ false, %72 ], [ false, %4 ], [ false, %13 ], [ false, %7 ]
  ret i1 %199, !dbg !1834
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @base32_decode_alloc_ctx(%struct.base32_decode_context*, i8*, i64, i8** nocapture, i64*) local_unnamed_addr #6 !dbg !1835 {
  %6 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, i64 0, metadata !1839, metadata !637), !dbg !1845
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1840, metadata !637), !dbg !1846
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1841, metadata !637), !dbg !1847
  tail call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1842, metadata !637), !dbg !1848
  tail call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1843, metadata !637), !dbg !1849
  %7 = bitcast i64* %6 to i8*, !dbg !1850
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11, !dbg !1850
  %8 = lshr i64 %2, 3, !dbg !1851
  %9 = mul nuw i64 %8, 5, !dbg !1852
  %10 = add i64 %9, 5, !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1844, metadata !637), !dbg !1854
  store i64 %10, i64* %6, align 8, !dbg !1854, !tbaa !951
  %11 = tail call noalias i8* @malloc(i64 %10) #11, !dbg !1855
  store i8* %11, i8** %3, align 8, !dbg !1856, !tbaa !645
  %12 = icmp eq i8* %11, null, !dbg !1857
  br i1 %12, label %21, label %13, !dbg !1859

; <label>:13:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !1844, metadata !935), !dbg !1854
  %14 = call zeroext i1 @base32_decode_ctx(%struct.base32_decode_context* %0, i8* %1, i64 %2, i8* nonnull %11, i64* nonnull %6), !dbg !1860
  br i1 %14, label %17, label %15, !dbg !1862

; <label>:15:                                     ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1863, !tbaa !645
  tail call void @free(i8* %16) #11, !dbg !1865
  store i8* null, i8** %3, align 8, !dbg !1866, !tbaa !645
  br label %21, !dbg !1867

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1868
  br i1 %18, label %21, label %19, !dbg !1870

; <label>:19:                                     ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1871, !tbaa !951
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !1844, metadata !637), !dbg !1854
  store i64 %20, i64* %4, align 8, !dbg !1872, !tbaa !951
  br label %21, !dbg !1873

; <label>:21:                                     ; preds = %19, %17, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %17 ], [ true, %19 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11, !dbg !1874
  ret i1 %22, !dbg !1874
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1875 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1877, metadata !637), !dbg !1878
  store i8* %0, i8** @file_name, align 8, !dbg !1879, !tbaa !645
  ret void, !dbg !1880
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1881 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1885, metadata !930), !dbg !1886
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1887, !tbaa !1888
  ret void, !dbg !1890
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1891 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1896, !tbaa !645
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1897
  %3 = icmp eq i32 %2, 0, !dbg !1898
  br i1 %3, label %21, label %4, !dbg !1899

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1900, !tbaa !1888, !range !1902
  %6 = icmp eq i8 %5, 0, !dbg !1900
  %7 = tail call i32* @__errno_location() #1, !dbg !1903
  br i1 %6, label %11, label %8, !dbg !1905

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1906, !tbaa !873
  %10 = icmp eq i32 %9, 32, !dbg !1908
  br i1 %10, label %21, label %11, !dbg !1909

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !1911
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1893, metadata !637), !dbg !1912
  %13 = load i8*, i8** @file_name, align 8, !dbg !1913, !tbaa !645
  %14 = icmp eq i8* %13, null, !dbg !1913
  %15 = load i32, i32* %7, align 4, !tbaa !873
  br i1 %14, label %18, label %16, !dbg !1914

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1915
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1917
  br label %19, !dbg !1919

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #11, !dbg !1920
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1921, !tbaa !873
  tail call void @_exit(i32 %20) #15, !dbg !1922
  unreachable, !dbg !1922

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1923, !tbaa !645
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1925
  %24 = icmp eq i32 %23, 0, !dbg !1926
  br i1 %24, label %27, label %25, !dbg !1927

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1928, !tbaa !873
  tail call void @_exit(i32 %26) #15, !dbg !1929
  unreachable, !dbg !1929

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1930
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1931 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1938, metadata !637), !dbg !1944
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1939, metadata !637), !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1940, metadata !637), !dbg !1946
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1941, metadata !637), !dbg !1947
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1942, metadata !637), !dbg !1948
  ret void, !dbg !1949
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1950 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1994, metadata !637), !dbg !1996
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1995, metadata !637), !dbg !1997
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1998
  br i1 %3, label %7, label %4, !dbg !2000

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !2001
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1938, metadata !637) #11, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1939, metadata !637) #11, !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1940, metadata !637) #11, !dbg !2006
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1941, metadata !637) #11, !dbg !2007
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !2008
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1942, metadata !637) #11, !dbg !2008
  br label %7, !dbg !2009

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !2010
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2011 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2013, metadata !637), !dbg !2016
  %2 = icmp eq i8* %0, null, !dbg !2017
  br i1 %2, label %3, label %6, !dbg !2019

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2020, !tbaa !645
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17, !dbg !2022
  tail call void @abort() #15, !dbg !2023
  unreachable, !dbg !2023

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2024
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2014, metadata !637), !dbg !2025
  %8 = icmp ne i8* %7, null, !dbg !2026
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2027
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2029
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2015, metadata !637), !dbg !2030
  %11 = ptrtoint i8* %10 to i64, !dbg !2031
  %12 = ptrtoint i8* %0 to i64, !dbg !2031
  %13 = sub i64 %11, %12, !dbg !2031
  %14 = icmp sgt i64 %13, 6, !dbg !2033
  br i1 %14, label %15, label %24, !dbg !2034

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2035
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #14, !dbg !2035
  %18 = icmp eq i32 %17, 0, !dbg !2037
  br i1 %18, label %19, label %24, !dbg !2038

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2013, metadata !637), !dbg !2016
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #14, !dbg !2039
  %21 = icmp eq i32 %20, 0, !dbg !2042
  br i1 %21, label %22, label %24, !dbg !2043

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2044
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2013, metadata !637), !dbg !2016
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2046, !tbaa !645
  br label %24, !dbg !2047

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2013, metadata !637), !dbg !2016
  store i8* %25, i8** @program_name, align 8, !dbg !2048, !tbaa !645
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2049, !tbaa !645
  ret void, !dbg !2050
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2051 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2056, metadata !637), !dbg !2059
  %2 = tail call i32* @__errno_location() #1, !dbg !2060
  %3 = load i32, i32* %2, align 4, !dbg !2060, !tbaa !873
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2057, metadata !637), !dbg !2061
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2062
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2063
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2063
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2065
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2065
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2058, metadata !637), !dbg !2066
  store i32 %3, i32* %2, align 4, !dbg !2067, !tbaa !873
  ret %struct.quoting_options* %8, !dbg !2068
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !2069 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2075, metadata !637), !dbg !2076
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2077
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2077
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2078
  %5 = load i32, i32* %4, align 8, !dbg !2078, !tbaa !2080
  ret i32 %5, !dbg !2082
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2083 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2087, metadata !637), !dbg !2089
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2088, metadata !637), !dbg !2090
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2091
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2091
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2092
  store i32 %1, i32* %5, align 8, !dbg !2094, !tbaa !2080
  ret void, !dbg !2095
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2096 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2100, metadata !637), !dbg !2108
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2101, metadata !637), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2102, metadata !637), !dbg !2110
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2103, metadata !637), !dbg !2111
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2112
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2112
  %6 = lshr i8 %1, 5, !dbg !2113
  %7 = zext i8 %6 to i64, !dbg !2113
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2115
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2104, metadata !637), !dbg !2116
  %9 = and i8 %1, 31, !dbg !2117
  %10 = zext i8 %9 to i32, !dbg !2118
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2106, metadata !637), !dbg !2119
  %11 = load i32, i32* %8, align 4, !dbg !2120, !tbaa !873
  %12 = lshr i32 %11, %10, !dbg !2121
  %13 = and i32 %12, 1, !dbg !2122
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2107, metadata !637), !dbg !2123
  %14 = and i32 %2, 1, !dbg !2124
  %15 = xor i32 %13, %14, !dbg !2125
  %16 = shl i32 %15, %10, !dbg !2126
  %17 = xor i32 %16, %11, !dbg !2127
  store i32 %17, i32* %8, align 4, !dbg !2127, !tbaa !873
  ret i32 %13, !dbg !2128
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2129 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2133, metadata !637), !dbg !2136
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2134, metadata !637), !dbg !2137
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2138
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2133, metadata !637), !dbg !2136
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2140
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2133, metadata !637), !dbg !2136
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2141
  %6 = load i32, i32* %5, align 4, !dbg !2141, !tbaa !2142
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2135, metadata !637), !dbg !2143
  store i32 %1, i32* %5, align 4, !dbg !2144, !tbaa !2142
  ret i32 %6, !dbg !2145
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2146 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2150, metadata !637), !dbg !2153
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2151, metadata !637), !dbg !2154
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2152, metadata !637), !dbg !2155
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2156
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2150, metadata !637), !dbg !2153
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2158
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2150, metadata !637), !dbg !2153
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2159
  store i32 10, i32* %6, align 8, !dbg !2160, !tbaa !2080
  %7 = icmp ne i8* %1, null, !dbg !2161
  %8 = icmp ne i8* %2, null, !dbg !2163
  %9 = and i1 %7, %8, !dbg !2165
  br i1 %9, label %11, label %10, !dbg !2165

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2166
  unreachable, !dbg !2166

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2167
  store i8* %1, i8** %12, align 8, !dbg !2168, !tbaa !2169
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2170
  store i8* %2, i8** %13, align 8, !dbg !2171, !tbaa !2172
  ret void, !dbg !2173
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2174 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2178, metadata !637), !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2179, metadata !637), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2180, metadata !637), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2181, metadata !637), !dbg !2189
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2182, metadata !637), !dbg !2190
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2191
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2183, metadata !637), !dbg !2192
  %8 = tail call i32* @__errno_location() #1, !dbg !2193
  %9 = load i32, i32* %8, align 4, !dbg !2193, !tbaa !873
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2184, metadata !637), !dbg !2194
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2195
  %11 = load i32, i32* %10, align 8, !dbg !2195, !tbaa !2080
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2196
  %13 = load i32, i32* %12, align 4, !dbg !2196, !tbaa !2142
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2197
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2198
  %16 = load i8*, i8** %15, align 8, !dbg !2198, !tbaa !2169
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2199
  %18 = load i8*, i8** %17, align 8, !dbg !2199, !tbaa !2172
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2185, metadata !637), !dbg !2201
  store i32 %9, i32* %8, align 4, !dbg !2202, !tbaa !873
  ret i64 %19, !dbg !2203
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2204 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2210, metadata !637), !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2211, metadata !637), !dbg !2274
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2212, metadata !637), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2213, metadata !637), !dbg !2276
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2214, metadata !637), !dbg !2277
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2215, metadata !637), !dbg !2278
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2216, metadata !637), !dbg !2279
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2217, metadata !637), !dbg !2280
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2218, metadata !637), !dbg !2281
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2220, metadata !637), !dbg !2282
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2221, metadata !637), !dbg !2283
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2222, metadata !637), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2223, metadata !637), !dbg !2285
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2224, metadata !637), !dbg !2286
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2287
  %14 = icmp eq i64 %13, 1, !dbg !2288
  %15 = lshr i32 %5, 1, !dbg !2289
  %16 = trunc i32 %15 to i8, !dbg !2289
  %17 = and i8 %16, 1, !dbg !2289
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2226, metadata !637), !dbg !2289
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !637), !dbg !2290
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2228, metadata !637), !dbg !2291
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2229, metadata !637), !dbg !2292
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2293

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2211, metadata !637), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2229, metadata !637), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2228, metadata !637), !dbg !2291
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2226, metadata !637), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2213, metadata !637), !dbg !2276
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2224, metadata !637), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2223, metadata !637), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2222, metadata !637), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2221, metadata !637), !dbg !2283
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2218, metadata !637), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2217, metadata !637), !dbg !2280
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2214, metadata !637), !dbg !2277
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
  ], !dbg !2294

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2214, metadata !637), !dbg !2277
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2226, metadata !637), !dbg !2289
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2226, metadata !637), !dbg !2289
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2214, metadata !637), !dbg !2277
  br label %95, !dbg !2295

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2226, metadata !637), !dbg !2289
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2214, metadata !637), !dbg !2277
  %43 = and i8 %36, 1, !dbg !2297
  %44 = icmp eq i8 %43, 0, !dbg !2297
  br i1 %44, label %45, label %95, !dbg !2295

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2299
  br i1 %46, label %95, label %47, !dbg !2303

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2305, !tbaa !897
  br label %95, !dbg !2305

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %28), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2217, metadata !637), !dbg !2280
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %28), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2218, metadata !637), !dbg !2281
  br label %51, !dbg !2312

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2218, metadata !637), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2217, metadata !637), !dbg !2280
  %54 = and i8 %36, 1, !dbg !2313
  %55 = icmp eq i8 %54, 0, !dbg !2313
  br i1 %55, label %56, label %73, !dbg !2315

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2222, metadata !637), !dbg !2284
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2220, metadata !637), !dbg !2282
  %57 = load i8, i8* %52, align 1, !dbg !2316, !tbaa !897
  %58 = icmp eq i8 %57, 0, !dbg !2320
  br i1 %58, label %73, label %59, !dbg !2320

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2322

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2322
  br i1 %64, label %65, label %67, !dbg !2326

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2328
  store i8 %61, i8* %66, align 1, !dbg !2328, !tbaa !897
  br label %67, !dbg !2328

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2220, metadata !637), !dbg !2282
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2222, metadata !637), !dbg !2284
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2222, metadata !637), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2220, metadata !637), !dbg !2282
  %70 = load i8, i8* %69, align 1, !dbg !2316, !tbaa !897
  %71 = icmp eq i8 %70, 0, !dbg !2320
  br i1 %71, label %72, label %60, !dbg !2320, !llvm.loop !2334

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2282

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2224, metadata !637), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2222, metadata !637), !dbg !2284
  %75 = call i64 @strlen(i8* %53) #14, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2223, metadata !637), !dbg !2285
  br label %95, !dbg !2338

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2224, metadata !637), !dbg !2286
  br label %77, !dbg !2339

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2224, metadata !637), !dbg !2286
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2226, metadata !637), !dbg !2289
  br label %79, !dbg !2340

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2226, metadata !637), !dbg !2289
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2224, metadata !637), !dbg !2286
  %82 = and i8 %81, 1, !dbg !2341
  %83 = icmp eq i8 %82, 0, !dbg !2341
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2224, metadata !637), !dbg !2286
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2343
  br label %85, !dbg !2343

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2226, metadata !637), !dbg !2289
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2224, metadata !637), !dbg !2286
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2214, metadata !637), !dbg !2277
  %88 = and i8 %87, 1, !dbg !2344
  %89 = icmp eq i8 %88, 0, !dbg !2344
  br i1 %89, label %90, label %95, !dbg !2346

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2347
  br i1 %91, label %95, label %92, !dbg !2351

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2353, !tbaa !897
  br label %95, !dbg !2353

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2226, metadata !637), !dbg !2289
  br label %95, !dbg !2355

; <label>:94:                                     ; preds = %27
  call void @abort() #15, !dbg !2356
  unreachable, !dbg !2356

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2226, metadata !637), !dbg !2289
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2224, metadata !637), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2223, metadata !637), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2222, metadata !637), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2218, metadata !637), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2217, metadata !637), !dbg !2280
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2214, metadata !637), !dbg !2277
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2219, metadata !637), !dbg !2357
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
  br label %123, !dbg !2358

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2211, metadata !637), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2229, metadata !637), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2228, metadata !637), !dbg !2291
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2213, metadata !637), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2221, metadata !637), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2219, metadata !637), !dbg !2357
  %132 = icmp eq i64 %127, -1, !dbg !2359
  br i1 %132, label %135, label %133, !dbg !2361

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2362
  br i1 %134, label %597, label %139, !dbg !2364

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2366
  %137 = load i8, i8* %136, align 1, !dbg !2366, !tbaa !897
  %138 = icmp eq i8 %137, 0, !dbg !2368
  br i1 %138, label %597, label %139, !dbg !2364

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2235, metadata !637), !dbg !2369
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2236, metadata !637), !dbg !2370
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2237, metadata !637), !dbg !2371
  br i1 %109, label %140, label %155, !dbg !2372

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2374
  %142 = and i1 %110, %132, !dbg !2376
  br i1 %142, label %143, label %145, !dbg !2376

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #14, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2213, metadata !637), !dbg !2276
  br label %145, !dbg !2378

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2213, metadata !637), !dbg !2276
  %147 = icmp ugt i64 %141, %146, !dbg !2380
  br i1 %147, label %155, label %148, !dbg !2382

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2383
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14, !dbg !2384
  %151 = icmp ne i32 %150, 0, !dbg !2385
  %152 = or i1 %151, %112, !dbg !2385
  %153 = xor i1 %151, true, !dbg !2385
  %154 = zext i1 %153 to i8, !dbg !2385
  br i1 %152, label %155, label %644, !dbg !2385

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2235, metadata !637), !dbg !2369
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2213, metadata !637), !dbg !2276
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2387
  %159 = load i8, i8* %158, align 1, !dbg !2387, !tbaa !897
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2230, metadata !637), !dbg !2388
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
  ], !dbg !2389

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2390

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2391

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2236, metadata !637), !dbg !2370
  %163 = and i8 %128, 1, !dbg !2396
  %164 = icmp eq i8 %163, 0, !dbg !2396
  %165 = and i1 %114, %164, !dbg !2399
  br i1 %165, label %166, label %182, !dbg !2399

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2401
  br i1 %167, label %168, label %170, !dbg !2406

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2408
  store i8 39, i8* %169, align 1, !dbg !2408, !tbaa !897
  br label %170, !dbg !2408

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2220, metadata !637), !dbg !2282
  %172 = icmp ult i64 %171, %131, !dbg !2412
  br i1 %172, label %173, label %175, !dbg !2416

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2418
  store i8 36, i8* %174, align 1, !dbg !2418, !tbaa !897
  br label %175, !dbg !2418

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2220, metadata !637), !dbg !2282
  %177 = icmp ult i64 %176, %131, !dbg !2422
  br i1 %177, label %178, label %180, !dbg !2426

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2428
  store i8 39, i8* %179, align 1, !dbg !2428, !tbaa !897
  br label %180, !dbg !2428

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2227, metadata !637), !dbg !2290
  br label %182, !dbg !2432

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2220, metadata !637), !dbg !2282
  %185 = icmp ult i64 %183, %131, !dbg !2434
  br i1 %185, label %186, label %188, !dbg !2438

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2440
  store i8 92, i8* %187, align 1, !dbg !2440, !tbaa !897
  br label %188, !dbg !2440

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2220, metadata !637), !dbg !2282
  br i1 %106, label %190, label %476, !dbg !2444

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2446
  %192 = icmp ult i64 %191, %156, !dbg !2448
  br i1 %192, label %193, label %476, !dbg !2449

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2450
  %195 = load i8, i8* %194, align 1, !dbg !2450, !tbaa !897
  %196 = add i8 %195, -48, !dbg !2452
  %197 = icmp ult i8 %196, 10, !dbg !2452
  br i1 %197, label %198, label %476, !dbg !2452

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2453
  br i1 %199, label %200, label %202, !dbg !2458

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2460
  store i8 48, i8* %201, align 1, !dbg !2460, !tbaa !897
  br label %202, !dbg !2460

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2220, metadata !637), !dbg !2282
  %204 = icmp ult i64 %203, %131, !dbg !2464
  br i1 %204, label %205, label %207, !dbg !2468

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2470
  store i8 48, i8* %206, align 1, !dbg !2470, !tbaa !897
  br label %207, !dbg !2470

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2220, metadata !637), !dbg !2282
  br label %476, !dbg !2474

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2475

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2476

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2477

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2479

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2481
  %215 = icmp ult i64 %214, %156, !dbg !2483
  br i1 %215, label %216, label %476, !dbg !2484

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2485
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2487
  %219 = load i8, i8* %218, align 1, !dbg !2487, !tbaa !897
  %220 = icmp eq i8 %219, 63, !dbg !2488
  br i1 %220, label %221, label %476, !dbg !2489

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2491
  %223 = load i8, i8* %222, align 1, !dbg !2491, !tbaa !897
  %224 = sext i8 %223 to i32, !dbg !2491
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
  ], !dbg !2492

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2493

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2230, metadata !637), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2219, metadata !637), !dbg !2357
  %227 = icmp ult i64 %125, %131, !dbg !2495
  br i1 %227, label %228, label %230, !dbg !2499

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2501
  store i8 63, i8* %229, align 1, !dbg !2501, !tbaa !897
  br label %230, !dbg !2501

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2220, metadata !637), !dbg !2282
  %232 = icmp ult i64 %231, %131, !dbg !2505
  br i1 %232, label %233, label %235, !dbg !2509

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2511
  store i8 34, i8* %234, align 1, !dbg !2511, !tbaa !897
  br label %235, !dbg !2511

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2220, metadata !637), !dbg !2282
  %237 = icmp ult i64 %236, %131, !dbg !2515
  br i1 %237, label %238, label %240, !dbg !2519

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2521
  store i8 34, i8* %239, align 1, !dbg !2521, !tbaa !897
  br label %240, !dbg !2521

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2220, metadata !637), !dbg !2282
  %242 = icmp ult i64 %241, %131, !dbg !2525
  br i1 %242, label %243, label %245, !dbg !2529

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2531
  store i8 63, i8* %244, align 1, !dbg !2531, !tbaa !897
  br label %245, !dbg !2531

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2220, metadata !637), !dbg !2282
  br label %476, !dbg !2535

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2234, metadata !637), !dbg !2536
  br label %257, !dbg !2537

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2234, metadata !637), !dbg !2536
  br label %257, !dbg !2538

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2234, metadata !637), !dbg !2536
  br label %255, !dbg !2539

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2234, metadata !637), !dbg !2536
  br label %255, !dbg !2540

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2234, metadata !637), !dbg !2536
  br label %257, !dbg !2541

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2234, metadata !637), !dbg !2536
  br i1 %114, label %253, label %254, !dbg !2542

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2543

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2546

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2234, metadata !637), !dbg !2536
  br i1 %118, label %257, label %644, !dbg !2548

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2234, metadata !637), !dbg !2536
  br i1 %105, label %503, label %476, !dbg !2550

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2551
  br i1 %260, label %261, label %266, !dbg !2553

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2554, !tbaa !897
  %263 = icmp ne i8 %262, 0, !dbg !2556
  %264 = icmp ne i64 %124, 0, !dbg !2557
  %265 = or i1 %264, %263, !dbg !2559
  br i1 %265, label %476, label %272, !dbg !2559

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2560
  %268 = icmp ne i64 %124, 0, !dbg !2557
  %269 = or i1 %268, %267, !dbg !2562
  br i1 %269, label %476, label %272, !dbg !2562

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2557
  br i1 %271, label %272, label %476, !dbg !2564

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2237, metadata !637), !dbg !2371
  br label %273, !dbg !2565

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2237, metadata !637), !dbg !2371
  br i1 %118, label %476, label %644, !dbg !2566

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2228, metadata !637), !dbg !2291
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2237, metadata !637), !dbg !2371
  br i1 %114, label %276, label %476, !dbg !2568

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2569

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2572
  %279 = icmp ne i64 %126, 0, !dbg !2574
  %280 = or i1 %279, %278, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2221, metadata !637), !dbg !2283
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2211, metadata !637), !dbg !2274
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2576
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2211, metadata !637), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2221, metadata !637), !dbg !2283
  %283 = icmp ult i64 %125, %282, !dbg !2577
  br i1 %283, label %284, label %286, !dbg !2581

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2583
  store i8 39, i8* %285, align 1, !dbg !2583, !tbaa !897
  br label %286, !dbg !2583

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2220, metadata !637), !dbg !2282
  %288 = icmp ult i64 %287, %282, !dbg !2587
  br i1 %288, label %289, label %291, !dbg !2591

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2593
  store i8 92, i8* %290, align 1, !dbg !2593, !tbaa !897
  br label %291, !dbg !2593

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2220, metadata !637), !dbg !2282
  %293 = icmp ult i64 %292, %282, !dbg !2597
  br i1 %293, label %294, label %296, !dbg !2601

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2603
  store i8 39, i8* %295, align 1, !dbg !2603, !tbaa !897
  br label %296, !dbg !2603

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !637), !dbg !2290
  br label %476, !dbg !2607

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2608

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2238, metadata !637), !dbg !2609
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2610
  %301 = load i16*, i16** %300, align 8, !dbg !2610, !tbaa !645
  %302 = zext i8 %159 to i64, !dbg !2610
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2610
  %304 = load i16, i16* %303, align 2, !dbg !2610, !tbaa !2612
  %305 = lshr i16 %304, 14, !dbg !2613
  %306 = trunc i16 %305 to i8, !dbg !2613
  %307 = and i8 %306, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2241, metadata !637), !dbg !2614
  br label %368, !dbg !2615

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2616
  store i64 0, i64* %10, align 8, !dbg !2617
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2238, metadata !637), !dbg !2609
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2241, metadata !637), !dbg !2614
  %309 = icmp eq i64 %156, -1, !dbg !2618
  br i1 %309, label %310, label %312, !dbg !2620, !llvm.loop !2621

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2213, metadata !637), !dbg !2276
  br label %312, !dbg !2625, !llvm.loop !2621

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2614

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2241, metadata !637), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2238, metadata !637), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2213, metadata !637), !dbg !2276
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2626
  %317 = add i64 %315, %124, !dbg !2627
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2628
  %319 = sub i64 %313, %317, !dbg !2629
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2242, metadata !935), !dbg !2630
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2259, metadata !935), !dbg !2631
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2632
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2262, metadata !637), !dbg !2633
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2634

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2238, metadata !637), !dbg !2609
  %322 = icmp ugt i64 %313, %317, !dbg !2635
  br i1 %322, label %323, label %351, !dbg !2638

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2639

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2639
  %328 = load i8, i8* %327, align 1, !dbg !2639, !tbaa !897
  %329 = icmp eq i8 %328, 0, !dbg !2641
  br i1 %329, label %348, label %330, !dbg !2642

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2238, metadata !637), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2238, metadata !637), !dbg !2609
  %332 = add i64 %331, %124, !dbg !2645
  %333 = icmp ult i64 %332, %313, !dbg !2635
  br i1 %333, label %324, label %348, !dbg !2638, !llvm.loop !2646

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2648
  %336 = and i1 %116, %335, !dbg !2652
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2263, metadata !637), !dbg !2653
  br i1 %336, label %337, label %355, !dbg !2652

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2654

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2654
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2655
  %342 = load i8, i8* %341, align 1, !dbg !2655, !tbaa !897
  %343 = sext i8 %342 to i32, !dbg !2655
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2656

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2263, metadata !637), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2263, metadata !637), !dbg !2653
  %346 = icmp ult i64 %345, %320, !dbg !2648
  br i1 %346, label %338, label %354, !dbg !2659, !llvm.loop !2661

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2614

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2614

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2614

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2241, metadata !637), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2238, metadata !637), !dbg !2609
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2664
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2665

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2665, !tbaa !873
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2259, metadata !637), !dbg !2631
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2667
  %358 = icmp eq i32 %357, 0, !dbg !2667
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2241, metadata !637), !dbg !2614
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2668
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2241, metadata !637), !dbg !2614
  %360 = add i64 %320, %315, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2238, metadata !637), !dbg !2609
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2241, metadata !637), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2238, metadata !637), !dbg !2609
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2242, metadata !935), !dbg !2630
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2670
  %362 = icmp eq i32 %361, 0, !dbg !2671
  br i1 %362, label %314, label %363, !dbg !2672, !llvm.loop !2621

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2674

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2674
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2241, metadata !637), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2238, metadata !637), !dbg !2609
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2664
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2674
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2241, metadata !637), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2238, metadata !637), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2213, metadata !637), !dbg !2276
  %372 = and i8 %371, 1, !dbg !2675
  %373 = icmp ne i8 %372, 0, !dbg !2675
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2237, metadata !637), !dbg !2371
  %374 = icmp ult i64 %370, 2, !dbg !2676
  %375 = or i1 %373, %113, !dbg !2677
  %376 = and i1 %374, %375, !dbg !2679
  br i1 %376, label %476, label %377, !dbg !2679

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2270, metadata !637), !dbg !2681
  br label %379, !dbg !2682

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2236, metadata !637), !dbg !2370
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2235, metadata !637), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2230, metadata !637), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2219, metadata !637), !dbg !2357
  br i1 %375, label %432, label %386, !dbg !2683

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2688

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2236, metadata !637), !dbg !2370
  %388 = and i8 %382, 1, !dbg !2692
  %389 = icmp eq i8 %388, 0, !dbg !2692
  %390 = and i1 %114, %389, !dbg !2695
  br i1 %390, label %391, label %407, !dbg !2695

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2697
  br i1 %392, label %393, label %395, !dbg !2702

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2704
  store i8 39, i8* %394, align 1, !dbg !2704, !tbaa !897
  br label %395, !dbg !2704

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2220, metadata !637), !dbg !2282
  %397 = icmp ult i64 %396, %131, !dbg !2708
  br i1 %397, label %398, label %400, !dbg !2712

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2714
  store i8 36, i8* %399, align 1, !dbg !2714, !tbaa !897
  br label %400, !dbg !2714

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2220, metadata !637), !dbg !2282
  %402 = icmp ult i64 %401, %131, !dbg !2718
  br i1 %402, label %403, label %405, !dbg !2722

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2724
  store i8 39, i8* %404, align 1, !dbg !2724, !tbaa !897
  br label %405, !dbg !2724

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2227, metadata !637), !dbg !2290
  br label %407, !dbg !2728

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2220, metadata !637), !dbg !2282
  %410 = icmp ult i64 %408, %131, !dbg !2730
  br i1 %410, label %411, label %413, !dbg !2734

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2736
  store i8 92, i8* %412, align 1, !dbg !2736, !tbaa !897
  br label %413, !dbg !2736

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2738
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2220, metadata !637), !dbg !2282
  %415 = icmp ult i64 %414, %131, !dbg !2740
  br i1 %415, label %416, label %420, !dbg !2744

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2746
  %418 = or i8 %417, 48, !dbg !2746
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2746
  store i8 %418, i8* %419, align 1, !dbg !2746, !tbaa !897
  br label %420, !dbg !2746

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2220, metadata !637), !dbg !2282
  %422 = icmp ult i64 %421, %131, !dbg !2750
  br i1 %422, label %423, label %428, !dbg !2754

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2756
  %425 = and i8 %424, 7, !dbg !2756
  %426 = or i8 %425, 48, !dbg !2756
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2756
  store i8 %426, i8* %427, align 1, !dbg !2756, !tbaa !897
  br label %428, !dbg !2756

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2220, metadata !637), !dbg !2282
  %430 = and i8 %383, 7, !dbg !2760
  %431 = or i8 %430, 48, !dbg !2761
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2230, metadata !637), !dbg !2388
  br label %441, !dbg !2762

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2763
  %434 = icmp eq i8 %433, 0, !dbg !2763
  br i1 %434, label %441, label %435, !dbg !2765

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2766
  br i1 %436, label %437, label %439, !dbg !2771

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2773
  store i8 92, i8* %438, align 1, !dbg !2773, !tbaa !897
  br label %439, !dbg !2773

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2235, metadata !637), !dbg !2369
  br label %441, !dbg !2777

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2236, metadata !637), !dbg !2370
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2235, metadata !637), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2230, metadata !637), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2220, metadata !637), !dbg !2282
  %447 = add i64 %380, 1, !dbg !2778
  %448 = icmp ugt i64 %378, %447, !dbg !2780
  br i1 %448, label %449, label %541, !dbg !2781

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2782
  %451 = icmp ne i8 %450, 0, !dbg !2782
  %452 = and i8 %446, 1, !dbg !2786
  %453 = icmp eq i8 %452, 0, !dbg !2786
  %454 = and i1 %451, %453, !dbg !2782
  br i1 %454, label %455, label %466, !dbg !2782

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2788
  br i1 %456, label %457, label %459, !dbg !2793

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2795
  store i8 39, i8* %458, align 1, !dbg !2795, !tbaa !897
  br label %459, !dbg !2795

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2220, metadata !637), !dbg !2282
  %461 = icmp ult i64 %460, %131, !dbg !2799
  br i1 %461, label %462, label %464, !dbg !2803

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2805
  store i8 39, i8* %463, align 1, !dbg !2805, !tbaa !897
  br label %464, !dbg !2805

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !637), !dbg !2290
  br label %466, !dbg !2809

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2220, metadata !637), !dbg !2282
  %469 = icmp ult i64 %467, %131, !dbg !2811
  br i1 %469, label %470, label %472, !dbg !2815

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2817
  store i8 %444, i8* %471, align 1, !dbg !2817, !tbaa !897
  br label %472, !dbg !2817

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2219, metadata !637), !dbg !2357
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2821
  %475 = load i8, i8* %474, align 1, !dbg !2821, !tbaa !897
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2230, metadata !637), !dbg !2388
  br label %379, !dbg !2822, !llvm.loop !2824

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2211, metadata !637), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2237, metadata !637), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2236, metadata !637), !dbg !2370
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2235, metadata !637), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2230, metadata !637), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2228, metadata !637), !dbg !2291
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2213, metadata !637), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2221, metadata !637), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2219, metadata !637), !dbg !2357
  br i1 %107, label %488, label %487, !dbg !2827

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2829

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2830

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2831
  %491 = zext i8 %490 to i64, !dbg !2831
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2833
  %493 = load i32, i32* %492, align 4, !dbg !2833, !tbaa !873
  %494 = and i8 %483, 31, !dbg !2834
  %495 = zext i8 %494 to i32, !dbg !2835
  %496 = shl i32 1, %495, !dbg !2836
  %497 = and i32 %493, %496, !dbg !2836
  %498 = icmp eq i32 %497, 0, !dbg !2836
  %499 = icmp eq i8 %157, 0, !dbg !2837
  %500 = and i1 %499, %498, !dbg !2838
  br i1 %500, label %542, label %503, !dbg !2838

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2837
  br i1 %502, label %542, label %503, !dbg !2839

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2211, metadata !637), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2237, metadata !637), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2230, metadata !637), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2228, metadata !637), !dbg !2291
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2213, metadata !637), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2221, metadata !637), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2219, metadata !637), !dbg !2357
  br i1 %112, label %513, label %644, !dbg !2841

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2236, metadata !637), !dbg !2370
  %514 = and i8 %508, 1, !dbg !2844
  %515 = icmp eq i8 %514, 0, !dbg !2844
  %516 = and i1 %114, %515, !dbg !2847
  br i1 %516, label %517, label %533, !dbg !2847

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2849
  br i1 %518, label %519, label %521, !dbg !2854

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2856
  store i8 39, i8* %520, align 1, !dbg !2856, !tbaa !897
  br label %521, !dbg !2856

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2220, metadata !637), !dbg !2282
  %523 = icmp ult i64 %522, %512, !dbg !2860
  br i1 %523, label %524, label %526, !dbg !2864

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2866
  store i8 36, i8* %525, align 1, !dbg !2866, !tbaa !897
  br label %526, !dbg !2866

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2220, metadata !637), !dbg !2282
  %528 = icmp ult i64 %527, %512, !dbg !2870
  br i1 %528, label %529, label %531, !dbg !2874

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2876
  store i8 39, i8* %530, align 1, !dbg !2876, !tbaa !897
  br label %531, !dbg !2876

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2227, metadata !637), !dbg !2290
  br label %533, !dbg !2880

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2220, metadata !637), !dbg !2282
  %536 = icmp ult i64 %534, %512, !dbg !2882
  br i1 %536, label %537, label %539, !dbg !2886

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2888
  store i8 92, i8* %538, align 1, !dbg !2888, !tbaa !897
  br label %539, !dbg !2888

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2211, metadata !637), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2237, metadata !637), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2236, metadata !637), !dbg !2370
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2230, metadata !637), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2228, metadata !637), !dbg !2291
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2213, metadata !637), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2221, metadata !637), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2219, metadata !637), !dbg !2357
  br label %569, !dbg !2892

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2274

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2211, metadata !637), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2237, metadata !637), !dbg !2371
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2236, metadata !637), !dbg !2370
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2230, metadata !637), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2228, metadata !637), !dbg !2291
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2213, metadata !637), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2221, metadata !637), !dbg !2283
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2219, metadata !637), !dbg !2357
  %553 = and i8 %547, 1, !dbg !2892
  %554 = icmp ne i8 %553, 0, !dbg !2892
  %555 = and i8 %550, 1, !dbg !2896
  %556 = icmp eq i8 %555, 0, !dbg !2896
  %557 = and i1 %554, %556, !dbg !2892
  br i1 %557, label %558, label %569, !dbg !2892

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2898
  br i1 %559, label %560, label %562, !dbg !2903

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2905
  store i8 39, i8* %561, align 1, !dbg !2905, !tbaa !897
  br label %562, !dbg !2905

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2220, metadata !637), !dbg !2282
  %564 = icmp ult i64 %563, %552, !dbg !2909
  br i1 %564, label %565, label %567, !dbg !2913

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2915
  store i8 39, i8* %566, align 1, !dbg !2915, !tbaa !897
  br label %567, !dbg !2915

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2220, metadata !637), !dbg !2282
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2227, metadata !637), !dbg !2290
  br label %569, !dbg !2919

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2227, metadata !637), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2220, metadata !637), !dbg !2282
  %579 = icmp ult i64 %577, %570, !dbg !2921
  br i1 %579, label %580, label %582, !dbg !2925

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2927
  store i8 %572, i8* %581, align 1, !dbg !2927, !tbaa !897
  br label %582, !dbg !2927

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2929
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2220, metadata !637), !dbg !2282
  %584 = and i8 %571, 1, !dbg !2931
  %585 = icmp eq i8 %584, 0, !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2229, metadata !637), !dbg !2292
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2933
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2229, metadata !637), !dbg !2292
  br label %587, !dbg !2934

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2219, metadata !637), !dbg !2357
  br label %123, !dbg !2937, !llvm.loop !2938

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2941
  %600 = and i1 %114, %599, !dbg !2943
  %601 = xor i1 %600, true, !dbg !2943
  %602 = or i1 %112, %601, !dbg !2943
  br i1 %602, label %603, label %648, !dbg !2943

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2944
  %605 = xor i1 %604, true, !dbg !2944
  %606 = and i8 %129, 1, !dbg !2946
  %607 = icmp eq i8 %606, 0, !dbg !2946
  %608 = or i1 %607, %605, !dbg !2944
  br i1 %608, label %618, label %609, !dbg !2944

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2948
  %611 = icmp eq i8 %610, 0, !dbg !2948
  br i1 %611, label %614, label %612, !dbg !2951

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2952
  br label %659, !dbg !2953

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2954
  %616 = icmp ne i64 %126, 0, !dbg !2956
  %617 = and i1 %616, %615, !dbg !2958
  br i1 %617, label %27, label %618, !dbg !2958

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2959
  %620 = and i1 %619, %112, !dbg !2961
  br i1 %620, label %621, label %638, !dbg !2961

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2222, metadata !637), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2220, metadata !637), !dbg !2282
  %622 = load i8, i8* %100, align 1, !dbg !2962, !tbaa !897
  %623 = icmp eq i8 %622, 0, !dbg !2966
  br i1 %623, label %638, label %624, !dbg !2966

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2968

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2968
  br i1 %629, label %630, label %632, !dbg !2972

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2974
  store i8 %626, i8* %631, align 1, !dbg !2974, !tbaa !897
  br label %632, !dbg !2974

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2220, metadata !637), !dbg !2282
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2222, metadata !637), !dbg !2284
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2222, metadata !637), !dbg !2284
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2220, metadata !637), !dbg !2282
  %635 = load i8, i8* %634, align 1, !dbg !2962, !tbaa !897
  %636 = icmp eq i8 %635, 0, !dbg !2966
  br i1 %636, label %637, label %625, !dbg !2966, !llvm.loop !2980

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2282

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2220, metadata !637), !dbg !2282
  %640 = icmp ult i64 %639, %131, !dbg !2983
  br i1 %640, label %641, label %659, !dbg !2985

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2986
  store i8 0, i8* %642, align 1, !dbg !2987, !tbaa !897
  br label %659, !dbg !2986

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2274

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2274

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2274

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2211, metadata !637), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2213, metadata !637), !dbg !2276
  %653 = icmp ne i32 %650, 2, !dbg !2988
  %654 = icmp eq i8 %104, 0, !dbg !2990
  %655 = or i1 %653, %654, !dbg !2992
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2214, metadata !637), !dbg !2277
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2992
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2214, metadata !637), !dbg !2277
  %657 = and i32 %5, -3, !dbg !2993
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2994
  br label %659, !dbg !2995

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2996
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2997 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3001, metadata !637), !dbg !3005
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3002, metadata !637), !dbg !3006
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !3007
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3003, metadata !637), !dbg !3008
  %4 = icmp eq i8* %3, %0, !dbg !3009
  br i1 %4, label %5, label %75, !dbg !3011

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !3012
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3004, metadata !637), !dbg !3013
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3014, metadata !637), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3028, metadata !637), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3029, metadata !637), !dbg !3034
  %7 = load i8, i8* %6, align 1, !tbaa !897
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3035
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3035

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3038, metadata !637), !dbg !3052
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3050, metadata !637), !dbg !3056
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3051, metadata !637), !dbg !3057
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !897
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3058
  %15 = icmp eq i32 %14, 84, !dbg !3058
  br i1 %15, label %16, label %72, !dbg !3058

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3061, metadata !637), !dbg !3074
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3072, metadata !637), !dbg !3078
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3073, metadata !637), !dbg !3079
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !897
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3080
  %21 = icmp eq i32 %20, 70, !dbg !3080
  br i1 %21, label %22, label %72, !dbg !3080

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3083, metadata !637), !dbg !3095
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3093, metadata !637), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3094, metadata !637), !dbg !3100
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !897
  %25 = icmp eq i8 %24, 45, !dbg !3101
  br i1 %25, label %26, label %72, !dbg !3104

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3106, metadata !637), !dbg !3117
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3115, metadata !637), !dbg !3121
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3116, metadata !637), !dbg !3122
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !897
  %29 = icmp eq i8 %28, 56, !dbg !3123
  br i1 %29, label %30, label %72, !dbg !3126

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3128, metadata !637), !dbg !3138
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3136, metadata !637), !dbg !3142
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3137, metadata !637), !dbg !3143
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !897
  %33 = icmp eq i8 %32, 0, !dbg !3144
  br i1 %33, label %34, label %72, !dbg !3147

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3149, !tbaa !897
  %36 = icmp eq i8 %35, 96, !dbg !3150
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !3149
  br label %75, !dbg !3151

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3038, metadata !637), !dbg !3152
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3050, metadata !637), !dbg !3156
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3051, metadata !637), !dbg !3157
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !897
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3158
  %43 = icmp eq i32 %42, 66, !dbg !3158
  br i1 %43, label %44, label %72, !dbg !3158

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3061, metadata !637), !dbg !3159
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3072, metadata !637), !dbg !3161
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3073, metadata !637), !dbg !3162
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !897
  %47 = icmp eq i8 %46, 49, !dbg !3163
  br i1 %47, label %48, label %72, !dbg !3165

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3083, metadata !637), !dbg !3167
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3093, metadata !637), !dbg !3169
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3094, metadata !637), !dbg !3170
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !897
  %51 = icmp eq i8 %50, 56, !dbg !3171
  br i1 %51, label %52, label %72, !dbg !3172

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3106, metadata !637), !dbg !3173
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3115, metadata !637), !dbg !3175
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3116, metadata !637), !dbg !3176
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !897
  %55 = icmp eq i8 %54, 48, !dbg !3177
  br i1 %55, label %56, label %72, !dbg !3178

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3128, metadata !637), !dbg !3179
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3136, metadata !637), !dbg !3181
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3137, metadata !637), !dbg !3182
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !897
  %59 = icmp eq i8 %58, 51, !dbg !3183
  br i1 %59, label %60, label %72, !dbg !3184

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3185, metadata !637), !dbg !3194
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3192, metadata !637), !dbg !3198
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3193, metadata !637), !dbg !3199
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !897
  %63 = icmp eq i8 %62, 48, !dbg !3200
  br i1 %63, label %64, label %72, !dbg !3203

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3205, metadata !637), !dbg !3213
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3211, metadata !637), !dbg !3217
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3212, metadata !637), !dbg !3218
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !897
  %67 = icmp eq i8 %66, 0, !dbg !3219
  br i1 %67, label %68, label %72, !dbg !3222

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3223, !tbaa !897
  %70 = icmp eq i8 %69, 96, !dbg !3224
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !3223
  br label %75, !dbg !3225

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3226
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !3227
  br label %75, !dbg !3228

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3229
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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3230 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3234, metadata !637), !dbg !3237
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3235, metadata !637), !dbg !3238
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3236, metadata !637), !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3240, metadata !637) #11, !dbg !3253
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3245, metadata !637) #11, !dbg !3255
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3246, metadata !637) #11, !dbg !3256
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3247, metadata !637) #11, !dbg !3257
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3258
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3258
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3248, metadata !637) #11, !dbg !3259
  %6 = tail call i32* @__errno_location() #1, !dbg !3260
  %7 = load i32, i32* %6, align 4, !dbg !3260, !tbaa !873
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3249, metadata !637) #11, !dbg !3261
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3262
  %9 = load i32, i32* %8, align 4, !dbg !3262, !tbaa !2142
  %10 = or i32 %9, 1, !dbg !3263
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3250, metadata !637) #11, !dbg !3264
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3265
  %12 = load i32, i32* %11, align 8, !dbg !3265, !tbaa !2080
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3266
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3267
  %15 = load i8*, i8** %14, align 8, !dbg !3267, !tbaa !2169
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3268
  %17 = load i8*, i8** %16, align 8, !dbg !3268, !tbaa !2172
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3269
  %19 = add i64 %18, 1, !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3251, metadata !637) #11, !dbg !3271
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3272, metadata !637) #11, !dbg !3277
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3279
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3252, metadata !637) #11, !dbg !3280
  %21 = load i32, i32* %11, align 8, !dbg !3281, !tbaa !2080
  %22 = load i8*, i8** %14, align 8, !dbg !3282, !tbaa !2169
  %23 = load i8*, i8** %16, align 8, !dbg !3283, !tbaa !2172
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3284
  store i32 %7, i32* %6, align 4, !dbg !3285, !tbaa !873
  ret i8* %20, !dbg !3286
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3241 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3240, metadata !637), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3245, metadata !637), !dbg !3288
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3246, metadata !637), !dbg !3289
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3247, metadata !637), !dbg !3290
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3291
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3291
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3248, metadata !637), !dbg !3292
  %7 = tail call i32* @__errno_location() #1, !dbg !3293
  %8 = load i32, i32* %7, align 4, !dbg !3293, !tbaa !873
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3249, metadata !637), !dbg !3294
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3295
  %10 = load i32, i32* %9, align 4, !dbg !3295, !tbaa !2142
  %11 = icmp ne i64* %2, null, !dbg !3296
  %12 = xor i1 %11, true, !dbg !3296
  %13 = zext i1 %12 to i32, !dbg !3296
  %14 = or i32 %10, %13, !dbg !3297
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3250, metadata !637), !dbg !3298
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3299
  %16 = load i32, i32* %15, align 8, !dbg !3299, !tbaa !2080
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3300
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3301
  %19 = load i8*, i8** %18, align 8, !dbg !3301, !tbaa !2169
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3302
  %21 = load i8*, i8** %20, align 8, !dbg !3302, !tbaa !2172
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3303
  %23 = add i64 %22, 1, !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3251, metadata !637), !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3272, metadata !637) #11, !dbg !3306
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3308
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3252, metadata !637), !dbg !3309
  %25 = load i32, i32* %15, align 8, !dbg !3310, !tbaa !2080
  %26 = load i8*, i8** %18, align 8, !dbg !3311, !tbaa !2169
  %27 = load i8*, i8** %20, align 8, !dbg !3312, !tbaa !2172
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3313
  store i32 %8, i32* %7, align 4, !dbg !3314, !tbaa !873
  br i1 %11, label %29, label %30, !dbg !3315

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3316, !tbaa !951
  br label %30, !dbg !3318

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3319
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3320 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3324, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3322, metadata !637), !dbg !3325
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3323, metadata !637), !dbg !3326
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3323, metadata !637), !dbg !3326
  %2 = load i32, i32* @nslots, align 4, !dbg !3327, !tbaa !873
  %3 = icmp sgt i32 %2, 1, !dbg !3331
  br i1 %3, label %4, label %14, !dbg !3332

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3334

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3334
  %8 = load i8*, i8** %7, align 8, !dbg !3334, !tbaa !3335
  tail call void @free(i8* %8) #11, !dbg !3337
  %9 = add nuw i64 %6, 1, !dbg !3338
  %10 = load i32, i32* @nslots, align 4, !dbg !3327, !tbaa !873
  %11 = sext i32 %10 to i64, !dbg !3331
  %12 = icmp slt i64 %9, %11, !dbg !3331
  br i1 %12, label %5, label %13, !dbg !3332, !llvm.loop !3340

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3343

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3343
  %16 = load i8*, i8** %15, align 8, !dbg !3343, !tbaa !3335
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3345
  br i1 %17, label %19, label %18, !dbg !3346

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3347
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3349, !tbaa !3350
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3351, !tbaa !3335
  br label %19, !dbg !3352

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3353
  br i1 %20, label %23, label %21, !dbg !3355

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3356
  tail call void @free(i8* %22) #11, !dbg !3358
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3359, !tbaa !645
  br label %23, !dbg !3360

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3361, !tbaa !873
  ret void, !dbg !3362
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3363 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3367, metadata !637), !dbg !3369
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3368, metadata !637), !dbg !3370
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3371
  ret i8* %3, !dbg !3372
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3373 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3377, metadata !637), !dbg !3391
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3378, metadata !637), !dbg !3392
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3379, metadata !637), !dbg !3393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3380, metadata !637), !dbg !3394
  %5 = tail call i32* @__errno_location() #1, !dbg !3395
  %6 = load i32, i32* %5, align 4, !dbg !3395, !tbaa !873
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3381, metadata !637), !dbg !3396
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3397, !tbaa !645
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3382, metadata !637), !dbg !3398
  %8 = icmp slt i32 %0, 0, !dbg !3399
  br i1 %8, label %9, label %10, !dbg !3401

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3402
  unreachable, !dbg !3402

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3403, !tbaa !873
  %12 = icmp sgt i32 %11, %0, !dbg !3404
  br i1 %12, label %34, label %13, !dbg !3405

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3406
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3407
  br i1 %15, label %16, label %17, !dbg !3409

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3410
  unreachable, !dbg !3410

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3411
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3411
  %20 = add nsw i32 %0, 1, !dbg !3413
  %21 = sext i32 %20 to i64, !dbg !3414
  %22 = shl nsw i64 %21, 4, !dbg !3415
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3416
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3416
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3382, metadata !637), !dbg !3398
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3417, !tbaa !645
  br i1 %14, label %25, label %26, !dbg !3418

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3419, !tbaa.struct !3421
  br label %26, !dbg !3422

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3423, !tbaa !873
  %28 = sext i32 %27 to i64, !dbg !3424
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3424
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3425
  %31 = sub nsw i32 %20, %27, !dbg !3426
  %32 = sext i32 %31 to i64, !dbg !3427
  %33 = shl nsw i64 %32, 4, !dbg !3428
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3425
  store i32 %20, i32* @nslots, align 4, !dbg !3429, !tbaa !873
  br label %34, !dbg !3430

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3382, metadata !637), !dbg !3398
  %36 = sext i32 %0 to i64, !dbg !3431
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3432
  %38 = load i64, i64* %37, align 8, !dbg !3432, !tbaa !3350
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3386, metadata !637), !dbg !3433
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3434
  %40 = load i8*, i8** %39, align 8, !dbg !3434, !tbaa !3335
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3388, metadata !637), !dbg !3435
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3436
  %42 = load i32, i32* %41, align 4, !dbg !3436, !tbaa !2142
  %43 = or i32 %42, 1, !dbg !3437
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3389, metadata !637), !dbg !3438
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3439
  %45 = load i32, i32* %44, align 8, !dbg !3439, !tbaa !2080
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3440
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3441
  %48 = load i8*, i8** %47, align 8, !dbg !3441, !tbaa !2169
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3442
  %50 = load i8*, i8** %49, align 8, !dbg !3442, !tbaa !2172
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3443
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3390, metadata !637), !dbg !3444
  %52 = icmp ugt i64 %38, %51, !dbg !3445
  br i1 %52, label %63, label %53, !dbg !3447

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3448
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3386, metadata !637), !dbg !3433
  store i64 %54, i64* %37, align 8, !dbg !3450, !tbaa !3350
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3451
  br i1 %55, label %57, label %56, !dbg !3453

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3454
  br label %57, !dbg !3454

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3272, metadata !637) #11, !dbg !3455
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3457
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3388, metadata !637), !dbg !3435
  store i8* %58, i8** %39, align 8, !dbg !3458, !tbaa !3335
  %59 = load i32, i32* %44, align 8, !dbg !3459, !tbaa !2080
  %60 = load i8*, i8** %47, align 8, !dbg !3460, !tbaa !2169
  %61 = load i8*, i8** %49, align 8, !dbg !3461, !tbaa !2172
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3462
  br label %63, !dbg !3463

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3388, metadata !637), !dbg !3435
  store i32 %6, i32* %5, align 4, !dbg !3464, !tbaa !873
  ret i8* %64, !dbg !3465
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3466 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3470, metadata !637), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3471, metadata !637), !dbg !3474
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3472, metadata !637), !dbg !3475
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3476
  ret i8* %4, !dbg !3477
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3478 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3482, metadata !637), !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3367, metadata !637) #11, !dbg !3484
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3368, metadata !637) #11, !dbg !3486
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3487
  ret i8* %2, !dbg !3488
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3489 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3493, metadata !637), !dbg !3495
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3494, metadata !637), !dbg !3496
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3470, metadata !637) #11, !dbg !3497
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3471, metadata !637) #11, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3472, metadata !637) #11, !dbg !3500
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3501
  ret i8* %3, !dbg !3502
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3503 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3511, metadata !3517), !dbg !3518
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3507, metadata !637), !dbg !3520
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3508, metadata !637), !dbg !3521
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3509, metadata !637), !dbg !3522
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3523
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3523
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3510, metadata !935), !dbg !3524
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3516, metadata !637) #11, !dbg !3525
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3526
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3526
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3511, metadata !637) #11, !dbg !3518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3511, metadata !3527) #11, !dbg !3518
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3518
  %8 = icmp eq i32 %1, 10, !dbg !3528
  br i1 %8, label %9, label %10, !dbg !3530

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3531, !noalias !3532
  unreachable, !dbg !3531

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3511, metadata !3527) #11, !dbg !3518
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3535
  store i32 %1, i32* %11, align 8, !dbg !3535, !alias.scope !3532
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3535
  %13 = bitcast i32* %12 to i8*, !dbg !3535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3535
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3536
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3510, metadata !935), !dbg !3524
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3537
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3538
  ret i8* %14, !dbg !3539
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3540 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3511, metadata !3517), !dbg !3549
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3544, metadata !637), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3545, metadata !637), !dbg !3552
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3546, metadata !637), !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3547, metadata !637), !dbg !3554
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3555
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3555
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3548, metadata !935), !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3516, metadata !637) #11, !dbg !3557
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3558
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3558
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3511, metadata !637) #11, !dbg !3549
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3511, metadata !3527) #11, !dbg !3549
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3549
  %9 = icmp eq i32 %1, 10, !dbg !3559
  br i1 %9, label %10, label %11, !dbg !3560

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3561, !noalias !3562
  unreachable, !dbg !3561

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3511, metadata !3527) #11, !dbg !3549
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3565
  store i32 %1, i32* %12, align 8, !dbg !3565, !alias.scope !3562
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3565
  %14 = bitcast i32* %13 to i8*, !dbg !3565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3565
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3566
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3548, metadata !935), !dbg !3556
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3567
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3568
  ret i8* %15, !dbg !3569
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3570 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3511, metadata !3517), !dbg !3576
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3574, metadata !637), !dbg !3579
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3575, metadata !637), !dbg !3580
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3507, metadata !637) #11, !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3508, metadata !637) #11, !dbg !3582
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3509, metadata !637) #11, !dbg !3583
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3584
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3584
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3510, metadata !935) #11, !dbg !3585
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3516, metadata !637) #11, !dbg !3586
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3587
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3587
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3511, metadata !637) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3511, metadata !3527) #11, !dbg !3576
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3576
  %7 = icmp eq i32 %0, 10, !dbg !3588
  br i1 %7, label %8, label %9, !dbg !3589

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3590, !noalias !3591
  unreachable, !dbg !3590

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3511, metadata !3527) #11, !dbg !3576
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3594
  store i32 %0, i32* %10, align 8, !dbg !3594, !alias.scope !3591
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3594
  %12 = bitcast i32* %11 to i8*, !dbg !3594
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3594
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3595
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3510, metadata !935) #11, !dbg !3585
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3596
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3597
  ret i8* %13, !dbg !3598
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3599 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3511, metadata !3517), !dbg !3606
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3603, metadata !637), !dbg !3609
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3604, metadata !637), !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3605, metadata !637), !dbg !3611
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3544, metadata !637) #11, !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3545, metadata !637) #11, !dbg !3613
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3546, metadata !637) #11, !dbg !3614
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3547, metadata !637) #11, !dbg !3615
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3616
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3616
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3548, metadata !935) #11, !dbg !3617
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3516, metadata !637) #11, !dbg !3618
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3619
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3619
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3511, metadata !637) #11, !dbg !3606
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3511, metadata !3527) #11, !dbg !3606
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3606
  %8 = icmp eq i32 %0, 10, !dbg !3620
  br i1 %8, label %9, label %10, !dbg !3621

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3622, !noalias !3623
  unreachable, !dbg !3622

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3511, metadata !3527) #11, !dbg !3606
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3626
  store i32 %0, i32* %11, align 8, !dbg !3626, !alias.scope !3623
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3626
  %13 = bitcast i32* %12 to i8*, !dbg !3626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3626
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3627
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3548, metadata !935) #11, !dbg !3617
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3628
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3629
  ret i8* %14, !dbg !3630
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3631 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3635, metadata !637), !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3636, metadata !637), !dbg !3640
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3637, metadata !637), !dbg !3641
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3642
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3643, !tbaa.struct !3644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3638, metadata !935), !dbg !3645
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2100, metadata !637), !dbg !3646
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2101, metadata !637), !dbg !3648
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2102, metadata !637), !dbg !3649
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2103, metadata !637), !dbg !3650
  %6 = lshr i8 %2, 5, !dbg !3651
  %7 = zext i8 %6 to i64, !dbg !3651
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3652
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2104, metadata !637), !dbg !3653
  %9 = and i8 %2, 31, !dbg !3654
  %10 = zext i8 %9 to i32, !dbg !3655
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2106, metadata !637), !dbg !3656
  %11 = load i32, i32* %8, align 4, !dbg !3657, !tbaa !873
  %12 = lshr i32 %11, %10, !dbg !3658
  %13 = and i32 %12, 1, !dbg !3659
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2107, metadata !637), !dbg !3660
  %14 = xor i32 %13, 1, !dbg !3661
  %15 = shl i32 %14, %10, !dbg !3662
  %16 = xor i32 %15, %11, !dbg !3663
  store i32 %16, i32* %8, align 4, !dbg !3663, !tbaa !873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3638, metadata !935), !dbg !3645
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3664
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3665
  ret i8* %17, !dbg !3666
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3667 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3671, metadata !637), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3672, metadata !637), !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3635, metadata !637) #11, !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3636, metadata !637) #11, !dbg !3677
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3637, metadata !637) #11, !dbg !3678
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3679
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3680, !tbaa.struct !3644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3638, metadata !935) #11, !dbg !3681
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2100, metadata !637) #11, !dbg !3682
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2101, metadata !637) #11, !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2102, metadata !637) #11, !dbg !3685
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2103, metadata !637) #11, !dbg !3686
  %5 = lshr i8 %1, 5, !dbg !3687
  %6 = zext i8 %5 to i64, !dbg !3687
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3688
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2104, metadata !637) #11, !dbg !3689
  %8 = and i8 %1, 31, !dbg !3690
  %9 = zext i8 %8 to i32, !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2106, metadata !637) #11, !dbg !3692
  %10 = load i32, i32* %7, align 4, !dbg !3693, !tbaa !873
  %11 = lshr i32 %10, %9, !dbg !3694
  %12 = and i32 %11, 1, !dbg !3695
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2107, metadata !637) #11, !dbg !3696
  %13 = xor i32 %12, 1, !dbg !3697
  %14 = shl i32 %13, %9, !dbg !3698
  %15 = xor i32 %14, %10, !dbg !3699
  store i32 %15, i32* %7, align 4, !dbg !3699, !tbaa !873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3638, metadata !935) #11, !dbg !3681
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3700
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3701
  ret i8* %16, !dbg !3702
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3703 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3705, metadata !637), !dbg !3706
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3671, metadata !637) #11, !dbg !3707
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3672, metadata !637) #11, !dbg !3709
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3635, metadata !637) #11, !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3636, metadata !637) #11, !dbg !3712
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3637, metadata !637) #11, !dbg !3713
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3714
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3715, !tbaa.struct !3644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3638, metadata !935) #11, !dbg !3716
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2100, metadata !637) #11, !dbg !3717
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2101, metadata !637) #11, !dbg !3719
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2102, metadata !637) #11, !dbg !3720
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2103, metadata !637) #11, !dbg !3721
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3722
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2104, metadata !637) #11, !dbg !3723
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2106, metadata !637) #11, !dbg !3724
  %5 = load i32, i32* %4, align 4, !dbg !3725, !tbaa !873
  %6 = or i32 %5, 67108864, !dbg !3726
  store i32 %6, i32* %4, align 4, !dbg !3726, !tbaa !873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3638, metadata !935) #11, !dbg !3716
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3727
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3728
  ret i8* %7, !dbg !3729
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3730 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3732, metadata !637), !dbg !3734
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3733, metadata !637), !dbg !3735
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3635, metadata !637) #11, !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3636, metadata !637) #11, !dbg !3738
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3637, metadata !637) #11, !dbg !3739
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3740
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3741, !tbaa.struct !3644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3638, metadata !935) #11, !dbg !3742
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2100, metadata !637) #11, !dbg !3743
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2101, metadata !637) #11, !dbg !3745
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2102, metadata !637) #11, !dbg !3746
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2103, metadata !637) #11, !dbg !3747
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3748
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2104, metadata !637) #11, !dbg !3749
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2106, metadata !637) #11, !dbg !3750
  %6 = load i32, i32* %5, align 4, !dbg !3751, !tbaa !873
  %7 = or i32 %6, 67108864, !dbg !3752
  store i32 %7, i32* %5, align 4, !dbg !3752, !tbaa !873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3638, metadata !935) #11, !dbg !3742
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3753
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3754
  ret i8* %8, !dbg !3755
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3756 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3511, metadata !3517), !dbg !3762
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3758, metadata !637), !dbg !3764
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3759, metadata !637), !dbg !3765
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3760, metadata !637), !dbg !3766
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3767
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3767
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3516, metadata !637) #11, !dbg !3768
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3769
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3769
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3511, metadata !637) #11, !dbg !3762
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3511, metadata !3527) #11, !dbg !3762
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3762
  %9 = icmp eq i32 %1, 10, !dbg !3770
  br i1 %9, label %10, label %11, !dbg !3771

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3772, !noalias !3773
  unreachable, !dbg !3772

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3511, metadata !3527) #11, !dbg !3762
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3776
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3777
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3778
  store i32 %1, i32* %13, align 8, !dbg !3778
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3778
  %15 = bitcast i32* %14 to i8*, !dbg !3778
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3778
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3761, metadata !935), !dbg !3779
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2100, metadata !637), !dbg !3780
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2101, metadata !637), !dbg !3782
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2102, metadata !637), !dbg !3783
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2103, metadata !637), !dbg !3784
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3785
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2104, metadata !637), !dbg !3786
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2106, metadata !637), !dbg !3787
  %17 = load i32, i32* %16, align 4, !dbg !3788, !tbaa !873
  %18 = or i32 %17, 67108864, !dbg !3789
  store i32 %18, i32* %16, align 4, !dbg !3789, !tbaa !873
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3761, metadata !935), !dbg !3779
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3790
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3791
  ret i8* %19, !dbg !3792
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3793 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3797, metadata !637), !dbg !3801
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3798, metadata !637), !dbg !3802
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3799, metadata !637), !dbg !3803
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3800, metadata !637), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3805, metadata !637) #11, !dbg !3815
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3810, metadata !637) #11, !dbg !3817
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3811, metadata !637) #11, !dbg !3818
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3812, metadata !637) #11, !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3813, metadata !637) #11, !dbg !3820
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3821
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3822, !tbaa.struct !3644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3814, metadata !935) #11, !dbg !3823
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2150, metadata !637) #11, !dbg !3824
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2151, metadata !637) #11, !dbg !3826
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2152, metadata !637) #11, !dbg !3827
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2150, metadata !637) #11, !dbg !3824
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2150, metadata !637) #11, !dbg !3824
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3828
  store i32 10, i32* %7, align 8, !dbg !3829, !tbaa !2080
  %8 = icmp ne i8* %1, null, !dbg !3830
  %9 = icmp ne i8* %2, null, !dbg !3831
  %10 = and i1 %8, %9, !dbg !3832
  br i1 %10, label %12, label %11, !dbg !3832

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3833
  unreachable, !dbg !3833

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3834
  store i8* %1, i8** %13, align 8, !dbg !3835, !tbaa !2169
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3836
  store i8* %2, i8** %14, align 8, !dbg !3837, !tbaa !2172
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3814, metadata !935) #11, !dbg !3823
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3838
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3839
  ret i8* %15, !dbg !3840
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3806 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3805, metadata !637), !dbg !3841
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3810, metadata !637), !dbg !3842
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3811, metadata !637), !dbg !3843
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3812, metadata !637), !dbg !3844
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3813, metadata !637), !dbg !3845
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3846
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3847, !tbaa.struct !3644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3814, metadata !935), !dbg !3848
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2150, metadata !637) #11, !dbg !3849
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2151, metadata !637) #11, !dbg !3851
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2152, metadata !637) #11, !dbg !3852
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2150, metadata !637) #11, !dbg !3849
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2150, metadata !637) #11, !dbg !3849
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3853
  store i32 10, i32* %8, align 8, !dbg !3854, !tbaa !2080
  %9 = icmp ne i8* %1, null, !dbg !3855
  %10 = icmp ne i8* %2, null, !dbg !3856
  %11 = and i1 %9, %10, !dbg !3857
  br i1 %11, label %13, label %12, !dbg !3857

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3858
  unreachable, !dbg !3858

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3859
  store i8* %1, i8** %14, align 8, !dbg !3860, !tbaa !2169
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3861
  store i8* %2, i8** %15, align 8, !dbg !3862, !tbaa !2172
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3814, metadata !935), !dbg !3848
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3863
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3864
  ret i8* %16, !dbg !3865
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3866 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3870, metadata !637), !dbg !3873
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3871, metadata !637), !dbg !3874
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3872, metadata !637), !dbg !3875
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3797, metadata !637) #11, !dbg !3876
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3798, metadata !637) #11, !dbg !3878
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3799, metadata !637) #11, !dbg !3879
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3800, metadata !637) #11, !dbg !3880
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3805, metadata !637) #11, !dbg !3881
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3810, metadata !637) #11, !dbg !3883
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3811, metadata !637) #11, !dbg !3884
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3812, metadata !637) #11, !dbg !3885
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3813, metadata !637) #11, !dbg !3886
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3887
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3887
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3888, !tbaa.struct !3644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3814, metadata !935) #11, !dbg !3889
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2150, metadata !637) #11, !dbg !3890
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2151, metadata !637) #11, !dbg !3892
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2152, metadata !637) #11, !dbg !3893
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2150, metadata !637) #11, !dbg !3890
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2150, metadata !637) #11, !dbg !3890
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3894
  store i32 10, i32* %6, align 8, !dbg !3895, !tbaa !2080
  %7 = icmp ne i8* %0, null, !dbg !3896
  %8 = icmp ne i8* %1, null, !dbg !3897
  %9 = and i1 %7, %8, !dbg !3898
  br i1 %9, label %11, label %10, !dbg !3898

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3899
  unreachable, !dbg !3899

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3900
  store i8* %0, i8** %12, align 8, !dbg !3901, !tbaa !2169
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3902
  store i8* %1, i8** %13, align 8, !dbg !3903, !tbaa !2172
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3814, metadata !935) #11, !dbg !3889
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3904
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3905
  ret i8* %14, !dbg !3906
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3907 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3911, metadata !637), !dbg !3915
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3912, metadata !637), !dbg !3916
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3913, metadata !637), !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3914, metadata !637), !dbg !3918
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3805, metadata !637) #11, !dbg !3919
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3810, metadata !637) #11, !dbg !3921
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3811, metadata !637) #11, !dbg !3922
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3812, metadata !637) #11, !dbg !3923
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3813, metadata !637) #11, !dbg !3924
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3925
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3925
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3926, !tbaa.struct !3644
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3814, metadata !935) #11, !dbg !3927
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2150, metadata !637) #11, !dbg !3928
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2151, metadata !637) #11, !dbg !3930
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2152, metadata !637) #11, !dbg !3931
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2150, metadata !637) #11, !dbg !3928
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2150, metadata !637) #11, !dbg !3928
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3932
  store i32 10, i32* %7, align 8, !dbg !3933, !tbaa !2080
  %8 = icmp ne i8* %0, null, !dbg !3934
  %9 = icmp ne i8* %1, null, !dbg !3935
  %10 = and i1 %8, %9, !dbg !3936
  br i1 %10, label %12, label %11, !dbg !3936

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3937
  unreachable, !dbg !3937

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3938
  store i8* %0, i8** %13, align 8, !dbg !3939, !tbaa !2169
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3940
  store i8* %1, i8** %14, align 8, !dbg !3941, !tbaa !2172
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3814, metadata !935) #11, !dbg !3927
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3942
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3943
  ret i8* %15, !dbg !3944
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3945 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3949, metadata !637), !dbg !3952
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3950, metadata !637), !dbg !3953
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3951, metadata !637), !dbg !3954
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3955
  ret i8* %4, !dbg !3956
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3957 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3961, metadata !637), !dbg !3963
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3962, metadata !637), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3949, metadata !637) #11, !dbg !3965
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3950, metadata !637) #11, !dbg !3967
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3951, metadata !637) #11, !dbg !3968
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3969
  ret i8* %3, !dbg !3970
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3971 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3975, metadata !637), !dbg !3977
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3976, metadata !637), !dbg !3978
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3949, metadata !637) #11, !dbg !3979
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3950, metadata !637) #11, !dbg !3981
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3951, metadata !637) #11, !dbg !3982
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3983
  ret i8* %3, !dbg !3984
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3985 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3989, metadata !637), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3975, metadata !637) #11, !dbg !3991
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3976, metadata !637) #11, !dbg !3993
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3949, metadata !637) #11, !dbg !3994
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3950, metadata !637) #11, !dbg !3996
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3951, metadata !637) #11, !dbg !3997
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3998
  ret i8* %2, !dbg !3999
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4000 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4045, metadata !637), !dbg !4051
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4046, metadata !637), !dbg !4052
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4047, metadata !637), !dbg !4053
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4048, metadata !637), !dbg !4054
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4049, metadata !637), !dbg !4055
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4050, metadata !637), !dbg !4056
  %7 = icmp eq i8* %1, null, !dbg !4057
  br i1 %7, label %10, label %8, !dbg !4059

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !4060
  br label %12, !dbg !4060

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !4061
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #11, !dbg !4062
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !4063
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.84, i64 0, i64 0), i32 5) #11, !dbg !4065
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !4066
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
  ], !dbg !4067

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4068
  unreachable, !dbg !4068

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #11, !dbg !4070
  %20 = load i8*, i8** %4, align 8, !dbg !4070, !tbaa !645
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !4071
  br label %146, !dbg !4073

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.86, i64 0, i64 0), i32 5) #11, !dbg !4074
  %24 = load i8*, i8** %4, align 8, !dbg !4074, !tbaa !645
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4074
  %26 = load i8*, i8** %25, align 8, !dbg !4074, !tbaa !645
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !4075
  br label %146, !dbg !4076

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #11, !dbg !4077
  %30 = load i8*, i8** %4, align 8, !dbg !4077, !tbaa !645
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4077
  %32 = load i8*, i8** %31, align 8, !dbg !4077, !tbaa !645
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4077
  %34 = load i8*, i8** %33, align 8, !dbg !4077, !tbaa !645
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !4078
  br label %146, !dbg !4079

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #11, !dbg !4080
  %38 = load i8*, i8** %4, align 8, !dbg !4080, !tbaa !645
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4080
  %40 = load i8*, i8** %39, align 8, !dbg !4080, !tbaa !645
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4080
  %42 = load i8*, i8** %41, align 8, !dbg !4080, !tbaa !645
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4080
  %44 = load i8*, i8** %43, align 8, !dbg !4080, !tbaa !645
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !4081
  br label %146, !dbg !4082

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #11, !dbg !4083
  %48 = load i8*, i8** %4, align 8, !dbg !4083, !tbaa !645
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4083
  %50 = load i8*, i8** %49, align 8, !dbg !4083, !tbaa !645
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4083
  %52 = load i8*, i8** %51, align 8, !dbg !4083, !tbaa !645
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4083
  %54 = load i8*, i8** %53, align 8, !dbg !4083, !tbaa !645
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4083
  %56 = load i8*, i8** %55, align 8, !dbg !4083, !tbaa !645
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !4084
  br label %146, !dbg !4085

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #11, !dbg !4086
  %60 = load i8*, i8** %4, align 8, !dbg !4086, !tbaa !645
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4086
  %62 = load i8*, i8** %61, align 8, !dbg !4086, !tbaa !645
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4086
  %64 = load i8*, i8** %63, align 8, !dbg !4086, !tbaa !645
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4086
  %66 = load i8*, i8** %65, align 8, !dbg !4086, !tbaa !645
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4086
  %68 = load i8*, i8** %67, align 8, !dbg !4086, !tbaa !645
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4086
  %70 = load i8*, i8** %69, align 8, !dbg !4086, !tbaa !645
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !4087
  br label %146, !dbg !4088

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #11, !dbg !4089
  %74 = load i8*, i8** %4, align 8, !dbg !4089, !tbaa !645
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4089
  %76 = load i8*, i8** %75, align 8, !dbg !4089, !tbaa !645
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4089
  %78 = load i8*, i8** %77, align 8, !dbg !4089, !tbaa !645
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4089
  %80 = load i8*, i8** %79, align 8, !dbg !4089, !tbaa !645
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4089
  %82 = load i8*, i8** %81, align 8, !dbg !4089, !tbaa !645
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4089
  %84 = load i8*, i8** %83, align 8, !dbg !4089, !tbaa !645
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4089
  %86 = load i8*, i8** %85, align 8, !dbg !4089, !tbaa !645
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !4090
  br label %146, !dbg !4091

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #11, !dbg !4092
  %90 = load i8*, i8** %4, align 8, !dbg !4092, !tbaa !645
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4092
  %92 = load i8*, i8** %91, align 8, !dbg !4092, !tbaa !645
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4092
  %94 = load i8*, i8** %93, align 8, !dbg !4092, !tbaa !645
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4092
  %96 = load i8*, i8** %95, align 8, !dbg !4092, !tbaa !645
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4092
  %98 = load i8*, i8** %97, align 8, !dbg !4092, !tbaa !645
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4092
  %100 = load i8*, i8** %99, align 8, !dbg !4092, !tbaa !645
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4092
  %102 = load i8*, i8** %101, align 8, !dbg !4092, !tbaa !645
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4092
  %104 = load i8*, i8** %103, align 8, !dbg !4092, !tbaa !645
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !4093
  br label %146, !dbg !4094

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #11, !dbg !4095
  %108 = load i8*, i8** %4, align 8, !dbg !4095, !tbaa !645
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4095
  %110 = load i8*, i8** %109, align 8, !dbg !4095, !tbaa !645
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4095
  %112 = load i8*, i8** %111, align 8, !dbg !4095, !tbaa !645
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4095
  %114 = load i8*, i8** %113, align 8, !dbg !4095, !tbaa !645
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4095
  %116 = load i8*, i8** %115, align 8, !dbg !4095, !tbaa !645
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4095
  %118 = load i8*, i8** %117, align 8, !dbg !4095, !tbaa !645
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4095
  %120 = load i8*, i8** %119, align 8, !dbg !4095, !tbaa !645
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4095
  %122 = load i8*, i8** %121, align 8, !dbg !4095, !tbaa !645
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4095
  %124 = load i8*, i8** %123, align 8, !dbg !4095, !tbaa !645
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !4096
  br label %146, !dbg !4097

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #11, !dbg !4098
  %128 = load i8*, i8** %4, align 8, !dbg !4098, !tbaa !645
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4098
  %130 = load i8*, i8** %129, align 8, !dbg !4098, !tbaa !645
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4098
  %132 = load i8*, i8** %131, align 8, !dbg !4098, !tbaa !645
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4098
  %134 = load i8*, i8** %133, align 8, !dbg !4098, !tbaa !645
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4098
  %136 = load i8*, i8** %135, align 8, !dbg !4098, !tbaa !645
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4098
  %138 = load i8*, i8** %137, align 8, !dbg !4098, !tbaa !645
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4098
  %140 = load i8*, i8** %139, align 8, !dbg !4098, !tbaa !645
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4098
  %142 = load i8*, i8** %141, align 8, !dbg !4098, !tbaa !645
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4098
  %144 = load i8*, i8** %143, align 8, !dbg !4098, !tbaa !645
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !4099
  br label %146, !dbg !4100

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4101
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4102 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4106, metadata !637), !dbg !4112
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4107, metadata !637), !dbg !4113
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4108, metadata !637), !dbg !4114
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4109, metadata !637), !dbg !4115
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4110, metadata !637), !dbg !4116
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4111, metadata !637), !dbg !4117
  br label %6, !dbg !4118

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4111, metadata !637), !dbg !4117
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4120
  %9 = load i8*, i8** %8, align 8, !dbg !4120, !tbaa !645
  %10 = icmp eq i8* %9, null, !dbg !4123
  %11 = add i64 %7, 1, !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4111, metadata !637), !dbg !4117
  br i1 %10, label %12, label %6, !dbg !4123, !llvm.loop !4127

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4130
  ret void, !dbg !4131
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4132 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4143, metadata !637), !dbg !4151
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4144, metadata !637), !dbg !4152
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4145, metadata !637), !dbg !4153
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4146, metadata !637), !dbg !4154
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4147, metadata !637), !dbg !4155
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4156
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !4156
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4149, metadata !637), !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4148, metadata !637), !dbg !4158
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4159
  %12 = icmp ult i32 %11, 41, !dbg !4159
  br i1 %12, label %13, label %18, !dbg !4159

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4163
  %15 = sext i32 %11 to i64, !dbg !4163
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4163
  %17 = add i32 %11, 8, !dbg !4163
  store i32 %17, i32* %8, align 8, !dbg !4163
  br label %21, !dbg !4163

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4165
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4165
  store i8* %20, i8** %10, align 8, !dbg !4165
  br label %21, !dbg !4165

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4159
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4167
  %25 = load i8*, i8** %24, align 8, !dbg !4167
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4169
  store i8* %25, i8** %26, align 16, !dbg !4170, !tbaa !645
  %27 = icmp eq i8* %25, null, !dbg !4171
  br i1 %27, label %30, label %28, !dbg !4172

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %29 = icmp ult i32 %22, 41, !dbg !4159
  br i1 %29, label %35, label %32, !dbg !4159

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4174
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !4175
  ret void, !dbg !4175

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4165
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4165
  store i8* %34, i8** %10, align 8, !dbg !4165
  br label %40, !dbg !4165

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4163
  %37 = sext i32 %22 to i64, !dbg !4163
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4163
  %39 = add i32 %22, 8, !dbg !4163
  store i32 %39, i32* %8, align 8, !dbg !4163
  br label %40, !dbg !4163

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4159
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4167
  %44 = load i8*, i8** %43, align 8, !dbg !4167
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4169
  store i8* %44, i8** %45, align 8, !dbg !4170, !tbaa !645
  %46 = icmp eq i8* %44, null, !dbg !4171
  br i1 %46, label %30, label %47, !dbg !4172

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %48 = icmp ult i32 %41, 41, !dbg !4159
  br i1 %48, label %52, label %49, !dbg !4159

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4165
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4165
  store i8* %51, i8** %10, align 8, !dbg !4165
  br label %57, !dbg !4165

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4163
  %54 = sext i32 %41 to i64, !dbg !4163
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4163
  %56 = add i32 %41, 8, !dbg !4163
  store i32 %56, i32* %8, align 8, !dbg !4163
  br label %57, !dbg !4163

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4159
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4167
  %61 = load i8*, i8** %60, align 8, !dbg !4167
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4169
  store i8* %61, i8** %62, align 16, !dbg !4170, !tbaa !645
  %63 = icmp eq i8* %61, null, !dbg !4171
  br i1 %63, label %30, label %64, !dbg !4172

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %65 = icmp ult i32 %58, 41, !dbg !4159
  br i1 %65, label %69, label %66, !dbg !4159

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4165
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4165
  store i8* %68, i8** %10, align 8, !dbg !4165
  br label %74, !dbg !4165

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4163
  %71 = sext i32 %58 to i64, !dbg !4163
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4163
  %73 = add i32 %58, 8, !dbg !4163
  store i32 %73, i32* %8, align 8, !dbg !4163
  br label %74, !dbg !4163

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4159
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4167
  %78 = load i8*, i8** %77, align 8, !dbg !4167
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4169
  store i8* %78, i8** %79, align 8, !dbg !4170, !tbaa !645
  %80 = icmp eq i8* %78, null, !dbg !4171
  br i1 %80, label %30, label %81, !dbg !4172

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %82 = icmp ult i32 %75, 41, !dbg !4159
  br i1 %82, label %86, label %83, !dbg !4159

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4165
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4165
  store i8* %85, i8** %10, align 8, !dbg !4165
  br label %91, !dbg !4165

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4163
  %88 = sext i32 %75 to i64, !dbg !4163
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4163
  %90 = add i32 %75, 8, !dbg !4163
  store i32 %90, i32* %8, align 8, !dbg !4163
  br label %91, !dbg !4163

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4159
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4167
  %95 = load i8*, i8** %94, align 8, !dbg !4167
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4169
  store i8* %95, i8** %96, align 16, !dbg !4170, !tbaa !645
  %97 = icmp eq i8* %95, null, !dbg !4171
  br i1 %97, label %30, label %98, !dbg !4172

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %99 = icmp ult i32 %92, 41, !dbg !4159
  br i1 %99, label %103, label %100, !dbg !4159

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4165
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4165
  store i8* %102, i8** %10, align 8, !dbg !4165
  br label %108, !dbg !4165

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4163
  %105 = sext i32 %92 to i64, !dbg !4163
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4163
  %107 = add i32 %92, 8, !dbg !4163
  store i32 %107, i32* %8, align 8, !dbg !4163
  br label %108, !dbg !4163

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4167
  %111 = load i8*, i8** %110, align 8, !dbg !4167
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4169
  store i8* %111, i8** %112, align 8, !dbg !4170, !tbaa !645
  %113 = icmp eq i8* %111, null, !dbg !4171
  br i1 %113, label %30, label %114, !dbg !4172

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %115 = load i8*, i8** %10, align 8, !dbg !4165
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4165
  store i8* %116, i8** %10, align 8, !dbg !4165
  %117 = bitcast i8* %115 to i8**, !dbg !4167
  %118 = load i8*, i8** %117, align 8, !dbg !4167
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4169
  store i8* %118, i8** %119, align 16, !dbg !4170, !tbaa !645
  %120 = icmp eq i8* %118, null, !dbg !4171
  br i1 %120, label %30, label %121, !dbg !4172

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %122 = load i8*, i8** %10, align 8, !dbg !4165
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4165
  store i8* %123, i8** %10, align 8, !dbg !4165
  %124 = bitcast i8* %122 to i8**, !dbg !4167
  %125 = load i8*, i8** %124, align 8, !dbg !4167
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4169
  store i8* %125, i8** %126, align 8, !dbg !4170, !tbaa !645
  %127 = icmp eq i8* %125, null, !dbg !4171
  br i1 %127, label %30, label %128, !dbg !4172

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %129 = load i8*, i8** %10, align 8, !dbg !4165
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4165
  store i8* %130, i8** %10, align 8, !dbg !4165
  %131 = bitcast i8* %129 to i8**, !dbg !4167
  %132 = load i8*, i8** %131, align 8, !dbg !4167
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4169
  store i8* %132, i8** %133, align 16, !dbg !4170, !tbaa !645
  %134 = icmp eq i8* %132, null, !dbg !4171
  br i1 %134, label %30, label %135, !dbg !4172

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %136 = load i8*, i8** %10, align 8, !dbg !4165
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4165
  store i8* %137, i8** %10, align 8, !dbg !4165
  %138 = bitcast i8* %136 to i8**, !dbg !4167
  %139 = load i8*, i8** %138, align 8, !dbg !4167
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4169
  store i8* %139, i8** %140, align 8, !dbg !4170, !tbaa !645
  %141 = icmp eq i8* %139, null, !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4148, metadata !637), !dbg !4158
  %142 = select i1 %141, i64 9, i64 10, !dbg !4172
  br label %30, !dbg !4172
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4176 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4180, metadata !637), !dbg !4190
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4181, metadata !637), !dbg !4191
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4182, metadata !637), !dbg !4192
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4183, metadata !637), !dbg !4193
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4194
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4194
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4184, metadata !637), !dbg !4195
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4196
  call void @llvm.va_start(i8* nonnull %6), !dbg !4196
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4197
  call void @llvm.va_end(i8* nonnull %6), !dbg !4198
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4199
  ret void, !dbg !4199
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4200 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #11, !dbg !4201
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.98, i64 0, i64 0)) #11, !dbg !4202
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #11, !dbg !4204
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.101, i64 0, i64 0)) #11, !dbg !4205
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.102, i64 0, i64 0), i32 5) #11, !dbg !4206
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4206, !tbaa !645
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4207
  ret void, !dbg !4208
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4209 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4213, metadata !637), !dbg !4215
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4214, metadata !637), !dbg !4216
  %3 = udiv i64 9223372036854775807, %1, !dbg !4217
  %4 = icmp ult i64 %3, %0, !dbg !4217
  br i1 %4, label %5, label %6, !dbg !4219

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4220
  unreachable, !dbg !4220

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4221
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4222, metadata !637) #11, !dbg !4229
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4231
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4228, metadata !637) #11, !dbg !4232
  %9 = icmp eq i8* %8, null, !dbg !4233
  %10 = icmp ne i64 %7, 0, !dbg !4235
  %11 = and i1 %10, %9, !dbg !4237
  br i1 %11, label %12, label %13, !dbg !4237

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4238
  unreachable, !dbg !4238

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4239
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4223 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4222, metadata !637), !dbg !4240
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4241
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4228, metadata !637), !dbg !4242
  %3 = icmp eq i8* %2, null, !dbg !4243
  %4 = icmp ne i64 %0, 0, !dbg !4244
  %5 = and i1 %4, %3, !dbg !4245
  br i1 %5, label %6, label %7, !dbg !4245

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4246
  unreachable, !dbg !4246

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4247
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4248 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4252, metadata !637), !dbg !4255
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4253, metadata !637), !dbg !4256
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4254, metadata !637), !dbg !4257
  %4 = udiv i64 9223372036854775807, %2, !dbg !4258
  %5 = icmp ult i64 %4, %1, !dbg !4258
  br i1 %5, label %6, label %7, !dbg !4260

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4261
  unreachable, !dbg !4261

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4262
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4263, metadata !637) #11, !dbg !4269
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4268, metadata !637) #11, !dbg !4271
  %9 = icmp eq i64 %8, 0, !dbg !4272
  %10 = icmp ne i8* %0, null, !dbg !4274
  %11 = and i1 %10, %9, !dbg !4276
  br i1 %11, label %12, label %13, !dbg !4276

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4277
  br label %19, !dbg !4279

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4280
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4263, metadata !637) #11, !dbg !4269
  %15 = icmp eq i8* %14, null, !dbg !4281
  %16 = icmp ne i64 %8, 0, !dbg !4283
  %17 = and i1 %16, %15, !dbg !4285
  br i1 %17, label %18, label %19, !dbg !4285

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4286
  unreachable, !dbg !4286

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4287
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4264 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4263, metadata !637), !dbg !4288
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4268, metadata !637), !dbg !4289
  %3 = icmp eq i64 %1, 0, !dbg !4290
  %4 = icmp ne i8* %0, null, !dbg !4291
  %5 = and i1 %4, %3, !dbg !4292
  br i1 %5, label %6, label %7, !dbg !4292

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4293
  br label %13, !dbg !4294

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4295
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4263, metadata !637), !dbg !4288
  %9 = icmp eq i8* %8, null, !dbg !4296
  %10 = icmp ne i64 %1, 0, !dbg !4297
  %11 = and i1 %10, %9, !dbg !4298
  br i1 %11, label %12, label %13, !dbg !4298

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4299
  unreachable, !dbg !4299

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4300
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !582 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !587, metadata !637), !dbg !4301
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !588, metadata !637), !dbg !4302
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !589, metadata !637), !dbg !4303
  %4 = load i64, i64* %1, align 8, !dbg !4304, !tbaa !951
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !590, metadata !637), !dbg !4305
  %5 = icmp eq i8* %0, null, !dbg !4306
  br i1 %5, label %6, label %13, !dbg !4308

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4309
  br i1 %7, label %8, label %17, !dbg !4312

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4313
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !590, metadata !637), !dbg !4305
  %10 = icmp ugt i64 %2, 128, !dbg !4315
  %11 = zext i1 %10 to i64, !dbg !4315
  %12 = add nuw nsw i64 %9, %11, !dbg !4316
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !590, metadata !637), !dbg !4305
  br label %17, !dbg !4317

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4318
  %15 = icmp ugt i64 %14, %4, !dbg !4321
  br i1 %15, label %20, label %16, !dbg !4322

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4323
  unreachable, !dbg !4323

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !590, metadata !637), !dbg !4305
  store i64 %18, i64* %1, align 8, !dbg !4324, !tbaa !951
  %19 = mul i64 %18, %2, !dbg !4325
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4263, metadata !637) #11, !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4268, metadata !637) #11, !dbg !4328
  br label %27, !dbg !4329

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4330
  %22 = add i64 %4, 1, !dbg !4331
  %23 = add i64 %22, %21, !dbg !4332
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !590, metadata !637), !dbg !4305
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !590, metadata !637), !dbg !4305
  store i64 %23, i64* %1, align 8, !dbg !4324, !tbaa !951
  %24 = mul i64 %23, %2, !dbg !4325
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4263, metadata !637) #11, !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4268, metadata !637) #11, !dbg !4328
  %25 = icmp eq i64 %24, 0, !dbg !4333
  br i1 %25, label %26, label %27, !dbg !4329

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4334
  br label %34, !dbg !4335

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4336
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4263, metadata !637) #11, !dbg !4326
  %30 = icmp eq i8* %29, null, !dbg !4337
  %31 = icmp ne i64 %28, 0, !dbg !4338
  %32 = and i1 %31, %30, !dbg !4339
  br i1 %32, label %33, label %34, !dbg !4339

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15, !dbg !4340
  unreachable, !dbg !4340

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4341
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4342 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4344, metadata !637), !dbg !4345
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4222, metadata !637) #11, !dbg !4346
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4348
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4228, metadata !637) #11, !dbg !4349
  %3 = icmp eq i8* %2, null, !dbg !4350
  %4 = icmp ne i64 %0, 0, !dbg !4351
  %5 = and i1 %4, %3, !dbg !4352
  br i1 %5, label %6, label %7, !dbg !4352

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4353
  unreachable, !dbg !4353

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4354
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4355 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4359, metadata !637), !dbg !4361
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4360, metadata !637), !dbg !4362
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !587, metadata !637) #11, !dbg !4363
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !588, metadata !637) #11, !dbg !4365
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !589, metadata !637) #11, !dbg !4366
  %3 = load i64, i64* %1, align 8, !dbg !4367, !tbaa !951
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !590, metadata !637) #11, !dbg !4368
  %4 = icmp eq i8* %0, null, !dbg !4369
  br i1 %4, label %5, label %8, !dbg !4370

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !590, metadata !637) #11, !dbg !4368
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !590, metadata !637) #11, !dbg !4368
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4372
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !590, metadata !637) #11, !dbg !4368
  store i64 %7, i64* %1, align 8, !dbg !4373, !tbaa !951
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4263, metadata !637) #11, !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4268, metadata !637) #11, !dbg !4376
  br label %17, !dbg !4377

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4378
  br i1 %9, label %11, label %10, !dbg !4379

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15, !dbg !4380
  unreachable, !dbg !4380

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4381
  %13 = add i64 %3, 1, !dbg !4382
  %14 = add i64 %13, %12, !dbg !4383
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !590, metadata !637) #11, !dbg !4368
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !590, metadata !637) #11, !dbg !4368
  store i64 %14, i64* %1, align 8, !dbg !4373, !tbaa !951
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4263, metadata !637) #11, !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4268, metadata !637) #11, !dbg !4376
  %15 = icmp eq i64 %14, 0, !dbg !4384
  br i1 %15, label %16, label %17, !dbg !4377

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4385
  br label %24, !dbg !4386

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4387
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4263, metadata !637) #11, !dbg !4374
  %20 = icmp eq i8* %19, null, !dbg !4388
  %21 = icmp ne i64 %18, 0, !dbg !4389
  %22 = and i1 %21, %20, !dbg !4390
  br i1 %22, label %23, label %24, !dbg !4390

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15, !dbg !4391
  unreachable, !dbg !4391

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4392
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4393 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4395, metadata !637), !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4222, metadata !637) #11, !dbg !4397
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4399
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4228, metadata !637) #11, !dbg !4400
  %3 = icmp eq i8* %2, null, !dbg !4401
  %4 = icmp ne i64 %0, 0, !dbg !4402
  %5 = and i1 %4, %3, !dbg !4403
  br i1 %5, label %6, label %7, !dbg !4403

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4404
  unreachable, !dbg !4404

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4405
  ret i8* %2, !dbg !4406
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4407 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4409, metadata !637), !dbg !4412
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4410, metadata !637), !dbg !4413
  %3 = udiv i64 9223372036854775807, %1, !dbg !4414
  %4 = icmp ult i64 %3, %0, !dbg !4414
  br i1 %4, label %8, label %5, !dbg !4416

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4417
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4411, metadata !637), !dbg !4419
  %7 = icmp eq i8* %6, null, !dbg !4420
  br i1 %7, label %8, label %9, !dbg !4421

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4423
  unreachable, !dbg !4423

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4424
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4425 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4429, metadata !637), !dbg !4431
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4430, metadata !637), !dbg !4432
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4222, metadata !637) #11, !dbg !4433
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4435
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4228, metadata !637) #11, !dbg !4436
  %4 = icmp eq i8* %3, null, !dbg !4437
  %5 = icmp ne i64 %1, 0, !dbg !4438
  %6 = and i1 %5, %4, !dbg !4439
  br i1 %6, label %7, label %8, !dbg !4439

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4440
  unreachable, !dbg !4440

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4441
  ret i8* %3, !dbg !4442
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4443 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4445, metadata !637), !dbg !4446
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4447
  %3 = add i64 %2, 1, !dbg !4448
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4429, metadata !637) #11, !dbg !4449
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4430, metadata !637) #11, !dbg !4452
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4222, metadata !637) #11, !dbg !4453
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4455
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4228, metadata !637) #11, !dbg !4456
  %5 = icmp eq i8* %4, null, !dbg !4457
  %6 = icmp ne i64 %3, 0, !dbg !4458
  %7 = and i1 %6, %5, !dbg !4459
  br i1 %7, label %8, label %9, !dbg !4459

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4460
  unreachable, !dbg !4460

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4461
  ret i8* %4, !dbg !4462
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4463 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4465, !tbaa !873
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #11, !dbg !4466
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #11, !dbg !4467
  tail call void @abort() #15, !dbg !4469
  unreachable, !dbg !4469
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4470 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4475, metadata !637), !dbg !4485
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4476, metadata !637), !dbg !4486
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4477, metadata !637), !dbg !4487
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4478, metadata !637), !dbg !4488
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4479, metadata !637), !dbg !4489
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4480, metadata !637), !dbg !4490
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4481, metadata !637), !dbg !4491
  %9 = bitcast i64* %8 to i8*, !dbg !4492
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #11, !dbg !4492
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !4484, metadata !935), !dbg !4493
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !4494
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4482, metadata !637), !dbg !4495
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !4496

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1, !dbg !4497
  br label %26, !dbg !4496

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4501, !tbaa !951
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4484, metadata !637), !dbg !4493
  %15 = icmp ult i64 %14, %2, !dbg !4505
  %16 = icmp ugt i64 %14, %3, !dbg !4506
  %17 = or i1 %15, %16, !dbg !4508
  br i1 %17, label %18, label %35, !dbg !4508

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4482, metadata !637), !dbg !4495
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4484, metadata !637), !dbg !4493
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4509
  %20 = tail call i32* @__errno_location() #1, !dbg !4512
  %21 = select i1 %19, i32 75, i32 34, !dbg !4513
  store i32 %21, i32* %20, align 4, !tbaa !873
  br label %26, !dbg !4514

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #1, !dbg !4515
  store i32 75, i32* %23, align 4, !dbg !4517, !tbaa !873
  br label %26, !dbg !4515

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #1, !dbg !4518
  store i32 0, i32* %25, align 4, !dbg !4520, !tbaa !873
  br label %26, !dbg !4518

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !4497
  %28 = icmp ne i32 %6, 0, !dbg !4521
  %29 = select i1 %28, i32 %6, i32 1, !dbg !4521
  %30 = load i32, i32* %27, align 4, !dbg !4497, !tbaa !873
  %31 = icmp eq i32 %30, 22, !dbg !4522
  %32 = select i1 %31, i32 0, i32 %30, !dbg !4497
  %33 = call i8* @quote(i8* %0) #11, !dbg !4523
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8* %5, i8* %33) #11, !dbg !4524
  %34 = load i64, i64* %8, align 8, !tbaa !951
  br label %35, !dbg !4526

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !4527
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4484, metadata !637), !dbg !4493
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #11, !dbg !4528
  ret i64 %36, !dbg !4529
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4530 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4534, metadata !637), !dbg !4540
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4535, metadata !637), !dbg !4541
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4536, metadata !637), !dbg !4542
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4537, metadata !637), !dbg !4543
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4538, metadata !637), !dbg !4544
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4539, metadata !637), !dbg !4545
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4546
  ret i64 %7, !dbg !4547
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4548 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4554, metadata !637), !dbg !4572
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4555, metadata !637), !dbg !4573
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4556, metadata !637), !dbg !4574
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4557, metadata !637), !dbg !4575
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4558, metadata !637), !dbg !4576
  %7 = bitcast i8** %6 to i8*, !dbg !4577
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11, !dbg !4577
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4562, metadata !637), !dbg !4578
  %8 = icmp ult i32 %2, 37, !dbg !4579
  br i1 %8, label %10, label %9, !dbg !4579

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.121, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15, !dbg !4582
  unreachable, !dbg !4582

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4584
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4560, metadata !637), !dbg !4585
  %12 = tail call i32* @__errno_location() #1, !dbg !4586
  store i32 0, i32* %12, align 4, !dbg !4587, !tbaa !873
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4563, metadata !637), !dbg !4588
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !4589
  %14 = load i16*, i16** %13, align 8, !tbaa !645
  br label %15, !dbg !4591

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !897
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4566, metadata !637), !dbg !4592
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4563, metadata !637), !dbg !4588
  %18 = zext i8 %17 to i64, !dbg !4589
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4589
  %20 = load i16, i16* %19, align 2, !dbg !4589, !tbaa !2612
  %21 = and i16 %20, 8192, !dbg !4589
  %22 = icmp eq i16 %21, 0, !dbg !4593
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4594
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4563, metadata !637), !dbg !4588
  br i1 %22, label %24, label %15, !dbg !4593, !llvm.loop !4595

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !4584
  %26 = icmp eq i8 %17, 45, !dbg !4597
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4599, metadata !637) #11, !dbg !4608
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4606, metadata !637) #11, !dbg !4608
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4607, metadata !637) #11, !dbg !4608
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11, !dbg !4610
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4561, metadata !637), !dbg !4611
  %29 = load i8*, i8** %25, align 8, !dbg !4612, !tbaa !645
  %30 = icmp eq i8* %29, %0, !dbg !4614
  br i1 %30, label %31, label %40, !dbg !4615

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4616
  br i1 %32, label %265, label %33, !dbg !4619

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4620, !tbaa !897
  %35 = icmp eq i8 %34, 0, !dbg !4620
  br i1 %35, label %265, label %36, !dbg !4622

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4620
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #11, !dbg !4623
  %39 = icmp eq i8* %38, null, !dbg !4623
  br i1 %39, label %265, label %47, !dbg !4625

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4627, !tbaa !873
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4629

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4562, metadata !637), !dbg !4578
  br label %43, !dbg !4630

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4562, metadata !637), !dbg !4578
  %45 = icmp eq i8* %4, null, !dbg !4632
  br i1 %45, label %46, label %47, !dbg !4634

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4561, metadata !637), !dbg !4611
  store i64 %28, i64* %3, align 8, !dbg !4635, !tbaa !951
  br label %265, !dbg !4637

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4638, !tbaa !897
  %51 = icmp eq i8 %50, 0, !dbg !4639
  br i1 %51, label %262, label %52, !dbg !4640

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !4638
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4567, metadata !637), !dbg !4641
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4570, metadata !637), !dbg !4642
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #11, !dbg !4643
  %55 = icmp eq i8* %54, null, !dbg !4643
  br i1 %55, label %56, label %58, !dbg !4646

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4561, metadata !637), !dbg !4611
  store i64 %49, i64* %3, align 8, !dbg !4648, !tbaa !951
  %57 = or i32 %48, 2, !dbg !4650
  br label %265, !dbg !4651

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
  ], !dbg !4652

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #11, !dbg !4653
  %61 = icmp eq i8* %60, null, !dbg !4653
  br i1 %61, label %72, label %62, !dbg !4657

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4659
  %64 = load i8, i8* %63, align 1, !dbg !4659, !tbaa !897
  %65 = sext i8 %64 to i32, !dbg !4659
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4660

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4661
  %68 = load i8, i8* %67, align 1, !dbg !4661, !tbaa !897
  %69 = icmp eq i8 %68, 66, !dbg !4664
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4570, metadata !637), !dbg !4642
  %70 = select i1 %69, i64 3, i64 1, !dbg !4665
  br label %72, !dbg !4665

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4567, metadata !637), !dbg !4641
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4570, metadata !637), !dbg !4642
  br label %72, !dbg !4666

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
  ], !dbg !4667

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4668, metadata !637), !dbg !4674
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4677
  %77 = shl i64 %49, 9, !dbg !4679
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4680
  %79 = zext i1 %76 to i32, !dbg !4680
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4571, metadata !637), !dbg !4681
  br label %253, !dbg !4682

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4668, metadata !637), !dbg !4683
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4685
  %82 = shl i64 %49, 10, !dbg !4686
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4687
  %84 = zext i1 %81 to i32, !dbg !4687
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4571, metadata !637), !dbg !4681
  br label %253, !dbg !4688

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4699
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4699
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4697
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4700
  %88 = mul i64 %49, %73, !dbg !4702
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4703
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  %90 = icmp ult i64 %86, %89, !dbg !4700
  %91 = mul i64 %89, %73, !dbg !4702
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4703
  %93 = or i1 %90, %87, !dbg !4704
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  %94 = icmp ult i64 %86, %92, !dbg !4700
  %95 = mul i64 %92, %73, !dbg !4702
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4703
  %97 = or i1 %94, %93, !dbg !4704
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  %98 = icmp ult i64 %86, %96, !dbg !4700
  %99 = mul i64 %96, %73, !dbg !4702
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4703
  %101 = or i1 %98, %97, !dbg !4704
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  %102 = icmp ult i64 %86, %100, !dbg !4700
  %103 = mul i64 %100, %73, !dbg !4702
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4703
  %105 = or i1 %102, %101, !dbg !4704
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  %106 = icmp ult i64 %86, %104, !dbg !4700
  %107 = mul i64 %104, %73, !dbg !4702
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4703
  %109 = or i1 %106, %105, !dbg !4704
  %110 = zext i1 %109 to i32, !dbg !4704
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4697
  br label %253, !dbg !4681

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4705
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4705
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4708
  %114 = mul i64 %49, %73, !dbg !4710
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4711
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4689, metadata !637), !dbg !4705
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4689, metadata !637), !dbg !4705
  %116 = icmp ult i64 %112, %115, !dbg !4708
  %117 = mul i64 %115, %73, !dbg !4710
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4711
  %119 = or i1 %116, %113, !dbg !4712
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4689, metadata !637), !dbg !4705
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4689, metadata !637), !dbg !4705
  %120 = icmp ult i64 %112, %118, !dbg !4708
  %121 = mul i64 %118, %73, !dbg !4710
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4711
  %123 = or i1 %120, %119, !dbg !4712
  %124 = zext i1 %123 to i32, !dbg !4712
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4689, metadata !637), !dbg !4705
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4689, metadata !637), !dbg !4705
  br label %253, !dbg !4681

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4689, metadata !637), !dbg !4713
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4715
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4715
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4689, metadata !637), !dbg !4713
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4716
  %128 = mul i64 %49, %73, !dbg !4718
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4719
  %130 = zext i1 %127 to i32, !dbg !4719
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4696, metadata !637), !dbg !4715
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4696, metadata !637), !dbg !4715
  br label %253, !dbg !4681

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4689, metadata !637), !dbg !4720
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4722
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4722
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4689, metadata !637), !dbg !4720
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4723
  %134 = mul i64 %49, %73, !dbg !4725
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4726
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4689, metadata !637), !dbg !4720
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4689, metadata !637), !dbg !4720
  %136 = icmp ult i64 %132, %135, !dbg !4723
  %137 = mul i64 %135, %73, !dbg !4725
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4726
  %139 = or i1 %136, %133, !dbg !4727
  %140 = zext i1 %139 to i32, !dbg !4727
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4689, metadata !637), !dbg !4720
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4689, metadata !637), !dbg !4720
  br label %253, !dbg !4681

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4730
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4730
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4689, metadata !637), !dbg !4728
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4731
  %144 = mul i64 %49, %73, !dbg !4733
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4734
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  %146 = icmp ult i64 %142, %145, !dbg !4731
  %147 = mul i64 %145, %73, !dbg !4733
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4734
  %149 = or i1 %146, %143, !dbg !4735
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  %150 = icmp ult i64 %142, %148, !dbg !4731
  %151 = mul i64 %148, %73, !dbg !4733
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4734
  %153 = or i1 %150, %149, !dbg !4735
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  %154 = icmp ult i64 %142, %152, !dbg !4731
  %155 = mul i64 %152, %73, !dbg !4733
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4734
  %157 = or i1 %154, %153, !dbg !4735
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  %158 = icmp ult i64 %142, %156, !dbg !4731
  %159 = mul i64 %156, %73, !dbg !4733
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4734
  %161 = or i1 %158, %157, !dbg !4735
  %162 = zext i1 %161 to i32, !dbg !4735
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4728
  br label %253, !dbg !4681

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4738
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4738
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4689, metadata !637), !dbg !4736
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4739
  %166 = mul i64 %49, %73, !dbg !4741
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4742
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4736
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4736
  %168 = icmp ult i64 %164, %167, !dbg !4739
  %169 = mul i64 %167, %73, !dbg !4741
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4742
  %171 = or i1 %168, %165, !dbg !4743
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4736
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4736
  %172 = icmp ult i64 %164, %170, !dbg !4739
  %173 = mul i64 %170, %73, !dbg !4741
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4742
  %175 = or i1 %172, %171, !dbg !4743
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4736
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4736
  %176 = icmp ult i64 %164, %174, !dbg !4739
  %177 = mul i64 %174, %73, !dbg !4741
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4742
  %179 = or i1 %176, %175, !dbg !4743
  %180 = zext i1 %179 to i32, !dbg !4743
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4736
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4689, metadata !637), !dbg !4736
  br label %253, !dbg !4681

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4668, metadata !637), !dbg !4744
  %182 = icmp slt i64 %49, 0, !dbg !4746
  %183 = shl i64 %49, 1, !dbg !4747
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4748
  %185 = lshr i64 %49, 63, !dbg !4748
  %186 = trunc i64 %185 to i32, !dbg !4748
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4571, metadata !637), !dbg !4681
  br label %253, !dbg !4749

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4752
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4752
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4689, metadata !637), !dbg !4750
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4753
  %190 = mul i64 %49, %73, !dbg !4755
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4756
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  %192 = icmp ult i64 %188, %191, !dbg !4753
  %193 = mul i64 %191, %73, !dbg !4755
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4756
  %195 = or i1 %192, %189, !dbg !4757
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  %196 = icmp ult i64 %188, %194, !dbg !4753
  %197 = mul i64 %194, %73, !dbg !4755
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4756
  %199 = or i1 %196, %195, !dbg !4757
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  %200 = icmp ult i64 %188, %198, !dbg !4753
  %201 = mul i64 %198, %73, !dbg !4755
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4756
  %203 = or i1 %200, %199, !dbg !4757
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  %204 = icmp ult i64 %188, %202, !dbg !4753
  %205 = mul i64 %202, %73, !dbg !4755
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4756
  %207 = or i1 %204, %203, !dbg !4757
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  %208 = icmp ult i64 %188, %206, !dbg !4753
  %209 = mul i64 %206, %73, !dbg !4755
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4756
  %211 = or i1 %208, %207, !dbg !4757
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  %212 = icmp ult i64 %188, %210, !dbg !4753
  %213 = mul i64 %210, %73, !dbg !4755
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4756
  %215 = or i1 %212, %211, !dbg !4757
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  %216 = icmp ult i64 %188, %214, !dbg !4753
  %217 = mul i64 %214, %73, !dbg !4755
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4756
  %219 = or i1 %216, %215, !dbg !4757
  %220 = zext i1 %219 to i32, !dbg !4757
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4750
  br label %253, !dbg !4681

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4760
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4696, metadata !637), !dbg !4760
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4689, metadata !637), !dbg !4758
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !4761
  %224 = mul i64 %49, %73, !dbg !4763
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4764
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  %226 = icmp ult i64 %222, %225, !dbg !4761
  %227 = mul i64 %225, %73, !dbg !4763
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4764
  %229 = or i1 %226, %223, !dbg !4765
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  %230 = icmp ult i64 %222, %228, !dbg !4761
  %231 = mul i64 %228, %73, !dbg !4763
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4764
  %233 = or i1 %230, %229, !dbg !4765
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  %234 = icmp ult i64 %222, %232, !dbg !4761
  %235 = mul i64 %232, %73, !dbg !4763
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4764
  %237 = or i1 %234, %233, !dbg !4765
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  %238 = icmp ult i64 %222, %236, !dbg !4761
  %239 = mul i64 %236, %73, !dbg !4763
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4764
  %241 = or i1 %238, %237, !dbg !4765
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  %242 = icmp ult i64 %222, %240, !dbg !4761
  %243 = mul i64 %240, %73, !dbg !4763
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4764
  %245 = or i1 %242, %241, !dbg !4765
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  %246 = icmp ult i64 %222, %244, !dbg !4761
  %247 = mul i64 %244, %73, !dbg !4763
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4764
  %249 = or i1 %246, %245, !dbg !4765
  %250 = zext i1 %249 to i32, !dbg !4765
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4689, metadata !637), !dbg !4758
  br label %253, !dbg !4681

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4561, metadata !637), !dbg !4611
  store i64 %49, i64* %3, align 8, !dbg !4766, !tbaa !951
  %252 = or i32 %48, 2, !dbg !4767
  br label %265, !dbg !4768

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4571, metadata !637), !dbg !4681
  %256 = or i32 %255, %48, !dbg !4769
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4562, metadata !637), !dbg !4578
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4770
  store i8* %257, i8** %25, align 8, !dbg !4770, !tbaa !645
  %258 = load i8, i8* %257, align 1, !dbg !4771, !tbaa !897
  %259 = icmp eq i8 %258, 0, !dbg !4771
  %260 = or i32 %256, 2, !dbg !4773
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4562, metadata !637), !dbg !4578
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4774
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4562, metadata !637), !dbg !4578
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4562, metadata !637), !dbg !4578
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4562, metadata !637), !dbg !4578
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4561, metadata !637), !dbg !4611
  store i64 %263, i64* %3, align 8, !dbg !4775, !tbaa !951
  br label %265, !dbg !4776

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11, !dbg !4777
  ret i32 %266, !dbg !4777
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4778 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4781, metadata !637), !dbg !4787
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4782, metadata !637), !dbg !4788
  %3 = icmp eq i64 %0, 0, !dbg !4789
  %4 = icmp eq i64 %1, 0, !dbg !4790
  %5 = or i1 %3, %4, !dbg !4792
  br i1 %5, label %12, label %6, !dbg !4792

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4793
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4784, metadata !637), !dbg !4794
  %8 = udiv i64 %7, %1, !dbg !4795
  %9 = icmp eq i64 %8, %0, !dbg !4797
  br i1 %9, label %12, label %10, !dbg !4798

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4799
  store i32 12, i32* %11, align 4, !dbg !4801, !tbaa !873
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4781, metadata !637), !dbg !4787
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4782, metadata !637), !dbg !4788
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4802
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4783, metadata !637), !dbg !4803
  br label %16, !dbg !4804

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4805
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4806 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4851, metadata !637), !dbg !4855
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4852, metadata !637), !dbg !4856
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4854, metadata !637), !dbg !4857
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4858
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4853, metadata !637), !dbg !4859
  %3 = icmp slt i32 %2, 0, !dbg !4860
  br i1 %3, label %4, label %6, !dbg !4862

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4863
  br label %24, !dbg !4864

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4865
  %8 = icmp eq i32 %7, 0, !dbg !4865
  br i1 %8, label %13, label %9, !dbg !4867

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4868
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4870
  %12 = icmp eq i64 %11, -1, !dbg !4872
  br i1 %12, label %16, label %13, !dbg !4873

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4874
  %15 = icmp eq i32 %14, 0, !dbg !4874
  br i1 %15, label %16, label %18, !dbg !4875

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4852, metadata !637), !dbg !4856
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4877
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4854, metadata !637), !dbg !4857
  br label %24, !dbg !4878

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4879
  %20 = load i32, i32* %19, align 4, !dbg !4879, !tbaa !873
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4852, metadata !637), !dbg !4856
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4852, metadata !637), !dbg !4856
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4877
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4854, metadata !637), !dbg !4857
  %22 = icmp eq i32 %20, 0, !dbg !4880
  br i1 %22, label %24, label %23, !dbg !4878

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4882, !tbaa !873
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4854, metadata !637), !dbg !4857
  br label %24, !dbg !4884

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4885
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4886 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4931, metadata !637), !dbg !4932
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4933
  br i1 %2, label %6, label %3, !dbg !4935

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4936
  %5 = icmp eq i32 %4, 0, !dbg !4936
  br i1 %5, label %6, label %8, !dbg !4938

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4940
  br label %17, !dbg !4941

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4942, metadata !637) #11, !dbg !4947
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4949
  %10 = load i32, i32* %9, align 8, !dbg !4949, !tbaa !987
  %11 = and i32 %10, 256, !dbg !4951
  %12 = icmp eq i32 %11, 0, !dbg !4951
  br i1 %12, label %15, label %13, !dbg !4952

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4953
  br label %15, !dbg !4953

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4954
  br label %17, !dbg !4955

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4956
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4957 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5002, metadata !637), !dbg !5008
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5003, metadata !637), !dbg !5009
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5004, metadata !637), !dbg !5010
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5011
  %5 = load i8*, i8** %4, align 8, !dbg !5011, !tbaa !5012
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5013
  %7 = load i8*, i8** %6, align 8, !dbg !5013, !tbaa !5014
  %8 = icmp eq i8* %5, %7, !dbg !5015
  br i1 %8, label %9, label %28, !dbg !5016

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5017
  %11 = load i8*, i8** %10, align 8, !dbg !5017, !tbaa !1146
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5019
  %13 = load i8*, i8** %12, align 8, !dbg !5019, !tbaa !5020
  %14 = icmp eq i8* %11, %13, !dbg !5021
  br i1 %14, label %15, label %28, !dbg !5022

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5023
  %17 = load i8*, i8** %16, align 8, !dbg !5023, !tbaa !5024
  %18 = icmp eq i8* %17, null, !dbg !5025
  br i1 %18, label %19, label %28, !dbg !5026

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5028
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5029
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5005, metadata !637), !dbg !5031
  %22 = icmp eq i64 %21, -1, !dbg !5032
  br i1 %22, label %30, label %23, !dbg !5034

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5035
  %25 = load i32, i32* %24, align 8, !dbg !5036, !tbaa !987
  %26 = and i32 %25, -17, !dbg !5036
  store i32 %26, i32* %24, align 8, !dbg !5036, !tbaa !987
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5037
  store i64 %21, i64* %27, align 8, !dbg !5038, !tbaa !5039
  br label %30, !dbg !5040

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5041
  br label %30, !dbg !5042

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5043
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5044 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5061, metadata !637), !dbg !5070
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5062, metadata !637), !dbg !5071
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5063, metadata !637), !dbg !5072
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5064, metadata !637), !dbg !5073
  %6 = bitcast i32* %5 to i8*, !dbg !5074
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !5074
  %7 = icmp eq i32* %0, null, !dbg !5075
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5061, metadata !637), !dbg !5070
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5077
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5061, metadata !637), !dbg !5070
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !5078
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5065, metadata !637), !dbg !5079
  %10 = icmp ugt i64 %9, -3, !dbg !5080
  %11 = icmp ne i64 %2, 0, !dbg !5081
  %12 = and i1 %11, %10, !dbg !5083
  br i1 %12, label %13, label %18, !dbg !5083

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !5084
  br i1 %14, label %18, label %15, !dbg !5086

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5088, !tbaa !897
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5067, metadata !637), !dbg !5089
  %17 = zext i8 %16 to i32, !dbg !5090
  store i32 %17, i32* %8, align 4, !dbg !5091, !tbaa !873
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !5092
  ret i64 %19, !dbg !5092
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5093 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5138, metadata !637), !dbg !5143
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !5144
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5145, metadata !637), !dbg !5148
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5150
  %4 = load i32, i32* %3, align 8, !dbg !5150, !tbaa !987
  %5 = and i32 %4, 32, !dbg !5150
  %6 = icmp eq i32 %5, 0, !dbg !5151
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !5152
  %8 = icmp ne i32 %7, 0, !dbg !5153
  br i1 %6, label %9, label %19, !dbg !5154

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5156
  %11 = icmp ne i64 %2, 0, !dbg !5156
  %12 = or i1 %11, %10, !dbg !5156
  %13 = sext i1 %8 to i32, !dbg !5156
  br i1 %12, label %22, label %14, !dbg !5156

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5158
  %16 = load i32, i32* %15, align 4, !dbg !5158, !tbaa !873
  %17 = icmp ne i32 %16, 9, !dbg !5160
  %18 = sext i1 %17 to i32, !dbg !5160
  br label %22, !dbg !5160

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5162

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5164
  store i32 0, i32* %21, align 4, !dbg !5166, !tbaa !873
  br label %22, !dbg !5164

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5167
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5168 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5173, metadata !637), !dbg !5193
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5174, metadata !637), !dbg !5194
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !5195
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5175, metadata !637), !dbg !5196
  %3 = icmp eq i8* %2, null, !dbg !5197
  br i1 %3, label %15, label %4, !dbg !5198

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5183, metadata !637), !dbg !5199
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5184, metadata !637), !dbg !5200
  %5 = load i8, i8* %2, align 1, !dbg !5201, !tbaa !897
  %6 = icmp eq i8 %5, 67, !dbg !5203
  br i1 %6, label %7, label %11, !dbg !5206

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5208
  %9 = load i8, i8* %8, align 1, !dbg !5208, !tbaa !897
  %10 = icmp eq i8 %9, 0, !dbg !5211
  br i1 %10, label %14, label %11, !dbg !5213

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5189, metadata !637), !dbg !5215
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0)) #11, !dbg !5216
  %13 = icmp eq i32 %12, 0, !dbg !5218
  br i1 %13, label %14, label %15, !dbg !5220

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5174, metadata !637), !dbg !5194
  br label %15, !dbg !5222

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5223
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5224 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5236, metadata !637), !dbg !5310
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5303, metadata !637), !dbg !5312
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !5313
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5228, metadata !637), !dbg !5314
  %4 = icmp eq i8* %3, null, !dbg !5315
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %3, !dbg !5317
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5228, metadata !637), !dbg !5314
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5318, !tbaa !645
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5250, metadata !637) #11, !dbg !5319
  %7 = icmp eq i8* %6, null, !dbg !5320
  br i1 %7, label %8, label %127, !dbg !5321

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.140, i64 0, i64 0)) #11, !dbg !5322
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5251, metadata !637) #11, !dbg !5323
  %10 = icmp eq i8* %9, null, !dbg !5324
  br i1 %10, label %14, label %11, !dbg !5326

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5327, !tbaa !897
  %13 = icmp eq i8 %12, 0, !dbg !5329
  br i1 %13, label %14, label %15, !dbg !5330

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5332

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.141, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5251, metadata !637) #11, !dbg !5323
  %17 = tail call i64 @strlen(i8* nonnull %16) #14, !dbg !5333
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5254, metadata !637) #11, !dbg !5334
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5256, metadata !637) #11, !dbg !5335
  %18 = icmp eq i64 %17, 0, !dbg !5336
  br i1 %18, label %24, label %19, !dbg !5337

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5338
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5338
  %22 = load i8, i8* %21, align 1, !dbg !5338, !tbaa !897
  %23 = icmp ne i8 %22, 47, !dbg !5340
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5341
  %27 = add i64 %17, 14, !dbg !5342
  %28 = add i64 %27, %26, !dbg !5343
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !5344
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5253, metadata !637) #11, !dbg !5345
  %30 = icmp eq i8* %29, null, !dbg !5346
  br i1 %30, label %125, label %31, !dbg !5346

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !5347
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5350

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5351, !tbaa !897
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5353
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5354
  br label %37, !dbg !5355

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5353
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.142, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5354
  br label %37, !dbg !5355

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !5356
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5258, metadata !637) #11, !dbg !5357
  %39 = icmp slt i32 %38, 0, !dbg !5358
  br i1 %39, label %123, label %40, !dbg !5359

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.143, i64 0, i64 0)) #11, !dbg !5360
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5259, metadata !637) #11, !dbg !5361
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5362
  br i1 %42, label %48, label %43, !dbg !5363

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5364

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !5365
  br label %123, !dbg !5367

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5300, metadata !637) #11, !dbg !5364
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5301, metadata !637) #11, !dbg !5368
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !5369
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !5370
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5371, metadata !637) #11, !dbg !5376
  %53 = load i8*, i8** %46, align 8, !dbg !5378, !tbaa !5014
  %54 = load i8*, i8** %47, align 8, !dbg !5378, !tbaa !5012
  %55 = icmp ult i8* %53, %54, !dbg !5378
  br i1 %55, label %58, label %56, !dbg !5378, !prof !1148

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5379
  br label %62, !dbg !5379

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5381
  store i8* %59, i8** %46, align 8, !dbg !5381, !tbaa !5014
  %60 = load i8, i8* %53, align 1, !dbg !5381, !tbaa !897
  %61 = zext i8 %60 to i32, !dbg !5381
  br label %62, !dbg !5381

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5383
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5302, metadata !637) #11, !dbg !5385
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5386

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5387

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5371, metadata !637) #11, !dbg !5387
  %66 = load i8*, i8** %46, align 8, !dbg !5391, !tbaa !5014
  %67 = load i8*, i8** %47, align 8, !dbg !5391, !tbaa !5012
  %68 = icmp ult i8* %66, %67, !dbg !5391
  br i1 %68, label %71, label %69, !dbg !5391, !prof !1148

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5392
  br label %75, !dbg !5392

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5393
  store i8* %72, i8** %46, align 8, !dbg !5393, !tbaa !5014
  %73 = load i8, i8* %66, align 1, !dbg !5393, !tbaa !897
  %74 = zext i8 %73 to i32, !dbg !5393
  br label %75, !dbg !5393

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5394
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5302, metadata !637) #11, !dbg !5385
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5395, !llvm.loop !5397

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !5400
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.144, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !5401
  %80 = icmp slt i32 %79, 2, !dbg !5403
  br i1 %80, label %115, label %81, !dbg !5404

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #14, !dbg !5405
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5307, metadata !637) #11, !dbg !5406
  %83 = call i64 @strlen(i8* nonnull %45) #14, !dbg !5407
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5308, metadata !637) #11, !dbg !5408
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5309, metadata !637) #11, !dbg !5409
  %84 = icmp eq i64 %51, 0, !dbg !5410
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5412

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5301, metadata !637) #11, !dbg !5368
  %89 = add i64 %86, 2, !dbg !5413
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !5415
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5300, metadata !637) #11, !dbg !5364
  br label %95, !dbg !5416

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5417
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5301, metadata !637) #11, !dbg !5368
  %93 = add i64 %92, 1, !dbg !5419
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !5420
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5300, metadata !637) #11, !dbg !5364
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5300, metadata !637) #11, !dbg !5364
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5301, metadata !637) #11, !dbg !5368
  %98 = icmp eq i8* %97, null, !dbg !5421
  br i1 %98, label %99, label %100, !dbg !5423

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5301, metadata !637) #11, !dbg !5368
  call void @free(i8* %52) #11, !dbg !5424
  br label %116, !dbg !5426

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5427
  %102 = xor i64 %83, -1, !dbg !5428
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5428
  %104 = xor i64 %82, -1, !dbg !5429
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5429
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5430, metadata !637) #11, !dbg !5437
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5436, metadata !637) #11, !dbg !5437
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !5439
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !5440
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5430, metadata !637) #11, !dbg !5441
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5436, metadata !637) #11, !dbg !5441
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !5443
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !5444
  br label %111, !dbg !5445

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5364

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5300, metadata !637) #11, !dbg !5364
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5301, metadata !637) #11, !dbg !5368
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5445
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5445
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5364

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5364

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5300, metadata !637) #11, !dbg !5364
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5301, metadata !637) #11, !dbg !5368
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5445
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5445
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5446
  %120 = icmp eq i64 %117, 0, !dbg !5447
  br i1 %120, label %123, label %121, !dbg !5449

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5450
  store i8 0, i8* %122, align 1, !dbg !5452, !tbaa !897
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5250, metadata !637) #11, !dbg !5319
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5250, metadata !637) #11, !dbg !5319
  call void @free(i8* %29) #11, !dbg !5453
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5250, metadata !637) #11, !dbg !5319
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5454, !tbaa !645
  br label %127, !dbg !5455

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5229, metadata !637), !dbg !5456
  %129 = load i8, i8* %128, align 1, !dbg !5457, !tbaa !897
  %130 = icmp eq i8 %129, 0, !dbg !5458
  br i1 %130, label %157, label %131, !dbg !5459

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5461

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !5461
  %136 = icmp eq i32 %135, 0, !dbg !5462
  br i1 %136, label %143, label %137, !dbg !5463

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5464
  br i1 %138, label %139, label %147, !dbg !5466

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5467
  %141 = load i8, i8* %140, align 1, !dbg !5467, !tbaa !897
  %142 = icmp eq i8 %141, 0, !dbg !5469
  br i1 %142, label %143, label %147, !dbg !5470

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #14, !dbg !5472
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5474
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5475
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5228, metadata !637), !dbg !5314
  br label %157, !dbg !5476

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #14, !dbg !5477
  %149 = add i64 %148, 1, !dbg !5478
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5479
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5229, metadata !637), !dbg !5456
  %151 = call i64 @strlen(i8* %150) #14, !dbg !5480
  %152 = add i64 %151, 1, !dbg !5481
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5482
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5229, metadata !637), !dbg !5456
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5229, metadata !637), !dbg !5456
  %154 = load i8, i8* %153, align 1, !dbg !5457, !tbaa !897
  %155 = icmp eq i8 %154, 0, !dbg !5458
  br i1 %155, label %156, label %132, !dbg !5459, !llvm.loop !5483

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5314

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5228, metadata !637), !dbg !5314
  %159 = load i8, i8* %158, align 1, !dbg !5486, !tbaa !897
  %160 = icmp eq i8 %159, 0, !dbg !5488
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i8* %158, !dbg !5489
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5228, metadata !637), !dbg !5314
  ret i8* %161, !dbg !5490
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

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.dbg.cu = !{!2, !88, !100, !121, !130, !566, !137, !143, !569, !211, !577, !594, !596, !607, !611, !613, !615, !617, !619, !622, !624, !220}
!llvm.ident = !{!627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627}
!llvm.module.flags = !{!628, !629, !630, !631}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 47, type: !74, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !42)
!3 = !DIFile(filename: "src/base64.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 45, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!23 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!24 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!25 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!26 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!27 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!28 = !{!29, !31, !32, !35, !37, !40, !39}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 62, baseType: !34)
!33 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!42 = !{!43, !0}
!43 = !DIGlobalVariableExpression(var: !44)
!44 = distinct !DIGlobalVariable(name: "infomap", scope: !45, file: !46, line: 632, type: !71, isLocal: true, isDefinition: true)
!45 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !46, file: !46, line: 630, type: !47, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !49)
!46 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!47 = !DISubroutineType(types: !48)
!48 = !{null, !40}
!49 = !{!50, !51, !52, !59, !61, !62, !63, !66, !67, !69}
!50 = !DILocalVariable(name: "program", arg: 1, scope: !45, file: !46, line: 630, type: !40)
!51 = !DILocalVariable(name: "node", scope: !45, file: !46, line: 642, type: !40)
!52 = !DILocalVariable(name: "map_prog", scope: !45, file: !46, line: 643, type: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !45, file: !46, line: 632, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !55, file: !46, line: 632, baseType: !40, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !55, file: !46, line: 632, baseType: !40, size: 64, offset: 64)
!59 = !DILocalVariable(name: "__s1_len", scope: !60, file: !46, line: 645, type: !32)
!60 = distinct !DILexicalBlock(scope: !45, file: !46, line: 645, column: 33)
!61 = !DILocalVariable(name: "__s2_len", scope: !60, file: !46, line: 645, type: !32)
!62 = !DILocalVariable(name: "lc_messages", scope: !45, file: !46, line: 655, type: !40)
!63 = !DILocalVariable(name: "__s1_len", scope: !64, file: !46, line: 656, type: !32)
!64 = distinct !DILexicalBlock(scope: !65, file: !46, line: 656, column: 22)
!65 = distinct !DILexicalBlock(scope: !45, file: !46, line: 656, column: 7)
!66 = !DILocalVariable(name: "__s2_len", scope: !64, file: !46, line: 656, type: !32)
!67 = !DILocalVariable(name: "__s2", scope: !68, file: !46, line: 656, type: !37)
!68 = distinct !DILexicalBlock(scope: !64, file: !46, line: 656, column: 22)
!69 = !DILocalVariable(name: "__result", scope: !68, file: !46, line: 656, type: !70)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 896, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 7)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 1536, elements: !84)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !77, line: 104, size: 256, elements: !78)
!77 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!78 = !{!79, !80, !81, !83}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !77, line: 106, baseType: !40, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !76, file: !77, line: 109, baseType: !70, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !76, file: !77, line: 110, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !77, line: 111, baseType: !70, size: 32, offset: 192)
!84 = !{!85}
!85 = !DISubrange(count: 6)
!86 = !DIGlobalVariableExpression(var: !87)
!87 = distinct !DIGlobalVariable(name: "Version", scope: !88, file: !89, line: 2, type: !40, isLocal: false, isDefinition: true)
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !91)
!89 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!90 = !{}
!91 = !{!86}
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "b32str", scope: !94, file: !95, line: 68, type: !116, isLocal: true, isDefinition: true)
!94 = distinct !DISubprogram(name: "base32_encode", scope: !95, file: !95, line: 65, type: !96, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !111)
!95 = !DIFile(filename: "lib/base32.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98, !32, !99, !32}
!98 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !29)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !102, globals: !103)
!101 = !DIFile(filename: "./lib/base32.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!102 = !{!31, !29}
!103 = !{!92, !104}
!104 = !DIGlobalVariableExpression(var: !105)
!105 = distinct !DIGlobalVariable(name: "b32", scope: !100, file: !95, line: 209, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 2048, elements: !109)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !{!110}
!110 = !DISubrange(count: 256)
!111 = !{!112, !113, !114, !115}
!112 = !DILocalVariable(name: "in", arg: 1, scope: !94, file: !95, line: 65, type: !98)
!113 = !DILocalVariable(name: "inlen", arg: 2, scope: !94, file: !95, line: 65, type: !32)
!114 = !DILocalVariable(name: "out", arg: 3, scope: !94, file: !95, line: 66, type: !99)
!115 = !DILocalVariable(name: "outlen", arg: 4, scope: !94, file: !95, line: 66, type: !32)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 32)
!119 = !DIGlobalVariableExpression(var: !120)
!120 = distinct !DIGlobalVariable(name: "file_name", scope: !121, file: !126, line: 36, type: !40, isLocal: true, isDefinition: true)
!121 = distinct !DICompileUnit(language: DW_LANG_C99, file: !122, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !123)
!122 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!123 = !{!119, !124}
!124 = !DIGlobalVariableExpression(var: !125)
!125 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !121, file: !126, line: 46, type: !127, isLocal: true, isDefinition: true)
!126 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!127 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!128 = !DIGlobalVariableExpression(var: !129)
!129 = distinct !DIGlobalVariable(name: "exit_failure", scope: !130, file: !133, line: 24, type: !134, isLocal: false, isDefinition: true)
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !132)
!131 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!132 = !{!128}
!133 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "program_name", scope: !137, file: !140, line: 33, type: !40, isLocal: false, isDefinition: true)
!137 = distinct !DICompileUnit(language: DW_LANG_C99, file: !138, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !102, globals: !139)
!138 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!139 = !{!135}
!140 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !143, file: !171, line: 77, type: !205, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !145, retainedTypes: !166, globals: !168)
!144 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!145 = !{!5, !146, !151}
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!149 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!150 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !152, line: 46, size: 32, elements: !153)
!152 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!154 = !DIEnumerator(name: "_ISupper", value: 256)
!155 = !DIEnumerator(name: "_ISlower", value: 512)
!156 = !DIEnumerator(name: "_ISalpha", value: 1024)
!157 = !DIEnumerator(name: "_ISdigit", value: 2048)
!158 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!159 = !DIEnumerator(name: "_ISspace", value: 8192)
!160 = !DIEnumerator(name: "_ISprint", value: 16384)
!161 = !DIEnumerator(name: "_ISgraph", value: 32768)
!162 = !DIEnumerator(name: "_ISblank", value: 1)
!163 = !DIEnumerator(name: "_IScntrl", value: 2)
!164 = !DIEnumerator(name: "_ISpunct", value: 4)
!165 = !DIEnumerator(name: "_ISalnum", value: 8)
!166 = !{!70, !167, !32, !29}
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !{!141, !169, !176, !189, !191, !194, !201, !203}
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !143, file: !171, line: 93, type: !172, isLocal: false, isDefinition: true)
!171 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 320, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!174 = !{!175}
!175 = !DISubrange(count: 10)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !143, file: !171, line: 1043, type: !178, isLocal: false, isDefinition: true)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !171, line: 57, size: 448, elements: !179)
!179 = !{!180, !181, !182, !187, !188}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !178, file: !171, line: 60, baseType: !5, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !178, file: !171, line: 63, baseType: !70, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !178, file: !171, line: 67, baseType: !183, size: 256, offset: 64)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !185)
!184 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !178, file: !171, line: 70, baseType: !40, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !178, file: !171, line: 73, baseType: !40, size: 64, offset: 384)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !143, file: !171, line: 108, type: !178, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192)
!192 = distinct !DIGlobalVariable(name: "slot0", scope: !143, file: !171, line: 834, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !109)
!194 = !DIGlobalVariableExpression(var: !195)
!195 = distinct !DIGlobalVariable(name: "slotvec", scope: !143, file: !171, line: 837, type: !196, isLocal: true, isDefinition: true)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !171, line: 826, size: 128, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !197, file: !171, line: 828, baseType: !32, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !197, file: !171, line: 829, baseType: !29, size: 64, offset: 64)
!201 = !DIGlobalVariableExpression(var: !202)
!202 = distinct !DIGlobalVariable(name: "nslots", scope: !143, file: !171, line: 835, type: !70, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "slotvec0", scope: !143, file: !171, line: 836, type: !197, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 704, elements: !207)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!207 = !{!208}
!208 = !DISubrange(count: 11)
!209 = !DIGlobalVariableExpression(var: !210)
!210 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !211, file: !214, line: 26, type: !215, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, globals: !213)
!212 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!213 = !{!209}
!214 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 376, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 47)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !220, file: !564, line: 120, type: !565, isLocal: true, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !222, retainedTypes: !561, globals: !563)
!221 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !{!223}
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !224, line: 41, size: 32, elements: !225)
!224 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!226 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!227 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!228 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!229 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!230 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!231 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!232 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!233 = !DIEnumerator(name: "DAY_1", value: 131079)
!234 = !DIEnumerator(name: "DAY_2", value: 131080)
!235 = !DIEnumerator(name: "DAY_3", value: 131081)
!236 = !DIEnumerator(name: "DAY_4", value: 131082)
!237 = !DIEnumerator(name: "DAY_5", value: 131083)
!238 = !DIEnumerator(name: "DAY_6", value: 131084)
!239 = !DIEnumerator(name: "DAY_7", value: 131085)
!240 = !DIEnumerator(name: "ABMON_1", value: 131086)
!241 = !DIEnumerator(name: "ABMON_2", value: 131087)
!242 = !DIEnumerator(name: "ABMON_3", value: 131088)
!243 = !DIEnumerator(name: "ABMON_4", value: 131089)
!244 = !DIEnumerator(name: "ABMON_5", value: 131090)
!245 = !DIEnumerator(name: "ABMON_6", value: 131091)
!246 = !DIEnumerator(name: "ABMON_7", value: 131092)
!247 = !DIEnumerator(name: "ABMON_8", value: 131093)
!248 = !DIEnumerator(name: "ABMON_9", value: 131094)
!249 = !DIEnumerator(name: "ABMON_10", value: 131095)
!250 = !DIEnumerator(name: "ABMON_11", value: 131096)
!251 = !DIEnumerator(name: "ABMON_12", value: 131097)
!252 = !DIEnumerator(name: "MON_1", value: 131098)
!253 = !DIEnumerator(name: "MON_2", value: 131099)
!254 = !DIEnumerator(name: "MON_3", value: 131100)
!255 = !DIEnumerator(name: "MON_4", value: 131101)
!256 = !DIEnumerator(name: "MON_5", value: 131102)
!257 = !DIEnumerator(name: "MON_6", value: 131103)
!258 = !DIEnumerator(name: "MON_7", value: 131104)
!259 = !DIEnumerator(name: "MON_8", value: 131105)
!260 = !DIEnumerator(name: "MON_9", value: 131106)
!261 = !DIEnumerator(name: "MON_10", value: 131107)
!262 = !DIEnumerator(name: "MON_11", value: 131108)
!263 = !DIEnumerator(name: "MON_12", value: 131109)
!264 = !DIEnumerator(name: "AM_STR", value: 131110)
!265 = !DIEnumerator(name: "PM_STR", value: 131111)
!266 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!267 = !DIEnumerator(name: "D_FMT", value: 131113)
!268 = !DIEnumerator(name: "T_FMT", value: 131114)
!269 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!270 = !DIEnumerator(name: "ERA", value: 131116)
!271 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!272 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!273 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!274 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!275 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!276 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!277 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!278 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!279 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!280 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!281 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!282 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!283 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!284 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!285 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!286 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!287 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!288 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!289 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!290 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!291 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!292 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!293 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!294 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!295 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!296 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!297 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!298 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!299 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!300 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!301 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!302 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!303 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!304 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!305 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!306 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!307 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!308 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!309 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!310 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!311 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!312 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!313 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!314 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!315 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!316 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!317 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!318 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!319 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!320 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!321 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!322 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!323 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!324 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!325 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!326 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!327 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!328 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!329 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!330 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!331 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!332 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!333 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!334 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!335 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!336 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!337 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!338 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!339 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!340 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!341 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!342 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!343 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!344 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!345 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!346 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!347 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!348 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!349 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!350 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!351 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!352 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!353 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!354 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!355 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!356 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!357 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!358 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!359 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!360 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!361 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!362 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!363 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!364 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!365 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!366 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!367 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!368 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!369 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!370 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!371 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!372 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!373 = !DIEnumerator(name: "CODESET", value: 14)
!374 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!375 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!376 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!377 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!378 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!379 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!380 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!400 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!401 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!402 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!420 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!421 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!422 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!427 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!428 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!429 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!430 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!431 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!432 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!433 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!445 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!446 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!447 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!448 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!449 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!450 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!451 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!452 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!453 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!454 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!455 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!456 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!457 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!458 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!459 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!460 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!461 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!462 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!463 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!464 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!465 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!466 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!467 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!468 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!469 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!470 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!484 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!485 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!488 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!489 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!490 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!491 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!492 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!493 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!494 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!495 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!496 = !DIEnumerator(name: "THOUSEP", value: 65537)
!497 = !DIEnumerator(name: "__GROUPING", value: 65538)
!498 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!499 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!500 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!501 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!502 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!503 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!504 = !DIEnumerator(name: "__YESSTR", value: 327682)
!505 = !DIEnumerator(name: "__NOSTR", value: 327683)
!506 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!507 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!508 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!509 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!510 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!511 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!512 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!513 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!514 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!515 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!516 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!517 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!518 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!519 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!520 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!521 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!522 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!523 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!525 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!526 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!527 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!528 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!529 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!530 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!531 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!532 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!533 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!534 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!535 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!536 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!537 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!538 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!539 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!540 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!541 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!542 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!543 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!544 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!545 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!559 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!560 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!561 = !{!31, !29, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!563 = !{!218}
!564 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!565 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !568)
!567 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!568 = !{!19}
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !571, retainedTypes: !576)
!570 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!571 = !{!572}
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !573, line: 41, size: 32, elements: !574)
!573 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!574 = !{!575}
!575 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!576 = !{!31}
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !579, retainedTypes: !593)
!578 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!579 = !{!580}
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !582, file: !581, line: 192, size: 32, elements: !591)
!581 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!582 = distinct !DISubprogram(name: "x2nrealloc", scope: !581, file: !581, line: 180, type: !583, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !586)
!583 = !DISubroutineType(types: !584)
!584 = !{!31, !31, !585, !32}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!586 = !{!587, !588, !589, !590}
!587 = !DILocalVariable(name: "p", arg: 1, scope: !582, file: !581, line: 180, type: !31)
!588 = !DILocalVariable(name: "pn", arg: 2, scope: !582, file: !581, line: 180, type: !585)
!589 = !DILocalVariable(name: "s", arg: 3, scope: !582, file: !581, line: 180, type: !32)
!590 = !DILocalVariable(name: "n", scope: !582, file: !581, line: 182, type: !32)
!591 = !{!592}
!592 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!593 = !{!32, !29, !31}
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!595 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !598)
!597 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!598 = !{!599}
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !600, line: 26, size: 32, elements: !601)
!600 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!601 = !{!602, !603, !604, !605, !606}
!602 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!603 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!604 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!605 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!606 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !609, retainedTypes: !610)
!608 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!609 = !{!599, !151}
!610 = !{!70, !167, !29}
!611 = distinct !DICompileUnit(language: DW_LANG_C99, file: !612, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !576)
!612 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!613 = distinct !DICompileUnit(language: DW_LANG_C99, file: !614, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!614 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !576)
!616 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!617 = distinct !DICompileUnit(language: DW_LANG_C99, file: !618, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !576)
!618 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !621)
!620 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!621 = !{!32}
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90)
!623 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!624 = distinct !DICompileUnit(language: DW_LANG_C99, file: !625, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !90, retainedTypes: !626)
!625 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = !{!32, !35, !37, !40}
!627 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!628 = !{i32 2, !"Dwarf Version", i32 4}
!629 = !{i32 2, !"Debug Info Version", i32 3}
!630 = !{i32 1, !"PIC Level", i32 2}
!631 = !{i32 1, !"PIE Level", i32 2}
!632 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 59, type: !633, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !70}
!635 = !{!636}
!636 = !DILocalVariable(name: "status", arg: 1, scope: !632, file: !3, line: 59, type: !70)
!637 = !DIExpression()
!638 = !DILocation(line: 59, column: 12, scope: !632)
!639 = !DILocation(line: 61, column: 14, scope: !640)
!640 = distinct !DILexicalBlock(scope: !632, file: !3, line: 61, column: 7)
!641 = !DILocation(line: 61, column: 7, scope: !632)
!642 = !DILocation(line: 62, column: 5, scope: !643)
!643 = !DILexicalBlockFile(scope: !644, file: !3, discriminator: 1)
!644 = distinct !DILexicalBlock(scope: !640, file: !3, line: 62, column: 5)
!645 = !{!646, !646, i64 0}
!646 = !{!"any pointer", !647, i64 0}
!647 = !{!"omnipotent char", !648, i64 0}
!648 = !{!"Simple C/C++ TBAA"}
!649 = !DILocation(line: 62, column: 5, scope: !650)
!650 = !DILexicalBlockFile(scope: !644, file: !3, discriminator: 3)
!651 = !DILocation(line: 62, column: 5, scope: !652)
!652 = !DILexicalBlockFile(scope: !644, file: !3, discriminator: 2)
!653 = !DILocation(line: 65, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !640, file: !3, line: 64, column: 5)
!655 = !DILocation(line: 65, column: 7, scope: !656)
!656 = !DILexicalBlockFile(scope: !654, file: !3, discriminator: 1)
!657 = !DILocation(line: 580, column: 3, scope: !658, inlinedAt: !661)
!658 = distinct !DISubprogram(name: "emit_stdin_note", scope: !46, file: !46, line: 578, type: !659, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !90)
!659 = !DISubroutineType(types: !660)
!660 = !{null}
!661 = distinct !DILocation(line: 70, column: 7, scope: !654)
!662 = !DILocation(line: 580, column: 3, scope: !663, inlinedAt: !661)
!663 = !DILexicalBlockFile(scope: !658, file: !46, discriminator: 1)
!664 = !DILocation(line: 587, column: 3, scope: !665, inlinedAt: !666)
!665 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !46, file: !46, line: 585, type: !659, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !90)
!666 = distinct !DILocation(line: 71, column: 7, scope: !654)
!667 = !DILocation(line: 587, column: 3, scope: !668, inlinedAt: !666)
!668 = !DILexicalBlockFile(scope: !665, file: !46, discriminator: 1)
!669 = !DILocation(line: 73, column: 7, scope: !654)
!670 = !DILocation(line: 73, column: 7, scope: !656)
!671 = !DILocation(line: 80, column: 7, scope: !654)
!672 = !DILocation(line: 80, column: 7, scope: !656)
!673 = !DILocation(line: 81, column: 7, scope: !654)
!674 = !DILocation(line: 81, column: 7, scope: !656)
!675 = !DILocation(line: 82, column: 7, scope: !654)
!676 = !DILocation(line: 82, column: 7, scope: !656)
!677 = !DILocation(line: 642, column: 15, scope: !45, inlinedAt: !678)
!678 = distinct !DILocation(line: 89, column: 7, scope: !654)
!679 = !DILocation(line: 651, column: 3, scope: !45, inlinedAt: !678)
!680 = !DILocation(line: 651, column: 3, scope: !681, inlinedAt: !678)
!681 = !DILexicalBlockFile(scope: !45, file: !46, discriminator: 1)
!682 = !DILocation(line: 655, column: 29, scope: !45, inlinedAt: !678)
!683 = !DILocation(line: 655, column: 15, scope: !45, inlinedAt: !678)
!684 = !DILocation(line: 656, column: 7, scope: !65, inlinedAt: !678)
!685 = !DILocation(line: 656, column: 19, scope: !65, inlinedAt: !678)
!686 = !DILocation(line: 656, column: 22, scope: !687, inlinedAt: !678)
!687 = !DILexicalBlockFile(scope: !65, file: !46, discriminator: 16)
!688 = !DILocation(line: 656, column: 7, scope: !689, inlinedAt: !678)
!689 = !DILexicalBlockFile(scope: !45, file: !46, discriminator: 16)
!690 = !DILocation(line: 662, column: 7, scope: !691, inlinedAt: !678)
!691 = distinct !DILexicalBlock(scope: !65, file: !46, line: 657, column: 5)
!692 = !DILocation(line: 662, column: 7, scope: !693, inlinedAt: !678)
!693 = !DILexicalBlockFile(scope: !691, file: !46, discriminator: 1)
!694 = !DILocation(line: 664, column: 5, scope: !691, inlinedAt: !678)
!695 = !DILocation(line: 665, column: 3, scope: !45, inlinedAt: !678)
!696 = !DILocation(line: 665, column: 3, scope: !681, inlinedAt: !678)
!697 = !DILocation(line: 667, column: 3, scope: !45, inlinedAt: !678)
!698 = !DILocation(line: 667, column: 3, scope: !681, inlinedAt: !678)
!699 = !DILocation(line: 92, column: 3, scope: !632)
!700 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 264, type: !701, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !704)
!701 = !DISubroutineType(types: !702)
!702 = !{!70, !70, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!704 = !{!705, !706, !707, !708, !763, !764, !765, !766, !770, !773, !774, !776, !777, !782, !783, !785}
!705 = !DILocalVariable(name: "argc", arg: 1, scope: !700, file: !3, line: 264, type: !70)
!706 = !DILocalVariable(name: "argv", arg: 2, scope: !700, file: !3, line: 264, type: !703)
!707 = !DILocalVariable(name: "opt", scope: !700, file: !3, line: 266, type: !70)
!708 = !DILocalVariable(name: "input_fh", scope: !700, file: !3, line: 267, type: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !711, line: 49, baseType: !712)
!711 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !713, line: 241, size: 1728, elements: !714)
!713 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !735, !736, !737, !738, !742, !743, !744, !748, !751, !753, !754, !755, !756, !757, !758, !759}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !712, file: !713, line: 242, baseType: !70, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !712, file: !713, line: 247, baseType: !29, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !712, file: !713, line: 248, baseType: !29, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !712, file: !713, line: 249, baseType: !29, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !712, file: !713, line: 250, baseType: !29, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !712, file: !713, line: 251, baseType: !29, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !712, file: !713, line: 252, baseType: !29, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !712, file: !713, line: 253, baseType: !29, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !712, file: !713, line: 254, baseType: !29, size: 64, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !712, file: !713, line: 256, baseType: !29, size: 64, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !712, file: !713, line: 257, baseType: !29, size: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !712, file: !713, line: 258, baseType: !29, size: 64, offset: 704)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !712, file: !713, line: 260, baseType: !728, size: 64, offset: 768)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !713, line: 156, size: 192, elements: !730)
!730 = !{!731, !732, !734}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !729, file: !713, line: 157, baseType: !728, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !729, file: !713, line: 158, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !729, file: !713, line: 162, baseType: !70, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !712, file: !713, line: 262, baseType: !733, size: 64, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !712, file: !713, line: 264, baseType: !70, size: 32, offset: 896)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !712, file: !713, line: 268, baseType: !70, size: 32, offset: 928)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !712, file: !713, line: 270, baseType: !739, size: 64, offset: 960)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !740, line: 140, baseType: !741)
!740 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!741 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !712, file: !713, line: 274, baseType: !167, size: 16, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !712, file: !713, line: 275, baseType: !108, size: 8, offset: 1040)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !712, file: !713, line: 276, baseType: !745, size: 8, offset: 1048)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 1)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !712, file: !713, line: 280, baseType: !749, size: 64, offset: 1088)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !713, line: 150, baseType: null)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !712, file: !713, line: 289, baseType: !752, size: 64, offset: 1152)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !740, line: 141, baseType: !741)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !712, file: !713, line: 297, baseType: !31, size: 64, offset: 1216)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !712, file: !713, line: 298, baseType: !31, size: 64, offset: 1280)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !712, file: !713, line: 299, baseType: !31, size: 64, offset: 1344)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !712, file: !713, line: 300, baseType: !31, size: 64, offset: 1408)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !712, file: !713, line: 302, baseType: !32, size: 64, offset: 1472)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !712, file: !713, line: 303, baseType: !70, size: 32, offset: 1536)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !712, file: !713, line: 305, baseType: !760, size: 160, offset: 1568)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 20)
!763 = !DILocalVariable(name: "infile", scope: !700, file: !3, line: 268, type: !40)
!764 = !DILocalVariable(name: "decode", scope: !700, file: !3, line: 271, type: !127)
!765 = !DILocalVariable(name: "ignore_garbage", scope: !700, file: !3, line: 273, type: !127)
!766 = !DILocalVariable(name: "wrap_column", scope: !700, file: !3, line: 275, type: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !768, line: 136, baseType: !769)
!768 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !740, line: 62, baseType: !34)
!770 = !DILocalVariable(name: "__s1_len", scope: !771, file: !3, line: 321, type: !32)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 321, column: 7)
!772 = distinct !DILexicalBlock(scope: !700, file: !3, line: 321, column: 7)
!773 = !DILocalVariable(name: "__s2_len", scope: !771, file: !3, line: 321, type: !32)
!774 = !DILocalVariable(name: "__s2", scope: !775, file: !3, line: 321, type: !37)
!775 = distinct !DILexicalBlock(scope: !771, file: !3, line: 321, column: 7)
!776 = !DILocalVariable(name: "__result", scope: !775, file: !3, line: 321, type: !70)
!777 = !DILocalVariable(name: "__s1_len", scope: !778, file: !3, line: 342, type: !32)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 342, column: 11)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 342, column: 11)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 341, column: 5)
!781 = distinct !DILexicalBlock(scope: !700, file: !3, line: 340, column: 7)
!782 = !DILocalVariable(name: "__s2_len", scope: !778, file: !3, line: 342, type: !32)
!783 = !DILocalVariable(name: "__s2", scope: !784, file: !3, line: 342, type: !37)
!784 = distinct !DILexicalBlock(scope: !778, file: !3, line: 342, column: 11)
!785 = !DILocalVariable(name: "__result", scope: !784, file: !3, line: 342, type: !70)
!786 = !DILocalVariable(name: "inbuf", scope: !787, file: !3, line: 207, type: !814)
!787 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 205, type: !788, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !709, !709, !127}
!790 = !{!791, !792, !793, !786, !794, !798, !799, !806, !808, !809, !810}
!791 = !DILocalVariable(name: "in", arg: 1, scope: !787, file: !3, line: 205, type: !709)
!792 = !DILocalVariable(name: "out", arg: 2, scope: !787, file: !3, line: 205, type: !709)
!793 = !DILocalVariable(name: "ignore_garbage", arg: 3, scope: !787, file: !3, line: 205, type: !127)
!794 = !DILocalVariable(name: "outbuf", scope: !787, file: !3, line: 208, type: !795)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 40960, elements: !796)
!796 = !{!797}
!797 = !DISubrange(count: 5120)
!798 = !DILocalVariable(name: "sum", scope: !787, file: !3, line: 209, type: !32)
!799 = !DILocalVariable(name: "ctx", scope: !787, file: !3, line: 210, type: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !801, line: 31, size: 96, elements: !802)
!801 = !DIFile(filename: "./lib/base32.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !800, file: !801, line: 33, baseType: !184, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !800, file: !801, line: 34, baseType: !805, size: 64, offset: 32)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !185)
!806 = !DILocalVariable(name: "ok", scope: !807, file: !3, line: 216, type: !127)
!807 = distinct !DILexicalBlock(scope: !787, file: !3, line: 215, column: 5)
!808 = !DILocalVariable(name: "n", scope: !807, file: !3, line: 217, type: !32)
!809 = !DILocalVariable(name: "k", scope: !807, file: !3, line: 218, type: !184)
!810 = !DILocalVariable(name: "i", scope: !811, file: !3, line: 227, type: !32)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 226, column: 13)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 225, column: 15)
!813 = distinct !DILexicalBlock(scope: !807, file: !3, line: 222, column: 9)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 65536, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 8192)
!817 = !DILocation(line: 207, column: 8, scope: !787, inlinedAt: !818)
!818 = distinct !DILocation(line: 336, column: 5, scope: !819)
!819 = distinct !DILexicalBlock(scope: !700, file: !3, line: 335, column: 7)
!820 = !DILocation(line: 208, column: 8, scope: !787, inlinedAt: !818)
!821 = !DILocalVariable(name: "inbuf", scope: !822, file: !3, line: 168, type: !837)
!822 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 165, type: !823, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !709, !709, !767}
!825 = !{!826, !827, !828, !829, !821, !830, !834, !835}
!826 = !DILocalVariable(name: "in", arg: 1, scope: !822, file: !3, line: 165, type: !709)
!827 = !DILocalVariable(name: "out", arg: 2, scope: !822, file: !3, line: 165, type: !709)
!828 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !822, file: !3, line: 165, type: !767)
!829 = !DILocalVariable(name: "current_column", scope: !822, file: !3, line: 167, type: !32)
!830 = !DILocalVariable(name: "outbuf", scope: !822, file: !3, line: 169, type: !831)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 393216, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 49152)
!834 = !DILocalVariable(name: "sum", scope: !822, file: !3, line: 170, type: !32)
!835 = !DILocalVariable(name: "n", scope: !836, file: !3, line: 174, type: !32)
!836 = distinct !DILexicalBlock(scope: !822, file: !3, line: 173, column: 5)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 245760, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 30720)
!840 = !DILocation(line: 168, column: 8, scope: !822, inlinedAt: !841)
!841 = distinct !DILocation(line: 338, column: 5, scope: !819)
!842 = !DILocation(line: 169, column: 8, scope: !822, inlinedAt: !841)
!843 = !DILocation(line: 264, column: 11, scope: !700)
!844 = !DILocation(line: 264, column: 24, scope: !700)
!845 = !DILocation(line: 271, column: 8, scope: !700)
!846 = !DILocation(line: 273, column: 8, scope: !700)
!847 = !DILocation(line: 275, column: 13, scope: !700)
!848 = !DILocation(line: 278, column: 21, scope: !700)
!849 = !DILocation(line: 278, column: 3, scope: !700)
!850 = !DILocation(line: 279, column: 3, scope: !700)
!851 = !DILocation(line: 280, column: 3, scope: !700)
!852 = !DILocation(line: 281, column: 3, scope: !700)
!853 = !DILocation(line: 283, column: 3, scope: !700)
!854 = !DILocation(line: 285, column: 3, scope: !700)
!855 = !DILocation(line: 285, column: 17, scope: !856)
!856 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 1)
!857 = !DILocation(line: 266, column: 7, scope: !700)
!858 = !DILocation(line: 285, column: 3, scope: !856)
!859 = distinct !{!859, !854, !860}
!860 = !DILocation(line: 308, column: 7, scope: !700)
!861 = !DILocation(line: 293, column: 35, scope: !862)
!862 = distinct !DILexicalBlock(scope: !700, file: !3, line: 287, column: 7)
!863 = !DILocation(line: 294, column: 35, scope: !862)
!864 = !DILocation(line: 293, column: 23, scope: !862)
!865 = !DILocation(line: 295, column: 9, scope: !862)
!866 = !DILocation(line: 301, column: 7, scope: !862)
!867 = !DILocation(line: 303, column: 7, scope: !862)
!868 = !DILocation(line: 303, column: 7, scope: !869)
!869 = !DILexicalBlockFile(scope: !862, file: !3, discriminator: 1)
!870 = !DILocation(line: 306, column: 9, scope: !862)
!871 = !DILocation(line: 310, column: 14, scope: !872)
!872 = distinct !DILexicalBlock(scope: !700, file: !3, line: 310, column: 7)
!873 = !{!874, !874, i64 0}
!874 = !{!"int", !647, i64 0}
!875 = !DILocation(line: 310, column: 12, scope: !872)
!876 = !DILocation(line: 310, column: 21, scope: !872)
!877 = !DILocation(line: 310, column: 7, scope: !700)
!878 = !DILocation(line: 312, column: 20, scope: !879)
!879 = distinct !DILexicalBlock(scope: !872, file: !3, line: 311, column: 5)
!880 = !DILocation(line: 312, column: 55, scope: !879)
!881 = !DILocation(line: 312, column: 50, scope: !879)
!882 = !DILocation(line: 312, column: 43, scope: !883)
!883 = !DILexicalBlockFile(scope: !879, file: !3, discriminator: 1)
!884 = !DILocation(line: 312, column: 7, scope: !885)
!885 = !DILexicalBlockFile(scope: !879, file: !3, discriminator: 2)
!886 = !DILocation(line: 313, column: 7, scope: !879)
!887 = !DILocation(line: 316, column: 14, scope: !888)
!888 = distinct !DILexicalBlock(scope: !700, file: !3, line: 316, column: 7)
!889 = !DILocation(line: 316, column: 7, scope: !700)
!890 = !DILocation(line: 317, column: 14, scope: !888)
!891 = !DILocation(line: 268, column: 15, scope: !700)
!892 = !DILocation(line: 317, column: 5, scope: !888)
!893 = !DILocation(line: 321, column: 7, scope: !771)
!894 = !DILocation(line: 321, column: 7, scope: !775)
!895 = !DILocation(line: 321, column: 7, scope: !896)
!896 = !DILexicalBlockFile(scope: !775, file: !3, discriminator: 2)
!897 = !{!647, !647, i64 0}
!898 = !DILocation(line: 321, column: 7, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 3)
!900 = distinct !DILexicalBlock(scope: !775, file: !3, line: 321, column: 7)
!901 = !DILocation(line: 321, column: 7, scope: !902)
!902 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 2)
!903 = !DILocation(line: 321, column: 7, scope: !904)
!904 = !DILexicalBlockFile(scope: !905, file: !3, discriminator: 4)
!905 = distinct !DILexicalBlock(scope: !900, file: !3, line: 321, column: 7)
!906 = !DILocation(line: 321, column: 7, scope: !907)
!907 = !DILexicalBlockFile(scope: !771, file: !3, discriminator: 11)
!908 = !DILocation(line: 321, column: 7, scope: !909)
!909 = !DILexicalBlockFile(scope: !700, file: !3, discriminator: 13)
!910 = !DILocation(line: 324, column: 18, scope: !911)
!911 = distinct !DILexicalBlock(scope: !772, file: !3, line: 322, column: 5)
!912 = !DILocation(line: 267, column: 9, scope: !700)
!913 = !DILocation(line: 325, column: 5, scope: !911)
!914 = !DILocation(line: 328, column: 18, scope: !915)
!915 = distinct !DILexicalBlock(scope: !772, file: !3, line: 327, column: 5)
!916 = !DILocation(line: 329, column: 20, scope: !917)
!917 = distinct !DILexicalBlock(scope: !915, file: !3, line: 329, column: 11)
!918 = !DILocation(line: 329, column: 11, scope: !915)
!919 = !DILocation(line: 330, column: 9, scope: !917)
!920 = !DILocation(line: 330, column: 9, scope: !921)
!921 = !DILexicalBlockFile(scope: !917, file: !3, discriminator: 1)
!922 = !DILocation(line: 330, column: 9, scope: !923)
!923 = !DILexicalBlockFile(scope: !917, file: !3, discriminator: 2)
!924 = !DILocation(line: 333, column: 3, scope: !700)
!925 = !DILocation(line: 335, column: 7, scope: !819)
!926 = !DILocation(line: 335, column: 7, scope: !700)
!927 = !DILocation(line: 336, column: 34, scope: !819)
!928 = !DILocation(line: 205, column: 18, scope: !787, inlinedAt: !818)
!929 = !DILocation(line: 205, column: 28, scope: !787, inlinedAt: !818)
!930 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!931 = !DILocation(line: 205, column: 38, scope: !787, inlinedAt: !818)
!932 = !DILocation(line: 207, column: 3, scope: !787, inlinedAt: !818)
!933 = !DILocation(line: 208, column: 3, scope: !787, inlinedAt: !818)
!934 = !DILocation(line: 210, column: 3, scope: !787, inlinedAt: !818)
!935 = !DIExpression(DW_OP_deref)
!936 = !DILocation(line: 210, column: 30, scope: !787, inlinedAt: !818)
!937 = !DILocation(line: 212, column: 3, scope: !787, inlinedAt: !818)
!938 = !DILocation(line: 214, column: 3, scope: !787, inlinedAt: !818)
!939 = distinct !{!939, !940, !941}
!940 = !DILocation(line: 214, column: 3, scope: !787)
!941 = !DILocation(line: 260, column: 20, scope: !787)
!942 = !DILocation(line: 217, column: 7, scope: !807, inlinedAt: !818)
!943 = !DILocation(line: 209, column: 10, scope: !787, inlinedAt: !818)
!944 = !DILocation(line: 221, column: 7, scope: !807, inlinedAt: !818)
!945 = distinct !{!945, !946, !947}
!946 = !DILocation(line: 221, column: 7, scope: !807)
!947 = !DILocation(line: 240, column: 61, scope: !807)
!948 = !DILocation(line: 223, column: 15, scope: !813, inlinedAt: !818)
!949 = !DILocation(line: 217, column: 14, scope: !807, inlinedAt: !818)
!950 = !DILocation(line: 223, column: 13, scope: !813, inlinedAt: !818)
!951 = !{!952, !952, i64 0}
!952 = !{!"long", !647, i64 0}
!953 = !DILocation(line: 225, column: 15, scope: !813, inlinedAt: !818)
!954 = !DILocation(line: 227, column: 22, scope: !811, inlinedAt: !818)
!955 = !DILocation(line: 228, column: 38, scope: !956, inlinedAt: !818)
!956 = !DILexicalBlockFile(scope: !957, file: !3, discriminator: 2)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 228, column: 15)
!958 = distinct !DILexicalBlock(scope: !811, file: !3, line: 228, column: 15)
!959 = !DILocation(line: 228, column: 33, scope: !960, inlinedAt: !818)
!960 = !DILexicalBlockFile(scope: !957, file: !3, discriminator: 1)
!961 = !DILocation(line: 228, column: 27, scope: !960, inlinedAt: !818)
!962 = !DILocation(line: 229, column: 29, scope: !963, inlinedAt: !818)
!963 = distinct !DILexicalBlock(scope: !957, file: !3, line: 229, column: 21)
!964 = !DILocation(line: 229, column: 21, scope: !963, inlinedAt: !818)
!965 = !DILocation(line: 229, column: 63, scope: !966, inlinedAt: !818)
!966 = !DILexicalBlockFile(scope: !963, file: !3, discriminator: 1)
!967 = !DILocation(line: 229, column: 45, scope: !963, inlinedAt: !818)
!968 = !DILocation(line: 230, column: 20, scope: !963, inlinedAt: !818)
!969 = distinct !{!969, !970, !971}
!970 = !DILocation(line: 228, column: 15, scope: !958)
!971 = !DILocation(line: 232, column: 73, scope: !958)
!972 = !DILocation(line: 232, column: 66, scope: !963, inlinedAt: !818)
!973 = !DILocation(line: 232, column: 70, scope: !963, inlinedAt: !818)
!974 = !DILocation(line: 232, column: 19, scope: !963, inlinedAt: !818)
!975 = !DILocation(line: 235, column: 18, scope: !813, inlinedAt: !818)
!976 = !DILocation(line: 235, column: 15, scope: !813, inlinedAt: !818)
!977 = !DILocalVariable(name: "__stream", arg: 1, scope: !978, file: !979, line: 132, type: !709)
!978 = distinct !DISubprogram(name: "ferror_unlocked", scope: !979, file: !979, line: 132, type: !980, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !982)
!979 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!980 = !DISubroutineType(types: !981)
!981 = !{!70, !709}
!982 = !{!977}
!983 = !DILocation(line: 132, column: 1, scope: !978, inlinedAt: !984)
!984 = distinct !DILocation(line: 237, column: 15, scope: !985, inlinedAt: !818)
!985 = distinct !DILexicalBlock(scope: !813, file: !3, line: 237, column: 15)
!986 = !DILocation(line: 134, column: 10, scope: !978, inlinedAt: !984)
!987 = !{!988, !874, i64 0}
!988 = !{!"_IO_FILE", !874, i64 0, !646, i64 8, !646, i64 16, !646, i64 24, !646, i64 32, !646, i64 40, !646, i64 48, !646, i64 56, !646, i64 64, !646, i64 72, !646, i64 80, !646, i64 88, !646, i64 96, !646, i64 104, !874, i64 112, !874, i64 116, !952, i64 120, !989, i64 128, !647, i64 130, !647, i64 131, !646, i64 136, !952, i64 144, !646, i64 152, !646, i64 160, !646, i64 168, !646, i64 176, !952, i64 184, !874, i64 192, !647, i64 196}
!989 = !{!"short", !647, i64 0}
!990 = !DILocation(line: 237, column: 15, scope: !985, inlinedAt: !818)
!991 = !DILocation(line: 237, column: 15, scope: !813, inlinedAt: !818)
!992 = !DILocation(line: 238, column: 13, scope: !985, inlinedAt: !818)
!993 = !DILocation(line: 238, column: 13, scope: !994, inlinedAt: !818)
!994 = !DILexicalBlockFile(scope: !985, file: !3, discriminator: 1)
!995 = !DILocation(line: 238, column: 13, scope: !996, inlinedAt: !818)
!996 = !DILexicalBlockFile(scope: !985, file: !3, discriminator: 2)
!997 = !DILocation(line: 240, column: 18, scope: !807, inlinedAt: !818)
!998 = !DILocation(line: 127, column: 10, scope: !999, inlinedAt: !1002)
!999 = distinct !DISubprogram(name: "feof_unlocked", scope: !979, file: !979, line: 125, type: !980, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1000)
!1000 = !{!1001}
!1001 = !DILocalVariable(name: "__stream", arg: 1, scope: !999, file: !979, line: 125, type: !709)
!1002 = distinct !DILocation(line: 240, column: 52, scope: !1003, inlinedAt: !818)
!1003 = !DILexicalBlockFile(scope: !807, file: !3, discriminator: 1)
!1004 = !DILocation(line: 240, column: 51, scope: !1003, inlinedAt: !818)
!1005 = !DILocation(line: 240, column: 48, scope: !807, inlinedAt: !818)
!1006 = !DILocation(line: 125, column: 1, scope: !999, inlinedAt: !1002)
!1007 = !DILocation(line: 248, column: 17, scope: !1008, inlinedAt: !818)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 248, column: 15)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 247, column: 9)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 246, column: 7)
!1011 = distinct !DILexicalBlock(scope: !807, file: !3, line: 246, column: 7)
!1012 = !DILocation(line: 218, column: 20, scope: !807, inlinedAt: !818)
!1013 = !DILocation(line: 125, column: 1, scope: !999, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 246, column: 29, scope: !1015, inlinedAt: !818)
!1015 = !DILexicalBlockFile(scope: !1010, file: !3, discriminator: 1)
!1016 = !DILocation(line: 127, column: 10, scope: !999, inlinedAt: !1014)
!1017 = !DILocation(line: 246, column: 25, scope: !1015, inlinedAt: !818)
!1018 = !DILocation(line: 246, column: 21, scope: !1015, inlinedAt: !818)
!1019 = !DILocation(line: 246, column: 7, scope: !1020, inlinedAt: !818)
!1020 = !DILexicalBlockFile(scope: !1011, file: !3, discriminator: 1)
!1021 = distinct !{!1021, !1022, !1023}
!1022 = !DILocation(line: 246, column: 7, scope: !1011)
!1023 = !DILocation(line: 258, column: 9, scope: !1011)
!1024 = !DILocation(line: 248, column: 29, scope: !1025, inlinedAt: !818)
!1025 = !DILexicalBlockFile(scope: !1008, file: !3, discriminator: 1)
!1026 = !DILocation(line: 248, column: 31, scope: !1025, inlinedAt: !818)
!1027 = !DILocation(line: 248, column: 22, scope: !1008, inlinedAt: !818)
!1028 = !DILocation(line: 250, column: 13, scope: !1009, inlinedAt: !818)
!1029 = !DILocation(line: 251, column: 49, scope: !1009, inlinedAt: !818)
!1030 = !DILocation(line: 251, column: 47, scope: !1009, inlinedAt: !818)
!1031 = !DILocation(line: 251, column: 16, scope: !1032, inlinedAt: !818)
!1032 = !DILexicalBlockFile(scope: !1009, file: !3, discriminator: 3)
!1033 = !DILocation(line: 253, column: 15, scope: !1034, inlinedAt: !818)
!1034 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 253, column: 15)
!1035 = !DILocation(line: 253, column: 44, scope: !1034, inlinedAt: !818)
!1036 = !DILocation(line: 253, column: 42, scope: !1034, inlinedAt: !818)
!1037 = !DILocation(line: 253, column: 15, scope: !1009, inlinedAt: !818)
!1038 = !DILocation(line: 254, column: 13, scope: !1034, inlinedAt: !818)
!1039 = !DILocation(line: 254, column: 13, scope: !1040, inlinedAt: !818)
!1040 = !DILexicalBlockFile(scope: !1034, file: !3, discriminator: 1)
!1041 = !DILocation(line: 254, column: 13, scope: !1042, inlinedAt: !818)
!1042 = !DILexicalBlockFile(scope: !1034, file: !3, discriminator: 2)
!1043 = !DILocation(line: 246, column: 41, scope: !1044, inlinedAt: !818)
!1044 = !DILexicalBlockFile(scope: !1010, file: !3, discriminator: 2)
!1045 = !DILocation(line: 256, column: 15, scope: !1009, inlinedAt: !818)
!1046 = !DILocation(line: 257, column: 13, scope: !1047, inlinedAt: !818)
!1047 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 256, column: 15)
!1048 = !DILocation(line: 257, column: 13, scope: !1049, inlinedAt: !818)
!1049 = !DILexicalBlockFile(scope: !1047, file: !3, discriminator: 1)
!1050 = !DILocation(line: 127, column: 10, scope: !999, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 260, column: 11, scope: !787, inlinedAt: !818)
!1052 = !DILocation(line: 259, column: 5, scope: !787, inlinedAt: !818)
!1053 = !DILocation(line: 125, column: 1, scope: !999, inlinedAt: !1051)
!1054 = !DILocation(line: 260, column: 10, scope: !787, inlinedAt: !818)
!1055 = !DILocation(line: 259, column: 5, scope: !1003, inlinedAt: !818)
!1056 = !DILocation(line: 261, column: 1, scope: !787, inlinedAt: !818)
!1057 = !DILocation(line: 336, column: 5, scope: !819)
!1058 = !DILocation(line: 165, column: 18, scope: !822, inlinedAt: !841)
!1059 = !DILocation(line: 165, column: 28, scope: !822, inlinedAt: !841)
!1060 = !DILocation(line: 165, column: 43, scope: !822, inlinedAt: !841)
!1061 = !DILocation(line: 167, column: 10, scope: !822, inlinedAt: !841)
!1062 = !DILocation(line: 168, column: 3, scope: !822, inlinedAt: !841)
!1063 = !DILocation(line: 169, column: 3, scope: !822, inlinedAt: !841)
!1064 = !DILocation(line: 172, column: 3, scope: !822, inlinedAt: !841)
!1065 = distinct !{!1065, !1066, !1067}
!1066 = !DILocation(line: 172, column: 3, scope: !822)
!1067 = !DILocation(line: 194, column: 60, scope: !822)
!1068 = !DILocation(line: 170, column: 10, scope: !822, inlinedAt: !841)
!1069 = !DILocation(line: 177, column: 7, scope: !836, inlinedAt: !841)
!1070 = distinct !{!1070, !1071, !1072}
!1071 = !DILocation(line: 177, column: 7, scope: !836)
!1072 = !DILocation(line: 182, column: 63, scope: !836)
!1073 = !DILocation(line: 179, column: 15, scope: !1074, inlinedAt: !841)
!1074 = distinct !DILexicalBlock(scope: !836, file: !3, line: 178, column: 9)
!1075 = !DILocation(line: 174, column: 14, scope: !836, inlinedAt: !841)
!1076 = !DILocation(line: 180, column: 15, scope: !1074, inlinedAt: !841)
!1077 = !DILocation(line: 125, column: 1, scope: !999, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 182, column: 15, scope: !836, inlinedAt: !841)
!1079 = !DILocation(line: 127, column: 10, scope: !999, inlinedAt: !1078)
!1080 = !DILocation(line: 182, column: 15, scope: !836, inlinedAt: !841)
!1081 = !DILocation(line: 182, column: 25, scope: !836, inlinedAt: !841)
!1082 = !DILocation(line: 132, column: 1, scope: !978, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 182, column: 29, scope: !1084, inlinedAt: !841)
!1084 = !DILexicalBlockFile(scope: !836, file: !3, discriminator: 1)
!1085 = !DILocation(line: 134, column: 10, scope: !978, inlinedAt: !1083)
!1086 = !DILocation(line: 182, column: 29, scope: !1084, inlinedAt: !841)
!1087 = !DILocation(line: 182, column: 48, scope: !1088, inlinedAt: !841)
!1088 = !DILexicalBlockFile(scope: !836, file: !3, discriminator: 2)
!1089 = !DILocation(line: 182, column: 41, scope: !1084, inlinedAt: !841)
!1090 = !DILocation(line: 184, column: 15, scope: !1091, inlinedAt: !841)
!1091 = distinct !DILexicalBlock(scope: !836, file: !3, line: 184, column: 11)
!1092 = !DILocation(line: 184, column: 11, scope: !836, inlinedAt: !841)
!1093 = !DILocation(line: 188, column: 44, scope: !1094, inlinedAt: !841)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 185, column: 9)
!1095 = !DILocation(line: 188, column: 11, scope: !1094, inlinedAt: !841)
!1096 = !DILocalVariable(name: "buffer", arg: 1, scope: !1097, file: !3, line: 130, type: !40)
!1097 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 130, type: !1098, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !40, !32, !767, !585, !709}
!1100 = !{!1096, !1101, !1102, !1103, !1104, !1105, !1106, !1111}
!1101 = !DILocalVariable(name: "len", arg: 2, scope: !1097, file: !3, line: 130, type: !32)
!1102 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1097, file: !3, line: 131, type: !767)
!1103 = !DILocalVariable(name: "current_column", arg: 4, scope: !1097, file: !3, line: 131, type: !585)
!1104 = !DILocalVariable(name: "out", arg: 5, scope: !1097, file: !3, line: 131, type: !709)
!1105 = !DILocalVariable(name: "written", scope: !1097, file: !3, line: 133, type: !32)
!1106 = !DILocalVariable(name: "cols_remaining", scope: !1107, file: !3, line: 144, type: !767)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 143, column: 7)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 142, column: 5)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 142, column: 5)
!1110 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 135, column: 7)
!1111 = !DILocalVariable(name: "to_write", scope: !1107, file: !3, line: 145, type: !32)
!1112 = !DILocation(line: 130, column: 25, scope: !1097, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 190, column: 11, scope: !1094, inlinedAt: !841)
!1114 = !DILocation(line: 130, column: 40, scope: !1097, inlinedAt: !1113)
!1115 = !DILocation(line: 131, column: 23, scope: !1097, inlinedAt: !1113)
!1116 = !DILocation(line: 131, column: 66, scope: !1097, inlinedAt: !1113)
!1117 = !DILocation(line: 135, column: 7, scope: !1097, inlinedAt: !1113)
!1118 = !DILocation(line: 133, column: 10, scope: !1097, inlinedAt: !1113)
!1119 = !DILocation(line: 142, column: 31, scope: !1120, inlinedAt: !1113)
!1120 = !DILexicalBlockFile(scope: !1108, file: !3, discriminator: 1)
!1121 = !DILocation(line: 142, column: 5, scope: !1122, inlinedAt: !1113)
!1122 = !DILexicalBlockFile(scope: !1109, file: !3, discriminator: 1)
!1123 = !DILocation(line: 138, column: 11, scope: !1124, inlinedAt: !1113)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 138, column: 11)
!1125 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 136, column: 5)
!1126 = !DILocation(line: 138, column: 43, scope: !1124, inlinedAt: !1113)
!1127 = !DILocation(line: 138, column: 11, scope: !1125, inlinedAt: !1113)
!1128 = !DILocation(line: 139, column: 9, scope: !1124, inlinedAt: !1113)
!1129 = !DILocation(line: 139, column: 9, scope: !1130, inlinedAt: !1113)
!1130 = !DILexicalBlockFile(scope: !1124, file: !3, discriminator: 1)
!1131 = !DILocation(line: 139, column: 9, scope: !1132, inlinedAt: !1113)
!1132 = !DILexicalBlockFile(scope: !1124, file: !3, discriminator: 2)
!1133 = !DILocalVariable(name: "__c", arg: 1, scope: !1134, file: !979, line: 88, type: !70)
!1134 = distinct !DISubprogram(name: "fputc_unlocked", scope: !979, file: !979, line: 88, type: !1135, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!70, !70, !709}
!1137 = !{!1133, !1138}
!1138 = !DILocalVariable(name: "__stream", arg: 2, scope: !1134, file: !979, line: 88, type: !709)
!1139 = !DILocation(line: 88, column: 21, scope: !1134, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 150, column: 17, scope: !1141, inlinedAt: !1113)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 150, column: 17)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 149, column: 11)
!1143 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 148, column: 13)
!1144 = !DILocation(line: 88, column: 32, scope: !1134, inlinedAt: !1140)
!1145 = !DILocation(line: 90, column: 10, scope: !1134, inlinedAt: !1140)
!1146 = !{!988, !646, i64 40}
!1147 = !{!988, !646, i64 48}
!1148 = !{!"branch_weights", i32 2000, i32 1}
!1149 = !DILocation(line: 90, column: 10, scope: !1150, inlinedAt: !1140)
!1150 = !DILexicalBlockFile(scope: !1134, file: !979, discriminator: 2)
!1151 = !DILocation(line: 150, column: 17, scope: !1142, inlinedAt: !1113)
!1152 = !DILocation(line: 90, column: 10, scope: !1153, inlinedAt: !1140)
!1153 = !DILexicalBlockFile(scope: !1134, file: !979, discriminator: 1)
!1154 = !DILocation(line: 150, column: 35, scope: !1141, inlinedAt: !1113)
!1155 = !DILocation(line: 144, column: 19, scope: !1107, inlinedAt: !1113)
!1156 = !DILocation(line: 145, column: 16, scope: !1107, inlinedAt: !1113)
!1157 = !DILocation(line: 148, column: 13, scope: !1107, inlinedAt: !1113)
!1158 = !DILocation(line: 151, column: 15, scope: !1141, inlinedAt: !1113)
!1159 = !DILocation(line: 151, column: 15, scope: !1160, inlinedAt: !1113)
!1160 = !DILexicalBlockFile(scope: !1141, file: !3, discriminator: 1)
!1161 = !DILocation(line: 151, column: 15, scope: !1162, inlinedAt: !1113)
!1162 = !DILexicalBlockFile(scope: !1141, file: !3, discriminator: 2)
!1163 = !DILocation(line: 156, column: 17, scope: !1164, inlinedAt: !1113)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 156, column: 17)
!1165 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 155, column: 11)
!1166 = !DILocation(line: 156, column: 64, scope: !1164, inlinedAt: !1113)
!1167 = !DILocation(line: 156, column: 17, scope: !1165, inlinedAt: !1113)
!1168 = !DILocation(line: 157, column: 15, scope: !1164, inlinedAt: !1113)
!1169 = !DILocation(line: 157, column: 15, scope: !1170, inlinedAt: !1113)
!1170 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 1)
!1171 = !DILocation(line: 157, column: 15, scope: !1172, inlinedAt: !1113)
!1172 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 2)
!1173 = !DILocation(line: 158, column: 29, scope: !1165, inlinedAt: !1113)
!1174 = !DILocation(line: 159, column: 21, scope: !1165, inlinedAt: !1113)
!1175 = distinct !{!1175, !1176, !1177}
!1176 = !DILocation(line: 142, column: 5, scope: !1109)
!1177 = !DILocation(line: 161, column: 7, scope: !1109)
!1178 = !DILocation(line: 144, column: 48, scope: !1107, inlinedAt: !1113)
!1179 = !DILocation(line: 146, column: 20, scope: !1107, inlinedAt: !1113)
!1180 = !DILocation(line: 146, column: 20, scope: !1181, inlinedAt: !1113)
!1181 = !DILexicalBlockFile(scope: !1107, file: !3, discriminator: 1)
!1182 = !DILocation(line: 148, column: 22, scope: !1143, inlinedAt: !1113)
!1183 = !DILocation(line: 125, column: 1, scope: !999, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 194, column: 11, scope: !822, inlinedAt: !841)
!1185 = !DILocation(line: 127, column: 10, scope: !999, inlinedAt: !1184)
!1186 = !DILocation(line: 194, column: 11, scope: !822, inlinedAt: !841)
!1187 = !DILocation(line: 194, column: 21, scope: !822, inlinedAt: !841)
!1188 = !DILocation(line: 132, column: 1, scope: !978, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 194, column: 25, scope: !1190, inlinedAt: !841)
!1190 = !DILexicalBlockFile(scope: !822, file: !3, discriminator: 1)
!1191 = !DILocation(line: 134, column: 10, scope: !978, inlinedAt: !1189)
!1192 = !DILocation(line: 194, column: 25, scope: !1190, inlinedAt: !841)
!1193 = !DILocation(line: 194, column: 44, scope: !1194, inlinedAt: !841)
!1194 = !DILexicalBlockFile(scope: !822, file: !3, discriminator: 2)
!1195 = !DILocation(line: 194, column: 37, scope: !1190, inlinedAt: !841)
!1196 = !DILocation(line: 197, column: 7, scope: !1197, inlinedAt: !841)
!1197 = distinct !DILexicalBlock(scope: !822, file: !3, line: 197, column: 7)
!1198 = !DILocation(line: 197, column: 37, scope: !1199, inlinedAt: !841)
!1199 = !DILexicalBlockFile(scope: !1197, file: !3, discriminator: 1)
!1200 = !DILocation(line: 197, column: 19, scope: !1197, inlinedAt: !841)
!1201 = !DILocation(line: 88, column: 21, scope: !1134, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 197, column: 44, scope: !1203, inlinedAt: !841)
!1203 = !DILexicalBlockFile(scope: !1197, file: !3, discriminator: 2)
!1204 = !DILocation(line: 88, column: 32, scope: !1134, inlinedAt: !1202)
!1205 = !DILocation(line: 90, column: 10, scope: !1134, inlinedAt: !1202)
!1206 = !DILocation(line: 90, column: 10, scope: !1150, inlinedAt: !1202)
!1207 = !DILocation(line: 197, column: 7, scope: !1194, inlinedAt: !841)
!1208 = !DILocation(line: 90, column: 10, scope: !1153, inlinedAt: !1202)
!1209 = !DILocation(line: 197, column: 62, scope: !1203, inlinedAt: !841)
!1210 = !DILocation(line: 198, column: 5, scope: !1197, inlinedAt: !841)
!1211 = !DILocation(line: 198, column: 5, scope: !1199, inlinedAt: !841)
!1212 = !DILocation(line: 198, column: 5, scope: !1203, inlinedAt: !841)
!1213 = !DILocation(line: 132, column: 1, scope: !978, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 200, column: 7, scope: !1215, inlinedAt: !841)
!1215 = distinct !DILexicalBlock(scope: !822, file: !3, line: 200, column: 7)
!1216 = !DILocation(line: 134, column: 10, scope: !978, inlinedAt: !1214)
!1217 = !DILocation(line: 200, column: 7, scope: !1215, inlinedAt: !841)
!1218 = !DILocation(line: 200, column: 7, scope: !822, inlinedAt: !841)
!1219 = !DILocation(line: 201, column: 5, scope: !1215, inlinedAt: !841)
!1220 = !DILocation(line: 201, column: 5, scope: !1221, inlinedAt: !841)
!1221 = !DILexicalBlockFile(scope: !1215, file: !3, discriminator: 1)
!1222 = !DILocation(line: 201, column: 5, scope: !1223, inlinedAt: !841)
!1223 = !DILexicalBlockFile(scope: !1215, file: !3, discriminator: 2)
!1224 = !DILocation(line: 202, column: 1, scope: !822, inlinedAt: !841)
!1225 = !DILocation(line: 340, column: 7, scope: !781)
!1226 = !DILocation(line: 340, column: 25, scope: !781)
!1227 = !DILocation(line: 340, column: 7, scope: !700)
!1228 = !DILocation(line: 342, column: 11, scope: !778)
!1229 = !DILocation(line: 342, column: 11, scope: !784)
!1230 = !DILocation(line: 342, column: 11, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !784, file: !3, discriminator: 2)
!1232 = !DILocation(line: 342, column: 11, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !3, discriminator: 3)
!1234 = distinct !DILexicalBlock(scope: !784, file: !3, line: 342, column: 11)
!1235 = !DILocation(line: 342, column: 11, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1234, file: !3, discriminator: 2)
!1237 = !DILocation(line: 343, column: 9, scope: !779)
!1238 = !DILocation(line: 342, column: 11, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !780, file: !3, discriminator: 13)
!1240 = !DILocation(line: 342, column: 11, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1242, file: !3, discriminator: 4)
!1242 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 342, column: 11)
!1243 = !DILocation(line: 342, column: 11, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !778, file: !3, discriminator: 11)
!1245 = !DILocation(line: 343, column: 9, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !779, file: !3, discriminator: 1)
!1247 = !DILocation(line: 343, column: 9, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !779, file: !3, discriminator: 2)
!1249 = !DILocation(line: 345, column: 9, scope: !1246)
!1250 = !DILocation(line: 345, column: 9, scope: !1248)
!1251 = !DILocation(line: 345, column: 9, scope: !779)
!1252 = !DILocation(line: 349, column: 1, scope: !700)
!1253 = !DILocation(line: 65, column: 37, scope: !94)
!1254 = !DILocation(line: 65, column: 48, scope: !94)
!1255 = !DILocation(line: 66, column: 31, scope: !94)
!1256 = !DILocation(line: 66, column: 43, scope: !94)
!1257 = !DILocation(line: 71, column: 10, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !94, file: !95, discriminator: 1)
!1259 = !DILocation(line: 71, column: 16, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !94, file: !95, discriminator: 2)
!1261 = !DILocation(line: 71, column: 16, scope: !1258)
!1262 = !DILocation(line: 71, column: 3, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !94, file: !95, discriminator: 3)
!1264 = !DILocation(line: 73, column: 34, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !94, file: !95, line: 72, column: 5)
!1266 = !DILocation(line: 73, column: 24, scope: !1265)
!1267 = !DILocation(line: 73, column: 41, scope: !1265)
!1268 = !DILocation(line: 73, column: 16, scope: !1265)
!1269 = !DILocation(line: 73, column: 11, scope: !1265)
!1270 = !DILocation(line: 73, column: 14, scope: !1265)
!1271 = !DILocation(line: 74, column: 12, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 74, column: 11)
!1273 = !DILocation(line: 74, column: 11, scope: !1265)
!1274 = !DILocation(line: 76, column: 35, scope: !1265)
!1275 = !DILocation(line: 76, column: 25, scope: !1265)
!1276 = !DILocation(line: 76, column: 42, scope: !1265)
!1277 = !DILocation(line: 77, column: 27, scope: !1265)
!1278 = !DILocation(line: 77, column: 47, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1265, file: !95, discriminator: 1)
!1280 = !DILocation(line: 77, column: 37, scope: !1279)
!1281 = !DILocation(line: 77, column: 54, scope: !1279)
!1282 = !DILocation(line: 77, column: 27, scope: !1279)
!1283 = !DILocation(line: 77, column: 27, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1265, file: !95, discriminator: 3)
!1285 = !DILocation(line: 77, column: 24, scope: !1284)
!1286 = !DILocation(line: 78, column: 23, scope: !1265)
!1287 = !DILocation(line: 76, column: 16, scope: !1279)
!1288 = !DILocation(line: 76, column: 11, scope: !1279)
!1289 = !DILocation(line: 76, column: 14, scope: !1279)
!1290 = !DILocation(line: 79, column: 12, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 79, column: 11)
!1292 = !DILocation(line: 79, column: 11, scope: !1265)
!1293 = !DILocation(line: 82, column: 10, scope: !1265)
!1294 = !DILocation(line: 83, column: 30, scope: !1265)
!1295 = !DILocation(line: 83, column: 20, scope: !1265)
!1296 = !DILocation(line: 83, column: 37, scope: !1265)
!1297 = !DILocation(line: 83, column: 43, scope: !1265)
!1298 = !DILocation(line: 83, column: 12, scope: !1265)
!1299 = !DILocation(line: 82, column: 10, scope: !1279)
!1300 = !DILocation(line: 82, column: 10, scope: !1284)
!1301 = !DILocation(line: 81, column: 11, scope: !1265)
!1302 = !DILocation(line: 81, column: 14, scope: !1265)
!1303 = !DILocation(line: 85, column: 12, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 85, column: 11)
!1305 = !DILocation(line: 85, column: 11, scope: !1265)
!1306 = !DILocation(line: 88, column: 10, scope: !1265)
!1307 = !DILocation(line: 89, column: 31, scope: !1265)
!1308 = !DILocation(line: 89, column: 21, scope: !1265)
!1309 = !DILocation(line: 89, column: 38, scope: !1265)
!1310 = !DILocation(line: 90, column: 23, scope: !1265)
!1311 = !DILocation(line: 90, column: 43, scope: !1279)
!1312 = !DILocation(line: 90, column: 33, scope: !1279)
!1313 = !DILocation(line: 90, column: 50, scope: !1279)
!1314 = !DILocation(line: 90, column: 23, scope: !1279)
!1315 = !DILocation(line: 90, column: 23, scope: !1284)
!1316 = !DILocation(line: 90, column: 20, scope: !1284)
!1317 = !DILocation(line: 91, column: 19, scope: !1265)
!1318 = !DILocation(line: 89, column: 12, scope: !1279)
!1319 = !DILocation(line: 88, column: 10, scope: !1279)
!1320 = !DILocation(line: 88, column: 10, scope: !1284)
!1321 = !DILocation(line: 87, column: 11, scope: !1265)
!1322 = !DILocation(line: 87, column: 14, scope: !1265)
!1323 = !DILocation(line: 93, column: 12, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 93, column: 11)
!1325 = !DILocation(line: 93, column: 11, scope: !1265)
!1326 = !DILocation(line: 96, column: 10, scope: !1265)
!1327 = !DILocation(line: 97, column: 31, scope: !1265)
!1328 = !DILocation(line: 97, column: 21, scope: !1265)
!1329 = !DILocation(line: 97, column: 38, scope: !1265)
!1330 = !DILocation(line: 98, column: 23, scope: !1265)
!1331 = !DILocation(line: 98, column: 43, scope: !1279)
!1332 = !DILocation(line: 98, column: 33, scope: !1279)
!1333 = !DILocation(line: 98, column: 50, scope: !1279)
!1334 = !DILocation(line: 98, column: 23, scope: !1279)
!1335 = !DILocation(line: 98, column: 23, scope: !1284)
!1336 = !DILocation(line: 98, column: 20, scope: !1284)
!1337 = !DILocation(line: 99, column: 19, scope: !1265)
!1338 = !DILocation(line: 97, column: 12, scope: !1279)
!1339 = !DILocation(line: 96, column: 10, scope: !1279)
!1340 = !DILocation(line: 96, column: 10, scope: !1284)
!1341 = !DILocation(line: 95, column: 11, scope: !1265)
!1342 = !DILocation(line: 95, column: 14, scope: !1265)
!1343 = !DILocation(line: 101, column: 12, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 101, column: 11)
!1345 = !DILocation(line: 101, column: 11, scope: !1265)
!1346 = !DILocation(line: 104, column: 10, scope: !1265)
!1347 = !DILocation(line: 105, column: 30, scope: !1265)
!1348 = !DILocation(line: 105, column: 20, scope: !1265)
!1349 = !DILocation(line: 105, column: 37, scope: !1265)
!1350 = !DILocation(line: 105, column: 43, scope: !1265)
!1351 = !DILocation(line: 105, column: 12, scope: !1265)
!1352 = !DILocation(line: 104, column: 10, scope: !1279)
!1353 = !DILocation(line: 104, column: 10, scope: !1284)
!1354 = !DILocation(line: 103, column: 11, scope: !1265)
!1355 = !DILocation(line: 103, column: 14, scope: !1265)
!1356 = !DILocation(line: 107, column: 12, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 107, column: 11)
!1358 = !DILocation(line: 107, column: 11, scope: !1265)
!1359 = !DILocation(line: 110, column: 10, scope: !1265)
!1360 = !DILocation(line: 111, column: 31, scope: !1265)
!1361 = !DILocation(line: 111, column: 21, scope: !1265)
!1362 = !DILocation(line: 111, column: 38, scope: !1265)
!1363 = !DILocation(line: 112, column: 23, scope: !1265)
!1364 = !DILocation(line: 112, column: 43, scope: !1279)
!1365 = !DILocation(line: 112, column: 33, scope: !1279)
!1366 = !DILocation(line: 112, column: 50, scope: !1279)
!1367 = !DILocation(line: 112, column: 23, scope: !1279)
!1368 = !DILocation(line: 112, column: 23, scope: !1284)
!1369 = !DILocation(line: 112, column: 20, scope: !1284)
!1370 = !DILocation(line: 113, column: 19, scope: !1265)
!1371 = !DILocation(line: 111, column: 12, scope: !1279)
!1372 = !DILocation(line: 110, column: 10, scope: !1279)
!1373 = !DILocation(line: 110, column: 10, scope: !1284)
!1374 = !DILocation(line: 109, column: 11, scope: !1265)
!1375 = !DILocation(line: 109, column: 14, scope: !1265)
!1376 = !DILocation(line: 115, column: 12, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 115, column: 11)
!1378 = !DILocation(line: 115, column: 11, scope: !1265)
!1379 = !DILocation(line: 117, column: 16, scope: !1265)
!1380 = !DILocation(line: 117, column: 41, scope: !1279)
!1381 = !DILocation(line: 117, column: 48, scope: !1279)
!1382 = !DILocation(line: 117, column: 24, scope: !1279)
!1383 = !DILocation(line: 117, column: 16, scope: !1279)
!1384 = !DILocation(line: 117, column: 16, scope: !1284)
!1385 = !DILocation(line: 117, column: 14, scope: !1284)
!1386 = !DILocation(line: 118, column: 12, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 118, column: 11)
!1388 = !DILocation(line: 118, column: 11, scope: !1265)
!1389 = !DILocation(line: 117, column: 11, scope: !1284)
!1390 = !DILocation(line: 121, column: 14, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 120, column: 11)
!1392 = !DILocation(line: 122, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1265, file: !95, line: 122, column: 11)
!1394 = !DILocation(line: 123, column: 12, scope: !1393)
!1395 = !DILocation(line: 126, column: 7, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !94, file: !95, line: 126, column: 7)
!1397 = !DILocation(line: 126, column: 7, scope: !94)
!1398 = !DILocation(line: 127, column: 10, scope: !1396)
!1399 = !DILocation(line: 127, column: 5, scope: !1396)
!1400 = !DILocation(line: 128, column: 1, scope: !94)
!1401 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !95, file: !95, line: 140, type: !1402, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!32, !40, !32, !703}
!1404 = !{!1405, !1406, !1407, !1408}
!1405 = !DILocalVariable(name: "in", arg: 1, scope: !1401, file: !95, line: 140, type: !40)
!1406 = !DILocalVariable(name: "inlen", arg: 2, scope: !1401, file: !95, line: 140, type: !32)
!1407 = !DILocalVariable(name: "out", arg: 3, scope: !1401, file: !95, line: 140, type: !703)
!1408 = !DILocalVariable(name: "outlen", scope: !1401, file: !95, line: 142, type: !32)
!1409 = !DILocation(line: 140, column: 34, scope: !1401)
!1410 = !DILocation(line: 140, column: 45, scope: !1401)
!1411 = !DILocation(line: 140, column: 59, scope: !1401)
!1412 = !DILocation(line: 142, column: 23, scope: !1401)
!1413 = !DILocation(line: 142, column: 21, scope: !1401)
!1414 = !DILocation(line: 142, column: 10, scope: !1401)
!1415 = !DILocation(line: 150, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1401, file: !95, line: 150, column: 7)
!1417 = !DILocation(line: 150, column: 7, scope: !1401)
!1418 = !DILocation(line: 152, column: 12, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !95, line: 151, column: 5)
!1420 = !DILocation(line: 153, column: 7, scope: !1419)
!1421 = !DILocation(line: 156, column: 10, scope: !1401)
!1422 = !DILocation(line: 156, column: 8, scope: !1401)
!1423 = !DILocation(line: 157, column: 8, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1401, file: !95, line: 157, column: 7)
!1425 = !DILocation(line: 157, column: 7, scope: !1401)
!1426 = !DILocation(line: 160, column: 3, scope: !1401)
!1427 = !DILocation(line: 162, column: 3, scope: !1401)
!1428 = !DILocation(line: 163, column: 1, scope: !1401)
!1429 = distinct !DISubprogram(name: "isbase32", scope: !95, file: !95, line: 286, type: !1430, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!127, !30}
!1432 = !{!1433}
!1433 = !DILocalVariable(name: "ch", arg: 1, scope: !1429, file: !95, line: 286, type: !30)
!1434 = !DILocation(line: 286, column: 16, scope: !1429)
!1435 = !DILocation(line: 288, column: 49, scope: !1429)
!1436 = !DILocation(line: 288, column: 46, scope: !1429)
!1437 = !DILocation(line: 288, column: 3, scope: !1429)
!1438 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !95, file: !95, line: 293, type: !1439, isLocal: false, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1446)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !801, line: 31, size: 96, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1442, file: !801, line: 33, baseType: !184, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1442, file: !801, line: 34, baseType: !805, size: 64, offset: 32)
!1446 = !{!1447}
!1447 = !DILocalVariable(name: "ctx", arg: 1, scope: !1438, file: !95, line: 293, type: !1441)
!1448 = !DILocation(line: 293, column: 55, scope: !1438)
!1449 = !DILocation(line: 295, column: 8, scope: !1438)
!1450 = !DILocation(line: 295, column: 10, scope: !1438)
!1451 = !{!1452, !874, i64 0}
!1452 = !{!"base32_decode_context", !874, i64 0, !647, i64 4}
!1453 = !DILocation(line: 296, column: 1, scope: !1438)
!1454 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !95, file: !95, line: 470, type: !1455, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1457)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!127, !1441, !98, !32, !99, !585}
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1469, !1471}
!1458 = !DILocalVariable(name: "ctx", arg: 1, scope: !1454, file: !95, line: 470, type: !1441)
!1459 = !DILocalVariable(name: "in", arg: 2, scope: !1454, file: !95, line: 471, type: !98)
!1460 = !DILocalVariable(name: "inlen", arg: 3, scope: !1454, file: !95, line: 471, type: !32)
!1461 = !DILocalVariable(name: "out", arg: 4, scope: !1454, file: !95, line: 472, type: !99)
!1462 = !DILocalVariable(name: "outlen", arg: 5, scope: !1454, file: !95, line: 472, type: !585)
!1463 = !DILocalVariable(name: "outleft", scope: !1454, file: !95, line: 474, type: !32)
!1464 = !DILocalVariable(name: "ignore_newlines", scope: !1454, file: !95, line: 475, type: !127)
!1465 = !DILocalVariable(name: "flush_ctx", scope: !1454, file: !95, line: 476, type: !127)
!1466 = !DILocalVariable(name: "ctx_i", scope: !1454, file: !95, line: 477, type: !184)
!1467 = !DILocalVariable(name: "outleft_save", scope: !1468, file: !95, line: 488, type: !32)
!1468 = distinct !DILexicalBlock(scope: !1454, file: !95, line: 487, column: 5)
!1469 = !DILocalVariable(name: "in_end", scope: !1470, file: !95, line: 521, type: !40)
!1470 = distinct !DILexicalBlock(scope: !1468, file: !95, line: 520, column: 7)
!1471 = !DILocalVariable(name: "non_nl", scope: !1470, file: !95, line: 522, type: !40)
!1472 = !DILocation(line: 470, column: 50, scope: !1454)
!1473 = !DILocation(line: 471, column: 41, scope: !1454)
!1474 = !DILocation(line: 471, column: 52, scope: !1454)
!1475 = !DILocation(line: 472, column: 35, scope: !1454)
!1476 = !DILocation(line: 472, column: 48, scope: !1454)
!1477 = !DILocation(line: 474, column: 3, scope: !1454)
!1478 = !DILocation(line: 474, column: 20, scope: !1454)
!1479 = !DILocation(line: 474, column: 10, scope: !1454)
!1480 = !DILocation(line: 475, column: 30, scope: !1454)
!1481 = !DILocation(line: 476, column: 8, scope: !1454)
!1482 = !DILocation(line: 477, column: 16, scope: !1454)
!1483 = !DILocation(line: 479, column: 7, scope: !1454)
!1484 = !DILocation(line: 481, column: 20, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !95, line: 480, column: 5)
!1486 = distinct !DILexicalBlock(scope: !1454, file: !95, line: 479, column: 7)
!1487 = !DILocation(line: 483, column: 5, scope: !1485)
!1488 = !DILocation(line: 495, column: 30, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !95, line: 492, column: 13)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !95, line: 490, column: 9)
!1491 = distinct !DILexicalBlock(scope: !1468, file: !95, line: 489, column: 11)
!1492 = !DILocation(line: 488, column: 14, scope: !1468)
!1493 = !DILocation(line: 489, column: 22, scope: !1491)
!1494 = !DILocation(line: 496, column: 30, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1489, file: !95, line: 496, column: 19)
!1496 = !DILocation(line: 496, column: 20, scope: !1495)
!1497 = !DILocation(line: 496, column: 19, scope: !1489)
!1498 = !DILocation(line: 499, column: 18, scope: !1489)
!1499 = !DILocation(line: 500, column: 21, scope: !1489)
!1500 = distinct !{!1500, !1501, !1502}
!1501 = !DILocation(line: 491, column: 11, scope: !1490)
!1502 = !DILocation(line: 501, column: 13, scope: !1490)
!1503 = !DILocation(line: 504, column: 17, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1468, file: !95, line: 504, column: 11)
!1505 = !DILocation(line: 504, column: 22, scope: !1504)
!1506 = !DILocation(line: 509, column: 17, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1468, file: !95, line: 509, column: 11)
!1508 = !DILocation(line: 509, column: 20, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1507, file: !95, discriminator: 1)
!1510 = !DILocation(line: 509, column: 32, scope: !1509)
!1511 = !DILocation(line: 511, column: 11, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1507, file: !95, line: 510, column: 9)
!1513 = !DILocation(line: 512, column: 11, scope: !1512)
!1514 = !DILocation(line: 488, column: 29, scope: !1468)
!1515 = !DILocation(line: 517, column: 29, scope: !1468)
!1516 = !DILocation(line: 517, column: 11, scope: !1468)
!1517 = !DILocation(line: 518, column: 15, scope: !1468)
!1518 = !DILocation(line: 521, column: 33, scope: !1470)
!1519 = !DILocation(line: 521, column: 21, scope: !1470)
!1520 = !DILocation(line: 524, column: 13, scope: !1470)
!1521 = !DILocalVariable(name: "ctx", arg: 1, scope: !1522, file: !95, line: 306, type: !1441)
!1522 = distinct !DISubprogram(name: "get_8", scope: !95, file: !95, line: 306, type: !1523, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1526)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!29, !1441, !1525, !98, !585}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1526 = !{!1521, !1527, !1528, !1529, !1530, !1533, !1535}
!1527 = !DILocalVariable(name: "in", arg: 2, scope: !1522, file: !95, line: 307, type: !1525)
!1528 = !DILocalVariable(name: "in_end", arg: 3, scope: !1522, file: !95, line: 307, type: !98)
!1529 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1522, file: !95, line: 308, type: !585)
!1530 = !DILocalVariable(name: "t", scope: !1531, file: !95, line: 315, type: !40)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !95, line: 314, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1522, file: !95, line: 313, column: 7)
!1533 = !DILocalVariable(name: "p", scope: !1534, file: !95, line: 327, type: !40)
!1534 = distinct !DILexicalBlock(scope: !1522, file: !95, line: 325, column: 3)
!1535 = !DILocalVariable(name: "c", scope: !1536, file: !95, line: 330, type: !30)
!1536 = distinct !DILexicalBlock(scope: !1534, file: !95, line: 329, column: 7)
!1537 = !DILocation(line: 306, column: 38, scope: !1522, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 525, column: 20, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1470, file: !95, line: 524, column: 13)
!1540 = !DILocation(line: 307, column: 30, scope: !1522, inlinedAt: !1538)
!1541 = !DILocation(line: 307, column: 55, scope: !1522, inlinedAt: !1538)
!1542 = !DILocation(line: 310, column: 12, scope: !1543, inlinedAt: !1538)
!1543 = distinct !DILexicalBlock(scope: !1522, file: !95, line: 310, column: 7)
!1544 = !{!1545}
!1545 = distinct !{!1545, !1546, !"get_8: argument 0"}
!1546 = distinct !{!1546, !"get_8"}
!1547 = !DILocation(line: 310, column: 7, scope: !1522, inlinedAt: !1538)
!1548 = !DILocation(line: 311, column: 12, scope: !1543, inlinedAt: !1538)
!1549 = !DILocation(line: 313, column: 7, scope: !1522, inlinedAt: !1538)
!1550 = !DILocation(line: 315, column: 19, scope: !1531, inlinedAt: !1538)
!1551 = !DILocation(line: 316, column: 23, scope: !1552, inlinedAt: !1538)
!1552 = distinct !DILexicalBlock(scope: !1531, file: !95, line: 316, column: 11)
!1553 = !DILocation(line: 316, column: 13, scope: !1552, inlinedAt: !1538)
!1554 = !DILocation(line: 316, column: 29, scope: !1552, inlinedAt: !1538)
!1555 = !DILocation(line: 316, column: 32, scope: !1556, inlinedAt: !1538)
!1556 = !DILexicalBlockFile(scope: !1552, file: !95, discriminator: 1)
!1557 = !DILocation(line: 316, column: 52, scope: !1556, inlinedAt: !1538)
!1558 = !DILocation(line: 316, column: 11, scope: !1559, inlinedAt: !1538)
!1559 = !DILexicalBlockFile(scope: !1531, file: !95, discriminator: 1)
!1560 = !DILocation(line: 319, column: 15, scope: !1561, inlinedAt: !1538)
!1561 = distinct !DILexicalBlock(scope: !1552, file: !95, line: 317, column: 9)
!1562 = !DILocation(line: 522, column: 21, scope: !1470)
!1563 = !DILocation(line: 532, column: 38, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1565, file: !95, discriminator: 1)
!1565 = distinct !DILexicalBlock(scope: !1470, file: !95, line: 532, column: 13)
!1566 = !DILocation(line: 327, column: 17, scope: !1534, inlinedAt: !1538)
!1567 = !DILocation(line: 328, column: 14, scope: !1568, inlinedAt: !1538)
!1568 = !DILexicalBlockFile(scope: !1534, file: !95, discriminator: 1)
!1569 = !DILocation(line: 328, column: 5, scope: !1568, inlinedAt: !1538)
!1570 = !DILocation(line: 330, column: 20, scope: !1536, inlinedAt: !1538)
!1571 = !DILocation(line: 330, column: 18, scope: !1536, inlinedAt: !1538)
!1572 = !DILocation(line: 330, column: 14, scope: !1536, inlinedAt: !1538)
!1573 = !DILocation(line: 331, column: 15, scope: !1574, inlinedAt: !1538)
!1574 = distinct !DILexicalBlock(scope: !1536, file: !95, line: 331, column: 13)
!1575 = !DILocation(line: 331, column: 13, scope: !1536, inlinedAt: !1538)
!1576 = !DILocation(line: 333, column: 28, scope: !1577, inlinedAt: !1538)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !95, line: 332, column: 11)
!1578 = !DILocation(line: 333, column: 13, scope: !1577, inlinedAt: !1538)
!1579 = !DILocation(line: 333, column: 32, scope: !1577, inlinedAt: !1538)
!1580 = !DILocation(line: 334, column: 24, scope: !1581, inlinedAt: !1538)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !95, line: 334, column: 17)
!1582 = !DILocation(line: 334, column: 17, scope: !1577, inlinedAt: !1538)
!1583 = !DILocation(line: 340, column: 27, scope: !1534, inlinedAt: !1538)
!1584 = !DILocation(line: 339, column: 9, scope: !1534, inlinedAt: !1538)
!1585 = !DILocation(line: 340, column: 22, scope: !1534, inlinedAt: !1538)
!1586 = !DILocation(line: 532, column: 19, scope: !1565)
!1587 = !DILocation(line: 532, column: 24, scope: !1565)
!1588 = !DILocation(line: 532, column: 34, scope: !1564)
!1589 = !DILocation(line: 537, column: 14, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1470, file: !95, line: 537, column: 13)
!1591 = !DILocation(line: 537, column: 13, scope: !1470)
!1592 = !DILocation(line: 540, column: 24, scope: !1470)
!1593 = !DILocation(line: 544, column: 14, scope: !1454)
!1594 = !DILocation(line: 544, column: 11, scope: !1454)
!1595 = !DILocation(line: 546, column: 16, scope: !1454)
!1596 = !DILocation(line: 547, column: 1, scope: !1454)
!1597 = !DILocation(line: 546, column: 3, scope: !1454)
!1598 = distinct !DISubprogram(name: "decode_8", scope: !95, file: !95, line: 360, type: !1599, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1602)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!127, !98, !32, !1601, !585}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1602 = !{!1603, !1604, !1605, !1606, !1607}
!1603 = !DILocalVariable(name: "in", arg: 1, scope: !1598, file: !95, line: 360, type: !98)
!1604 = !DILocalVariable(name: "inlen", arg: 2, scope: !1598, file: !95, line: 360, type: !32)
!1605 = !DILocalVariable(name: "outp", arg: 3, scope: !1598, file: !95, line: 361, type: !1601)
!1606 = !DILocalVariable(name: "outleft", arg: 4, scope: !1598, file: !95, line: 361, type: !585)
!1607 = !DILocalVariable(name: "out", scope: !1598, file: !95, line: 363, type: !29)
!1608 = !DILocation(line: 360, column: 32, scope: !1598)
!1609 = !DILocation(line: 360, column: 43, scope: !1598)
!1610 = !DILocation(line: 361, column: 27, scope: !1598)
!1611 = !DILocation(line: 361, column: 41, scope: !1598)
!1612 = !DILocation(line: 363, column: 15, scope: !1598)
!1613 = !DILocation(line: 363, column: 9, scope: !1598)
!1614 = !DILocation(line: 364, column: 13, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1598, file: !95, line: 364, column: 7)
!1616 = !DILocation(line: 364, column: 7, scope: !1598)
!1617 = !DILocation(line: 367, column: 18, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1598, file: !95, line: 367, column: 7)
!1619 = !DILocation(line: 286, column: 16, scope: !1429, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 367, column: 8, scope: !1618)
!1621 = !DILocation(line: 288, column: 49, scope: !1429, inlinedAt: !1620)
!1622 = !DILocation(line: 288, column: 46, scope: !1429, inlinedAt: !1620)
!1623 = !DILocation(line: 367, column: 25, scope: !1618)
!1624 = !DILocation(line: 367, column: 39, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1618, file: !95, discriminator: 1)
!1626 = !DILocation(line: 286, column: 16, scope: !1429, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 367, column: 29, scope: !1625)
!1628 = !DILocation(line: 288, column: 49, scope: !1429, inlinedAt: !1627)
!1629 = !DILocation(line: 288, column: 46, scope: !1429, inlinedAt: !1627)
!1630 = !DILocation(line: 367, column: 7, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1598, file: !95, discriminator: 1)
!1632 = !DILocation(line: 370, column: 7, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1598, file: !95, line: 370, column: 7)
!1634 = !DILocation(line: 370, column: 7, scope: !1598)
!1635 = !DILocation(line: 372, column: 18, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !95, line: 371, column: 5)
!1637 = !DILocation(line: 372, column: 40, scope: !1636)
!1638 = !DILocation(line: 373, column: 20, scope: !1636)
!1639 = !DILocation(line: 373, column: 42, scope: !1636)
!1640 = !DILocation(line: 373, column: 17, scope: !1636)
!1641 = !DILocation(line: 372, column: 16, scope: !1636)
!1642 = !DILocation(line: 372, column: 11, scope: !1636)
!1643 = !DILocation(line: 372, column: 14, scope: !1636)
!1644 = !DILocation(line: 374, column: 7, scope: !1636)
!1645 = !DILocation(line: 375, column: 5, scope: !1636)
!1646 = !DILocation(line: 388, column: 11, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !95, line: 388, column: 11)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !95, line: 384, column: 5)
!1649 = distinct !DILexicalBlock(scope: !1598, file: !95, line: 377, column: 7)
!1650 = !DILocation(line: 377, column: 7, scope: !1649)
!1651 = !DILocation(line: 377, column: 13, scope: !1649)
!1652 = !DILocation(line: 377, column: 7, scope: !1598)
!1653 = !DILocation(line: 379, column: 11, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !95, line: 379, column: 11)
!1655 = distinct !DILexicalBlock(scope: !1649, file: !95, line: 378, column: 5)
!1656 = !DILocation(line: 379, column: 17, scope: !1654)
!1657 = !DILocation(line: 379, column: 24, scope: !1654)
!1658 = !DILocation(line: 379, column: 27, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1654, file: !95, discriminator: 1)
!1660 = !DILocation(line: 379, column: 33, scope: !1659)
!1661 = !DILocation(line: 379, column: 40, scope: !1659)
!1662 = !DILocation(line: 379, column: 43, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1654, file: !95, discriminator: 2)
!1664 = !DILocation(line: 379, column: 49, scope: !1663)
!1665 = !DILocation(line: 380, column: 11, scope: !1654)
!1666 = !DILocation(line: 380, column: 14, scope: !1659)
!1667 = !DILocation(line: 380, column: 20, scope: !1659)
!1668 = !DILocation(line: 380, column: 27, scope: !1659)
!1669 = !DILocation(line: 380, column: 30, scope: !1663)
!1670 = !DILocation(line: 380, column: 36, scope: !1663)
!1671 = !DILocation(line: 379, column: 11, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1655, file: !95, discriminator: 3)
!1673 = !DILocation(line: 381, column: 9, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !95, discriminator: 1)
!1675 = distinct !DILexicalBlock(scope: !1654, file: !95, line: 381, column: 9)
!1676 = !DILocation(line: 286, column: 16, scope: !1429, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 385, column: 12, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1648, file: !95, line: 385, column: 11)
!1679 = !DILocation(line: 288, column: 49, scope: !1429, inlinedAt: !1677)
!1680 = !DILocation(line: 288, column: 46, scope: !1429, inlinedAt: !1677)
!1681 = !DILocation(line: 385, column: 29, scope: !1678)
!1682 = !DILocation(line: 385, column: 43, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1678, file: !95, discriminator: 1)
!1684 = !DILocation(line: 286, column: 16, scope: !1429, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 385, column: 33, scope: !1683)
!1686 = !DILocation(line: 288, column: 49, scope: !1429, inlinedAt: !1685)
!1687 = !DILocation(line: 288, column: 46, scope: !1429, inlinedAt: !1685)
!1688 = !DILocation(line: 385, column: 11, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1648, file: !95, discriminator: 1)
!1690 = !DILocation(line: 386, column: 9, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1692, file: !95, discriminator: 1)
!1692 = distinct !DILexicalBlock(scope: !1678, file: !95, line: 386, column: 9)
!1693 = !DILocation(line: 388, column: 11, scope: !1648)
!1694 = !DILocation(line: 390, column: 22, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1647, file: !95, line: 389, column: 9)
!1696 = !DILocation(line: 390, column: 44, scope: !1695)
!1697 = !DILocation(line: 391, column: 24, scope: !1695)
!1698 = !DILocation(line: 391, column: 46, scope: !1695)
!1699 = !DILocation(line: 392, column: 24, scope: !1695)
!1700 = !DILocation(line: 392, column: 46, scope: !1695)
!1701 = !DILocation(line: 391, column: 21, scope: !1695)
!1702 = !DILocation(line: 392, column: 21, scope: !1695)
!1703 = !DILocation(line: 390, column: 20, scope: !1695)
!1704 = !DILocation(line: 390, column: 15, scope: !1695)
!1705 = !DILocation(line: 390, column: 18, scope: !1695)
!1706 = !DILocation(line: 393, column: 11, scope: !1695)
!1707 = !DILocation(line: 394, column: 9, scope: !1695)
!1708 = !DILocation(line: 406, column: 15, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !95, line: 406, column: 15)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !95, line: 402, column: 9)
!1711 = distinct !DILexicalBlock(scope: !1648, file: !95, line: 396, column: 11)
!1712 = !DILocation(line: 396, column: 11, scope: !1711)
!1713 = !DILocation(line: 396, column: 17, scope: !1711)
!1714 = !DILocation(line: 396, column: 11, scope: !1648)
!1715 = !DILocation(line: 398, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !95, line: 398, column: 15)
!1717 = distinct !DILexicalBlock(scope: !1711, file: !95, line: 397, column: 9)
!1718 = !DILocation(line: 398, column: 21, scope: !1716)
!1719 = !DILocation(line: 398, column: 28, scope: !1716)
!1720 = !DILocation(line: 398, column: 31, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1716, file: !95, discriminator: 1)
!1722 = !DILocation(line: 398, column: 37, scope: !1721)
!1723 = !DILocation(line: 398, column: 44, scope: !1721)
!1724 = !DILocation(line: 398, column: 47, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1716, file: !95, discriminator: 2)
!1726 = !DILocation(line: 398, column: 53, scope: !1725)
!1727 = !DILocation(line: 398, column: 15, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1717, file: !95, discriminator: 2)
!1729 = !DILocation(line: 399, column: 13, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1731, file: !95, discriminator: 1)
!1731 = distinct !DILexicalBlock(scope: !1716, file: !95, line: 399, column: 13)
!1732 = !DILocation(line: 286, column: 16, scope: !1429, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 403, column: 16, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1710, file: !95, line: 403, column: 15)
!1735 = !DILocation(line: 288, column: 49, scope: !1429, inlinedAt: !1733)
!1736 = !DILocation(line: 288, column: 46, scope: !1429, inlinedAt: !1733)
!1737 = !DILocation(line: 403, column: 15, scope: !1710)
!1738 = !DILocation(line: 404, column: 13, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1740, file: !95, discriminator: 1)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !95, line: 404, column: 13)
!1741 = !DILocation(line: 406, column: 15, scope: !1710)
!1742 = !DILocation(line: 408, column: 26, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1709, file: !95, line: 407, column: 13)
!1744 = !DILocation(line: 408, column: 48, scope: !1743)
!1745 = !DILocation(line: 409, column: 28, scope: !1743)
!1746 = !DILocation(line: 409, column: 50, scope: !1743)
!1747 = !DILocation(line: 409, column: 25, scope: !1743)
!1748 = !DILocation(line: 408, column: 24, scope: !1743)
!1749 = !DILocation(line: 408, column: 19, scope: !1743)
!1750 = !DILocation(line: 408, column: 22, scope: !1743)
!1751 = !DILocation(line: 410, column: 15, scope: !1743)
!1752 = !DILocation(line: 411, column: 13, scope: !1743)
!1753 = !DILocation(line: 423, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !95, line: 423, column: 19)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !95, line: 419, column: 13)
!1756 = distinct !DILexicalBlock(scope: !1710, file: !95, line: 413, column: 15)
!1757 = !DILocation(line: 413, column: 15, scope: !1756)
!1758 = !DILocation(line: 413, column: 21, scope: !1756)
!1759 = !DILocation(line: 413, column: 15, scope: !1710)
!1760 = !DILocation(line: 415, column: 19, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !95, line: 415, column: 19)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !95, line: 414, column: 13)
!1763 = !DILocation(line: 415, column: 25, scope: !1761)
!1764 = !DILocation(line: 415, column: 32, scope: !1761)
!1765 = !DILocation(line: 415, column: 35, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1761, file: !95, discriminator: 1)
!1767 = !DILocation(line: 415, column: 41, scope: !1766)
!1768 = !DILocation(line: 415, column: 19, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1762, file: !95, discriminator: 1)
!1770 = !DILocation(line: 416, column: 17, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1772, file: !95, discriminator: 1)
!1772 = distinct !DILexicalBlock(scope: !1761, file: !95, line: 416, column: 17)
!1773 = !DILocation(line: 286, column: 16, scope: !1429, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 420, column: 20, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1755, file: !95, line: 420, column: 19)
!1776 = !DILocation(line: 288, column: 49, scope: !1429, inlinedAt: !1774)
!1777 = !DILocation(line: 288, column: 46, scope: !1429, inlinedAt: !1774)
!1778 = !DILocation(line: 420, column: 37, scope: !1775)
!1779 = !DILocation(line: 420, column: 51, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1775, file: !95, discriminator: 1)
!1781 = !DILocation(line: 286, column: 16, scope: !1429, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 420, column: 41, scope: !1780)
!1783 = !DILocation(line: 288, column: 49, scope: !1429, inlinedAt: !1782)
!1784 = !DILocation(line: 288, column: 46, scope: !1429, inlinedAt: !1782)
!1785 = !DILocation(line: 420, column: 19, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1755, file: !95, discriminator: 1)
!1787 = !DILocation(line: 421, column: 17, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1789, file: !95, discriminator: 1)
!1789 = distinct !DILexicalBlock(scope: !1775, file: !95, line: 421, column: 17)
!1790 = !DILocation(line: 423, column: 19, scope: !1755)
!1791 = !DILocation(line: 425, column: 44, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1754, file: !95, line: 424, column: 17)
!1793 = !DILocation(line: 425, column: 30, scope: !1792)
!1794 = !DILocation(line: 425, column: 52, scope: !1792)
!1795 = !DILocation(line: 426, column: 32, scope: !1792)
!1796 = !DILocation(line: 426, column: 54, scope: !1792)
!1797 = !DILocation(line: 427, column: 32, scope: !1792)
!1798 = !DILocation(line: 427, column: 54, scope: !1792)
!1799 = !DILocation(line: 426, column: 29, scope: !1792)
!1800 = !DILocation(line: 427, column: 29, scope: !1792)
!1801 = !DILocation(line: 425, column: 28, scope: !1792)
!1802 = !DILocation(line: 425, column: 23, scope: !1792)
!1803 = !DILocation(line: 425, column: 26, scope: !1792)
!1804 = !DILocation(line: 428, column: 19, scope: !1792)
!1805 = !DILocation(line: 429, column: 17, scope: !1792)
!1806 = !DILocation(line: 436, column: 23, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !95, line: 436, column: 23)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !95, line: 432, column: 17)
!1809 = distinct !DILexicalBlock(scope: !1755, file: !95, line: 431, column: 19)
!1810 = !DILocation(line: 431, column: 19, scope: !1809)
!1811 = !DILocation(line: 431, column: 25, scope: !1809)
!1812 = !DILocation(line: 431, column: 19, scope: !1755)
!1813 = !DILocation(line: 286, column: 16, scope: !1429, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 433, column: 24, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1808, file: !95, line: 433, column: 23)
!1816 = !DILocation(line: 288, column: 49, scope: !1429, inlinedAt: !1814)
!1817 = !DILocation(line: 288, column: 46, scope: !1429, inlinedAt: !1814)
!1818 = !DILocation(line: 433, column: 23, scope: !1808)
!1819 = !DILocation(line: 434, column: 21, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1821, file: !95, discriminator: 1)
!1821 = distinct !DILexicalBlock(scope: !1815, file: !95, line: 434, column: 21)
!1822 = !DILocation(line: 436, column: 23, scope: !1808)
!1823 = !DILocation(line: 438, column: 48, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1807, file: !95, line: 437, column: 21)
!1825 = !DILocation(line: 438, column: 34, scope: !1824)
!1826 = !DILocation(line: 438, column: 56, scope: !1824)
!1827 = !DILocation(line: 439, column: 33, scope: !1824)
!1828 = !DILocation(line: 438, column: 27, scope: !1824)
!1829 = !DILocation(line: 438, column: 30, scope: !1824)
!1830 = !DILocation(line: 440, column: 23, scope: !1824)
!1831 = !DILocation(line: 441, column: 21, scope: !1824)
!1832 = !DILocation(line: 447, column: 9, scope: !1598)
!1833 = !DILocation(line: 448, column: 3, scope: !1598)
!1834 = !DILocation(line: 449, column: 1, scope: !1598)
!1835 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !95, file: !95, line: 561, type: !1836, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !100, variables: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!127, !1441, !40, !32, !703, !585}
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844}
!1839 = !DILocalVariable(name: "ctx", arg: 1, scope: !1835, file: !95, line: 561, type: !1441)
!1840 = !DILocalVariable(name: "in", arg: 2, scope: !1835, file: !95, line: 562, type: !40)
!1841 = !DILocalVariable(name: "inlen", arg: 3, scope: !1835, file: !95, line: 562, type: !32)
!1842 = !DILocalVariable(name: "out", arg: 4, scope: !1835, file: !95, line: 562, type: !703)
!1843 = !DILocalVariable(name: "outlen", arg: 5, scope: !1835, file: !95, line: 563, type: !585)
!1844 = !DILocalVariable(name: "needlen", scope: !1835, file: !95, line: 570, type: !32)
!1845 = !DILocation(line: 561, column: 56, scope: !1835)
!1846 = !DILocation(line: 562, column: 38, scope: !1835)
!1847 = !DILocation(line: 562, column: 49, scope: !1835)
!1848 = !DILocation(line: 562, column: 63, scope: !1835)
!1849 = !DILocation(line: 563, column: 34, scope: !1835)
!1850 = !DILocation(line: 570, column: 3, scope: !1835)
!1851 = !DILocation(line: 570, column: 31, scope: !1835)
!1852 = !DILocation(line: 570, column: 22, scope: !1835)
!1853 = !DILocation(line: 570, column: 36, scope: !1835)
!1854 = !DILocation(line: 570, column: 10, scope: !1835)
!1855 = !DILocation(line: 572, column: 10, scope: !1835)
!1856 = !DILocation(line: 572, column: 8, scope: !1835)
!1857 = !DILocation(line: 573, column: 8, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1835, file: !95, line: 573, column: 7)
!1859 = !DILocation(line: 573, column: 7, scope: !1835)
!1860 = !DILocation(line: 576, column: 8, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1835, file: !95, line: 576, column: 7)
!1862 = !DILocation(line: 576, column: 7, scope: !1835)
!1863 = !DILocation(line: 578, column: 13, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !95, line: 577, column: 5)
!1865 = !DILocation(line: 578, column: 7, scope: !1864)
!1866 = !DILocation(line: 579, column: 12, scope: !1864)
!1867 = !DILocation(line: 580, column: 7, scope: !1864)
!1868 = !DILocation(line: 583, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1835, file: !95, line: 583, column: 7)
!1870 = !DILocation(line: 583, column: 7, scope: !1835)
!1871 = !DILocation(line: 584, column: 15, scope: !1869)
!1872 = !DILocation(line: 584, column: 13, scope: !1869)
!1873 = !DILocation(line: 584, column: 5, scope: !1869)
!1874 = !DILocation(line: 587, column: 1, scope: !1835)
!1875 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !126, file: !126, line: 41, type: !47, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1876)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "file", arg: 1, scope: !1875, file: !126, line: 41, type: !40)
!1878 = !DILocation(line: 41, column: 41, scope: !1875)
!1879 = !DILocation(line: 43, column: 13, scope: !1875)
!1880 = !DILocation(line: 44, column: 1, scope: !1875)
!1881 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !126, file: !126, line: 78, type: !1882, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !127}
!1884 = !{!1885}
!1885 = !DILocalVariable(name: "ignore", arg: 1, scope: !1881, file: !126, line: 78, type: !127)
!1886 = !DILocation(line: 78, column: 37, scope: !1881)
!1887 = !DILocation(line: 80, column: 16, scope: !1881)
!1888 = !{!1889, !1889, i64 0}
!1889 = !{!"_Bool", !647, i64 0}
!1890 = !DILocation(line: 81, column: 1, scope: !1881)
!1891 = distinct !DISubprogram(name: "close_stdout", scope: !126, file: !126, line: 107, type: !659, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !121, variables: !1892)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "write_error", scope: !1894, file: !126, line: 112, type: !40)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !126, line: 111, column: 5)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !126, line: 109, column: 7)
!1896 = !DILocation(line: 109, column: 21, scope: !1895)
!1897 = !DILocation(line: 109, column: 7, scope: !1895)
!1898 = !DILocation(line: 109, column: 29, scope: !1895)
!1899 = !DILocation(line: 110, column: 7, scope: !1895)
!1900 = !DILocation(line: 110, column: 12, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1895, file: !126, discriminator: 1)
!1902 = !{i8 0, i8 2}
!1903 = !DILocation(line: 114, column: 19, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1894, file: !126, line: 113, column: 11)
!1905 = !DILocation(line: 110, column: 25, scope: !1901)
!1906 = !DILocation(line: 110, column: 28, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1895, file: !126, discriminator: 2)
!1908 = !DILocation(line: 110, column: 34, scope: !1907)
!1909 = !DILocation(line: 109, column: 7, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1891, file: !126, discriminator: 1)
!1911 = !DILocation(line: 112, column: 33, scope: !1894)
!1912 = !DILocation(line: 112, column: 19, scope: !1894)
!1913 = !DILocation(line: 113, column: 11, scope: !1904)
!1914 = !DILocation(line: 113, column: 11, scope: !1894)
!1915 = !DILocation(line: 114, column: 36, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1904, file: !126, discriminator: 1)
!1917 = !DILocation(line: 114, column: 9, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1904, file: !126, discriminator: 2)
!1919 = !DILocation(line: 114, column: 9, scope: !1904)
!1920 = !DILocation(line: 117, column: 9, scope: !1916)
!1921 = !DILocation(line: 119, column: 14, scope: !1894)
!1922 = !DILocation(line: 119, column: 7, scope: !1894)
!1923 = !DILocation(line: 122, column: 22, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1891, file: !126, line: 122, column: 8)
!1925 = !DILocation(line: 122, column: 8, scope: !1924)
!1926 = !DILocation(line: 122, column: 30, scope: !1924)
!1927 = !DILocation(line: 122, column: 8, scope: !1891)
!1928 = !DILocation(line: 123, column: 13, scope: !1924)
!1929 = !DILocation(line: 123, column: 6, scope: !1924)
!1930 = !DILocation(line: 124, column: 1, scope: !1891)
!1931 = distinct !DISubprogram(name: "fdadvise", scope: !1932, file: !1932, line: 31, type: !1933, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !1937)
!1932 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !70, !1935, !1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !711, line: 91, baseType: !739)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1937 = !{!1938, !1939, !1940, !1941, !1942}
!1938 = !DILocalVariable(name: "fd", arg: 1, scope: !1931, file: !1932, line: 31, type: !70)
!1939 = !DILocalVariable(name: "offset", arg: 2, scope: !1931, file: !1932, line: 31, type: !1935)
!1940 = !DILocalVariable(name: "len", arg: 3, scope: !1931, file: !1932, line: 31, type: !1935)
!1941 = !DILocalVariable(name: "advice", arg: 4, scope: !1931, file: !1932, line: 31, type: !1936)
!1942 = !DILocalVariable(name: "__x", scope: !1943, file: !1932, line: 34, type: !70)
!1943 = distinct !DILexicalBlock(scope: !1931, file: !1932, line: 34, column: 3)
!1944 = !DILocation(line: 31, column: 15, scope: !1931)
!1945 = !DILocation(line: 31, column: 25, scope: !1931)
!1946 = !DILocation(line: 31, column: 39, scope: !1931)
!1947 = !DILocation(line: 31, column: 54, scope: !1931)
!1948 = !DILocation(line: 34, column: 3, scope: !1943)
!1949 = !DILocation(line: 36, column: 1, scope: !1931)
!1950 = distinct !DISubprogram(name: "fadvise", scope: !1932, file: !1932, line: 39, type: !1951, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !566, variables: !1993)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !1953, !1936}
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !711, line: 49, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !713, line: 241, size: 1728, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1955, file: !713, line: 242, baseType: !70, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1955, file: !713, line: 247, baseType: !29, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1955, file: !713, line: 248, baseType: !29, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1955, file: !713, line: 249, baseType: !29, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1955, file: !713, line: 250, baseType: !29, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1955, file: !713, line: 251, baseType: !29, size: 64, offset: 320)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1955, file: !713, line: 252, baseType: !29, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1955, file: !713, line: 253, baseType: !29, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1955, file: !713, line: 254, baseType: !29, size: 64, offset: 512)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1955, file: !713, line: 256, baseType: !29, size: 64, offset: 576)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1955, file: !713, line: 257, baseType: !29, size: 64, offset: 640)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1955, file: !713, line: 258, baseType: !29, size: 64, offset: 704)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1955, file: !713, line: 260, baseType: !1970, size: 64, offset: 768)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !713, line: 156, size: 192, elements: !1972)
!1972 = !{!1973, !1974, !1976}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1971, file: !713, line: 157, baseType: !1970, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1971, file: !713, line: 158, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1971, file: !713, line: 162, baseType: !70, size: 32, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1955, file: !713, line: 262, baseType: !1975, size: 64, offset: 832)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1955, file: !713, line: 264, baseType: !70, size: 32, offset: 896)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1955, file: !713, line: 268, baseType: !70, size: 32, offset: 928)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1955, file: !713, line: 270, baseType: !739, size: 64, offset: 960)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1955, file: !713, line: 274, baseType: !167, size: 16, offset: 1024)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1955, file: !713, line: 275, baseType: !108, size: 8, offset: 1040)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1955, file: !713, line: 276, baseType: !745, size: 8, offset: 1048)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1955, file: !713, line: 280, baseType: !749, size: 64, offset: 1088)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1955, file: !713, line: 289, baseType: !752, size: 64, offset: 1152)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1955, file: !713, line: 297, baseType: !31, size: 64, offset: 1216)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1955, file: !713, line: 298, baseType: !31, size: 64, offset: 1280)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1955, file: !713, line: 299, baseType: !31, size: 64, offset: 1344)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1955, file: !713, line: 300, baseType: !31, size: 64, offset: 1408)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1955, file: !713, line: 302, baseType: !32, size: 64, offset: 1472)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1955, file: !713, line: 303, baseType: !70, size: 32, offset: 1536)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1955, file: !713, line: 305, baseType: !760, size: 160, offset: 1568)
!1993 = !{!1994, !1995}
!1994 = !DILocalVariable(name: "fp", arg: 1, scope: !1950, file: !1932, line: 39, type: !1953)
!1995 = !DILocalVariable(name: "advice", arg: 2, scope: !1950, file: !1932, line: 39, type: !1936)
!1996 = !DILocation(line: 39, column: 16, scope: !1950)
!1997 = !DILocation(line: 39, column: 30, scope: !1950)
!1998 = !DILocation(line: 41, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1950, file: !1932, line: 41, column: 7)
!2000 = !DILocation(line: 41, column: 7, scope: !1950)
!2001 = !DILocation(line: 42, column: 15, scope: !1999)
!2002 = !DILocation(line: 31, column: 15, scope: !1931, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 42, column: 5, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1999, file: !1932, discriminator: 1)
!2005 = !DILocation(line: 31, column: 25, scope: !1931, inlinedAt: !2003)
!2006 = !DILocation(line: 31, column: 39, scope: !1931, inlinedAt: !2003)
!2007 = !DILocation(line: 31, column: 54, scope: !1931, inlinedAt: !2003)
!2008 = !DILocation(line: 34, column: 3, scope: !1943, inlinedAt: !2003)
!2009 = !DILocation(line: 42, column: 5, scope: !1999)
!2010 = !DILocation(line: 43, column: 1, scope: !1950)
!2011 = distinct !DISubprogram(name: "set_program_name", scope: !140, file: !140, line: 39, type: !47, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !137, variables: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DILocalVariable(name: "argv0", arg: 1, scope: !2011, file: !140, line: 39, type: !40)
!2014 = !DILocalVariable(name: "slash", scope: !2011, file: !140, line: 46, type: !40)
!2015 = !DILocalVariable(name: "base", scope: !2011, file: !140, line: 47, type: !40)
!2016 = !DILocation(line: 39, column: 31, scope: !2011)
!2017 = !DILocation(line: 51, column: 13, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2011, file: !140, line: 51, column: 7)
!2019 = !DILocation(line: 51, column: 7, scope: !2011)
!2020 = !DILocation(line: 55, column: 14, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !140, line: 52, column: 5)
!2022 = !DILocation(line: 54, column: 7, scope: !2021)
!2023 = !DILocation(line: 56, column: 7, scope: !2021)
!2024 = !DILocation(line: 59, column: 11, scope: !2011)
!2025 = !DILocation(line: 46, column: 15, scope: !2011)
!2026 = !DILocation(line: 60, column: 17, scope: !2011)
!2027 = !DILocation(line: 60, column: 33, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2011, file: !140, discriminator: 1)
!2029 = !DILocation(line: 60, column: 11, scope: !2011)
!2030 = !DILocation(line: 47, column: 15, scope: !2011)
!2031 = !DILocation(line: 61, column: 12, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2011, file: !140, line: 61, column: 7)
!2033 = !DILocation(line: 61, column: 20, scope: !2032)
!2034 = !DILocation(line: 61, column: 25, scope: !2032)
!2035 = !DILocation(line: 61, column: 28, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2032, file: !140, discriminator: 1)
!2037 = !DILocation(line: 61, column: 61, scope: !2036)
!2038 = !DILocation(line: 61, column: 7, scope: !2028)
!2039 = !DILocation(line: 64, column: 11, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !140, line: 64, column: 11)
!2041 = distinct !DILexicalBlock(scope: !2032, file: !140, line: 62, column: 5)
!2042 = !DILocation(line: 64, column: 36, scope: !2040)
!2043 = !DILocation(line: 64, column: 11, scope: !2041)
!2044 = !DILocation(line: 66, column: 24, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2040, file: !140, line: 65, column: 9)
!2046 = !DILocation(line: 70, column: 41, scope: !2045)
!2047 = !DILocation(line: 72, column: 9, scope: !2045)
!2048 = !DILocation(line: 84, column: 16, scope: !2011)
!2049 = !DILocation(line: 90, column: 27, scope: !2011)
!2050 = !DILocation(line: 92, column: 1, scope: !2011)
!2051 = distinct !DISubprogram(name: "clone_quoting_options", scope: !171, file: !171, line: 114, type: !2052, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2055)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!2054, !2054}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!2055 = !{!2056, !2057, !2058}
!2056 = !DILocalVariable(name: "o", arg: 1, scope: !2051, file: !171, line: 114, type: !2054)
!2057 = !DILocalVariable(name: "e", scope: !2051, file: !171, line: 116, type: !70)
!2058 = !DILocalVariable(name: "p", scope: !2051, file: !171, line: 117, type: !2054)
!2059 = !DILocation(line: 114, column: 48, scope: !2051)
!2060 = !DILocation(line: 116, column: 11, scope: !2051)
!2061 = !DILocation(line: 116, column: 7, scope: !2051)
!2062 = !DILocation(line: 117, column: 40, scope: !2051)
!2063 = !DILocation(line: 117, column: 40, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2051, file: !171, discriminator: 3)
!2065 = !DILocation(line: 117, column: 31, scope: !2064)
!2066 = !DILocation(line: 117, column: 27, scope: !2051)
!2067 = !DILocation(line: 119, column: 9, scope: !2051)
!2068 = !DILocation(line: 120, column: 3, scope: !2051)
!2069 = distinct !DISubprogram(name: "get_quoting_style", scope: !171, file: !171, line: 125, type: !2070, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2074)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!5, !2072}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!2074 = !{!2075}
!2075 = !DILocalVariable(name: "o", arg: 1, scope: !2069, file: !171, line: 125, type: !2072)
!2076 = !DILocation(line: 125, column: 50, scope: !2069)
!2077 = !DILocation(line: 127, column: 11, scope: !2069)
!2078 = !DILocation(line: 127, column: 46, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2069, file: !171, discriminator: 3)
!2080 = !{!2081, !647, i64 0}
!2081 = !{!"quoting_options", !647, i64 0, !874, i64 4, !647, i64 8, !646, i64 40, !646, i64 48}
!2082 = !DILocation(line: 127, column: 3, scope: !2079)
!2083 = distinct !DISubprogram(name: "set_quoting_style", scope: !171, file: !171, line: 133, type: !2084, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !2054, !5}
!2086 = !{!2087, !2088}
!2087 = !DILocalVariable(name: "o", arg: 1, scope: !2083, file: !171, line: 133, type: !2054)
!2088 = !DILocalVariable(name: "s", arg: 2, scope: !2083, file: !171, line: 133, type: !5)
!2089 = !DILocation(line: 133, column: 44, scope: !2083)
!2090 = !DILocation(line: 133, column: 66, scope: !2083)
!2091 = !DILocation(line: 135, column: 4, scope: !2083)
!2092 = !DILocation(line: 135, column: 39, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2083, file: !171, discriminator: 3)
!2094 = !DILocation(line: 135, column: 45, scope: !2093)
!2095 = !DILocation(line: 136, column: 1, scope: !2083)
!2096 = distinct !DISubprogram(name: "set_char_quoting", scope: !171, file: !171, line: 144, type: !2097, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!70, !2054, !30, !70}
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2106, !2107}
!2100 = !DILocalVariable(name: "o", arg: 1, scope: !2096, file: !171, line: 144, type: !2054)
!2101 = !DILocalVariable(name: "c", arg: 2, scope: !2096, file: !171, line: 144, type: !30)
!2102 = !DILocalVariable(name: "i", arg: 3, scope: !2096, file: !171, line: 144, type: !70)
!2103 = !DILocalVariable(name: "uc", scope: !2096, file: !171, line: 146, type: !39)
!2104 = !DILocalVariable(name: "p", scope: !2096, file: !171, line: 147, type: !2105)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!2106 = !DILocalVariable(name: "shift", scope: !2096, file: !171, line: 149, type: !70)
!2107 = !DILocalVariable(name: "r", scope: !2096, file: !171, line: 150, type: !70)
!2108 = !DILocation(line: 144, column: 43, scope: !2096)
!2109 = !DILocation(line: 144, column: 51, scope: !2096)
!2110 = !DILocation(line: 144, column: 58, scope: !2096)
!2111 = !DILocation(line: 146, column: 17, scope: !2096)
!2112 = !DILocation(line: 148, column: 6, scope: !2096)
!2113 = !DILocation(line: 148, column: 62, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2096, file: !171, discriminator: 3)
!2115 = !DILocation(line: 148, column: 57, scope: !2114)
!2116 = !DILocation(line: 147, column: 17, scope: !2096)
!2117 = !DILocation(line: 149, column: 18, scope: !2096)
!2118 = !DILocation(line: 149, column: 15, scope: !2096)
!2119 = !DILocation(line: 149, column: 7, scope: !2096)
!2120 = !DILocation(line: 150, column: 12, scope: !2096)
!2121 = !DILocation(line: 150, column: 15, scope: !2096)
!2122 = !DILocation(line: 150, column: 25, scope: !2096)
!2123 = !DILocation(line: 150, column: 7, scope: !2096)
!2124 = !DILocation(line: 151, column: 13, scope: !2096)
!2125 = !DILocation(line: 151, column: 18, scope: !2096)
!2126 = !DILocation(line: 151, column: 23, scope: !2096)
!2127 = !DILocation(line: 151, column: 6, scope: !2096)
!2128 = !DILocation(line: 152, column: 3, scope: !2096)
!2129 = distinct !DISubprogram(name: "set_quoting_flags", scope: !171, file: !171, line: 160, type: !2130, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!70, !2054, !70}
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "o", arg: 1, scope: !2129, file: !171, line: 160, type: !2054)
!2134 = !DILocalVariable(name: "i", arg: 2, scope: !2129, file: !171, line: 160, type: !70)
!2135 = !DILocalVariable(name: "r", scope: !2129, file: !171, line: 162, type: !70)
!2136 = !DILocation(line: 160, column: 44, scope: !2129)
!2137 = !DILocation(line: 160, column: 51, scope: !2129)
!2138 = !DILocation(line: 163, column: 8, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2129, file: !171, line: 163, column: 7)
!2140 = !DILocation(line: 163, column: 7, scope: !2129)
!2141 = !DILocation(line: 165, column: 10, scope: !2129)
!2142 = !{!2081, !874, i64 4}
!2143 = !DILocation(line: 162, column: 7, scope: !2129)
!2144 = !DILocation(line: 166, column: 12, scope: !2129)
!2145 = !DILocation(line: 167, column: 3, scope: !2129)
!2146 = distinct !DISubprogram(name: "set_custom_quoting", scope: !171, file: !171, line: 171, type: !2147, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2054, !40, !40}
!2149 = !{!2150, !2151, !2152}
!2150 = !DILocalVariable(name: "o", arg: 1, scope: !2146, file: !171, line: 171, type: !2054)
!2151 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2146, file: !171, line: 172, type: !40)
!2152 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2146, file: !171, line: 172, type: !40)
!2153 = !DILocation(line: 171, column: 45, scope: !2146)
!2154 = !DILocation(line: 172, column: 33, scope: !2146)
!2155 = !DILocation(line: 172, column: 57, scope: !2146)
!2156 = !DILocation(line: 174, column: 8, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2146, file: !171, line: 174, column: 7)
!2158 = !DILocation(line: 174, column: 7, scope: !2146)
!2159 = !DILocation(line: 176, column: 6, scope: !2146)
!2160 = !DILocation(line: 176, column: 12, scope: !2146)
!2161 = !DILocation(line: 177, column: 8, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2146, file: !171, line: 177, column: 7)
!2163 = !DILocation(line: 177, column: 23, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2162, file: !171, discriminator: 1)
!2165 = !DILocation(line: 177, column: 19, scope: !2162)
!2166 = !DILocation(line: 178, column: 5, scope: !2162)
!2167 = !DILocation(line: 179, column: 6, scope: !2146)
!2168 = !DILocation(line: 179, column: 17, scope: !2146)
!2169 = !{!2081, !646, i64 40}
!2170 = !DILocation(line: 180, column: 6, scope: !2146)
!2171 = !DILocation(line: 180, column: 18, scope: !2146)
!2172 = !{!2081, !646, i64 48}
!2173 = !DILocation(line: 181, column: 1, scope: !2146)
!2174 = distinct !DISubprogram(name: "quotearg_buffer", scope: !171, file: !171, line: 776, type: !2175, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!32, !29, !32, !40, !32, !2072}
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2178 = !DILocalVariable(name: "buffer", arg: 1, scope: !2174, file: !171, line: 776, type: !29)
!2179 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2174, file: !171, line: 776, type: !32)
!2180 = !DILocalVariable(name: "arg", arg: 3, scope: !2174, file: !171, line: 777, type: !40)
!2181 = !DILocalVariable(name: "argsize", arg: 4, scope: !2174, file: !171, line: 777, type: !32)
!2182 = !DILocalVariable(name: "o", arg: 5, scope: !2174, file: !171, line: 778, type: !2072)
!2183 = !DILocalVariable(name: "p", scope: !2174, file: !171, line: 780, type: !2072)
!2184 = !DILocalVariable(name: "e", scope: !2174, file: !171, line: 781, type: !70)
!2185 = !DILocalVariable(name: "r", scope: !2174, file: !171, line: 782, type: !32)
!2186 = !DILocation(line: 776, column: 24, scope: !2174)
!2187 = !DILocation(line: 776, column: 39, scope: !2174)
!2188 = !DILocation(line: 777, column: 30, scope: !2174)
!2189 = !DILocation(line: 777, column: 42, scope: !2174)
!2190 = !DILocation(line: 778, column: 48, scope: !2174)
!2191 = !DILocation(line: 780, column: 37, scope: !2174)
!2192 = !DILocation(line: 780, column: 33, scope: !2174)
!2193 = !DILocation(line: 781, column: 11, scope: !2174)
!2194 = !DILocation(line: 781, column: 7, scope: !2174)
!2195 = !DILocation(line: 783, column: 43, scope: !2174)
!2196 = !DILocation(line: 783, column: 53, scope: !2174)
!2197 = !DILocation(line: 783, column: 60, scope: !2174)
!2198 = !DILocation(line: 784, column: 43, scope: !2174)
!2199 = !DILocation(line: 784, column: 58, scope: !2174)
!2200 = !DILocation(line: 782, column: 14, scope: !2174)
!2201 = !DILocation(line: 782, column: 10, scope: !2174)
!2202 = !DILocation(line: 785, column: 9, scope: !2174)
!2203 = !DILocation(line: 786, column: 3, scope: !2174)
!2204 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !171, file: !171, line: 248, type: !2205, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !2209)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!32, !29, !32, !40, !32, !5, !70, !2207, !40, !40}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2234, !2235, !2236, !2237, !2238, !2241, !2242, !2259, !2262, !2263, !2270}
!2210 = !DILocalVariable(name: "buffer", arg: 1, scope: !2204, file: !171, line: 248, type: !29)
!2211 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2204, file: !171, line: 248, type: !32)
!2212 = !DILocalVariable(name: "arg", arg: 3, scope: !2204, file: !171, line: 249, type: !40)
!2213 = !DILocalVariable(name: "argsize", arg: 4, scope: !2204, file: !171, line: 249, type: !32)
!2214 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2204, file: !171, line: 250, type: !5)
!2215 = !DILocalVariable(name: "flags", arg: 6, scope: !2204, file: !171, line: 250, type: !70)
!2216 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2204, file: !171, line: 251, type: !2207)
!2217 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2204, file: !171, line: 252, type: !40)
!2218 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2204, file: !171, line: 253, type: !40)
!2219 = !DILocalVariable(name: "i", scope: !2204, file: !171, line: 255, type: !32)
!2220 = !DILocalVariable(name: "len", scope: !2204, file: !171, line: 256, type: !32)
!2221 = !DILocalVariable(name: "orig_buffersize", scope: !2204, file: !171, line: 257, type: !32)
!2222 = !DILocalVariable(name: "quote_string", scope: !2204, file: !171, line: 258, type: !40)
!2223 = !DILocalVariable(name: "quote_string_len", scope: !2204, file: !171, line: 259, type: !32)
!2224 = !DILocalVariable(name: "backslash_escapes", scope: !2204, file: !171, line: 260, type: !127)
!2225 = !DILocalVariable(name: "unibyte_locale", scope: !2204, file: !171, line: 261, type: !127)
!2226 = !DILocalVariable(name: "elide_outer_quotes", scope: !2204, file: !171, line: 262, type: !127)
!2227 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2204, file: !171, line: 263, type: !127)
!2228 = !DILocalVariable(name: "encountered_single_quote", scope: !2204, file: !171, line: 264, type: !127)
!2229 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2204, file: !171, line: 265, type: !127)
!2230 = !DILocalVariable(name: "c", scope: !2231, file: !171, line: 394, type: !39)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !171, line: 393, column: 5)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !171, line: 392, column: 3)
!2233 = distinct !DILexicalBlock(scope: !2204, file: !171, line: 392, column: 3)
!2234 = !DILocalVariable(name: "esc", scope: !2231, file: !171, line: 395, type: !39)
!2235 = !DILocalVariable(name: "is_right_quote", scope: !2231, file: !171, line: 396, type: !127)
!2236 = !DILocalVariable(name: "escaping", scope: !2231, file: !171, line: 397, type: !127)
!2237 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2231, file: !171, line: 398, type: !127)
!2238 = !DILocalVariable(name: "m", scope: !2239, file: !171, line: 602, type: !32)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 600, column: 11)
!2240 = distinct !DILexicalBlock(scope: !2231, file: !171, line: 418, column: 9)
!2241 = !DILocalVariable(name: "printable", scope: !2239, file: !171, line: 604, type: !127)
!2242 = !DILocalVariable(name: "mbstate", scope: !2243, file: !171, line: 613, type: !2245)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !171, line: 612, column: 15)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !171, line: 606, column: 17)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2246, line: 107, baseType: !2247)
!2246 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2246, line: 95, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2246, line: 83, size: 64, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2248, file: !2246, line: 85, baseType: !70, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2248, file: !2246, line: 94, baseType: !2252, size: 32, offset: 32)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2248, file: !2246, line: 86, size: 32, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2252, file: !2246, line: 89, baseType: !184, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2252, file: !2246, line: 93, baseType: !2256, size: 32)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !2257)
!2257 = !{!2258}
!2258 = !DISubrange(count: 4)
!2259 = !DILocalVariable(name: "w", scope: !2260, file: !171, line: 623, type: !2261)
!2260 = distinct !DILexicalBlock(scope: !2243, file: !171, line: 622, column: 19)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !33, line: 90, baseType: !70)
!2262 = !DILocalVariable(name: "bytes", scope: !2260, file: !171, line: 624, type: !32)
!2263 = !DILocalVariable(name: "j", scope: !2264, file: !171, line: 649, type: !32)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !171, line: 648, column: 27)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !171, line: 646, column: 29)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !171, line: 641, column: 23)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !171, line: 633, column: 30)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !171, line: 628, column: 30)
!2269 = distinct !DILexicalBlock(scope: !2260, file: !171, line: 626, column: 25)
!2270 = !DILocalVariable(name: "ilim", scope: !2271, file: !171, line: 676, type: !32)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !171, line: 673, column: 15)
!2272 = distinct !DILexicalBlock(scope: !2239, file: !171, line: 672, column: 17)
!2273 = !DILocation(line: 248, column: 33, scope: !2204)
!2274 = !DILocation(line: 248, column: 48, scope: !2204)
!2275 = !DILocation(line: 249, column: 39, scope: !2204)
!2276 = !DILocation(line: 249, column: 51, scope: !2204)
!2277 = !DILocation(line: 250, column: 46, scope: !2204)
!2278 = !DILocation(line: 250, column: 65, scope: !2204)
!2279 = !DILocation(line: 251, column: 47, scope: !2204)
!2280 = !DILocation(line: 252, column: 39, scope: !2204)
!2281 = !DILocation(line: 253, column: 39, scope: !2204)
!2282 = !DILocation(line: 256, column: 10, scope: !2204)
!2283 = !DILocation(line: 257, column: 10, scope: !2204)
!2284 = !DILocation(line: 258, column: 15, scope: !2204)
!2285 = !DILocation(line: 259, column: 10, scope: !2204)
!2286 = !DILocation(line: 260, column: 8, scope: !2204)
!2287 = !DILocation(line: 261, column: 25, scope: !2204)
!2288 = !DILocation(line: 261, column: 36, scope: !2204)
!2289 = !DILocation(line: 262, column: 8, scope: !2204)
!2290 = !DILocation(line: 263, column: 8, scope: !2204)
!2291 = !DILocation(line: 264, column: 8, scope: !2204)
!2292 = !DILocation(line: 265, column: 8, scope: !2204)
!2293 = !DILocation(line: 265, column: 3, scope: !2204)
!2294 = !DILocation(line: 308, column: 3, scope: !2204)
!2295 = !DILocation(line: 315, column: 11, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2204, file: !171, line: 309, column: 5)
!2297 = !DILocation(line: 315, column: 12, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2296, file: !171, line: 315, column: 11)
!2299 = !DILocation(line: 316, column: 9, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2301, file: !171, discriminator: 1)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !171, line: 316, column: 9)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !171, line: 316, column: 9)
!2303 = !DILocation(line: 316, column: 9, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2302, file: !171, discriminator: 1)
!2305 = !DILocation(line: 316, column: 9, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2301, file: !171, discriminator: 2)
!2307 = !DILocation(line: 354, column: 26, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !171, line: 332, column: 11)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !171, line: 331, column: 13)
!2310 = distinct !DILexicalBlock(scope: !2296, file: !171, line: 330, column: 7)
!2311 = !DILocation(line: 355, column: 27, scope: !2308)
!2312 = !DILocation(line: 356, column: 11, scope: !2308)
!2313 = !DILocation(line: 357, column: 14, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !171, line: 357, column: 13)
!2315 = !DILocation(line: 357, column: 13, scope: !2310)
!2316 = !DILocation(line: 358, column: 43, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2318, file: !171, discriminator: 1)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !171, line: 358, column: 11)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !171, line: 358, column: 11)
!2320 = !DILocation(line: 358, column: 11, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2319, file: !171, discriminator: 1)
!2322 = !DILocation(line: 359, column: 13, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2324, file: !171, discriminator: 1)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !171, line: 359, column: 13)
!2325 = distinct !DILexicalBlock(scope: !2318, file: !171, line: 359, column: 13)
!2326 = !DILocation(line: 359, column: 13, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2325, file: !171, discriminator: 1)
!2328 = !DILocation(line: 359, column: 13, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2324, file: !171, discriminator: 2)
!2330 = !DILocation(line: 359, column: 13, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2325, file: !171, discriminator: 3)
!2332 = !DILocation(line: 358, column: 70, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2318, file: !171, discriminator: 2)
!2334 = distinct !{!2334, !2335, !2336}
!2335 = !DILocation(line: 358, column: 11, scope: !2319)
!2336 = !DILocation(line: 359, column: 13, scope: !2319)
!2337 = !DILocation(line: 362, column: 28, scope: !2310)
!2338 = !DILocation(line: 364, column: 7, scope: !2296)
!2339 = !DILocation(line: 367, column: 7, scope: !2296)
!2340 = !DILocation(line: 370, column: 7, scope: !2296)
!2341 = !DILocation(line: 373, column: 12, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2296, file: !171, line: 373, column: 11)
!2343 = !DILocation(line: 373, column: 11, scope: !2296)
!2344 = !DILocation(line: 378, column: 12, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2296, file: !171, line: 378, column: 11)
!2346 = !DILocation(line: 378, column: 11, scope: !2296)
!2347 = !DILocation(line: 379, column: 9, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2349, file: !171, discriminator: 1)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !171, line: 379, column: 9)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !171, line: 379, column: 9)
!2351 = !DILocation(line: 379, column: 9, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2350, file: !171, discriminator: 1)
!2353 = !DILocation(line: 379, column: 9, scope: !2354)
!2354 = !DILexicalBlockFile(scope: !2349, file: !171, discriminator: 2)
!2355 = !DILocation(line: 386, column: 7, scope: !2296)
!2356 = !DILocation(line: 389, column: 7, scope: !2296)
!2357 = !DILocation(line: 255, column: 10, scope: !2204)
!2358 = !DILocation(line: 392, column: 8, scope: !2233)
!2359 = !DILocation(line: 392, column: 27, scope: !2360)
!2360 = !DILexicalBlockFile(scope: !2232, file: !171, discriminator: 1)
!2361 = !DILocation(line: 392, column: 19, scope: !2360)
!2362 = !DILocation(line: 392, column: 60, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2232, file: !171, discriminator: 3)
!2364 = !DILocation(line: 392, column: 3, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2233, file: !171, discriminator: 4)
!2366 = !DILocation(line: 392, column: 41, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2232, file: !171, discriminator: 2)
!2368 = !DILocation(line: 392, column: 48, scope: !2367)
!2369 = !DILocation(line: 396, column: 12, scope: !2231)
!2370 = !DILocation(line: 397, column: 12, scope: !2231)
!2371 = !DILocation(line: 398, column: 12, scope: !2231)
!2372 = !DILocation(line: 401, column: 11, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2231, file: !171, line: 400, column: 11)
!2374 = !DILocation(line: 403, column: 17, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2373, file: !171, discriminator: 1)
!2376 = !DILocation(line: 404, column: 39, scope: !2373)
!2377 = !DILocation(line: 408, column: 32, scope: !2373)
!2378 = !DILocation(line: 404, column: 19, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2373, file: !171, discriminator: 2)
!2380 = !DILocation(line: 404, column: 15, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2373, file: !171, discriminator: 4)
!2382 = !DILocation(line: 409, column: 11, scope: !2373)
!2383 = !DILocation(line: 409, column: 26, scope: !2375)
!2384 = !DILocation(line: 409, column: 14, scope: !2375)
!2385 = !DILocation(line: 400, column: 11, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2231, file: !171, discriminator: 1)
!2387 = !DILocation(line: 416, column: 11, scope: !2231)
!2388 = !DILocation(line: 394, column: 21, scope: !2231)
!2389 = !DILocation(line: 417, column: 7, scope: !2231)
!2390 = !DILocation(line: 420, column: 15, scope: !2240)
!2391 = !DILocation(line: 422, column: 15, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2393, file: !171, discriminator: 1)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !171, line: 422, column: 15)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !171, line: 421, column: 13)
!2395 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 420, column: 15)
!2396 = !DILocation(line: 422, column: 15, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2398, file: !171, discriminator: 4)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !171, line: 422, column: 15)
!2399 = !DILocation(line: 422, column: 15, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2398, file: !171, discriminator: 3)
!2401 = !DILocation(line: 422, column: 15, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2403, file: !171, discriminator: 6)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !171, line: 422, column: 15)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !171, line: 422, column: 15)
!2405 = distinct !DILexicalBlock(scope: !2398, file: !171, line: 422, column: 15)
!2406 = !DILocation(line: 422, column: 15, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !2404, file: !171, discriminator: 6)
!2408 = !DILocation(line: 422, column: 15, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2403, file: !171, discriminator: 7)
!2410 = !DILocation(line: 422, column: 15, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2404, file: !171, discriminator: 8)
!2412 = !DILocation(line: 422, column: 15, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2414, file: !171, discriminator: 11)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !171, line: 422, column: 15)
!2415 = distinct !DILexicalBlock(scope: !2405, file: !171, line: 422, column: 15)
!2416 = !DILocation(line: 422, column: 15, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2415, file: !171, discriminator: 11)
!2418 = !DILocation(line: 422, column: 15, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2414, file: !171, discriminator: 12)
!2420 = !DILocation(line: 422, column: 15, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2415, file: !171, discriminator: 13)
!2422 = !DILocation(line: 422, column: 15, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2424, file: !171, discriminator: 16)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !171, line: 422, column: 15)
!2425 = distinct !DILexicalBlock(scope: !2405, file: !171, line: 422, column: 15)
!2426 = !DILocation(line: 422, column: 15, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2425, file: !171, discriminator: 16)
!2428 = !DILocation(line: 422, column: 15, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2424, file: !171, discriminator: 17)
!2430 = !DILocation(line: 422, column: 15, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2425, file: !171, discriminator: 18)
!2432 = !DILocation(line: 422, column: 15, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2405, file: !171, discriminator: 20)
!2434 = !DILocation(line: 422, column: 15, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2436, file: !171, discriminator: 22)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !171, line: 422, column: 15)
!2437 = distinct !DILexicalBlock(scope: !2393, file: !171, line: 422, column: 15)
!2438 = !DILocation(line: 422, column: 15, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2437, file: !171, discriminator: 22)
!2440 = !DILocation(line: 422, column: 15, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2436, file: !171, discriminator: 23)
!2442 = !DILocation(line: 422, column: 15, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2437, file: !171, discriminator: 24)
!2444 = !DILocation(line: 430, column: 19, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2394, file: !171, line: 429, column: 19)
!2446 = !DILocation(line: 430, column: 24, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2445, file: !171, discriminator: 1)
!2448 = !DILocation(line: 430, column: 28, scope: !2447)
!2449 = !DILocation(line: 430, column: 38, scope: !2447)
!2450 = !DILocation(line: 430, column: 48, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2445, file: !171, discriminator: 2)
!2452 = !DILocation(line: 430, column: 59, scope: !2451)
!2453 = !DILocation(line: 432, column: 19, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2455, file: !171, discriminator: 1)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !171, line: 432, column: 19)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !171, line: 432, column: 19)
!2457 = distinct !DILexicalBlock(scope: !2445, file: !171, line: 431, column: 17)
!2458 = !DILocation(line: 432, column: 19, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2456, file: !171, discriminator: 1)
!2460 = !DILocation(line: 432, column: 19, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2455, file: !171, discriminator: 2)
!2462 = !DILocation(line: 432, column: 19, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2456, file: !171, discriminator: 3)
!2464 = !DILocation(line: 433, column: 19, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2466, file: !171, discriminator: 1)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !171, line: 433, column: 19)
!2467 = distinct !DILexicalBlock(scope: !2457, file: !171, line: 433, column: 19)
!2468 = !DILocation(line: 433, column: 19, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2467, file: !171, discriminator: 1)
!2470 = !DILocation(line: 433, column: 19, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2466, file: !171, discriminator: 2)
!2472 = !DILocation(line: 433, column: 19, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2467, file: !171, discriminator: 3)
!2474 = !DILocation(line: 434, column: 17, scope: !2457)
!2475 = !DILocation(line: 441, column: 20, scope: !2395)
!2476 = !DILocation(line: 446, column: 11, scope: !2240)
!2477 = !DILocation(line: 449, column: 19, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 447, column: 13)
!2479 = !DILocation(line: 455, column: 19, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2478, file: !171, line: 454, column: 19)
!2481 = !DILocation(line: 455, column: 24, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2480, file: !171, discriminator: 1)
!2483 = !DILocation(line: 455, column: 28, scope: !2482)
!2484 = !DILocation(line: 455, column: 38, scope: !2482)
!2485 = !DILocation(line: 455, column: 47, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2480, file: !171, discriminator: 2)
!2487 = !DILocation(line: 455, column: 41, scope: !2486)
!2488 = !DILocation(line: 455, column: 52, scope: !2486)
!2489 = !DILocation(line: 454, column: 19, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2478, file: !171, discriminator: 1)
!2491 = !DILocation(line: 456, column: 25, scope: !2480)
!2492 = !DILocation(line: 456, column: 17, scope: !2480)
!2493 = !DILocation(line: 463, column: 25, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2480, file: !171, line: 457, column: 19)
!2495 = !DILocation(line: 467, column: 21, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2497, file: !171, discriminator: 1)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !171, line: 467, column: 21)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !171, line: 467, column: 21)
!2499 = !DILocation(line: 467, column: 21, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2498, file: !171, discriminator: 1)
!2501 = !DILocation(line: 467, column: 21, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2497, file: !171, discriminator: 2)
!2503 = !DILocation(line: 467, column: 21, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2498, file: !171, discriminator: 3)
!2505 = !DILocation(line: 468, column: 21, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2507, file: !171, discriminator: 1)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !171, line: 468, column: 21)
!2508 = distinct !DILexicalBlock(scope: !2494, file: !171, line: 468, column: 21)
!2509 = !DILocation(line: 468, column: 21, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2508, file: !171, discriminator: 1)
!2511 = !DILocation(line: 468, column: 21, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2507, file: !171, discriminator: 2)
!2513 = !DILocation(line: 468, column: 21, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2508, file: !171, discriminator: 3)
!2515 = !DILocation(line: 469, column: 21, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2517, file: !171, discriminator: 1)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !171, line: 469, column: 21)
!2518 = distinct !DILexicalBlock(scope: !2494, file: !171, line: 469, column: 21)
!2519 = !DILocation(line: 469, column: 21, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !2518, file: !171, discriminator: 1)
!2521 = !DILocation(line: 469, column: 21, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2517, file: !171, discriminator: 2)
!2523 = !DILocation(line: 469, column: 21, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2518, file: !171, discriminator: 3)
!2525 = !DILocation(line: 470, column: 21, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !171, discriminator: 1)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !171, line: 470, column: 21)
!2528 = distinct !DILexicalBlock(scope: !2494, file: !171, line: 470, column: 21)
!2529 = !DILocation(line: 470, column: 21, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2528, file: !171, discriminator: 1)
!2531 = !DILocation(line: 470, column: 21, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2527, file: !171, discriminator: 2)
!2533 = !DILocation(line: 470, column: 21, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2528, file: !171, discriminator: 3)
!2535 = !DILocation(line: 471, column: 21, scope: !2494)
!2536 = !DILocation(line: 395, column: 21, scope: !2231)
!2537 = !DILocation(line: 484, column: 31, scope: !2240)
!2538 = !DILocation(line: 485, column: 31, scope: !2240)
!2539 = !DILocation(line: 487, column: 31, scope: !2240)
!2540 = !DILocation(line: 488, column: 31, scope: !2240)
!2541 = !DILocation(line: 489, column: 31, scope: !2240)
!2542 = !DILocation(line: 492, column: 15, scope: !2240)
!2543 = !DILocation(line: 494, column: 19, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !171, line: 493, column: 13)
!2545 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 492, column: 15)
!2546 = !DILocation(line: 501, column: 33, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 501, column: 15)
!2548 = !DILocation(line: 506, column: 15, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 505, column: 15)
!2550 = !DILocation(line: 510, column: 15, scope: !2240)
!2551 = !DILocation(line: 518, column: 26, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 518, column: 15)
!2553 = !DILocation(line: 518, column: 15, scope: !2240)
!2554 = !DILocation(line: 518, column: 40, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2552, file: !171, discriminator: 1)
!2556 = !DILocation(line: 518, column: 47, scope: !2555)
!2557 = !DILocation(line: 522, column: 17, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 522, column: 15)
!2559 = !DILocation(line: 518, column: 18, scope: !2555)
!2560 = !DILocation(line: 518, column: 65, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2552, file: !171, discriminator: 2)
!2562 = !DILocation(line: 518, column: 15, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2240, file: !171, discriminator: 2)
!2564 = !DILocation(line: 522, column: 15, scope: !2240)
!2565 = !DILocation(line: 526, column: 11, scope: !2240)
!2566 = !DILocation(line: 541, column: 15, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 540, column: 15)
!2568 = !DILocation(line: 548, column: 15, scope: !2240)
!2569 = !DILocation(line: 550, column: 19, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !171, line: 549, column: 13)
!2571 = distinct !DILexicalBlock(scope: !2240, file: !171, line: 548, column: 15)
!2572 = !DILocation(line: 553, column: 19, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !171, line: 553, column: 19)
!2574 = !DILocation(line: 553, column: 35, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2573, file: !171, discriminator: 1)
!2576 = !DILocation(line: 553, column: 30, scope: !2573)
!2577 = !DILocation(line: 562, column: 15, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2579, file: !171, discriminator: 1)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !171, line: 562, column: 15)
!2580 = distinct !DILexicalBlock(scope: !2570, file: !171, line: 562, column: 15)
!2581 = !DILocation(line: 562, column: 15, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2580, file: !171, discriminator: 1)
!2583 = !DILocation(line: 562, column: 15, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2579, file: !171, discriminator: 2)
!2585 = !DILocation(line: 562, column: 15, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2580, file: !171, discriminator: 3)
!2587 = !DILocation(line: 563, column: 15, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !2589, file: !171, discriminator: 1)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !171, line: 563, column: 15)
!2590 = distinct !DILexicalBlock(scope: !2570, file: !171, line: 563, column: 15)
!2591 = !DILocation(line: 563, column: 15, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2590, file: !171, discriminator: 1)
!2593 = !DILocation(line: 563, column: 15, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2589, file: !171, discriminator: 2)
!2595 = !DILocation(line: 563, column: 15, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !2590, file: !171, discriminator: 3)
!2597 = !DILocation(line: 564, column: 15, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2599, file: !171, discriminator: 1)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !171, line: 564, column: 15)
!2600 = distinct !DILexicalBlock(scope: !2570, file: !171, line: 564, column: 15)
!2601 = !DILocation(line: 564, column: 15, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2600, file: !171, discriminator: 1)
!2603 = !DILocation(line: 564, column: 15, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2599, file: !171, discriminator: 2)
!2605 = !DILocation(line: 564, column: 15, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2600, file: !171, discriminator: 3)
!2607 = !DILocation(line: 566, column: 13, scope: !2570)
!2608 = !DILocation(line: 606, column: 17, scope: !2239)
!2609 = !DILocation(line: 602, column: 20, scope: !2239)
!2610 = !DILocation(line: 609, column: 29, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2244, file: !171, line: 607, column: 15)
!2612 = !{!989, !989, i64 0}
!2613 = !DILocation(line: 609, column: 27, scope: !2611)
!2614 = !DILocation(line: 604, column: 18, scope: !2239)
!2615 = !DILocation(line: 610, column: 15, scope: !2611)
!2616 = !DILocation(line: 613, column: 17, scope: !2243)
!2617 = !DILocation(line: 614, column: 17, scope: !2243)
!2618 = !DILocation(line: 618, column: 29, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2243, file: !171, line: 618, column: 21)
!2620 = !DILocation(line: 618, column: 21, scope: !2243)
!2621 = distinct !{!2621, !2622, !2623}
!2622 = !DILocation(line: 621, column: 17, scope: !2243)
!2623 = !DILocation(line: 667, column: 44, scope: !2243)
!2624 = !DILocation(line: 619, column: 29, scope: !2619)
!2625 = !DILocation(line: 619, column: 19, scope: !2619)
!2626 = !DILocation(line: 623, column: 21, scope: !2260)
!2627 = !DILocation(line: 624, column: 56, scope: !2260)
!2628 = !DILocation(line: 624, column: 50, scope: !2260)
!2629 = !DILocation(line: 625, column: 53, scope: !2260)
!2630 = !DILocation(line: 613, column: 27, scope: !2243)
!2631 = !DILocation(line: 623, column: 29, scope: !2260)
!2632 = !DILocation(line: 624, column: 36, scope: !2260)
!2633 = !DILocation(line: 624, column: 28, scope: !2260)
!2634 = !DILocation(line: 626, column: 25, scope: !2260)
!2635 = !DILocation(line: 636, column: 38, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2637, file: !171, discriminator: 1)
!2637 = distinct !DILexicalBlock(scope: !2267, file: !171, line: 634, column: 23)
!2638 = !DILocation(line: 636, column: 48, scope: !2636)
!2639 = !DILocation(line: 636, column: 51, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2637, file: !171, discriminator: 2)
!2641 = !DILocation(line: 636, column: 48, scope: !2640)
!2642 = !DILocation(line: 636, column: 25, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2637, file: !171, discriminator: 3)
!2644 = !DILocation(line: 637, column: 28, scope: !2637)
!2645 = !DILocation(line: 636, column: 34, scope: !2636)
!2646 = distinct !{!2646, !2647, !2644}
!2647 = !DILocation(line: 636, column: 25, scope: !2637)
!2648 = !DILocation(line: 650, column: 43, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2650, file: !171, discriminator: 1)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !171, line: 650, column: 29)
!2651 = distinct !DILexicalBlock(scope: !2264, file: !171, line: 650, column: 29)
!2652 = !DILocation(line: 647, column: 29, scope: !2265)
!2653 = !DILocation(line: 649, column: 36, scope: !2264)
!2654 = !DILocation(line: 651, column: 49, scope: !2650)
!2655 = !DILocation(line: 651, column: 39, scope: !2650)
!2656 = !DILocation(line: 651, column: 31, scope: !2650)
!2657 = !DILocation(line: 650, column: 53, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2650, file: !171, discriminator: 2)
!2659 = !DILocation(line: 650, column: 29, scope: !2660)
!2660 = !DILexicalBlockFile(scope: !2651, file: !171, discriminator: 1)
!2661 = distinct !{!2661, !2662, !2663}
!2662 = !DILocation(line: 650, column: 29, scope: !2651)
!2663 = !DILocation(line: 659, column: 33, scope: !2651)
!2664 = !DILocation(line: 666, column: 19, scope: !2243)
!2665 = !DILocation(line: 662, column: 41, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2266, file: !171, line: 662, column: 29)
!2667 = !DILocation(line: 662, column: 31, scope: !2666)
!2668 = !DILocation(line: 662, column: 29, scope: !2266)
!2669 = !DILocation(line: 664, column: 27, scope: !2266)
!2670 = !DILocation(line: 667, column: 26, scope: !2243)
!2671 = !DILocation(line: 667, column: 24, scope: !2243)
!2672 = !DILocation(line: 666, column: 19, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2260, file: !171, discriminator: 3)
!2674 = !DILocation(line: 668, column: 15, scope: !2244)
!2675 = !DILocation(line: 670, column: 40, scope: !2239)
!2676 = !DILocation(line: 672, column: 19, scope: !2272)
!2677 = !DILocation(line: 672, column: 45, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2272, file: !171, discriminator: 1)
!2679 = !DILocation(line: 672, column: 23, scope: !2272)
!2680 = !DILocation(line: 676, column: 33, scope: !2271)
!2681 = !DILocation(line: 676, column: 24, scope: !2271)
!2682 = !DILocation(line: 678, column: 17, scope: !2271)
!2683 = !DILocation(line: 680, column: 43, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !171, line: 680, column: 25)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !171, line: 679, column: 19)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !171, line: 678, column: 17)
!2687 = distinct !DILexicalBlock(scope: !2271, file: !171, line: 678, column: 17)
!2688 = !DILocation(line: 682, column: 25, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2690, file: !171, discriminator: 1)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !171, line: 682, column: 25)
!2691 = distinct !DILexicalBlock(scope: !2684, file: !171, line: 681, column: 23)
!2692 = !DILocation(line: 682, column: 25, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2694, file: !171, discriminator: 4)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !171, line: 682, column: 25)
!2695 = !DILocation(line: 682, column: 25, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2694, file: !171, discriminator: 3)
!2697 = !DILocation(line: 682, column: 25, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2699, file: !171, discriminator: 6)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !171, line: 682, column: 25)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !171, line: 682, column: 25)
!2701 = distinct !DILexicalBlock(scope: !2694, file: !171, line: 682, column: 25)
!2702 = !DILocation(line: 682, column: 25, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2700, file: !171, discriminator: 6)
!2704 = !DILocation(line: 682, column: 25, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2699, file: !171, discriminator: 7)
!2706 = !DILocation(line: 682, column: 25, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2700, file: !171, discriminator: 8)
!2708 = !DILocation(line: 682, column: 25, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2710, file: !171, discriminator: 11)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !171, line: 682, column: 25)
!2711 = distinct !DILexicalBlock(scope: !2701, file: !171, line: 682, column: 25)
!2712 = !DILocation(line: 682, column: 25, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2711, file: !171, discriminator: 11)
!2714 = !DILocation(line: 682, column: 25, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2710, file: !171, discriminator: 12)
!2716 = !DILocation(line: 682, column: 25, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2711, file: !171, discriminator: 13)
!2718 = !DILocation(line: 682, column: 25, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2720, file: !171, discriminator: 16)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !171, line: 682, column: 25)
!2721 = distinct !DILexicalBlock(scope: !2701, file: !171, line: 682, column: 25)
!2722 = !DILocation(line: 682, column: 25, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2721, file: !171, discriminator: 16)
!2724 = !DILocation(line: 682, column: 25, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !2720, file: !171, discriminator: 17)
!2726 = !DILocation(line: 682, column: 25, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2721, file: !171, discriminator: 18)
!2728 = !DILocation(line: 682, column: 25, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2701, file: !171, discriminator: 20)
!2730 = !DILocation(line: 682, column: 25, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !2732, file: !171, discriminator: 22)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !171, line: 682, column: 25)
!2733 = distinct !DILexicalBlock(scope: !2690, file: !171, line: 682, column: 25)
!2734 = !DILocation(line: 682, column: 25, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2733, file: !171, discriminator: 22)
!2736 = !DILocation(line: 682, column: 25, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2732, file: !171, discriminator: 23)
!2738 = !DILocation(line: 682, column: 25, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2733, file: !171, discriminator: 24)
!2740 = !DILocation(line: 683, column: 25, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2742, file: !171, discriminator: 1)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !171, line: 683, column: 25)
!2743 = distinct !DILexicalBlock(scope: !2691, file: !171, line: 683, column: 25)
!2744 = !DILocation(line: 683, column: 25, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2743, file: !171, discriminator: 1)
!2746 = !DILocation(line: 683, column: 25, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2742, file: !171, discriminator: 2)
!2748 = !DILocation(line: 683, column: 25, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2743, file: !171, discriminator: 3)
!2750 = !DILocation(line: 684, column: 25, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2752, file: !171, discriminator: 1)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !171, line: 684, column: 25)
!2753 = distinct !DILexicalBlock(scope: !2691, file: !171, line: 684, column: 25)
!2754 = !DILocation(line: 684, column: 25, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2753, file: !171, discriminator: 1)
!2756 = !DILocation(line: 684, column: 25, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !2752, file: !171, discriminator: 2)
!2758 = !DILocation(line: 684, column: 25, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2753, file: !171, discriminator: 3)
!2760 = !DILocation(line: 685, column: 38, scope: !2691)
!2761 = !DILocation(line: 685, column: 33, scope: !2691)
!2762 = !DILocation(line: 686, column: 23, scope: !2691)
!2763 = !DILocation(line: 687, column: 30, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2684, file: !171, line: 687, column: 30)
!2765 = !DILocation(line: 687, column: 30, scope: !2684)
!2766 = !DILocation(line: 689, column: 25, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2768, file: !171, discriminator: 1)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !171, line: 689, column: 25)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !171, line: 689, column: 25)
!2770 = distinct !DILexicalBlock(scope: !2764, file: !171, line: 688, column: 23)
!2771 = !DILocation(line: 689, column: 25, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2769, file: !171, discriminator: 1)
!2773 = !DILocation(line: 689, column: 25, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2768, file: !171, discriminator: 2)
!2775 = !DILocation(line: 689, column: 25, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2769, file: !171, discriminator: 3)
!2777 = !DILocation(line: 691, column: 23, scope: !2770)
!2778 = !DILocation(line: 692, column: 35, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2685, file: !171, line: 692, column: 25)
!2780 = !DILocation(line: 692, column: 30, scope: !2779)
!2781 = !DILocation(line: 692, column: 25, scope: !2685)
!2782 = !DILocation(line: 694, column: 21, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2784, file: !171, discriminator: 1)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !171, line: 694, column: 21)
!2785 = distinct !DILexicalBlock(scope: !2685, file: !171, line: 694, column: 21)
!2786 = !DILocation(line: 694, column: 21, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2784, file: !171, discriminator: 2)
!2788 = !DILocation(line: 694, column: 21, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2790, file: !171, discriminator: 4)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !171, line: 694, column: 21)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !171, line: 694, column: 21)
!2792 = distinct !DILexicalBlock(scope: !2784, file: !171, line: 694, column: 21)
!2793 = !DILocation(line: 694, column: 21, scope: !2794)
!2794 = !DILexicalBlockFile(scope: !2791, file: !171, discriminator: 4)
!2795 = !DILocation(line: 694, column: 21, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2790, file: !171, discriminator: 5)
!2797 = !DILocation(line: 694, column: 21, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2791, file: !171, discriminator: 6)
!2799 = !DILocation(line: 694, column: 21, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2801, file: !171, discriminator: 9)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !171, line: 694, column: 21)
!2802 = distinct !DILexicalBlock(scope: !2792, file: !171, line: 694, column: 21)
!2803 = !DILocation(line: 694, column: 21, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2802, file: !171, discriminator: 9)
!2805 = !DILocation(line: 694, column: 21, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2801, file: !171, discriminator: 10)
!2807 = !DILocation(line: 694, column: 21, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2802, file: !171, discriminator: 11)
!2809 = !DILocation(line: 694, column: 21, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2792, file: !171, discriminator: 13)
!2811 = !DILocation(line: 695, column: 21, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2813, file: !171, discriminator: 1)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !171, line: 695, column: 21)
!2814 = distinct !DILexicalBlock(scope: !2685, file: !171, line: 695, column: 21)
!2815 = !DILocation(line: 695, column: 21, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2814, file: !171, discriminator: 1)
!2817 = !DILocation(line: 695, column: 21, scope: !2818)
!2818 = !DILexicalBlockFile(scope: !2813, file: !171, discriminator: 2)
!2819 = !DILocation(line: 695, column: 21, scope: !2820)
!2820 = !DILexicalBlockFile(scope: !2814, file: !171, discriminator: 3)
!2821 = !DILocation(line: 696, column: 25, scope: !2685)
!2822 = !DILocation(line: 678, column: 17, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2686, file: !171, discriminator: 1)
!2824 = distinct !{!2824, !2825, !2826}
!2825 = !DILocation(line: 678, column: 17, scope: !2687)
!2826 = !DILocation(line: 697, column: 19, scope: !2687)
!2827 = !DILocation(line: 704, column: 34, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2231, file: !171, line: 704, column: 11)
!2829 = !DILocation(line: 706, column: 14, scope: !2828)
!2830 = !DILocation(line: 707, column: 14, scope: !2828)
!2831 = !DILocation(line: 707, column: 35, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2828, file: !171, discriminator: 1)
!2833 = !DILocation(line: 707, column: 17, scope: !2832)
!2834 = !DILocation(line: 707, column: 53, scope: !2832)
!2835 = !DILocation(line: 707, column: 47, scope: !2832)
!2836 = !DILocation(line: 707, column: 65, scope: !2832)
!2837 = !DILocation(line: 708, column: 15, scope: !2832)
!2838 = !DILocation(line: 708, column: 11, scope: !2828)
!2839 = !DILocation(line: 704, column: 11, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2231, file: !171, discriminator: 2)
!2841 = !DILocation(line: 712, column: 7, scope: !2842)
!2842 = !DILexicalBlockFile(scope: !2843, file: !171, discriminator: 1)
!2843 = distinct !DILexicalBlock(scope: !2231, file: !171, line: 712, column: 7)
!2844 = !DILocation(line: 712, column: 7, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2846, file: !171, discriminator: 4)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !171, line: 712, column: 7)
!2847 = !DILocation(line: 712, column: 7, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2846, file: !171, discriminator: 3)
!2849 = !DILocation(line: 712, column: 7, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2851, file: !171, discriminator: 6)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !171, line: 712, column: 7)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !171, line: 712, column: 7)
!2853 = distinct !DILexicalBlock(scope: !2846, file: !171, line: 712, column: 7)
!2854 = !DILocation(line: 712, column: 7, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2852, file: !171, discriminator: 6)
!2856 = !DILocation(line: 712, column: 7, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2851, file: !171, discriminator: 7)
!2858 = !DILocation(line: 712, column: 7, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2852, file: !171, discriminator: 8)
!2860 = !DILocation(line: 712, column: 7, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2862, file: !171, discriminator: 11)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !171, line: 712, column: 7)
!2863 = distinct !DILexicalBlock(scope: !2853, file: !171, line: 712, column: 7)
!2864 = !DILocation(line: 712, column: 7, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2863, file: !171, discriminator: 11)
!2866 = !DILocation(line: 712, column: 7, scope: !2867)
!2867 = !DILexicalBlockFile(scope: !2862, file: !171, discriminator: 12)
!2868 = !DILocation(line: 712, column: 7, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2863, file: !171, discriminator: 13)
!2870 = !DILocation(line: 712, column: 7, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !2872, file: !171, discriminator: 16)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !171, line: 712, column: 7)
!2873 = distinct !DILexicalBlock(scope: !2853, file: !171, line: 712, column: 7)
!2874 = !DILocation(line: 712, column: 7, scope: !2875)
!2875 = !DILexicalBlockFile(scope: !2873, file: !171, discriminator: 16)
!2876 = !DILocation(line: 712, column: 7, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2872, file: !171, discriminator: 17)
!2878 = !DILocation(line: 712, column: 7, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2873, file: !171, discriminator: 18)
!2880 = !DILocation(line: 712, column: 7, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !2853, file: !171, discriminator: 20)
!2882 = !DILocation(line: 712, column: 7, scope: !2883)
!2883 = !DILexicalBlockFile(scope: !2884, file: !171, discriminator: 22)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !171, line: 712, column: 7)
!2885 = distinct !DILexicalBlock(scope: !2843, file: !171, line: 712, column: 7)
!2886 = !DILocation(line: 712, column: 7, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2885, file: !171, discriminator: 22)
!2888 = !DILocation(line: 712, column: 7, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !2884, file: !171, discriminator: 23)
!2890 = !DILocation(line: 712, column: 7, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !2885, file: !171, discriminator: 24)
!2892 = !DILocation(line: 715, column: 7, scope: !2893)
!2893 = !DILexicalBlockFile(scope: !2894, file: !171, discriminator: 1)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !171, line: 715, column: 7)
!2895 = distinct !DILexicalBlock(scope: !2231, file: !171, line: 715, column: 7)
!2896 = !DILocation(line: 715, column: 7, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2894, file: !171, discriminator: 2)
!2898 = !DILocation(line: 715, column: 7, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2900, file: !171, discriminator: 4)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !171, line: 715, column: 7)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !171, line: 715, column: 7)
!2902 = distinct !DILexicalBlock(scope: !2894, file: !171, line: 715, column: 7)
!2903 = !DILocation(line: 715, column: 7, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !2901, file: !171, discriminator: 4)
!2905 = !DILocation(line: 715, column: 7, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2900, file: !171, discriminator: 5)
!2907 = !DILocation(line: 715, column: 7, scope: !2908)
!2908 = !DILexicalBlockFile(scope: !2901, file: !171, discriminator: 6)
!2909 = !DILocation(line: 715, column: 7, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2911, file: !171, discriminator: 9)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !171, line: 715, column: 7)
!2912 = distinct !DILexicalBlock(scope: !2902, file: !171, line: 715, column: 7)
!2913 = !DILocation(line: 715, column: 7, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !2912, file: !171, discriminator: 9)
!2915 = !DILocation(line: 715, column: 7, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2911, file: !171, discriminator: 10)
!2917 = !DILocation(line: 715, column: 7, scope: !2918)
!2918 = !DILexicalBlockFile(scope: !2912, file: !171, discriminator: 11)
!2919 = !DILocation(line: 715, column: 7, scope: !2920)
!2920 = !DILexicalBlockFile(scope: !2902, file: !171, discriminator: 13)
!2921 = !DILocation(line: 716, column: 7, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2923, file: !171, discriminator: 1)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !171, line: 716, column: 7)
!2924 = distinct !DILexicalBlock(scope: !2231, file: !171, line: 716, column: 7)
!2925 = !DILocation(line: 716, column: 7, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !2924, file: !171, discriminator: 1)
!2927 = !DILocation(line: 716, column: 7, scope: !2928)
!2928 = !DILexicalBlockFile(scope: !2923, file: !171, discriminator: 2)
!2929 = !DILocation(line: 716, column: 7, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2924, file: !171, discriminator: 3)
!2931 = !DILocation(line: 718, column: 13, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2231, file: !171, line: 718, column: 11)
!2933 = !DILocation(line: 718, column: 11, scope: !2231)
!2934 = !DILocation(line: 720, column: 5, scope: !2232)
!2935 = !DILocation(line: 392, column: 75, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2232, file: !171, discriminator: 5)
!2937 = !DILocation(line: 392, column: 3, scope: !2936)
!2938 = distinct !{!2938, !2939, !2940}
!2939 = !DILocation(line: 392, column: 3, scope: !2233)
!2940 = !DILocation(line: 720, column: 5, scope: !2233)
!2941 = !DILocation(line: 722, column: 11, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2204, file: !171, line: 722, column: 7)
!2943 = !DILocation(line: 722, column: 16, scope: !2942)
!2944 = !DILocation(line: 730, column: 51, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2204, file: !171, line: 730, column: 7)
!2946 = !DILocation(line: 731, column: 10, scope: !2947)
!2947 = !DILexicalBlockFile(scope: !2945, file: !171, discriminator: 1)
!2948 = !DILocation(line: 733, column: 11, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !171, line: 733, column: 11)
!2950 = distinct !DILexicalBlock(scope: !2945, file: !171, line: 732, column: 5)
!2951 = !DILocation(line: 733, column: 11, scope: !2950)
!2952 = !DILocation(line: 734, column: 16, scope: !2949)
!2953 = !DILocation(line: 734, column: 9, scope: !2949)
!2954 = !DILocation(line: 738, column: 18, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2949, file: !171, line: 738, column: 16)
!2956 = !DILocation(line: 738, column: 32, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2955, file: !171, discriminator: 1)
!2958 = !DILocation(line: 738, column: 29, scope: !2955)
!2959 = !DILocation(line: 747, column: 7, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2204, file: !171, line: 747, column: 7)
!2961 = !DILocation(line: 747, column: 20, scope: !2960)
!2962 = !DILocation(line: 748, column: 12, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2964, file: !171, discriminator: 1)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !171, line: 748, column: 5)
!2965 = distinct !DILexicalBlock(scope: !2960, file: !171, line: 748, column: 5)
!2966 = !DILocation(line: 748, column: 5, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2965, file: !171, discriminator: 1)
!2968 = !DILocation(line: 749, column: 7, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2970, file: !171, discriminator: 1)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !171, line: 749, column: 7)
!2971 = distinct !DILexicalBlock(scope: !2964, file: !171, line: 749, column: 7)
!2972 = !DILocation(line: 749, column: 7, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2971, file: !171, discriminator: 1)
!2974 = !DILocation(line: 749, column: 7, scope: !2975)
!2975 = !DILexicalBlockFile(scope: !2970, file: !171, discriminator: 2)
!2976 = !DILocation(line: 749, column: 7, scope: !2977)
!2977 = !DILexicalBlockFile(scope: !2971, file: !171, discriminator: 3)
!2978 = !DILocation(line: 748, column: 39, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !2964, file: !171, discriminator: 2)
!2980 = distinct !{!2980, !2981, !2982}
!2981 = !DILocation(line: 748, column: 5, scope: !2965)
!2982 = !DILocation(line: 749, column: 7, scope: !2965)
!2983 = !DILocation(line: 751, column: 11, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2204, file: !171, line: 751, column: 7)
!2985 = !DILocation(line: 751, column: 7, scope: !2204)
!2986 = !DILocation(line: 752, column: 5, scope: !2984)
!2987 = !DILocation(line: 752, column: 17, scope: !2984)
!2988 = !DILocation(line: 758, column: 21, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2204, file: !171, line: 758, column: 7)
!2990 = !DILocation(line: 758, column: 54, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2989, file: !171, discriminator: 1)
!2992 = !DILocation(line: 758, column: 51, scope: !2989)
!2993 = !DILocation(line: 762, column: 42, scope: !2204)
!2994 = !DILocation(line: 760, column: 10, scope: !2204)
!2995 = !DILocation(line: 760, column: 3, scope: !2204)
!2996 = !DILocation(line: 764, column: 1, scope: !2204)
!2997 = distinct !DISubprogram(name: "gettext_quote", scope: !171, file: !171, line: 199, type: !2998, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!40, !40, !5}
!3000 = !{!3001, !3002, !3003, !3004}
!3001 = !DILocalVariable(name: "msgid", arg: 1, scope: !2997, file: !171, line: 199, type: !40)
!3002 = !DILocalVariable(name: "s", arg: 2, scope: !2997, file: !171, line: 199, type: !5)
!3003 = !DILocalVariable(name: "translation", scope: !2997, file: !171, line: 201, type: !40)
!3004 = !DILocalVariable(name: "locale_code", scope: !2997, file: !171, line: 202, type: !40)
!3005 = !DILocation(line: 199, column: 28, scope: !2997)
!3006 = !DILocation(line: 199, column: 54, scope: !2997)
!3007 = !DILocation(line: 201, column: 29, scope: !2997)
!3008 = !DILocation(line: 201, column: 15, scope: !2997)
!3009 = !DILocation(line: 204, column: 19, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2997, file: !171, line: 204, column: 7)
!3011 = !DILocation(line: 204, column: 7, scope: !2997)
!3012 = !DILocation(line: 225, column: 17, scope: !2997)
!3013 = !DILocation(line: 202, column: 15, scope: !2997)
!3014 = !DILocalVariable(name: "s2", arg: 2, scope: !3015, file: !3016, line: 160, type: !40)
!3015 = distinct !DISubprogram(name: "strcaseeq0", scope: !3016, file: !3016, line: 160, type: !3017, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3019)
!3016 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!70, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30, !30}
!3019 = !{!3020, !3014, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!3020 = !DILocalVariable(name: "s1", arg: 1, scope: !3015, file: !3016, line: 160, type: !40)
!3021 = !DILocalVariable(name: "s20", arg: 3, scope: !3015, file: !3016, line: 160, type: !30)
!3022 = !DILocalVariable(name: "s21", arg: 4, scope: !3015, file: !3016, line: 160, type: !30)
!3023 = !DILocalVariable(name: "s22", arg: 5, scope: !3015, file: !3016, line: 160, type: !30)
!3024 = !DILocalVariable(name: "s23", arg: 6, scope: !3015, file: !3016, line: 160, type: !30)
!3025 = !DILocalVariable(name: "s24", arg: 7, scope: !3015, file: !3016, line: 160, type: !30)
!3026 = !DILocalVariable(name: "s25", arg: 8, scope: !3015, file: !3016, line: 160, type: !30)
!3027 = !DILocalVariable(name: "s26", arg: 9, scope: !3015, file: !3016, line: 160, type: !30)
!3028 = !DILocalVariable(name: "s27", arg: 10, scope: !3015, file: !3016, line: 160, type: !30)
!3029 = !DILocalVariable(name: "s28", arg: 11, scope: !3015, file: !3016, line: 160, type: !30)
!3030 = !DILocation(line: 160, column: 41, scope: !3015, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 226, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2997, file: !171, line: 226, column: 7)
!3033 = !DILocation(line: 160, column: 120, scope: !3015, inlinedAt: !3031)
!3034 = !DILocation(line: 160, column: 130, scope: !3015, inlinedAt: !3031)
!3035 = !DILocation(line: 162, column: 7, scope: !3036, inlinedAt: !3031)
!3036 = !DILexicalBlockFile(scope: !3037, file: !3016, discriminator: 1)
!3037 = distinct !DILexicalBlock(scope: !3015, file: !3016, line: 162, column: 7)
!3038 = !DILocalVariable(name: "s2", arg: 2, scope: !3039, file: !3016, line: 146, type: !40)
!3039 = distinct !DISubprogram(name: "strcaseeq1", scope: !3016, file: !3016, line: 146, type: !3040, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!70, !40, !40, !30, !30, !30, !30, !30, !30, !30, !30}
!3042 = !{!3043, !3038, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051}
!3043 = !DILocalVariable(name: "s1", arg: 1, scope: !3039, file: !3016, line: 146, type: !40)
!3044 = !DILocalVariable(name: "s21", arg: 3, scope: !3039, file: !3016, line: 146, type: !30)
!3045 = !DILocalVariable(name: "s22", arg: 4, scope: !3039, file: !3016, line: 146, type: !30)
!3046 = !DILocalVariable(name: "s23", arg: 5, scope: !3039, file: !3016, line: 146, type: !30)
!3047 = !DILocalVariable(name: "s24", arg: 6, scope: !3039, file: !3016, line: 146, type: !30)
!3048 = !DILocalVariable(name: "s25", arg: 7, scope: !3039, file: !3016, line: 146, type: !30)
!3049 = !DILocalVariable(name: "s26", arg: 8, scope: !3039, file: !3016, line: 146, type: !30)
!3050 = !DILocalVariable(name: "s27", arg: 9, scope: !3039, file: !3016, line: 146, type: !30)
!3051 = !DILocalVariable(name: "s28", arg: 10, scope: !3039, file: !3016, line: 146, type: !30)
!3052 = !DILocation(line: 146, column: 41, scope: !3039, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 167, column: 16, scope: !3054, inlinedAt: !3031)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !3016, line: 164, column: 11)
!3055 = distinct !DILexicalBlock(scope: !3037, file: !3016, line: 163, column: 5)
!3056 = !DILocation(line: 146, column: 110, scope: !3039, inlinedAt: !3053)
!3057 = !DILocation(line: 146, column: 120, scope: !3039, inlinedAt: !3053)
!3058 = !DILocation(line: 148, column: 7, scope: !3059, inlinedAt: !3053)
!3059 = !DILexicalBlockFile(scope: !3060, file: !3016, discriminator: 1)
!3060 = distinct !DILexicalBlock(scope: !3039, file: !3016, line: 148, column: 7)
!3061 = !DILocalVariable(name: "s2", arg: 2, scope: !3062, file: !3016, line: 132, type: !40)
!3062 = distinct !DISubprogram(name: "strcaseeq2", scope: !3016, file: !3016, line: 132, type: !3063, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!70, !40, !40, !30, !30, !30, !30, !30, !30, !30}
!3065 = !{!3066, !3061, !3067, !3068, !3069, !3070, !3071, !3072, !3073}
!3066 = !DILocalVariable(name: "s1", arg: 1, scope: !3062, file: !3016, line: 132, type: !40)
!3067 = !DILocalVariable(name: "s22", arg: 3, scope: !3062, file: !3016, line: 132, type: !30)
!3068 = !DILocalVariable(name: "s23", arg: 4, scope: !3062, file: !3016, line: 132, type: !30)
!3069 = !DILocalVariable(name: "s24", arg: 5, scope: !3062, file: !3016, line: 132, type: !30)
!3070 = !DILocalVariable(name: "s25", arg: 6, scope: !3062, file: !3016, line: 132, type: !30)
!3071 = !DILocalVariable(name: "s26", arg: 7, scope: !3062, file: !3016, line: 132, type: !30)
!3072 = !DILocalVariable(name: "s27", arg: 8, scope: !3062, file: !3016, line: 132, type: !30)
!3073 = !DILocalVariable(name: "s28", arg: 9, scope: !3062, file: !3016, line: 132, type: !30)
!3074 = !DILocation(line: 132, column: 41, scope: !3062, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 153, column: 16, scope: !3076, inlinedAt: !3053)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3016, line: 150, column: 11)
!3077 = distinct !DILexicalBlock(scope: !3060, file: !3016, line: 149, column: 5)
!3078 = !DILocation(line: 132, column: 100, scope: !3062, inlinedAt: !3075)
!3079 = !DILocation(line: 132, column: 110, scope: !3062, inlinedAt: !3075)
!3080 = !DILocation(line: 134, column: 7, scope: !3081, inlinedAt: !3075)
!3081 = !DILexicalBlockFile(scope: !3082, file: !3016, discriminator: 1)
!3082 = distinct !DILexicalBlock(scope: !3062, file: !3016, line: 134, column: 7)
!3083 = !DILocalVariable(name: "s2", arg: 2, scope: !3084, file: !3016, line: 118, type: !40)
!3084 = distinct !DISubprogram(name: "strcaseeq3", scope: !3016, file: !3016, line: 118, type: !3085, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!70, !40, !40, !30, !30, !30, !30, !30, !30}
!3087 = !{!3088, !3083, !3089, !3090, !3091, !3092, !3093, !3094}
!3088 = !DILocalVariable(name: "s1", arg: 1, scope: !3084, file: !3016, line: 118, type: !40)
!3089 = !DILocalVariable(name: "s23", arg: 3, scope: !3084, file: !3016, line: 118, type: !30)
!3090 = !DILocalVariable(name: "s24", arg: 4, scope: !3084, file: !3016, line: 118, type: !30)
!3091 = !DILocalVariable(name: "s25", arg: 5, scope: !3084, file: !3016, line: 118, type: !30)
!3092 = !DILocalVariable(name: "s26", arg: 6, scope: !3084, file: !3016, line: 118, type: !30)
!3093 = !DILocalVariable(name: "s27", arg: 7, scope: !3084, file: !3016, line: 118, type: !30)
!3094 = !DILocalVariable(name: "s28", arg: 8, scope: !3084, file: !3016, line: 118, type: !30)
!3095 = !DILocation(line: 118, column: 41, scope: !3084, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 139, column: 16, scope: !3097, inlinedAt: !3075)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3016, line: 136, column: 11)
!3098 = distinct !DILexicalBlock(scope: !3082, file: !3016, line: 135, column: 5)
!3099 = !DILocation(line: 118, column: 90, scope: !3084, inlinedAt: !3096)
!3100 = !DILocation(line: 118, column: 100, scope: !3084, inlinedAt: !3096)
!3101 = !DILocation(line: 120, column: 7, scope: !3102, inlinedAt: !3096)
!3102 = !DILexicalBlockFile(scope: !3103, file: !3016, discriminator: 2)
!3103 = distinct !DILexicalBlock(scope: !3084, file: !3016, line: 120, column: 7)
!3104 = !DILocation(line: 120, column: 7, scope: !3105, inlinedAt: !3096)
!3105 = !DILexicalBlockFile(scope: !3084, file: !3016, discriminator: 2)
!3106 = !DILocalVariable(name: "s2", arg: 2, scope: !3107, file: !3016, line: 104, type: !40)
!3107 = distinct !DISubprogram(name: "strcaseeq4", scope: !3016, file: !3016, line: 104, type: !3108, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!70, !40, !40, !30, !30, !30, !30, !30}
!3110 = !{!3111, !3106, !3112, !3113, !3114, !3115, !3116}
!3111 = !DILocalVariable(name: "s1", arg: 1, scope: !3107, file: !3016, line: 104, type: !40)
!3112 = !DILocalVariable(name: "s24", arg: 3, scope: !3107, file: !3016, line: 104, type: !30)
!3113 = !DILocalVariable(name: "s25", arg: 4, scope: !3107, file: !3016, line: 104, type: !30)
!3114 = !DILocalVariable(name: "s26", arg: 5, scope: !3107, file: !3016, line: 104, type: !30)
!3115 = !DILocalVariable(name: "s27", arg: 6, scope: !3107, file: !3016, line: 104, type: !30)
!3116 = !DILocalVariable(name: "s28", arg: 7, scope: !3107, file: !3016, line: 104, type: !30)
!3117 = !DILocation(line: 104, column: 41, scope: !3107, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 125, column: 16, scope: !3119, inlinedAt: !3096)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !3016, line: 122, column: 11)
!3120 = distinct !DILexicalBlock(scope: !3103, file: !3016, line: 121, column: 5)
!3121 = !DILocation(line: 104, column: 80, scope: !3107, inlinedAt: !3118)
!3122 = !DILocation(line: 104, column: 90, scope: !3107, inlinedAt: !3118)
!3123 = !DILocation(line: 106, column: 7, scope: !3124, inlinedAt: !3118)
!3124 = !DILexicalBlockFile(scope: !3125, file: !3016, discriminator: 2)
!3125 = distinct !DILexicalBlock(scope: !3107, file: !3016, line: 106, column: 7)
!3126 = !DILocation(line: 106, column: 7, scope: !3127, inlinedAt: !3118)
!3127 = !DILexicalBlockFile(scope: !3107, file: !3016, discriminator: 2)
!3128 = !DILocalVariable(name: "s2", arg: 2, scope: !3129, file: !3016, line: 90, type: !40)
!3129 = distinct !DISubprogram(name: "strcaseeq5", scope: !3016, file: !3016, line: 90, type: !3130, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!70, !40, !40, !30, !30, !30, !30}
!3132 = !{!3133, !3128, !3134, !3135, !3136, !3137}
!3133 = !DILocalVariable(name: "s1", arg: 1, scope: !3129, file: !3016, line: 90, type: !40)
!3134 = !DILocalVariable(name: "s25", arg: 3, scope: !3129, file: !3016, line: 90, type: !30)
!3135 = !DILocalVariable(name: "s26", arg: 4, scope: !3129, file: !3016, line: 90, type: !30)
!3136 = !DILocalVariable(name: "s27", arg: 5, scope: !3129, file: !3016, line: 90, type: !30)
!3137 = !DILocalVariable(name: "s28", arg: 6, scope: !3129, file: !3016, line: 90, type: !30)
!3138 = !DILocation(line: 90, column: 41, scope: !3129, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 111, column: 16, scope: !3140, inlinedAt: !3118)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !3016, line: 108, column: 11)
!3141 = distinct !DILexicalBlock(scope: !3125, file: !3016, line: 107, column: 5)
!3142 = !DILocation(line: 90, column: 70, scope: !3129, inlinedAt: !3139)
!3143 = !DILocation(line: 90, column: 80, scope: !3129, inlinedAt: !3139)
!3144 = !DILocation(line: 92, column: 7, scope: !3145, inlinedAt: !3139)
!3145 = !DILexicalBlockFile(scope: !3146, file: !3016, discriminator: 2)
!3146 = distinct !DILexicalBlock(scope: !3129, file: !3016, line: 92, column: 7)
!3147 = !DILocation(line: 92, column: 7, scope: !3148, inlinedAt: !3139)
!3148 = !DILexicalBlockFile(scope: !3129, file: !3016, discriminator: 2)
!3149 = !DILocation(line: 227, column: 12, scope: !3032)
!3150 = !DILocation(line: 227, column: 21, scope: !3032)
!3151 = !DILocation(line: 227, column: 5, scope: !3032)
!3152 = !DILocation(line: 146, column: 41, scope: !3039, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 167, column: 16, scope: !3054, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 228, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !2997, file: !171, line: 228, column: 7)
!3156 = !DILocation(line: 146, column: 110, scope: !3039, inlinedAt: !3153)
!3157 = !DILocation(line: 146, column: 120, scope: !3039, inlinedAt: !3153)
!3158 = !DILocation(line: 148, column: 7, scope: !3059, inlinedAt: !3153)
!3159 = !DILocation(line: 132, column: 41, scope: !3062, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 153, column: 16, scope: !3076, inlinedAt: !3153)
!3161 = !DILocation(line: 132, column: 100, scope: !3062, inlinedAt: !3160)
!3162 = !DILocation(line: 132, column: 110, scope: !3062, inlinedAt: !3160)
!3163 = !DILocation(line: 134, column: 7, scope: !3164, inlinedAt: !3160)
!3164 = !DILexicalBlockFile(scope: !3082, file: !3016, discriminator: 2)
!3165 = !DILocation(line: 134, column: 7, scope: !3166, inlinedAt: !3160)
!3166 = !DILexicalBlockFile(scope: !3062, file: !3016, discriminator: 2)
!3167 = !DILocation(line: 118, column: 41, scope: !3084, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 139, column: 16, scope: !3097, inlinedAt: !3160)
!3169 = !DILocation(line: 118, column: 90, scope: !3084, inlinedAt: !3168)
!3170 = !DILocation(line: 118, column: 100, scope: !3084, inlinedAt: !3168)
!3171 = !DILocation(line: 120, column: 7, scope: !3102, inlinedAt: !3168)
!3172 = !DILocation(line: 120, column: 7, scope: !3105, inlinedAt: !3168)
!3173 = !DILocation(line: 104, column: 41, scope: !3107, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 125, column: 16, scope: !3119, inlinedAt: !3168)
!3175 = !DILocation(line: 104, column: 80, scope: !3107, inlinedAt: !3174)
!3176 = !DILocation(line: 104, column: 90, scope: !3107, inlinedAt: !3174)
!3177 = !DILocation(line: 106, column: 7, scope: !3124, inlinedAt: !3174)
!3178 = !DILocation(line: 106, column: 7, scope: !3127, inlinedAt: !3174)
!3179 = !DILocation(line: 90, column: 41, scope: !3129, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 111, column: 16, scope: !3140, inlinedAt: !3174)
!3181 = !DILocation(line: 90, column: 70, scope: !3129, inlinedAt: !3180)
!3182 = !DILocation(line: 90, column: 80, scope: !3129, inlinedAt: !3180)
!3183 = !DILocation(line: 92, column: 7, scope: !3145, inlinedAt: !3180)
!3184 = !DILocation(line: 92, column: 7, scope: !3148, inlinedAt: !3180)
!3185 = !DILocalVariable(name: "s2", arg: 2, scope: !3186, file: !3016, line: 76, type: !40)
!3186 = distinct !DISubprogram(name: "strcaseeq6", scope: !3016, file: !3016, line: 76, type: !3187, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!70, !40, !40, !30, !30, !30}
!3189 = !{!3190, !3185, !3191, !3192, !3193}
!3190 = !DILocalVariable(name: "s1", arg: 1, scope: !3186, file: !3016, line: 76, type: !40)
!3191 = !DILocalVariable(name: "s26", arg: 3, scope: !3186, file: !3016, line: 76, type: !30)
!3192 = !DILocalVariable(name: "s27", arg: 4, scope: !3186, file: !3016, line: 76, type: !30)
!3193 = !DILocalVariable(name: "s28", arg: 5, scope: !3186, file: !3016, line: 76, type: !30)
!3194 = !DILocation(line: 76, column: 41, scope: !3186, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 97, column: 16, scope: !3196, inlinedAt: !3180)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !3016, line: 94, column: 11)
!3197 = distinct !DILexicalBlock(scope: !3146, file: !3016, line: 93, column: 5)
!3198 = !DILocation(line: 76, column: 60, scope: !3186, inlinedAt: !3195)
!3199 = !DILocation(line: 76, column: 70, scope: !3186, inlinedAt: !3195)
!3200 = !DILocation(line: 78, column: 7, scope: !3201, inlinedAt: !3195)
!3201 = !DILexicalBlockFile(scope: !3202, file: !3016, discriminator: 2)
!3202 = distinct !DILexicalBlock(scope: !3186, file: !3016, line: 78, column: 7)
!3203 = !DILocation(line: 78, column: 7, scope: !3204, inlinedAt: !3195)
!3204 = !DILexicalBlockFile(scope: !3186, file: !3016, discriminator: 2)
!3205 = !DILocalVariable(name: "s2", arg: 2, scope: !3206, file: !3016, line: 62, type: !40)
!3206 = distinct !DISubprogram(name: "strcaseeq7", scope: !3016, file: !3016, line: 62, type: !3207, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!70, !40, !40, !30, !30}
!3209 = !{!3210, !3205, !3211, !3212}
!3210 = !DILocalVariable(name: "s1", arg: 1, scope: !3206, file: !3016, line: 62, type: !40)
!3211 = !DILocalVariable(name: "s27", arg: 3, scope: !3206, file: !3016, line: 62, type: !30)
!3212 = !DILocalVariable(name: "s28", arg: 4, scope: !3206, file: !3016, line: 62, type: !30)
!3213 = !DILocation(line: 62, column: 41, scope: !3206, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 83, column: 16, scope: !3215, inlinedAt: !3195)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !3016, line: 80, column: 11)
!3216 = distinct !DILexicalBlock(scope: !3202, file: !3016, line: 79, column: 5)
!3217 = !DILocation(line: 62, column: 50, scope: !3206, inlinedAt: !3214)
!3218 = !DILocation(line: 62, column: 60, scope: !3206, inlinedAt: !3214)
!3219 = !DILocation(line: 64, column: 7, scope: !3220, inlinedAt: !3214)
!3220 = !DILexicalBlockFile(scope: !3221, file: !3016, discriminator: 2)
!3221 = distinct !DILexicalBlock(scope: !3206, file: !3016, line: 64, column: 7)
!3222 = !DILocation(line: 228, column: 7, scope: !2997)
!3223 = !DILocation(line: 229, column: 12, scope: !3155)
!3224 = !DILocation(line: 229, column: 21, scope: !3155)
!3225 = !DILocation(line: 229, column: 5, scope: !3155)
!3226 = !DILocation(line: 231, column: 13, scope: !2997)
!3227 = !DILocation(line: 231, column: 11, scope: !2997)
!3228 = !DILocation(line: 231, column: 3, scope: !2997)
!3229 = !DILocation(line: 232, column: 1, scope: !2997)
!3230 = distinct !DISubprogram(name: "quotearg_alloc", scope: !171, file: !171, line: 791, type: !3231, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!29, !40, !32, !2072}
!3233 = !{!3234, !3235, !3236}
!3234 = !DILocalVariable(name: "arg", arg: 1, scope: !3230, file: !171, line: 791, type: !40)
!3235 = !DILocalVariable(name: "argsize", arg: 2, scope: !3230, file: !171, line: 791, type: !32)
!3236 = !DILocalVariable(name: "o", arg: 3, scope: !3230, file: !171, line: 792, type: !2072)
!3237 = !DILocation(line: 791, column: 29, scope: !3230)
!3238 = !DILocation(line: 791, column: 41, scope: !3230)
!3239 = !DILocation(line: 792, column: 47, scope: !3230)
!3240 = !DILocalVariable(name: "arg", arg: 1, scope: !3241, file: !171, line: 804, type: !40)
!3241 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !171, file: !171, line: 804, type: !3242, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!29, !40, !32, !585, !2072}
!3244 = !{!3240, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252}
!3245 = !DILocalVariable(name: "argsize", arg: 2, scope: !3241, file: !171, line: 804, type: !32)
!3246 = !DILocalVariable(name: "size", arg: 3, scope: !3241, file: !171, line: 804, type: !585)
!3247 = !DILocalVariable(name: "o", arg: 4, scope: !3241, file: !171, line: 805, type: !2072)
!3248 = !DILocalVariable(name: "p", scope: !3241, file: !171, line: 807, type: !2072)
!3249 = !DILocalVariable(name: "e", scope: !3241, file: !171, line: 808, type: !70)
!3250 = !DILocalVariable(name: "flags", scope: !3241, file: !171, line: 810, type: !70)
!3251 = !DILocalVariable(name: "bufsize", scope: !3241, file: !171, line: 811, type: !32)
!3252 = !DILocalVariable(name: "buf", scope: !3241, file: !171, line: 815, type: !29)
!3253 = !DILocation(line: 804, column: 33, scope: !3241, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 794, column: 10, scope: !3230)
!3255 = !DILocation(line: 804, column: 45, scope: !3241, inlinedAt: !3254)
!3256 = !DILocation(line: 804, column: 62, scope: !3241, inlinedAt: !3254)
!3257 = !DILocation(line: 805, column: 51, scope: !3241, inlinedAt: !3254)
!3258 = !DILocation(line: 807, column: 37, scope: !3241, inlinedAt: !3254)
!3259 = !DILocation(line: 807, column: 33, scope: !3241, inlinedAt: !3254)
!3260 = !DILocation(line: 808, column: 11, scope: !3241, inlinedAt: !3254)
!3261 = !DILocation(line: 808, column: 7, scope: !3241, inlinedAt: !3254)
!3262 = !DILocation(line: 810, column: 18, scope: !3241, inlinedAt: !3254)
!3263 = !DILocation(line: 810, column: 24, scope: !3241, inlinedAt: !3254)
!3264 = !DILocation(line: 810, column: 7, scope: !3241, inlinedAt: !3254)
!3265 = !DILocation(line: 811, column: 69, scope: !3241, inlinedAt: !3254)
!3266 = !DILocation(line: 812, column: 53, scope: !3241, inlinedAt: !3254)
!3267 = !DILocation(line: 813, column: 49, scope: !3241, inlinedAt: !3254)
!3268 = !DILocation(line: 814, column: 49, scope: !3241, inlinedAt: !3254)
!3269 = !DILocation(line: 811, column: 20, scope: !3241, inlinedAt: !3254)
!3270 = !DILocation(line: 814, column: 62, scope: !3241, inlinedAt: !3254)
!3271 = !DILocation(line: 811, column: 10, scope: !3241, inlinedAt: !3254)
!3272 = !DILocalVariable(name: "n", arg: 1, scope: !3273, file: !581, line: 220, type: !32)
!3273 = distinct !DISubprogram(name: "xcharalloc", scope: !581, file: !581, line: 220, type: !3274, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!29, !32}
!3276 = !{!3272}
!3277 = !DILocation(line: 220, column: 20, scope: !3273, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 815, column: 15, scope: !3241, inlinedAt: !3254)
!3279 = !DILocation(line: 222, column: 10, scope: !3273, inlinedAt: !3278)
!3280 = !DILocation(line: 815, column: 9, scope: !3241, inlinedAt: !3254)
!3281 = !DILocation(line: 816, column: 60, scope: !3241, inlinedAt: !3254)
!3282 = !DILocation(line: 818, column: 32, scope: !3241, inlinedAt: !3254)
!3283 = !DILocation(line: 818, column: 47, scope: !3241, inlinedAt: !3254)
!3284 = !DILocation(line: 816, column: 3, scope: !3241, inlinedAt: !3254)
!3285 = !DILocation(line: 819, column: 9, scope: !3241, inlinedAt: !3254)
!3286 = !DILocation(line: 794, column: 3, scope: !3230)
!3287 = !DILocation(line: 804, column: 33, scope: !3241)
!3288 = !DILocation(line: 804, column: 45, scope: !3241)
!3289 = !DILocation(line: 804, column: 62, scope: !3241)
!3290 = !DILocation(line: 805, column: 51, scope: !3241)
!3291 = !DILocation(line: 807, column: 37, scope: !3241)
!3292 = !DILocation(line: 807, column: 33, scope: !3241)
!3293 = !DILocation(line: 808, column: 11, scope: !3241)
!3294 = !DILocation(line: 808, column: 7, scope: !3241)
!3295 = !DILocation(line: 810, column: 18, scope: !3241)
!3296 = !DILocation(line: 810, column: 27, scope: !3241)
!3297 = !DILocation(line: 810, column: 24, scope: !3241)
!3298 = !DILocation(line: 810, column: 7, scope: !3241)
!3299 = !DILocation(line: 811, column: 69, scope: !3241)
!3300 = !DILocation(line: 812, column: 53, scope: !3241)
!3301 = !DILocation(line: 813, column: 49, scope: !3241)
!3302 = !DILocation(line: 814, column: 49, scope: !3241)
!3303 = !DILocation(line: 811, column: 20, scope: !3241)
!3304 = !DILocation(line: 814, column: 62, scope: !3241)
!3305 = !DILocation(line: 811, column: 10, scope: !3241)
!3306 = !DILocation(line: 220, column: 20, scope: !3273, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 815, column: 15, scope: !3241)
!3308 = !DILocation(line: 222, column: 10, scope: !3273, inlinedAt: !3307)
!3309 = !DILocation(line: 815, column: 9, scope: !3241)
!3310 = !DILocation(line: 816, column: 60, scope: !3241)
!3311 = !DILocation(line: 818, column: 32, scope: !3241)
!3312 = !DILocation(line: 818, column: 47, scope: !3241)
!3313 = !DILocation(line: 816, column: 3, scope: !3241)
!3314 = !DILocation(line: 819, column: 9, scope: !3241)
!3315 = !DILocation(line: 820, column: 7, scope: !3241)
!3316 = !DILocation(line: 821, column: 11, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3241, file: !171, line: 820, column: 7)
!3318 = !DILocation(line: 821, column: 5, scope: !3317)
!3319 = !DILocation(line: 822, column: 3, scope: !3241)
!3320 = distinct !DISubprogram(name: "quotearg_free", scope: !171, file: !171, line: 840, type: !659, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3321)
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "sv", scope: !3320, file: !171, line: 842, type: !196)
!3323 = !DILocalVariable(name: "i", scope: !3320, file: !171, line: 843, type: !70)
!3324 = !DILocation(line: 842, column: 24, scope: !3320)
!3325 = !DILocation(line: 842, column: 19, scope: !3320)
!3326 = !DILocation(line: 843, column: 7, scope: !3320)
!3327 = !DILocation(line: 844, column: 19, scope: !3328)
!3328 = !DILexicalBlockFile(scope: !3329, file: !171, discriminator: 1)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !171, line: 844, column: 3)
!3330 = distinct !DILexicalBlock(scope: !3320, file: !171, line: 844, column: 3)
!3331 = !DILocation(line: 844, column: 17, scope: !3328)
!3332 = !DILocation(line: 844, column: 3, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3330, file: !171, discriminator: 1)
!3334 = !DILocation(line: 845, column: 17, scope: !3329)
!3335 = !{!3336, !646, i64 8}
!3336 = !{!"slotvec", !952, i64 0, !646, i64 8}
!3337 = !DILocation(line: 845, column: 5, scope: !3329)
!3338 = !DILocation(line: 844, column: 28, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3329, file: !171, discriminator: 2)
!3340 = distinct !{!3340, !3341, !3342}
!3341 = !DILocation(line: 844, column: 3, scope: !3330)
!3342 = !DILocation(line: 845, column: 20, scope: !3330)
!3343 = !DILocation(line: 846, column: 13, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3320, file: !171, line: 846, column: 7)
!3345 = !DILocation(line: 846, column: 17, scope: !3344)
!3346 = !DILocation(line: 846, column: 7, scope: !3320)
!3347 = !DILocation(line: 848, column: 7, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3344, file: !171, line: 847, column: 5)
!3349 = !DILocation(line: 849, column: 21, scope: !3348)
!3350 = !{!3336, !952, i64 0}
!3351 = !DILocation(line: 850, column: 20, scope: !3348)
!3352 = !DILocation(line: 851, column: 5, scope: !3348)
!3353 = !DILocation(line: 852, column: 10, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3320, file: !171, line: 852, column: 7)
!3355 = !DILocation(line: 852, column: 7, scope: !3320)
!3356 = !DILocation(line: 854, column: 13, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3354, file: !171, line: 853, column: 5)
!3358 = !DILocation(line: 854, column: 7, scope: !3357)
!3359 = !DILocation(line: 855, column: 15, scope: !3357)
!3360 = !DILocation(line: 856, column: 5, scope: !3357)
!3361 = !DILocation(line: 857, column: 10, scope: !3320)
!3362 = !DILocation(line: 858, column: 1, scope: !3320)
!3363 = distinct !DISubprogram(name: "quotearg_n", scope: !171, file: !171, line: 922, type: !3364, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!29, !70, !40}
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !171, line: 922, type: !70)
!3368 = !DILocalVariable(name: "arg", arg: 2, scope: !3363, file: !171, line: 922, type: !40)
!3369 = !DILocation(line: 922, column: 17, scope: !3363)
!3370 = !DILocation(line: 922, column: 32, scope: !3363)
!3371 = !DILocation(line: 924, column: 10, scope: !3363)
!3372 = !DILocation(line: 924, column: 3, scope: !3363)
!3373 = distinct !DISubprogram(name: "quotearg_n_options", scope: !171, file: !171, line: 869, type: !3374, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!29, !70, !40, !32, !2072}
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3383, !3386, !3388, !3389, !3390}
!3377 = !DILocalVariable(name: "n", arg: 1, scope: !3373, file: !171, line: 869, type: !70)
!3378 = !DILocalVariable(name: "arg", arg: 2, scope: !3373, file: !171, line: 869, type: !40)
!3379 = !DILocalVariable(name: "argsize", arg: 3, scope: !3373, file: !171, line: 869, type: !32)
!3380 = !DILocalVariable(name: "options", arg: 4, scope: !3373, file: !171, line: 870, type: !2072)
!3381 = !DILocalVariable(name: "e", scope: !3373, file: !171, line: 872, type: !70)
!3382 = !DILocalVariable(name: "sv", scope: !3373, file: !171, line: 874, type: !196)
!3383 = !DILocalVariable(name: "preallocated", scope: !3384, file: !171, line: 881, type: !127)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !171, line: 880, column: 5)
!3385 = distinct !DILexicalBlock(scope: !3373, file: !171, line: 879, column: 7)
!3386 = !DILocalVariable(name: "size", scope: !3387, file: !171, line: 894, type: !32)
!3387 = distinct !DILexicalBlock(scope: !3373, file: !171, line: 893, column: 3)
!3388 = !DILocalVariable(name: "val", scope: !3387, file: !171, line: 895, type: !29)
!3389 = !DILocalVariable(name: "flags", scope: !3387, file: !171, line: 897, type: !70)
!3390 = !DILocalVariable(name: "qsize", scope: !3387, file: !171, line: 898, type: !32)
!3391 = !DILocation(line: 869, column: 25, scope: !3373)
!3392 = !DILocation(line: 869, column: 40, scope: !3373)
!3393 = !DILocation(line: 869, column: 52, scope: !3373)
!3394 = !DILocation(line: 870, column: 51, scope: !3373)
!3395 = !DILocation(line: 872, column: 11, scope: !3373)
!3396 = !DILocation(line: 872, column: 7, scope: !3373)
!3397 = !DILocation(line: 874, column: 24, scope: !3373)
!3398 = !DILocation(line: 874, column: 19, scope: !3373)
!3399 = !DILocation(line: 876, column: 9, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3373, file: !171, line: 876, column: 7)
!3401 = !DILocation(line: 876, column: 7, scope: !3373)
!3402 = !DILocation(line: 877, column: 5, scope: !3400)
!3403 = !DILocation(line: 879, column: 7, scope: !3385)
!3404 = !DILocation(line: 879, column: 14, scope: !3385)
!3405 = !DILocation(line: 879, column: 7, scope: !3373)
!3406 = !DILocation(line: 881, column: 31, scope: !3384)
!3407 = !DILocation(line: 883, column: 67, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3384, file: !171, line: 883, column: 11)
!3409 = !DILocation(line: 883, column: 11, scope: !3384)
!3410 = !DILocation(line: 884, column: 9, scope: !3408)
!3411 = !DILocation(line: 886, column: 32, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3384, file: !171, discriminator: 3)
!3413 = !DILocation(line: 886, column: 61, scope: !3412)
!3414 = !DILocation(line: 886, column: 58, scope: !3412)
!3415 = !DILocation(line: 886, column: 66, scope: !3412)
!3416 = !DILocation(line: 886, column: 22, scope: !3412)
!3417 = !DILocation(line: 886, column: 15, scope: !3412)
!3418 = !DILocation(line: 887, column: 11, scope: !3384)
!3419 = !DILocation(line: 888, column: 15, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3384, file: !171, line: 887, column: 11)
!3421 = !{i64 0, i64 8, !951, i64 8, i64 8, !645}
!3422 = !DILocation(line: 888, column: 9, scope: !3420)
!3423 = !DILocation(line: 889, column: 20, scope: !3384)
!3424 = !DILocation(line: 889, column: 18, scope: !3384)
!3425 = !DILocation(line: 889, column: 7, scope: !3384)
!3426 = !DILocation(line: 889, column: 38, scope: !3384)
!3427 = !DILocation(line: 889, column: 31, scope: !3384)
!3428 = !DILocation(line: 889, column: 48, scope: !3384)
!3429 = !DILocation(line: 890, column: 14, scope: !3384)
!3430 = !DILocation(line: 891, column: 5, scope: !3384)
!3431 = !DILocation(line: 894, column: 19, scope: !3387)
!3432 = !DILocation(line: 894, column: 25, scope: !3387)
!3433 = !DILocation(line: 894, column: 12, scope: !3387)
!3434 = !DILocation(line: 895, column: 23, scope: !3387)
!3435 = !DILocation(line: 895, column: 11, scope: !3387)
!3436 = !DILocation(line: 897, column: 26, scope: !3387)
!3437 = !DILocation(line: 897, column: 32, scope: !3387)
!3438 = !DILocation(line: 897, column: 9, scope: !3387)
!3439 = !DILocation(line: 899, column: 55, scope: !3387)
!3440 = !DILocation(line: 900, column: 46, scope: !3387)
!3441 = !DILocation(line: 901, column: 55, scope: !3387)
!3442 = !DILocation(line: 902, column: 55, scope: !3387)
!3443 = !DILocation(line: 898, column: 20, scope: !3387)
!3444 = !DILocation(line: 898, column: 12, scope: !3387)
!3445 = !DILocation(line: 904, column: 14, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3387, file: !171, line: 904, column: 9)
!3447 = !DILocation(line: 904, column: 9, scope: !3387)
!3448 = !DILocation(line: 906, column: 35, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3446, file: !171, line: 905, column: 7)
!3450 = !DILocation(line: 906, column: 20, scope: !3449)
!3451 = !DILocation(line: 907, column: 17, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3449, file: !171, line: 907, column: 13)
!3453 = !DILocation(line: 907, column: 13, scope: !3449)
!3454 = !DILocation(line: 908, column: 11, scope: !3452)
!3455 = !DILocation(line: 220, column: 20, scope: !3273, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 909, column: 27, scope: !3449)
!3457 = !DILocation(line: 222, column: 10, scope: !3273, inlinedAt: !3456)
!3458 = !DILocation(line: 909, column: 19, scope: !3449)
!3459 = !DILocation(line: 910, column: 69, scope: !3449)
!3460 = !DILocation(line: 912, column: 44, scope: !3449)
!3461 = !DILocation(line: 913, column: 44, scope: !3449)
!3462 = !DILocation(line: 910, column: 9, scope: !3449)
!3463 = !DILocation(line: 914, column: 7, scope: !3449)
!3464 = !DILocation(line: 916, column: 11, scope: !3387)
!3465 = !DILocation(line: 917, column: 5, scope: !3387)
!3466 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !171, file: !171, line: 928, type: !3467, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!29, !70, !40, !32}
!3469 = !{!3470, !3471, !3472}
!3470 = !DILocalVariable(name: "n", arg: 1, scope: !3466, file: !171, line: 928, type: !70)
!3471 = !DILocalVariable(name: "arg", arg: 2, scope: !3466, file: !171, line: 928, type: !40)
!3472 = !DILocalVariable(name: "argsize", arg: 3, scope: !3466, file: !171, line: 928, type: !32)
!3473 = !DILocation(line: 928, column: 21, scope: !3466)
!3474 = !DILocation(line: 928, column: 36, scope: !3466)
!3475 = !DILocation(line: 928, column: 48, scope: !3466)
!3476 = !DILocation(line: 930, column: 10, scope: !3466)
!3477 = !DILocation(line: 930, column: 3, scope: !3466)
!3478 = distinct !DISubprogram(name: "quotearg", scope: !171, file: !171, line: 934, type: !3479, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!29, !40}
!3481 = !{!3482}
!3482 = !DILocalVariable(name: "arg", arg: 1, scope: !3478, file: !171, line: 934, type: !40)
!3483 = !DILocation(line: 934, column: 23, scope: !3478)
!3484 = !DILocation(line: 922, column: 17, scope: !3363, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 936, column: 10, scope: !3478)
!3486 = !DILocation(line: 922, column: 32, scope: !3363, inlinedAt: !3485)
!3487 = !DILocation(line: 924, column: 10, scope: !3363, inlinedAt: !3485)
!3488 = !DILocation(line: 936, column: 3, scope: !3478)
!3489 = distinct !DISubprogram(name: "quotearg_mem", scope: !171, file: !171, line: 940, type: !3490, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!29, !40, !32}
!3492 = !{!3493, !3494}
!3493 = !DILocalVariable(name: "arg", arg: 1, scope: !3489, file: !171, line: 940, type: !40)
!3494 = !DILocalVariable(name: "argsize", arg: 2, scope: !3489, file: !171, line: 940, type: !32)
!3495 = !DILocation(line: 940, column: 27, scope: !3489)
!3496 = !DILocation(line: 940, column: 39, scope: !3489)
!3497 = !DILocation(line: 928, column: 21, scope: !3466, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 942, column: 10, scope: !3489)
!3499 = !DILocation(line: 928, column: 36, scope: !3466, inlinedAt: !3498)
!3500 = !DILocation(line: 928, column: 48, scope: !3466, inlinedAt: !3498)
!3501 = !DILocation(line: 930, column: 10, scope: !3466, inlinedAt: !3498)
!3502 = !DILocation(line: 942, column: 3, scope: !3489)
!3503 = distinct !DISubprogram(name: "quotearg_n_style", scope: !171, file: !171, line: 946, type: !3504, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!29, !70, !5, !40}
!3506 = !{!3507, !3508, !3509, !3510}
!3507 = !DILocalVariable(name: "n", arg: 1, scope: !3503, file: !171, line: 946, type: !70)
!3508 = !DILocalVariable(name: "s", arg: 2, scope: !3503, file: !171, line: 946, type: !5)
!3509 = !DILocalVariable(name: "arg", arg: 3, scope: !3503, file: !171, line: 946, type: !40)
!3510 = !DILocalVariable(name: "o", scope: !3503, file: !171, line: 948, type: !2073)
!3511 = !DILocalVariable(name: "o", scope: !3512, file: !171, line: 187, type: !178)
!3512 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !171, file: !171, line: 185, type: !3513, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!178, !5}
!3515 = !{!3516, !3511}
!3516 = !DILocalVariable(name: "style", arg: 1, scope: !3512, file: !171, line: 185, type: !5)
!3517 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3518 = !DILocation(line: 187, column: 26, scope: !3512, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 948, column: 36, scope: !3503)
!3520 = !DILocation(line: 946, column: 23, scope: !3503)
!3521 = !DILocation(line: 946, column: 45, scope: !3503)
!3522 = !DILocation(line: 946, column: 60, scope: !3503)
!3523 = !DILocation(line: 948, column: 3, scope: !3503)
!3524 = !DILocation(line: 948, column: 32, scope: !3503)
!3525 = !DILocation(line: 185, column: 48, scope: !3512, inlinedAt: !3519)
!3526 = !DILocation(line: 187, column: 3, scope: !3512, inlinedAt: !3519)
!3527 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3528 = !DILocation(line: 188, column: 13, scope: !3529, inlinedAt: !3519)
!3529 = distinct !DILexicalBlock(scope: !3512, file: !171, line: 188, column: 7)
!3530 = !DILocation(line: 188, column: 7, scope: !3512, inlinedAt: !3519)
!3531 = !DILocation(line: 189, column: 5, scope: !3529, inlinedAt: !3519)
!3532 = !{!3533}
!3533 = distinct !{!3533, !3534, !"quoting_options_from_style: argument 0"}
!3534 = distinct !{!3534, !"quoting_options_from_style"}
!3535 = !DILocation(line: 191, column: 10, scope: !3512, inlinedAt: !3519)
!3536 = !DILocation(line: 192, column: 1, scope: !3512, inlinedAt: !3519)
!3537 = !DILocation(line: 949, column: 10, scope: !3503)
!3538 = !DILocation(line: 950, column: 1, scope: !3503)
!3539 = !DILocation(line: 949, column: 3, scope: !3503)
!3540 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !171, file: !171, line: 953, type: !3541, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!29, !70, !5, !40, !32}
!3543 = !{!3544, !3545, !3546, !3547, !3548}
!3544 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !171, line: 953, type: !70)
!3545 = !DILocalVariable(name: "s", arg: 2, scope: !3540, file: !171, line: 953, type: !5)
!3546 = !DILocalVariable(name: "arg", arg: 3, scope: !3540, file: !171, line: 954, type: !40)
!3547 = !DILocalVariable(name: "argsize", arg: 4, scope: !3540, file: !171, line: 954, type: !32)
!3548 = !DILocalVariable(name: "o", scope: !3540, file: !171, line: 956, type: !2073)
!3549 = !DILocation(line: 187, column: 26, scope: !3512, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 956, column: 36, scope: !3540)
!3551 = !DILocation(line: 953, column: 27, scope: !3540)
!3552 = !DILocation(line: 953, column: 49, scope: !3540)
!3553 = !DILocation(line: 954, column: 35, scope: !3540)
!3554 = !DILocation(line: 954, column: 47, scope: !3540)
!3555 = !DILocation(line: 956, column: 3, scope: !3540)
!3556 = !DILocation(line: 956, column: 32, scope: !3540)
!3557 = !DILocation(line: 185, column: 48, scope: !3512, inlinedAt: !3550)
!3558 = !DILocation(line: 187, column: 3, scope: !3512, inlinedAt: !3550)
!3559 = !DILocation(line: 188, column: 13, scope: !3529, inlinedAt: !3550)
!3560 = !DILocation(line: 188, column: 7, scope: !3512, inlinedAt: !3550)
!3561 = !DILocation(line: 189, column: 5, scope: !3529, inlinedAt: !3550)
!3562 = !{!3563}
!3563 = distinct !{!3563, !3564, !"quoting_options_from_style: argument 0"}
!3564 = distinct !{!3564, !"quoting_options_from_style"}
!3565 = !DILocation(line: 191, column: 10, scope: !3512, inlinedAt: !3550)
!3566 = !DILocation(line: 192, column: 1, scope: !3512, inlinedAt: !3550)
!3567 = !DILocation(line: 957, column: 10, scope: !3540)
!3568 = !DILocation(line: 958, column: 1, scope: !3540)
!3569 = !DILocation(line: 957, column: 3, scope: !3540)
!3570 = distinct !DISubprogram(name: "quotearg_style", scope: !171, file: !171, line: 961, type: !3571, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!29, !5, !40}
!3573 = !{!3574, !3575}
!3574 = !DILocalVariable(name: "s", arg: 1, scope: !3570, file: !171, line: 961, type: !5)
!3575 = !DILocalVariable(name: "arg", arg: 2, scope: !3570, file: !171, line: 961, type: !40)
!3576 = !DILocation(line: 187, column: 26, scope: !3512, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 948, column: 36, scope: !3503, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 963, column: 10, scope: !3570)
!3579 = !DILocation(line: 961, column: 36, scope: !3570)
!3580 = !DILocation(line: 961, column: 51, scope: !3570)
!3581 = !DILocation(line: 946, column: 23, scope: !3503, inlinedAt: !3578)
!3582 = !DILocation(line: 946, column: 45, scope: !3503, inlinedAt: !3578)
!3583 = !DILocation(line: 946, column: 60, scope: !3503, inlinedAt: !3578)
!3584 = !DILocation(line: 948, column: 3, scope: !3503, inlinedAt: !3578)
!3585 = !DILocation(line: 948, column: 32, scope: !3503, inlinedAt: !3578)
!3586 = !DILocation(line: 185, column: 48, scope: !3512, inlinedAt: !3577)
!3587 = !DILocation(line: 187, column: 3, scope: !3512, inlinedAt: !3577)
!3588 = !DILocation(line: 188, column: 13, scope: !3529, inlinedAt: !3577)
!3589 = !DILocation(line: 188, column: 7, scope: !3512, inlinedAt: !3577)
!3590 = !DILocation(line: 189, column: 5, scope: !3529, inlinedAt: !3577)
!3591 = !{!3592}
!3592 = distinct !{!3592, !3593, !"quoting_options_from_style: argument 0"}
!3593 = distinct !{!3593, !"quoting_options_from_style"}
!3594 = !DILocation(line: 191, column: 10, scope: !3512, inlinedAt: !3577)
!3595 = !DILocation(line: 192, column: 1, scope: !3512, inlinedAt: !3577)
!3596 = !DILocation(line: 949, column: 10, scope: !3503, inlinedAt: !3578)
!3597 = !DILocation(line: 950, column: 1, scope: !3503, inlinedAt: !3578)
!3598 = !DILocation(line: 963, column: 3, scope: !3570)
!3599 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !171, file: !171, line: 967, type: !3600, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!29, !5, !40, !32}
!3602 = !{!3603, !3604, !3605}
!3603 = !DILocalVariable(name: "s", arg: 1, scope: !3599, file: !171, line: 967, type: !5)
!3604 = !DILocalVariable(name: "arg", arg: 2, scope: !3599, file: !171, line: 967, type: !40)
!3605 = !DILocalVariable(name: "argsize", arg: 3, scope: !3599, file: !171, line: 967, type: !32)
!3606 = !DILocation(line: 187, column: 26, scope: !3512, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 956, column: 36, scope: !3540, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 969, column: 10, scope: !3599)
!3609 = !DILocation(line: 967, column: 40, scope: !3599)
!3610 = !DILocation(line: 967, column: 55, scope: !3599)
!3611 = !DILocation(line: 967, column: 67, scope: !3599)
!3612 = !DILocation(line: 953, column: 27, scope: !3540, inlinedAt: !3608)
!3613 = !DILocation(line: 953, column: 49, scope: !3540, inlinedAt: !3608)
!3614 = !DILocation(line: 954, column: 35, scope: !3540, inlinedAt: !3608)
!3615 = !DILocation(line: 954, column: 47, scope: !3540, inlinedAt: !3608)
!3616 = !DILocation(line: 956, column: 3, scope: !3540, inlinedAt: !3608)
!3617 = !DILocation(line: 956, column: 32, scope: !3540, inlinedAt: !3608)
!3618 = !DILocation(line: 185, column: 48, scope: !3512, inlinedAt: !3607)
!3619 = !DILocation(line: 187, column: 3, scope: !3512, inlinedAt: !3607)
!3620 = !DILocation(line: 188, column: 13, scope: !3529, inlinedAt: !3607)
!3621 = !DILocation(line: 188, column: 7, scope: !3512, inlinedAt: !3607)
!3622 = !DILocation(line: 189, column: 5, scope: !3529, inlinedAt: !3607)
!3623 = !{!3624}
!3624 = distinct !{!3624, !3625, !"quoting_options_from_style: argument 0"}
!3625 = distinct !{!3625, !"quoting_options_from_style"}
!3626 = !DILocation(line: 191, column: 10, scope: !3512, inlinedAt: !3607)
!3627 = !DILocation(line: 192, column: 1, scope: !3512, inlinedAt: !3607)
!3628 = !DILocation(line: 957, column: 10, scope: !3540, inlinedAt: !3608)
!3629 = !DILocation(line: 958, column: 1, scope: !3540, inlinedAt: !3608)
!3630 = !DILocation(line: 969, column: 3, scope: !3599)
!3631 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !171, file: !171, line: 973, type: !3632, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!29, !40, !32, !30}
!3634 = !{!3635, !3636, !3637, !3638}
!3635 = !DILocalVariable(name: "arg", arg: 1, scope: !3631, file: !171, line: 973, type: !40)
!3636 = !DILocalVariable(name: "argsize", arg: 2, scope: !3631, file: !171, line: 973, type: !32)
!3637 = !DILocalVariable(name: "ch", arg: 3, scope: !3631, file: !171, line: 973, type: !30)
!3638 = !DILocalVariable(name: "options", scope: !3631, file: !171, line: 975, type: !178)
!3639 = !DILocation(line: 973, column: 32, scope: !3631)
!3640 = !DILocation(line: 973, column: 44, scope: !3631)
!3641 = !DILocation(line: 973, column: 58, scope: !3631)
!3642 = !DILocation(line: 975, column: 3, scope: !3631)
!3643 = !DILocation(line: 976, column: 13, scope: !3631)
!3644 = !{i64 0, i64 4, !897, i64 4, i64 4, !873, i64 8, i64 32, !897, i64 40, i64 8, !645, i64 48, i64 8, !645}
!3645 = !DILocation(line: 975, column: 26, scope: !3631)
!3646 = !DILocation(line: 144, column: 43, scope: !2096, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 977, column: 3, scope: !3631)
!3648 = !DILocation(line: 144, column: 51, scope: !2096, inlinedAt: !3647)
!3649 = !DILocation(line: 144, column: 58, scope: !2096, inlinedAt: !3647)
!3650 = !DILocation(line: 146, column: 17, scope: !2096, inlinedAt: !3647)
!3651 = !DILocation(line: 148, column: 62, scope: !2114, inlinedAt: !3647)
!3652 = !DILocation(line: 148, column: 57, scope: !2114, inlinedAt: !3647)
!3653 = !DILocation(line: 147, column: 17, scope: !2096, inlinedAt: !3647)
!3654 = !DILocation(line: 149, column: 18, scope: !2096, inlinedAt: !3647)
!3655 = !DILocation(line: 149, column: 15, scope: !2096, inlinedAt: !3647)
!3656 = !DILocation(line: 149, column: 7, scope: !2096, inlinedAt: !3647)
!3657 = !DILocation(line: 150, column: 12, scope: !2096, inlinedAt: !3647)
!3658 = !DILocation(line: 150, column: 15, scope: !2096, inlinedAt: !3647)
!3659 = !DILocation(line: 150, column: 25, scope: !2096, inlinedAt: !3647)
!3660 = !DILocation(line: 150, column: 7, scope: !2096, inlinedAt: !3647)
!3661 = !DILocation(line: 151, column: 18, scope: !2096, inlinedAt: !3647)
!3662 = !DILocation(line: 151, column: 23, scope: !2096, inlinedAt: !3647)
!3663 = !DILocation(line: 151, column: 6, scope: !2096, inlinedAt: !3647)
!3664 = !DILocation(line: 978, column: 10, scope: !3631)
!3665 = !DILocation(line: 979, column: 1, scope: !3631)
!3666 = !DILocation(line: 978, column: 3, scope: !3631)
!3667 = distinct !DISubprogram(name: "quotearg_char", scope: !171, file: !171, line: 982, type: !3668, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!29, !40, !30}
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "arg", arg: 1, scope: !3667, file: !171, line: 982, type: !40)
!3672 = !DILocalVariable(name: "ch", arg: 2, scope: !3667, file: !171, line: 982, type: !30)
!3673 = !DILocation(line: 982, column: 28, scope: !3667)
!3674 = !DILocation(line: 982, column: 38, scope: !3667)
!3675 = !DILocation(line: 973, column: 32, scope: !3631, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 984, column: 10, scope: !3667)
!3677 = !DILocation(line: 973, column: 44, scope: !3631, inlinedAt: !3676)
!3678 = !DILocation(line: 973, column: 58, scope: !3631, inlinedAt: !3676)
!3679 = !DILocation(line: 975, column: 3, scope: !3631, inlinedAt: !3676)
!3680 = !DILocation(line: 976, column: 13, scope: !3631, inlinedAt: !3676)
!3681 = !DILocation(line: 975, column: 26, scope: !3631, inlinedAt: !3676)
!3682 = !DILocation(line: 144, column: 43, scope: !2096, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 977, column: 3, scope: !3631, inlinedAt: !3676)
!3684 = !DILocation(line: 144, column: 51, scope: !2096, inlinedAt: !3683)
!3685 = !DILocation(line: 144, column: 58, scope: !2096, inlinedAt: !3683)
!3686 = !DILocation(line: 146, column: 17, scope: !2096, inlinedAt: !3683)
!3687 = !DILocation(line: 148, column: 62, scope: !2114, inlinedAt: !3683)
!3688 = !DILocation(line: 148, column: 57, scope: !2114, inlinedAt: !3683)
!3689 = !DILocation(line: 147, column: 17, scope: !2096, inlinedAt: !3683)
!3690 = !DILocation(line: 149, column: 18, scope: !2096, inlinedAt: !3683)
!3691 = !DILocation(line: 149, column: 15, scope: !2096, inlinedAt: !3683)
!3692 = !DILocation(line: 149, column: 7, scope: !2096, inlinedAt: !3683)
!3693 = !DILocation(line: 150, column: 12, scope: !2096, inlinedAt: !3683)
!3694 = !DILocation(line: 150, column: 15, scope: !2096, inlinedAt: !3683)
!3695 = !DILocation(line: 150, column: 25, scope: !2096, inlinedAt: !3683)
!3696 = !DILocation(line: 150, column: 7, scope: !2096, inlinedAt: !3683)
!3697 = !DILocation(line: 151, column: 18, scope: !2096, inlinedAt: !3683)
!3698 = !DILocation(line: 151, column: 23, scope: !2096, inlinedAt: !3683)
!3699 = !DILocation(line: 151, column: 6, scope: !2096, inlinedAt: !3683)
!3700 = !DILocation(line: 978, column: 10, scope: !3631, inlinedAt: !3676)
!3701 = !DILocation(line: 979, column: 1, scope: !3631, inlinedAt: !3676)
!3702 = !DILocation(line: 984, column: 3, scope: !3667)
!3703 = distinct !DISubprogram(name: "quotearg_colon", scope: !171, file: !171, line: 988, type: !3479, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3704)
!3704 = !{!3705}
!3705 = !DILocalVariable(name: "arg", arg: 1, scope: !3703, file: !171, line: 988, type: !40)
!3706 = !DILocation(line: 988, column: 29, scope: !3703)
!3707 = !DILocation(line: 982, column: 28, scope: !3667, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 990, column: 10, scope: !3703)
!3709 = !DILocation(line: 982, column: 38, scope: !3667, inlinedAt: !3708)
!3710 = !DILocation(line: 973, column: 32, scope: !3631, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 984, column: 10, scope: !3667, inlinedAt: !3708)
!3712 = !DILocation(line: 973, column: 44, scope: !3631, inlinedAt: !3711)
!3713 = !DILocation(line: 973, column: 58, scope: !3631, inlinedAt: !3711)
!3714 = !DILocation(line: 975, column: 3, scope: !3631, inlinedAt: !3711)
!3715 = !DILocation(line: 976, column: 13, scope: !3631, inlinedAt: !3711)
!3716 = !DILocation(line: 975, column: 26, scope: !3631, inlinedAt: !3711)
!3717 = !DILocation(line: 144, column: 43, scope: !2096, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 977, column: 3, scope: !3631, inlinedAt: !3711)
!3719 = !DILocation(line: 144, column: 51, scope: !2096, inlinedAt: !3718)
!3720 = !DILocation(line: 144, column: 58, scope: !2096, inlinedAt: !3718)
!3721 = !DILocation(line: 146, column: 17, scope: !2096, inlinedAt: !3718)
!3722 = !DILocation(line: 148, column: 57, scope: !2114, inlinedAt: !3718)
!3723 = !DILocation(line: 147, column: 17, scope: !2096, inlinedAt: !3718)
!3724 = !DILocation(line: 149, column: 7, scope: !2096, inlinedAt: !3718)
!3725 = !DILocation(line: 150, column: 12, scope: !2096, inlinedAt: !3718)
!3726 = !DILocation(line: 151, column: 6, scope: !2096, inlinedAt: !3718)
!3727 = !DILocation(line: 978, column: 10, scope: !3631, inlinedAt: !3711)
!3728 = !DILocation(line: 979, column: 1, scope: !3631, inlinedAt: !3711)
!3729 = !DILocation(line: 990, column: 3, scope: !3703)
!3730 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !171, file: !171, line: 994, type: !3490, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3731)
!3731 = !{!3732, !3733}
!3732 = !DILocalVariable(name: "arg", arg: 1, scope: !3730, file: !171, line: 994, type: !40)
!3733 = !DILocalVariable(name: "argsize", arg: 2, scope: !3730, file: !171, line: 994, type: !32)
!3734 = !DILocation(line: 994, column: 33, scope: !3730)
!3735 = !DILocation(line: 994, column: 45, scope: !3730)
!3736 = !DILocation(line: 973, column: 32, scope: !3631, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 996, column: 10, scope: !3730)
!3738 = !DILocation(line: 973, column: 44, scope: !3631, inlinedAt: !3737)
!3739 = !DILocation(line: 973, column: 58, scope: !3631, inlinedAt: !3737)
!3740 = !DILocation(line: 975, column: 3, scope: !3631, inlinedAt: !3737)
!3741 = !DILocation(line: 976, column: 13, scope: !3631, inlinedAt: !3737)
!3742 = !DILocation(line: 975, column: 26, scope: !3631, inlinedAt: !3737)
!3743 = !DILocation(line: 144, column: 43, scope: !2096, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 977, column: 3, scope: !3631, inlinedAt: !3737)
!3745 = !DILocation(line: 144, column: 51, scope: !2096, inlinedAt: !3744)
!3746 = !DILocation(line: 144, column: 58, scope: !2096, inlinedAt: !3744)
!3747 = !DILocation(line: 146, column: 17, scope: !2096, inlinedAt: !3744)
!3748 = !DILocation(line: 148, column: 57, scope: !2114, inlinedAt: !3744)
!3749 = !DILocation(line: 147, column: 17, scope: !2096, inlinedAt: !3744)
!3750 = !DILocation(line: 149, column: 7, scope: !2096, inlinedAt: !3744)
!3751 = !DILocation(line: 150, column: 12, scope: !2096, inlinedAt: !3744)
!3752 = !DILocation(line: 151, column: 6, scope: !2096, inlinedAt: !3744)
!3753 = !DILocation(line: 978, column: 10, scope: !3631, inlinedAt: !3737)
!3754 = !DILocation(line: 979, column: 1, scope: !3631, inlinedAt: !3737)
!3755 = !DILocation(line: 996, column: 3, scope: !3730)
!3756 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !171, file: !171, line: 1000, type: !3504, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3757)
!3757 = !{!3758, !3759, !3760, !3761}
!3758 = !DILocalVariable(name: "n", arg: 1, scope: !3756, file: !171, line: 1000, type: !70)
!3759 = !DILocalVariable(name: "s", arg: 2, scope: !3756, file: !171, line: 1000, type: !5)
!3760 = !DILocalVariable(name: "arg", arg: 3, scope: !3756, file: !171, line: 1000, type: !40)
!3761 = !DILocalVariable(name: "options", scope: !3756, file: !171, line: 1002, type: !178)
!3762 = !DILocation(line: 187, column: 26, scope: !3512, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 1003, column: 13, scope: !3756)
!3764 = !DILocation(line: 1000, column: 29, scope: !3756)
!3765 = !DILocation(line: 1000, column: 51, scope: !3756)
!3766 = !DILocation(line: 1000, column: 66, scope: !3756)
!3767 = !DILocation(line: 1002, column: 3, scope: !3756)
!3768 = !DILocation(line: 185, column: 48, scope: !3512, inlinedAt: !3763)
!3769 = !DILocation(line: 187, column: 3, scope: !3512, inlinedAt: !3763)
!3770 = !DILocation(line: 188, column: 13, scope: !3529, inlinedAt: !3763)
!3771 = !DILocation(line: 188, column: 7, scope: !3512, inlinedAt: !3763)
!3772 = !DILocation(line: 189, column: 5, scope: !3529, inlinedAt: !3763)
!3773 = !{!3774}
!3774 = distinct !{!3774, !3775, !"quoting_options_from_style: argument 0"}
!3775 = distinct !{!3775, !"quoting_options_from_style"}
!3776 = !DILocation(line: 191, column: 10, scope: !3512, inlinedAt: !3763)
!3777 = !DILocation(line: 192, column: 1, scope: !3512, inlinedAt: !3763)
!3778 = !DILocation(line: 1003, column: 13, scope: !3756)
!3779 = !DILocation(line: 1002, column: 26, scope: !3756)
!3780 = !DILocation(line: 144, column: 43, scope: !2096, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 1004, column: 3, scope: !3756)
!3782 = !DILocation(line: 144, column: 51, scope: !2096, inlinedAt: !3781)
!3783 = !DILocation(line: 144, column: 58, scope: !2096, inlinedAt: !3781)
!3784 = !DILocation(line: 146, column: 17, scope: !2096, inlinedAt: !3781)
!3785 = !DILocation(line: 148, column: 57, scope: !2114, inlinedAt: !3781)
!3786 = !DILocation(line: 147, column: 17, scope: !2096, inlinedAt: !3781)
!3787 = !DILocation(line: 149, column: 7, scope: !2096, inlinedAt: !3781)
!3788 = !DILocation(line: 150, column: 12, scope: !2096, inlinedAt: !3781)
!3789 = !DILocation(line: 151, column: 6, scope: !2096, inlinedAt: !3781)
!3790 = !DILocation(line: 1005, column: 10, scope: !3756)
!3791 = !DILocation(line: 1006, column: 1, scope: !3756)
!3792 = !DILocation(line: 1005, column: 3, scope: !3756)
!3793 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !171, file: !171, line: 1009, type: !3794, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!29, !70, !40, !40, !40}
!3796 = !{!3797, !3798, !3799, !3800}
!3797 = !DILocalVariable(name: "n", arg: 1, scope: !3793, file: !171, line: 1009, type: !70)
!3798 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3793, file: !171, line: 1009, type: !40)
!3799 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3793, file: !171, line: 1010, type: !40)
!3800 = !DILocalVariable(name: "arg", arg: 4, scope: !3793, file: !171, line: 1010, type: !40)
!3801 = !DILocation(line: 1009, column: 24, scope: !3793)
!3802 = !DILocation(line: 1009, column: 39, scope: !3793)
!3803 = !DILocation(line: 1010, column: 32, scope: !3793)
!3804 = !DILocation(line: 1010, column: 57, scope: !3793)
!3805 = !DILocalVariable(name: "n", arg: 1, scope: !3806, file: !171, line: 1017, type: !70)
!3806 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !171, file: !171, line: 1017, type: !3807, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!29, !70, !40, !40, !40, !32}
!3809 = !{!3805, !3810, !3811, !3812, !3813, !3814}
!3810 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3806, file: !171, line: 1017, type: !40)
!3811 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3806, file: !171, line: 1018, type: !40)
!3812 = !DILocalVariable(name: "arg", arg: 4, scope: !3806, file: !171, line: 1019, type: !40)
!3813 = !DILocalVariable(name: "argsize", arg: 5, scope: !3806, file: !171, line: 1019, type: !32)
!3814 = !DILocalVariable(name: "o", scope: !3806, file: !171, line: 1021, type: !178)
!3815 = !DILocation(line: 1017, column: 28, scope: !3806, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 1012, column: 10, scope: !3793)
!3817 = !DILocation(line: 1017, column: 43, scope: !3806, inlinedAt: !3816)
!3818 = !DILocation(line: 1018, column: 36, scope: !3806, inlinedAt: !3816)
!3819 = !DILocation(line: 1019, column: 36, scope: !3806, inlinedAt: !3816)
!3820 = !DILocation(line: 1019, column: 48, scope: !3806, inlinedAt: !3816)
!3821 = !DILocation(line: 1021, column: 3, scope: !3806, inlinedAt: !3816)
!3822 = !DILocation(line: 1021, column: 30, scope: !3806, inlinedAt: !3816)
!3823 = !DILocation(line: 1021, column: 26, scope: !3806, inlinedAt: !3816)
!3824 = !DILocation(line: 171, column: 45, scope: !2146, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 1022, column: 3, scope: !3806, inlinedAt: !3816)
!3826 = !DILocation(line: 172, column: 33, scope: !2146, inlinedAt: !3825)
!3827 = !DILocation(line: 172, column: 57, scope: !2146, inlinedAt: !3825)
!3828 = !DILocation(line: 176, column: 6, scope: !2146, inlinedAt: !3825)
!3829 = !DILocation(line: 176, column: 12, scope: !2146, inlinedAt: !3825)
!3830 = !DILocation(line: 177, column: 8, scope: !2162, inlinedAt: !3825)
!3831 = !DILocation(line: 177, column: 23, scope: !2164, inlinedAt: !3825)
!3832 = !DILocation(line: 177, column: 19, scope: !2162, inlinedAt: !3825)
!3833 = !DILocation(line: 178, column: 5, scope: !2162, inlinedAt: !3825)
!3834 = !DILocation(line: 179, column: 6, scope: !2146, inlinedAt: !3825)
!3835 = !DILocation(line: 179, column: 17, scope: !2146, inlinedAt: !3825)
!3836 = !DILocation(line: 180, column: 6, scope: !2146, inlinedAt: !3825)
!3837 = !DILocation(line: 180, column: 18, scope: !2146, inlinedAt: !3825)
!3838 = !DILocation(line: 1023, column: 10, scope: !3806, inlinedAt: !3816)
!3839 = !DILocation(line: 1024, column: 1, scope: !3806, inlinedAt: !3816)
!3840 = !DILocation(line: 1012, column: 3, scope: !3793)
!3841 = !DILocation(line: 1017, column: 28, scope: !3806)
!3842 = !DILocation(line: 1017, column: 43, scope: !3806)
!3843 = !DILocation(line: 1018, column: 36, scope: !3806)
!3844 = !DILocation(line: 1019, column: 36, scope: !3806)
!3845 = !DILocation(line: 1019, column: 48, scope: !3806)
!3846 = !DILocation(line: 1021, column: 3, scope: !3806)
!3847 = !DILocation(line: 1021, column: 30, scope: !3806)
!3848 = !DILocation(line: 1021, column: 26, scope: !3806)
!3849 = !DILocation(line: 171, column: 45, scope: !2146, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 1022, column: 3, scope: !3806)
!3851 = !DILocation(line: 172, column: 33, scope: !2146, inlinedAt: !3850)
!3852 = !DILocation(line: 172, column: 57, scope: !2146, inlinedAt: !3850)
!3853 = !DILocation(line: 176, column: 6, scope: !2146, inlinedAt: !3850)
!3854 = !DILocation(line: 176, column: 12, scope: !2146, inlinedAt: !3850)
!3855 = !DILocation(line: 177, column: 8, scope: !2162, inlinedAt: !3850)
!3856 = !DILocation(line: 177, column: 23, scope: !2164, inlinedAt: !3850)
!3857 = !DILocation(line: 177, column: 19, scope: !2162, inlinedAt: !3850)
!3858 = !DILocation(line: 178, column: 5, scope: !2162, inlinedAt: !3850)
!3859 = !DILocation(line: 179, column: 6, scope: !2146, inlinedAt: !3850)
!3860 = !DILocation(line: 179, column: 17, scope: !2146, inlinedAt: !3850)
!3861 = !DILocation(line: 180, column: 6, scope: !2146, inlinedAt: !3850)
!3862 = !DILocation(line: 180, column: 18, scope: !2146, inlinedAt: !3850)
!3863 = !DILocation(line: 1023, column: 10, scope: !3806)
!3864 = !DILocation(line: 1024, column: 1, scope: !3806)
!3865 = !DILocation(line: 1023, column: 3, scope: !3806)
!3866 = distinct !DISubprogram(name: "quotearg_custom", scope: !171, file: !171, line: 1027, type: !3867, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!29, !40, !40, !40}
!3869 = !{!3870, !3871, !3872}
!3870 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3866, file: !171, line: 1027, type: !40)
!3871 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3866, file: !171, line: 1027, type: !40)
!3872 = !DILocalVariable(name: "arg", arg: 3, scope: !3866, file: !171, line: 1028, type: !40)
!3873 = !DILocation(line: 1027, column: 30, scope: !3866)
!3874 = !DILocation(line: 1027, column: 54, scope: !3866)
!3875 = !DILocation(line: 1028, column: 30, scope: !3866)
!3876 = !DILocation(line: 1009, column: 24, scope: !3793, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 1030, column: 10, scope: !3866)
!3878 = !DILocation(line: 1009, column: 39, scope: !3793, inlinedAt: !3877)
!3879 = !DILocation(line: 1010, column: 32, scope: !3793, inlinedAt: !3877)
!3880 = !DILocation(line: 1010, column: 57, scope: !3793, inlinedAt: !3877)
!3881 = !DILocation(line: 1017, column: 28, scope: !3806, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 1012, column: 10, scope: !3793, inlinedAt: !3877)
!3883 = !DILocation(line: 1017, column: 43, scope: !3806, inlinedAt: !3882)
!3884 = !DILocation(line: 1018, column: 36, scope: !3806, inlinedAt: !3882)
!3885 = !DILocation(line: 1019, column: 36, scope: !3806, inlinedAt: !3882)
!3886 = !DILocation(line: 1019, column: 48, scope: !3806, inlinedAt: !3882)
!3887 = !DILocation(line: 1021, column: 3, scope: !3806, inlinedAt: !3882)
!3888 = !DILocation(line: 1021, column: 30, scope: !3806, inlinedAt: !3882)
!3889 = !DILocation(line: 1021, column: 26, scope: !3806, inlinedAt: !3882)
!3890 = !DILocation(line: 171, column: 45, scope: !2146, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 1022, column: 3, scope: !3806, inlinedAt: !3882)
!3892 = !DILocation(line: 172, column: 33, scope: !2146, inlinedAt: !3891)
!3893 = !DILocation(line: 172, column: 57, scope: !2146, inlinedAt: !3891)
!3894 = !DILocation(line: 176, column: 6, scope: !2146, inlinedAt: !3891)
!3895 = !DILocation(line: 176, column: 12, scope: !2146, inlinedAt: !3891)
!3896 = !DILocation(line: 177, column: 8, scope: !2162, inlinedAt: !3891)
!3897 = !DILocation(line: 177, column: 23, scope: !2164, inlinedAt: !3891)
!3898 = !DILocation(line: 177, column: 19, scope: !2162, inlinedAt: !3891)
!3899 = !DILocation(line: 178, column: 5, scope: !2162, inlinedAt: !3891)
!3900 = !DILocation(line: 179, column: 6, scope: !2146, inlinedAt: !3891)
!3901 = !DILocation(line: 179, column: 17, scope: !2146, inlinedAt: !3891)
!3902 = !DILocation(line: 180, column: 6, scope: !2146, inlinedAt: !3891)
!3903 = !DILocation(line: 180, column: 18, scope: !2146, inlinedAt: !3891)
!3904 = !DILocation(line: 1023, column: 10, scope: !3806, inlinedAt: !3882)
!3905 = !DILocation(line: 1024, column: 1, scope: !3806, inlinedAt: !3882)
!3906 = !DILocation(line: 1030, column: 3, scope: !3866)
!3907 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !171, file: !171, line: 1034, type: !3908, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!29, !40, !40, !40, !32}
!3910 = !{!3911, !3912, !3913, !3914}
!3911 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3907, file: !171, line: 1034, type: !40)
!3912 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3907, file: !171, line: 1034, type: !40)
!3913 = !DILocalVariable(name: "arg", arg: 3, scope: !3907, file: !171, line: 1035, type: !40)
!3914 = !DILocalVariable(name: "argsize", arg: 4, scope: !3907, file: !171, line: 1035, type: !32)
!3915 = !DILocation(line: 1034, column: 34, scope: !3907)
!3916 = !DILocation(line: 1034, column: 58, scope: !3907)
!3917 = !DILocation(line: 1035, column: 34, scope: !3907)
!3918 = !DILocation(line: 1035, column: 46, scope: !3907)
!3919 = !DILocation(line: 1017, column: 28, scope: !3806, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 1037, column: 10, scope: !3907)
!3921 = !DILocation(line: 1017, column: 43, scope: !3806, inlinedAt: !3920)
!3922 = !DILocation(line: 1018, column: 36, scope: !3806, inlinedAt: !3920)
!3923 = !DILocation(line: 1019, column: 36, scope: !3806, inlinedAt: !3920)
!3924 = !DILocation(line: 1019, column: 48, scope: !3806, inlinedAt: !3920)
!3925 = !DILocation(line: 1021, column: 3, scope: !3806, inlinedAt: !3920)
!3926 = !DILocation(line: 1021, column: 30, scope: !3806, inlinedAt: !3920)
!3927 = !DILocation(line: 1021, column: 26, scope: !3806, inlinedAt: !3920)
!3928 = !DILocation(line: 171, column: 45, scope: !2146, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 1022, column: 3, scope: !3806, inlinedAt: !3920)
!3930 = !DILocation(line: 172, column: 33, scope: !2146, inlinedAt: !3929)
!3931 = !DILocation(line: 172, column: 57, scope: !2146, inlinedAt: !3929)
!3932 = !DILocation(line: 176, column: 6, scope: !2146, inlinedAt: !3929)
!3933 = !DILocation(line: 176, column: 12, scope: !2146, inlinedAt: !3929)
!3934 = !DILocation(line: 177, column: 8, scope: !2162, inlinedAt: !3929)
!3935 = !DILocation(line: 177, column: 23, scope: !2164, inlinedAt: !3929)
!3936 = !DILocation(line: 177, column: 19, scope: !2162, inlinedAt: !3929)
!3937 = !DILocation(line: 178, column: 5, scope: !2162, inlinedAt: !3929)
!3938 = !DILocation(line: 179, column: 6, scope: !2146, inlinedAt: !3929)
!3939 = !DILocation(line: 179, column: 17, scope: !2146, inlinedAt: !3929)
!3940 = !DILocation(line: 180, column: 6, scope: !2146, inlinedAt: !3929)
!3941 = !DILocation(line: 180, column: 18, scope: !2146, inlinedAt: !3929)
!3942 = !DILocation(line: 1023, column: 10, scope: !3806, inlinedAt: !3920)
!3943 = !DILocation(line: 1024, column: 1, scope: !3806, inlinedAt: !3920)
!3944 = !DILocation(line: 1037, column: 3, scope: !3907)
!3945 = distinct !DISubprogram(name: "quote_n_mem", scope: !171, file: !171, line: 1052, type: !3946, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!40, !70, !40, !32}
!3948 = !{!3949, !3950, !3951}
!3949 = !DILocalVariable(name: "n", arg: 1, scope: !3945, file: !171, line: 1052, type: !70)
!3950 = !DILocalVariable(name: "arg", arg: 2, scope: !3945, file: !171, line: 1052, type: !40)
!3951 = !DILocalVariable(name: "argsize", arg: 3, scope: !3945, file: !171, line: 1052, type: !32)
!3952 = !DILocation(line: 1052, column: 18, scope: !3945)
!3953 = !DILocation(line: 1052, column: 33, scope: !3945)
!3954 = !DILocation(line: 1052, column: 45, scope: !3945)
!3955 = !DILocation(line: 1054, column: 10, scope: !3945)
!3956 = !DILocation(line: 1054, column: 3, scope: !3945)
!3957 = distinct !DISubprogram(name: "quote_mem", scope: !171, file: !171, line: 1058, type: !3958, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3960)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!40, !40, !32}
!3960 = !{!3961, !3962}
!3961 = !DILocalVariable(name: "arg", arg: 1, scope: !3957, file: !171, line: 1058, type: !40)
!3962 = !DILocalVariable(name: "argsize", arg: 2, scope: !3957, file: !171, line: 1058, type: !32)
!3963 = !DILocation(line: 1058, column: 24, scope: !3957)
!3964 = !DILocation(line: 1058, column: 36, scope: !3957)
!3965 = !DILocation(line: 1052, column: 18, scope: !3945, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 1060, column: 10, scope: !3957)
!3967 = !DILocation(line: 1052, column: 33, scope: !3945, inlinedAt: !3966)
!3968 = !DILocation(line: 1052, column: 45, scope: !3945, inlinedAt: !3966)
!3969 = !DILocation(line: 1054, column: 10, scope: !3945, inlinedAt: !3966)
!3970 = !DILocation(line: 1060, column: 3, scope: !3957)
!3971 = distinct !DISubprogram(name: "quote_n", scope: !171, file: !171, line: 1064, type: !3972, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!40, !70, !40}
!3974 = !{!3975, !3976}
!3975 = !DILocalVariable(name: "n", arg: 1, scope: !3971, file: !171, line: 1064, type: !70)
!3976 = !DILocalVariable(name: "arg", arg: 2, scope: !3971, file: !171, line: 1064, type: !40)
!3977 = !DILocation(line: 1064, column: 14, scope: !3971)
!3978 = !DILocation(line: 1064, column: 29, scope: !3971)
!3979 = !DILocation(line: 1052, column: 18, scope: !3945, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 1066, column: 10, scope: !3971)
!3981 = !DILocation(line: 1052, column: 33, scope: !3945, inlinedAt: !3980)
!3982 = !DILocation(line: 1052, column: 45, scope: !3945, inlinedAt: !3980)
!3983 = !DILocation(line: 1054, column: 10, scope: !3945, inlinedAt: !3980)
!3984 = !DILocation(line: 1066, column: 3, scope: !3971)
!3985 = distinct !DISubprogram(name: "quote", scope: !171, file: !171, line: 1070, type: !3986, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !143, variables: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!40, !40}
!3988 = !{!3989}
!3989 = !DILocalVariable(name: "arg", arg: 1, scope: !3985, file: !171, line: 1070, type: !40)
!3990 = !DILocation(line: 1070, column: 20, scope: !3985)
!3991 = !DILocation(line: 1064, column: 14, scope: !3971, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 1072, column: 10, scope: !3985)
!3993 = !DILocation(line: 1064, column: 29, scope: !3971, inlinedAt: !3992)
!3994 = !DILocation(line: 1052, column: 18, scope: !3945, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 1066, column: 10, scope: !3971, inlinedAt: !3992)
!3996 = !DILocation(line: 1052, column: 33, scope: !3945, inlinedAt: !3995)
!3997 = !DILocation(line: 1052, column: 45, scope: !3945, inlinedAt: !3995)
!3998 = !DILocation(line: 1054, column: 10, scope: !3945, inlinedAt: !3995)
!3999 = !DILocation(line: 1072, column: 3, scope: !3985)
!4000 = distinct !DISubprogram(name: "version_etc_arn", scope: !573, file: !573, line: 62, type: !4001, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !4044)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{null, !4003, !40, !40, !40, !4043, !32}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !711, line: 49, baseType: !4005)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !713, line: 241, size: 1728, elements: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4005, file: !713, line: 242, baseType: !70, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4005, file: !713, line: 247, baseType: !29, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4005, file: !713, line: 248, baseType: !29, size: 64, offset: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4005, file: !713, line: 249, baseType: !29, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4005, file: !713, line: 250, baseType: !29, size: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4005, file: !713, line: 251, baseType: !29, size: 64, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4005, file: !713, line: 252, baseType: !29, size: 64, offset: 384)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4005, file: !713, line: 253, baseType: !29, size: 64, offset: 448)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4005, file: !713, line: 254, baseType: !29, size: 64, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4005, file: !713, line: 256, baseType: !29, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4005, file: !713, line: 257, baseType: !29, size: 64, offset: 640)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4005, file: !713, line: 258, baseType: !29, size: 64, offset: 704)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4005, file: !713, line: 260, baseType: !4020, size: 64, offset: 768)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !713, line: 156, size: 192, elements: !4022)
!4022 = !{!4023, !4024, !4026}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4021, file: !713, line: 157, baseType: !4020, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4021, file: !713, line: 158, baseType: !4025, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4021, file: !713, line: 162, baseType: !70, size: 32, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4005, file: !713, line: 262, baseType: !4025, size: 64, offset: 832)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4005, file: !713, line: 264, baseType: !70, size: 32, offset: 896)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4005, file: !713, line: 268, baseType: !70, size: 32, offset: 928)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4005, file: !713, line: 270, baseType: !739, size: 64, offset: 960)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4005, file: !713, line: 274, baseType: !167, size: 16, offset: 1024)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4005, file: !713, line: 275, baseType: !108, size: 8, offset: 1040)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4005, file: !713, line: 276, baseType: !745, size: 8, offset: 1048)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4005, file: !713, line: 280, baseType: !749, size: 64, offset: 1088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4005, file: !713, line: 289, baseType: !752, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4005, file: !713, line: 297, baseType: !31, size: 64, offset: 1216)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4005, file: !713, line: 298, baseType: !31, size: 64, offset: 1280)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4005, file: !713, line: 299, baseType: !31, size: 64, offset: 1344)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4005, file: !713, line: 300, baseType: !31, size: 64, offset: 1408)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4005, file: !713, line: 302, baseType: !32, size: 64, offset: 1472)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4005, file: !713, line: 303, baseType: !70, size: 32, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4005, file: !713, line: 305, baseType: !760, size: 160, offset: 1568)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050}
!4045 = !DILocalVariable(name: "stream", arg: 1, scope: !4000, file: !573, line: 62, type: !4003)
!4046 = !DILocalVariable(name: "command_name", arg: 2, scope: !4000, file: !573, line: 63, type: !40)
!4047 = !DILocalVariable(name: "package", arg: 3, scope: !4000, file: !573, line: 63, type: !40)
!4048 = !DILocalVariable(name: "version", arg: 4, scope: !4000, file: !573, line: 64, type: !40)
!4049 = !DILocalVariable(name: "authors", arg: 5, scope: !4000, file: !573, line: 65, type: !4043)
!4050 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4000, file: !573, line: 65, type: !32)
!4051 = !DILocation(line: 62, column: 24, scope: !4000)
!4052 = !DILocation(line: 63, column: 30, scope: !4000)
!4053 = !DILocation(line: 63, column: 56, scope: !4000)
!4054 = !DILocation(line: 64, column: 30, scope: !4000)
!4055 = !DILocation(line: 65, column: 39, scope: !4000)
!4056 = !DILocation(line: 65, column: 55, scope: !4000)
!4057 = !DILocation(line: 67, column: 7, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4000, file: !573, line: 67, column: 7)
!4059 = !DILocation(line: 67, column: 7, scope: !4000)
!4060 = !DILocation(line: 68, column: 5, scope: !4058)
!4061 = !DILocation(line: 70, column: 5, scope: !4058)
!4062 = !DILocation(line: 84, column: 3, scope: !4000)
!4063 = !DILocation(line: 84, column: 3, scope: !4064)
!4064 = !DILexicalBlockFile(scope: !4000, file: !573, discriminator: 1)
!4065 = !DILocation(line: 86, column: 3, scope: !4000)
!4066 = !DILocation(line: 86, column: 3, scope: !4064)
!4067 = !DILocation(line: 95, column: 3, scope: !4000)
!4068 = !DILocation(line: 99, column: 7, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4000, file: !573, line: 96, column: 5)
!4070 = !DILocation(line: 102, column: 7, scope: !4069)
!4071 = !DILocation(line: 102, column: 7, scope: !4072)
!4072 = !DILexicalBlockFile(scope: !4069, file: !573, discriminator: 1)
!4073 = !DILocation(line: 103, column: 7, scope: !4069)
!4074 = !DILocation(line: 106, column: 7, scope: !4069)
!4075 = !DILocation(line: 106, column: 7, scope: !4072)
!4076 = !DILocation(line: 107, column: 7, scope: !4069)
!4077 = !DILocation(line: 110, column: 7, scope: !4069)
!4078 = !DILocation(line: 110, column: 7, scope: !4072)
!4079 = !DILocation(line: 112, column: 7, scope: !4069)
!4080 = !DILocation(line: 117, column: 7, scope: !4069)
!4081 = !DILocation(line: 117, column: 7, scope: !4072)
!4082 = !DILocation(line: 119, column: 7, scope: !4069)
!4083 = !DILocation(line: 124, column: 7, scope: !4069)
!4084 = !DILocation(line: 124, column: 7, scope: !4072)
!4085 = !DILocation(line: 126, column: 7, scope: !4069)
!4086 = !DILocation(line: 131, column: 7, scope: !4069)
!4087 = !DILocation(line: 131, column: 7, scope: !4072)
!4088 = !DILocation(line: 134, column: 7, scope: !4069)
!4089 = !DILocation(line: 139, column: 7, scope: !4069)
!4090 = !DILocation(line: 139, column: 7, scope: !4072)
!4091 = !DILocation(line: 142, column: 7, scope: !4069)
!4092 = !DILocation(line: 147, column: 7, scope: !4069)
!4093 = !DILocation(line: 147, column: 7, scope: !4072)
!4094 = !DILocation(line: 151, column: 7, scope: !4069)
!4095 = !DILocation(line: 156, column: 7, scope: !4069)
!4096 = !DILocation(line: 156, column: 7, scope: !4072)
!4097 = !DILocation(line: 160, column: 7, scope: !4069)
!4098 = !DILocation(line: 167, column: 7, scope: !4069)
!4099 = !DILocation(line: 167, column: 7, scope: !4072)
!4100 = !DILocation(line: 171, column: 7, scope: !4069)
!4101 = !DILocation(line: 173, column: 1, scope: !4000)
!4102 = distinct !DISubprogram(name: "version_etc_ar", scope: !573, file: !573, line: 180, type: !4103, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !4003, !40, !40, !40, !4043}
!4105 = !{!4106, !4107, !4108, !4109, !4110, !4111}
!4106 = !DILocalVariable(name: "stream", arg: 1, scope: !4102, file: !573, line: 180, type: !4003)
!4107 = !DILocalVariable(name: "command_name", arg: 2, scope: !4102, file: !573, line: 181, type: !40)
!4108 = !DILocalVariable(name: "package", arg: 3, scope: !4102, file: !573, line: 181, type: !40)
!4109 = !DILocalVariable(name: "version", arg: 4, scope: !4102, file: !573, line: 182, type: !40)
!4110 = !DILocalVariable(name: "authors", arg: 5, scope: !4102, file: !573, line: 182, type: !4043)
!4111 = !DILocalVariable(name: "n_authors", scope: !4102, file: !573, line: 184, type: !32)
!4112 = !DILocation(line: 180, column: 23, scope: !4102)
!4113 = !DILocation(line: 181, column: 29, scope: !4102)
!4114 = !DILocation(line: 181, column: 55, scope: !4102)
!4115 = !DILocation(line: 182, column: 29, scope: !4102)
!4116 = !DILocation(line: 182, column: 59, scope: !4102)
!4117 = !DILocation(line: 184, column: 10, scope: !4102)
!4118 = !DILocation(line: 186, column: 8, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4102, file: !573, line: 186, column: 3)
!4120 = !DILocation(line: 186, column: 23, scope: !4121)
!4121 = !DILexicalBlockFile(scope: !4122, file: !573, discriminator: 1)
!4122 = distinct !DILexicalBlock(scope: !4119, file: !573, line: 186, column: 3)
!4123 = !DILocation(line: 186, column: 3, scope: !4124)
!4124 = !DILexicalBlockFile(scope: !4119, file: !573, discriminator: 1)
!4125 = !DILocation(line: 186, column: 52, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !4122, file: !573, discriminator: 3)
!4127 = distinct !{!4127, !4128, !4129}
!4128 = !DILocation(line: 186, column: 3, scope: !4119)
!4129 = !DILocation(line: 187, column: 5, scope: !4119)
!4130 = !DILocation(line: 188, column: 3, scope: !4102)
!4131 = !DILocation(line: 189, column: 1, scope: !4102)
!4132 = distinct !DISubprogram(name: "version_etc_va", scope: !573, file: !573, line: 196, type: !4133, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !4142)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !4003, !40, !40, !40, !4135}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !570, line: 189, size: 192, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4141}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4136, file: !570, line: 189, baseType: !184, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4136, file: !570, line: 189, baseType: !184, size: 32, offset: 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4136, file: !570, line: 189, baseType: !31, size: 64, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4136, file: !570, line: 189, baseType: !31, size: 64, offset: 128)
!4142 = !{!4143, !4144, !4145, !4146, !4147, !4148, !4149}
!4143 = !DILocalVariable(name: "stream", arg: 1, scope: !4132, file: !573, line: 196, type: !4003)
!4144 = !DILocalVariable(name: "command_name", arg: 2, scope: !4132, file: !573, line: 197, type: !40)
!4145 = !DILocalVariable(name: "package", arg: 3, scope: !4132, file: !573, line: 197, type: !40)
!4146 = !DILocalVariable(name: "version", arg: 4, scope: !4132, file: !573, line: 198, type: !40)
!4147 = !DILocalVariable(name: "authors", arg: 5, scope: !4132, file: !573, line: 198, type: !4135)
!4148 = !DILocalVariable(name: "n_authors", scope: !4132, file: !573, line: 200, type: !32)
!4149 = !DILocalVariable(name: "authtab", scope: !4132, file: !573, line: 201, type: !4150)
!4150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 640, elements: !174)
!4151 = !DILocation(line: 196, column: 23, scope: !4132)
!4152 = !DILocation(line: 197, column: 29, scope: !4132)
!4153 = !DILocation(line: 197, column: 55, scope: !4132)
!4154 = !DILocation(line: 198, column: 29, scope: !4132)
!4155 = !DILocation(line: 198, column: 46, scope: !4132)
!4156 = !DILocation(line: 201, column: 3, scope: !4132)
!4157 = !DILocation(line: 201, column: 15, scope: !4132)
!4158 = !DILocation(line: 200, column: 10, scope: !4132)
!4159 = !DILocation(line: 205, column: 35, scope: !4160)
!4160 = !DILexicalBlockFile(scope: !4161, file: !573, discriminator: 1)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !573, line: 203, column: 3)
!4162 = distinct !DILexicalBlock(scope: !4132, file: !573, line: 203, column: 3)
!4163 = !DILocation(line: 205, column: 35, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !4161, file: !573, discriminator: 2)
!4165 = !DILocation(line: 205, column: 35, scope: !4166)
!4166 = !DILexicalBlockFile(scope: !4161, file: !573, discriminator: 3)
!4167 = !DILocation(line: 205, column: 35, scope: !4168)
!4168 = !DILexicalBlockFile(scope: !4161, file: !573, discriminator: 4)
!4169 = !DILocation(line: 205, column: 14, scope: !4168)
!4170 = !DILocation(line: 205, column: 33, scope: !4168)
!4171 = !DILocation(line: 205, column: 67, scope: !4168)
!4172 = !DILocation(line: 203, column: 3, scope: !4173)
!4173 = !DILexicalBlockFile(scope: !4162, file: !573, discriminator: 1)
!4174 = !DILocation(line: 208, column: 3, scope: !4132)
!4175 = !DILocation(line: 210, column: 1, scope: !4132)
!4176 = distinct !DISubprogram(name: "version_etc", scope: !573, file: !573, line: 227, type: !4177, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !4179)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !4003, !40, !40, !40, null}
!4179 = !{!4180, !4181, !4182, !4183, !4184}
!4180 = !DILocalVariable(name: "stream", arg: 1, scope: !4176, file: !573, line: 227, type: !4003)
!4181 = !DILocalVariable(name: "command_name", arg: 2, scope: !4176, file: !573, line: 228, type: !40)
!4182 = !DILocalVariable(name: "package", arg: 3, scope: !4176, file: !573, line: 228, type: !40)
!4183 = !DILocalVariable(name: "version", arg: 4, scope: !4176, file: !573, line: 229, type: !40)
!4184 = !DILocalVariable(name: "authors", scope: !4176, file: !573, line: 231, type: !4185)
!4185 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !711, line: 80, baseType: !4186)
!4186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4187, line: 50, baseType: !4188)
!4187 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !570, line: 231, baseType: !4189)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4136, size: 192, elements: !746)
!4190 = !DILocation(line: 227, column: 20, scope: !4176)
!4191 = !DILocation(line: 228, column: 26, scope: !4176)
!4192 = !DILocation(line: 228, column: 52, scope: !4176)
!4193 = !DILocation(line: 229, column: 26, scope: !4176)
!4194 = !DILocation(line: 231, column: 3, scope: !4176)
!4195 = !DILocation(line: 231, column: 11, scope: !4176)
!4196 = !DILocation(line: 233, column: 3, scope: !4176)
!4197 = !DILocation(line: 234, column: 3, scope: !4176)
!4198 = !DILocation(line: 235, column: 3, scope: !4176)
!4199 = !DILocation(line: 236, column: 1, scope: !4176)
!4200 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !573, file: !573, line: 239, type: !659, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !569, variables: !90)
!4201 = !DILocation(line: 245, column: 3, scope: !4200)
!4202 = !DILocation(line: 245, column: 3, scope: !4203)
!4203 = !DILexicalBlockFile(scope: !4200, file: !573, discriminator: 1)
!4204 = !DILocation(line: 251, column: 3, scope: !4200)
!4205 = !DILocation(line: 251, column: 3, scope: !4203)
!4206 = !DILocation(line: 256, column: 3, scope: !4200)
!4207 = !DILocation(line: 256, column: 3, scope: !4203)
!4208 = !DILocation(line: 258, column: 1, scope: !4200)
!4209 = distinct !DISubprogram(name: "xnmalloc", scope: !581, file: !581, line: 105, type: !4210, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!31, !32, !32}
!4212 = !{!4213, !4214}
!4213 = !DILocalVariable(name: "n", arg: 1, scope: !4209, file: !581, line: 105, type: !32)
!4214 = !DILocalVariable(name: "s", arg: 2, scope: !4209, file: !581, line: 105, type: !32)
!4215 = !DILocation(line: 105, column: 18, scope: !4209)
!4216 = !DILocation(line: 105, column: 28, scope: !4209)
!4217 = !DILocation(line: 107, column: 7, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4209, file: !581, line: 107, column: 7)
!4219 = !DILocation(line: 107, column: 7, scope: !4209)
!4220 = !DILocation(line: 108, column: 5, scope: !4218)
!4221 = !DILocation(line: 109, column: 21, scope: !4209)
!4222 = !DILocalVariable(name: "n", arg: 1, scope: !4223, file: !4224, line: 39, type: !32)
!4223 = distinct !DISubprogram(name: "xmalloc", scope: !4224, file: !4224, line: 39, type: !4225, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4227)
!4224 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!31, !32}
!4227 = !{!4222, !4228}
!4228 = !DILocalVariable(name: "p", scope: !4223, file: !4224, line: 41, type: !31)
!4229 = !DILocation(line: 39, column: 17, scope: !4223, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 109, column: 10, scope: !4209)
!4231 = !DILocation(line: 41, column: 13, scope: !4223, inlinedAt: !4230)
!4232 = !DILocation(line: 41, column: 9, scope: !4223, inlinedAt: !4230)
!4233 = !DILocation(line: 42, column: 8, scope: !4234, inlinedAt: !4230)
!4234 = distinct !DILexicalBlock(scope: !4223, file: !4224, line: 42, column: 7)
!4235 = !DILocation(line: 42, column: 15, scope: !4236, inlinedAt: !4230)
!4236 = !DILexicalBlockFile(scope: !4234, file: !4224, discriminator: 1)
!4237 = !DILocation(line: 42, column: 10, scope: !4234, inlinedAt: !4230)
!4238 = !DILocation(line: 43, column: 5, scope: !4234, inlinedAt: !4230)
!4239 = !DILocation(line: 109, column: 3, scope: !4209)
!4240 = !DILocation(line: 39, column: 17, scope: !4223)
!4241 = !DILocation(line: 41, column: 13, scope: !4223)
!4242 = !DILocation(line: 41, column: 9, scope: !4223)
!4243 = !DILocation(line: 42, column: 8, scope: !4234)
!4244 = !DILocation(line: 42, column: 15, scope: !4236)
!4245 = !DILocation(line: 42, column: 10, scope: !4234)
!4246 = !DILocation(line: 43, column: 5, scope: !4234)
!4247 = !DILocation(line: 44, column: 3, scope: !4223)
!4248 = distinct !DISubprogram(name: "xnrealloc", scope: !581, file: !581, line: 118, type: !4249, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4251)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!31, !31, !32, !32}
!4251 = !{!4252, !4253, !4254}
!4252 = !DILocalVariable(name: "p", arg: 1, scope: !4248, file: !581, line: 118, type: !31)
!4253 = !DILocalVariable(name: "n", arg: 2, scope: !4248, file: !581, line: 118, type: !32)
!4254 = !DILocalVariable(name: "s", arg: 3, scope: !4248, file: !581, line: 118, type: !32)
!4255 = !DILocation(line: 118, column: 18, scope: !4248)
!4256 = !DILocation(line: 118, column: 28, scope: !4248)
!4257 = !DILocation(line: 118, column: 38, scope: !4248)
!4258 = !DILocation(line: 120, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4248, file: !581, line: 120, column: 7)
!4260 = !DILocation(line: 120, column: 7, scope: !4248)
!4261 = !DILocation(line: 121, column: 5, scope: !4259)
!4262 = !DILocation(line: 122, column: 25, scope: !4248)
!4263 = !DILocalVariable(name: "p", arg: 1, scope: !4264, file: !4224, line: 51, type: !31)
!4264 = distinct !DISubprogram(name: "xrealloc", scope: !4224, file: !4224, line: 51, type: !4265, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4267)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!31, !31, !32}
!4267 = !{!4263, !4268}
!4268 = !DILocalVariable(name: "n", arg: 2, scope: !4264, file: !4224, line: 51, type: !32)
!4269 = !DILocation(line: 51, column: 17, scope: !4264, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 122, column: 10, scope: !4248)
!4271 = !DILocation(line: 51, column: 27, scope: !4264, inlinedAt: !4270)
!4272 = !DILocation(line: 53, column: 8, scope: !4273, inlinedAt: !4270)
!4273 = distinct !DILexicalBlock(scope: !4264, file: !4224, line: 53, column: 7)
!4274 = !DILocation(line: 53, column: 13, scope: !4275, inlinedAt: !4270)
!4275 = !DILexicalBlockFile(scope: !4273, file: !4224, discriminator: 1)
!4276 = !DILocation(line: 53, column: 10, scope: !4273, inlinedAt: !4270)
!4277 = !DILocation(line: 57, column: 7, scope: !4278, inlinedAt: !4270)
!4278 = distinct !DILexicalBlock(scope: !4273, file: !4224, line: 54, column: 5)
!4279 = !DILocation(line: 58, column: 7, scope: !4278, inlinedAt: !4270)
!4280 = !DILocation(line: 61, column: 7, scope: !4264, inlinedAt: !4270)
!4281 = !DILocation(line: 62, column: 8, scope: !4282, inlinedAt: !4270)
!4282 = distinct !DILexicalBlock(scope: !4264, file: !4224, line: 62, column: 7)
!4283 = !DILocation(line: 62, column: 13, scope: !4284, inlinedAt: !4270)
!4284 = !DILexicalBlockFile(scope: !4282, file: !4224, discriminator: 1)
!4285 = !DILocation(line: 62, column: 10, scope: !4282, inlinedAt: !4270)
!4286 = !DILocation(line: 63, column: 5, scope: !4282, inlinedAt: !4270)
!4287 = !DILocation(line: 122, column: 3, scope: !4248)
!4288 = !DILocation(line: 51, column: 17, scope: !4264)
!4289 = !DILocation(line: 51, column: 27, scope: !4264)
!4290 = !DILocation(line: 53, column: 8, scope: !4273)
!4291 = !DILocation(line: 53, column: 13, scope: !4275)
!4292 = !DILocation(line: 53, column: 10, scope: !4273)
!4293 = !DILocation(line: 57, column: 7, scope: !4278)
!4294 = !DILocation(line: 58, column: 7, scope: !4278)
!4295 = !DILocation(line: 61, column: 7, scope: !4264)
!4296 = !DILocation(line: 62, column: 8, scope: !4282)
!4297 = !DILocation(line: 62, column: 13, scope: !4284)
!4298 = !DILocation(line: 62, column: 10, scope: !4282)
!4299 = !DILocation(line: 63, column: 5, scope: !4282)
!4300 = !DILocation(line: 65, column: 1, scope: !4264)
!4301 = !DILocation(line: 180, column: 19, scope: !582)
!4302 = !DILocation(line: 180, column: 30, scope: !582)
!4303 = !DILocation(line: 180, column: 41, scope: !582)
!4304 = !DILocation(line: 182, column: 14, scope: !582)
!4305 = !DILocation(line: 182, column: 10, scope: !582)
!4306 = !DILocation(line: 184, column: 9, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !582, file: !581, line: 184, column: 7)
!4308 = !DILocation(line: 184, column: 7, scope: !582)
!4309 = !DILocation(line: 186, column: 13, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !581, line: 186, column: 11)
!4311 = distinct !DILexicalBlock(scope: !4307, file: !581, line: 185, column: 5)
!4312 = !DILocation(line: 186, column: 11, scope: !4311)
!4313 = !DILocation(line: 194, column: 30, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4310, file: !581, line: 187, column: 9)
!4315 = !DILocation(line: 195, column: 16, scope: !4314)
!4316 = !DILocation(line: 195, column: 13, scope: !4314)
!4317 = !DILocation(line: 196, column: 9, scope: !4314)
!4318 = !DILocation(line: 204, column: 69, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !581, line: 204, column: 11)
!4320 = distinct !DILexicalBlock(scope: !4307, file: !581, line: 199, column: 5)
!4321 = !DILocation(line: 205, column: 11, scope: !4319)
!4322 = !DILocation(line: 204, column: 11, scope: !4320)
!4323 = !DILocation(line: 206, column: 9, scope: !4319)
!4324 = !DILocation(line: 210, column: 7, scope: !582)
!4325 = !DILocation(line: 211, column: 25, scope: !582)
!4326 = !DILocation(line: 51, column: 17, scope: !4264, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 211, column: 10, scope: !582)
!4328 = !DILocation(line: 51, column: 27, scope: !4264, inlinedAt: !4327)
!4329 = !DILocation(line: 53, column: 10, scope: !4273, inlinedAt: !4327)
!4330 = !DILocation(line: 207, column: 14, scope: !4320)
!4331 = !DILocation(line: 207, column: 18, scope: !4320)
!4332 = !DILocation(line: 207, column: 9, scope: !4320)
!4333 = !DILocation(line: 53, column: 8, scope: !4273, inlinedAt: !4327)
!4334 = !DILocation(line: 57, column: 7, scope: !4278, inlinedAt: !4327)
!4335 = !DILocation(line: 58, column: 7, scope: !4278, inlinedAt: !4327)
!4336 = !DILocation(line: 61, column: 7, scope: !4264, inlinedAt: !4327)
!4337 = !DILocation(line: 62, column: 8, scope: !4282, inlinedAt: !4327)
!4338 = !DILocation(line: 62, column: 13, scope: !4284, inlinedAt: !4327)
!4339 = !DILocation(line: 62, column: 10, scope: !4282, inlinedAt: !4327)
!4340 = !DILocation(line: 63, column: 5, scope: !4282, inlinedAt: !4327)
!4341 = !DILocation(line: 211, column: 3, scope: !582)
!4342 = distinct !DISubprogram(name: "xcharalloc", scope: !581, file: !581, line: 220, type: !3274, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4343)
!4343 = !{!4344}
!4344 = !DILocalVariable(name: "n", arg: 1, scope: !4342, file: !581, line: 220, type: !32)
!4345 = !DILocation(line: 220, column: 20, scope: !4342)
!4346 = !DILocation(line: 39, column: 17, scope: !4223, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 222, column: 10, scope: !4342)
!4348 = !DILocation(line: 41, column: 13, scope: !4223, inlinedAt: !4347)
!4349 = !DILocation(line: 41, column: 9, scope: !4223, inlinedAt: !4347)
!4350 = !DILocation(line: 42, column: 8, scope: !4234, inlinedAt: !4347)
!4351 = !DILocation(line: 42, column: 15, scope: !4236, inlinedAt: !4347)
!4352 = !DILocation(line: 42, column: 10, scope: !4234, inlinedAt: !4347)
!4353 = !DILocation(line: 43, column: 5, scope: !4234, inlinedAt: !4347)
!4354 = !DILocation(line: 222, column: 3, scope: !4342)
!4355 = distinct !DISubprogram(name: "x2realloc", scope: !4224, file: !4224, line: 74, type: !4356, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!31, !31, !585}
!4358 = !{!4359, !4360}
!4359 = !DILocalVariable(name: "p", arg: 1, scope: !4355, file: !4224, line: 74, type: !31)
!4360 = !DILocalVariable(name: "pn", arg: 2, scope: !4355, file: !4224, line: 74, type: !585)
!4361 = !DILocation(line: 74, column: 18, scope: !4355)
!4362 = !DILocation(line: 74, column: 29, scope: !4355)
!4363 = !DILocation(line: 180, column: 19, scope: !582, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 76, column: 10, scope: !4355)
!4365 = !DILocation(line: 180, column: 30, scope: !582, inlinedAt: !4364)
!4366 = !DILocation(line: 180, column: 41, scope: !582, inlinedAt: !4364)
!4367 = !DILocation(line: 182, column: 14, scope: !582, inlinedAt: !4364)
!4368 = !DILocation(line: 182, column: 10, scope: !582, inlinedAt: !4364)
!4369 = !DILocation(line: 184, column: 9, scope: !4307, inlinedAt: !4364)
!4370 = !DILocation(line: 184, column: 7, scope: !582, inlinedAt: !4364)
!4371 = !DILocation(line: 186, column: 13, scope: !4310, inlinedAt: !4364)
!4372 = !DILocation(line: 186, column: 11, scope: !4311, inlinedAt: !4364)
!4373 = !DILocation(line: 210, column: 7, scope: !582, inlinedAt: !4364)
!4374 = !DILocation(line: 51, column: 17, scope: !4264, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 211, column: 10, scope: !582, inlinedAt: !4364)
!4376 = !DILocation(line: 51, column: 27, scope: !4264, inlinedAt: !4375)
!4377 = !DILocation(line: 53, column: 10, scope: !4273, inlinedAt: !4375)
!4378 = !DILocation(line: 205, column: 11, scope: !4319, inlinedAt: !4364)
!4379 = !DILocation(line: 204, column: 11, scope: !4320, inlinedAt: !4364)
!4380 = !DILocation(line: 206, column: 9, scope: !4319, inlinedAt: !4364)
!4381 = !DILocation(line: 207, column: 14, scope: !4320, inlinedAt: !4364)
!4382 = !DILocation(line: 207, column: 18, scope: !4320, inlinedAt: !4364)
!4383 = !DILocation(line: 207, column: 9, scope: !4320, inlinedAt: !4364)
!4384 = !DILocation(line: 53, column: 8, scope: !4273, inlinedAt: !4375)
!4385 = !DILocation(line: 57, column: 7, scope: !4278, inlinedAt: !4375)
!4386 = !DILocation(line: 58, column: 7, scope: !4278, inlinedAt: !4375)
!4387 = !DILocation(line: 61, column: 7, scope: !4264, inlinedAt: !4375)
!4388 = !DILocation(line: 62, column: 8, scope: !4282, inlinedAt: !4375)
!4389 = !DILocation(line: 62, column: 13, scope: !4284, inlinedAt: !4375)
!4390 = !DILocation(line: 62, column: 10, scope: !4282, inlinedAt: !4375)
!4391 = !DILocation(line: 63, column: 5, scope: !4282, inlinedAt: !4375)
!4392 = !DILocation(line: 76, column: 3, scope: !4355)
!4393 = distinct !DISubprogram(name: "xzalloc", scope: !4224, file: !4224, line: 84, type: !4225, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4394)
!4394 = !{!4395}
!4395 = !DILocalVariable(name: "s", arg: 1, scope: !4393, file: !4224, line: 84, type: !32)
!4396 = !DILocation(line: 84, column: 17, scope: !4393)
!4397 = !DILocation(line: 39, column: 17, scope: !4223, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 86, column: 18, scope: !4393)
!4399 = !DILocation(line: 41, column: 13, scope: !4223, inlinedAt: !4398)
!4400 = !DILocation(line: 41, column: 9, scope: !4223, inlinedAt: !4398)
!4401 = !DILocation(line: 42, column: 8, scope: !4234, inlinedAt: !4398)
!4402 = !DILocation(line: 42, column: 15, scope: !4236, inlinedAt: !4398)
!4403 = !DILocation(line: 42, column: 10, scope: !4234, inlinedAt: !4398)
!4404 = !DILocation(line: 43, column: 5, scope: !4234, inlinedAt: !4398)
!4405 = !DILocation(line: 86, column: 10, scope: !4393)
!4406 = !DILocation(line: 86, column: 3, scope: !4393)
!4407 = distinct !DISubprogram(name: "xcalloc", scope: !4224, file: !4224, line: 93, type: !4210, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4408)
!4408 = !{!4409, !4410, !4411}
!4409 = !DILocalVariable(name: "n", arg: 1, scope: !4407, file: !4224, line: 93, type: !32)
!4410 = !DILocalVariable(name: "s", arg: 2, scope: !4407, file: !4224, line: 93, type: !32)
!4411 = !DILocalVariable(name: "p", scope: !4407, file: !4224, line: 95, type: !31)
!4412 = !DILocation(line: 93, column: 17, scope: !4407)
!4413 = !DILocation(line: 93, column: 27, scope: !4407)
!4414 = !DILocation(line: 100, column: 7, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4407, file: !4224, line: 100, column: 7)
!4416 = !DILocation(line: 101, column: 7, scope: !4415)
!4417 = !DILocation(line: 101, column: 18, scope: !4418)
!4418 = !DILexicalBlockFile(scope: !4415, file: !4224, discriminator: 1)
!4419 = !DILocation(line: 95, column: 9, scope: !4407)
!4420 = !DILocation(line: 101, column: 16, scope: !4418)
!4421 = !DILocation(line: 100, column: 7, scope: !4422)
!4422 = !DILexicalBlockFile(scope: !4407, file: !4224, discriminator: 1)
!4423 = !DILocation(line: 102, column: 5, scope: !4415)
!4424 = !DILocation(line: 103, column: 3, scope: !4407)
!4425 = distinct !DISubprogram(name: "xmemdup", scope: !4224, file: !4224, line: 111, type: !4426, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4428)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!31, !35, !32}
!4428 = !{!4429, !4430}
!4429 = !DILocalVariable(name: "p", arg: 1, scope: !4425, file: !4224, line: 111, type: !35)
!4430 = !DILocalVariable(name: "s", arg: 2, scope: !4425, file: !4224, line: 111, type: !32)
!4431 = !DILocation(line: 111, column: 22, scope: !4425)
!4432 = !DILocation(line: 111, column: 32, scope: !4425)
!4433 = !DILocation(line: 39, column: 17, scope: !4223, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 113, column: 18, scope: !4425)
!4435 = !DILocation(line: 41, column: 13, scope: !4223, inlinedAt: !4434)
!4436 = !DILocation(line: 41, column: 9, scope: !4223, inlinedAt: !4434)
!4437 = !DILocation(line: 42, column: 8, scope: !4234, inlinedAt: !4434)
!4438 = !DILocation(line: 42, column: 15, scope: !4236, inlinedAt: !4434)
!4439 = !DILocation(line: 42, column: 10, scope: !4234, inlinedAt: !4434)
!4440 = !DILocation(line: 43, column: 5, scope: !4234, inlinedAt: !4434)
!4441 = !DILocation(line: 113, column: 10, scope: !4425)
!4442 = !DILocation(line: 113, column: 3, scope: !4425)
!4443 = distinct !DISubprogram(name: "xstrdup", scope: !4224, file: !4224, line: 119, type: !3479, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !577, variables: !4444)
!4444 = !{!4445}
!4445 = !DILocalVariable(name: "string", arg: 1, scope: !4443, file: !4224, line: 119, type: !40)
!4446 = !DILocation(line: 119, column: 22, scope: !4443)
!4447 = !DILocation(line: 121, column: 27, scope: !4443)
!4448 = !DILocation(line: 121, column: 43, scope: !4443)
!4449 = !DILocation(line: 111, column: 22, scope: !4425, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 121, column: 10, scope: !4451)
!4451 = !DILexicalBlockFile(scope: !4443, file: !4224, discriminator: 1)
!4452 = !DILocation(line: 111, column: 32, scope: !4425, inlinedAt: !4450)
!4453 = !DILocation(line: 39, column: 17, scope: !4223, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 113, column: 18, scope: !4425, inlinedAt: !4450)
!4455 = !DILocation(line: 41, column: 13, scope: !4223, inlinedAt: !4454)
!4456 = !DILocation(line: 41, column: 9, scope: !4223, inlinedAt: !4454)
!4457 = !DILocation(line: 42, column: 8, scope: !4234, inlinedAt: !4454)
!4458 = !DILocation(line: 42, column: 15, scope: !4236, inlinedAt: !4454)
!4459 = !DILocation(line: 42, column: 10, scope: !4234, inlinedAt: !4454)
!4460 = !DILocation(line: 43, column: 5, scope: !4234, inlinedAt: !4454)
!4461 = !DILocation(line: 113, column: 10, scope: !4425, inlinedAt: !4450)
!4462 = !DILocation(line: 121, column: 3, scope: !4443)
!4463 = distinct !DISubprogram(name: "xalloc_die", scope: !4464, file: !4464, line: 32, type: !659, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !594, variables: !90)
!4464 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4465 = !DILocation(line: 34, column: 10, scope: !4463)
!4466 = !DILocation(line: 34, column: 33, scope: !4463)
!4467 = !DILocation(line: 34, column: 3, scope: !4468)
!4468 = !DILexicalBlockFile(scope: !4463, file: !4464, discriminator: 1)
!4469 = !DILocation(line: 40, column: 3, scope: !4463)
!4470 = distinct !DISubprogram(name: "xnumtoumax", scope: !4471, file: !4471, line: 36, type: !4472, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !4474)
!4471 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!767, !40, !70, !767, !767, !40, !40, !70}
!4474 = !{!4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4484}
!4475 = !DILocalVariable(name: "n_str", arg: 1, scope: !4470, file: !4471, line: 36, type: !40)
!4476 = !DILocalVariable(name: "base", arg: 2, scope: !4470, file: !4471, line: 36, type: !70)
!4477 = !DILocalVariable(name: "min", arg: 3, scope: !4470, file: !4471, line: 36, type: !767)
!4478 = !DILocalVariable(name: "max", arg: 4, scope: !4470, file: !4471, line: 36, type: !767)
!4479 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4470, file: !4471, line: 37, type: !40)
!4480 = !DILocalVariable(name: "err", arg: 6, scope: !4470, file: !4471, line: 37, type: !40)
!4481 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4470, file: !4471, line: 37, type: !70)
!4482 = !DILocalVariable(name: "s_err", scope: !4470, file: !4471, line: 39, type: !4483)
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !600, line: 39, baseType: !599)
!4484 = !DILocalVariable(name: "tnum", scope: !4470, file: !4471, line: 41, type: !767)
!4485 = !DILocation(line: 36, column: 26, scope: !4470)
!4486 = !DILocation(line: 36, column: 37, scope: !4470)
!4487 = !DILocation(line: 36, column: 57, scope: !4470)
!4488 = !DILocation(line: 36, column: 76, scope: !4470)
!4489 = !DILocation(line: 37, column: 26, scope: !4470)
!4490 = !DILocation(line: 37, column: 48, scope: !4470)
!4491 = !DILocation(line: 37, column: 57, scope: !4470)
!4492 = !DILocation(line: 41, column: 3, scope: !4470)
!4493 = !DILocation(line: 41, column: 17, scope: !4470)
!4494 = !DILocation(line: 42, column: 11, scope: !4470)
!4495 = !DILocation(line: 39, column: 16, scope: !4470)
!4496 = !DILocation(line: 44, column: 7, scope: !4470)
!4497 = !DILocation(line: 69, column: 50, scope: !4498)
!4498 = !DILexicalBlockFile(scope: !4499, file: !4471, discriminator: 3)
!4499 = distinct !DILexicalBlock(scope: !4500, file: !4471, line: 67, column: 5)
!4500 = distinct !DILexicalBlock(scope: !4470, file: !4471, line: 66, column: 7)
!4501 = !DILocation(line: 46, column: 11, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !4471, line: 46, column: 11)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !4471, line: 45, column: 5)
!4504 = distinct !DILexicalBlock(scope: !4470, file: !4471, line: 44, column: 7)
!4505 = !DILocation(line: 46, column: 16, scope: !4502)
!4506 = !DILocation(line: 46, column: 29, scope: !4507)
!4507 = !DILexicalBlockFile(scope: !4502, file: !4471, discriminator: 1)
!4508 = !DILocation(line: 46, column: 22, scope: !4502)
!4509 = !DILocation(line: 51, column: 20, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !4471, line: 51, column: 15)
!4511 = distinct !DILexicalBlock(scope: !4502, file: !4471, line: 47, column: 9)
!4512 = !DILocation(line: 52, column: 13, scope: !4510)
!4513 = !DILocation(line: 51, column: 15, scope: !4511)
!4514 = !DILocation(line: 59, column: 9, scope: !4511)
!4515 = !DILocation(line: 62, column: 5, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4504, file: !4471, line: 61, column: 12)
!4517 = !DILocation(line: 62, column: 11, scope: !4516)
!4518 = !DILocation(line: 64, column: 5, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4516, file: !4471, line: 63, column: 12)
!4520 = !DILocation(line: 64, column: 11, scope: !4519)
!4521 = !DILocation(line: 69, column: 14, scope: !4499)
!4522 = !DILocation(line: 69, column: 56, scope: !4498)
!4523 = !DILocation(line: 70, column: 29, scope: !4499)
!4524 = !DILocation(line: 69, column: 7, scope: !4525)
!4525 = !DILexicalBlockFile(scope: !4499, file: !4471, discriminator: 6)
!4526 = !DILocation(line: 71, column: 5, scope: !4499)
!4527 = !DILocation(line: 73, column: 10, scope: !4470)
!4528 = !DILocation(line: 74, column: 1, scope: !4470)
!4529 = !DILocation(line: 73, column: 3, scope: !4470)
!4530 = distinct !DISubprogram(name: "xdectoumax", scope: !4471, file: !4471, line: 82, type: !4531, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !596, variables: !4533)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!767, !40, !767, !767, !40, !40, !70}
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539}
!4534 = !DILocalVariable(name: "n_str", arg: 1, scope: !4530, file: !4471, line: 82, type: !40)
!4535 = !DILocalVariable(name: "min", arg: 2, scope: !4530, file: !4471, line: 82, type: !767)
!4536 = !DILocalVariable(name: "max", arg: 3, scope: !4530, file: !4471, line: 82, type: !767)
!4537 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4530, file: !4471, line: 83, type: !40)
!4538 = !DILocalVariable(name: "err", arg: 5, scope: !4530, file: !4471, line: 83, type: !40)
!4539 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4530, file: !4471, line: 83, type: !70)
!4540 = !DILocation(line: 82, column: 26, scope: !4530)
!4541 = !DILocation(line: 82, column: 47, scope: !4530)
!4542 = !DILocation(line: 82, column: 66, scope: !4530)
!4543 = !DILocation(line: 83, column: 26, scope: !4530)
!4544 = !DILocation(line: 83, column: 48, scope: !4530)
!4545 = !DILocation(line: 83, column: 57, scope: !4530)
!4546 = !DILocation(line: 85, column: 10, scope: !4530)
!4547 = !DILocation(line: 85, column: 3, scope: !4530)
!4548 = distinct !DISubprogram(name: "xstrtoumax", scope: !4549, file: !4549, line: 88, type: !4550, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !4553)
!4549 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!4483, !40, !703, !70, !4552, !40}
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!4553 = !{!4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4566, !4567, !4570, !4571}
!4554 = !DILocalVariable(name: "s", arg: 1, scope: !4548, file: !4549, line: 88, type: !40)
!4555 = !DILocalVariable(name: "ptr", arg: 2, scope: !4548, file: !4549, line: 88, type: !703)
!4556 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4548, file: !4549, line: 88, type: !70)
!4557 = !DILocalVariable(name: "val", arg: 4, scope: !4548, file: !4549, line: 89, type: !4552)
!4558 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4548, file: !4549, line: 89, type: !40)
!4559 = !DILocalVariable(name: "t_ptr", scope: !4548, file: !4549, line: 91, type: !29)
!4560 = !DILocalVariable(name: "p", scope: !4548, file: !4549, line: 92, type: !703)
!4561 = !DILocalVariable(name: "tmp", scope: !4548, file: !4549, line: 93, type: !767)
!4562 = !DILocalVariable(name: "err", scope: !4548, file: !4549, line: 94, type: !4483)
!4563 = !DILocalVariable(name: "q", scope: !4564, file: !4549, line: 104, type: !40)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !4549, line: 103, column: 5)
!4565 = distinct !DILexicalBlock(scope: !4548, file: !4549, line: 102, column: 7)
!4566 = !DILocalVariable(name: "ch", scope: !4564, file: !4549, line: 105, type: !39)
!4567 = !DILocalVariable(name: "base", scope: !4568, file: !4549, line: 141, type: !70)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !4549, line: 140, column: 5)
!4569 = distinct !DILexicalBlock(scope: !4548, file: !4549, line: 139, column: 7)
!4570 = !DILocalVariable(name: "suffixes", scope: !4568, file: !4549, line: 142, type: !70)
!4571 = !DILocalVariable(name: "overflow", scope: !4568, file: !4549, line: 143, type: !4483)
!4572 = !DILocation(line: 88, column: 24, scope: !4548)
!4573 = !DILocation(line: 88, column: 34, scope: !4548)
!4574 = !DILocation(line: 88, column: 43, scope: !4548)
!4575 = !DILocation(line: 89, column: 24, scope: !4548)
!4576 = !DILocation(line: 89, column: 41, scope: !4548)
!4577 = !DILocation(line: 91, column: 3, scope: !4548)
!4578 = !DILocation(line: 94, column: 16, scope: !4548)
!4579 = !DILocation(line: 96, column: 3, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !4549, line: 96, column: 3)
!4581 = distinct !DILexicalBlock(scope: !4548, file: !4549, line: 96, column: 3)
!4582 = !DILocation(line: 96, column: 3, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !4580, file: !4549, discriminator: 3)
!4584 = !DILocation(line: 98, column: 8, scope: !4548)
!4585 = !DILocation(line: 92, column: 10, scope: !4548)
!4586 = !DILocation(line: 100, column: 3, scope: !4548)
!4587 = !DILocation(line: 100, column: 9, scope: !4548)
!4588 = !DILocation(line: 104, column: 19, scope: !4564)
!4589 = !DILocation(line: 106, column: 14, scope: !4590)
!4590 = !DILexicalBlockFile(scope: !4564, file: !4549, discriminator: 1)
!4591 = !DILocation(line: 106, column: 7, scope: !4564)
!4592 = !DILocation(line: 105, column: 21, scope: !4564)
!4593 = !DILocation(line: 106, column: 7, scope: !4590)
!4594 = !DILocation(line: 107, column: 15, scope: !4564)
!4595 = distinct !{!4595, !4591, !4596}
!4596 = !DILocation(line: 107, column: 17, scope: !4564)
!4597 = !DILocation(line: 109, column: 9, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4564, file: !4549, line: 108, column: 11)
!4599 = !DILocalVariable(name: "nptr", arg: 1, scope: !4600, file: !4601, line: 336, type: !98)
!4600 = distinct !DISubprogram(name: "strtoumax", scope: !4601, file: !4601, line: 336, type: !4602, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !4605)
!4601 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!767, !98, !4604, !70}
!4604 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !703)
!4605 = !{!4599, !4606, !4607}
!4606 = !DILocalVariable(name: "endptr", arg: 2, scope: !4600, file: !4601, line: 336, type: !4604)
!4607 = !DILocalVariable(name: "base", arg: 3, scope: !4600, file: !4601, line: 336, type: !70)
!4608 = !DILocation(line: 336, column: 1, scope: !4600, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 112, column: 9, scope: !4548)
!4610 = !DILocation(line: 339, column: 10, scope: !4600, inlinedAt: !4609)
!4611 = !DILocation(line: 93, column: 14, scope: !4548)
!4612 = !DILocation(line: 114, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4548, file: !4549, line: 114, column: 7)
!4614 = !DILocation(line: 114, column: 10, scope: !4613)
!4615 = !DILocation(line: 114, column: 7, scope: !4548)
!4616 = !DILocation(line: 118, column: 11, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !4549, line: 118, column: 11)
!4618 = distinct !DILexicalBlock(scope: !4613, file: !4549, line: 115, column: 5)
!4619 = !DILocation(line: 118, column: 26, scope: !4617)
!4620 = !DILocation(line: 118, column: 29, scope: !4621)
!4621 = !DILexicalBlockFile(scope: !4617, file: !4549, discriminator: 1)
!4622 = !DILocation(line: 118, column: 33, scope: !4621)
!4623 = !DILocation(line: 118, column: 36, scope: !4624)
!4624 = !DILexicalBlockFile(scope: !4617, file: !4549, discriminator: 5)
!4625 = !DILocation(line: 118, column: 11, scope: !4626)
!4626 = !DILexicalBlockFile(scope: !4618, file: !4549, discriminator: 5)
!4627 = !DILocation(line: 123, column: 12, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4613, file: !4549, line: 123, column: 12)
!4629 = !DILocation(line: 123, column: 12, scope: !4613)
!4630 = !DILocation(line: 128, column: 5, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4628, file: !4549, line: 124, column: 5)
!4632 = !DILocation(line: 133, column: 8, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4548, file: !4549, line: 133, column: 7)
!4634 = !DILocation(line: 133, column: 7, scope: !4548)
!4635 = !DILocation(line: 135, column: 12, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4633, file: !4549, line: 134, column: 5)
!4637 = !DILocation(line: 136, column: 7, scope: !4636)
!4638 = !DILocation(line: 139, column: 7, scope: !4569)
!4639 = !DILocation(line: 139, column: 11, scope: !4569)
!4640 = !DILocation(line: 139, column: 7, scope: !4548)
!4641 = !DILocation(line: 141, column: 11, scope: !4568)
!4642 = !DILocation(line: 142, column: 11, scope: !4568)
!4643 = !DILocation(line: 145, column: 12, scope: !4644)
!4644 = !DILexicalBlockFile(scope: !4645, file: !4549, discriminator: 3)
!4645 = distinct !DILexicalBlock(scope: !4568, file: !4549, line: 145, column: 11)
!4646 = !DILocation(line: 145, column: 11, scope: !4647)
!4647 = !DILexicalBlockFile(scope: !4568, file: !4549, discriminator: 3)
!4648 = !DILocation(line: 147, column: 16, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4645, file: !4549, line: 146, column: 9)
!4650 = !DILocation(line: 148, column: 22, scope: !4649)
!4651 = !DILocation(line: 148, column: 11, scope: !4649)
!4652 = !DILocation(line: 151, column: 7, scope: !4568)
!4653 = !DILocation(line: 163, column: 15, scope: !4654)
!4654 = !DILexicalBlockFile(scope: !4655, file: !4549, discriminator: 2)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !4549, line: 163, column: 15)
!4656 = distinct !DILexicalBlock(scope: !4568, file: !4549, line: 152, column: 9)
!4657 = !DILocation(line: 163, column: 15, scope: !4658)
!4658 = !DILexicalBlockFile(scope: !4656, file: !4549, discriminator: 2)
!4659 = !DILocation(line: 164, column: 21, scope: !4655)
!4660 = !DILocation(line: 164, column: 13, scope: !4655)
!4661 = !DILocation(line: 167, column: 21, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !4549, line: 167, column: 21)
!4663 = distinct !DILexicalBlock(scope: !4655, file: !4549, line: 165, column: 15)
!4664 = !DILocation(line: 167, column: 29, scope: !4662)
!4665 = !DILocation(line: 167, column: 21, scope: !4663)
!4666 = !DILocation(line: 175, column: 17, scope: !4663)
!4667 = !DILocation(line: 179, column: 7, scope: !4568)
!4668 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4669, file: !4549, line: 60, type: !70)
!4669 = distinct !DISubprogram(name: "bkm_scale", scope: !4549, file: !4549, line: 60, type: !4670, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !4672)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!4483, !4552, !70}
!4672 = !{!4673, !4668}
!4673 = !DILocalVariable(name: "x", arg: 1, scope: !4669, file: !4549, line: 60, type: !4552)
!4674 = !DILocation(line: 60, column: 31, scope: !4669, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 182, column: 22, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4568, file: !4549, line: 180, column: 9)
!4677 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4675)
!4678 = distinct !DILexicalBlock(scope: !4669, file: !4549, line: 67, column: 7)
!4679 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4675)
!4680 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4675)
!4681 = !DILocation(line: 143, column: 20, scope: !4568)
!4682 = !DILocation(line: 183, column: 11, scope: !4676)
!4683 = !DILocation(line: 60, column: 31, scope: !4669, inlinedAt: !4684)
!4684 = distinct !DILocation(line: 189, column: 22, scope: !4676)
!4685 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4684)
!4686 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4684)
!4687 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4684)
!4688 = !DILocation(line: 190, column: 11, scope: !4676)
!4689 = !DILocalVariable(name: "power", arg: 3, scope: !4690, file: !4549, line: 77, type: !70)
!4690 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4549, file: !4549, line: 77, type: !4691, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !607, variables: !4693)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!4483, !4552, !70, !70}
!4693 = !{!4694, !4695, !4689, !4696}
!4694 = !DILocalVariable(name: "x", arg: 1, scope: !4690, file: !4549, line: 77, type: !4552)
!4695 = !DILocalVariable(name: "base", arg: 2, scope: !4690, file: !4549, line: 77, type: !70)
!4696 = !DILocalVariable(name: "err", scope: !4690, file: !4549, line: 79, type: !4483)
!4697 = !DILocation(line: 77, column: 50, scope: !4690, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 197, column: 22, scope: !4676)
!4699 = !DILocation(line: 79, column: 16, scope: !4690, inlinedAt: !4698)
!4700 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 81, column: 12, scope: !4690, inlinedAt: !4698)
!4702 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4701)
!4703 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4701)
!4704 = !DILocation(line: 81, column: 9, scope: !4690, inlinedAt: !4698)
!4705 = !DILocation(line: 77, column: 50, scope: !4690, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 202, column: 22, scope: !4676)
!4707 = !DILocation(line: 79, column: 16, scope: !4690, inlinedAt: !4706)
!4708 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 81, column: 12, scope: !4690, inlinedAt: !4706)
!4710 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4709)
!4711 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4709)
!4712 = !DILocation(line: 81, column: 9, scope: !4690, inlinedAt: !4706)
!4713 = !DILocation(line: 77, column: 50, scope: !4690, inlinedAt: !4714)
!4714 = distinct !DILocation(line: 207, column: 22, scope: !4676)
!4715 = !DILocation(line: 79, column: 16, scope: !4690, inlinedAt: !4714)
!4716 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4717)
!4717 = distinct !DILocation(line: 81, column: 12, scope: !4690, inlinedAt: !4714)
!4718 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4717)
!4719 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4717)
!4720 = !DILocation(line: 77, column: 50, scope: !4690, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 212, column: 22, scope: !4676)
!4722 = !DILocation(line: 79, column: 16, scope: !4690, inlinedAt: !4721)
!4723 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 81, column: 12, scope: !4690, inlinedAt: !4721)
!4725 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4724)
!4726 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4724)
!4727 = !DILocation(line: 81, column: 9, scope: !4690, inlinedAt: !4721)
!4728 = !DILocation(line: 77, column: 50, scope: !4690, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 216, column: 22, scope: !4676)
!4730 = !DILocation(line: 79, column: 16, scope: !4690, inlinedAt: !4729)
!4731 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 81, column: 12, scope: !4690, inlinedAt: !4729)
!4733 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4732)
!4734 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4732)
!4735 = !DILocation(line: 81, column: 9, scope: !4690, inlinedAt: !4729)
!4736 = !DILocation(line: 77, column: 50, scope: !4690, inlinedAt: !4737)
!4737 = distinct !DILocation(line: 221, column: 22, scope: !4676)
!4738 = !DILocation(line: 79, column: 16, scope: !4690, inlinedAt: !4737)
!4739 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 81, column: 12, scope: !4690, inlinedAt: !4737)
!4741 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4740)
!4742 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4740)
!4743 = !DILocation(line: 81, column: 9, scope: !4690, inlinedAt: !4737)
!4744 = !DILocation(line: 60, column: 31, scope: !4669, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 225, column: 22, scope: !4676)
!4746 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4745)
!4747 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4745)
!4748 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4745)
!4749 = !DILocation(line: 226, column: 11, scope: !4676)
!4750 = !DILocation(line: 77, column: 50, scope: !4690, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 229, column: 22, scope: !4676)
!4752 = !DILocation(line: 79, column: 16, scope: !4690, inlinedAt: !4751)
!4753 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 81, column: 12, scope: !4690, inlinedAt: !4751)
!4755 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4754)
!4756 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4754)
!4757 = !DILocation(line: 81, column: 9, scope: !4690, inlinedAt: !4751)
!4758 = !DILocation(line: 77, column: 50, scope: !4690, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 233, column: 22, scope: !4676)
!4760 = !DILocation(line: 79, column: 16, scope: !4690, inlinedAt: !4759)
!4761 = !DILocation(line: 67, column: 39, scope: !4678, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 81, column: 12, scope: !4690, inlinedAt: !4759)
!4763 = !DILocation(line: 72, column: 6, scope: !4669, inlinedAt: !4762)
!4764 = !DILocation(line: 67, column: 7, scope: !4669, inlinedAt: !4762)
!4765 = !DILocation(line: 81, column: 9, scope: !4690, inlinedAt: !4759)
!4766 = !DILocation(line: 237, column: 16, scope: !4676)
!4767 = !DILocation(line: 238, column: 22, scope: !4676)
!4768 = !DILocation(line: 238, column: 11, scope: !4676)
!4769 = !DILocation(line: 241, column: 11, scope: !4568)
!4770 = !DILocation(line: 242, column: 10, scope: !4568)
!4771 = !DILocation(line: 243, column: 11, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4568, file: !4549, line: 243, column: 11)
!4773 = !DILocation(line: 244, column: 13, scope: !4772)
!4774 = !DILocation(line: 243, column: 11, scope: !4568)
!4775 = !DILocation(line: 247, column: 8, scope: !4548)
!4776 = !DILocation(line: 248, column: 3, scope: !4548)
!4777 = !DILocation(line: 249, column: 1, scope: !4548)
!4778 = distinct !DISubprogram(name: "rpl_calloc", scope: !4779, file: !4779, line: 42, type: !4210, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !611, variables: !4780)
!4779 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4780 = !{!4781, !4782, !4783, !4784}
!4781 = !DILocalVariable(name: "n", arg: 1, scope: !4778, file: !4779, line: 42, type: !32)
!4782 = !DILocalVariable(name: "s", arg: 2, scope: !4778, file: !4779, line: 42, type: !32)
!4783 = !DILocalVariable(name: "result", scope: !4778, file: !4779, line: 44, type: !31)
!4784 = !DILocalVariable(name: "bytes", scope: !4785, file: !4779, line: 56, type: !32)
!4785 = distinct !DILexicalBlock(scope: !4786, file: !4779, line: 53, column: 5)
!4786 = distinct !DILexicalBlock(scope: !4778, file: !4779, line: 47, column: 7)
!4787 = !DILocation(line: 42, column: 20, scope: !4778)
!4788 = !DILocation(line: 42, column: 30, scope: !4778)
!4789 = !DILocation(line: 47, column: 9, scope: !4786)
!4790 = !DILocation(line: 47, column: 19, scope: !4791)
!4791 = !DILexicalBlockFile(scope: !4786, file: !4779, discriminator: 1)
!4792 = !DILocation(line: 47, column: 14, scope: !4786)
!4793 = !DILocation(line: 56, column: 24, scope: !4785)
!4794 = !DILocation(line: 56, column: 14, scope: !4785)
!4795 = !DILocation(line: 57, column: 17, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4785, file: !4779, line: 57, column: 11)
!4797 = !DILocation(line: 57, column: 21, scope: !4796)
!4798 = !DILocation(line: 57, column: 11, scope: !4785)
!4799 = !DILocation(line: 59, column: 11, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4796, file: !4779, line: 58, column: 9)
!4801 = !DILocation(line: 59, column: 17, scope: !4800)
!4802 = !DILocation(line: 65, column: 12, scope: !4778)
!4803 = !DILocation(line: 44, column: 9, scope: !4778)
!4804 = !DILocation(line: 72, column: 3, scope: !4778)
!4805 = !DILocation(line: 73, column: 1, scope: !4778)
!4806 = distinct !DISubprogram(name: "rpl_fclose", scope: !4807, file: !4807, line: 56, type: !4808, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !613, variables: !4850)
!4807 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!70, !4810}
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !711, line: 49, baseType: !4812)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !713, line: 241, size: 1728, elements: !4813)
!4813 = !{!4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4812, file: !713, line: 242, baseType: !70, size: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4812, file: !713, line: 247, baseType: !29, size: 64, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4812, file: !713, line: 248, baseType: !29, size: 64, offset: 128)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4812, file: !713, line: 249, baseType: !29, size: 64, offset: 192)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4812, file: !713, line: 250, baseType: !29, size: 64, offset: 256)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4812, file: !713, line: 251, baseType: !29, size: 64, offset: 320)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4812, file: !713, line: 252, baseType: !29, size: 64, offset: 384)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4812, file: !713, line: 253, baseType: !29, size: 64, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4812, file: !713, line: 254, baseType: !29, size: 64, offset: 512)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4812, file: !713, line: 256, baseType: !29, size: 64, offset: 576)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4812, file: !713, line: 257, baseType: !29, size: 64, offset: 640)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4812, file: !713, line: 258, baseType: !29, size: 64, offset: 704)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4812, file: !713, line: 260, baseType: !4827, size: 64, offset: 768)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !713, line: 156, size: 192, elements: !4829)
!4829 = !{!4830, !4831, !4833}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4828, file: !713, line: 157, baseType: !4827, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4828, file: !713, line: 158, baseType: !4832, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4828, file: !713, line: 162, baseType: !70, size: 32, offset: 128)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4812, file: !713, line: 262, baseType: !4832, size: 64, offset: 832)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4812, file: !713, line: 264, baseType: !70, size: 32, offset: 896)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4812, file: !713, line: 268, baseType: !70, size: 32, offset: 928)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4812, file: !713, line: 270, baseType: !739, size: 64, offset: 960)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4812, file: !713, line: 274, baseType: !167, size: 16, offset: 1024)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4812, file: !713, line: 275, baseType: !108, size: 8, offset: 1040)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4812, file: !713, line: 276, baseType: !745, size: 8, offset: 1048)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4812, file: !713, line: 280, baseType: !749, size: 64, offset: 1088)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4812, file: !713, line: 289, baseType: !752, size: 64, offset: 1152)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4812, file: !713, line: 297, baseType: !31, size: 64, offset: 1216)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4812, file: !713, line: 298, baseType: !31, size: 64, offset: 1280)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4812, file: !713, line: 299, baseType: !31, size: 64, offset: 1344)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4812, file: !713, line: 300, baseType: !31, size: 64, offset: 1408)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4812, file: !713, line: 302, baseType: !32, size: 64, offset: 1472)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4812, file: !713, line: 303, baseType: !70, size: 32, offset: 1536)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4812, file: !713, line: 305, baseType: !760, size: 160, offset: 1568)
!4850 = !{!4851, !4852, !4853, !4854}
!4851 = !DILocalVariable(name: "fp", arg: 1, scope: !4806, file: !4807, line: 56, type: !4810)
!4852 = !DILocalVariable(name: "saved_errno", scope: !4806, file: !4807, line: 58, type: !70)
!4853 = !DILocalVariable(name: "fd", scope: !4806, file: !4807, line: 59, type: !70)
!4854 = !DILocalVariable(name: "result", scope: !4806, file: !4807, line: 60, type: !70)
!4855 = !DILocation(line: 56, column: 19, scope: !4806)
!4856 = !DILocation(line: 58, column: 7, scope: !4806)
!4857 = !DILocation(line: 60, column: 7, scope: !4806)
!4858 = !DILocation(line: 63, column: 8, scope: !4806)
!4859 = !DILocation(line: 59, column: 7, scope: !4806)
!4860 = !DILocation(line: 64, column: 10, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4806, file: !4807, line: 64, column: 7)
!4862 = !DILocation(line: 64, column: 7, scope: !4806)
!4863 = !DILocation(line: 65, column: 12, scope: !4861)
!4864 = !DILocation(line: 65, column: 5, scope: !4861)
!4865 = !DILocation(line: 70, column: 9, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4806, file: !4807, line: 70, column: 7)
!4867 = !DILocation(line: 70, column: 23, scope: !4866)
!4868 = !DILocation(line: 70, column: 33, scope: !4869)
!4869 = !DILexicalBlockFile(scope: !4866, file: !4807, discriminator: 1)
!4870 = !DILocation(line: 70, column: 26, scope: !4871)
!4871 = !DILexicalBlockFile(scope: !4866, file: !4807, discriminator: 3)
!4872 = !DILocation(line: 70, column: 59, scope: !4869)
!4873 = !DILocation(line: 71, column: 7, scope: !4866)
!4874 = !DILocation(line: 71, column: 10, scope: !4869)
!4875 = !DILocation(line: 70, column: 7, scope: !4876)
!4876 = !DILexicalBlockFile(scope: !4806, file: !4807, discriminator: 2)
!4877 = !DILocation(line: 98, column: 12, scope: !4806)
!4878 = !DILocation(line: 103, column: 7, scope: !4806)
!4879 = !DILocation(line: 72, column: 19, scope: !4866)
!4880 = !DILocation(line: 103, column: 19, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4806, file: !4807, line: 103, column: 7)
!4882 = !DILocation(line: 105, column: 13, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4881, file: !4807, line: 104, column: 5)
!4884 = !DILocation(line: 107, column: 5, scope: !4883)
!4885 = !DILocation(line: 110, column: 1, scope: !4806)
!4886 = distinct !DISubprogram(name: "rpl_fflush", scope: !4887, file: !4887, line: 127, type: !4888, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4930)
!4887 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!70, !4890}
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !711, line: 49, baseType: !4892)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !713, line: 241, size: 1728, elements: !4893)
!4893 = !{!4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4892, file: !713, line: 242, baseType: !70, size: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4892, file: !713, line: 247, baseType: !29, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4892, file: !713, line: 248, baseType: !29, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4892, file: !713, line: 249, baseType: !29, size: 64, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4892, file: !713, line: 250, baseType: !29, size: 64, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4892, file: !713, line: 251, baseType: !29, size: 64, offset: 320)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4892, file: !713, line: 252, baseType: !29, size: 64, offset: 384)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4892, file: !713, line: 253, baseType: !29, size: 64, offset: 448)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4892, file: !713, line: 254, baseType: !29, size: 64, offset: 512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4892, file: !713, line: 256, baseType: !29, size: 64, offset: 576)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4892, file: !713, line: 257, baseType: !29, size: 64, offset: 640)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4892, file: !713, line: 258, baseType: !29, size: 64, offset: 704)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4892, file: !713, line: 260, baseType: !4907, size: 64, offset: 768)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !713, line: 156, size: 192, elements: !4909)
!4909 = !{!4910, !4911, !4913}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4908, file: !713, line: 157, baseType: !4907, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4908, file: !713, line: 158, baseType: !4912, size: 64, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4908, file: !713, line: 162, baseType: !70, size: 32, offset: 128)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4892, file: !713, line: 262, baseType: !4912, size: 64, offset: 832)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4892, file: !713, line: 264, baseType: !70, size: 32, offset: 896)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4892, file: !713, line: 268, baseType: !70, size: 32, offset: 928)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4892, file: !713, line: 270, baseType: !739, size: 64, offset: 960)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4892, file: !713, line: 274, baseType: !167, size: 16, offset: 1024)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4892, file: !713, line: 275, baseType: !108, size: 8, offset: 1040)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4892, file: !713, line: 276, baseType: !745, size: 8, offset: 1048)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4892, file: !713, line: 280, baseType: !749, size: 64, offset: 1088)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4892, file: !713, line: 289, baseType: !752, size: 64, offset: 1152)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4892, file: !713, line: 297, baseType: !31, size: 64, offset: 1216)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4892, file: !713, line: 298, baseType: !31, size: 64, offset: 1280)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4892, file: !713, line: 299, baseType: !31, size: 64, offset: 1344)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4892, file: !713, line: 300, baseType: !31, size: 64, offset: 1408)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4892, file: !713, line: 302, baseType: !32, size: 64, offset: 1472)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4892, file: !713, line: 303, baseType: !70, size: 32, offset: 1536)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4892, file: !713, line: 305, baseType: !760, size: 160, offset: 1568)
!4930 = !{!4931}
!4931 = !DILocalVariable(name: "stream", arg: 1, scope: !4886, file: !4887, line: 127, type: !4890)
!4932 = !DILocation(line: 127, column: 19, scope: !4886)
!4933 = !DILocation(line: 148, column: 14, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4886, file: !4887, line: 148, column: 7)
!4935 = !DILocation(line: 148, column: 22, scope: !4934)
!4936 = !DILocation(line: 148, column: 27, scope: !4937)
!4937 = !DILexicalBlockFile(scope: !4934, file: !4887, discriminator: 1)
!4938 = !DILocation(line: 148, column: 7, scope: !4939)
!4939 = !DILexicalBlockFile(scope: !4886, file: !4887, discriminator: 1)
!4940 = !DILocation(line: 149, column: 12, scope: !4934)
!4941 = !DILocation(line: 149, column: 5, scope: !4934)
!4942 = !DILocalVariable(name: "fp", arg: 1, scope: !4943, file: !4887, line: 40, type: !4890)
!4943 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4887, file: !4887, line: 40, type: !4944, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !615, variables: !4946)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{null, !4890}
!4946 = !{!4942}
!4947 = !DILocation(line: 40, column: 48, scope: !4943, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 153, column: 3, scope: !4886)
!4949 = !DILocation(line: 42, column: 11, scope: !4950, inlinedAt: !4948)
!4950 = distinct !DILexicalBlock(scope: !4943, file: !4887, line: 42, column: 7)
!4951 = !DILocation(line: 42, column: 18, scope: !4950, inlinedAt: !4948)
!4952 = !DILocation(line: 42, column: 7, scope: !4943, inlinedAt: !4948)
!4953 = !DILocation(line: 44, column: 5, scope: !4950, inlinedAt: !4948)
!4954 = !DILocation(line: 155, column: 10, scope: !4886)
!4955 = !DILocation(line: 155, column: 3, scope: !4886)
!4956 = !DILocation(line: 229, column: 1, scope: !4886)
!4957 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4958, file: !4958, line: 28, type: !4959, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !617, variables: !5001)
!4958 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!70, !4961, !1935, !70}
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !711, line: 49, baseType: !4963)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !713, line: 241, size: 1728, elements: !4964)
!4964 = !{!4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4963, file: !713, line: 242, baseType: !70, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4963, file: !713, line: 247, baseType: !29, size: 64, offset: 64)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4963, file: !713, line: 248, baseType: !29, size: 64, offset: 128)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4963, file: !713, line: 249, baseType: !29, size: 64, offset: 192)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4963, file: !713, line: 250, baseType: !29, size: 64, offset: 256)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4963, file: !713, line: 251, baseType: !29, size: 64, offset: 320)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4963, file: !713, line: 252, baseType: !29, size: 64, offset: 384)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4963, file: !713, line: 253, baseType: !29, size: 64, offset: 448)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4963, file: !713, line: 254, baseType: !29, size: 64, offset: 512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4963, file: !713, line: 256, baseType: !29, size: 64, offset: 576)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4963, file: !713, line: 257, baseType: !29, size: 64, offset: 640)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4963, file: !713, line: 258, baseType: !29, size: 64, offset: 704)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4963, file: !713, line: 260, baseType: !4978, size: 64, offset: 768)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !713, line: 156, size: 192, elements: !4980)
!4980 = !{!4981, !4982, !4984}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4979, file: !713, line: 157, baseType: !4978, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4979, file: !713, line: 158, baseType: !4983, size: 64, offset: 64)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4979, file: !713, line: 162, baseType: !70, size: 32, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4963, file: !713, line: 262, baseType: !4983, size: 64, offset: 832)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4963, file: !713, line: 264, baseType: !70, size: 32, offset: 896)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4963, file: !713, line: 268, baseType: !70, size: 32, offset: 928)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4963, file: !713, line: 270, baseType: !739, size: 64, offset: 960)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4963, file: !713, line: 274, baseType: !167, size: 16, offset: 1024)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4963, file: !713, line: 275, baseType: !108, size: 8, offset: 1040)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4963, file: !713, line: 276, baseType: !745, size: 8, offset: 1048)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4963, file: !713, line: 280, baseType: !749, size: 64, offset: 1088)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4963, file: !713, line: 289, baseType: !752, size: 64, offset: 1152)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4963, file: !713, line: 297, baseType: !31, size: 64, offset: 1216)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4963, file: !713, line: 298, baseType: !31, size: 64, offset: 1280)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4963, file: !713, line: 299, baseType: !31, size: 64, offset: 1344)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4963, file: !713, line: 300, baseType: !31, size: 64, offset: 1408)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4963, file: !713, line: 302, baseType: !32, size: 64, offset: 1472)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4963, file: !713, line: 303, baseType: !70, size: 32, offset: 1536)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4963, file: !713, line: 305, baseType: !760, size: 160, offset: 1568)
!5001 = !{!5002, !5003, !5004, !5005}
!5002 = !DILocalVariable(name: "fp", arg: 1, scope: !4957, file: !4958, line: 28, type: !4961)
!5003 = !DILocalVariable(name: "offset", arg: 2, scope: !4957, file: !4958, line: 28, type: !1935)
!5004 = !DILocalVariable(name: "whence", arg: 3, scope: !4957, file: !4958, line: 28, type: !70)
!5005 = !DILocalVariable(name: "pos", scope: !5006, file: !4958, line: 116, type: !1935)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !4958, line: 112, column: 5)
!5007 = distinct !DILexicalBlock(scope: !4957, file: !4958, line: 51, column: 7)
!5008 = !DILocation(line: 28, column: 15, scope: !4957)
!5009 = !DILocation(line: 28, column: 25, scope: !4957)
!5010 = !DILocation(line: 28, column: 37, scope: !4957)
!5011 = !DILocation(line: 51, column: 11, scope: !5007)
!5012 = !{!988, !646, i64 16}
!5013 = !DILocation(line: 51, column: 31, scope: !5007)
!5014 = !{!988, !646, i64 8}
!5015 = !DILocation(line: 51, column: 24, scope: !5007)
!5016 = !DILocation(line: 52, column: 7, scope: !5007)
!5017 = !DILocation(line: 52, column: 14, scope: !5018)
!5018 = !DILexicalBlockFile(scope: !5007, file: !4958, discriminator: 1)
!5019 = !DILocation(line: 52, column: 35, scope: !5018)
!5020 = !{!988, !646, i64 32}
!5021 = !DILocation(line: 52, column: 28, scope: !5018)
!5022 = !DILocation(line: 53, column: 7, scope: !5007)
!5023 = !DILocation(line: 53, column: 14, scope: !5018)
!5024 = !{!988, !646, i64 72}
!5025 = !DILocation(line: 53, column: 28, scope: !5018)
!5026 = !DILocation(line: 51, column: 7, scope: !5027)
!5027 = !DILexicalBlockFile(scope: !4957, file: !4958, discriminator: 1)
!5028 = !DILocation(line: 116, column: 26, scope: !5006)
!5029 = !DILocation(line: 116, column: 19, scope: !5030)
!5030 = !DILexicalBlockFile(scope: !5006, file: !4958, discriminator: 1)
!5031 = !DILocation(line: 116, column: 13, scope: !5006)
!5032 = !DILocation(line: 117, column: 15, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5006, file: !4958, line: 117, column: 11)
!5034 = !DILocation(line: 117, column: 11, scope: !5006)
!5035 = !DILocation(line: 127, column: 11, scope: !5006)
!5036 = !DILocation(line: 127, column: 18, scope: !5006)
!5037 = !DILocation(line: 128, column: 11, scope: !5006)
!5038 = !DILocation(line: 128, column: 19, scope: !5006)
!5039 = !{!988, !952, i64 144}
!5040 = !DILocation(line: 159, column: 7, scope: !5006)
!5041 = !DILocation(line: 161, column: 10, scope: !4957)
!5042 = !DILocation(line: 161, column: 3, scope: !4957)
!5043 = !DILocation(line: 162, column: 1, scope: !4957)
!5044 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5045, file: !5045, line: 334, type: !5046, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !619, variables: !5060)
!5045 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!32, !5048, !40, !32, !5049}
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2246, line: 107, baseType: !5051)
!5051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2246, line: 95, baseType: !5052)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2246, line: 83, size: 64, elements: !5053)
!5053 = !{!5054, !5055}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5052, file: !2246, line: 85, baseType: !70, size: 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5052, file: !2246, line: 94, baseType: !5056, size: 32, offset: 32)
!5056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5052, file: !2246, line: 86, size: 32, elements: !5057)
!5057 = !{!5058, !5059}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5056, file: !2246, line: 89, baseType: !184, size: 32)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5056, file: !2246, line: 93, baseType: !2256, size: 32)
!5060 = !{!5061, !5062, !5063, !5064, !5065, !5066, !5067}
!5061 = !DILocalVariable(name: "pwc", arg: 1, scope: !5044, file: !5045, line: 334, type: !5048)
!5062 = !DILocalVariable(name: "s", arg: 2, scope: !5044, file: !5045, line: 334, type: !40)
!5063 = !DILocalVariable(name: "n", arg: 3, scope: !5044, file: !5045, line: 334, type: !32)
!5064 = !DILocalVariable(name: "ps", arg: 4, scope: !5044, file: !5045, line: 334, type: !5049)
!5065 = !DILocalVariable(name: "ret", scope: !5044, file: !5045, line: 336, type: !32)
!5066 = !DILocalVariable(name: "wc", scope: !5044, file: !5045, line: 337, type: !2261)
!5067 = !DILocalVariable(name: "uc", scope: !5068, file: !5045, line: 398, type: !39)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !5045, line: 397, column: 5)
!5069 = distinct !DILexicalBlock(scope: !5044, file: !5045, line: 396, column: 7)
!5070 = !DILocation(line: 334, column: 23, scope: !5044)
!5071 = !DILocation(line: 334, column: 40, scope: !5044)
!5072 = !DILocation(line: 334, column: 50, scope: !5044)
!5073 = !DILocation(line: 334, column: 64, scope: !5044)
!5074 = !DILocation(line: 337, column: 3, scope: !5044)
!5075 = !DILocation(line: 353, column: 9, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5044, file: !5045, line: 353, column: 7)
!5077 = !DILocation(line: 353, column: 7, scope: !5044)
!5078 = !DILocation(line: 388, column: 9, scope: !5044)
!5079 = !DILocation(line: 336, column: 10, scope: !5044)
!5080 = !DILocation(line: 396, column: 19, scope: !5069)
!5081 = !DILocation(line: 396, column: 31, scope: !5082)
!5082 = !DILexicalBlockFile(scope: !5069, file: !5045, discriminator: 1)
!5083 = !DILocation(line: 396, column: 26, scope: !5069)
!5084 = !DILocation(line: 396, column: 41, scope: !5085)
!5085 = !DILexicalBlockFile(scope: !5069, file: !5045, discriminator: 2)
!5086 = !DILocation(line: 396, column: 7, scope: !5087)
!5087 = !DILexicalBlockFile(scope: !5044, file: !5045, discriminator: 2)
!5088 = !DILocation(line: 398, column: 26, scope: !5068)
!5089 = !DILocation(line: 398, column: 21, scope: !5068)
!5090 = !DILocation(line: 399, column: 14, scope: !5068)
!5091 = !DILocation(line: 399, column: 12, scope: !5068)
!5092 = !DILocation(line: 405, column: 1, scope: !5044)
!5093 = distinct !DISubprogram(name: "close_stream", scope: !5094, file: !5094, line: 56, type: !5095, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !5137)
!5094 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!70, !5097}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !711, line: 49, baseType: !5099)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !713, line: 241, size: 1728, elements: !5100)
!5100 = !{!5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5099, file: !713, line: 242, baseType: !70, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5099, file: !713, line: 247, baseType: !29, size: 64, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5099, file: !713, line: 248, baseType: !29, size: 64, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5099, file: !713, line: 249, baseType: !29, size: 64, offset: 192)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5099, file: !713, line: 250, baseType: !29, size: 64, offset: 256)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5099, file: !713, line: 251, baseType: !29, size: 64, offset: 320)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5099, file: !713, line: 252, baseType: !29, size: 64, offset: 384)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5099, file: !713, line: 253, baseType: !29, size: 64, offset: 448)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5099, file: !713, line: 254, baseType: !29, size: 64, offset: 512)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5099, file: !713, line: 256, baseType: !29, size: 64, offset: 576)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5099, file: !713, line: 257, baseType: !29, size: 64, offset: 640)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5099, file: !713, line: 258, baseType: !29, size: 64, offset: 704)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5099, file: !713, line: 260, baseType: !5114, size: 64, offset: 768)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !713, line: 156, size: 192, elements: !5116)
!5116 = !{!5117, !5118, !5120}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5115, file: !713, line: 157, baseType: !5114, size: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5115, file: !713, line: 158, baseType: !5119, size: 64, offset: 64)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5115, file: !713, line: 162, baseType: !70, size: 32, offset: 128)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5099, file: !713, line: 262, baseType: !5119, size: 64, offset: 832)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5099, file: !713, line: 264, baseType: !70, size: 32, offset: 896)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5099, file: !713, line: 268, baseType: !70, size: 32, offset: 928)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5099, file: !713, line: 270, baseType: !739, size: 64, offset: 960)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5099, file: !713, line: 274, baseType: !167, size: 16, offset: 1024)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5099, file: !713, line: 275, baseType: !108, size: 8, offset: 1040)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5099, file: !713, line: 276, baseType: !745, size: 8, offset: 1048)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5099, file: !713, line: 280, baseType: !749, size: 64, offset: 1088)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5099, file: !713, line: 289, baseType: !752, size: 64, offset: 1152)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5099, file: !713, line: 297, baseType: !31, size: 64, offset: 1216)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5099, file: !713, line: 298, baseType: !31, size: 64, offset: 1280)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5099, file: !713, line: 299, baseType: !31, size: 64, offset: 1344)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5099, file: !713, line: 300, baseType: !31, size: 64, offset: 1408)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5099, file: !713, line: 302, baseType: !32, size: 64, offset: 1472)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5099, file: !713, line: 303, baseType: !70, size: 32, offset: 1536)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5099, file: !713, line: 305, baseType: !760, size: 160, offset: 1568)
!5137 = !{!5138, !5139, !5141, !5142}
!5138 = !DILocalVariable(name: "stream", arg: 1, scope: !5093, file: !5094, line: 56, type: !5097)
!5139 = !DILocalVariable(name: "some_pending", scope: !5093, file: !5094, line: 58, type: !5140)
!5140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!5141 = !DILocalVariable(name: "prev_fail", scope: !5093, file: !5094, line: 59, type: !5140)
!5142 = !DILocalVariable(name: "fclose_fail", scope: !5093, file: !5094, line: 60, type: !5140)
!5143 = !DILocation(line: 56, column: 21, scope: !5093)
!5144 = !DILocation(line: 58, column: 30, scope: !5093)
!5145 = !DILocalVariable(name: "__stream", arg: 1, scope: !5146, file: !979, line: 132, type: !5097)
!5146 = distinct !DISubprogram(name: "ferror_unlocked", scope: !979, file: !979, line: 132, type: !5095, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !622, variables: !5147)
!5147 = !{!5145}
!5148 = !DILocation(line: 132, column: 1, scope: !5146, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 59, column: 27, scope: !5093)
!5150 = !DILocation(line: 134, column: 10, scope: !5146, inlinedAt: !5149)
!5151 = !DILocation(line: 59, column: 43, scope: !5093)
!5152 = !DILocation(line: 60, column: 29, scope: !5093)
!5153 = !DILocation(line: 60, column: 45, scope: !5093)
!5154 = !DILocation(line: 70, column: 17, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5093, file: !5094, line: 70, column: 7)
!5156 = !DILocation(line: 70, column: 33, scope: !5157)
!5157 = !DILexicalBlockFile(scope: !5155, file: !5094, discriminator: 1)
!5158 = !DILocation(line: 70, column: 53, scope: !5159)
!5159 = !DILexicalBlockFile(scope: !5155, file: !5094, discriminator: 3)
!5160 = !DILocation(line: 70, column: 7, scope: !5161)
!5161 = !DILexicalBlockFile(scope: !5093, file: !5094, discriminator: 3)
!5162 = !DILocation(line: 72, column: 11, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5155, file: !5094, line: 71, column: 5)
!5164 = !DILocation(line: 73, column: 9, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5163, file: !5094, line: 72, column: 11)
!5166 = !DILocation(line: 73, column: 15, scope: !5165)
!5167 = !DILocation(line: 78, column: 1, scope: !5093)
!5168 = distinct !DISubprogram(name: "hard_locale", scope: !5169, file: !5169, line: 38, type: !5170, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !624, variables: !5172)
!5169 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!127, !70}
!5172 = !{!5173, !5174, !5175, !5176, !5183, !5184, !5186, !5187, !5189, !5190, !5192}
!5173 = !DILocalVariable(name: "category", arg: 1, scope: !5168, file: !5169, line: 38, type: !70)
!5174 = !DILocalVariable(name: "hard", scope: !5168, file: !5169, line: 40, type: !127)
!5175 = !DILocalVariable(name: "p", scope: !5168, file: !5169, line: 41, type: !40)
!5176 = !DILocalVariable(name: "__s1_len", scope: !5177, file: !5169, line: 47, type: !32)
!5177 = distinct !DILexicalBlock(scope: !5178, file: !5169, line: 47, column: 15)
!5178 = distinct !DILexicalBlock(scope: !5179, file: !5169, line: 47, column: 15)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !5169, line: 46, column: 9)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !5169, line: 45, column: 11)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !5169, line: 44, column: 5)
!5182 = distinct !DILexicalBlock(scope: !5168, file: !5169, line: 43, column: 7)
!5183 = !DILocalVariable(name: "__s2_len", scope: !5177, file: !5169, line: 47, type: !32)
!5184 = !DILocalVariable(name: "__s2", scope: !5185, file: !5169, line: 47, type: !37)
!5185 = distinct !DILexicalBlock(scope: !5177, file: !5169, line: 47, column: 15)
!5186 = !DILocalVariable(name: "__result", scope: !5185, file: !5169, line: 47, type: !70)
!5187 = !DILocalVariable(name: "__s1_len", scope: !5188, file: !5169, line: 47, type: !32)
!5188 = distinct !DILexicalBlock(scope: !5178, file: !5169, line: 47, column: 39)
!5189 = !DILocalVariable(name: "__s2_len", scope: !5188, file: !5169, line: 47, type: !32)
!5190 = !DILocalVariable(name: "__s2", scope: !5191, file: !5169, line: 47, type: !37)
!5191 = distinct !DILexicalBlock(scope: !5188, file: !5169, line: 47, column: 39)
!5192 = !DILocalVariable(name: "__result", scope: !5191, file: !5169, line: 47, type: !70)
!5193 = !DILocation(line: 38, column: 18, scope: !5168)
!5194 = !DILocation(line: 40, column: 8, scope: !5168)
!5195 = !DILocation(line: 41, column: 19, scope: !5168)
!5196 = !DILocation(line: 41, column: 15, scope: !5168)
!5197 = !DILocation(line: 43, column: 7, scope: !5182)
!5198 = !DILocation(line: 43, column: 7, scope: !5168)
!5199 = !DILocation(line: 47, column: 15, scope: !5177)
!5200 = !DILocation(line: 47, column: 15, scope: !5185)
!5201 = !DILocation(line: 47, column: 15, scope: !5202)
!5202 = !DILexicalBlockFile(scope: !5185, file: !5169, discriminator: 2)
!5203 = !DILocation(line: 47, column: 15, scope: !5204)
!5204 = !DILexicalBlockFile(scope: !5205, file: !5169, discriminator: 3)
!5205 = distinct !DILexicalBlock(scope: !5185, file: !5169, line: 47, column: 15)
!5206 = !DILocation(line: 47, column: 15, scope: !5207)
!5207 = !DILexicalBlockFile(scope: !5205, file: !5169, discriminator: 2)
!5208 = !DILocation(line: 47, column: 15, scope: !5209)
!5209 = !DILexicalBlockFile(scope: !5210, file: !5169, discriminator: 4)
!5210 = distinct !DILexicalBlock(scope: !5205, file: !5169, line: 47, column: 15)
!5211 = !DILocation(line: 47, column: 15, scope: !5212)
!5212 = !DILexicalBlockFile(scope: !5177, file: !5169, discriminator: 11)
!5213 = !DILocation(line: 47, column: 36, scope: !5214)
!5214 = !DILexicalBlockFile(scope: !5178, file: !5169, discriminator: 13)
!5215 = !DILocation(line: 47, column: 39, scope: !5188)
!5216 = !DILocation(line: 47, column: 39, scope: !5217)
!5217 = !DILexicalBlockFile(scope: !5188, file: !5169, discriminator: 26)
!5218 = !DILocation(line: 47, column: 59, scope: !5219)
!5219 = !DILexicalBlockFile(scope: !5178, file: !5169, discriminator: 27)
!5220 = !DILocation(line: 47, column: 15, scope: !5221)
!5221 = !DILexicalBlockFile(scope: !5179, file: !5169, discriminator: 27)
!5222 = !DILocation(line: 48, column: 13, scope: !5178)
!5223 = !DILocation(line: 71, column: 3, scope: !5168)
!5224 = distinct !DISubprogram(name: "locale_charset", scope: !564, file: !564, line: 393, type: !5225, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !220, variables: !5227)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!40}
!5227 = !{!5228, !5229, !5230, !5235}
!5228 = !DILocalVariable(name: "codeset", scope: !5224, file: !564, line: 395, type: !40)
!5229 = !DILocalVariable(name: "aliases", scope: !5224, file: !564, line: 396, type: !40)
!5230 = !DILocalVariable(name: "__s1_len", scope: !5231, file: !564, line: 592, type: !32)
!5231 = distinct !DILexicalBlock(scope: !5232, file: !564, line: 592, column: 9)
!5232 = distinct !DILexicalBlock(scope: !5233, file: !564, line: 592, column: 9)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !564, line: 589, column: 3)
!5234 = distinct !DILexicalBlock(scope: !5224, file: !564, line: 589, column: 3)
!5235 = !DILocalVariable(name: "__s2_len", scope: !5231, file: !564, line: 592, type: !32)
!5236 = !DILocalVariable(name: "buf1", scope: !5237, file: !564, line: 196, type: !5304)
!5237 = distinct !DILexicalBlock(scope: !5238, file: !564, line: 194, column: 21)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !564, line: 193, column: 19)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !564, line: 193, column: 19)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !564, line: 188, column: 17)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !564, line: 181, column: 19)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !564, line: 177, column: 13)
!5243 = distinct !DILexicalBlock(scope: !5244, file: !564, line: 173, column: 15)
!5244 = distinct !DILexicalBlock(scope: !5245, file: !564, line: 161, column: 9)
!5245 = distinct !DILexicalBlock(scope: !5246, file: !564, line: 157, column: 11)
!5246 = distinct !DILexicalBlock(scope: !5247, file: !564, line: 130, column: 5)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !564, line: 129, column: 7)
!5248 = distinct !DISubprogram(name: "get_charset_aliases", scope: !564, file: !564, line: 124, type: !5225, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !220, variables: !5249)
!5249 = !{!5250, !5251, !5252, !5253, !5254, !5256, !5257, !5258, !5259, !5300, !5301, !5302, !5236, !5303, !5307, !5308, !5309}
!5250 = !DILocalVariable(name: "cp", scope: !5248, file: !564, line: 126, type: !40)
!5251 = !DILocalVariable(name: "dir", scope: !5246, file: !564, line: 132, type: !40)
!5252 = !DILocalVariable(name: "base", scope: !5246, file: !564, line: 133, type: !40)
!5253 = !DILocalVariable(name: "file_name", scope: !5246, file: !564, line: 134, type: !29)
!5254 = !DILocalVariable(name: "dir_len", scope: !5255, file: !564, line: 144, type: !32)
!5255 = distinct !DILexicalBlock(scope: !5246, file: !564, line: 143, column: 7)
!5256 = !DILocalVariable(name: "base_len", scope: !5255, file: !564, line: 145, type: !32)
!5257 = !DILocalVariable(name: "add_slash", scope: !5255, file: !564, line: 146, type: !70)
!5258 = !DILocalVariable(name: "fd", scope: !5244, file: !564, line: 162, type: !70)
!5259 = !DILocalVariable(name: "fp", scope: !5242, file: !564, line: 178, type: !5260)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !711, line: 49, baseType: !5262)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !713, line: 241, size: 1728, elements: !5263)
!5263 = !{!5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5262, file: !713, line: 242, baseType: !70, size: 32)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5262, file: !713, line: 247, baseType: !29, size: 64, offset: 64)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5262, file: !713, line: 248, baseType: !29, size: 64, offset: 128)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5262, file: !713, line: 249, baseType: !29, size: 64, offset: 192)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5262, file: !713, line: 250, baseType: !29, size: 64, offset: 256)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5262, file: !713, line: 251, baseType: !29, size: 64, offset: 320)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5262, file: !713, line: 252, baseType: !29, size: 64, offset: 384)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5262, file: !713, line: 253, baseType: !29, size: 64, offset: 448)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5262, file: !713, line: 254, baseType: !29, size: 64, offset: 512)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5262, file: !713, line: 256, baseType: !29, size: 64, offset: 576)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5262, file: !713, line: 257, baseType: !29, size: 64, offset: 640)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5262, file: !713, line: 258, baseType: !29, size: 64, offset: 704)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5262, file: !713, line: 260, baseType: !5277, size: 64, offset: 768)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !713, line: 156, size: 192, elements: !5279)
!5279 = !{!5280, !5281, !5283}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5278, file: !713, line: 157, baseType: !5277, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5278, file: !713, line: 158, baseType: !5282, size: 64, offset: 64)
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5278, file: !713, line: 162, baseType: !70, size: 32, offset: 128)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5262, file: !713, line: 262, baseType: !5282, size: 64, offset: 832)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5262, file: !713, line: 264, baseType: !70, size: 32, offset: 896)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5262, file: !713, line: 268, baseType: !70, size: 32, offset: 928)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5262, file: !713, line: 270, baseType: !739, size: 64, offset: 960)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5262, file: !713, line: 274, baseType: !167, size: 16, offset: 1024)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5262, file: !713, line: 275, baseType: !108, size: 8, offset: 1040)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5262, file: !713, line: 276, baseType: !745, size: 8, offset: 1048)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5262, file: !713, line: 280, baseType: !749, size: 64, offset: 1088)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5262, file: !713, line: 289, baseType: !752, size: 64, offset: 1152)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5262, file: !713, line: 297, baseType: !31, size: 64, offset: 1216)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5262, file: !713, line: 298, baseType: !31, size: 64, offset: 1280)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5262, file: !713, line: 299, baseType: !31, size: 64, offset: 1344)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5262, file: !713, line: 300, baseType: !31, size: 64, offset: 1408)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5262, file: !713, line: 302, baseType: !32, size: 64, offset: 1472)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5262, file: !713, line: 303, baseType: !70, size: 32, offset: 1536)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5262, file: !713, line: 305, baseType: !760, size: 160, offset: 1568)
!5300 = !DILocalVariable(name: "res_ptr", scope: !5240, file: !564, line: 190, type: !29)
!5301 = !DILocalVariable(name: "res_size", scope: !5240, file: !564, line: 191, type: !32)
!5302 = !DILocalVariable(name: "c", scope: !5237, file: !564, line: 195, type: !70)
!5303 = !DILocalVariable(name: "buf2", scope: !5237, file: !564, line: 197, type: !5304)
!5304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 408, elements: !5305)
!5305 = !{!5306}
!5306 = !DISubrange(count: 51)
!5307 = !DILocalVariable(name: "l1", scope: !5237, file: !564, line: 198, type: !32)
!5308 = !DILocalVariable(name: "l2", scope: !5237, file: !564, line: 198, type: !32)
!5309 = !DILocalVariable(name: "old_res_ptr", scope: !5237, file: !564, line: 199, type: !29)
!5310 = !DILocation(line: 196, column: 28, scope: !5237, inlinedAt: !5311)
!5311 = distinct !DILocation(line: 589, column: 18, scope: !5234)
!5312 = !DILocation(line: 197, column: 28, scope: !5237, inlinedAt: !5311)
!5313 = !DILocation(line: 403, column: 13, scope: !5224)
!5314 = !DILocation(line: 395, column: 15, scope: !5224)
!5315 = !DILocation(line: 584, column: 15, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5224, file: !564, line: 584, column: 7)
!5317 = !DILocation(line: 584, column: 7, scope: !5224)
!5318 = !DILocation(line: 128, column: 8, scope: !5248, inlinedAt: !5311)
!5319 = !DILocation(line: 126, column: 15, scope: !5248, inlinedAt: !5311)
!5320 = !DILocation(line: 129, column: 10, scope: !5247, inlinedAt: !5311)
!5321 = !DILocation(line: 129, column: 7, scope: !5248, inlinedAt: !5311)
!5322 = !DILocation(line: 138, column: 13, scope: !5246, inlinedAt: !5311)
!5323 = !DILocation(line: 132, column: 19, scope: !5246, inlinedAt: !5311)
!5324 = !DILocation(line: 139, column: 15, scope: !5325, inlinedAt: !5311)
!5325 = distinct !DILexicalBlock(scope: !5246, file: !564, line: 139, column: 11)
!5326 = !DILocation(line: 139, column: 23, scope: !5325, inlinedAt: !5311)
!5327 = !DILocation(line: 139, column: 26, scope: !5328, inlinedAt: !5311)
!5328 = !DILexicalBlockFile(scope: !5325, file: !564, discriminator: 1)
!5329 = !DILocation(line: 139, column: 33, scope: !5328, inlinedAt: !5311)
!5330 = !DILocation(line: 139, column: 11, scope: !5331, inlinedAt: !5311)
!5331 = !DILexicalBlockFile(scope: !5246, file: !564, discriminator: 1)
!5332 = !DILocation(line: 140, column: 9, scope: !5325, inlinedAt: !5311)
!5333 = !DILocation(line: 144, column: 26, scope: !5255, inlinedAt: !5311)
!5334 = !DILocation(line: 144, column: 16, scope: !5255, inlinedAt: !5311)
!5335 = !DILocation(line: 145, column: 16, scope: !5255, inlinedAt: !5311)
!5336 = !DILocation(line: 146, column: 34, scope: !5255, inlinedAt: !5311)
!5337 = !DILocation(line: 146, column: 38, scope: !5255, inlinedAt: !5311)
!5338 = !DILocation(line: 146, column: 42, scope: !5339, inlinedAt: !5311)
!5339 = !DILexicalBlockFile(scope: !5255, file: !564, discriminator: 1)
!5340 = !DILocation(line: 146, column: 41, scope: !5339, inlinedAt: !5311)
!5341 = !DILocation(line: 147, column: 48, scope: !5255, inlinedAt: !5311)
!5342 = !DILocation(line: 147, column: 46, scope: !5255, inlinedAt: !5311)
!5343 = !DILocation(line: 147, column: 69, scope: !5255, inlinedAt: !5311)
!5344 = !DILocation(line: 147, column: 30, scope: !5255, inlinedAt: !5311)
!5345 = !DILocation(line: 134, column: 13, scope: !5246, inlinedAt: !5311)
!5346 = !DILocation(line: 148, column: 13, scope: !5255, inlinedAt: !5311)
!5347 = !DILocation(line: 150, column: 13, scope: !5348, inlinedAt: !5311)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !564, line: 149, column: 11)
!5349 = distinct !DILexicalBlock(scope: !5255, file: !564, line: 148, column: 13)
!5350 = !DILocation(line: 151, column: 17, scope: !5348, inlinedAt: !5311)
!5351 = !DILocation(line: 152, column: 34, scope: !5352, inlinedAt: !5311)
!5352 = distinct !DILexicalBlock(scope: !5348, file: !564, line: 151, column: 17)
!5353 = !DILocation(line: 153, column: 41, scope: !5348, inlinedAt: !5311)
!5354 = !DILocation(line: 153, column: 13, scope: !5348, inlinedAt: !5311)
!5355 = !DILocation(line: 157, column: 11, scope: !5246, inlinedAt: !5311)
!5356 = !DILocation(line: 171, column: 16, scope: !5244, inlinedAt: !5311)
!5357 = !DILocation(line: 162, column: 15, scope: !5244, inlinedAt: !5311)
!5358 = !DILocation(line: 173, column: 18, scope: !5243, inlinedAt: !5311)
!5359 = !DILocation(line: 173, column: 15, scope: !5244, inlinedAt: !5311)
!5360 = !DILocation(line: 180, column: 20, scope: !5242, inlinedAt: !5311)
!5361 = !DILocation(line: 178, column: 21, scope: !5242, inlinedAt: !5311)
!5362 = !DILocation(line: 181, column: 22, scope: !5241, inlinedAt: !5311)
!5363 = !DILocation(line: 181, column: 19, scope: !5242, inlinedAt: !5311)
!5364 = !DILocation(line: 190, column: 25, scope: !5240, inlinedAt: !5311)
!5365 = !DILocation(line: 184, column: 19, scope: !5366, inlinedAt: !5311)
!5366 = distinct !DILexicalBlock(scope: !5241, file: !564, line: 182, column: 17)
!5367 = !DILocation(line: 186, column: 17, scope: !5366, inlinedAt: !5311)
!5368 = !DILocation(line: 191, column: 26, scope: !5240, inlinedAt: !5311)
!5369 = !DILocation(line: 196, column: 23, scope: !5237, inlinedAt: !5311)
!5370 = !DILocation(line: 197, column: 23, scope: !5237, inlinedAt: !5311)
!5371 = !DILocalVariable(name: "__fp", arg: 1, scope: !5372, file: !979, line: 63, type: !5260)
!5372 = distinct !DISubprogram(name: "getc_unlocked", scope: !979, file: !979, line: 63, type: !5373, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !220, variables: !5375)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!70, !5260}
!5375 = !{!5371}
!5376 = !DILocation(line: 63, column: 22, scope: !5372, inlinedAt: !5377)
!5377 = distinct !DILocation(line: 201, column: 27, scope: !5237, inlinedAt: !5311)
!5378 = !DILocation(line: 65, column: 10, scope: !5372, inlinedAt: !5377)
!5379 = !DILocation(line: 65, column: 10, scope: !5380, inlinedAt: !5377)
!5380 = !DILexicalBlockFile(scope: !5372, file: !979, discriminator: 1)
!5381 = !DILocation(line: 65, column: 10, scope: !5382, inlinedAt: !5377)
!5382 = !DILexicalBlockFile(scope: !5372, file: !979, discriminator: 2)
!5383 = !DILocation(line: 65, column: 10, scope: !5384, inlinedAt: !5377)
!5384 = !DILexicalBlockFile(scope: !5372, file: !979, discriminator: 3)
!5385 = !DILocation(line: 195, column: 27, scope: !5237, inlinedAt: !5311)
!5386 = !DILocation(line: 202, column: 27, scope: !5237, inlinedAt: !5311)
!5387 = !DILocation(line: 63, column: 22, scope: !5372, inlinedAt: !5388)
!5388 = distinct !DILocation(line: 210, column: 33, scope: !5389, inlinedAt: !5311)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !564, line: 207, column: 25)
!5390 = distinct !DILexicalBlock(scope: !5237, file: !564, line: 206, column: 27)
!5391 = !DILocation(line: 65, column: 10, scope: !5372, inlinedAt: !5388)
!5392 = !DILocation(line: 65, column: 10, scope: !5380, inlinedAt: !5388)
!5393 = !DILocation(line: 65, column: 10, scope: !5382, inlinedAt: !5388)
!5394 = !DILocation(line: 65, column: 10, scope: !5384, inlinedAt: !5388)
!5395 = !DILocation(line: 210, column: 29, scope: !5396, inlinedAt: !5311)
!5396 = !DILexicalBlockFile(scope: !5389, file: !564, discriminator: 1)
!5397 = distinct !{!5397, !5398, !5399}
!5398 = !DILocation(line: 193, column: 19, scope: !5239)
!5399 = !DILocation(line: 241, column: 21, scope: !5239)
!5400 = !DILocation(line: 216, column: 23, scope: !5237, inlinedAt: !5311)
!5401 = !DILocation(line: 217, column: 27, scope: !5402, inlinedAt: !5311)
!5402 = distinct !DILexicalBlock(scope: !5237, file: !564, line: 217, column: 27)
!5403 = !DILocation(line: 217, column: 64, scope: !5402, inlinedAt: !5311)
!5404 = !DILocation(line: 217, column: 27, scope: !5237, inlinedAt: !5311)
!5405 = !DILocation(line: 219, column: 28, scope: !5237, inlinedAt: !5311)
!5406 = !DILocation(line: 198, column: 30, scope: !5237, inlinedAt: !5311)
!5407 = !DILocation(line: 220, column: 28, scope: !5237, inlinedAt: !5311)
!5408 = !DILocation(line: 198, column: 34, scope: !5237, inlinedAt: !5311)
!5409 = !DILocation(line: 199, column: 29, scope: !5237, inlinedAt: !5311)
!5410 = !DILocation(line: 222, column: 36, scope: !5411, inlinedAt: !5311)
!5411 = distinct !DILexicalBlock(scope: !5237, file: !564, line: 222, column: 27)
!5412 = !DILocation(line: 222, column: 27, scope: !5237, inlinedAt: !5311)
!5413 = !DILocation(line: 225, column: 63, scope: !5414, inlinedAt: !5311)
!5414 = distinct !DILexicalBlock(scope: !5411, file: !564, line: 223, column: 25)
!5415 = !DILocation(line: 225, column: 46, scope: !5414, inlinedAt: !5311)
!5416 = !DILocation(line: 226, column: 25, scope: !5414, inlinedAt: !5311)
!5417 = !DILocation(line: 229, column: 36, scope: !5418, inlinedAt: !5311)
!5418 = distinct !DILexicalBlock(scope: !5411, file: !564, line: 228, column: 25)
!5419 = !DILocation(line: 230, column: 73, scope: !5418, inlinedAt: !5311)
!5420 = !DILocation(line: 230, column: 46, scope: !5418, inlinedAt: !5311)
!5421 = !DILocation(line: 232, column: 35, scope: !5422, inlinedAt: !5311)
!5422 = distinct !DILexicalBlock(scope: !5237, file: !564, line: 232, column: 27)
!5423 = !DILocation(line: 232, column: 27, scope: !5237, inlinedAt: !5311)
!5424 = !DILocation(line: 236, column: 27, scope: !5425, inlinedAt: !5311)
!5425 = distinct !DILexicalBlock(scope: !5422, file: !564, line: 233, column: 25)
!5426 = !DILocation(line: 237, column: 27, scope: !5425, inlinedAt: !5311)
!5427 = !DILocation(line: 239, column: 39, scope: !5237, inlinedAt: !5311)
!5428 = !DILocation(line: 239, column: 50, scope: !5237, inlinedAt: !5311)
!5429 = !DILocation(line: 239, column: 61, scope: !5237, inlinedAt: !5311)
!5430 = !DILocalVariable(name: "__dest", arg: 1, scope: !5431, file: !5432, line: 107, type: !99)
!5431 = distinct !DISubprogram(name: "strcpy", scope: !5432, file: !5432, line: 107, type: !5433, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !220, variables: !5435)
!5432 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!29, !99, !98}
!5435 = !{!5430, !5436}
!5436 = !DILocalVariable(name: "__src", arg: 2, scope: !5431, file: !5432, line: 107, type: !98)
!5437 = !DILocation(line: 107, column: 1, scope: !5431, inlinedAt: !5438)
!5438 = distinct !DILocation(line: 239, column: 23, scope: !5237, inlinedAt: !5311)
!5439 = !DILocation(line: 109, column: 49, scope: !5431, inlinedAt: !5438)
!5440 = !DILocation(line: 109, column: 10, scope: !5431, inlinedAt: !5438)
!5441 = !DILocation(line: 107, column: 1, scope: !5431, inlinedAt: !5442)
!5442 = distinct !DILocation(line: 240, column: 23, scope: !5237, inlinedAt: !5311)
!5443 = !DILocation(line: 109, column: 49, scope: !5431, inlinedAt: !5442)
!5444 = !DILocation(line: 109, column: 10, scope: !5431, inlinedAt: !5442)
!5445 = !DILocation(line: 241, column: 21, scope: !5238, inlinedAt: !5311)
!5446 = !DILocation(line: 242, column: 19, scope: !5240, inlinedAt: !5311)
!5447 = !DILocation(line: 243, column: 32, scope: !5448, inlinedAt: !5311)
!5448 = distinct !DILexicalBlock(scope: !5240, file: !564, line: 243, column: 23)
!5449 = !DILocation(line: 243, column: 23, scope: !5240, inlinedAt: !5311)
!5450 = !DILocation(line: 247, column: 33, scope: !5451, inlinedAt: !5311)
!5451 = distinct !DILexicalBlock(scope: !5448, file: !564, line: 246, column: 21)
!5452 = !DILocation(line: 247, column: 45, scope: !5451, inlinedAt: !5311)
!5453 = !DILocation(line: 253, column: 11, scope: !5244, inlinedAt: !5311)
!5454 = !DILocation(line: 377, column: 23, scope: !5246, inlinedAt: !5311)
!5455 = !DILocation(line: 378, column: 5, scope: !5246, inlinedAt: !5311)
!5456 = !DILocation(line: 396, column: 15, scope: !5224)
!5457 = !DILocation(line: 590, column: 8, scope: !5233)
!5458 = !DILocation(line: 590, column: 17, scope: !5233)
!5459 = !DILocation(line: 589, column: 3, scope: !5460)
!5460 = !DILexicalBlockFile(scope: !5234, file: !564, discriminator: 1)
!5461 = !DILocation(line: 592, column: 9, scope: !5231)
!5462 = !DILocation(line: 592, column: 35, scope: !5232)
!5463 = !DILocation(line: 593, column: 9, scope: !5232)
!5464 = !DILocation(line: 593, column: 24, scope: !5465)
!5465 = !DILexicalBlockFile(scope: !5232, file: !564, discriminator: 1)
!5466 = !DILocation(line: 593, column: 31, scope: !5465)
!5467 = !DILocation(line: 593, column: 34, scope: !5468)
!5468 = !DILexicalBlockFile(scope: !5232, file: !564, discriminator: 2)
!5469 = !DILocation(line: 593, column: 45, scope: !5468)
!5470 = !DILocation(line: 592, column: 9, scope: !5471)
!5471 = !DILexicalBlockFile(scope: !5233, file: !564, discriminator: 1)
!5472 = !DILocation(line: 595, column: 29, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5232, file: !564, line: 594, column: 7)
!5474 = !DILocation(line: 595, column: 27, scope: !5473)
!5475 = !DILocation(line: 595, column: 46, scope: !5473)
!5476 = !DILocation(line: 596, column: 9, scope: !5473)
!5477 = !DILocation(line: 591, column: 19, scope: !5233)
!5478 = !DILocation(line: 591, column: 36, scope: !5233)
!5479 = !DILocation(line: 591, column: 16, scope: !5233)
!5480 = !DILocation(line: 591, column: 52, scope: !5471)
!5481 = !DILocation(line: 591, column: 69, scope: !5233)
!5482 = !DILocation(line: 591, column: 49, scope: !5233)
!5483 = distinct !{!5483, !5484, !5485}
!5484 = !DILocation(line: 589, column: 3, scope: !5234)
!5485 = !DILocation(line: 597, column: 7, scope: !5234)
!5486 = !DILocation(line: 602, column: 7, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5224, file: !564, line: 602, column: 7)
!5488 = !DILocation(line: 602, column: 18, scope: !5487)
!5489 = !DILocation(line: 602, column: 7, scope: !5224)
!5490 = !DILocation(line: 612, column: 3, scope: !5224)
